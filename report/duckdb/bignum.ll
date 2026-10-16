Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/bignum?download=true
inline.NumInlined: 162
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@mbedtls_mpi_gcd:bb.a
  %i.dd = icmp samesign ugt i64 %i.dc, 10000
  br i1 %i.dd, label %mbedtls_mpi_shift_l.exit.threadthread-pre-split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = icmp samesign ugt i64 %i.dc, %i.ct
  br i1 %i.de, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.df = call noalias ptr @calloc(i64 noundef %i.dc, i64 noundef 8) #14 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %mbedtls_mpi_shift_l.exit.threadthread-pre-split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i.i59 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i59, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = shl nuw nsw i64 %i.ct, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.df, ptr nonnull align 8 %i.cs, i64 %i.dh, i1 false)
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.cs, i64 noundef %i.dh)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.di = trunc nuw nsw i64 %i.dc to i16
  store i16 %i.di, ptr %i.d, align 2, !tbaa !19
  store ptr %i.df, ptr %4, align 8, !tbaa !23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj, %mbedtls_mpi_cmp_int.exit.thread
  %i.dj = phi ptr [ %i.cs, %bb.aj ], [ %i.df, %bb.an ], [ %i.cs, %mbedtls_mpi_cmp_int.exit.thread ]
  %.pre-phi.i = phi i64 [ %i.ct, %bb.aj ], [ %i.dc, %bb.an ], [ %i.ct, %mbedtls_mpi_cmp_int.exit.thread ]
  call void @_Z24mbedtls_mpi_core_shift_lPmmm(ptr noundef %i.dj, i64 noundef %.pre-phi.i, i64 noundef %spec.select)
  br label %mbedtls_mpi_shift_l.exit.threadthread-pre-split.sink.split

mbedtls_mpi_shift_l.exit.threadthread-pre-split.sink.split: ; preds = %mbedtls_mpi_get_bit.exit, %mbedtls_mpi_lsb.exit, %bb.ao
  %.sink = phi ptr [ %4, %bb.ao ], [ %1, %mbedtls_mpi_lsb.exit ], [ %1, %mbedtls_mpi_get_bit.exit ]
  %i.dk = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef %.sink)
  br label %mbedtls_mpi_shift_l.exit.threadthread-pre-split

mbedtls_mpi_shift_l.exit.threadthread-pre-split:  ; preds = %mbedtls_mpi_cmp_mpi.exit.thread74, %mbedtls_mpi_shift_l.exit.threadthread-pre-split.sink.split, %bb.a, %bb.b, %bb.ak, %bb.ai
  %.010.ph = phi i32 [ %i.e, %bb.a ], [ -16, %bb.ai ], [ -16, %bb.ak ], [ %i.f, %bb.b ], [ %i.dk, %mbedtls_mpi_shift_l.exit.threadthread-pre-split.sink.split ], [ %i.ck, %mbedtls_mpi_cmp_mpi.exit.thread74 ]
  %.pr138 = load ptr, ptr %3, align 8, !tbaa !23
  br label %mbedtls_mpi_shift_l.exit.thread

mbedtls_mpi_shift_l.exit.thread:                  ; preds = %mbedtls_mpi_cmp_mpi.exit.thread, %mbedtls_mpi_shift_l.exit.threadthread-pre-split
  %i.dl = phi ptr [ %.pr138, %mbedtls_mpi_shift_l.exit.threadthread-pre-split ], [ %.pre, %mbedtls_mpi_cmp_mpi.exit.thread ] ; 2 uses
  %.010 = phi i32 [ %.010.ph, %mbedtls_mpi_shift_l.exit.threadthread-pre-split ], [ %i.ch, %mbedtls_mpi_cmp_mpi.exit.thread ]
  %.not.i60 = icmp eq ptr %i.dl, null
  br i1 %.not.i60, label %mbedtls_mpi_free.exit, label %bb.ap

bb.ap:                                            ; preds = %mbedtls_mpi_shift_l.exit.thread
  %i.dm = load i16, ptr %i.b, align 2, !tbaa !19
  %i.dn = zext i16 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.dl, i64 noundef %i.do)
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_shift_l.exit.thread, %bb.ap
  %i.dp = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i61 = icmp eq ptr %i.dp, null
  br i1 %.not.i61, label %mbedtls_mpi_free.exit62, label %bb.aq

bb.aq:                                            ; preds = %mbedtls_mpi_free.exit
  %i.dq = load i16, ptr %i.d, align 2, !tbaa !19
  %i.dr = zext i16 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.dp, i64 noundef %i.ds)
  br label %mbedtls_mpi_free.exit62

mbedtls_mpi_free.exit62:                          ; preds = %mbedtls_mpi_free.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @mbedtls_mpi_fill_random(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, 3
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = zext i1 %i.c to i64
  %i.e = add nuw nsw i64 %i.a, %i.d               ; 5 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !19
  %i.k = zext i16 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.h, i64 noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.m, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.n, align 2, !tbaa !19
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !19
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  %i.r = icmp eq i64 %i.e, %i.q
  %i.s = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !20
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %.not.i11.i = icmp eq ptr %i.s, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = shl nuw nsw i64 %i.q, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.s, i64 noundef %i.v)
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.w, align 8, !tbaa !20
  store i16 0, ptr %i.o, align 2, !tbaa !19
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.x = icmp samesign ugt i64 %i.e, 10000
  br i1 %i.x, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.j

