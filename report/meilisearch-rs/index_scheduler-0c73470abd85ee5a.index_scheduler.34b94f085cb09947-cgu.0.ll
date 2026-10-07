Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$11allocate_in17h4776e5f266822b21E":bb.a
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult ptr %i.q, %i.m
  %i.v = icmp ugt i64 %i.c, %i.t
  %or.cond.i = or i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.f, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit": ; preds = %.split
  %i.w = sub i64 0, %i.c
  %i.x = getelementptr i8, ptr %i.q, i64 %i.w     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  store ptr %i.x, ptr %i.k, align 16
  br label %bb.e

bb.f:                                             ; preds = %.split
  %i.y = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %2, i64 noundef 8, i64 noundef %i.c) ; 2 uses
  %.not16 = icmp eq ptr %i.y, null
  br i1 %.not16, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 8, i64 noundef %i.c) #80
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN7bumpalo11collections7raw_vec15RawVec$LT$T$GT$25reserve_internal_or_panic17hddf2967ba5c54eb7E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185958)
  %i.a = add i64 %2, %1                           ; 3 uses
  %i.b = icmp ult i64 %i.a, %1                    ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.e, !prof !60

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.e ], [ %i.a, %bb.c ] ; 3 uses
  %i.c = icmp ugt i64 %.sroa.02.0.i, 41175768021673106
  %i.d = mul nuw nsw i64 %.sroa.02.0.i, 224       ; 14 uses
  br i1 %i.c, label %bb.u, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !185958
  %i.f = shl i64 %.val.i, 1
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.a, i64 %i.f)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !185958, !noundef !57 ; 2 uses
  %.not44.i = icmp eq i64 %i.h, 0
  %i.i = mul i64 %i.h, 224                        ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not44.i, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %0, align 8, !alias.scope !185958, !nonnull !57, !noundef !57 ; 6 uses
  %.val47.i = load ptr, ptr %i.j, align 8, !alias.scope !185958 ; 7 uses
  %i.l = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8), !noalias !185958
  br i1 %i.l, label %bb.h, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i"

