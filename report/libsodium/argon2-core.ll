Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/argon2-core?download=true
inline.NumInlined: 26
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@argon2_free_instance:bb.a
}

; Function Attrs: nounwind ssp uwtable
define hidden void @argon2_fill_memory_blocks(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 36         ; 5 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i32 %1 to i64      ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.sroa.0.4.insert.shift = shl nuw i64 %indvars.iv, 32
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext
  %i.e = load ptr, ptr @fill_segment, align 8
  tail call void %i.e(ptr noundef nonnull %0, i64 %.sroa.0.4.insert.insert, i64 0) #9, !callees !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = load i32, ptr %i.b, align 4              ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %bb.c, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.c
  %.not18.1 = icmp eq i32 %i.f, 0
  br i1 %.not18.1, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %.lr.ph.1 ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.0.4.insert.shift.1 = shl nuw i64 %indvars.iv.1, 32
  %.sroa.0.4.insert.insert.1 = or disjoint i64 %.sroa.0.4.insert.shift.1, %.sroa.0.0.insert.ext
  %i.i = load ptr, ptr @fill_segment, align 8
  tail call void %i.i(ptr noundef nonnull %0, i64 %.sroa.0.4.insert.insert.1, i64 1) #9, !callees !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.j = load i32, ptr %i.b, align 4              ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next.1, %i.k
  br i1 %i.l, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !14

._crit_edge.1:                                    ; preds = %.lr.ph.1
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %.lr.ph.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %.lr.ph.2 ], [ 0, %._crit_edge.1 ] ; 2 uses
  %.sroa.0.4.insert.shift.2 = shl nuw i64 %indvars.iv.2, 32
  %.sroa.0.4.insert.insert.2 = or disjoint i64 %.sroa.0.4.insert.shift.2, %.sroa.0.0.insert.ext
  %i.n = load ptr, ptr @fill_segment, align 8
  tail call void %i.n(ptr noundef nonnull %0, i64 %.sroa.0.4.insert.insert.2, i64 2) #9, !callees !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %i.o = load i32, ptr %i.b, align 4              ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next.2, %i.p
  br i1 %i.q, label %.lr.ph.2, label %._crit_edge.2, !llvm.loop !14

._crit_edge.2:                                    ; preds = %.lr.ph.2
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2, %.lr.ph.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %.lr.ph.3 ], [ 0, %._crit_edge.2 ] ; 2 uses
  %.sroa.0.4.insert.shift.3 = shl nuw i64 %indvars.iv.3, 32
  %.sroa.0.4.insert.insert.3 = or disjoint i64 %.sroa.0.4.insert.shift.3, %.sroa.0.0.insert.ext
  %i.s = load ptr, ptr @fill_segment, align 8
  tail call void %i.s(ptr noundef nonnull %0, i64 %.sroa.0.4.insert.insert.3, i64 3) #9, !callees !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %i.t = load i32, ptr %i.b, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next.3, %i.u
  br i1 %i.v, label %.lr.ph.3, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph.3, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: read) uwtable
define hidden range(i32 -29, 1) i32 @argon2_validate_inputs(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ult i32 %i.e, 16
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not34 = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not34, i32 -6, i32 -19
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.q = icmp ult i32 %i.p, 8
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load i32, ptr %i.u, align 8
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.w = getelementptr i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %0, i64 72
  %i.aa = load i32, ptr %i.z, align 8
  %.not36 = icmp eq i32 %i.aa, 0
  br i1 %.not36, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ab = getelementptr i8, ptr %0, i64 84
  %i.ac = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp ugt i32 %i.ac, 16777215
  br i1 %i.ae, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr i8, ptr %0, i64 80
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 8
  %i.ai = shl nuw nsw i32 %i.ac, 3
  %i.aj = icmp ult i32 %i.ag, %i.ai
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr i8, ptr %0, i64 76
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr i8, ptr %0, i64 88
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = icmp ugt i32 %i.ao, 16777215
  %. = select i1 %i.aq, i32 -29, i32 0
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -17, %bb.n ], [ -25, %bb.a ], [ -1, %bb.b ], [ %., %bb.r ], [ -2, %bb.c ], [ -28, %bb.q ], [ -14, %bb.o ], [ -18, %bb.e ], [ %spec.select, %bb.g ], [ -12, %bb.p ], [ -6, %bb.h ], [ -20, %bb.j ], [ -21, %bb.l ], [ -16, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind ssp uwtable
define hidden range(i32 -25, 1) i32 @argon2_initialize(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 142 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 2 uses
  %2 = alloca %struct.crypto_generichash_blake2b_state, align 64 ; 18 uses
  %i.c = alloca [4 x i8], align 4                 ; 22 uses
  %i.d = alloca [72 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 10                 ; 2 uses
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #10 ; 3 uses
  store ptr %i.s, ptr %0, align 8
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.u = tail call ptr @mmap(ptr noundef null, i64 noundef %i.q, i32 noundef 3, i32 noundef 32802, i32 noundef -1, i64 noundef 0) #9 ; 3 uses
  %magicptr.i = ptrtoint ptr %i.u to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  %i.v = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %switch.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.v) #9
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.d
  %i.w = getelementptr i8, ptr %1, i64 92
  %i.x = load i32, ptr %i.w, align 4
  tail call fastcc void @argon2_free_instance(ptr noundef %0, i32 noundef %i.x)
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  store ptr %i.u, ptr %i.v, align 8
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.u, ptr %i.z, align 8
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  store i64 %i.q, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 44
  %i.ad = load i32, ptr %i.ac, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ae = call i32 @crypto_generichash_blake2b_init(ptr noundef nonnull %2, ptr noundef null, i64 noundef 0, i64 noundef 64) #9 ; 0 uses
  %i.af = getelementptr i8, ptr %1, i64 84
  %i.ag = load i32, ptr %i.af, align 4
  store i32 %i.ag, ptr %i.c, align 4
  %i.ah = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.ai = getelementptr i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  store i32 %i.aj, ptr %i.c, align 4
  %i.ak = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.al = getelementptr i8, ptr %1, i64 80
  %i.am = load i32, ptr %i.al, align 8
  store i32 %i.am, ptr %i.c, align 4
  %i.an = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.ao = getelementptr i8, ptr %1, i64 76
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.c, align 4
  %i.aq = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  store i32 19, ptr %i.c, align 4
  %i.ar = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  store i32 %i.ad, ptr %i.c, align 4
  %i.as = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.at = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.au = load i32, ptr %i.at, align 8
  store i32 %i.au, ptr %i.c, align 4
  %i.av = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.aw = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.at, align 8
  %i.az = zext i32 %i.ay to i64
  %i.ba = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.ax, i64 noundef %i.az) #9 ; 0 uses
  %i.bb = getelementptr i8, ptr %1, i64 92
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 1
  %.not37.i = icmp eq i32 %i.bd, 0
  br i1 %.not37.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.aw, align 8
  %i.bf = load i32, ptr %i.at, align 8
  %i.bg = zext i32 %i.bf to i64
  call void @sodium_memzero(ptr noundef %i.be, i64 noundef %i.bg) #9
  store i32 0, ptr %i.at, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.bh = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  store i32 %i.bi, ptr %i.c, align 4
  %i.bj = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.bk = getelementptr i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not38.i = icmp eq ptr %i.bl, null
  br i1 %.not38.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load i32, ptr %i.bh, align 8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.bl, i64 noundef %i.bn) #9 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bp = getelementptr i8, ptr %1, i64 56        ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8
  store i32 %i.bq, ptr %i.c, align 4
  %i.br = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.bs = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not39.i = icmp eq ptr %i.bt, null
  br i1 %.not39.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.bp, align 8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.bt, i64 noundef %i.bv) #9 ; 0 uses
  %i.bx = getelementptr i8, ptr %1, i64 92
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = and i32 %i.by, 2
  %.not40.i = icmp eq i32 %i.bz, 0
  br i1 %.not40.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.bs, align 8
  %i.cb = load i32, ptr %i.bp, align 8
  %i.cc = zext i32 %i.cb to i64
  call void @sodium_memzero(ptr noundef %i.ca, i64 noundef %i.cc) #9
  store i32 0, ptr %i.bp, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cd = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  store i32 %i.ce, ptr %i.c, align 4
  %i.cf = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i64 noundef 4) #9 ; 0 uses
  %i.cg = getelementptr i8, ptr %1, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not41.i = icmp eq ptr %i.ch, null
  br i1 %.not41.i, label %argon2_initial_hash.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load i32, ptr %i.cd, align 8
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @crypto_generichash_blake2b_update(ptr noundef nonnull %2, ptr noundef nonnull %i.ch, i64 noundef %i.cj) #9 ; 0 uses
  br label %argon2_initial_hash.exit