bb.j:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.y = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.e, i64 noundef 8) #14 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = trunc nuw nsw i64 %i.e to i16
  store i16 %i.aa, ptr %i.o, align 2, !tbaa !19
  store ptr %i.y, ptr %0, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %i.ab = load ptr, ptr %0, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !19
  %i.ae = zext i16 %i.ad to i64
  %i.af = tail call noundef i32 @_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_(ptr noundef %i.ab, i64 noundef %i.ae, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  br label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit

_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit: ; preds = %bb.b, %bb.e, %bb.j, %mbedtls_mpi_free.exit12.i, %bb.l
  %.011 = phi i32 [ -16, %bb.j ], [ %i.af, %bb.l ], [ -16, %mbedtls_mpi_free.exit12.i ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.011
}

declare noundef i32 @_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @mbedtls_mpi_random(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !19   ; 6 uses
  %.not44.i.i = icmp eq i16 %i.c, 0               ; 2 uses
  br i1 %.not44.i.i, label %.lr.ph51.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = zext i16 %i.c to i64
  %i.e = load ptr, ptr %2, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %.03545.i.i
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %.not39.i.i = icmp eq i64 %i.h, 0
  br i1 %.not39.i.i, label %bb.d, label %.lr.ph51.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.lr.ph51.i.i, label %bb.c, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %bb.d, %bb.c, %bb.b
  %.035.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %.03545.i.i, %bb.c ], [ 0, %bb.d ] ; 4 uses
  %.not41.i.i = icmp ne i64 %1, 0
  %spec.select.i = zext i1 %.not41.i.i to i64     ; 3 uses
  %i.j = or i64 %.035.lcssa.i.i, %spec.select.i
  %or.cond.i.i = icmp eq i64 %i.j, 0
  br i1 %or.cond.i.i, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph51.i.i
  %i.k = icmp ugt i64 %.035.lcssa.i.i, %spec.select.i
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !20
  %i.n = sext i16 %i.m to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.g:                                             ; preds = %bb.e
  %i.o = icmp samesign ult i64 %.035.lcssa.i.i, %spec.select.i
  br i1 %i.o, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i16, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %or.cond = icmp slt i16 %i.q, 0
  %5 = icmp eq i64 %.035.lcssa.i.i, 0
  %or.cond33 = or i1 %or.cond, %5
  br i1 %or.cond33, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %2, align 8, !tbaa !23
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = icmp ugt i64 %i.s, %1
  br i1 %i.t, label %bb.j, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit

bb.j:                                             ; preds = %bb.i
  %i.u = zext nneg i16 %i.q to i32
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.f, %bb.j
  %.036.i.i = phi i32 [ %i.u, %bb.j ], [ %i.n, %bb.f ]
  %i.v = icmp slt i32 %.036.i.i, 1
  br i1 %i.v, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %mbedtls_mpi_cmp_int.exit.thread17

mbedtls_mpi_cmp_int.exit.thread17:                ; preds = %mbedtls_mpi_cmp_int.exit
  %i.w = zext i16 %i.c to i64                     ; 2 uses
  br i1 %.not44.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %mbedtls_mpi_cmp_int.exit.thread17
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !23  ; 2 uses
  %.not.i.i15 = icmp eq ptr %.pre23, null
  br i1 %.not.i.i15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.y = load i16, ptr %i.x, align 2, !tbaa !19
  %i.z = zext i16 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %.pre23, i64 noundef %i.aa)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.ab, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ac, align 2, !tbaa !19
  store ptr null, ptr %0, align 8, !tbaa !23
  br label %bb.t

bb.n:                                             ; preds = %mbedtls_mpi_cmp_int.exit.thread17
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !19 ; 2 uses
  %i.af = zext i16 %i.ae to i64
  %i.ag = icmp eq i16 %i.c, %i.ae
  %i.ah = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.ai, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.aj, align 8, !tbaa !20
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %.not.i11.i = icmp eq ptr %i.ah, null
  br i1 %.not.i11.i, label %mbedtls_mpi_free.exit12.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = shl nuw nsw i64 %i.af, 3
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ah, i64 noundef %i.ak)
  br label %mbedtls_mpi_free.exit12.i

mbedtls_mpi_free.exit12.i:                        ; preds = %bb.q, %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 1, ptr %i.al, align 8, !tbaa !20
  store i16 0, ptr %i.ad, align 2, !tbaa !19
  store ptr null, ptr %0, align 8, !tbaa !23
  %i.am = icmp ugt i16 %i.c, 10000
  br i1 %i.am, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.r