bb.h:                                             ; preds = %bb.g
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val47.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val47.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !185958, !nonnull !57, !noundef !57 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !185958, !nonnull !57, !noundef !57 ; 2 uses
  %i.r = load ptr, ptr %i.o, align 16, !noalias !185958, !nonnull !57, !noundef !57 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = and i64 %i.s, 7
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr i8, ptr %i.q, i64 %i.u     ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult ptr %i.v, %i.r
  %i.aa = icmp ugt i64 %i.d, %i.y
  %or.cond.i.i.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i.i.i, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i", label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i": ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  store ptr %i.ac, ptr %i.p, align 16, !noalias !185958
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp ugt i64 %i.d, %i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val47.i) ]
  br i1 %.not.i.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val47.i, i64 16 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !185958 ; 2 uses
  %.phi.trans.insert32.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 32 ; 2 uses
  %.pre33.i.i.i = load ptr, ptr %.phi.trans.insert32.i.i.i, align 8, !noalias !185958 ; 3 uses
  %i.ad = icmp eq ptr %.pre33.i.i.i, %i.k
  br i1 %i.ad, label %bb.l, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i": ; preds = %bb.k
  %.pre.i.i = load ptr, ptr %.pre.i.i.i, align 16, !noalias !185958 ; 2 uses
  %.pre.i = ptrtoint ptr %.pre33.i.i.i to i64
  %.pre59.i = and i64 %.pre.i, 7
  %.pre61.i = sub nsw i64 0, %.pre59.i
  %.pre63.i = ptrtoint ptr %.pre.i.i to i64
  br label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i": ; preds = %bb.m, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i"
  %.pre-phi64.i = phi i64 [ %.pre63.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i" ], [ %i.az, %bb.m ]
  %.pre-phi62.i = phi i64 [ %.pre61.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i" ], [ %i.aw, %bb.m ]
  %i.ae = phi ptr [ %.phi.trans.insert32.i.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i" ], [ %i.ar, %bb.m ]
  %i.af = phi ptr [ %.pre33.i.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i" ], [ %i.as, %bb.m ]
  %i.ag = phi ptr [ %.pre.i.i, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.i.i" ], [ %i.at, %bb.m ]
  %i.ah = getelementptr i8, ptr %i.af, i64 %.pre-phi62.i ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %.pre-phi64.i
  %i.ak = icmp ult ptr %i.ah, %i.ag
  %i.al = icmp ugt i64 %i.d, %i.aj
  %or.cond.i22.i.i.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i22.i.i.i, label %bb.o, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i"
  %i.am = sub nsw i64 0, %i.d
  %i.an = getelementptr i8, ptr %i.ah, i64 %i.am  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.ae, align 8, !noalias !185958
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ao = sub nuw nsw i64 %i.d, %i.i              ; 3 uses
  %i.ap = tail call noundef zeroext i1 @_ZN4core5alloc6layout6Layout19is_size_align_valid17h26adf6c6175f55f5E(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 8), !noalias !185958
  br i1 %i.ap, label %bb.m, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i"

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !185958, !nonnull !57, !noundef !57 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !185958, !nonnull !57, !noundef !57 ; 3 uses
  %i.at = load ptr, ptr %i.aq, align 16, !noalias !185958, !nonnull !57, !noundef !57 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = and i64 %i.au, 7
  %i.aw = sub nsw i64 0, %i.av                    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.as, i64 %i.aw  ; 3 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ult ptr %i.ax, %i.at
  %i.bc = icmp ugt i64 %i.ao, %i.ba
  %or.cond.i.i.i.i = or i1 %i.bb, %i.bc
  br i1 %or.cond.i.i.i.i, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = sub nsw i64 0, %i.ao
  %i.be = getelementptr i8, ptr %i.ax, i64 %i.bd  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  store ptr %i.be, ptr %i.ar, align 16, !noalias !185958
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.k, i64 range(i64 1, 0) %i.i, i1 false), !noalias !185958
  br label %bb.t

bb.o:                                             ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.thread.i.thread23.i.i"
  %i.bf = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %.val47.i, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 2, 0) %i.d), !noalias !185958 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i", label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread.i.i.i
  %.sroa.012.031.i.i.i = phi ptr [ %i.an, %.thread.i.i.i ], [ %i.bf, %bb.o ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.012.031.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.k, i64 range(i64 1, 0) %i.i, i1 false), !noalias !185958
  br label %bb.t

bb.q:                                             ; preds = %bb.j
  %i.bh = sub nuw i64 %i.i, %i.d                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val47.i, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !185958, !nonnull !57, !noundef !57
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !185958, !nonnull !57, !noundef !57 ; 2 uses
  %i.bm = icmp ne ptr %i.bl, %i.k
  %i.bn = lshr exact i64 %i.i, 1
  %.not.i.i.i = icmp ult i64 %i.bh, %i.bn
  %or.cond.i = select i1 %i.bm, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh ; 3 uses
  store ptr %i.bo, ptr %i.bk, align 8, !noalias !185958
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %i.k, i64 %i.d, i1 false), !noalias !185958
  br label %bb.t

bb.s:                                             ; preds = %bb.f
  %i.bp = load ptr, ptr %i.j, align 8, !alias.scope !185958, !nonnull !57, !align !61, !noundef !57 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !185958, !nonnull !57, !noundef !57 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !185958, !nonnull !57, !noundef !57 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 16, !noalias !185958, !nonnull !57, !noundef !57 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = and i64 %i.bv, 7
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx  ; 3 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp ult ptr %i.by, %i.bu
  %i.cd = icmp ugt i64 %i.d, %i.cb
  %or.cond.i.i = or i1 %i.cc, %i.cd
  br i1 %or.cond.i.i, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i", label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i": ; preds = %bb.s
  %i.ce = sub nsw i64 0, %i.d
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.ce  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  store ptr %i.cf, ptr %i.bs, align 16, !noalias !185958
  br label %bb.t

"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i": ; preds = %bb.s, %bb.i
  %.val47.sink.i = phi ptr [ %.val47.i, %bb.i ], [ %i.bp, %bb.s ]
  %i.cg = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hc36405045e189820E"(ptr noundef nonnull align 8 %.val47.sink.i, i64 noundef 8, i64 noundef %i.d), !noalias !185958 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i", label %bb.t

"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.thread56.i": ; preds = %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i", %bb.o, %bb.l, %bb.g
  tail call void @_ZN7bumpalo5alloc18handle_alloc_error17h077d55f6423c56d4E(i64 noundef 8, i64 noundef %i.d) #80, !noalias !185958
  unreachable

bb.t:                                             ; preds = %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i", %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i", %bb.r, %bb.q, %bb.p, %bb.n, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i"
  %.sroa.029.254.i = phi ptr [ %i.cg, %"_ZN68_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$bumpalo..alloc..Alloc$GT$7realloc17hd24fd64fc2b9b0b7E.exit.i" ], [ %i.cf, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i" ], [ %i.bo, %bb.r ], [ %i.k, %bb.q ], [ %i.be, %bb.n ], [ %.sroa.012.031.i.i.i, %bb.p ], [ %i.ac, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h0f53a8c71bdbdc80E.exit.i.i" ]
  store ptr %.sroa.029.254.i, ptr %0, align 8, !alias.scope !185958
  store i64 %.sroa.02.0.i, ptr %i.g, align 8, !alias.scope !185958
  ret void

bb.u:                                             ; preds = %bb.c, %bb.b, %bb.d
  tail call void @_ZN7bumpalo11collections7raw_vec17capacity_overflow17h2914ddf5de003a02E() #80
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7geojson10conversion12to_geo_types124_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geojson..GeoJson$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h22e85a80083cacf7E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(320) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.6.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.e = alloca [128 x i8], align 8               ; 4 uses
  %i.f = alloca [320 x i8], align 8               ; 11 uses
  %.sroa.6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.15.i.i = alloca [288 x i8], align 8      ; 10 uses
  %i.j = alloca [320 x i8], align 8               ; 8 uses
  %i.k = load i64, ptr %1, align 8, !range !170, !noundef !57 ; 4 uses
  %i.l = icmp ne i64 %i.k, 9
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nsw i64 %i.k, -8
  %i.n = icmp samesign ugt i64 %i.k, 7
  %i.o = select i1 %i.n, i64 %i.m, i64 1
  switch i64 %i.o, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @"_ZN7geojson10conversion12to_geo_types126_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Geometry$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h48d6c07297e0b94bE"(ptr noalias noundef align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.p)
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h119c2ed75d9dcf15E.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186121)
  %.not.i = icmp eq i64 %i.k, 7
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN7geojson10conversion12to_geo_types126_$LT$impl$u20$core..convert..TryFrom$LT$geojson..geometry..Geometry$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h48d6c07297e0b94bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(320) %1)
          to label %bb.m unwind label %bb.k

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull readonly align 8 dereferenceable(320) %1, i64 320, i1 false), !alias.scope !186122
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h119c2ed75d9dcf15E.exit"

