Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ft_hash_str_init:bb.a

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 65) i32 @ft_hash_num_init(ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 40)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 241, ptr %i.a, align 4, !tbaa !155
  store i32 80, ptr %0, align 8, !tbaa !156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @hash_num_lookup, ptr %i.c, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @hash_num_compare, ptr %i.d, align 8, !tbaa !159
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.g = tail call ptr %i.f(ptr noundef %1, i64 noundef 1928) #30, !inline_history !0 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %hash_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1928) %i.g, i8 0, i64 1928, i1 false)
  br label %hash_init.exit

hash_init.exit:                                   ; preds = %bb.a, %bb.b
  %.1.i25.i.i = phi i32 [ 64, %bb.a ], [ 0, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.g, ptr %i.i, align 8, !tbaa !160
  ret i32 %.1.i25.i.i
}

; Function Attrs: nounwind uwtable
define hidden void @ft_hash_str_free(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !155  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.not18 = icmp eq i32 %i.b, 0
  %.pre19 = load ptr, ptr %i.c, align 8, !tbaa !160 ; 2 uses
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %ft_mem_free.exit
  %.017 = phi i32 [ 0, %.lr.ph ], [ %i.g, %ft_mem_free.exit ]
  %.01216 = phi ptr [ %.pre19, %.lr.ph ], [ %i.h, %ft_mem_free.exit ] ; 3 uses
  %i.e = load ptr, ptr %.01216, align 8, !tbaa !162 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %ft_mem_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !128
  tail call void %i.f(ptr noundef %1, ptr noundef nonnull %i.e) #30, !inline_history !129
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.c, %bb.d
  store ptr null, ptr %.01216, align 8, !tbaa !162
  %i.g = add nuw i32 %.017, 1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01216, i64 8
  %exitcond.not = icmp eq i32 %i.g, %i.b
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !388

._crit_edge.loopexit:                             ; preds = %ft_mem_free.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.pre19, %bb.b ] ; 2 uses
  %.not.i14 = icmp eq ptr %i.i, null
  br i1 %.not.i14, label %ft_mem_free.exit15, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128
  tail call void %i.k(ptr noundef %1, ptr noundef nonnull %i.i) #30, !inline_history !129
  br label %ft_mem_free.exit15

ft_mem_free.exit15:                               ; preds = %._crit_edge, %bb.e
  store ptr null, ptr %i.c, align 8, !tbaa !160
  br label %bb.f