bb.r:                                             ; preds = %mbedtls_mpi_free.exit12.i
  %i.an = tail call noalias ptr @calloc(i64 noundef range(i64 0, 2305843009213693953) %i.w, i64 noundef 8) #14 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i16 %i.c, ptr %i.ad, align 2, !tbaa !19
  store ptr %i.an, ptr %0, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.o, %bb.s
  %i.ap = phi ptr [ null, %bb.m ], [ %.pre, %bb.o ], [ %i.an, %bb.s ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !19
  %i.at = zext i16 %i.as to i64
  %i.au = tail call noundef i32 @_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_(ptr noundef %i.ap, i64 noundef %1, ptr noundef %i.aq, i64 noundef %i.at, ptr noundef %3, ptr noundef %4)
  br label %_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit

_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim.exit: ; preds = %bb.i, %bb.g, %bb.h, %.lr.ph51.i.i, %bb.r, %mbedtls_mpi_free.exit12.i, %bb.t, %mbedtls_mpi_cmp_int.exit, %bb.a
  %.1 = phi i32 [ -4, %mbedtls_mpi_cmp_int.exit ], [ -4, %bb.a ], [ %i.au, %bb.t ], [ -16, %bb.r ], [ -16, %mbedtls_mpi_free.exit12.i ], [ -4, %bb.h ], [ -4, %.lr.ph51.i.i ], [ -4, %bb.g ], [ -4, %bb.i ]
  ret i32 %.1
}