bb.g:                                             ; preds = %bb.n, %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186123)
  %i.r = load i64, ptr %i.q, align 8, !range !84, !alias.scope !186124, !noalias !186120, !noundef !57 ; 2 uses
  %switch.i.i = icmp sgt i64 %i.r, 0
  br i1 %switch.i.i, label %bb.h, label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hac00a0033a45b80dE.exit.i"

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.val1.i.i = load ptr, ptr %i.s, align 8, !alias.scope !186124, !noalias !186120, !nonnull !57, !noundef !57
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !186125
  br label %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hac00a0033a45b80dE.exit.i"

.noexc.i:                                         ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i22.i", %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hac00a0033a45b80dE.exit.i"
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186126)
  %i.u = load i64, ptr %i.t, align 8, !range !83, !alias.scope !186127, !noalias !186120, !noundef !57
  %i.v = icmp eq i64 %i.u, -9223372036854775808
  br i1 %i.v, label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h119c2ed75d9dcf15E.exit", label %bb.i

bb.i:                                             ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186130)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val1.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !186131, !noalias !186120, !noundef !57 ; 4 uses
  %i.x = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !186131, !noalias !186120, !nonnull !57, !noundef !57
  %i.z = shl i64 %.val1.i.i.i.i.i, 3
  %i.aa = icmp slt i64 %.val1.i.i.i.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.aa), !noalias !186130
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 16                       ; 2 uses
  %i.ad = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af), !noalias !186130
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag), !noalias !186130
  %i.ah = sub nuw nsw i64 -16, %i.ab
  %i.ai = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.ah
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !186132, !inline_history !92
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i"

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i.i, %bb.i
  tail call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17h737a762b1bd6a592E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.t), !noalias !186120, !inline_history !150
  br label %"_ZN7geojson10conversion12to_geo_types115_$LT$impl$u20$core..convert..TryFrom$LT$geojson..Feature$GT$$u20$for$u20$geo_types..geometry..Geometry$LT$T$GT$$GT$8try_from17h119c2ed75d9dcf15E.exit"