argon2_initial_hash.exit:                         ; preds = %bb.p, %bb.q
  %i.cl = call i32 @crypto_generichash_blake2b_final(ptr noundef nonnull %2, ptr noundef nonnull %i.d, i64 noundef 64) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  call void @sodium_memzero(ptr noundef nonnull %i.cm, i64 noundef 8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.cn = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4
  %.not.i17 = icmp eq i32 %i.co, 0
  br i1 %.not.i17, label %argon2_fill_first_blocks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %argon2_initial_hash.exit
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.cp = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  br label %vector.memcheck33

vector.memcheck33:                                ; preds = %load_block.exit17.i, %.lr.ph.i
  %.018.i = phi i32 [ 0, %.lr.ph.i ], [ %4, %load_block.exit17.i ] ; 4 uses
  store i32 0, ptr %i.cm, align 16
  store i32 %.018.i, ptr %3, align 4
  %i.hm = call i32 @blake2b_long(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.d, i64 noundef 72) #9 ; 0 uses
  %i.hn = load ptr, ptr %0, align 8
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %i.hq = load i32, ptr %i.cp, align 8
  %i.hr = mul i32 %i.hq, %.018.i
  %i.hs = zext i32 %i.hr to i64                   ; 2 uses
  %i.ht = getelementptr [1024 x i8], ptr %i.hp, i64 %i.hs ; 68 uses
  %i.hu = ptrtoaddr ptr %i.hp to i64
  %i.hv = shl nuw nsw i64 %i.hs, 10
  %i.hw = add i64 %i.hv, %i.hu
  %i.hx = sub i64 %i.b, %i.hw
  %diff.check34 = icmp ugt i64 %i.hx, -32
  br i1 %diff.check34, label %scalar.ph32, label %vector.body36

vector.body36:                                    ; preds = %vector.memcheck33
  %wide.load38 = load <2 x i64>, ptr %i.a, align 16
  %wide.load39 = load <2 x i64>, ptr %i.cq, align 16
  %i.hy = getelementptr i8, ptr %i.ht, i64 16
  store <2 x i64> %wide.load38, ptr %i.ht, align 8
  store <2 x i64> %wide.load39, ptr %i.hy, align 8
  %wide.load38.1 = load <2 x i64>, ptr %i.cr, align 16
  %wide.load39.1 = load <2 x i64>, ptr %i.cs, align 16
  %i.hz = getelementptr i8, ptr %i.ht, i64 32
  %i.ia = getelementptr i8, ptr %i.ht, i64 48
  store <2 x i64> %wide.load38.1, ptr %i.hz, align 8
  store <2 x i64> %wide.load39.1, ptr %i.ia, align 8
  %wide.load38.2 = load <2 x i64>, ptr %i.ct, align 16
  %wide.load39.2 = load <2 x i64>, ptr %i.cu, align 16
  %i.ib = getelementptr i8, ptr %i.ht, i64 64
  %i.ic = getelementptr i8, ptr %i.ht, i64 80
  store <2 x i64> %wide.load38.2, ptr %i.ib, align 8
  store <2 x i64> %wide.load39.2, ptr %i.ic, align 8
  %wide.load38.3 = load <2 x i64>, ptr %i.cv, align 16
  %wide.load39.3 = load <2 x i64>, ptr %i.cw, align 16
  %i.id = getelementptr i8, ptr %i.ht, i64 96
  %i.ie = getelementptr i8, ptr %i.ht, i64 112
  store <2 x i64> %wide.load38.3, ptr %i.id, align 8
  store <2 x i64> %wide.load39.3, ptr %i.ie, align 8
  %wide.load38.4 = load <2 x i64>, ptr %i.cx, align 16
  %wide.load39.4 = load <2 x i64>, ptr %i.cy, align 16
  %i.if = getelementptr i8, ptr %i.ht, i64 128
  %i.ig = getelementptr i8, ptr %i.ht, i64 144
  store <2 x i64> %wide.load38.4, ptr %i.if, align 8
  store <2 x i64> %wide.load39.4, ptr %i.ig, align 8
  %wide.load38.5 = load <2 x i64>, ptr %i.cz, align 16
  %wide.load39.5 = load <2 x i64>, ptr %i.da, align 16
  %i.ih = getelementptr i8, ptr %i.ht, i64 160
  %i.ii = getelementptr i8, ptr %i.ht, i64 176
  store <2 x i64> %wide.load38.5, ptr %i.ih, align 8
  store <2 x i64> %wide.load39.5, ptr %i.ii, align 8
  %wide.load38.6 = load <2 x i64>, ptr %i.db, align 16
  %wide.load39.6 = load <2 x i64>, ptr %i.dc, align 16
  %i.ij = getelementptr i8, ptr %i.ht, i64 192
  %i.ik = getelementptr i8, ptr %i.ht, i64 208
  store <2 x i64> %wide.load38.6, ptr %i.ij, align 8
  store <2 x i64> %wide.load39.6, ptr %i.ik, align 8
  %wide.load38.7 = load <2 x i64>, ptr %i.dd, align 16
  %wide.load39.7 = load <2 x i64>, ptr %i.de, align 16
  %i.il = getelementptr i8, ptr %i.ht, i64 224
  %i.im = getelementptr i8, ptr %i.ht, i64 240
  store <2 x i64> %wide.load38.7, ptr %i.il, align 8
  store <2 x i64> %wide.load39.7, ptr %i.im, align 8
  %wide.load38.8 = load <2 x i64>, ptr %i.df, align 16
  %wide.load39.8 = load <2 x i64>, ptr %i.dg, align 16
  %i.in = getelementptr i8, ptr %i.ht, i64 256
  %i.io = getelementptr i8, ptr %i.ht, i64 272
  store <2 x i64> %wide.load38.8, ptr %i.in, align 8
  store <2 x i64> %wide.load39.8, ptr %i.io, align 8
  %wide.load38.9 = load <2 x i64>, ptr %i.dh, align 16
  %wide.load39.9 = load <2 x i64>, ptr %i.di, align 16
  %i.ip = getelementptr i8, ptr %i.ht, i64 288
  %i.iq = getelementptr i8, ptr %i.ht, i64 304
  store <2 x i64> %wide.load38.9, ptr %i.ip, align 8
  store <2 x i64> %wide.load39.9, ptr %i.iq, align 8
  %wide.load38.10 = load <2 x i64>, ptr %i.dj, align 16
  %wide.load39.10 = load <2 x i64>, ptr %i.dk, align 16
  %i.ir = getelementptr i8, ptr %i.ht, i64 320
  %i.is = getelementptr i8, ptr %i.ht, i64 336
  store <2 x i64> %wide.load38.10, ptr %i.ir, align 8
  store <2 x i64> %wide.load39.10, ptr %i.is, align 8
  %wide.load38.11 = load <2 x i64>, ptr %i.dl, align 16
  %wide.load39.11 = load <2 x i64>, ptr %i.dm, align 16
  %i.it = getelementptr i8, ptr %i.ht, i64 352
  %i.iu = getelementptr i8, ptr %i.ht, i64 368
  store <2 x i64> %wide.load38.11, ptr %i.it, align 8
  store <2 x i64> %wide.load39.11, ptr %i.iu, align 8
  %wide.load38.12 = load <2 x i64>, ptr %i.dn, align 16
  %wide.load39.12 = load <2 x i64>, ptr %i.do, align 16
  %i.iv = getelementptr i8, ptr %i.ht, i64 384
  %i.iw = getelementptr i8, ptr %i.ht, i64 400
  store <2 x i64> %wide.load38.12, ptr %i.iv, align 8
  store <2 x i64> %wide.load39.12, ptr %i.iw, align 8
  %wide.load38.13 = load <2 x i64>, ptr %i.dp, align 16
  %wide.load39.13 = load <2 x i64>, ptr %i.dq, align 16
  %i.ix = getelementptr i8, ptr %i.ht, i64 416
  %i.iy = getelementptr i8, ptr %i.ht, i64 432
  store <2 x i64> %wide.load38.13, ptr %i.ix, align 8
  store <2 x i64> %wide.load39.13, ptr %i.iy, align 8
  %wide.load38.14 = load <2 x i64>, ptr %i.dr, align 16
  %wide.load39.14 = load <2 x i64>, ptr %i.ds, align 16
  %i.iz = getelementptr i8, ptr %i.ht, i64 448
  %i.ja = getelementptr i8, ptr %i.ht, i64 464
  store <2 x i64> %wide.load38.14, ptr %i.iz, align 8
  store <2 x i64> %wide.load39.14, ptr %i.ja, align 8
  %wide.load38.15 = load <2 x i64>, ptr %i.dt, align 16
  %wide.load39.15 = load <2 x i64>, ptr %i.du, align 16
  %i.jb = getelementptr i8, ptr %i.ht, i64 480
  %i.jc = getelementptr i8, ptr %i.ht, i64 496
  store <2 x i64> %wide.load38.15, ptr %i.jb, align 8
  store <2 x i64> %wide.load39.15, ptr %i.jc, align 8
  %wide.load38.16 = load <2 x i64>, ptr %i.dv, align 16
  %wide.load39.16 = load <2 x i64>, ptr %i.dw, align 16
  %i.jd = getelementptr i8, ptr %i.ht, i64 512
  %i.je = getelementptr i8, ptr %i.ht, i64 528
  store <2 x i64> %wide.load38.16, ptr %i.jd, align 8
  store <2 x i64> %wide.load39.16, ptr %i.je, align 8
  %wide.load38.17 = load <2 x i64>, ptr %i.dx, align 16
  %wide.load39.17 = load <2 x i64>, ptr %i.dy, align 16
  %i.jf = getelementptr i8, ptr %i.ht, i64 544
  %i.jg = getelementptr i8, ptr %i.ht, i64 560
  store <2 x i64> %wide.load38.17, ptr %i.jf, align 8
  store <2 x i64> %wide.load39.17, ptr %i.jg, align 8
  %wide.load38.18 = load <2 x i64>, ptr %i.dz, align 16
  %wide.load39.18 = load <2 x i64>, ptr %i.ea, align 16
  %i.jh = getelementptr i8, ptr %i.ht, i64 576
  %i.ji = getelementptr i8, ptr %i.ht, i64 592
  store <2 x i64> %wide.load38.18, ptr %i.jh, align 8
  store <2 x i64> %wide.load39.18, ptr %i.ji, align 8
  %wide.load38.19 = load <2 x i64>, ptr %i.eb, align 16
  %wide.load39.19 = load <2 x i64>, ptr %i.ec, align 16
  %i.jj = getelementptr i8, ptr %i.ht, i64 608
  %i.jk = getelementptr i8, ptr %i.ht, i64 624
  store <2 x i64> %wide.load38.19, ptr %i.jj, align 8
  store <2 x i64> %wide.load39.19, ptr %i.jk, align 8
  %wide.load38.20 = load <2 x i64>, ptr %i.ed, align 16
  %wide.load39.20 = load <2 x i64>, ptr %i.ee, align 16
  %i.jl = getelementptr i8, ptr %i.ht, i64 640
  %i.jm = getelementptr i8, ptr %i.ht, i64 656
  store <2 x i64> %wide.load38.20, ptr %i.jl, align 8
  store <2 x i64> %wide.load39.20, ptr %i.jm, align 8
  %wide.load38.21 = load <2 x i64>, ptr %i.ef, align 16
  %wide.load39.21 = load <2 x i64>, ptr %i.eg, align 16
  %i.jn = getelementptr i8, ptr %i.ht, i64 672
  %i.jo = getelementptr i8, ptr %i.ht, i64 688
  store <2 x i64> %wide.load38.21, ptr %i.jn, align 8
  store <2 x i64> %wide.load39.21, ptr %i.jo, align 8
  %wide.load38.22 = load <2 x i64>, ptr %i.eh, align 16
  %wide.load39.22 = load <2 x i64>, ptr %i.ei, align 16
  %i.jp = getelementptr i8, ptr %i.ht, i64 704
  %i.jq = getelementptr i8, ptr %i.ht, i64 720
  store <2 x i64> %wide.load38.22, ptr %i.jp, align 8
  store <2 x i64> %wide.load39.22, ptr %i.jq, align 8
  %wide.load38.23 = load <2 x i64>, ptr %i.ej, align 16
  %wide.load39.23 = load <2 x i64>, ptr %i.ek, align 16
  %i.jr = getelementptr i8, ptr %i.ht, i64 736
  %i.js = getelementptr i8, ptr %i.ht, i64 752
  store <2 x i64> %wide.load38.23, ptr %i.jr, align 8
  store <2 x i64> %wide.load39.23, ptr %i.js, align 8
  %wide.load38.24 = load <2 x i64>, ptr %i.el, align 16
  %wide.load39.24 = load <2 x i64>, ptr %i.em, align 16
  %i.jt = getelementptr i8, ptr %i.ht, i64 768
  %i.ju = getelementptr i8, ptr %i.ht, i64 784
  store <2 x i64> %wide.load38.24, ptr %i.jt, align 8
  store <2 x i64> %wide.load39.24, ptr %i.ju, align 8
  %wide.load38.25 = load <2 x i64>, ptr %i.en, align 16
  %wide.load39.25 = load <2 x i64>, ptr %i.eo, align 16
  %i.jv = getelementptr i8, ptr %i.ht, i64 800
  %i.jw = getelementptr i8, ptr %i.ht, i64 816
  store <2 x i64> %wide.load38.25, ptr %i.jv, align 8
  store <2 x i64> %wide.load39.25, ptr %i.jw, align 8
  %wide.load38.26 = load <2 x i64>, ptr %i.ep, align 16
  %wide.load39.26 = load <2 x i64>, ptr %i.eq, align 16
  %i.jx = getelementptr i8, ptr %i.ht, i64 832
  %i.jy = getelementptr i8, ptr %i.ht, i64 848
  store <2 x i64> %wide.load38.26, ptr %i.jx, align 8
  store <2 x i64> %wide.load39.26, ptr %i.jy, align 8
  %wide.load38.27 = load <2 x i64>, ptr %i.er, align 16
  %wide.load39.27 = load <2 x i64>, ptr %i.es, align 16
  %i.jz = getelementptr i8, ptr %i.ht, i64 864
  %i.ka = getelementptr i8, ptr %i.ht, i64 880
  store <2 x i64> %wide.load38.27, ptr %i.jz, align 8
  store <2 x i64> %wide.load39.27, ptr %i.ka, align 8
  %wide.load38.28 = load <2 x i64>, ptr %i.et, align 16
  %wide.load39.28 = load <2 x i64>, ptr %i.eu, align 16
  %i.kb = getelementptr i8, ptr %i.ht, i64 896
  %i.kc = getelementptr i8, ptr %i.ht, i64 912
  store <2 x i64> %wide.load38.28, ptr %i.kb, align 8
  store <2 x i64> %wide.load39.28, ptr %i.kc, align 8
  %wide.load38.29 = load <2 x i64>, ptr %i.ev, align 16
  %wide.load39.29 = load <2 x i64>, ptr %i.ew, align 16
  %i.kd = getelementptr i8, ptr %i.ht, i64 928
  %i.ke = getelementptr i8, ptr %i.ht, i64 944
  store <2 x i64> %wide.load38.29, ptr %i.kd, align 8
  store <2 x i64> %wide.load39.29, ptr %i.ke, align 8
  %wide.load38.30 = load <2 x i64>, ptr %i.ex, align 16
  %wide.load39.30 = load <2 x i64>, ptr %i.ey, align 16
  %i.kf = getelementptr i8, ptr %i.ht, i64 960
  %i.kg = getelementptr i8, ptr %i.ht, i64 976
  store <2 x i64> %wide.load38.30, ptr %i.kf, align 8
  store <2 x i64> %wide.load39.30, ptr %i.kg, align 8
  %wide.load38.31 = load <2 x i64>, ptr %i.ez, align 16
  %wide.load39.31 = load <2 x i64>, ptr %i.fa, align 16
  %i.kh = getelementptr i8, ptr %i.ht, i64 992
  %i.ki = getelementptr i8, ptr %i.ht, i64 1008
  store <2 x i64> %wide.load38.31, ptr %i.kh, align 8
  store <2 x i64> %wide.load39.31, ptr %i.ki, align 8
  br label %load_block.exit.i

scalar.ph32:                                      ; preds = %vector.memcheck33, %scalar.ph32
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph32 ], [ 0, %vector.memcheck33 ] ; 6 uses
  %i.kj = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.kk = getelementptr i8, ptr %i.a, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 16
  %i.km = getelementptr [8 x i8], ptr %i.ht, i64 %indvars.iv.i.i
  store i64 %i.kl, ptr %i.km, align 8
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kn = shl nuw nsw i64 %indvars.iv.next.i.i, 3
  %i.ko = getelementptr i8, ptr %i.a, i64 %i.kn
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr [8 x i8], ptr %i.ht, i64 %indvars.iv.next.i.i
  store i64 %i.kp, ptr %i.kq, align 8
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.kr = shl nuw nsw i64 %indvars.iv.next.i.i.1, 3
  %i.ks = getelementptr i8, ptr %i.a, i64 %i.kr
  %i.kt = load i64, ptr %i.ks, align 16
  %i.ku = getelementptr [8 x i8], ptr %i.ht, i64 %indvars.iv.next.i.i.1
  store i64 %i.kt, ptr %i.ku, align 8
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.kv = shl nuw nsw i64 %indvars.iv.next.i.i.2, 3
  %i.kw = getelementptr i8, ptr %i.a, i64 %i.kv
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = getelementptr [8 x i8], ptr %i.ht, i64 %indvars.iv.next.i.i.2
  store i64 %i.kx, ptr %i.ky, align 8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 128
  br i1 %exitcond.not.i.i.3, label %load_block.exit.i, label %scalar.ph32, !llvm.loop !16