declare noundef i32 @_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden range(i32 -16, 1) i32 @mbedtls_mpi_inv_mod(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mbedtls_mpi, align 8        ; 8 uses
  %4 = alloca %struct.mbedtls_mpi, align 8        ; 10 uses
  %5 = alloca %struct.mbedtls_mpi, align 8        ; 14 uses
  %6 = alloca %struct.mbedtls_mpi, align 8        ; 14 uses
  %7 = alloca %struct.mbedtls_mpi, align 8        ; 14 uses
  %8 = alloca %struct.mbedtls_mpi, align 8        ; 9 uses
  %9 = alloca %struct.mbedtls_mpi, align 8        ; 12 uses
  %10 = alloca %struct.mbedtls_mpi, align 8       ; 21 uses
  %11 = alloca %struct.mbedtls_mpi, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !19   ; 2 uses
  %.not44.i.i = icmp eq i16 %i.b, 0
  br i1 %.not44.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = zext i16 %i.b to i64
  %i.d = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.03545.i.i = phi i64 [ %i.c, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %.03545.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %.not39.i.i = icmp eq i64 %i.g, 0
  br i1 %.not39.i.i, label %bb.c, label %.lr.ph51.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i64 %.03545.i.i, -1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.b, !llvm.loop !1

.lr.ph51.i.i:                                     ; preds = %bb.b
  %i.i = icmp ugt i64 %.03545.i.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph51.i.i
  %i.l = sext i16 %i.k to i32
  br label %mbedtls_mpi_cmp_int.exit

bb.e:                                             ; preds = %.lr.ph51.i.i
  %or.cond = icmp slt i16 %i.k, 0
  br i1 %or.cond, label %mbedtls_mpi_cmp_int.exit.thread, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.e
  %i.m = load i64, ptr %i.d, align 8, !tbaa !22
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %mbedtls_mpi_cmp_int.exit.thread

bb.f:                                             ; preds = %.preheader.i.i.preheader
  %i.o = zext nneg i16 %i.k to i32
  br label %mbedtls_mpi_cmp_int.exit

mbedtls_mpi_cmp_int.exit:                         ; preds = %bb.d, %bb.f
  %.036.i.i = phi i32 [ %i.o, %bb.f ], [ %i.l, %bb.d ]
  %i.p = icmp slt i32 %.036.i.i, 1
  br i1 %i.p, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.g

bb.g:                                             ; preds = %mbedtls_mpi_cmp_int.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 1, ptr %i.q, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.r, align 2, !tbaa !19
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 1, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 3 uses
  store i16 0, ptr %i.t, align 2, !tbaa !19
  store ptr null, ptr %5, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 1, ptr %i.u, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 3 uses
  store i16 0, ptr %i.v, align 2, !tbaa !19
  store ptr null, ptr %6, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 1, ptr %i.w, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 3 uses
  store i16 0, ptr %i.x, align 2, !tbaa !19
  store ptr null, ptr %7, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 1, ptr %i.y, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  store i16 0, ptr %i.z, align 2, !tbaa !19
  store ptr null, ptr %3, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 1, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 10 ; 2 uses
  store i16 0, ptr %i.ab, align 2, !tbaa !19
  store ptr null, ptr %8, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i16 1, ptr %i.ac, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 10 ; 3 uses
  store i16 0, ptr %i.ad, align 2, !tbaa !19
  store ptr null, ptr %9, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i16 1, ptr %i.ae, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 10 ; 3 uses
  store i16 0, ptr %i.af, align 2, !tbaa !19
  store ptr null, ptr %10, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i16 1, ptr %i.ag, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 10 ; 3 uses
  store i16 0, ptr %i.ah, align 2, !tbaa !19
  store ptr null, ptr %11, align 8, !tbaa !23
  %i.ai = call i32 @mbedtls_mpi_gcd(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.h, label %mbedtls_mpi_cmp_int.exit77.thread

bb.h:                                             ; preds = %bb.g
  %i.aj = load i16, ptr %i.z, align 2, !tbaa !19  ; 2 uses
  %.not44.i.i66 = icmp eq i16 %i.aj, 0
  br i1 %.not44.i.i66, label %mbedtls_mpi_cmp_int.exit77.thread, label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %bb.h
  %i.ak = zext i16 %i.aj to i64
  %i.al = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i67
  %.03545.i.i68 = phi i64 [ %i.ak, %.lr.ph.i.i67 ], [ %i.ap, %bb.j ] ; 3 uses
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %.03545.i.i68
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !22
  %.not39.i.i69 = icmp eq i64 %i.ao, 0
  br i1 %.not39.i.i69, label %bb.j, label %.lr.ph51.i.i70

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i64 %.03545.i.i68, -1           ; 2 uses
  %.not.i.i76 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i76, label %mbedtls_mpi_cmp_int.exit77.thread, label %bb.i, !llvm.loop !1

.lr.ph51.i.i70:                                   ; preds = %bb.i
  %i.aq = icmp ugt i64 %.03545.i.i68, 1
  %i.ar = load i16, ptr %i.y, align 8, !tbaa !20  ; 4 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph51.i.i70
  %i.as = sext i16 %i.ar to i32
  br label %mbedtls_mpi_cmp_int.exit77

bb.l:                                             ; preds = %.lr.ph51.i.i70
  %or.cond118 = icmp slt i16 %i.ar, 0
  br i1 %or.cond118, label %mbedtls_mpi_cmp_int.exit77.thread, label %.preheader.i.i73.preheader

.preheader.i.i73.preheader:                       ; preds = %bb.l
  %i.at = load i64, ptr %i.al, align 8, !tbaa !22 ; 2 uses
  %i.au = icmp ugt i64 %i.at, 1
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.i.i73.preheader
  %i.av = zext nneg i16 %i.ar to i32
  br label %mbedtls_mpi_cmp_int.exit77

bb.n:                                             ; preds = %.preheader.i.i73.preheader
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %bb.o, label %mbedtls_mpi_cmp_int.exit77.thread115

bb.o:                                             ; preds = %bb.n
  %i.ax = zext nneg i16 %i.ar to i32
  %i.ay = sub nsw i32 0, %i.ax
  br label %mbedtls_mpi_cmp_int.exit77

mbedtls_mpi_cmp_int.exit77:                       ; preds = %bb.k, %bb.m, %bb.o
  %.036.i.i75 = phi i32 [ %i.ay, %bb.o ], [ %i.as, %bb.k ], [ %i.av, %bb.m ]
  %.not40 = icmp eq i32 %.036.i.i75, 0
  br i1 %.not40, label %mbedtls_mpi_cmp_int.exit77.thread115, label %mbedtls_mpi_cmp_int.exit77.thread

mbedtls_mpi_cmp_int.exit77.thread115:             ; preds = %bb.n, %mbedtls_mpi_cmp_int.exit77
  %i.az = call i32 @mbedtls_mpi_mod_mpi(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %.not41 = icmp eq i32 %i.az, 0
  br i1 %.not41, label %bb.p, label %mbedtls_mpi_cmp_int.exit77.thread

bb.p:                                             ; preds = %mbedtls_mpi_cmp_int.exit77.thread115
  %i.ba = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %5, ptr noundef nonnull %4) ; 2 uses
  %.not42 = icmp eq i32 %i.ba, 0
  br i1 %.not42, label %bb.q, label %mbedtls_mpi_cmp_int.exit77.thread

bb.q:                                             ; preds = %bb.p
  %i.bb = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %8, ptr noundef nonnull %2) ; 2 uses
  %.not43 = icmp eq i32 %i.bb, 0
  br i1 %.not43, label %bb.r, label %mbedtls_mpi_cmp_int.exit77.thread

bb.r:                                             ; preds = %bb.q
  %i.bc = call i32 @mbedtls_mpi_copy(ptr noundef nonnull %9, ptr noundef nonnull %2) ; 2 uses
  %.not44 = icmp eq i32 %i.bc, 0
  br i1 %.not44, label %bb.s, label %mbedtls_mpi_cmp_int.exit77.thread

bb.s:                                             ; preds = %bb.r
  %i.bd = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %6, i64 noundef 1) ; 2 uses
  %.not45 = icmp eq i32 %i.bd, 0
  br i1 %.not45, label %bb.t, label %mbedtls_mpi_cmp_int.exit77.thread

bb.t:                                             ; preds = %bb.s
  %i.be = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %7, i64 noundef 0) ; 2 uses
  %.not46 = icmp eq i32 %i.be, 0
  br i1 %.not46, label %bb.u, label %mbedtls_mpi_cmp_int.exit77.thread