bb.j:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i22.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke void @"_ZN4core3ptr125drop_in_place$LT$core..option..Option$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$$GT$17he11eb4f4790200b1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ak) #81
          to label %common.resume unwind label %bb.p, !noalias !186120

bb.k:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186133)
  %i.an = load i64, ptr %i.am, align 8, !range !83, !alias.scope !186134, !noalias !186120, !noundef !57 ; 2 uses
  %switch.i11.i = icmp sgt i64 %i.an, 0
  br i1 %switch.i11.i, label %bb.l, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h31226e75a5788addE.exit.i"

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val1.i12.i = load ptr, ptr %i.ao, align 8, !alias.scope !186134, !noalias !186120, !nonnull !57, !noundef !57
  %i.ap = shl nuw i64 %i.an, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12.i, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !186135
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f64$GT$$GT$$GT$17h31226e75a5788addE.exit.i"

bb.m:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186136)
  %i.ar = load i64, ptr %i.aq, align 8, !range !83, !alias.scope !186137, !noalias !186120, !noundef !57 ; 2 uses
  %switch.i13.i = icmp sgt i64 %i.ar, 0
  br i1 %switch.i13.i, label %bb.n, label %bb.g

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val1.i14.i = load ptr, ptr %i.as, align 8, !alias.scope !186137, !noalias !186120, !nonnull !57, !noundef !57
  %i.at = shl nuw i64 %i.ar, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i14.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !186138
  br label %bb.g

"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hac00a0033a45b80dE.exit.i": ; preds = %bb.h, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186139)
  %i.av = load i64, ptr %i.au, align 8, !range !83, !alias.scope !186140, !noalias !186120, !noundef !57
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %.noexc.i, label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr69drop_in_place$LT$core..option..Option$LT$geojson..feature..Id$GT$$GT$17hac00a0033a45b80dE.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186143)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val1.i.i.i.i19.i = load i64, ptr %i.ax, align 8, !alias.scope !186144, !noalias !186120, !noundef !57 ; 4 uses
  %i.ay = icmp eq i64 %.val1.i.i.i.i19.i, 0
  br i1 %i.ay, label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h275f1b5bd0cd1e1eE.exit.i22.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i20.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i.i.i.i.i20.i: ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val.i.i.i.i21.i = load ptr, ptr %i.az, align 8, !alias.scope !186144, !noalias !186120, !nonnull !57, !noundef !57
  %i.ba = shl i64 %.val1.i.i.i.i19.i, 3
  %i.bb = icmp slt i64 %.val1.i.i.i.i19.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.bb), !noalias !186143
  %i.bc = and i64 %i.ba, -16                      ; 2 uses
  %i.bd = add i64 %i.bc, 16                       ; 2 uses
  %i.be = add nsw i64 %.val1.i.i.i.i19.i, 17
  %i.bf = add i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = icmp uge i64 %i.bf, %i.bd
  tail call void @llvm.assume(i1 %i.bg), !noalias !186143
end_hunk_0