load_block.exit.i:                                ; preds = %scalar.ph32, %vector.body36
  store i32 1, ptr %i.cm, align 16
  %i.kz = call i32 @blake2b_long(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull %i.d, i64 noundef 72) #9 ; 0 uses
  %i.la = load ptr, ptr %0, align 8
  %i.lb = getelementptr i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8            ; 2 uses
  %i.ld = load i32, ptr %i.cp, align 8
  %i.le = mul i32 %i.ld, %.018.i
  %i.lf = add i32 %i.le, 1
  %i.lg = zext i32 %i.lf to i64                   ; 2 uses
  %i.lh = getelementptr [1024 x i8], ptr %i.lc, i64 %i.lg ; 68 uses
  %i.li = ptrtoaddr ptr %i.lc to i64
  %i.lj = shl nuw nsw i64 %i.lg, 10
  %i.lk = add i64 %i.lj, %i.li
  %i.ll = sub i64 %i.b, %i.lk
  %diff.check = icmp ugt i64 %i.ll, -32
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %load_block.exit.i
  %wide.load = load <2 x i64>, ptr %i.a, align 16
  %wide.load29 = load <2 x i64>, ptr %i.fb, align 16
  %i.lm = getelementptr i8, ptr %i.lh, i64 16
  store <2 x i64> %wide.load, ptr %i.lh, align 8
  store <2 x i64> %wide.load29, ptr %i.lm, align 8
  %wide.load.1 = load <2 x i64>, ptr %i.fc, align 16
  %wide.load29.1 = load <2 x i64>, ptr %i.fd, align 16
  %i.ln = getelementptr i8, ptr %i.lh, i64 32
  %i.lo = getelementptr i8, ptr %i.lh, i64 48
  store <2 x i64> %wide.load.1, ptr %i.ln, align 8
  store <2 x i64> %wide.load29.1, ptr %i.lo, align 8
  %wide.load.2 = load <2 x i64>, ptr %i.fe, align 16
  %wide.load29.2 = load <2 x i64>, ptr %i.ff, align 16
  %i.lp = getelementptr i8, ptr %i.lh, i64 64
  %i.lq = getelementptr i8, ptr %i.lh, i64 80
  store <2 x i64> %wide.load.2, ptr %i.lp, align 8
  store <2 x i64> %wide.load29.2, ptr %i.lq, align 8
  %wide.load.3 = load <2 x i64>, ptr %i.fg, align 16
  %wide.load29.3 = load <2 x i64>, ptr %i.fh, align 16
  %i.lr = getelementptr i8, ptr %i.lh, i64 96
  %i.ls = getelementptr i8, ptr %i.lh, i64 112
  store <2 x i64> %wide.load.3, ptr %i.lr, align 8
  store <2 x i64> %wide.load29.3, ptr %i.ls, align 8
  %wide.load.4 = load <2 x i64>, ptr %i.fi, align 16
  %wide.load29.4 = load <2 x i64>, ptr %i.fj, align 16
  %i.lt = getelementptr i8, ptr %i.lh, i64 128
  %i.lu = getelementptr i8, ptr %i.lh, i64 144
  store <2 x i64> %wide.load.4, ptr %i.lt, align 8
  store <2 x i64> %wide.load29.4, ptr %i.lu, align 8
  %wide.load.5 = load <2 x i64>, ptr %i.fk, align 16
  %wide.load29.5 = load <2 x i64>, ptr %i.fl, align 16
  %i.lv = getelementptr i8, ptr %i.lh, i64 160
  %i.lw = getelementptr i8, ptr %i.lh, i64 176
  store <2 x i64> %wide.load.5, ptr %i.lv, align 8
  store <2 x i64> %wide.load29.5, ptr %i.lw, align 8
  %wide.load.6 = load <2 x i64>, ptr %i.fm, align 16
  %wide.load29.6 = load <2 x i64>, ptr %i.fn, align 16
  %i.lx = getelementptr i8, ptr %i.lh, i64 192
  %i.ly = getelementptr i8, ptr %i.lh, i64 208
  store <2 x i64> %wide.load.6, ptr %i.lx, align 8
  store <2 x i64> %wide.load29.6, ptr %i.ly, align 8
  %wide.load.7 = load <2 x i64>, ptr %i.fo, align 16
  %wide.load29.7 = load <2 x i64>, ptr %i.fp, align 16
  %i.lz = getelementptr i8, ptr %i.lh, i64 224
  %i.ma = getelementptr i8, ptr %i.lh, i64 240
  store <2 x i64> %wide.load.7, ptr %i.lz, align 8
  store <2 x i64> %wide.load29.7, ptr %i.ma, align 8
  %wide.load.8 = load <2 x i64>, ptr %i.fq, align 16
  %wide.load29.8 = load <2 x i64>, ptr %i.fr, align 16
  %i.mb = getelementptr i8, ptr %i.lh, i64 256
  %i.mc = getelementptr i8, ptr %i.lh, i64 272
  store <2 x i64> %wide.load.8, ptr %i.mb, align 8
  store <2 x i64> %wide.load29.8, ptr %i.mc, align 8
  %wide.load.9 = load <2 x i64>, ptr %i.fs, align 16
  %wide.load29.9 = load <2 x i64>, ptr %i.ft, align 16
  %i.md = getelementptr i8, ptr %i.lh, i64 288
  %i.me = getelementptr i8, ptr %i.lh, i64 304
  store <2 x i64> %wide.load.9, ptr %i.md, align 8
  store <2 x i64> %wide.load29.9, ptr %i.me, align 8
  %wide.load.10 = load <2 x i64>, ptr %i.fu, align 16
  %wide.load29.10 = load <2 x i64>, ptr %i.fv, align 16
  %i.mf = getelementptr i8, ptr %i.lh, i64 320
  %i.mg = getelementptr i8, ptr %i.lh, i64 336
  store <2 x i64> %wide.load.10, ptr %i.mf, align 8
  store <2 x i64> %wide.load29.10, ptr %i.mg, align 8
  %wide.load.11 = load <2 x i64>, ptr %i.fw, align 16
  %wide.load29.11 = load <2 x i64>, ptr %i.fx, align 16
  %i.mh = getelementptr i8, ptr %i.lh, i64 352
  %i.mi = getelementptr i8, ptr %i.lh, i64 368
  store <2 x i64> %wide.load.11, ptr %i.mh, align 8
  store <2 x i64> %wide.load29.11, ptr %i.mi, align 8
  %wide.load.12 = load <2 x i64>, ptr %i.fy, align 16
  %wide.load29.12 = load <2 x i64>, ptr %i.fz, align 16
  %i.mj = getelementptr i8, ptr %i.lh, i64 384
  %i.mk = getelementptr i8, ptr %i.lh, i64 400
  store <2 x i64> %wide.load.12, ptr %i.mj, align 8
  store <2 x i64> %wide.load29.12, ptr %i.mk, align 8
  %wide.load.13 = load <2 x i64>, ptr %i.ga, align 16
  %wide.load29.13 = load <2 x i64>, ptr %i.gb, align 16
  %i.ml = getelementptr i8, ptr %i.lh, i64 416
  %i.mm = getelementptr i8, ptr %i.lh, i64 432
  store <2 x i64> %wide.load.13, ptr %i.ml, align 8
  store <2 x i64> %wide.load29.13, ptr %i.mm, align 8
  %wide.load.14 = load <2 x i64>, ptr %i.gc, align 16
  %wide.load29.14 = load <2 x i64>, ptr %i.gd, align 16
  %i.mn = getelementptr i8, ptr %i.lh, i64 448
  %i.mo = getelementptr i8, ptr %i.lh, i64 464
  store <2 x i64> %wide.load.14, ptr %i.mn, align 8
  store <2 x i64> %wide.load29.14, ptr %i.mo, align 8
  %wide.load.15 = load <2 x i64>, ptr %i.ge, align 16
  %wide.load29.15 = load <2 x i64>, ptr %i.gf, align 16
  %i.mp = getelementptr i8, ptr %i.lh, i64 480
  %i.mq = getelementptr i8, ptr %i.lh, i64 496
  store <2 x i64> %wide.load.15, ptr %i.mp, align 8
  store <2 x i64> %wide.load29.15, ptr %i.mq, align 8
  %wide.load.16 = load <2 x i64>, ptr %i.gg, align 16
  %wide.load29.16 = load <2 x i64>, ptr %i.gh, align 16
  %i.mr = getelementptr i8, ptr %i.lh, i64 512
  %i.ms = getelementptr i8, ptr %i.lh, i64 528
  store <2 x i64> %wide.load.16, ptr %i.mr, align 8
  store <2 x i64> %wide.load29.16, ptr %i.ms, align 8
  %wide.load.17 = load <2 x i64>, ptr %i.gi, align 16
  %wide.load29.17 = load <2 x i64>, ptr %i.gj, align 16
  %i.mt = getelementptr i8, ptr %i.lh, i64 544
  %i.mu = getelementptr i8, ptr %i.lh, i64 560
  store <2 x i64> %wide.load.17, ptr %i.mt, align 8
  store <2 x i64> %wide.load29.17, ptr %i.mu, align 8
  %wide.load.18 = load <2 x i64>, ptr %i.gk, align 16
  %wide.load29.18 = load <2 x i64>, ptr %i.gl, align 16
  %i.mv = getelementptr i8, ptr %i.lh, i64 576
  %i.mw = getelementptr i8, ptr %i.lh, i64 592
  store <2 x i64> %wide.load.18, ptr %i.mv, align 8
  store <2 x i64> %wide.load29.18, ptr %i.mw, align 8
  %wide.load.19 = load <2 x i64>, ptr %i.gm, align 16
  %wide.load29.19 = load <2 x i64>, ptr %i.gn, align 16
  %i.mx = getelementptr i8, ptr %i.lh, i64 608
  %i.my = getelementptr i8, ptr %i.lh, i64 624
  store <2 x i64> %wide.load.19, ptr %i.mx, align 8
  store <2 x i64> %wide.load29.19, ptr %i.my, align 8
  %wide.load.20 = load <2 x i64>, ptr %i.go, align 16
  %wide.load29.20 = load <2 x i64>, ptr %i.gp, align 16
  %i.mz = getelementptr i8, ptr %i.lh, i64 640
  %i.na = getelementptr i8, ptr %i.lh, i64 656
  store <2 x i64> %wide.load.20, ptr %i.mz, align 8
  store <2 x i64> %wide.load29.20, ptr %i.na, align 8
  %wide.load.21 = load <2 x i64>, ptr %i.gq, align 16
  %wide.load29.21 = load <2 x i64>, ptr %i.gr, align 16
  %i.nb = getelementptr i8, ptr %i.lh, i64 672
  %i.nc = getelementptr i8, ptr %i.lh, i64 688
  store <2 x i64> %wide.load.21, ptr %i.nb, align 8
  store <2 x i64> %wide.load29.21, ptr %i.nc, align 8
  %wide.load.22 = load <2 x i64>, ptr %i.gs, align 16
  %wide.load29.22 = load <2 x i64>, ptr %i.gt, align 16
  %i.nd = getelementptr i8, ptr %i.lh, i64 704
  %i.ne = getelementptr i8, ptr %i.lh, i64 720
  store <2 x i64> %wide.load.22, ptr %i.nd, align 8
  store <2 x i64> %wide.load29.22, ptr %i.ne, align 8
  %wide.load.23 = load <2 x i64>, ptr %i.gu, align 16
  %wide.load29.23 = load <2 x i64>, ptr %i.gv, align 16
  %i.nf = getelementptr i8, ptr %i.lh, i64 736
  %i.ng = getelementptr i8, ptr %i.lh, i64 752
  store <2 x i64> %wide.load.23, ptr %i.nf, align 8
  store <2 x i64> %wide.load29.23, ptr %i.ng, align 8
  %wide.load.24 = load <2 x i64>, ptr %i.gw, align 16
  %wide.load29.24 = load <2 x i64>, ptr %i.gx, align 16
  %i.nh = getelementptr i8, ptr %i.lh, i64 768
  %i.ni = getelementptr i8, ptr %i.lh, i64 784
  store <2 x i64> %wide.load.24, ptr %i.nh, align 8
  store <2 x i64> %wide.load29.24, ptr %i.ni, align 8
  %wide.load.25 = load <2 x i64>, ptr %i.gy, align 16
  %wide.load29.25 = load <2 x i64>, ptr %i.gz, align 16
  %i.nj = getelementptr i8, ptr %i.lh, i64 800
  %i.nk = getelementptr i8, ptr %i.lh, i64 816
  store <2 x i64> %wide.load.25, ptr %i.nj, align 8
  store <2 x i64> %wide.load29.25, ptr %i.nk, align 8
  %wide.load.26 = load <2 x i64>, ptr %i.ha, align 16
  %wide.load29.26 = load <2 x i64>, ptr %i.hb, align 16
  %i.nl = getelementptr i8, ptr %i.lh, i64 832
  %i.nm = getelementptr i8, ptr %i.lh, i64 848
  store <2 x i64> %wide.load.26, ptr %i.nl, align 8
  store <2 x i64> %wide.load29.26, ptr %i.nm, align 8
  %wide.load.27 = load <2 x i64>, ptr %i.hc, align 16
  %wide.load29.27 = load <2 x i64>, ptr %i.hd, align 16
  %i.nn = getelementptr i8, ptr %i.lh, i64 864
  %i.no = getelementptr i8, ptr %i.lh, i64 880
  store <2 x i64> %wide.load.27, ptr %i.nn, align 8
  store <2 x i64> %wide.load29.27, ptr %i.no, align 8
  %wide.load.28 = load <2 x i64>, ptr %i.he, align 16
  %wide.load29.28 = load <2 x i64>, ptr %i.hf, align 16
  %i.np = getelementptr i8, ptr %i.lh, i64 896
  %i.nq = getelementptr i8, ptr %i.lh, i64 912
  store <2 x i64> %wide.load.28, ptr %i.np, align 8
  store <2 x i64> %wide.load29.28, ptr %i.nq, align 8
  %wide.load.29 = load <2 x i64>, ptr %i.hg, align 16
  %wide.load29.29 = load <2 x i64>, ptr %i.hh, align 16
  %i.nr = getelementptr i8, ptr %i.lh, i64 928
  %i.ns = getelementptr i8, ptr %i.lh, i64 944
  store <2 x i64> %wide.load.29, ptr %i.nr, align 8
  store <2 x i64> %wide.load29.29, ptr %i.ns, align 8
  %wide.load.30 = load <2 x i64>, ptr %i.hi, align 16
  %wide.load29.30 = load <2 x i64>, ptr %i.hj, align 16
  %i.nt = getelementptr i8, ptr %i.lh, i64 960
  %i.nu = getelementptr i8, ptr %i.lh, i64 976
  store <2 x i64> %wide.load.30, ptr %i.nt, align 8
  store <2 x i64> %wide.load29.30, ptr %i.nu, align 8
  %wide.load.31 = load <2 x i64>, ptr %i.hk, align 16
  %wide.load29.31 = load <2 x i64>, ptr %i.hl, align 16
  %i.nv = getelementptr i8, ptr %i.lh, i64 992
  %i.nw = getelementptr i8, ptr %i.lh, i64 1008
  store <2 x i64> %wide.load.31, ptr %i.nv, align 8
  store <2 x i64> %wide.load29.31, ptr %i.nw, align 8
  br label %load_block.exit17.i