bb.u:                                             ; preds = %bb.t
  %i.bf = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %10, i64 noundef 0) ; 2 uses
  %.not47 = icmp eq i32 %i.bf, 0
  br i1 %.not47, label %bb.v, label %mbedtls_mpi_cmp_int.exit77.thread

bb.v:                                             ; preds = %bb.u
  %i.bg = call i32 @mbedtls_mpi_lset(ptr noundef nonnull %11, i64 noundef 1) ; 2 uses
  %.not48 = icmp eq i32 %i.bg, 0
  br i1 %.not48, label %.preheader125.preheader, label %mbedtls_mpi_cmp_int.exit77.thread

.preheader125.preheader:                          ; preds = %bb.v
  %.pre147 = load ptr, ptr %5, align 8, !tbaa !23
  br label %.preheader125

.preheader125:                                    ; preds = %.preheader125.preheader, %bb.as
  %i.bh = phi ptr [ %.pre147, %.preheader125.preheader ], [ %i.dj, %bb.as ] ; 4 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !22
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %.preheader121

.lr.ph:                                           ; preds = %.preheader125
  %i.bl = load i16, ptr %i.t, align 2, !tbaa !19  ; 2 uses
  %.not.i = icmp eq i16 %i.bl, 0
  %i.bm = zext i16 %i.bl to i64
  br label %bb.w

.preheader121:                                    ; preds = %mbedtls_mpi_shift_r.exit81.a, %.preheader125
  %i.bn = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !22
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph133, label %._crit_edge

.lr.ph133:                                        ; preds = %.preheader121
  %i.br = load i16, ptr %i.ad, align 2, !tbaa !19 ; 2 uses
  %.not.i82.a = icmp eq i16 %i.br, 0
  %i.bs = zext i16 %i.br to i64
  br label %bb.ae

bb.w:                                             ; preds = %.lr.ph, %mbedtls_mpi_shift_r.exit81.a
  br i1 %.not.i, label %mbedtls_mpi_shift_r.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef nonnull %i.bh, i64 noundef %i.bm, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit

mbedtls_mpi_shift_r.exit:                         ; preds = %bb.w, %bb.x
  %i.bt = load ptr, ptr %6, align 8, !tbaa !23
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !22
  %i.bv = and i64 %i.bu, 1
  %.not62 = icmp eq i64 %i.bv, 0
  br i1 %.not62, label %bb.y, label %bb.z

bb.y:                                             ; preds = %mbedtls_mpi_shift_r.exit
  %i.bw = load ptr, ptr %7, align 8, !tbaa !23
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !22
  %i.by = and i64 %i.bx, 1
  %.not63 = icmp eq i64 %i.by, 0
  br i1 %.not63, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %mbedtls_mpi_shift_r.exit, %bb.y
  %i.bz = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %6, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %8, i32 noundef 1) ; 2 uses
  %.not64 = icmp eq i32 %i.bz, 0
  br i1 %.not64, label %bb.aa, label %mbedtls_mpi_cmp_int.exit77.thread

bb.aa:                                            ; preds = %bb.z
  %i.ca = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %7, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %4, i32 noundef -1) ; 2 uses
  %.not65 = icmp eq i32 %i.ca, 0
  br i1 %.not65, label %bb.ab, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %i.cb = load i16, ptr %i.v, align 2, !tbaa !19  ; 2 uses
  %.not.i78.a = icmp eq i16 %i.cb, 0
  br i1 %.not.i78.a, label %mbedtls_mpi_shift_r.exit79.a, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %6, align 8, !tbaa !23
  %i.cd = zext i16 %i.cb to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.cc, i64 noundef %i.cd, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit79.a

mbedtls_mpi_shift_r.exit79.a:                     ; preds = %bb.ab, %bb.ac
  %i.ce = load i16, ptr %i.x, align 2, !tbaa !19  ; 2 uses
  %.not.i80 = icmp eq i16 %i.ce, 0
  br i1 %.not.i80, label %mbedtls_mpi_shift_r.exit81.a, label %bb.ad

bb.ad:                                            ; preds = %mbedtls_mpi_shift_r.exit79.a
  %i.cf = load ptr, ptr %7, align 8, !tbaa !23
  %i.cg = zext i16 %i.ce to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.cf, i64 noundef %i.cg, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit81.a

mbedtls_mpi_shift_r.exit81.a:                     ; preds = %mbedtls_mpi_shift_r.exit79.a, %bb.ad
  %i.ch = load i64, ptr %i.bh, align 8, !tbaa !22
  %i.ci = and i64 %i.ch, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %.preheader121

bb.ae:                                            ; preds = %.lr.ph133, %mbedtls_mpi_shift_r.exit87
  br i1 %.not.i82.a, label %mbedtls_mpi_shift_r.exit83.a, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef nonnull %i.bn, i64 noundef %i.bs, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit83.a