bb.f:                                             ; preds = %ft_mem_free.exit15, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 65) i32 @ft_hash_str_insert(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @hash_insert(ptr %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 65) i32 @hash_insert(ptr %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i8 noundef zeroext range(i8 0, 2) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %union.FT_Hashkey_, align 8         ; 5 uses
  %6 = alloca %union.FT_Hashkey_, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %0, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158
  %i.e = call i64 %i.d(ptr noundef nonnull %6) #30, !inline_history !389
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !155
  %i.h = zext i32 %i.g to i64
  %i.i = urem i64 %i.e, %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !162  ; 2 uses
  %.not17.i = icmp eq ptr %i.l, null
  br i1 %.not17.i, label %hash_bucket.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.m = phi ptr [ %i.v, %bb.d ], [ %i.l, %bb.a ]
  %.018.i = phi ptr [ %.1.i, %bb.d ], [ %i.j, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !159
  %i.o = call zeroext i8 %i.n(ptr noundef nonnull %i.m, ptr noundef nonnull %6) #30, !inline_history !389
  %.not16.i = icmp eq i8 %i.o, 0
  br i1 %.not16.i, label %bb.b, label %hash_bucket.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds i8, ptr %.018.i, i64 -8 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.f, align 4, !tbaa !155
  %i.s = add i32 %i.r, -1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.u, %bb.c ], [ %i.p, %bb.b ] ; 3 uses
  %i.v = load ptr, ptr %.1.i, align 8, !tbaa !162 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %hash_bucket.exit, label %.lr.ph.i, !llvm.loop !1

hash_bucket.exit:                                 ; preds = %.lr.ph.i, %bb.d, %bb.a
  %.0.lcssa.i = phi ptr [ %i.j, %bb.a ], [ %.1.i, %bb.d ], [ %.018.i, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.w = load ptr, ptr %.0.lcssa.i, align 8, !tbaa !162 ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.e, label %bb.q

bb.e:                                             ; preds = %hash_bucket.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.z = call ptr %i.y(ptr noundef %3, i64 noundef 16) #30, !inline_history !117 ; 4 uses
  %.not.i20.not = icmp eq ptr %i.z, null
  br i1 %.not.i20.not, label %hash_rehash.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.z, ptr %.0.lcssa.i, align 8, !tbaa !162
  store ptr %0, ptr %i.z, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !164
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !157
  %i.ad = load i32, ptr %2, align 8, !tbaa !156
  %.not17 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not17, label %hash_rehash.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !160 ; 3 uses
  %i.af = load i32, ptr %i.f, align 4, !tbaa !155 ; 4 uses
  %i.ag = shl i32 %i.af, 1                        ; 4 uses
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !155
  %i.ah = udiv i32 %i.ag, 3
  store i32 %i.ah, ptr %2, align 8, !tbaa !156
  %i.ai = icmp eq i32 %i.ag, 0
  br i1 %i.ai, label %ft_mem_realloc.exit.thread40.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp ugt i32 %i.ag, 268435455
  br i1 %i.aj, label %ft_mem_realloc.exit.thread.i, label %bb.i

ft_mem_realloc.exit.thread.i:                     ; preds = %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !160
  br label %hash_rehash.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !108
  %i.al = shl i32 %i.af, 4
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = call ptr %i.ak(ptr noundef nonnull %3, i64 noundef %i.am) #30, !inline_history !390 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %ft_mem_realloc.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.an, i8 0, i64 %i.am, i1 false)
  br label %ft_mem_realloc.exit.thread40.i

ft_mem_realloc.exit.thread40.i:                   ; preds = %bb.j, %bb.g
  %.134.i24.i.ph.i = phi ptr [ null, %bb.g ], [ %i.an, %bb.j ]
  store ptr %.134.i24.i.ph.i, ptr %i.a, align 8, !tbaa !160
  %.not30.i = icmp eq i32 %i.af, 0
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph.i21

ft_mem_realloc.exit.i:                            ; preds = %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !160
  br label %hash_rehash.exit

.lr.ph.i21:                                       ; preds = %ft_mem_realloc.exit.thread40.i, %bb.o
  %.029.i = phi i32 [ %i.bk, %bb.o ], [ 0, %ft_mem_realloc.exit.thread40.i ]
  %.01928.i = phi ptr [ %i.bl, %bb.o ], [ %i.ae, %ft_mem_realloc.exit.thread40.i ] ; 3 uses
  %i.ap = load ptr, ptr %.01928.i, align 8, !tbaa !162 ; 2 uses
  %.not21.i = icmp eq ptr %i.ap, null
  br i1 %.not21.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i21
  %i.aq = load ptr, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.aq, ptr %5, align 8
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !160 ; 3 uses
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !158
  %i.at = call i64 %i.as(ptr noundef nonnull %5) #30, !inline_history !391
  %i.au = load i32, ptr %i.f, align 4, !tbaa !155
  %i.av = zext i32 %i.au to i64
  %i.aw = urem i64 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aw ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !162 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.ay, null
  br i1 %.not17.i.i, label %hash_bucket.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.n
  %i.az = phi ptr [ %i.bi, %bb.n ], [ %i.ay, %bb.k ]
  %.018.i.i = phi ptr [ %.1.i.i, %bb.n ], [ %i.ax, %bb.k ] ; 2 uses
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !159
  %i.bb = call zeroext i8 %i.ba(ptr noundef nonnull %i.az, ptr noundef nonnull %5) #30, !inline_history !391
  %.not16.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not16.i.i, label %bb.l, label %hash_bucket.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds i8, ptr %.018.i.i, i64 -8 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.ar
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = load i32, ptr %i.f, align 4, !tbaa !155
  %i.bf = add i32 %i.be, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bg
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i.i = phi ptr [ %i.bh, %bb.m ], [ %i.bc, %bb.l ] ; 3 uses
  %i.bi = load ptr, ptr %.1.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %hash_bucket.exit.i, label %.lr.ph.i.i, !llvm.loop !1

hash_bucket.exit.i:                               ; preds = %bb.n, %.lr.ph.i.i, %bb.k
  %.0.lcssa.i.i = phi ptr [ %i.ax, %bb.k ], [ %.018.i.i, %.lr.ph.i.i ], [ %.1.i.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bj = load ptr, ptr %.01928.i, align 8, !tbaa !162
  store ptr %i.bj, ptr %.0.lcssa.i.i, align 8, !tbaa !162
  br label %bb.o

bb.o:                                             ; preds = %hash_bucket.exit.i, %.lr.ph.i21
  %i.bk = add nuw i32 %.029.i, 1                  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01928.i, i64 8
  %exitcond.not.i = icmp eq i32 %i.bk, %i.af
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i21, !llvm.loop !392

._crit_edge.i:                                    ; preds = %bb.o, %ft_mem_realloc.exit.thread40.i
  %.not.i22.i = icmp eq ptr %i.ae, null
  br i1 %.not.i22.i, label %hash_rehash.exit.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !128
  call void %i.bn(ptr noundef %3, ptr noundef nonnull %i.ae) #30, !inline_history !393
  br label %hash_rehash.exit.thread

hash_rehash.exit.thread:                          ; preds = %bb.p, %._crit_edge.i, %bb.f
  %i.bo = load i32, ptr %i.ab, align 8, !tbaa !157
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.ab, align 8, !tbaa !157
  br label %hash_rehash.exit

bb.q:                                             ; preds = %hash_bucket.exit
  %.not19 = icmp eq i8 %4, 0
  br i1 %.not19, label %hash_rehash.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %1, ptr %i.bq, align 8, !tbaa !164
  br label %hash_rehash.exit

hash_rehash.exit:                                 ; preds = %ft_mem_realloc.exit.i, %ft_mem_realloc.exit.thread.i, %hash_rehash.exit.thread, %bb.r, %bb.q, %bb.e
  %.1 = phi i32 [ 0, %hash_rehash.exit.thread ], [ 0, %bb.r ], [ 64, %bb.e ], [ 0, %bb.q ], [ 10, %ft_mem_realloc.exit.thread.i ], [ 64, %ft_mem_realloc.exit.i ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 65) i32 @ft_hash_num_insert(i32 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %i.a = inttoptr i64 %.sroa.0.0.insert.ext to ptr
  %i.b = tail call fastcc i32 @hash_insert(ptr %i.a, i64 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 65) i32 @ft_hash_str_insert_no_overwrite(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @hash_insert(ptr %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 65) i32 @ft_hash_num_insert_no_overwrite(i32 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %i.a = inttoptr i64 %.sroa.0.0.insert.ext to ptr
  %i.b = tail call fastcc i32 @hash_insert(ptr %i.a, i64 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @ft_hash_str_lookup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.FT_Hashkey_, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158
  %i.e = call i64 %i.d(ptr noundef nonnull %2) #30, !inline_history !2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !155
  %i.h = zext i32 %i.g to i64
  %i.i = urem i64 %i.e, %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !162  ; 2 uses
  %.not17.i.i = icmp eq ptr %i.l, null
  br i1 %.not17.i.i, label %hash_lookup.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %i.m = phi ptr [ %i.v, %bb.d ], [ %i.l, %bb.a ]
  %.018.i.i = phi ptr [ %.1.i.i, %bb.d ], [ %i.j, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !159
  %i.o = call zeroext i8 %i.n(ptr noundef nonnull %i.m, ptr noundef nonnull %2) #30, !inline_history !2
  %.not16.i.i = icmp eq i8 %i.o, 0
  br i1 %.not16.i.i, label %bb.b, label %hash_lookup.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds i8, ptr %.018.i.i, i64 -8 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.f, align 4, !tbaa !155
  %i.s = add i32 %i.r, -1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i.i = phi ptr [ %i.u, %bb.c ], [ %i.p, %bb.b ] ; 3 uses
  %i.v = load ptr, ptr %.1.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %hash_lookup.exit, label %.lr.ph.i.i, !llvm.loop !1

hash_lookup.exit:                                 ; preds = %.lr.ph.i.i, %bb.d, %bb.a
  %.0.lcssa.i.i = phi ptr [ %i.j, %bb.a ], [ %.018.i.i, %.lr.ph.i.i ], [ %.1.i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.w = load ptr, ptr %.0.lcssa.i.i, align 8, !tbaa !162 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %spec.select.i = select i1 %.not.i, ptr null, ptr %i.x
  ret ptr %spec.select.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @ft_hash_num_lookup(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.FT_Hashkey_, align 8         ; 5 uses
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %i.a = inttoptr i64 %.sroa.0.0.insert.ext to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !160  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.f = call i64 %i.e(ptr noundef nonnull %2) #30, !inline_history !2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !155
  %i.i = zext i32 %i.h to i64
  %i.j = urem i64 %i.f, %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !162  ; 2 uses
  %.not17.i.i = icmp eq ptr %i.m, null
  br i1 %.not17.i.i, label %hash_lookup.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %i.n = phi ptr [ %i.w, %bb.d ], [ %i.m, %bb.a ]
  %.018.i.i = phi ptr [ %.1.i.i, %bb.d ], [ %i.k, %bb.a ] ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !159
end_hunk_0