scalar.ph:                                        ; preds = %load_block.exit.i, %scalar.ph
  %indvars.iv.i14.i = phi i64 [ %indvars.iv.next.i15.i.3, %scalar.ph ], [ 0, %load_block.exit.i ] ; 6 uses
  %i.nx = shl nuw nsw i64 %indvars.iv.i14.i, 3
  %i.ny = getelementptr i8, ptr %i.a, i64 %i.nx
  %i.nz = load i64, ptr %i.ny, align 16
  %i.oa = getelementptr [8 x i8], ptr %i.lh, i64 %indvars.iv.i14.i
  store i64 %i.nz, ptr %i.oa, align 8
  %indvars.iv.next.i15.i = or disjoint i64 %indvars.iv.i14.i, 1 ; 2 uses
  %i.ob = shl nuw nsw i64 %indvars.iv.next.i15.i, 3
  %i.oc = getelementptr i8, ptr %i.a, i64 %i.ob
  %i.od = load i64, ptr %i.oc, align 8
  %i.oe = getelementptr [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i15.i
  store i64 %i.od, ptr %i.oe, align 8
  %indvars.iv.next.i15.i.1 = or disjoint i64 %indvars.iv.i14.i, 2 ; 2 uses
  %i.of = shl nuw nsw i64 %indvars.iv.next.i15.i.1, 3
  %i.og = getelementptr i8, ptr %i.a, i64 %i.of
  %i.oh = load i64, ptr %i.og, align 16
  %i.oi = getelementptr [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i15.i.1
  store i64 %i.oh, ptr %i.oi, align 8
  %indvars.iv.next.i15.i.2 = or disjoint i64 %indvars.iv.i14.i, 3 ; 2 uses
  %i.oj = shl nuw nsw i64 %indvars.iv.next.i15.i.2, 3
  %i.ok = getelementptr i8, ptr %i.a, i64 %i.oj
  %i.ol = load i64, ptr %i.ok, align 8
  %i.om = getelementptr [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i15.i.2
  store i64 %i.ol, ptr %i.om, align 8
  %indvars.iv.next.i15.i.3 = add nuw nsw i64 %indvars.iv.i14.i, 4 ; 2 uses
  %exitcond.not.i16.i.3 = icmp eq i64 %indvars.iv.next.i15.i.3, 128
  br i1 %exitcond.not.i16.i.3, label %load_block.exit17.i, label %scalar.ph, !llvm.loop !17

load_block.exit17.i:                              ; preds = %scalar.ph, %vector.body
  %4 = add nuw i32 %.018.i, 1                     ; 2 uses
  %i.on = load i32, ptr %i.cn, align 4
  %i.oo = icmp ult i32 %4, %i.on
  br i1 %i.oo, label %vector.memcheck33, label %argon2_fill_first_blocks.exit, !llvm.loop !18

argon2_fill_first_blocks.exit:                    ; preds = %load_block.exit17.i, %argon2_initial_hash.exit
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 1024) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @sodium_memzero(ptr noundef nonnull %i.d, i64 noundef 72) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.a, %argon2_fill_first_blocks.exit, %bb.g
  %.0 = phi i32 [ 0, %argon2_fill_first_blocks.exit ], [ -25, %bb.a ], [ -22, %bb.g ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @_crypto_pwhash_argon2_pick_best_implementation() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @sodium_runtime_has_avx512f() #9
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %argon2_pick_best_implementation.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @sodium_runtime_has_avx2() #9
  %.not1.i = icmp eq i32 %i.b, 0
  br i1 %.not1.i, label %bb.c, label %argon2_pick_best_implementation.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @sodium_runtime_has_ssse3() #9
  %.not2.i = icmp eq i32 %i.c, 0
  %argon2_fill_segment_ref.argon2_fill_segment_ssse3.i = select i1 %.not2.i, ptr @argon2_fill_segment_ref, ptr @argon2_fill_segment_ssse3
  br label %argon2_pick_best_implementation.exit

argon2_pick_best_implementation.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %argon2_fill_segment_ref.sink.i = phi ptr [ @argon2_fill_segment_avx2, %bb.b ], [ %argon2_fill_segment_ref.argon2_fill_segment_ssse3.i, %bb.c ], [ @argon2_fill_segment_avx512f, %bb.a ]
  store ptr %argon2_fill_segment_ref.sink.i, ptr @fill_segment, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @argon2_fill_segment_ref(ptr noundef, i64, i64) #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @crypto_generichash_blake2b_init(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_generichash_blake2b_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_generichash_blake2b_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare extern_weak i32 @sodium_runtime_has_avx512f() local_unnamed_addr #2

declare void @argon2_fill_segment_avx512f(ptr noundef, i64, i64) #2

declare extern_weak i32 @sodium_runtime_has_avx2() local_unnamed_addr #2

declare void @argon2_fill_segment_avx2(ptr noundef, i64, i64) #2

declare extern_weak i32 @sodium_runtime_has_ssse3() local_unnamed_addr #2

declare void @argon2_fill_segment_ssse3(ptr noundef, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.isvectorized", i32 1}
!6 = distinct !{!6, !4, !5, !12}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, i1 true, !"memcpy.inline"}
!9 = distinct !{!9, !8, !"memcpy.inline: argument 1"}
!10 = distinct !{!10, !8, !"memcpy.inline: argument 0"}
!11 = distinct !{!11, !4}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!10, !9}
!14 = distinct !{!14, !4}
!15 = !{ptr @argon2_fill_segment_ref, ptr @argon2_fill_segment_avx512f, ptr @argon2_fill_segment_avx2, ptr @argon2_fill_segment_ssse3}
!16 = distinct !{!16, !4, !5}
!17 = distinct !{!17, !4, !5}
!18 = distinct !{!18, !4}
end_hunk_0