mbedtls_mpi_shift_r.exit83.a:                     ; preds = %bb.ae, %bb.af
  %i.ck = load ptr, ptr %10, align 8, !tbaa !23
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !22
  %i.cm = and i64 %i.cl, 1
  %.not58 = icmp eq i64 %i.cm, 0
  br i1 %.not58, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %mbedtls_mpi_shift_r.exit83.a
  %i.cn = load ptr, ptr %11, align 8, !tbaa !23
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !22
  %i.cp = and i64 %i.co, 1
  %.not59 = icmp eq i64 %i.cp, 0
  br i1 %.not59, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %mbedtls_mpi_shift_r.exit83.a, %bb.ag
  %i.cq = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %8, i32 noundef 1) ; 2 uses
  %.not60 = icmp eq i32 %i.cq, 0
  br i1 %.not60, label %bb.ai, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cr = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %11, ptr noundef nonnull readonly %11, ptr noundef nonnull readonly %4, i32 noundef -1) ; 2 uses
  %.not61 = icmp eq i32 %i.cr, 0
  br i1 %.not61, label %bb.aj, label %mbedtls_mpi_cmp_int.exit77.thread

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %i.cs = load i16, ptr %i.af, align 2, !tbaa !19 ; 2 uses
  %.not.i84.a = icmp eq i16 %i.cs, 0
  br i1 %.not.i84.a, label %mbedtls_mpi_shift_r.exit85.a, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = load ptr, ptr %10, align 8, !tbaa !23
  %i.cu = zext i16 %i.cs to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.ct, i64 noundef %i.cu, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit85.a

mbedtls_mpi_shift_r.exit85.a:                     ; preds = %bb.aj, %bb.ak
  %i.cv = load i16, ptr %i.ah, align 2, !tbaa !19 ; 2 uses
  %.not.i86.a = icmp eq i16 %i.cv, 0
  br i1 %.not.i86.a, label %mbedtls_mpi_shift_r.exit87, label %bb.al

bb.al:                                            ; preds = %mbedtls_mpi_shift_r.exit85.a
  %i.cw = load ptr, ptr %11, align 8, !tbaa !23
  %i.cx = zext i16 %i.cv to i64
  call void @_Z24mbedtls_mpi_core_shift_rPmmm(ptr noundef %i.cw, i64 noundef %i.cx, i64 noundef 1)
  br label %mbedtls_mpi_shift_r.exit87

mbedtls_mpi_shift_r.exit87:                       ; preds = %mbedtls_mpi_shift_r.exit85.a, %bb.al
  %i.cy = load i64, ptr %i.bn, align 8, !tbaa !22
  %i.cz = and i64 %i.cy, 1
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.ae, label %._crit_edge

._crit_edge:                                      ; preds = %mbedtls_mpi_shift_r.exit87, %.preheader121
  %i.db = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %5, ptr noundef nonnull %9)
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %._crit_edge
  %i.dd = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %5, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %9, i32 noundef -1) ; 2 uses
  %.not52 = icmp eq i32 %i.dd, 0
  %.pre = load ptr, ptr %5, align 8, !tbaa !23
  br i1 %.not52, label %bb.an, label %mbedtls_mpi_cmp_int.exit77.thread

bb.an:                                            ; preds = %bb.am
  %i.de = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %6, ptr noundef nonnull readonly %6, ptr noundef nonnull readonly %10, i32 noundef -1) ; 2 uses
  %.not53 = icmp eq i32 %i.de, 0
  br i1 %.not53, label %bb.ao, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ao:                                            ; preds = %bb.an
  %i.df = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %7, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly %11, i32 noundef -1) ; 2 uses
  %.not54 = icmp eq i32 %i.df, 0
  br i1 %.not54, label %bb.as, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ap:                                            ; preds = %._crit_edge
  %i.dg = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %9, ptr noundef nonnull readonly %9, ptr noundef nonnull readonly %5, i32 noundef -1) ; 2 uses
  %.not49 = icmp eq i32 %i.dg, 0
  br i1 %.not49, label %bb.aq, label %mbedtls_mpi_cmp_int.exit77.thread

bb.aq:                                            ; preds = %bb.ap
  %i.dh = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %6, i32 noundef -1) ; 2 uses
  %.not50 = icmp eq i32 %i.dh, 0
  br i1 %.not50, label %bb.ar, label %mbedtls_mpi_cmp_int.exit77.thread

bb.ar:                                            ; preds = %bb.aq
  %i.di = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %11, ptr noundef nonnull readonly %11, ptr noundef nonnull readonly %7, i32 noundef -1) ; 2 uses
  %.not51 = icmp eq i32 %i.di, 0
  br i1 %.not51, label %bb.as, label %mbedtls_mpi_cmp_int.exit77.thread

bb.as:                                            ; preds = %bb.ao, %bb.ar
  %i.dj = phi ptr [ %.pre, %bb.ao ], [ %i.bh, %bb.ar ]
  %i.dk = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %5, i64 noundef 0)
  %.not55 = icmp eq i32 %i.dk, 0
  br i1 %.not55, label %.preheader119, label %.preheader125, !llvm.loop !49

.preheader119:                                    ; preds = %bb.as, %bb.at
  %i.dl = call i32 @mbedtls_mpi_cmp_int(ptr noundef nonnull %10, i64 noundef 0)
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.at, label %.preheader

bb.at:                                            ; preds = %.preheader119
  %i.dn = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %2, i32 noundef 1) ; 2 uses
  %.not57 = icmp eq i32 %i.dn, 0
  br i1 %.not57, label %.preheader119, label %mbedtls_mpi_cmp_int.exit77.thread, !llvm.loop !50

.preheader:                                       ; preds = %.preheader119, %bb.au
  %i.do = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef nonnull %10, ptr noundef nonnull %2)
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.preheader
  %i.dq = call fastcc noundef range(i32 -16, 1) i32 @_ZL11add_sub_mpiP11mbedtls_mpiPKS_S2_i(ptr noundef nonnull %10, ptr noundef nonnull readonly %10, ptr noundef nonnull readonly %2, i32 noundef -1) ; 2 uses
  %.not56 = icmp eq i32 %i.dq, 0
  br i1 %.not56, label %.preheader, label %mbedtls_mpi_cmp_int.exit77.thread, !llvm.loop !51

bb.av:                                            ; preds = %.preheader
  %i.dr = call i32 @mbedtls_mpi_copy(ptr noundef %0, ptr noundef nonnull %10)
  br label %mbedtls_mpi_cmp_int.exit77.thread

mbedtls_mpi_cmp_int.exit77.thread:                ; preds = %bb.j, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.aa, %bb.z, %bb.ai, %bb.ah, %bb.at, %bb.au, %bb.l, %bb.h, %mbedtls_mpi_cmp_int.exit77, %bb.av, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %mbedtls_mpi_cmp_int.exit77.thread115, %bb.g
  %.0 = phi i32 [ %i.ai, %bb.g ], [ -14, %bb.h ], [ %i.az, %mbedtls_mpi_cmp_int.exit77.thread115 ], [ %i.ba, %bb.p ], [ %i.bb, %bb.q ], [ %i.bc, %bb.r ], [ %i.bd, %bb.s ], [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bg, %bb.v ], [ -14, %bb.l ], [ %i.bz, %bb.z ], [ %i.dq, %bb.au ], [ %i.di, %bb.ar ], [ -14, %mbedtls_mpi_cmp_int.exit77 ], [ %i.dr, %bb.av ], [ %i.dn, %bb.at ], [ %i.cq, %bb.ah ], [ %i.cr, %bb.ai ], [ %i.ca, %bb.aa ], [ %i.de, %bb.an ], [ %i.dd, %bb.am ], [ %i.dg, %bb.ap ], [ %i.df, %bb.ao ], [ %i.dh, %bb.aq ], [ -14, %bb.j ] ; 2 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %.not.i88 = icmp eq ptr %i.ds, null
  br i1 %.not.i88, label %mbedtls_mpi_free.exit, label %bb.aw

bb.aw:                                            ; preds = %mbedtls_mpi_cmp_int.exit77.thread
  %i.dt = load i16, ptr %i.r, align 2, !tbaa !19
  %i.du = zext i16 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ds, i64 noundef %i.dv)
  br label %mbedtls_mpi_free.exit

mbedtls_mpi_free.exit:                            ; preds = %mbedtls_mpi_cmp_int.exit77.thread, %bb.aw
  %i.dw = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i89.a = icmp eq ptr %i.dw, null
  br i1 %.not.i89.a, label %mbedtls_mpi_free.exit90.a, label %bb.ax

bb.ax:                                            ; preds = %mbedtls_mpi_free.exit
  %i.dx = load i16, ptr %i.t, align 2, !tbaa !19
  %i.dy = zext i16 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.dw, i64 noundef %i.dz)
  br label %mbedtls_mpi_free.exit90.a

mbedtls_mpi_free.exit90.a:                        ; preds = %mbedtls_mpi_free.exit, %bb.ax
  %i.ea = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %.not.i91.a = icmp eq ptr %i.ea, null
  br i1 %.not.i91.a, label %mbedtls_mpi_free.exit92.a, label %bb.ay

bb.ay:                                            ; preds = %mbedtls_mpi_free.exit90.a
  %i.eb = load i16, ptr %i.v, align 2, !tbaa !19
  %i.ec = zext i16 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ea, i64 noundef %i.ed)
  br label %mbedtls_mpi_free.exit92.a

mbedtls_mpi_free.exit92.a:                        ; preds = %mbedtls_mpi_free.exit90.a, %bb.ay
  %i.ee = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %.not.i93.a = icmp eq ptr %i.ee, null
  br i1 %.not.i93.a, label %mbedtls_mpi_free.exit94.a, label %bb.az

bb.az:                                            ; preds = %mbedtls_mpi_free.exit92.a
  %i.ef = load i16, ptr %i.x, align 2, !tbaa !19
  %i.eg = zext i16 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ee, i64 noundef %i.eh)
  br label %mbedtls_mpi_free.exit94.a

mbedtls_mpi_free.exit94.a:                        ; preds = %mbedtls_mpi_free.exit92.a, %bb.az
  %i.ei = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %.not.i95.a = icmp eq ptr %i.ei, null
  br i1 %.not.i95.a, label %mbedtls_mpi_free.exit96.a, label %bb.ba

bb.ba:                                            ; preds = %mbedtls_mpi_free.exit94.a
  %i.ej = load i16, ptr %i.z, align 2, !tbaa !19
  %i.ek = zext i16 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ei, i64 noundef %i.el)
  br label %mbedtls_mpi_free.exit96.a

mbedtls_mpi_free.exit96.a:                        ; preds = %mbedtls_mpi_free.exit94.a, %bb.ba
  %i.em = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %.not.i97.a = icmp eq ptr %i.em, null
  br i1 %.not.i97.a, label %mbedtls_mpi_free.exit98.a, label %bb.bb

bb.bb:                                            ; preds = %mbedtls_mpi_free.exit96.a
  %i.en = load i16, ptr %i.ab, align 2, !tbaa !19
  %i.eo = zext i16 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.em, i64 noundef %i.ep)
  br label %mbedtls_mpi_free.exit98.a

mbedtls_mpi_free.exit98.a:                        ; preds = %mbedtls_mpi_free.exit96.a, %bb.bb
  %i.eq = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %.not.i99.a = icmp eq ptr %i.eq, null
  br i1 %.not.i99.a, label %mbedtls_mpi_free.exit100.a, label %bb.bc

bb.bc:                                            ; preds = %mbedtls_mpi_free.exit98.a
  %i.er = load i16, ptr %i.ad, align 2, !tbaa !19
  %i.es = zext i16 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.eq, i64 noundef %i.et)
  br label %mbedtls_mpi_free.exit100.a

mbedtls_mpi_free.exit100.a:                       ; preds = %mbedtls_mpi_free.exit98.a, %bb.bc
  %i.eu = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %.not.i101.a = icmp eq ptr %i.eu, null
  br i1 %.not.i101.a, label %mbedtls_mpi_free.exit102, label %bb.bd

bb.bd:                                            ; preds = %mbedtls_mpi_free.exit100.a
  %i.ev = load i16, ptr %i.af, align 2, !tbaa !19
  %i.ew = zext i16 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.eu, i64 noundef %i.ex)
  br label %mbedtls_mpi_free.exit102

mbedtls_mpi_free.exit102:                         ; preds = %mbedtls_mpi_free.exit100.a, %bb.bd
  %i.ey = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %.not.i103 = icmp eq ptr %i.ey, null
  br i1 %.not.i103, label %mbedtls_mpi_cmp_int.exit.thread, label %bb.be

bb.be:                                            ; preds = %mbedtls_mpi_free.exit102
  %i.ez = load i16, ptr %i.ah, align 2, !tbaa !19
  %i.fa = zext i16 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 3
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.ey, i64 noundef %i.fb)
  br label %mbedtls_mpi_cmp_int.exit.thread

mbedtls_mpi_cmp_int.exit.thread:                  ; preds = %bb.c, %bb.be, %mbedtls_mpi_free.exit102, %.preheader.i.i.preheader, %bb.e, %bb.a, %mbedtls_mpi_cmp_int.exit
  %.012 = phi i32 [ -4, %.preheader.i.i.preheader ], [ -4, %mbedtls_mpi_cmp_int.exit ], [ -4, %bb.e ], [ -4, %bb.a ], [ %.0, %bb.be ], [ %.0, %mbedtls_mpi_free.exit102 ], [ -4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef i64 @_Z38mbedtls_mpi_core_exp_mod_working_limbsmm(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_Z35mbedtls_mpi_core_get_mont_r2_unsafeP11mbedtls_mpiPKS_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i64 @_Z29mbedtls_mpi_core_montmul_initPKm(ptr noundef) local_unnamed_addr #2

declare void @_Z28mbedtls_mpi_core_to_mont_repPmPKmS1_mmS1_S_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z31mbedtls_mpi_core_exp_mod_unsafePmPKmS1_mS1_mS1_S_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z24mbedtls_mpi_core_exp_modPmPKmS1_mS1_mS1_S_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z30mbedtls_mpi_core_from_mont_repPmPKmS1_mmS_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i64 @_Z30mbedtls_mpi_core_check_zero_ctPKmm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24}
!4 = distinct !{!4, !24}
!5 = distinct !{!5, !24}
!6 = distinct !{!6, !24}
!7 = distinct !{!7, !24}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !12, i64 0}
!16 = !{!"p1 long", !15, i64 0}
!17 = !{!"short", !12, i64 0}
!18 = !{!"_ZTS11mbedtls_mpi", !16, i64 0, !17, i64 8, !17, i64 10}
!19 = !{!18, !17, i64 10}
!20 = !{!18, !17, i64 8}
!21 = !{!"long", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!18, !16, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!12, !12, i64 0}
!26 = !{!15, !15, i64 0}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24, !36}
!36 = !{!"llvm.loop.peeled.count", i32 1}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = !{!16, !16, i64 0}
!46 = !{!17, !17, i64 0}
!47 = !{i64 0, i64 8, !45, i64 8, i64 2, !46, i64 10, i64 2, !46}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
end_hunk_0
