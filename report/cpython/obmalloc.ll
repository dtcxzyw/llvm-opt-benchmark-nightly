Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_mi_arena_unsafe_destroy_all:bb.a
  %i.q = getelementptr i8, ptr %i.c, i64 56
  %i.r = load i64, ptr %i.q, align 8, !tbaa !158
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.c, i64 noundef %i.r, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.p, ptr nonnull poison)
  br label %mi_arena_meta_free.exit.i

mi_arena_meta_free.exit.i:                        ; preds = %bb.e, %bb.f, %.lr.ph.i
  %.2.i = phi i64 [ %.027.i, %.lr.ph.i ], [ %.1.i, %bb.f ], [ %.1.i, %bb.e ] ; 2 uses
  %i.s = add nuw i64 %.02125.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.a
  br i1 %exitcond.not.i, label %mi_arenas_unsafe_destroy.exit, label %.lr.ph.i, !llvm.loop !494

mi_arenas_unsafe_destroy.exit:                    ; preds = %mi_arena_meta_free.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %mi_arena_meta_free.exit.i ]
  %i.t = cmpxchg ptr @mi_arena_count, i64 %i.a, i64 %.0.lcssa.i acq_rel acquire, align 64 ; 0 uses
  tail call fastcc void @mi_arenas_try_purge(i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %0)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden noundef zeroext i1 @_mi_arena_contains(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load atomic i64, ptr @mi_arena_count monotonic, align 64 ; 2 uses
  %.not2124.not = icmp eq i64 %i.a, 0
  br i1 %.not2124.not, label %.critedge23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.01725 = phi i64 [ %i.l, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr @mi_arenas, i64 %.01725
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !126
  %.not20 = icmp ugt ptr %i.e, %0
  br i1 %.not20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.d seq_cst, align 8, !tbaa !126
  %i.g = getelementptr i8, ptr %i.c, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !127
  %i.i = shl i64 %i.h, 25
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = icmp ugt ptr %i.j, %0
  br i1 %i.k, label %.critedge23, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.lr.ph
  %i.l = add nuw i64 %.01725, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.a
  br i1 %exitcond.not, label %.critedge23, label %.lr.ph, !llvm.loop !9

.critedge23:                                      ; preds = %bb.c, %.critedge, %bb.a
  %.not21.lcssa = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %bb.c ]
  ret i1 %.not21.lcssa
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @mi_manage_os_memory_ex(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.mi_memid_s, align 8         ; 8 uses
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !498
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 1, ptr %i.d, align 4, !tbaa !131, !alias.scope !498
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 %i.a, ptr %i.e, align 1, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i8 %i.c, ptr %i.f, align 2, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 %i.b, ptr %i.g, align 8, !tbaa !161
  %i.h = tail call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %3, i32 noundef %5, i1 noundef zeroext %6, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %8, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #52
  ret i1 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.mi_memid_s, align 8         ; 4 uses
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %4 to i8
  %.not = icmp eq ptr %6, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %6, align 4, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp ult i64 %1, 33554432
  br i1 %i.c, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i64 %1, 25                          ; 4 uses
  %i.e = add nuw nsw i64 %i.d, 63                 ; 2 uses
  %i.f = lshr i64 %i.e, 6                         ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !161, !range !86, !noundef !87
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = select i1 %i.i, i64 1, i64 2
  %i.k = shl nuw nsw i64 %i.f, %i.j
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 144                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  %i.n = call ptr @_mi_os_alloc(i64 noundef range(i64 144, -9223372036854775695) %i.m, ptr noundef nonnull %7, ptr nonnull poison) ; 23 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %mi_arena_add.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.n, align 8, !tbaa !138
  %i.p = getelementptr i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !162
  %i.q = getelementptr i8, ptr %i.n, i64 92
  store i8 %i.b, ptr %i.q, align 4, !tbaa !139
  %i.r = getelementptr i8, ptr %i.n, i64 56
  store i64 %i.m, ptr %i.r, align 8, !tbaa !158
  %i.s = getelementptr i8, ptr %i.n, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !162
  %i.t = getelementptr i8, ptr %i.n, i64 40
  store i64 %i.d, ptr %i.t, align 8, !tbaa !127
  %i.u = getelementptr i8, ptr %i.n, i64 48
  store i64 %i.f, ptr %i.u, align 8, !tbaa !148
  %i.v = getelementptr i8, ptr %i.n, i64 32
  store atomic ptr %0, ptr %i.v seq_cst, align 8, !tbaa !126
  %i.w = getelementptr i8, ptr %i.n, i64 88
  store i32 %3, ptr %i.w, align 8, !tbaa !140
  %i.x = getelementptr i8, ptr %i.n, i64 93
  store i8 %i.a, ptr %i.x, align 1, !tbaa !137
  %i.y = getelementptr i8, ptr %i.n, i64 104
  store atomic i64 0, ptr %i.y seq_cst, align 8, !tbaa !163
  %i.z = getelementptr i8, ptr %i.n, i64 96
  store atomic i64 0, ptr %i.z seq_cst, align 8, !tbaa !164
  %i.aa = getelementptr i8, ptr %i.n, i64 136     ; 4 uses
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %i.f
  %i.ac = getelementptr i8, ptr %i.n, i64 112
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !165
  %i.ad = getelementptr i8, ptr %i.n, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !149, !range !86, !noundef !87
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.ag = getelementptr i8, ptr %i.aa, i64 %.idx  ; 2 uses
  %i.ah = select i1 %i.af, ptr null, ptr %i.ag    ; 2 uses
  %i.ai = getelementptr i8, ptr %i.n, i64 120
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !150
  %.idx60 = mul nuw nsw i64 %i.f, 24
  %i.aj = getelementptr i8, ptr %i.aa, i64 %.idx60
  %i.ak = select i1 %i.af, ptr null, ptr %i.aj
  %i.al = getelementptr i8, ptr %i.n, i64 128
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !155
  %.not61 = icmp eq ptr %i.ah, null
  br i1 %.not61, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.n, i64 25
  %i.an = load i8, ptr %i.am, align 1, !tbaa !499, !range !86, !noundef !87
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 -1, i64 %i.ap, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aq = and i64 %i.e, 1099511627712
  %i.ar = sub nsw i64 %i.aq, %i.d                 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %_mi_bitmap_claim.exit, label %bb.i

_mi_bitmap_claim.exit:                            ; preds = %bb.h
  %i.at = lshr i64 %1, 31
  %i.au = and i64 %i.d, 63
  %i.av = icmp samesign ugt i64 %i.ar, 63
  %notmask.i.i = shl nsw i64 -1, %i.ar
  %i.aw = xor i64 %notmask.i.i, -1
  %i.ax = shl i64 %i.aw, %i.au
  %.0.i.i = select i1 %i.av, i64 -1, i64 %i.ax
  %i.ay = getelementptr [8 x i8], ptr %i.aa, i64 %i.at
  %i.az = atomicrmw or ptr %i.ay, i64 %.0.i.i acq_rel, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_mi_bitmap_claim.exit, %bb.h
  br i1 %.not, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ba = atomicrmw add ptr @mi_arena_count, i64 1 acq_rel, align 64 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 112
  br i1 %i.bb, label %bb.l, label %bb.k

.thread.i:                                        ; preds = %bb.i
  store i32 -1, ptr %6, align 4, !tbaa !54
  %i.bc = atomicrmw add ptr @mi_arena_count, i64 1 acq_rel, align 64 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 112
  br i1 %i.bd, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread.i, %bb.j
  %8 = atomicrmw add ptr @mi_arena_count, i64 -1 acq_rel, align 64 ; 0 uses
  br label %mi_arena_add.exit

bb.l:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %i.ba to i32
  %i.bf = add nuw nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.n, align 8, !tbaa !138
  %i.bg = getelementptr [8 x i8], ptr @mi_arenas, i64 %i.ba
  store atomic ptr %i.n, ptr %i.bg release, align 8
  br label %mi_arena_add.exit

bb.m:                                             ; preds = %.thread.i
  %i.bh = trunc nuw nsw i64 %i.bc to i32
  %i.bi = add nuw nsw i32 %i.bh, 1                ; 2 uses
  store i32 %i.bi, ptr %i.n, align 8, !tbaa !138
  %i.bj = getelementptr [8 x i8], ptr @mi_arenas, i64 %i.bc
  store atomic ptr %i.n, ptr %i.bj release, align 8
  store i32 %i.bi, ptr %6, align 4, !tbaa !54
  br label %mi_arena_add.exit

mi_arena_add.exit:                                ; preds = %bb.m, %bb.l, %bb.k, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.l ], [ true, %bb.m ], [ false, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %mi_arena_add.exit
  %.1 = phi i1 [ %.0, %mi_arena_add.exit ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_os_memory_ex(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = add i64 %0, 33554431
  %i.b = and i64 %i.a, -33554432                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.c = call ptr @_mi_os_alloc_aligned(i64 noundef %i.b, i64 noundef 33554432, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef nonnull %5, ptr nonnull poison) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !161, !range !86, !noundef !87
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = tail call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef nonnull %i.c, i64 noundef %i.b, i1 noundef zeroext %i.g, i32 noundef -1, i1 noundef zeroext %3, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5, ptr noundef %4)
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.c, i64 noundef %i.b, i1 noundef zeroext %1, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5, ptr nonnull poison)
  %i.i = lshr exact i64 %i.b, 10
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.7, i64 noundef %i.i)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = lshr exact i64 %i.b, 10
  %i.k = select i1 %i.g, ptr @.str.9, ptr @.str.10
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.8, i64 noundef %i.j, ptr noundef nonnull %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.1 = phi i32 [ 12, %bb.c ], [ 0, %bb.f ], [ 12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_os_free_ex(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %3, ptr nofree readnone captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !131  ; 2 uses
  %i.c = add i32 %i.b, -3
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %bb.b, label %mi_os_free_huge_os_pages.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %1, 524288
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !121
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %1, 2097152
  br i1 %i.g, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ult i64 %1, 8388608
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp ult i64 %1, 33554432
  %..i = select i1 %i.i, i64 1048576, i64 4194304
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ 262144, %bb.e ], [ 65536, %bb.d ], [ %..i, %bb.f ] ; 5 uses
  %i.j = xor i64 %.0.i, -1
  %.not.i = icmp ult i64 %1, %i.j
  br i1 %.not.i, label %bb.h, label %_mi_os_good_alloc_size.exit, !prof !96

bb.h:                                             ; preds = %bb.g
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.l = icmp samesign ult i64 %i.k, 2
  %i.m = add i64 %1, -1
  %i.n = add i64 %i.m, %.0.i                      ; 3 uses
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = sub i64 0, %.0.i
  %i.p = and i64 %i.n, %i.o
  br label %_mi_os_good_alloc_size.exit

bb.j:                                             ; preds = %bb.h
  %i.q = urem i64 %i.n, %.0.i
  %i.r = sub nuw i64 %i.n, %i.q
  br label %_mi_os_good_alloc_size.exit

_mi_os_good_alloc_size.exit:                      ; preds = %bb.g, %bb.i, %bb.j
  %.010.i = phi i64 [ %1, %bb.g ], [ %i.p, %bb.i ], [ %i.r, %bb.j ]
  %i.s = load ptr, ptr %3, align 8, !tbaa !101    ; 3 uses
  %.not = icmp eq ptr %i.s, null                  ; 2 uses
  %i.t = ptrtoint ptr %0 to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = select i1 %.not, i64 0, i64 %i.v
  %.010 = add i64 %i.w, %.010.i                   ; 15 uses
  %.0 = select i1 %.not, ptr %0, ptr %i.s         ; 5 uses
  %i.x = icmp eq i32 %i.b, 4
  br i1 %i.x, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.y = icmp ne ptr %.0, null
  %i.z = icmp ugt i64 %.010, 1073741823
  %or.cond4.i = and i1 %i.y, %i.z
  br i1 %or.cond4.i, label %.lr.ph.i, label %mi_os_free_huge_os_pages.exit

.lr.ph.i:                                         ; preds = %bb.k, %mi_os_prim_free.exit.i
  %.02.i = phi ptr [ %i.au, %mi_os_prim_free.exit.i ], [ %.0, %bb.k ] ; 4 uses
  %.081.i = phi i64 [ %i.at, %mi_os_prim_free.exit.i ], [ %.010, %bb.k ]
  %i.aa = icmp eq ptr %.02.i, null
  br i1 %i.aa, label %mi_os_prim_free.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ab = tail call i32 @munmap(ptr noundef nonnull %.02.i, i64 noundef 1073741824) #52
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %_mi_prim_free.exit.i.i, label %_mi_prim_free.exit.thread.i.i

_mi_prim_free.exit.i.i:                           ; preds = %bb.l
  %i.ad = tail call ptr @__errno_location() #60
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %_mi_prim_free.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %_mi_prim_free.exit.i.i
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.94, i32 noundef %i.ae, i32 noundef %i.ae, i64 noundef 1073741824, ptr noundef nonnull %.02.i)
  br label %_mi_prim_free.exit.thread.i.i

_mi_prim_free.exit.thread.i.i:                    ; preds = %bb.m, %_mi_prim_free.exit.i.i, %bb.l
  %5 = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 -1073741824 monotonic, align 8
  %i.af = add i64 %5, -1073741824                 ; 2 uses
  %i.ag = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %_mi_prim_free.exit.thread.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.ag, %_mi_prim_free.exit.thread.i.i ], [ %i.ak, %bb.o ] ; 2 uses
  %i.ah = icmp slt i64 %.0.i.i.i.i.i, %i.af
  br i1 %i.ah, label %bb.o, label %mi_atomic_maxi64_relaxed.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ai = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i.i.i, i64 %i.af release monotonic, align 8 ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = extractvalue { i64, i1 } %i.ai, 0
  br i1 %i.aj, label %mi_atomic_maxi64_relaxed.exit.i.i.i.i, label %bb.n, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i.i.i:            ; preds = %bb.o, %bb.n
  %i.al = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 1073741824 monotonic, align 8 ; 0 uses
  %6 = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 -1073741824 monotonic, align 8
  %i.am = add i64 %6, -1073741824                 ; 2 uses
  %i.an = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80) monotonic, align 16
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %mi_atomic_maxi64_relaxed.exit.i.i.i.i
  %.0.i.i.i16.i.i = phi i64 [ %i.an, %mi_atomic_maxi64_relaxed.exit.i.i.i.i ], [ %i.ar, %bb.q ] ; 2 uses
  %i.ao = icmp slt i64 %.0.i.i.i16.i.i, %i.am
  br i1 %i.ao, label %bb.q, label %mi_atomic_maxi64_relaxed.exit.i.i17.i.i

bb.q:                                             ; preds = %bb.p
  %i.ap = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %.0.i.i.i16.i.i, i64 %i.am release monotonic, align 8 ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  br i1 %i.aq, label %mi_atomic_maxi64_relaxed.exit.i.i17.i.i, label %bb.p, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i17.i.i:          ; preds = %bb.q, %bb.p
  %i.as = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 1073741824 monotonic, align 8 ; 0 uses
  br label %mi_os_prim_free.exit.i

mi_os_prim_free.exit.i:                           ; preds = %mi_atomic_maxi64_relaxed.exit.i.i17.i.i, %.lr.ph.i
  %i.at = add i64 %.081.i, -1073741824            ; 2 uses
  %i.au = getelementptr i8, ptr %.02.i, i64 1073741824
  %i.av = icmp ugt i64 %i.at, 1073741823
  br i1 %i.av, label %.lr.ph.i, label %mi_os_free_huge_os_pages.exit, !llvm.loop !500

bb.r:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.aw = icmp eq ptr %.0, null
  %i.ax = icmp eq i64 %.010, 0
  %or.cond.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i, label %mi_os_free_huge_os_pages.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = tail call i32 @munmap(ptr noundef nonnull %.0, i64 noundef %.010) #52
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %_mi_prim_free.exit.i, label %_mi_prim_free.exit.thread.i

_mi_prim_free.exit.i:                             ; preds = %bb.s
  %i.ba = tail call ptr @__errno_location() #60
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !54 ; 3 uses
  %.not.i12 = icmp eq i32 %i.bb, 0
  br i1 %.not.i12, label %_mi_prim_free.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %_mi_prim_free.exit.i
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.94, i32 noundef %i.bb, i32 noundef %i.bb, i64 noundef %.010, ptr noundef nonnull %.0)
  br label %_mi_prim_free.exit.thread.i

_mi_prim_free.exit.thread.i:                      ; preds = %bb.t, %_mi_prim_free.exit.i, %bb.s
  br i1 %2, label %bb.u, label %bb.z

bb.u:                                             ; preds = %_mi_prim_free.exit.thread.i
  %i.bc = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %.010 monotonic, align 8
  %i.bd = sub i64 %i.bc, %.010                    ; 2 uses
  %i.be = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.0.i.i.i.i = phi i64 [ %i.be, %bb.u ], [ %i.bi, %bb.w ] ; 2 uses
  %i.bf = icmp slt i64 %.0.i.i.i.i, %i.bd
  br i1 %i.bf, label %bb.w, label %mi_atomic_maxi64_relaxed.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.bg = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i.i, i64 %i.bd release monotonic, align 8 ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  br i1 %i.bh, label %mi_atomic_maxi64_relaxed.exit.i.i.i, label %bb.v, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i.i:              ; preds = %bb.w, %bb.v
  %i.bj = icmp ugt i64 %.010, -9223372036854775808
  br i1 %i.bj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i.i
  %i.bk = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 %.010 monotonic, align 8 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i.i
  %i.bl = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %.010 monotonic, align 8 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_mi_prim_free.exit.thread.i
  %i.bm = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 %.010 monotonic, align 8
  %i.bn = sub i64 %i.bm, %.010                    ; 2 uses
  %i.bo = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80) monotonic, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %.0.i.i.i16.i = phi i64 [ %i.bo, %bb.z ], [ %i.bs, %bb.ab ] ; 2 uses
  %i.bp = icmp slt i64 %.0.i.i.i16.i, %i.bn
  br i1 %i.bp, label %bb.ab, label %mi_atomic_maxi64_relaxed.exit.i.i17.i

bb.ab:                                            ; preds = %bb.aa
  %i.bq = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %.0.i.i.i16.i, i64 %i.bn release monotonic, align 8 ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  %i.bs = extractvalue { i64, i1 } %i.bq, 0
  br i1 %i.br, label %mi_atomic_maxi64_relaxed.exit.i.i17.i, label %bb.aa, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i17.i:            ; preds = %bb.ab, %bb.aa
  %i.bt = icmp ugt i64 %.010, -9223372036854775808
  br i1 %i.bt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %mi_atomic_maxi64_relaxed.exit.i.i17.i
  %i.bu = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.010 monotonic, align 8 ; 0 uses
  br label %mi_os_free_huge_os_pages.exit

bb.ad:                                            ; preds = %mi_atomic_maxi64_relaxed.exit.i.i17.i
  %i.bv = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 %.010 monotonic, align 8 ; 0 uses
  br label %mi_os_free_huge_os_pages.exit

mi_os_free_huge_os_pages.exit:                    ; preds = %mi_os_prim_free.exit.i, %bb.ad, %bb.ac, %bb.r, %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_verbose_message(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !133
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %mi_option_is_enabled.exit, !prof !61

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 64)), !inline_history !141
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %bb.a, %bb.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 16, !tbaa !135
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %mi_option_is_enabled.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #52
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %mi_vfprintf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.f, label %bb.e, label %mi_vfprintf.exit

bb.e:                                             ; preds = %bb.d
  %i.g = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 511, ptr noundef nonnull readonly %0, ptr noundef nonnull %1) #52 ; 0 uses
  call fastcc void @mi_recurse_exit_prim()
  %i.h = call fastcc noundef zeroext i1 @mi_recurse_enter_prim()
  br i1 %i.h, label %bb.f, label %mi_vfprintf.exit

bb.f:                                             ; preds = %bb.e
  %i.i = load atomic ptr, ptr @mi_out_arg acquire, align 8 ; 2 uses
  %i.j = load volatile ptr, ptr @mi_out_default, align 8, !tbaa !84 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = select i1 %i.k, ptr @mi_out_buf, ptr %i.j ; 2 uses
  call void %i.l(ptr noundef nonnull @.str.23, ptr noundef %i.i) #52, !inline_history !14
  call void %i.l(ptr noundef nonnull %i.a, ptr noundef %i.i) #52, !inline_history !14
  call fastcc void @mi_recurse_exit_prim()
  br label %mi_vfprintf.exit

mi_vfprintf.exit:                                 ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #52
  br label %bb.g

bb.g:                                             ; preds = %mi_option_is_enabled.exit, %mi_vfprintf.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @mi_manage_os_memory(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.mi_memid_s, align 8         ; 4 uses
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8                         ; 2 uses
  %i.c = zext i1 %4 to i8
  %i.d = icmp ult i64 %1, 33554432
  br i1 %i.d, label %mi_manage_os_memory_ex2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %1, 25                          ; 4 uses
  %i.f = add nuw nsw i64 %i.e, 63                 ; 2 uses
  %i.g = lshr i64 %i.f, 6                         ; 6 uses
  %i.h = select i1 %3, i64 1, i64 2
  %i.i = shl nuw nsw i64 %i.g, %i.h
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 144                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %i.l = call ptr @_mi_os_alloc(i64 noundef range(i64 144, -9223372036854775695) %i.k, ptr noundef nonnull %6, ptr nonnull poison) ; 24 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %mi_arena_add.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.l, align 8, !tbaa !138
  %i.n = getelementptr i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr i8, ptr %i.l, i64 24
  store i8 %i.b, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !142
  %.sroa.68.0..sroa_idx = getelementptr i8, ptr %i.l, i64 25
  store i8 %i.a, ptr %.sroa.68.0..sroa_idx, align 1, !tbaa !142
  %.sroa.79.0..sroa_idx = getelementptr i8, ptr %i.l, i64 26
  store i8 %i.c, ptr %.sroa.79.0..sroa_idx, align 2, !tbaa !142
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.l, i64 27
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %i.l, i64 28
  store i32 1, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !54
  %i.o = getelementptr i8, ptr %i.l, i64 92
  store i8 0, ptr %i.o, align 4, !tbaa !139
  %i.p = getelementptr i8, ptr %i.l, i64 56
  store i64 %i.k, ptr %i.p, align 8, !tbaa !158
  %i.q = getelementptr i8, ptr %i.l, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !162
  %i.r = getelementptr i8, ptr %i.l, i64 40
  store i64 %i.e, ptr %i.r, align 8, !tbaa !127
  %i.s = getelementptr i8, ptr %i.l, i64 48
  store i64 %i.g, ptr %i.s, align 8, !tbaa !148
  %i.t = getelementptr i8, ptr %i.l, i64 32
  store atomic ptr %0, ptr %i.t seq_cst, align 8, !tbaa !126
  %i.u = getelementptr i8, ptr %i.l, i64 88
  store i32 %5, ptr %i.u, align 8, !tbaa !140
  %i.v = getelementptr i8, ptr %i.l, i64 93
  store i8 %i.b, ptr %i.v, align 1, !tbaa !137
  %i.w = getelementptr i8, ptr %i.l, i64 104
  store atomic i64 0, ptr %i.w seq_cst, align 8, !tbaa !163
  %i.x = getelementptr i8, ptr %i.l, i64 96
  store atomic i64 0, ptr %i.x seq_cst, align 8, !tbaa !164
  %i.y = getelementptr i8, ptr %i.l, i64 136      ; 4 uses
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %i.g
  %i.aa = getelementptr i8, ptr %i.l, i64 112
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !165
  %.idx.i = shl nuw nsw i64 %i.g, 4
  %i.ab = getelementptr i8, ptr %i.y, i64 %.idx.i ; 2 uses
  %i.ac = select i1 %3, ptr null, ptr %i.ab       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.l, i64 120
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !150
  %.idx60.i = mul nuw nsw i64 %i.g, 24
  %i.ae = getelementptr i8, ptr %i.y, i64 %.idx60.i
  %i.af = select i1 %3, ptr null, ptr %i.ae
  %i.ag = getelementptr i8, ptr %i.l, i64 128
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !155
  %.not61.i = icmp ne ptr %i.ac, null
  %brmerge.not = and i1 %.not61.i, %2
  br i1 %brmerge.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 -1, i64 %i.ah, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ai = and i64 %i.f, 1099511627712
  %i.aj = sub nsw i64 %i.ai, %i.e                 ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %_mi_bitmap_claim.exit.i, label %bb.f

_mi_bitmap_claim.exit.i:                          ; preds = %bb.e
  %i.al = lshr i64 %1, 31
  %i.am = and i64 %i.e, 63
  %i.an = icmp samesign ugt i64 %i.aj, 63
  %notmask.i.i.i = shl nsw i64 -1, %i.aj
  %i.ao = xor i64 %notmask.i.i.i, -1
  %i.ap = shl i64 %i.ao, %i.am
  %.0.i.i.i = select i1 %i.an, i64 -1, i64 %i.ap
  %i.aq = getelementptr [8 x i8], ptr %i.y, i64 %i.al
  %i.ar = atomicrmw or ptr %i.aq, i64 %.0.i.i.i acq_rel, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_mi_bitmap_claim.exit.i, %bb.e
  %i.as = atomicrmw add ptr @mi_arena_count, i64 1 acq_rel, align 64 ; 3 uses
  %i.at = icmp ult i64 %i.as, 112
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %7 = atomicrmw add ptr @mi_arena_count, i64 -1 acq_rel, align 64 ; 0 uses
  br label %mi_arena_add.exit.i

bb.h:                                             ; preds = %bb.f
  %i.au = trunc nuw nsw i64 %i.as to i32
  %i.av = add nuw nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.l, align 8, !tbaa !138
  %i.aw = getelementptr [8 x i8], ptr @mi_arenas, i64 %i.as
  store atomic ptr %i.l, ptr %i.aw release, align 8
  br label %mi_arena_add.exit.i

mi_arena_add.exit.i:                              ; preds = %bb.h, %bb.g, %bb.b
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.h ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  br label %mi_manage_os_memory_ex2.exit

mi_manage_os_memory_ex2.exit:                     ; preds = %bb.a, %mi_arena_add.exit.i
  %.1.i = phi i1 [ %.0.i, %mi_arena_add.exit.i ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_os_memory(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @mi_reserve_os_memory_ex(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @mi_debug_show_arenas() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 6 uses
  %i.b = load atomic i64, ptr @mi_arena_count monotonic, align 64 ; 2 uses
  %.not18 = icmp eq i64 %i.b, 0
  br i1 %.not18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %mi_debug_show_bitmap.exit
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.z, %mi_debug_show_bitmap.exit ] ; 3 uses
  %i.d = getelementptr [8 x i8], ptr @mi_arenas, i64 %.016
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !127
  %i.h = getelementptr i8, ptr %i.e, i64 48       ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !148
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.11, i64 noundef %.016, i64 noundef %i.g, i64 noundef %i.i)
  %i.j = getelementptr i8, ptr %i.e, i64 136
  %i.k = load i64, ptr %i.h, align 8, !tbaa !148  ; 2 uses
  %.not5.i = icmp eq i64 %i.k, 0
  br i1 %.not5.i, label %mi_debug_show_bitmap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.0154.i = phi i64 [ %spec.select17.i.1, %bb.d ], [ 0, %bb.c ]
  %.0163.i = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %.0163.i
  %i.m = load atomic i64, ptr %i.l monotonic, align 8 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  store i8 0, ptr %i.c, align 16, !tbaa !101
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  %i.n = add nuw i64 %.0163.i, 1                  ; 2 uses
  %exitcond6.not.i = icmp eq i64 %i.n, %i.k
  br i1 %exitcond6.not.i, label %mi_debug_show_bitmap.exit, label %.lr.ph.i, !llvm.loop !501

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.e ] ; 5 uses
  %.11.i = phi i64 [ %.0154.i, %.lr.ph.i ], [ %spec.select17.i.1, %bb.e ]
  %i.o = shl nuw i64 1, %.02.i
  %i.p = and i64 %i.o, %i.m
  %.not.i = icmp ne i64 %i.p, 0                   ; 2 uses
  %spec.select.i = select i1 %.not.i, i8 120, i8 46
  %i.q = zext i1 %.not.i to i64
  %spec.select17.i = add i64 %.11.i, %i.q
  %i.r = sub nuw nsw i64 63, %.02.i
  %i.s = getelementptr i8, ptr %i.a, i64 %i.r
  store i8 %spec.select.i, ptr %i.s, align 1, !tbaa !101
  %i.t = shl nuw i64 2, %.02.i
  %i.u = and i64 %i.t, %i.m
  %.not.i.1 = icmp ne i64 %i.u, 0                 ; 2 uses
  %spec.select.i.1 = select i1 %.not.i.1, i8 120, i8 46
  %i.v = zext i1 %.not.i.1 to i64
  %spec.select17.i.1 = add i64 %spec.select17.i, %i.v ; 3 uses
  %i.w = sub nuw nsw i64 62, %.02.i
  %i.x = getelementptr i8, ptr %i.a, i64 %i.w
  store i8 %spec.select.i.1, ptr %i.x, align 2, !tbaa !101
  %i.y = add nuw nsw i64 %.02.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.y, 64
  br i1 %exitcond.not.i.1, label %bb.d, label %bb.e, !llvm.loop !502

mi_debug_show_bitmap.exit:                        ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i64 [ 0, %bb.c ], [ %spec.select17.i.1, %bb.d ]
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.13, i64 noundef %.015.lcssa.i)
  %i.z = add nuw i64 %.016, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.b
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !503

.critedge:                                        ; preds = %mi_debug_show_bitmap.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.mi_memid_s, align 8         ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %4, align 4, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 -1) ; 2 uses
  %i.d = icmp sgt i32 %1, -1
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = zext nneg i32 %spec.store.select to i64
  %i.f = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.f, label %_mi_os_numa_node_count.exit, !prof !61

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i64 @_mi_os_numa_node_count_get()
  br label %_mi_os_numa_node_count.exit

_mi_os_numa_node_count.exit:                      ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.g, %bb.f ], [ %i.f, %bb.e ]
  %i.h = urem i64 %i.e, %.0.i
  %i.i = trunc nuw nsw i64 %i.h to i32
  br label %bb.g

bb.g:                                             ; preds = %_mi_os_numa_node_count.exit, %bb.d
  %.019 = phi i32 [ %i.i, %_mi_os_numa_node_count.exit ], [ %spec.store.select, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  store i64 0, ptr %i.a, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  store i64 0, ptr %i.b, align 8, !tbaa !128
  %i.j = call ptr @_mi_os_alloc_huge_os_pages(i64 noundef %0, i32 noundef %.019, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %5) ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = load i64, ptr %i.b, align 8              ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.14, i64 noundef %0)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.15, i32 noundef %.019, i64 noundef %i.l, i64 noundef %0)
  %i.n = load i64, ptr %i.a, align 8, !tbaa !128  ; 2 uses
  %i.o = call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef nonnull %i.j, i64 noundef %i.n, i1 noundef zeroext true, i32 noundef %.019, i1 noundef zeroext %3, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5, ptr noundef %4)
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_mi_os_free_ex(ptr noundef nonnull %i.j, i64 noundef %i.n, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5, ptr nonnull poison)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.0 = phi i32 [ 12, %bb.h ], [ 12, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k
  %.1 = phi i32 [ %.0, %bb.k ], [ 0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_os_alloc_huge_os_pages(i64 noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %4, align 8, !tbaa !128
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not66 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %3, align 8, !tbaa !128
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = shl i64 %0, 30
  %i.d = load atomic i64, ptr @mi_huge_start monotonic, align 64
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %.019.i = phi i64 [ %i.d, %bb.e ], [ %i.ah, %bb.k ] ; 3 uses
  %i.f = icmp eq i64 %.019.i, 0
  br i1 %i.f, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !95   ; 4 uses
  %.not.i = icmp eq ptr %i.g, @_mi_heap_empty
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr i8, ptr %i.g, i64 2888     ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 3016     ; 7 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !166  ; 2 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %chacha_next32.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @chacha_block(ptr noundef nonnull %i.h)
  store i32 16, ptr %i.i, align 4, !tbaa !166
  br label %chacha_next32.exit.i.i.i

chacha_next32.exit.i.i.i:                         ; preds = %bb.i, %bb.h
  %i.l = phi i32 [ 16, %bb.i ], [ %i.j, %bb.h ]
  %i.m = getelementptr i8, ptr %i.g, i64 2952     ; 2 uses
  %i.n = sub nsw i32 16, %i.l
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %i.m, i64 %i.o
  store i32 0, ptr %i.p, align 4, !tbaa !54
  %i.q = load i32, ptr %i.i, align 4, !tbaa !166
  %i.r = add i32 %i.q, -1                         ; 3 uses
  store i32 %i.r, ptr %i.i, align 4, !tbaa !166
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.j, label %_mi_heap_random_next.exit.i

bb.j:                                             ; preds = %chacha_next32.exit.i.i.i
  tail call fastcc void @chacha_block(ptr noundef nonnull %i.h)
  store i32 16, ptr %i.i, align 4, !tbaa !166
  br label %_mi_heap_random_next.exit.i

_mi_heap_random_next.exit.i:                      ; preds = %bb.j, %chacha_next32.exit.i.i.i
  %i.t = phi i32 [ 16, %bb.j ], [ %i.r, %chacha_next32.exit.i.i.i ]
  %i.u = sub nsw i32 16, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %i.m, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !54
  store i32 0, ptr %i.w, align 4, !tbaa !54
  %i.y = load i32, ptr %i.i, align 4, !tbaa !166
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.i, align 4, !tbaa !166
  %i.aa = zext i32 %i.x to i64
  %i.ab = shl nuw nsw i64 %i.aa, 13
  %i.ac = and i64 %i.ab, 4396972769280
  %i.ad = or disjoint i64 %i.ac, 35184372088832
  br label %bb.k

bb.k:                                             ; preds = %_mi_heap_random_next.exit.i, %bb.g, %bb.f
  %.1.i = phi i64 [ %.019.i, %bb.f ], [ %i.ad, %_mi_heap_random_next.exit.i ], [ 35184372088832, %bb.g ] ; 2 uses
  %i.ae = add i64 %.1.i, %i.c
  %i.af = cmpxchg ptr @mi_huge_start, i64 %.019.i, i64 %i.ae acq_rel acquire, align 64 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.f, !llvm.loop !504

bb.l:                                             ; preds = %bb.k
  %i.ai = inttoptr i64 %.1.i to ptr               ; 2 uses
  %i.aj = load i64, ptr @mi_clock_diff, align 8, !tbaa !128
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %_mi_clock_start.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #52
  %i.al = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #52 ; 0 uses
  %i.am = load i64, ptr %9, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !154
  %.neg.i = sdiv i64 %i.ao, -1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #52
  %i.ap = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #52 ; 0 uses
  %i.aq = load i64, ptr %8, align 8, !tbaa !153
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !154
  %i.at = sdiv i64 %i.as, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #52
  %reass.add.i = sub i64 %i.aq, %i.am
  %reass.mul.i = mul i64 %reass.add.i, 1000
  %.neg2.i = add nsw i64 %i.at, %.neg.i
  %i.au = add i64 %.neg2.i, %reass.mul.i
  store i64 %i.au, ptr @mi_clock_diff, align 8, !tbaa !128
  br label %_mi_clock_start.exit

_mi_clock_start.exit:                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  %i.av = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #52 ; 0 uses
  %i.aw = load i64, ptr %7, align 8, !tbaa !153
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  %.not110 = icmp eq i64 %0, 0
  br i1 %.not110, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_mi_clock_start.exit
  %.neg = sdiv i64 %i.ay, -1000000
  %i.az = icmp sgt i64 %2, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = shl nuw i64 %2, 1
  %i.bc = add nuw i64 %2, 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.ad
  %.047108 = phi i8 [ 1, %.lr.ph ], [ %spec.select, %bb.ad ]
  %.049107 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.ad ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.bd = shl i64 %.049107, 30
  %i.be = getelementptr i8, ptr %i.ai, i64 %i.bd  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  %i.bf = call i32 @_mi_prim_alloc_huge_os_pages(ptr noundef %i.be, i64 noundef 1073741824, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %i.bg = load i8, ptr %i.a, align 1, !tbaa !142, !range !86, !noundef !87
  %i.bh = trunc nuw i8 %i.bg to i1
  %spec.select = select i1 %i.bh, i8 %.047108, i8 0 ; 3 uses
  %.not67 = icmp eq i32 %i.bf, 0
  br i1 %.not67, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.27, i32 noundef %i.bf, i32 noundef %i.bf, ptr noundef %i.be, i64 noundef 1073741824)
  br label %.thread79

bb.p:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !84  ; 4 uses
  %.not68 = icmp eq ptr %i.bi, %i.be
  br i1 %.not68, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not71 = icmp eq ptr %i.bi, null
  br i1 %.not71, label %.thread79, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.28, i64 noundef %.049107, ptr noundef %i.be)
  %i.bj = call i32 @munmap(ptr noundef nonnull %i.bi, i64 noundef 1073741824) #52
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %_mi_prim_free.exit.i, label %_mi_prim_free.exit.thread.i

_mi_prim_free.exit.i:                             ; preds = %bb.r
  %i.bl = tail call ptr @__errno_location() #60
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !54 ; 3 uses
  %.not.i74 = icmp eq i32 %i.bm, 0
  br i1 %.not.i74, label %_mi_prim_free.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %_mi_prim_free.exit.i
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.94, i32 noundef %i.bm, i32 noundef %i.bm, i64 noundef 1073741824, ptr noundef nonnull %i.bi)
  br label %_mi_prim_free.exit.thread.i

_mi_prim_free.exit.thread.i:                      ; preds = %bb.s, %_mi_prim_free.exit.i, %bb.r
  %10 = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 -1073741824 monotonic, align 8
  %i.bn = add i64 %10, -1073741824                ; 2 uses
  %i.bo = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %_mi_prim_free.exit.thread.i
  %.0.i.i.i.i = phi i64 [ %i.bo, %_mi_prim_free.exit.thread.i ], [ %i.bs, %bb.u ] ; 2 uses
  %i.bp = icmp slt i64 %.0.i.i.i.i, %i.bn
  br i1 %i.bp, label %bb.u, label %mi_atomic_maxi64_relaxed.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bq = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i.i, i64 %i.bn release monotonic, align 8 ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  %i.bs = extractvalue { i64, i1 } %i.bq, 0
  br i1 %i.br, label %mi_atomic_maxi64_relaxed.exit.i.i.i, label %bb.t, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i.i:              ; preds = %bb.u, %bb.t
  %i.bt = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 1073741824 monotonic, align 8 ; 0 uses
  %11 = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 -1073741824 monotonic, align 8
  %i.bu = add i64 %11, -1073741824                ; 2 uses
  %i.bv = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80) monotonic, align 16
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %mi_atomic_maxi64_relaxed.exit.i.i.i
  %.0.i.i.i16.i = phi i64 [ %i.bv, %mi_atomic_maxi64_relaxed.exit.i.i.i ], [ %i.bz, %bb.w ] ; 2 uses
  %i.bw = icmp slt i64 %.0.i.i.i16.i, %i.bu
  br i1 %i.bw, label %bb.w, label %mi_os_prim_free.exit

bb.w:                                             ; preds = %bb.v
  %i.bx = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %.0.i.i.i16.i, i64 %i.bu release monotonic, align 8 ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  %i.bz = extractvalue { i64, i1 } %i.bx, 0
  br i1 %i.by, label %mi_os_prim_free.exit, label %bb.v, !llvm.loop !10

mi_os_prim_free.exit:                             ; preds = %bb.v, %bb.w
  %i.ca = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 1073741824 monotonic, align 8 ; 0 uses
  br label %.thread79

bb.x:                                             ; preds = %bb.p
  %i.cb = add nuw i64 %.049107, 1                 ; 4 uses
  %i.cc = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 1073741824 monotonic, align 8
  %i.cd = add i64 %i.cc, 1073741824               ; 2 uses
  %i.ce = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.0.i.i.i = phi i64 [ %i.ce, %bb.x ], [ %i.ci, %bb.z ] ; 2 uses
  %i.cf = icmp slt i64 %.0.i.i.i, %i.cd
  br i1 %i.cf, label %bb.z, label %_mi_stat_increase.exit

bb.z:                                             ; preds = %bb.y
  %i.cg = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i, i64 %i.cd release monotonic, align 8 ; 2 uses
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  %i.ci = extractvalue { i64, i1 } %i.cg, 0
  br i1 %i.ch, label %_mi_stat_increase.exit, label %bb.y, !llvm.loop !10

_mi_stat_increase.exit:                           ; preds = %bb.y, %bb.z
  %i.cj = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 96), i64 1073741824 monotonic, align 8 ; 0 uses
  %i.ck = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 88), i64 1073741824 monotonic, align 8
  %i.cl = add i64 %i.ck, 1073741824               ; 2 uses
  %i.cm = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80) monotonic, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %_mi_stat_increase.exit
  %.0.i.i.i75 = phi i64 [ %i.cm, %_mi_stat_increase.exit ], [ %i.cq, %bb.ab ] ; 2 uses
  %i.cn = icmp slt i64 %.0.i.i.i75, %i.cl
  br i1 %i.cn, label %bb.ab, label %_mi_stat_increase.exit76

bb.ab:                                            ; preds = %bb.aa
  %i.co = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 80), i64 %.0.i.i.i75, i64 %i.cl release monotonic, align 8 ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 1
  %i.cq = extractvalue { i64, i1 } %i.co, 0
  br i1 %i.cp, label %_mi_stat_increase.exit76, label %bb.aa, !llvm.loop !10

_mi_stat_increase.exit76:                         ; preds = %bb.aa, %bb.ab
  %i.cr = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 1073741824 monotonic, align 8 ; 0 uses
  br i1 %i.az, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_mi_stat_increase.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %i.cs = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #52 ; 0 uses
  %i.ct = load i64, ptr %6, align 8, !tbaa !153
  %i.cu = load i64, ptr %i.ba, align 8, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  %i.cv = sdiv i64 %i.cu, 1000000
  %i.cw = load i64, ptr @mi_clock_diff, align 8, !tbaa !128
  %reass.add = sub i64 %i.ct, %i.aw
  %reass.mul = mul i64 %reass.add, 1000
  %.neg89 = add nsw i64 %i.cv, %.neg
  %i.cx = sub i64 %.neg89, %i.cw
  %i.cy = add i64 %i.cx, %reass.mul               ; 2 uses
  %i.cz = add i64 %.049107, 2
  %i.da = udiv i64 %i.cy, %i.cz
  %i.db = mul i64 %i.da, %0
  %i.dc = icmp sgt i64 %i.db, %i.bb
  %spec.select73 = select i1 %i.dc, i64 %i.bc, i64 %i.cy
  %i.dd = icmp sgt i64 %spec.select73, %2
  br i1 %i.dd, label %.thread, label %bb.ad

.thread:                                          ; preds = %bb.ac
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.29, i64 noundef %i.cb)
  br label %.thread79

.thread79:                                        ; preds = %bb.o, %.thread, %bb.q, %mi_os_prim_free.exit
  %.150.ph = phi i64 [ %.049107, %mi_os_prim_free.exit ], [ %.049107, %bb.q ], [ %i.cb, %.thread ], [ %.049107, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %.loopexit

bb.ad:                                            ; preds = %_mi_stat_increase.exit76, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  %exitcond.not = icmp eq i64 %i.cb, %0
  br i1 %exitcond.not, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %bb.ad, %_mi_clock_start.exit, %.thread79
  %.251 = phi i64 [ %.150.ph, %.thread79 ], [ 0, %_mi_clock_start.exit ], [ %0, %bb.ad ] ; 3 uses
  %.2 = phi i8 [ %spec.select, %.thread79 ], [ 1, %_mi_clock_start.exit ], [ %spec.select, %bb.ad ]
  br i1 %.not66, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  store i64 %.251, ptr %3, align 8, !tbaa !128
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = shl i64 %.251, 30
  store i64 %i.de, ptr %4, align 8, !tbaa !128
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not72 = icmp eq i64 %.251, 0
  br i1 %.not72, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !142
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !142
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 %.2, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !142
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 19
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 4, ptr %.sroa.777.0..sroa_idx, align 4, !tbaa !131
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.df = phi ptr [ null, %bb.ah ], [ %i.ai, %bb.ai ]
  ret ptr %i.df
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_warning_message(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 72), align 8, !tbaa !133
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %mi_option_get.exit, !prof !61

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 64)), !inline_history !505
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.a, %bb.b
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 64), align 16, !tbaa !135
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %mi_option_get.exit
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 8), align 8, !tbaa !133
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %mi_option_get.exit2, !prof !61

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_option_init(ptr noundef nonnull @options), !inline_history !505
  br label %mi_option_get.exit2

mi_option_get.exit2:                              ; preds = %bb.c, %bb.d
  %i.f = load i64, ptr @options, align 16, !tbaa !135
  %.not3 = icmp eq i64 %i.f, 0
  br i1 %.not3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %mi_option_get.exit2
  %i.g = load i64, ptr @mi_max_warning_count, align 8, !tbaa !128
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr @warning_count, i64 1 acq_rel, align 8
  %i.j = load i64, ptr @mi_max_warning_count, align 8, !tbaa !128
  %i.k = icmp sgt i64 %i.i, %i.j
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %mi_option_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #52
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @mi_vfprintf_thread(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #52
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %mi_option_get.exit2, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_interleave(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
end_hunk_0
begin_hunk_1_@_mi_heap_init:bb.a
  br i1 %.not27.13.i, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.am = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112) monotonic, align 16
  %.not.14.i = icmp eq ptr %i.am, null
  br i1 %.not.14.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.an = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 112), ptr null acq_rel, align 8 ; 2 uses
  %.not27.14.i = icmp eq ptr %i.an, null
  br i1 %.not27.14.i, label %bb.ah, label %.loopexit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ao = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120) monotonic, align 8
  %.not.15.i = icmp eq ptr %i.ao, null
  br i1 %.not.15.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ap = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 120), ptr null acq_rel, align 8 ; 2 uses
  %.not27.15.i = icmp eq ptr %i.ap, null
  br i1 %.not27.15.i, label %bb.aj, label %.loopexit.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #52
  %i.aq = call ptr @_mi_os_alloc(i64 noundef 4696, ptr noundef nonnull %0, ptr nonnull poison) ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.as = call ptr @_mi_os_alloc(i64 noundef 4696, ptr noundef nonnull %0, ptr nonnull poison) ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str.51, i64 noundef 4696)
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.3.ph.i = phi ptr [ %i.aq, %bb.aj ], [ %i.as, %bb.ak ] ; 2 uses
  %i.au = getelementptr i8, ptr %.3.ph.i, i64 4672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !162
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !160, !range !86, !noundef !87
  %i.ax = trunc nuw i8 %i.aw to i1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.334.i = phi ptr [ %.3.ph.i, %bb.am ], [ null, %bb.al ]
  %.0.i = phi i1 [ %i.ax, %bb.am ], [ false, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #52
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.an, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.4.i = phi ptr [ %.334.i, %bb.an ], [ %i.l, %bb.e ], [ %i.n, %bb.g ], [ %i.p, %bb.i ], [ %i.r, %bb.k ], [ %i.t, %bb.m ], [ %i.v, %bb.o ], [ %i.x, %bb.q ], [ %i.z, %bb.s ], [ %i.ab, %bb.u ], [ %i.ad, %bb.w ], [ %i.af, %bb.y ], [ %i.ah, %bb.aa ], [ %i.aj, %bb.ac ], [ %i.al, %bb.ae ], [ %i.an, %bb.ag ], [ %i.ap, %bb.ai ] ; 16 uses
  %.1.i = phi i1 [ %.0.i, %bb.an ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ai ]
  %i.ay = icmp eq ptr %.4.i, null                 ; 2 uses
  %or.cond.i = select i1 %i.ay, i1 true, i1 %.1.i
  br i1 %or.cond.i, label %mi_thread_data_zalloc.exit, label %mi_thread_data_zalloc.exit.thread

mi_thread_data_zalloc.exit.thread:                ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4696) %.4.i, i8 0, i64 4696, i1 false)
  br label %bb.ao

mi_thread_data_zalloc.exit:                       ; preds = %.loopexit.i
  br i1 %i.ay, label %_mi_heap_set_default_direct.exit, label %bb.ao

bb.ao:                                            ; preds = %mi_thread_data_zalloc.exit.thread, %mi_thread_data_zalloc.exit
  %i.az = getelementptr i8, ptr %.4.i, i64 3064   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.4.i, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1608) %i.az, ptr noundef nonnull readonly align 64 dereferenceable(1608) @tld_empty, i64 1608, i1 false)
  %i.ba = getelementptr i8, ptr %.4.i, i64 4032   ; 2 uses
  %i.bb = getelementptr i8, ptr %.4.i, i64 3992
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !184
  %i.bc = getelementptr i8, ptr %.4.i, i64 4016
  %i.bd = getelementptr i8, ptr %.4.i, i64 4000
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !185
  %i.be = getelementptr i8, ptr %.4.i, i64 4008
  store ptr @_mi_abandoned_default, ptr %i.be, align 8, !tbaa !186
  %i.bf = getelementptr i8, ptr %.4.i, i64 4024
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !187
  %i.bg = getelementptr i8, ptr %.4.i, i64 3080
  store ptr %.4.i, ptr %i.bg, align 8, !tbaa !168
  tail call void @_mi_heap_init_ex(ptr noundef nonnull %.4.i, ptr noundef nonnull %i.az, i32 noundef 0, i1 noundef zeroext false, i8 noundef zeroext 0)
  store ptr %.4.i, ptr %i.a, align 8, !tbaa !95
  %i.bh = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !54 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.bh, -1
  br i1 %.not.i.i9, label %_mi_heap_set_default_direct.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bi = tail call i32 @pthread_setspecific(i32 noundef %i.bh, ptr noundef nonnull %.4.i) #52 ; 0 uses
  br label %_mi_heap_set_default_direct.exit

_mi_heap_set_default_direct.exit:                 ; preds = %bb.ap, %bb.ao, %bb.c, %_mi_is_main_thread.exit.thread, %mi_thread_data_zalloc.exit, %bb.a
  ret i1 %i.c
}

; Function Attrs: norecurse nounwind uwtable
define hidden void @_mi_stat_increase(ptr nofree noundef captures(address) %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %mi_stat_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp uge ptr %0, @_mi_stats_main
  %i.c = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = getelementptr i8, ptr %0, i64 24         ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.e, i64 %1 monotonic, align 8
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = add i64 %i.f, %1                         ; 2 uses
  %i.i = load atomic i64, ptr %i.g monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.c ], [ %i.m, %bb.e ] ; 2 uses
  %i.j = icmp slt i64 %.0.i.i, %i.h
  br i1 %i.j, label %bb.e, label %mi_atomic_maxi64_relaxed.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = cmpxchg weak ptr %i.g, i64 %.0.i.i, i64 %i.h release monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %mi_atomic_maxi64_relaxed.exit.i, label %bb.d, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i:                  ; preds = %bb.e, %bb.d
  %i.n = icmp sgt i64 %1, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.o = atomicrmw add ptr %0, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.g:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = atomicrmw sub ptr %i.p, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_update.exit

bb.h:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.e, align 8, !tbaa !144
  %i.s = add i64 %i.r, %1                         ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !tbaa !144
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !145
  %i.v = icmp sgt i64 %i.s, %i.u
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.s, ptr %i.t, align 8, !tbaa !145
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = icmp sgt i64 %1, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i64, ptr %0, align 8, !tbaa !146
  %i.y = add i64 %i.x, %1
  store i64 %i.y, ptr %0, align 8, !tbaa !146
  br label %mi_stat_update.exit

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !147
  %i.ab = sub i64 %i.aa, %1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !147
  br label %mi_stat_update.exit

mi_stat_update.exit:                              ; preds = %bb.a, %bb.f, %bb.g, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_thread_done() local_unnamed_addr #2 {
bb.a:
  tail call void @_mi_thread_done(ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_thread_done(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_mi_heap_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 3 uses
  %.not7 = icmp eq ptr %.0, @_mi_heap_empty
  br i1 %.not7, label %_mi_heap_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %1 = atomicrmw add ptr @thread_count, i64 -1 monotonic, align 8 ; 0 uses
  %2 = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 -1 monotonic, align 8
  %i.e = add i64 %2, -1                           ; 2 uses
  %i.f = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.f, %bb.d ], [ %i.j, %bb.f ] ; 2 uses
  %i.g = icmp slt i64 %.0.i.i.i, %i.e
  br i1 %i.g, label %bb.f, label %_mi_stat_decrease.exit

bb.f:                                             ; preds = %bb.e
  %i.h = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i, i64 %i.e release monotonic, align 8 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  br i1 %i.i, label %_mi_stat_decrease.exit, label %bb.e, !llvm.loop !10

_mi_stat_decrease.exit:                           ; preds = %bb.e, %bb.f
  %i.k = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 296), i64 1 monotonic, align 8 ; 0 uses
  %i.l = getelementptr i8, ptr %.0, i64 2848
  %i.m = load i64, ptr %i.l, align 8, !tbaa !167  ; 2 uses
  %i.n = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #57, !srcloc !99
  %i.o = ptrtoint ptr %i.n to i64
  %.not.not = icmp eq i64 %i.m, %i.o
  br i1 %.not.not, label %bb.g, label %_mi_heap_done.exit

bb.g:                                             ; preds = %_mi_stat_decrease.exit
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !167 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_mi_is_main_thread.exit.thread.i, label %_mi_is_main_thread.exit.i

_mi_is_main_thread.exit.i:                        ; preds = %bb.g
  %i.r = icmp eq i64 %i.p, %i.m
  %cond.fr.i = freeze i1 %i.r
  br i1 %cond.fr.i, label %_mi_is_main_thread.exit.thread.i, label %bb.h

_mi_is_main_thread.exit.thread.i:                 ; preds = %_mi_is_main_thread.exit.i, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %_mi_is_main_thread.exit.thread.i, %_mi_is_main_thread.exit.i
  %i.s = phi ptr [ @_mi_heap_main, %_mi_is_main_thread.exit.thread.i ], [ @_mi_heap_empty, %_mi_is_main_thread.exit.i ] ; 2 uses
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  store ptr %i.s, ptr %i.t, align 8, !tbaa !95
  %i.u = load i32, ptr @_mi_heap_default_key, align 4, !tbaa !54 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.u, -1
  br i1 %.not.i.i.i, label %_mi_heap_set_default_direct.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @pthread_setspecific(i32 noundef %i.u, ptr noundef nonnull %i.s) #52 ; 0 uses
  br label %_mi_heap_set_default_direct.exit.i

_mi_heap_set_default_direct.exit.i:               ; preds = %bb.i, %bb.h
  %i.w = load ptr, ptr %.0, align 8, !tbaa !72
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !168  ; 25 uses
  %.not22.i = icmp eq ptr %i.y, @_mi_heap_empty
  br i1 %.not22.i, label %_mi_heap_done.exit, label %bb.j

bb.j:                                             ; preds = %_mi_heap_set_default_direct.exit.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = getelementptr i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177 ; 2 uses
  %.not23.i = icmp eq ptr %i.ab, null
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.024.i = phi ptr [ %i.ad, %bb.l ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.024.i, i64 3048
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !178 ; 2 uses
  %.not19.i = icmp eq ptr %.024.i, %i.y
  br i1 %.not19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  tail call void @mi_heap_delete(ptr noundef nonnull %.024.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !536

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.not18.i = icmp eq ptr %i.y, @_mi_heap_main
  br i1 %.not18.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  tail call fastcc void @mi_heap_collect_ex(ptr noundef nonnull %i.y, i32 noundef 2)
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.af = getelementptr i8, ptr %i.ae, i64 968
  tail call fastcc void @mi_stats_merge_from(ptr noundef %i.af)
  %i.ag = load atomic ptr, ptr @td_cache monotonic, align 16
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %i.ai = cmpxchg weak ptr @td_cache, ptr null, ptr %i.y acq_rel acquire, align 8
  %i.aj = extractvalue { ptr, i1 } %i.ai, 1
  br i1 %i.aj, label %_mi_heap_done.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.n, %bb.m
  %i.ak = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8) monotonic, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %.critedge.1.i.i

bb.o:                                             ; preds = %.critedge.i.i
  %i.am = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 8), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.an = extractvalue { ptr, i1 } %i.am, 1
  br i1 %i.an, label %_mi_heap_done.exit, label %.critedge.1.i.i

.critedge.1.i.i:                                  ; preds = %bb.o, %.critedge.i.i
  %i.ao = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16) monotonic, align 16
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.p, label %.critedge.2.i.i

bb.p:                                             ; preds = %.critedge.1.i.i
  %i.aq = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 16), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.ar = extractvalue { ptr, i1 } %i.aq, 1
  br i1 %i.ar, label %_mi_heap_done.exit, label %.critedge.2.i.i

.critedge.2.i.i:                                  ; preds = %bb.p, %.critedge.1.i.i
  %i.as = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24) monotonic, align 8
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.q, label %.critedge.3.i.i

bb.q:                                             ; preds = %.critedge.2.i.i
  %i.au = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 24), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.av = extractvalue { ptr, i1 } %i.au, 1
  br i1 %i.av, label %_mi_heap_done.exit, label %.critedge.3.i.i

.critedge.3.i.i:                                  ; preds = %bb.q, %.critedge.2.i.i
  %i.aw = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32) monotonic, align 16
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.r, label %.critedge.4.i.i

bb.r:                                             ; preds = %.critedge.3.i.i
  %i.ay = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 32), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.az = extractvalue { ptr, i1 } %i.ay, 1
  br i1 %i.az, label %_mi_heap_done.exit, label %.critedge.4.i.i

.critedge.4.i.i:                                  ; preds = %bb.r, %.critedge.3.i.i
  %i.ba = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40) monotonic, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.s, label %.critedge.5.i.i

bb.s:                                             ; preds = %.critedge.4.i.i
  %i.bc = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 40), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.bd = extractvalue { ptr, i1 } %i.bc, 1
  br i1 %i.bd, label %_mi_heap_done.exit, label %.critedge.5.i.i

.critedge.5.i.i:                                  ; preds = %bb.s, %.critedge.4.i.i
  %i.be = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48) monotonic, align 16
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.t, label %.critedge.6.i.i

bb.t:                                             ; preds = %.critedge.5.i.i
  %i.bg = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 48), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.bh = extractvalue { ptr, i1 } %i.bg, 1
  br i1 %i.bh, label %_mi_heap_done.exit, label %.critedge.6.i.i

.critedge.6.i.i:                                  ; preds = %bb.t, %.critedge.5.i.i
  %i.bi = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56) monotonic, align 8
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.u, label %.critedge.7.i.i

bb.u:                                             ; preds = %.critedge.6.i.i
  %i.bk = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 56), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.bl = extractvalue { ptr, i1 } %i.bk, 1
  br i1 %i.bl, label %_mi_heap_done.exit, label %.critedge.7.i.i

.critedge.7.i.i:                                  ; preds = %bb.u, %.critedge.6.i.i
  %i.bm = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64) monotonic, align 16
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.v, label %.critedge.8.i.i

bb.v:                                             ; preds = %.critedge.7.i.i
  %i.bo = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 64), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.bp = extractvalue { ptr, i1 } %i.bo, 1
  br i1 %i.bp, label %_mi_heap_done.exit, label %.critedge.8.i.i

.critedge.8.i.i:                                  ; preds = %bb.v, %.critedge.7.i.i
  %i.bq = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72) monotonic, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.w, label %.critedge.9.i.i

bb.w:                                             ; preds = %.critedge.8.i.i
  %i.bs = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 72), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.bt = extractvalue { ptr, i1 } %i.bs, 1
  br i1 %i.bt, label %_mi_heap_done.exit, label %.critedge.9.i.i

.critedge.9.i.i:                                  ; preds = %bb.w, %.critedge.8.i.i
  %i.bu = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80) monotonic, align 16
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.x, label %.critedge.10.i.i

bb.x:                                             ; preds = %.critedge.9.i.i
  %i.bw = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 80), ptr null, ptr %i.y acq_rel acquire, align 8
  %i.bx = extractvalue { ptr, i1 } %i.bw, 1
  br i1 %i.bx, label %_mi_heap_done.exit, label %.critedge.10.i.i

.critedge.10.i.i:                                 ; preds = %bb.x, %.critedge.9.i.i
  %i.by = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @td_cache, i64 88) monotonic, align 8
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.y, label %.critedge.11.i.i
end_hunk_1
begin_hunk_2_@_mi_commit_mask_next_run:bb.a
  %i.ak = add i64 %.1, 1                          ; 5 uses
  %i.al = lshr i64 %.4, 1                         ; 2 uses
  %i.am = and i64 %.4, 2
  %.not40 = icmp eq i64 %i.am, 0
  br i1 %.not40, label %bb.k, label %bb.j, !llvm.loop !31

bb.k:                                             ; preds = %bb.j
  %i.an = add i64 %i.ak, %.131.lcssa
  %i.ao = and i64 %i.an, 63
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp ugt i64 %.134, 6
  br i1 %i.aq, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nuw nsw i64 %.134, 1                ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %0, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !128
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.235 = phi i64 [ %i.ar, %bb.m ], [ %.134, %bb.k ]
  %.5 = phi i64 [ %i.at, %bb.m ], [ %i.al, %bb.k ] ; 2 uses
  %i.au = and i64 %.5, 1
  %.not41 = icmp eq i64 %i.au, 0
  br i1 %.not41, label %.loopexit, label %bb.i, !llvm.loop !32

.loopexit:                                        ; preds = %bb.n, %bb.l, %.thread
  %.036 = phi i64 [ 0, %.thread ], [ %i.ak, %bb.l ], [ %i.ak, %bb.n ]
  ret i64 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden ptr @_mi_segment_page_start(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65   ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !93
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 16
  %i.g = icmp ugt i32 %i.b, 7
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %i.b, 65
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = mul nuw nsw i64 %i.c, 3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.b, 513
  %spec.select.i = select i1 %i.j, i64 %i.c, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ %spec.select.i, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_mi_segment_page_start_from_slice.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = sub nsw i64 %i.f, %.0.i
  store i64 %i.k, ptr %2, align 8, !tbaa !128
  br label %_mi_segment_page_start_from_slice.exit

_mi_segment_page_start_from_slice.exit:           ; preds = %bb.e, %bb.f
  %i.l = ptrtoint ptr %1 to i64
  %i.m = getelementptr i8, ptr %0, i64 264
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.l, %i.n
  %i.p = sdiv exact i64 %i.o, 80
  %i.q = shl i64 %i.p, 16
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 %.0.i
  ret ptr %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_mi_segment_thread_collect(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_segment_page_clear(ptr noundef %0, ptr nofree noundef captures(address) %1) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 10         ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !114
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !65   ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %_mi_segment_page_start.exit.i, !prof !96

bb.b:                                             ; preds = %bb.a
  %i.k = zext nneg i32 %i.i to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !93
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %bb.b, %_mi_segment_page_start.exit.i
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.n, %_mi_segment_page_start.exit.i ]
  %i.o = mul nuw i64 %.0.i, %i.g                  ; 9 uses
  %i.p = getelementptr i8, ptr %1, i64 896        ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !172  ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 192      ; 5 uses
  %i.s = sub i64 0, %i.o                          ; 2 uses
  %i.t = icmp eq i64 %i.o, 0
  br i1 %i.t, label %_mi_stat_decrease.exit, label %bb.c

bb.c:                                             ; preds = %mi_page_block_size.exit
  %i.u = icmp uge ptr %i.r, @_mi_stats_main
  %i.v = icmp ult ptr %i.r, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  %i.x = getelementptr i8, ptr %i.q, i64 216      ; 3 uses
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = atomicrmw sub ptr %i.x, i64 %i.o monotonic, align 8
  %i.z = getelementptr i8, ptr %i.q, i64 208      ; 2 uses
  %i.aa = sub i64 %i.y, %i.o                      ; 2 uses
  %i.ab = load atomic i64, ptr %i.z monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.ab, %bb.d ], [ %i.af, %bb.f ] ; 2 uses
  %i.ac = icmp slt i64 %.0.i.i.i, %i.aa
  br i1 %i.ac, label %bb.f, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = cmpxchg weak ptr %i.z, i64 %.0.i.i.i, i64 %i.aa release monotonic, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  br i1 %i.ae, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.e, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.f, %bb.e
  %i.ag = icmp sgt i64 %i.s, 0
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.ah = atomicrmw sub ptr %i.r, i64 %i.o monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.h:                                             ; preds = %mi_atomic_maxi64_relaxed.exit.i.i
  %i.ai = getelementptr i8, ptr %i.q, i64 200
  %i.aj = atomicrmw add ptr %i.ai, i64 %i.o monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.i:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !144
  %i.al = sub i64 %i.ak, %i.o                     ; 3 uses
  store i64 %i.al, ptr %i.x, align 8, !tbaa !144
  %i.am = getelementptr i8, ptr %i.q, i64 208     ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !145
  %i.ao = icmp sgt i64 %i.al, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.al, ptr %i.am, align 8, !tbaa !145
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = icmp sgt i64 %i.s, 0
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !146
  %i.ar = sub i64 %i.aq, %i.o
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !146
  br label %_mi_stat_decrease.exit

bb.m:                                             ; preds = %bb.k
  %i.as = getelementptr i8, ptr %i.q, i64 200     ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !147
  %i.au = add i64 %i.at, %i.o
  store i64 %i.au, ptr %i.as, align 8, !tbaa !147
  br label %_mi_stat_decrease.exit

_mi_stat_decrease.exit:                           ; preds = %mi_page_block_size.exit, %bb.g, %bb.h, %bb.l, %bb.m
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !172 ; 6 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 32     ; 2 uses
  %i.ax = icmp uge ptr %i.aw, @_mi_stats_main
  %i.ay = icmp ult ptr %i.aw, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  %i.ba = getelementptr i8, ptr %i.av, i64 56     ; 3 uses
  br i1 %i.az, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_mi_stat_decrease.exit
  %2 = atomicrmw add ptr %i.ba, i64 -1 monotonic, align 8
  %i.bb = getelementptr i8, ptr %i.av, i64 48     ; 2 uses
  %i.bc = add i64 %2, -1                          ; 2 uses
  %i.bd = load atomic i64, ptr %i.bb monotonic, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0.i.i.i19 = phi i64 [ %i.bd, %bb.n ], [ %i.bh, %bb.p ] ; 2 uses
  %i.be = icmp slt i64 %.0.i.i.i19, %i.bc
  br i1 %i.be, label %bb.p, label %mi_atomic_maxi64_relaxed.exit.i.i20

bb.p:                                             ; preds = %bb.o
  %i.bf = cmpxchg weak ptr %i.bb, i64 %.0.i.i.i19, i64 %i.bc release monotonic, align 8 ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  %i.bh = extractvalue { i64, i1 } %i.bf, 0
  br i1 %i.bg, label %mi_atomic_maxi64_relaxed.exit.i.i20, label %bb.o, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i20:              ; preds = %bb.p, %bb.o
  %i.bi = getelementptr i8, ptr %i.av, i64 40
  %i.bj = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit21

bb.q:                                             ; preds = %_mi_stat_decrease.exit
  %i.bk = load i64, ptr %i.ba, align 8, !tbaa !144
  %i.bl = add i64 %i.bk, -1                       ; 3 uses
  store i64 %i.bl, ptr %i.ba, align 8, !tbaa !144
  %i.bm = getelementptr i8, ptr %i.av, i64 48     ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !145
  %i.bo = icmp sgt i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !145
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = getelementptr i8, ptr %i.av, i64 40     ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !147
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !147
  br label %_mi_stat_decrease.exit21

_mi_stat_decrease.exit21:                         ; preds = %mi_atomic_maxi64_relaxed.exit.i.i20, %bb.s
  %i.bs = getelementptr i8, ptr %i.d, i64 24
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !194, !range !86, !noundef !87
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.t, label %bb.z

bb.t:                                             ; preds = %_mi_stat_decrease.exit21
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 360), align 8, !tbaa !133
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.u, label %mi_option_is_enabled.exit, !prof !61

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 352)), !inline_history !141
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %bb.t, %bb.u
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 352), align 16, !tbaa !135
  %.not = icmp eq i64 %i.bx, 0
  br i1 %.not, label %bb.z, label %bb.v

bb.v:                                             ; preds = %mi_option_is_enabled.exit
  %i.by = load i32, ptr %i.h, align 4, !tbaa !65  ; 4 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = load i32, ptr %0, align 8, !tbaa !93
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 16
  %i.cd = icmp ugt i32 %i.by, 7
  br i1 %i.cd, label %bb.w, label %_mi_page_start.exit

bb.w:                                             ; preds = %bb.v
  %i.ce = icmp ult i32 %i.by, 65
  br i1 %i.ce, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cf = mul nuw nsw i64 %i.bz, 3
  br label %_mi_page_start.exit

bb.y:                                             ; preds = %bb.w
  %i.cg = icmp ult i32 %i.by, 513
  %spec.select.i.i.i = select i1 %i.cg, i64 %i.bz, i64 0
  br label %_mi_page_start.exit

_mi_page_start.exit:                              ; preds = %bb.v, %bb.x, %bb.y
  %.0.i.i.i22 = phi i64 [ %i.cf, %bb.x ], [ 0, %bb.v ], [ %spec.select.i.i.i, %bb.y ] ; 2 uses
  %i.ch = sub nsw i64 %i.cc, %.0.i.i.i22
  %i.ci = getelementptr i8, ptr %i.d, i64 264
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.a, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 80
  %i.cm = shl i64 %i.cl, 16
  %i.cn = getelementptr i8, ptr %i.d, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 %.0.i.i.i22
  %i.cp = load ptr, ptr %i.p, align 8, !tbaa !172
  %i.cq = tail call zeroext i1 @_mi_os_reset(ptr noundef %i.co, i64 noundef %i.ch, ptr noundef %i.cp) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %_mi_page_start.exit, %mi_option_is_enabled.exit, %_mi_stat_decrease.exit21
  %i.cr = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 8
  %i.ct = and i8 %i.cs, -3
  store i8 %i.ct, ptr %i.cr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(70) %i.e, i8 0, i64 70, i1 false)
  store i32 1, ptr %i.h, align 4, !tbaa !65
  %i.cu = tail call fastcc ptr @mi_segment_span_free_coalesce(ptr noundef %0, ptr noundef %1)
  %i.cv = getelementptr i8, ptr %i.d, i64 208     ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 16, !tbaa !112
  %i.cx = add i64 %i.cw, -1
  store i64 %i.cx, ptr %i.cv, align 16, !tbaa !112
  ret ptr %i.cu
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_segment_free(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 248
  %i.c = load i64, ptr %i.b, align 8, !tbaa !195
  %i.d = getelementptr [80 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.e = icmp ult ptr %i.a, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 240
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.015 = phi ptr [ %i.a, %.lr.ph ], [ %i.ai, %bb.k ] ; 8 uses
  %i.g = getelementptr i8, ptr %.015, i64 28      ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge16

._crit_edge16:                                    ; preds = %bb.b
  %.pre = load i32, ptr %.015, align 8, !tbaa !93
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.f, align 8, !tbaa !196
  %.not = icmp eq i32 %i.j, 1
  %.pre17 = load i32, ptr %.015, align 8, !tbaa !93 ; 4 uses
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext i32 %.pre17 to i64                  ; 2 uses
  %i.l = icmp ult i32 %.pre17, 9
  br i1 %i.l, label %mi_span_queue_for.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i64 %i.k, -1                     ; 2 uses
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true) ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = sub nuw nsw i64 61, %i.n
  %i.q = lshr i64 %i.m, %i.p
  %i.r = and i64 %i.q, 3
  %i.s = or disjoint i64 %i.r, %i.o
  %i.t = xor i64 %i.s, 252
  %i.u = add nsw i64 %i.t, -4
  br label %mi_span_queue_for.exit.i

mi_span_queue_for.exit.i:                         ; preds = %bb.e, %bb.d
  %.1.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %i.u, %bb.e ]
  %i.v = getelementptr [24 x i8], ptr %1, i64 %.1.i.i.i.i ; 3 uses
  %i.w = getelementptr i8, ptr %.015, i64 64      ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !193  ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  %.phi.trans.insert.i = getelementptr i8, ptr %.015, i64 56 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !171 ; 4 uses
  br i1 %.not.i.i, label %mi_span_queue_for.exit._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %mi_span_queue_for.exit.i
  %i.y = getelementptr i8, ptr %i.x, i64 56
  store ptr %.pre.i, ptr %i.y, align 8, !tbaa !171
  br label %mi_span_queue_for.exit._crit_edge.i

mi_span_queue_for.exit._crit_edge.i:              ; preds = %bb.f, %mi_span_queue_for.exit.i
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !198
  %i.aa = icmp eq ptr %.015, %i.z
  br i1 %i.aa, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %mi_span_queue_for.exit._crit_edge.i
  store ptr %.pre.i, ptr %i.v, align 8, !tbaa !198
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %mi_span_queue_for.exit._crit_edge.i
  %.not19.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not19.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ab = getelementptr i8, ptr %.pre.i, i64 64
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !193
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %i.ac = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !199
  %i.ae = icmp eq ptr %.015, %i.ad
  br i1 %i.ae, label %bb.j, label %mi_segment_span_remove_from_queue.exit

bb.j:                                             ; preds = %bb.i
end_hunk_2
begin_hunk_3_@mi_segment_abandon:bb.a
  tail call fastcc void @mi_segment_try_purge(ptr noundef %0, i1 noundef zeroext %i.aj, ptr noundef %i.al)
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !172 ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 224    ; 5 uses
  %i.ao = icmp uge ptr %i.an, @_mi_stats_main
  %i.ap = icmp ult ptr %i.an, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  %i.ar = getelementptr i8, ptr %i.am, i64 248    ; 3 uses
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %mi_option_is_enabled.exit
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = getelementptr i8, ptr %i.am, i64 240    ; 2 uses
  %i.au = add i64 %i.as, 1                        ; 2 uses
  %i.av = load atomic i64, ptr %i.at monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.i.i.i = phi i64 [ %i.av, %bb.j ], [ %i.az, %bb.l ] ; 2 uses
  %i.aw = icmp slt i64 %.0.i.i.i, %i.au
  br i1 %i.aw, label %bb.l, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ax = cmpxchg weak ptr %i.at, i64 %.0.i.i.i, i64 %i.au release monotonic, align 8 ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0
  br i1 %i.ay, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.k, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.l, %bb.k
  %i.ba = atomicrmw add ptr %i.an, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.m:                                             ; preds = %mi_option_is_enabled.exit
  %i.bb = load i64, ptr %i.ar, align 8, !tbaa !144
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  store i64 %i.bc, ptr %i.ar, align 8, !tbaa !144
  %i.bd = getelementptr i8, ptr %i.am, i64 240    ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !145
  %i.bf = icmp sgt i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !145
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = load i64, ptr %i.an, align 8, !tbaa !146
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.an, align 8, !tbaa !146
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %mi_atomic_maxi64_relaxed.exit.i.i, %bb.o
  %i.bi = getelementptr i8, ptr %0, i64 224
  %.val = load i64, ptr %i.bi, align 8, !tbaa !124
  %.neg = mul i64 %.val, -65536
  tail call fastcc void @mi_segments_track_size(i64 noundef %.neg, ptr noundef %1)
  %i.bj = getelementptr i8, ptr %0, i64 256
  store atomic i64 0, ptr %i.bj seq_cst, align 8, !tbaa !201
  %i.bk = getelementptr i8, ptr %0, i64 176       ; 2 uses
  store atomic ptr null, ptr %i.bk release, align 8
  %i.bl = getelementptr i8, ptr %0, i64 200
  store i64 1, ptr %i.bl, align 8, !tbaa !203
  %i.bm = getelementptr i8, ptr %1, i64 912
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !202 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 64     ; 2 uses
  %i.bp = load atomic i64, ptr %i.bo monotonic, align 64
  %i.bq = ptrtoint ptr %0 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_mi_stat_increase.exit
  %.0.i = phi i64 [ %i.bp, %_mi_stat_increase.exit ], [ %i.by, %bb.p ] ; 3 uses
  %i.br = and i64 %.0.i, -33554432
  %i.bs = inttoptr i64 %i.br to ptr
  store atomic ptr %i.bs, ptr %i.bk release, align 8
  %i.bt = add i64 %.0.i, 1
  %i.bu = and i64 %i.bt, 33554431
  %i.bv = or i64 %i.bu, %i.bq
  %i.bw = cmpxchg weak ptr %i.bo, i64 %.0.i, i64 %i.bv release monotonic, align 64 ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  %i.by = extractvalue { i64, i1 } %i.bw, 0
  br i1 %i.bx, label %mi_abandoned_push.exit, label %bb.p, !llvm.loop !567

mi_abandoned_push.exit:                           ; preds = %bb.p
  %i.bz = getelementptr i8, ptr %i.bn, i64 128
  %i.ca = atomicrmw add ptr %i.bz, i64 1 monotonic, align 64 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_abandoned_await_readers(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 64
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @llvm.x86.sse2.pause()
  %i.c = load atomic i64, ptr %i.a acquire, align 64
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !34

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_abandoned_reclaim_all(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 912
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 9 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 7 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 64
  %i.e = icmp ult i64 %i.d, 33554432
  br i1 %i.e, label %bb.c, label %mi_abandoned_visited_revisit.exit.thread.i, !prof !96

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic ptr, ptr %i.b monotonic, align 64
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mi_abandoned_pop.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw xchg ptr %i.b, ptr null acq_rel, align 64 ; 4 uses
  %.not54.i.i = icmp eq ptr %i.h, null
  br i1 %.not54.i.i, label %mi_abandoned_pop.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load atomic i64, ptr %i.c monotonic, align 64 ; 3 uses
  %i.j = icmp ult i64 %i.i, 33554432
  br i1 %i.j, label %bb.f, label %.critedge.i.i.preheader

.critedge.i.i.preheader:                          ; preds = %bb.f, %bb.e
  br label %.critedge.i.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.b, i64 192      ; 2 uses
  %i.l = load atomic i64, ptr %i.k monotonic, align 64 ; 2 uses
  %i.m = add nuw nsw i64 %i.i, 1
  %i.n = and i64 %i.m, 33554431
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = or i64 %i.n, %i.o
  %i.q = cmpxchg ptr %i.c, i64 %i.i, i64 %i.p acq_rel acquire, align 64
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.g, label %.critedge.i.i.preheader, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.b, i64 128
  %i.t = atomicrmw add ptr %i.s, i64 %i.l monotonic, align 64 ; 0 uses
  %i.u = atomicrmw sub ptr %i.k, i64 %i.l monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %.critedge.i.i
  %.050.i.i = phi ptr [ %i.w, %.critedge.i.i ], [ %i.h, %.critedge.i.i.preheader ] ; 2 uses
  %i.v = getelementptr i8, ptr %.050.i.i, i64 176
  %i.w = load atomic ptr, ptr %i.v monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.h, label %.critedge.i.i, !llvm.loop !35

bb.h:                                             ; preds = %.critedge.i.i
  %i.x = getelementptr i8, ptr %.050.i.i, i64 176
  %i.y = load atomic i64, ptr %i.c monotonic, align 64
  %i.z = getelementptr i8, ptr %i.b, i64 192      ; 2 uses
  %i.aa = ptrtoint ptr %i.h to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.051.i.i = phi i64 [ %i.y, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ab = load atomic i64, ptr %i.z monotonic, align 64 ; 2 uses
  %i.ac = and i64 %.051.i.i, -33554432
  %i.ad = inttoptr i64 %i.ac to ptr
  store atomic ptr %i.ad, ptr %i.x release, align 8
  %i.ae = add i64 %.051.i.i, 1
  %i.af = and i64 %i.ae, 33554431
  %i.ag = or i64 %i.af, %i.aa
  %i.ah = cmpxchg weak ptr %i.c, i64 %.051.i.i, i64 %i.ag release monotonic, align 64 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  %i.aj = extractvalue { i64, i1 } %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.i, !prof !204, !llvm.loop !36

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.b, i64 128
  %i.al = atomicrmw add ptr %i.ak, i64 %i.ab monotonic, align 64 ; 0 uses
  %i.am = atomicrmw sub ptr %i.z, i64 %i.ab monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i

mi_abandoned_visited_revisit.exit.thread.i:       ; preds = %bb.j, %bb.g, %bb.b
  %i.an = getelementptr i8, ptr %i.b, i64 256     ; 3 uses
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 64 ; 0 uses
  %i.ap = load atomic i64, ptr %i.c acquire, align 64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %mi_abandoned_visited_revisit.exit.thread.i
  %.029.i = phi i64 [ %i.ap, %mi_abandoned_visited_revisit.exit.thread.i ], [ %i.ba, %bb.l ] ; 3 uses
  %i.aq = and i64 %.029.i, -33554432              ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %mi_abandoned_pop.exit.thread6, label %bb.l

mi_abandoned_pop.exit.thread6:                    ; preds = %bb.k
  %2 = atomicrmw add ptr %i.an, i64 -1 monotonic, align 64 ; 0 uses
  br label %mi_abandoned_pop.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 176
  %i.at = load atomic ptr, ptr %i.as monotonic, align 16
  %i.au = add i64 %.029.i, 1
  %i.av = and i64 %i.au, 33554431
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = or i64 %i.av, %i.aw
  %i.ay = cmpxchg weak ptr %i.c, i64 %.029.i, i64 %i.ax acq_rel acquire, align 64 ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  %i.ba = extractvalue { i64, i1 } %i.ay, 0
  br i1 %i.az, label %bb.m, label %bb.k, !llvm.loop !37

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr i8, ptr %i.ar, i64 176
  %3 = atomicrmw add ptr %i.an, i64 -1 monotonic, align 64 ; 0 uses
  store atomic ptr null, ptr %i.bb release, align 8
  %i.bc = getelementptr i8, ptr %i.b, i64 128
  %4 = atomicrmw add ptr %i.bc, i64 -1 monotonic, align 64 ; 0 uses
  %i.bd = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.ar, ptr noundef %0, i64 noundef 0, ptr noundef null, ptr noundef %1) ; 0 uses
  br label %bb.b, !llvm.loop !568

mi_abandoned_pop.exit.thread:                     ; preds = %bb.c, %bb.d, %mi_abandoned_pop.exit.thread6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @mi_segment_reclaim(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 0, 16777217) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address) %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %3, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !142
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #57, !srcloc !99
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = getelementptr i8, ptr %0, i64 256
  store atomic i64 %i.c, ptr %i.d seq_cst, align 8, !tbaa !201
  %i.e = getelementptr i8, ptr %0, i64 200
  store i64 0, ptr %i.e, align 8, !tbaa !203
  %i.f = getelementptr i8, ptr %0, i64 224
  %.val49 = load i64, ptr %i.f, align 8, !tbaa !124
  %i.g = shl i64 %.val49, 16
  tail call fastcc void @mi_segments_track_size(i64 noundef %i.g, ptr noundef %4)
  %i.h = getelementptr i8, ptr %4, i64 896        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172  ; 6 uses
  %i.j = getelementptr i8, ptr %i.i, i64 224      ; 2 uses
  %i.k = icmp uge ptr %i.j, @_mi_stats_main
  %i.l = icmp ult ptr %i.j, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  %i.n = getelementptr i8, ptr %i.i, i64 248      ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %5 = atomicrmw add ptr %i.n, i64 -1 monotonic, align 8
  %i.o = getelementptr i8, ptr %i.i, i64 240      ; 2 uses
  %i.p = add i64 %5, -1                           ; 2 uses
  %i.q = load atomic i64, ptr %i.o monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i.i = phi i64 [ %i.q, %bb.d ], [ %i.u, %bb.f ] ; 2 uses
  %i.r = icmp slt i64 %.0.i.i.i, %i.p
  br i1 %i.r, label %bb.f, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = cmpxchg weak ptr %i.o, i64 %.0.i.i.i, i64 %i.p release monotonic, align 8 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  br i1 %i.t, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.e, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.f, %bb.e
  %i.v = getelementptr i8, ptr %i.i, i64 232
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.g:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.n, align 8, !tbaa !144
  %i.y = add i64 %i.x, -1                         ; 3 uses
  store i64 %i.y, ptr %i.n, align 8, !tbaa !144
  %i.z = getelementptr i8, ptr %i.i, i64 240      ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !145
  %i.ab = icmp sgt i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.y, ptr %i.z, align 8, !tbaa !145
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr i8, ptr %i.i, i64 232     ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !147
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !147
  br label %_mi_stat_decrease.exit

_mi_stat_decrease.exit:                           ; preds = %mi_atomic_maxi64_relaxed.exit.i.i, %bb.i
  %i.af = getelementptr i8, ptr %0, i64 264       ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 248
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !195
  %i.ai = getelementptr [80 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !93
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr [80 x i8], ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.ai
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_mi_stat_decrease.exit
  %i.an = getelementptr i8, ptr %1, i64 3057
  %i.ao = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.ap = icmp samesign ult i64 %2, 131073        ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.av
  %.093 = phi ptr [ %i.al, %.lr.ph ], [ %i.hp, %bb.av ] ; 19 uses
  %i.aq = getelementptr i8, ptr %.093, i64 28     ; 3 uses
  %.0.val = load i32, ptr %i.aq, align 4, !tbaa !65
  %.not = icmp eq i32 %.0.val, 0
  br i1 %.not, label %bb.au, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %.093, i64 8
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = lshr i8 %i.as, 3
  %i.au = and i8 %i.at, 15                        ; 2 uses
  %i.av = load i8, ptr %i.an, align 1, !tbaa !176
  %i.aw = icmp eq i8 %i.av, %i.au
  br i1 %i.aw, label %mi_heap_by_tag.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %1, align 8, !tbaa !72
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %.01014.i = load ptr, ptr %i.ay, align 8, !tbaa !95 ; 2 uses
  %.not15.i = icmp eq ptr %.01014.i, null
  br i1 %.not15.i, label %mi_heap_by_tag.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.01016.i = phi ptr [ %.010.i, %bb.m ], [ %.01014.i, %bb.l ] ; 3 uses
  %i.az = getelementptr i8, ptr %.01016.i, i64 3057
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !176
  %i.bb = icmp eq i8 %i.ba, %i.au
  br i1 %i.bb, label %mi_heap_by_tag.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr i8, ptr %.01016.i, i64 3048
  %.010.i = load ptr, ptr %i.bc, align 8, !tbaa !95 ; 2 uses
  %.not.i = icmp eq ptr %.010.i, null
  br i1 %.not.i, label %mi_heap_by_tag.exit, label %.lr.ph.i, !llvm.loop !569

mi_heap_by_tag.exit:                              ; preds = %.lr.ph.i, %bb.m, %bb.k, %bb.l
  %.1.i = phi ptr [ %1, %bb.k ], [ null, %bb.l ], [ %.01016.i, %.lr.ph.i ], [ null, %bb.m ] ; 4 uses
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !172 ; 6 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 256    ; 2 uses
  %i.bf = icmp uge ptr %i.be, @_mi_stats_main
  %i.bg = icmp ult ptr %i.be, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  %i.bi = getelementptr i8, ptr %i.bd, i64 280    ; 3 uses
  br i1 %i.bh, label %bb.n, label %bb.q

bb.n:                                             ; preds = %mi_heap_by_tag.exit
  %6 = atomicrmw add ptr %i.bi, i64 -1 monotonic, align 8
  %i.bj = getelementptr i8, ptr %i.bd, i64 272    ; 2 uses
  %i.bk = add i64 %6, -1                          ; 2 uses
  %i.bl = load atomic i64, ptr %i.bj monotonic, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0.i.i.i50 = phi i64 [ %i.bl, %bb.n ], [ %i.bp, %bb.p ] ; 2 uses
  %i.bm = icmp slt i64 %.0.i.i.i50, %i.bk
  br i1 %i.bm, label %bb.p, label %mi_atomic_maxi64_relaxed.exit.i.i51

bb.p:                                             ; preds = %bb.o
  %i.bn = cmpxchg weak ptr %i.bj, i64 %.0.i.i.i50, i64 %i.bk release monotonic, align 8 ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bn, 1
  %i.bp = extractvalue { i64, i1 } %i.bn, 0
  br i1 %i.bo, label %mi_atomic_maxi64_relaxed.exit.i.i51, label %bb.o, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i51:              ; preds = %bb.p, %bb.o
  %i.bq = getelementptr i8, ptr %i.bd, i64 264
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit52

bb.q:                                             ; preds = %mi_heap_by_tag.exit
  %i.bs = load i64, ptr %i.bi, align 8, !tbaa !144
  %i.bt = add i64 %i.bs, -1                       ; 3 uses
  store i64 %i.bt, ptr %i.bi, align 8, !tbaa !144
  %i.bu = getelementptr i8, ptr %i.bd, i64 272    ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !145
  %i.bw = icmp sgt i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !145
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = getelementptr i8, ptr %i.bd, i64 264    ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !147
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !147
  br label %_mi_stat_decrease.exit52

_mi_stat_decrease.exit52:                         ; preds = %mi_atomic_maxi64_relaxed.exit.i.i51, %bb.s
  %i.ca = load i64, ptr %i.ao, align 8, !tbaa !113
  %i.cb = add i64 %i.ca, -1
  store i64 %i.cb, ptr %i.ao, align 8, !tbaa !113
  %i.cc = getelementptr i8, ptr %.093, i64 48
  %i.cd = ptrtoint ptr %.1.i to i64
  store atomic i64 %i.cd, ptr %i.cc release, align 8
  %i.ce = getelementptr i8, ptr %.093, i64 40     ; 24 uses
  br label %.critedge.i55

.critedge.i55:                                    ; preds = %bb.x, %_mi_stat_decrease.exit52
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 3 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 3
  switch i32 %i.ch, label %bb.x [
    i32 1, label %.critedge.outer.1.i58
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !179

.critedge.outer.1.i58:                            ; preds = %.critedge.i55
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.1.i59

.critedge.1.i59:                                  ; preds = %bb.t, %.critedge.outer.1.i58
  %i.ci = load atomic i64, ptr %i.ce acquire, align 8 ; 3 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 3
  switch i32 %i.ck, label %bb.t [
    i32 1, label %.critedge.outer.2.i61
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !179

.critedge.outer.2.i61:                            ; preds = %.critedge.1.i59
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2.i62

bb.t:                                             ; preds = %.critedge.1.i59
  %i.cl = and i64 %i.ci, -4
  %i.cm = cmpxchg weak ptr %i.ce, i64 %i.ci, i64 %i.cl release monotonic, align 8
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %_mi_page_use_delayed_free.exit, label %.critedge.1.i59, !llvm.loop !5

.critedge.2.i62:                                  ; preds = %bb.u, %.critedge.outer.2.i61
  %i.co = load atomic i64, ptr %i.ce acquire, align 8 ; 3 uses
  %i.cp = trunc i64 %i.co to i32
  %i.cq = and i32 %i.cp, 3
  switch i32 %i.cq, label %bb.u [
    i32 1, label %.critedge.outer.3.i64
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !179

.critedge.outer.3.i64:                            ; preds = %.critedge.2.i62
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i65

bb.u:                                             ; preds = %.critedge.2.i62
  %i.cr = and i64 %i.co, -4
  %i.cs = cmpxchg weak ptr %i.ce, i64 %i.co, i64 %i.cr release monotonic, align 8
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  br i1 %i.ct, label %_mi_page_use_delayed_free.exit, label %.critedge.2.i62, !llvm.loop !5

.critedge.3.i65:                                  ; preds = %bb.v, %.critedge.outer.3.i64
  %i.cu = load atomic i64, ptr %i.ce acquire, align 8 ; 3 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 3
  switch i32 %i.cw, label %bb.v [
    i32 1, label %.critedge.outer.4.i67
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !179

.critedge.outer.4.i67:                            ; preds = %.critedge.3.i65
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4.i68

bb.v:                                             ; preds = %.critedge.3.i65
  %i.cx = and i64 %i.cu, -4
  %i.cy = cmpxchg weak ptr %i.ce, i64 %i.cu, i64 %i.cx release monotonic, align 8
  %i.cz = extractvalue { i64, i1 } %i.cy, 1
  br i1 %i.cz, label %_mi_page_use_delayed_free.exit, label %.critedge.3.i65, !llvm.loop !5

.critedge.4.i68:                                  ; preds = %bb.w, %.critedge.outer.4.i67
  %i.da = load atomic i64, ptr %i.ce acquire, align 8 ; 3 uses
  %i.db = trunc i64 %i.da to i32
  %i.dc = and i32 %i.db, 3
  switch i32 %i.dc, label %bb.w [
    i32 1, label %.lr.ph.i53
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !179

bb.w:                                             ; preds = %.critedge.4.i68
  %i.dd = and i64 %i.da, -4
  %i.de = cmpxchg weak ptr %i.ce, i64 %i.da, i64 %i.dd release monotonic, align 8
  %i.df = extractvalue { i64, i1 } %i.de, 1
  br i1 %i.df, label %_mi_page_use_delayed_free.exit, label %.critedge.4.i68, !llvm.loop !5

bb.x:                                             ; preds = %.critedge.i55
  %i.dg = and i64 %i.cf, -4
  %i.dh = cmpxchg weak ptr %i.ce, i64 %i.cf, i64 %i.dg release monotonic, align 8
  %i.di = extractvalue { i64, i1 } %i.dh, 1
  br i1 %i.di, label %_mi_page_use_delayed_free.exit, label %.critedge.i55, !llvm.loop !5

.lr.ph.i53:                                       ; preds = %.critedge.4.i, %.critedge.4.i68
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ac, %.lr.ph.i53
  %i.dj = load atomic i64, ptr %i.ce acquire, align 8 ; 3 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 3
  switch i32 %i.dl, label %bb.ac [
    i32 1, label %.critedge.outer.1.i
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !179

.critedge.outer.1.i:                              ; preds = %.critedge.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.y, %.critedge.outer.1.i
  %i.dm = load atomic i64, ptr %i.ce acquire, align 8 ; 3 uses
  %i.dn = trunc i64 %i.dm to i32
  %i.do = and i32 %i.dn, 3
  switch i32 %i.do, label %bb.y [
    i32 1, label %.critedge.outer.2.i
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !179

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2.i

bb.y:                                             ; preds = %.critedge.1.i
  %i.dp = and i64 %i.dm, -4
  %i.dq = cmpxchg weak ptr %i.ce, i64 %i.dm, i64 %i.dp release monotonic, align 8
  %i.dr = extractvalue { i64, i1 } %i.dq, 1
  br i1 %i.dr, label %_mi_page_use_delayed_free.exit, label %.critedge.1.i, !llvm.loop !5

.critedge.2.i:                                    ; preds = %bb.z, %.critedge.outer.2.i
  %i.ds = load atomic i64, ptr %i.ce acquire, align 8 ; 3 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.dt, 3
  switch i32 %i.du, label %bb.z [
    i32 1, label %.critedge.outer.3.i
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !179

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i

bb.z:                                             ; preds = %.critedge.2.i
  %i.dv = and i64 %i.ds, -4
  %i.dw = cmpxchg weak ptr %i.ce, i64 %i.ds, i64 %i.dv release monotonic, align 8
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  br i1 %i.dx, label %_mi_page_use_delayed_free.exit, label %.critedge.2.i, !llvm.loop !5

.critedge.3.i:                                    ; preds = %bb.aa, %.critedge.outer.3.i
  %i.dy = load atomic i64, ptr %i.ce acquire, align 8 ; 3 uses
  %i.dz = trunc i64 %i.dy to i32
end_hunk_3
begin_hunk_4_@mi_segment_reclaim:bb.a
  %i.hl = and i1 %i.hk, %or.cond
  %or.cond48 = and i1 %i.a, %i.hl
  br i1 %or.cond48, label %bb.at, label %bb.av

bb.at:                                            ; preds = %mi_page_has_any_available.exit
  store i8 1, ptr %3, align 1, !tbaa !142
  br label %bb.av

bb.au:                                            ; preds = %bb.j
  %i.hm = tail call fastcc ptr @mi_segment_span_free_coalesce(ptr noundef nonnull %.093, ptr noundef %4)
  br label %bb.av

bb.av:                                            ; preds = %bb.ak, %bb.at, %mi_page_has_any_available.exit, %_mi_page_reclaim.exit, %bb.au
  %.2 = phi ptr [ %i.hm, %bb.au ], [ %i.gb, %bb.ak ], [ %.093, %bb.at ], [ %.093, %_mi_page_reclaim.exit ], [ %.093, %mi_page_has_any_available.exit ] ; 2 uses
  %i.hn = load i32, ptr %.2, align 8, !tbaa !93
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr [80 x i8], ptr %.2, i64 %i.ho ; 2 uses
  %i.hq = icmp ult ptr %i.hp, %i.ai
  br i1 %i.hq, label %bb.j, label %._crit_edge, !llvm.loop !570

._crit_edge:                                      ; preds = %bb.av, %_mi_stat_decrease.exit
  %i.hr = getelementptr i8, ptr %0, i64 208
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !112
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %0, ptr noundef %4)
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge, %bb.aw
  %.044 = phi ptr [ null, %bb.aw ], [ %0, %._crit_edge ]
  ret ptr %.044
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_abandoned_collect(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 15 uses
  br i1 %1, label %bb.b, label %mi_abandoned_visited_revisit.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic ptr, ptr %i.b monotonic, align 64
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %mi_abandoned_visited_revisit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw xchg ptr %i.b, ptr null acq_rel, align 64 ; 4 uses
  %.not54.i = icmp eq ptr %i.e, null
  br i1 %.not54.i, label %mi_abandoned_visited_revisit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.b, i64 64       ; 4 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 64 ; 3 uses
  %i.h = icmp ult i64 %i.g, 33554432
  br i1 %i.h, label %bb.e, label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %bb.e, %bb.d
  br label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.b, i64 192      ; 2 uses
  %i.j = load atomic i64, ptr %i.i monotonic, align 64 ; 2 uses
  %i.k = add nuw nsw i64 %i.g, 1
  %i.l = and i64 %i.k, 33554431
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = or i64 %i.l, %i.m
  %i.o = cmpxchg ptr %i.f, i64 %i.g, i64 %i.n acq_rel acquire, align 64
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.f, label %.critedge.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.b, i64 128
  %i.r = atomicrmw add ptr %i.q, i64 %i.j monotonic, align 64 ; 0 uses
  %i.s = atomicrmw sub ptr %i.i, i64 %i.j monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit

.critedge.i:                                      ; preds = %.critedge.i.preheader, %.critedge.i
  %.050.i = phi ptr [ %i.u, %.critedge.i ], [ %i.e, %.critedge.i.preheader ] ; 2 uses
  %i.t = getelementptr i8, ptr %.050.i, i64 176
  %i.u = load atomic ptr, ptr %i.t monotonic, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.g, label %.critedge.i, !llvm.loop !35

bb.g:                                             ; preds = %.critedge.i
  %i.v = getelementptr i8, ptr %.050.i, i64 176
  %i.w = load atomic i64, ptr %i.f monotonic, align 64
  %i.x = getelementptr i8, ptr %i.b, i64 192      ; 2 uses
  %i.y = ptrtoint ptr %i.e to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.051.i = phi i64 [ %i.w, %bb.g ], [ %i.ah, %bb.h ] ; 3 uses
  %i.z = load atomic i64, ptr %i.x monotonic, align 64 ; 2 uses
  %i.aa = and i64 %.051.i, -33554432
  %i.ab = inttoptr i64 %i.aa to ptr
  store atomic ptr %i.ab, ptr %i.v release, align 8
  %i.ac = add i64 %.051.i, 1
  %i.ad = and i64 %i.ac, 33554431
  %i.ae = or i64 %i.ad, %i.y
  %i.af = cmpxchg weak ptr %i.f, i64 %.051.i, i64 %i.ae release monotonic, align 64 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.h, !llvm.loop !36

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.b, i64 128
  %i.aj = atomicrmw add ptr %i.ai, i64 %i.z monotonic, align 64 ; 0 uses
  %i.ak = atomicrmw sub ptr %i.x, i64 %i.z monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit

mi_abandoned_visited_revisit.exit:                ; preds = %bb.i, %bb.f, %bb.c, %bb.b, %bb.a
  %i.al = phi i32 [ 16383, %bb.i ], [ 16383, %bb.f ], [ 16383, %bb.c ], [ 16383, %bb.b ], [ 1023, %bb.a ]
  %i.am = getelementptr i8, ptr %i.b, i64 64      ; 7 uses
  %i.an = getelementptr i8, ptr %i.b, i64 192     ; 4 uses
  %i.ao = getelementptr i8, ptr %i.b, i64 128     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 256     ; 3 uses
  %i.aq = getelementptr i8, ptr %2, i64 896
  br label %bb.j

bb.j:                                             ; preds = %mi_abandoned_visited_revisit.exit, %bb.w
  %i.ar = phi i32 [ %i.al, %mi_abandoned_visited_revisit.exit ], [ %i.cv, %bb.w ] ; 2 uses
  %i.as = load atomic i64, ptr %i.am monotonic, align 64
  %i.at = icmp ult i64 %i.as, 33554432
  br i1 %i.at, label %bb.k, label %mi_abandoned_visited_revisit.exit.thread.i, !prof !96

bb.k:                                             ; preds = %bb.j
  %i.au = load atomic ptr, ptr %i.b monotonic, align 64
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = atomicrmw xchg ptr %i.b, ptr null acq_rel, align 64 ; 4 uses
  %.not54.i.i = icmp eq ptr %i.aw, null
  br i1 %.not54.i.i, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load atomic i64, ptr %i.am monotonic, align 64 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 33554432
  br i1 %i.ay, label %bb.n, label %.critedge.i.i.preheader

bb.n:                                             ; preds = %bb.m
  %i.az = load atomic i64, ptr %i.an monotonic, align 64
  %i.ba = add nuw nsw i64 %i.ax, 1
  %i.bb = and i64 %i.ba, 33554431
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = or i64 %i.bb, %i.bc
  %i.be = cmpxchg ptr %i.am, i64 %i.ax, i64 %i.bd acq_rel acquire, align 64
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %mi_abandoned_visited_revisit.exit.thread.i.sink.split, label %.critedge.i.i.preheader, !prof !204

.critedge.i.i.preheader:                          ; preds = %bb.n, %bb.m
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %.critedge.i.i
  %.050.i.i = phi ptr [ %i.bh, %.critedge.i.i ], [ %i.aw, %.critedge.i.i.preheader ] ; 2 uses
  %i.bg = getelementptr i8, ptr %.050.i.i, i64 176
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %bb.o, label %.critedge.i.i, !llvm.loop !35

bb.o:                                             ; preds = %.critedge.i.i
  %i.bi = getelementptr i8, ptr %.050.i.i, i64 176
  %i.bj = load atomic i64, ptr %i.am monotonic, align 64
  %i.bk = ptrtoint ptr %i.aw to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.051.i.i = phi i64 [ %i.bj, %bb.o ], [ %i.bt, %bb.p ] ; 3 uses
  %i.bl = load atomic i64, ptr %i.an monotonic, align 64
  %i.bm = and i64 %.051.i.i, -33554432
  %i.bn = inttoptr i64 %i.bm to ptr
  store atomic ptr %i.bn, ptr %i.bi release, align 8
  %i.bo = add i64 %.051.i.i, 1
  %i.bp = and i64 %i.bo, 33554431
  %i.bq = or i64 %i.bp, %i.bk
  %i.br = cmpxchg weak ptr %i.am, i64 %.051.i.i, i64 %i.bq release monotonic, align 64 ; 2 uses
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  %i.bt = extractvalue { i64, i1 } %i.br, 0
  br i1 %i.bs, label %mi_abandoned_visited_revisit.exit.thread.i.sink.split, label %bb.p, !prof !204, !llvm.loop !36

mi_abandoned_visited_revisit.exit.thread.i.sink.split: ; preds = %bb.p, %bb.n
  %.lcssa37.sink42 = phi i64 [ %i.az, %bb.n ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bu = atomicrmw add ptr %i.ao, i64 %.lcssa37.sink42 monotonic, align 64 ; 0 uses
  %i.bv = atomicrmw sub ptr %i.an, i64 %.lcssa37.sink42 monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i

mi_abandoned_visited_revisit.exit.thread.i:       ; preds = %mi_abandoned_visited_revisit.exit.thread.i.sink.split, %bb.j
  %i.bw = atomicrmw add ptr %i.ap, i64 1 monotonic, align 64 ; 0 uses
  %i.bx = load atomic i64, ptr %i.am acquire, align 64
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %mi_abandoned_visited_revisit.exit.thread.i
  %.029.i = phi i64 [ %i.bx, %mi_abandoned_visited_revisit.exit.thread.i ], [ %i.ci, %bb.r ] ; 3 uses
  %i.by = and i64 %.029.i, -33554432              ; 2 uses
  %.not.i17 = icmp eq i64 %i.by, 0
  br i1 %.not.i17, label %mi_abandoned_pop.exit.thread21, label %bb.r

mi_abandoned_pop.exit.thread21:                   ; preds = %bb.q
  %3 = atomicrmw add ptr %i.ap, i64 -1 monotonic, align 64 ; 0 uses
  br label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bz = inttoptr i64 %i.by to ptr               ; 7 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 176
  %i.cb = load atomic ptr, ptr %i.ca monotonic, align 16
  %i.cc = add i64 %.029.i, 1
  %i.cd = and i64 %i.cc, 33554431
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = or i64 %i.cd, %i.ce
  %i.cg = cmpxchg weak ptr %i.am, i64 %.029.i, i64 %i.cf acq_rel acquire, align 64 ; 2 uses
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  %i.ci = extractvalue { i64, i1 } %i.cg, 0
  br i1 %i.ch, label %bb.s, label %bb.q, !llvm.loop !37

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr i8, ptr %i.bz, i64 176    ; 2 uses
  %4 = atomicrmw add ptr %i.ap, i64 -1 monotonic, align 64 ; 0 uses
  store atomic ptr null, ptr %i.cj release, align 8
  %5 = atomicrmw add ptr %i.ao, i64 -1 monotonic, align 64 ; 0 uses
  %i.ck = tail call fastcc zeroext i1 @mi_segment_check_free(ptr noundef %i.bz, i64 noundef 0, i64 noundef 0, ptr noundef %2) ; 0 uses
  %i.cl = getelementptr i8, ptr %i.bz, i64 208
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !112
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.bz, ptr noundef %0, i64 noundef 0, ptr noundef null, ptr noundef %2) ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cp = load ptr, ptr %i.aq, align 8, !tbaa !172
  tail call fastcc void @mi_segment_try_purge(ptr noundef nonnull %i.bz, i1 noundef zeroext %1, ptr noundef %i.cp)
  %i.cq = load atomic ptr, ptr %i.b monotonic, align 64
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.0.i18 = phi ptr [ %i.cq, %bb.u ], [ %i.ct, %bb.v ] ; 2 uses
  store atomic ptr %.0.i18, ptr %i.cj release, align 8
  %i.cr = cmpxchg weak ptr %i.b, ptr %.0.i18, ptr %i.bz release monotonic, align 64 ; 2 uses
  %i.cs = extractvalue { ptr, i1 } %i.cr, 1
  %i.ct = extractvalue { ptr, i1 } %i.cr, 0
  br i1 %i.cs, label %mi_abandoned_visited_push.exit, label %bb.v, !llvm.loop !38

mi_abandoned_visited_push.exit:                   ; preds = %bb.v
  %i.cu = atomicrmw add ptr %i.an, i64 1 monotonic, align 64 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %mi_abandoned_visited_push.exit, %bb.t
  %i.cv = add nsw i32 %i.ar, -1
  %i.cw = icmp sgt i32 %i.ar, 0
  br i1 %i.cw, label %bb.j, label %.critedge, !llvm.loop !571

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.w, %mi_abandoned_pop.exit.thread21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @mi_segment_check_free(ptr noundef nonnull %0, i64 noundef range(i64 0, 281474976710656) %1, i64 noundef range(i64 0, 16777217) %2, ptr nofree noundef captures(address) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 248
  %i.c = load i64, ptr %i.b, align 8, !tbaa !195
  %i.d = getelementptr [80 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !93
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr [80 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = icmp ult ptr %i.g, %i.d
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 896
  %i.j = getelementptr i8, ptr %0, i64 192        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.030 = phi ptr [ %i.g, %.lr.ph ], [ %i.cp, %bb.u ] ; 16 uses
  %.02029 = phi i1 [ false, %.lr.ph ], [ %.222, %bb.u ] ; 4 uses
  %i.k = getelementptr i8, ptr %.030, i64 28      ; 2 uses
  %.0.val = load i32, ptr %i.k, align 4, !tbaa !65
  %.not27 = icmp eq i32 %.0.val, 0
  br i1 %.not27, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.030, i64 40      ; 4 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %.not.i = icmp ult i64 %i.m, 4
  br i1 %.not.i, label %_mi_page_thread_free_collect.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load atomic i64, ptr %i.l monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.029.i.i = phi i64 [ %i.n, %bb.d ], [ %i.r, %bb.e ] ; 3 uses
  %i.o = and i64 %.029.i.i, 3
  %i.p = cmpxchg weak ptr %i.l, i64 %.029.i.i, i64 %i.o acq_rel acquire, align 8 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.e
  %i.s = and i64 %.029.i.i, -4                    ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_mi_page_thread_free_collect.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %.030, i64 10
  %i.w = load i16, ptr %i.v, align 2, !tbaa !114  ; 2 uses
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = load atomic i64, ptr %i.t monotonic, align 8 ; 2 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ne i16 %i.w, 0
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ac = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.y, %bb.g ]
  %.02834.i.i = phi i32 [ %i.ae, %.lr.ph.i.i ], [ 1, %bb.g ] ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = add nuw nsw i32 %.02834.i.i, 1          ; 2 uses
  %i.af = load atomic i64, ptr %i.ad monotonic, align 8 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = icmp samesign ult i32 %.02834.i.i, %i.x
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.g
  %.028.lcssa.i.i = phi i32 [ 1, %bb.g ], [ %i.ae, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.g ], [ %i.ad, %.lr.ph.i.i ]
  %i.aj = icmp samesign ugt i32 %.028.lcssa.i.i, %i.x
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ak = getelementptr i8, ptr %.030, i64 32     ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !98
  %i.am = ptrtoint ptr %i.al to i64
  store atomic i64 %i.am, ptr %.0.lcssa.i.i monotonic, align 8
  store ptr %i.t, ptr %i.ak, align 8, !tbaa !98
  %i.an = getelementptr i8, ptr %.030, i64 24     ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !62
  %i.ap = sub i32 %i.ao, %.028.lcssa.i.i
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !62
  br label %_mi_page_thread_free_collect.exit.i

_mi_page_thread_free_collect.exit.i:              ; preds = %bb.i, %bb.h, %bb.f, %bb.c
  %i.aq = getelementptr i8, ptr %.030, i64 32     ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !98 ; 2 uses
  %.not22.i = icmp eq ptr %i.ar, null
  br i1 %.not22.i, label %_mi_page_free_collect.exit, label %bb.j

bb.j:                                             ; preds = %_mi_page_thread_free_collect.exit.i
  %i.as = getelementptr i8, ptr %.030, i64 16     ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !96

.sink.split.i:                                    ; preds = %bb.j
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !60
  store ptr null, ptr %i.aq, align 8, !tbaa !98
  %i.av = getelementptr i8, ptr %.030, i64 15     ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = and i8 %i.aw, -2
  store i8 %i.ax, ptr %i.av, align 1
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.j, %_mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.ay = getelementptr i8, ptr %.030, i64 24
  %.val = load i32, ptr %i.ay, align 8, !tbaa !62 ; 2 uses
  %i.az = icmp eq i32 %.val, 0
  br i1 %i.az, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_mi_page_free_collect.exit
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !172 ; 6 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 256    ; 2 uses
  %i.bc = icmp uge ptr %i.bb, @_mi_stats_main
  %i.bd = icmp ult ptr %i.bb, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  %i.bf = getelementptr i8, ptr %i.ba, i64 280    ; 3 uses
  br i1 %i.be, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %4 = atomicrmw add ptr %i.bf, i64 -1 monotonic, align 8
  %i.bg = getelementptr i8, ptr %i.ba, i64 272    ; 2 uses
  %i.bh = add i64 %4, -1                          ; 2 uses
  %i.bi = load atomic i64, ptr %i.bg monotonic, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.0.i.i.i = phi i64 [ %i.bi, %bb.l ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bj = icmp slt i64 %.0.i.i.i, %i.bh
  br i1 %i.bj, label %bb.n, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bk = cmpxchg weak ptr %i.bg, i64 %.0.i.i.i, i64 %i.bh release monotonic, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0
  br i1 %i.bl, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.m, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.n, %bb.m
  %i.bn = getelementptr i8, ptr %i.ba, i64 264
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.o:                                             ; preds = %bb.k
  %i.bp = load i64, ptr %i.bf, align 8, !tbaa !144
  %i.bq = add i64 %i.bp, -1                       ; 3 uses
  store i64 %i.bq, ptr %i.bf, align 8, !tbaa !144
  %i.br = getelementptr i8, ptr %i.ba, i64 272    ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !145
  %i.bt = icmp sgt i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !145
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = getelementptr i8, ptr %i.ba, i64 264    ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !147
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !147
  br label %_mi_stat_decrease.exit

_mi_stat_decrease.exit:                           ; preds = %mi_atomic_maxi64_relaxed.exit.i.i, %bb.q
  %i.bx = load i64, ptr %i.j, align 8, !tbaa !113
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.j, align 8, !tbaa !113
  %i.bz = tail call fastcc ptr @mi_segment_page_clear(ptr noundef %.030, ptr noundef %3) ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !93
  %i.cb = zext i32 %i.ca to i64
  %.not23 = icmp samesign ule i64 %1, %i.cb
  %spec.select25 = select i1 %.not23, i1 true, i1 %.02029
  br label %bb.u

bb.r:                                             ; preds = %_mi_page_free_collect.exit
  %i.cc = load i32, ptr %i.k, align 4, !tbaa !65
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp eq i64 %2, %i.cd
  br i1 %i.ce, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %.030, i64 12
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !181
  %i.ch = zext i16 %i.cg to i32
  %i.ci = icmp ult i32 %.val, %i.ch
  br i1 %i.ci, label %mi_page_has_any_available.exit.thread, label %mi_page_has_any_available.exit

mi_page_has_any_available.exit:                   ; preds = %bb.s
  %i.cj = load atomic i64, ptr %i.l monotonic, align 8
  %.fr = freeze i64 %i.cj
  %i.ck = icmp ugt i64 %.fr, 3
  br i1 %i.ck, label %mi_page_has_any_available.exit.thread, label %bb.u

mi_page_has_any_available.exit.thread:            ; preds = %bb.s, %mi_page_has_any_available.exit
  br label %bb.u

bb.t:                                             ; preds = %bb.b
  %i.cl = load i32, ptr %.030, align 8, !tbaa !93
  %i.cm = zext i32 %i.cl to i64
  %.not = icmp samesign ule i64 %1, %i.cm
  %spec.select24 = select i1 %.not, i1 true, i1 %.02029
  br label %bb.u

bb.u:                                             ; preds = %mi_page_has_any_available.exit.thread, %mi_page_has_any_available.exit, %_mi_stat_decrease.exit, %bb.t, %bb.r
  %.222 = phi i1 [ %spec.select25, %_mi_stat_decrease.exit ], [ %.02029, %bb.r ], [ %spec.select24, %bb.t ], [ true, %mi_page_has_any_available.exit.thread ], [ %.02029, %mi_page_has_any_available.exit ] ; 2 uses
  %.2 = phi ptr [ %i.bz, %_mi_stat_decrease.exit ], [ %.030, %bb.r ], [ %.030, %bb.t ], [ %.030, %mi_page_has_any_available.exit.thread ], [ %.030, %mi_page_has_any_available.exit ] ; 2 uses
  %i.cn = load i32, ptr %.2, align 8, !tbaa !93
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr [80 x i8], ptr %.2, i64 %i.co ; 2 uses
  %i.cq = icmp ult ptr %i.cp, %i.d
  br i1 %i.cq, label %bb.b, label %._crit_edge, !llvm.loop !572

._crit_edge:                                      ; preds = %bb.u, %bb.a
  %.020.lcssa = phi i1 [ false, %bb.a ], [ %.222, %bb.u ]
  ret i1 %.020.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_segment_try_purge(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef captures(address) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.mi_commit_mask_s, align 8   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !205, !range !86, !noundef !87
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %mi_commit_mask_is_empty.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !128
  %.not.1.i = icmp eq i64 %i.g, 0
  br i1 %.not.1.i, label %bb.d, label %mi_commit_mask_is_empty.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !128
  %.not.2.i = icmp eq i64 %i.i, 0
  br i1 %.not.2.i, label %bb.e, label %mi_commit_mask_is_empty.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !128
  %.not.3.i = icmp eq i64 %i.k, 0
  br i1 %.not.3.i, label %bb.f, label %mi_commit_mask_is_empty.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 80
  %i.m = load i64, ptr %i.l, align 8, !tbaa !128
  %.not.4.i = icmp eq i64 %i.m, 0
  br i1 %.not.4.i, label %bb.g, label %mi_commit_mask_is_empty.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 88
  %i.o = load i64, ptr %i.n, align 8, !tbaa !128
  %.not.5.i = icmp eq i64 %i.o, 0
  br i1 %.not.5.i, label %bb.h, label %mi_commit_mask_is_empty.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 96
  %i.q = load i64, ptr %i.p, align 8, !tbaa !128
  %.not.6.i = icmp eq i64 %i.q, 0
  br i1 %.not.6.i, label %mi_commit_mask_is_empty.exit, label %mi_commit_mask_is_empty.exit.thread

mi_commit_mask_is_empty.exit:                     ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 104
  %i.s = load i64, ptr %i.r, align 8, !tbaa !128
  %.not.7.i = icmp eq i64 %i.s, 0
  br i1 %.not.7.i, label %bb.t, label %mi_commit_mask_is_empty.exit.thread

mi_commit_mask_is_empty.exit.thread:              ; preds = %bb.h, %bb.e, %bb.g, %bb.d, %bb.c, %bb.f, %bb.b, %mi_commit_mask_is_empty.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.t = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #52 ; 0 uses
  %i.u = load i64, ptr %3, align 8, !tbaa !153
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  br i1 %1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %mi_commit_mask_is_empty.exit.thread
  %i.x = sdiv i64 %i.w, 1000000
  %i.y = mul i64 %i.u, 1000
  %i.z = add i64 %i.x, %i.y
  %i.aa = getelementptr i8, ptr %0, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !206
  %i.ac = icmp slt i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i, %mi_commit_mask_is_empty.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !tbaa.struct !207
  %i.ad = getelementptr i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i8 0, i64 72, i1 false)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j, %bb.s
  %i.ae = phi i64 [ 0, %bb.j ], [ %i.bk, %bb.s ]  ; 3 uses
  %storemerge29 = phi i64 [ 0, %bb.j ], [ %i.bj, %bb.s ]
  %i.af = and i64 %storemerge29, 63               ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %4, i64 %i.ae
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !128
  %i.ai = lshr i64 %i.ah, %i.af                   ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ai, 0
  br i1 %.not.peel.i, label %bb.k, label %.preheader.i

bb.k:                                             ; preds = %.lr.ph.preheader.i
  %i.aj = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %i.aj, 8
  br i1 %exitcond.peel.not.i, label %_mi_commit_mask_next_run.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %.03348.i = phi i64 [ %i.as, %bb.l ], [ %i.aj, %bb.k ] ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %4, i64 %.03348.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !128 ; 2 uses
  %.not.i15 = icmp eq i64 %i.al, 0
  br i1 %.not.i15, label %bb.l, label %.preheader.i

end_hunk_4
begin_hunk_5_@mi_segments_page_alloc:bb.a
  %i.bz = lshr i64 %i.bv, %i.by
  %i.ca = and i64 %i.bz, 3
  %i.cb = or disjoint i64 %i.ca, %i.bx
  %i.cc = xor i64 %i.cb, 252
  %i.cd = add nsw i64 %i.cc, -4
  br label %mi_span_queue_for.exit.i.i.i

mi_span_queue_for.exit.i.i.i:                     ; preds = %bb.n, %bb.m
  %.1.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.m ], [ %i.cd, %bb.n ]
  %i.ce = getelementptr [24 x i8], ptr %3, i64 %.1.i.i.i.i.i.i
  br label %bb.o

bb.o:                                             ; preds = %mi_span_queue_for.exit.i.i.i, %bb.l, %bb.k
  %i.cf = phi ptr [ %i.ce, %mi_span_queue_for.exit.i.i.i ], [ null, %bb.l ], [ null, %bb.k ] ; 4 uses
  %i.cg = getelementptr i8, ptr %.us-phi61.i, i64 %reass.sub ; 2 uses
  %i.ch = getelementptr [80 x i8], ptr %i.cg, i64 %spec.store.select.i ; 8 uses
  %i.ci = trunc nuw i64 %i.bn to i32              ; 2 uses
  store i32 %i.ci, ptr %i.ch, align 8, !tbaa !93
  %i.cj = getelementptr i8, ptr %i.ch, i64 4
  store i32 0, ptr %i.cj, align 4, !tbaa !100
  %i.ck = icmp samesign ugt i64 %i.bn, 1
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr [80 x i8], ptr %i.cg, i64 %.us-phi62.i ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -80
  store i32 0, ptr %i.cm, align 8, !tbaa !93
  %i.cn = mul i32 %i.ci, 80
  %i.co = add i32 %i.cn, -80
  %i.cp = getelementptr i8, ptr %i.cl, i64 -76
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !100
  %i.cq = getelementptr i8, ptr %i.cl, i64 -52
  store i32 0, ptr %i.cq, align 4, !tbaa !65
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not.i.i41.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i41.i, label %mi_segment_slice_split.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr i8, ptr %i.ch, i64 64
  store ptr null, ptr %i.cr, align 8, !tbaa !193
  %i.cs = load ptr, ptr %i.cf, align 8, !tbaa !198 ; 3 uses
  %i.ct = getelementptr i8, ptr %i.ch, i64 56
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !171
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !198
  %.not.i26.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i26.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr i8, ptr %i.cs, i64 64
  store ptr %i.ch, ptr %i.cu, align 8, !tbaa !193
  br label %mi_segment_slice_split.exit.i

bb.t:                                             ; preds = %bb.r
  %i.cv = getelementptr i8, ptr %i.cf, i64 8
  store ptr %i.ch, ptr %i.cv, align 8, !tbaa !199
  br label %mi_segment_slice_split.exit.i

mi_segment_slice_split.exit.i:                    ; preds = %bb.t, %bb.s, %bb.q
  %i.cw = getelementptr i8, ptr %i.ch, i64 28
  store i32 0, ptr %i.cw, align 4, !tbaa !65
  %i.cx = trunc nuw nsw i64 %spec.store.select.i to i32
  store i32 %i.cx, ptr %.us-phi63.i, align 8, !tbaa !93
  br label %bb.u

bb.u:                                             ; preds = %mi_segment_slice_split.exit.i, %mi_span_queue_delete.exit._crit_edge.i
  %i.cy = phi i64 [ %i.bm, %mi_span_queue_delete.exit._crit_edge.i ], [ %spec.store.select.i, %mi_segment_slice_split.exit.i ]
  %i.cz = sdiv exact i64 %i.bl, 80
  %i.da = getelementptr i8, ptr %3, i64 896       ; 2 uses
  %.val.i = load ptr, ptr %i.da, align 8, !tbaa !172
  %i.db = tail call fastcc ptr @mi_segment_span_allocate(ptr noundef nonnull %.us-phi61.i, i64 noundef %i.cz, i64 noundef %i.cy, ptr %.val.i) ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.v, label %mi_segments_page_find_and_allocate.exit

bb.v:                                             ; preds = %bb.u
  %i.dd = tail call fastcc ptr @mi_segment_span_free_coalesce(ptr noundef nonnull %.us-phi63.i, ptr noundef nonnull %3) ; 0 uses
  br label %.loopexit

_mi_arena_memid_is_suitable.exit.i:               ; preds = %.split.i, %bb.e, %.lr.ph.i
  %i.de = getelementptr i8, ptr %.03356.i, i64 56
  %.033.i = load ptr, ptr %i.de, align 8, !tbaa !94 ; 2 uses
  %.not38.i = icmp eq ptr %.033.i, null
  br i1 %.not38.i, label %._crit_edge.split.i, label %.lr.ph.i, !llvm.loop !575

._crit_edge.split.i:                              ; preds = %_mi_arena_memid_is_suitable.exit.i, %.preheader.i
  %i.df = getelementptr i8, ptr %.03479.i, i64 24 ; 2 uses
  %.not.i = icmp ugt ptr %i.df, %i.t
  br i1 %.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !576

.loopexit:                                        ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.v, %mi_span_queue_for.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  store i8 0, ptr %i.a, align 1, !tbaa !142
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 680), align 8, !tbaa !133
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.w, label %mi_option_get_clamp.exit.i.i, !prof !61

bb.w:                                             ; preds = %.loopexit
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 672)), !inline_history !134
  br label %mi_option_get_clamp.exit.i.i

mi_option_get_clamp.exit.i.i:                     ; preds = %bb.w, %.loopexit
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 672), align 16, !tbaa !135
  %i.dj = tail call i64 @llvm.smax.i64(i64 %i.di, i64 8)
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 1024)
  %i.dk = getelementptr i8, ptr %3, i64 912       ; 2 uses
  %i.dl = getelementptr i8, ptr %3, i64 896
  br label %bb.x

bb.x:                                             ; preds = %select.unfold.i.i, %mi_option_get_clamp.exit.i.i
  %.in.i.i = phi i64 [ %spec.select.i.i, %mi_option_get_clamp.exit.i.i ], [ %i.dm, %select.unfold.i.i ] ; 2 uses
  %i.dm = add nsw i64 %.in.i.i, -1
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !202 ; 9 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 64     ; 7 uses
  %i.dp = load atomic i64, ptr %i.do monotonic, align 64
  %i.dq = icmp ult i64 %i.dp, 33554432
  br i1 %i.dq, label %bb.y, label %mi_abandoned_visited_revisit.exit.thread.i.i.i, !prof !96

bb.y:                                             ; preds = %bb.x
  %i.dr = load atomic ptr, ptr %i.dn monotonic, align 64
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %mi_segment_try_reclaim.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = atomicrmw xchg ptr %i.dn, ptr null acq_rel, align 64 ; 4 uses
  %.not54.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not54.i.i.i.i, label %mi_segment_try_reclaim.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = load atomic i64, ptr %i.do monotonic, align 64 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 33554432
  br i1 %i.dv, label %bb.ab, label %.critedge.i.i.i.i.preheader

.critedge.i.i.i.i.preheader:                      ; preds = %bb.ab, %bb.aa
  br label %.critedge.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.dw = getelementptr i8, ptr %i.dn, i64 192    ; 2 uses
  %i.dx = load atomic i64, ptr %i.dw monotonic, align 64 ; 2 uses
  %i.dy = add nuw nsw i64 %i.du, 1
  %i.dz = and i64 %i.dy, 33554431
  %i.ea = ptrtoint ptr %i.dt to i64
  %i.eb = or i64 %i.dz, %i.ea
  %i.ec = cmpxchg ptr %i.do, i64 %i.du, i64 %i.eb acq_rel acquire, align 64
  %i.ed = extractvalue { i64, i1 } %i.ec, 1
  br i1 %i.ed, label %bb.ac, label %.critedge.i.i.i.i.preheader, !prof !204

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr i8, ptr %i.dn, i64 128
  %i.ef = atomicrmw add ptr %i.ee, i64 %i.dx monotonic, align 64 ; 0 uses
  %i.eg = atomicrmw sub ptr %i.dw, i64 %i.dx monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.preheader, %.critedge.i.i.i.i
  %.050.i.i.i.i = phi ptr [ %i.ei, %.critedge.i.i.i.i ], [ %i.dt, %.critedge.i.i.i.i.preheader ] ; 2 uses
  %i.eh = getelementptr i8, ptr %.050.i.i.i.i, i64 176
  %i.ei = load atomic ptr, ptr %i.eh monotonic, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i, label %bb.ad, label %.critedge.i.i.i.i, !llvm.loop !35

bb.ad:                                            ; preds = %.critedge.i.i.i.i
  %i.ej = getelementptr i8, ptr %.050.i.i.i.i, i64 176
  %i.ek = load atomic i64, ptr %i.do monotonic, align 64
  %i.el = getelementptr i8, ptr %i.dn, i64 192    ; 2 uses
  %i.em = ptrtoint ptr %i.dt to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.051.i.i.i.i = phi i64 [ %i.ek, %bb.ad ], [ %i.ev, %bb.ae ] ; 3 uses
  %i.en = load atomic i64, ptr %i.el monotonic, align 64 ; 2 uses
  %i.eo = and i64 %.051.i.i.i.i, -33554432
  %i.ep = inttoptr i64 %i.eo to ptr
  store atomic ptr %i.ep, ptr %i.ej release, align 8
  %i.eq = add i64 %.051.i.i.i.i, 1
  %i.er = and i64 %i.eq, 33554431
  %i.es = or i64 %i.er, %i.em
  %i.et = cmpxchg weak ptr %i.do, i64 %.051.i.i.i.i, i64 %i.es release monotonic, align 64 ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 1
  %i.ev = extractvalue { i64, i1 } %i.et, 0
  br i1 %i.eu, label %bb.af, label %bb.ae, !prof !204, !llvm.loop !36

bb.af:                                            ; preds = %bb.ae
  %i.ew = getelementptr i8, ptr %i.dn, i64 128
  %i.ex = atomicrmw add ptr %i.ew, i64 %i.en monotonic, align 64 ; 0 uses
  %i.ey = atomicrmw sub ptr %i.el, i64 %i.en monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i.i.i

mi_abandoned_visited_revisit.exit.thread.i.i.i:   ; preds = %bb.af, %bb.ac, %bb.x
  %i.ez = getelementptr i8, ptr %i.dn, i64 256    ; 3 uses
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 64 ; 0 uses
  %i.fb = load atomic i64, ptr %i.do acquire, align 64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %mi_abandoned_visited_revisit.exit.thread.i.i.i
  %.029.i.i.i = phi i64 [ %i.fb, %mi_abandoned_visited_revisit.exit.thread.i.i.i ], [ %i.fm, %bb.ah ] ; 3 uses
  %i.fc = and i64 %.029.i.i.i, -33554432          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i, label %mi_abandoned_pop.exit.thread42.i.i, label %bb.ah

mi_abandoned_pop.exit.thread42.i.i:               ; preds = %bb.ag
  %5 = atomicrmw add ptr %i.ez, i64 -1 monotonic, align 64 ; 0 uses
  br label %mi_segment_try_reclaim.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.fd = inttoptr i64 %i.fc to ptr               ; 13 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 176
  %i.ff = load atomic ptr, ptr %i.fe monotonic, align 16
  %i.fg = add i64 %.029.i.i.i, 1
  %i.fh = and i64 %i.fg, 33554431
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = or i64 %i.fh, %i.fi
  %i.fk = cmpxchg weak ptr %i.do, i64 %.029.i.i.i, i64 %i.fj acq_rel acquire, align 64 ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 1
  %i.fm = extractvalue { i64, i1 } %i.fk, 0
  br i1 %i.fl, label %bb.ai, label %bb.ag, !llvm.loop !37

bb.ai:                                            ; preds = %bb.ah
  %i.fn = getelementptr i8, ptr %i.fd, i64 176    ; 2 uses
  %6 = atomicrmw add ptr %i.ez, i64 -1 monotonic, align 64 ; 0 uses
  store atomic ptr null, ptr %i.fn release, align 8
  %i.fo = getelementptr i8, ptr %i.dn, i64 128
  %7 = atomicrmw add ptr %i.fo, i64 -1 monotonic, align 64 ; 0 uses
  %i.fp = getelementptr i8, ptr %i.fd, i64 200    ; 3 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !203
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !203
  %.0.i37.sroa.539.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  %.0.i37.sroa.539.0.copyload.i.i = load i32, ptr %.0.i37.sroa.539.0..0.i.sroa_idx.i.i, align 4
  %i.fs = load i32, ptr %i.g, align 8, !tbaa !175 ; 3 uses
  %i.ft = icmp eq i32 %.0.i37.sroa.539.0.copyload.i.i, 6
  br i1 %i.ft, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.0.i37.sroa.4.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %.0.i37.sroa.4.0.copyload.i.i = load i8, ptr %.0.i37.sroa.4.0..0.i.sroa_idx.i.i, align 4
  %.0.i37.sroa.3.0..0.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.0.i37.sroa.3.0.copyload.i.i = load i32, ptr %.0.i37.sroa.3.0..0.i.sroa_idx.i.i, align 8
  %i.fu = trunc nuw i8 %.0.i37.sroa.4.0.copyload.i.i to i1
  %.not.i.i.i.i.i = xor i1 %i.fu, true
  %i.fv = icmp eq i32 %i.fs, 0
  %or.cond.i.i.i.i.i = and i1 %i.fv, %.not.i.i.i.i.i
  %i.fw = icmp eq i32 %.0.i37.sroa.3.0.copyload.i.i, %i.fs
  %spec.select.i.i.i.i.i = or i1 %i.fw, %or.cond.i.i.i.i.i
  br label %_mi_heap_memid_is_suitable.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.fx = icmp eq i32 %i.fs, 0
  br label %_mi_heap_memid_is_suitable.exit.i.i

_mi_heap_memid_is_suitable.exit.i.i:              ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i = phi i1 [ %spec.select.i.i.i.i.i, %bb.aj ], [ %i.fx, %bb.ak ] ; 2 uses
  %i.fy = tail call fastcc zeroext i1 @mi_segment_check_free(ptr noundef %i.fd, i64 noundef range(i64 0, 281474976710656) %i.f, i64 noundef range(i64 0, 16777217) %2, ptr noundef %3)
  %i.fz = getelementptr i8, ptr %i.fd, i64 208
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !112
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_mi_heap_memid_is_suitable.exit.i.i
  %i.gc = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.fd, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %3) ; 0 uses
  br label %select.unfold.i.i

bb.am:                                            ; preds = %_mi_heap_memid_is_suitable.exit.i.i
  %or.cond.i.i = select i1 %i.fy, i1 %.0.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.an

.thread.i.i:                                      ; preds = %bb.am
  %i.gd = call fastcc ptr @mi_segment_reclaim(ptr noundef %i.fd, ptr noundef nonnull %0, i64 noundef range(i64 0, 16777217) %2, ptr noundef nonnull %i.a, ptr noundef %3)
  %i.ge = icmp eq ptr %i.gd, null
  br label %mi_segment_try_reclaim.exit.i

bb.an:                                            ; preds = %bb.am
  %i.gf = load i64, ptr %i.fp, align 8, !tbaa !203
  %i.gg = icmp ugt i64 %i.gf, 3
  %or.cond3.i.i = select i1 %i.gg, i1 %.0.i.i.i.i, i1 false
  br i1 %or.cond3.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gh = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.fd, ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %3) ; 0 uses
  br label %select.unfold.i.i

bb.ap:                                            ; preds = %bb.an
  %i.gi = load ptr, ptr %i.dl, align 8, !tbaa !172
  tail call fastcc void @mi_segment_try_purge(ptr noundef nonnull %i.fd, i1 noundef zeroext true, ptr noundef %i.gi)
  %i.gj = load ptr, ptr %i.dk, align 8, !tbaa !202 ; 3 uses
  %i.gk = load atomic ptr, ptr %i.gj monotonic, align 64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.0.i38.i.i = phi ptr [ %i.gk, %bb.ap ], [ %i.gn, %bb.aq ] ; 2 uses
  store atomic ptr %.0.i38.i.i, ptr %i.fn release, align 8
  %i.gl = cmpxchg weak ptr %i.gj, ptr %.0.i38.i.i, ptr %i.fd release monotonic, align 64 ; 2 uses
  %i.gm = extractvalue { ptr, i1 } %i.gl, 1
  %i.gn = extractvalue { ptr, i1 } %i.gl, 0
  br i1 %i.gm, label %mi_abandoned_visited_push.exit.i.i, label %bb.aq, !llvm.loop !38

mi_abandoned_visited_push.exit.i.i:               ; preds = %bb.aq
  %i.go = getelementptr i8, ptr %i.gj, i64 192
  %i.gp = atomicrmw add ptr %i.go, i64 1 monotonic, align 64 ; 0 uses
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %mi_abandoned_visited_push.exit.i.i, %bb.ao, %bb.al
  %i.gq = icmp sgt i64 %.in.i.i, 1
  br i1 %i.gq, label %bb.x, label %mi_segment_try_reclaim.exit.i, !llvm.loop !577

mi_segment_try_reclaim.exit.i:                    ; preds = %select.unfold.i.i, %bb.z, %bb.y, %.thread.i.i, %mi_abandoned_pop.exit.thread42.i.i
  %.2.i.i = phi i1 [ %i.ge, %.thread.i.i ], [ true, %mi_abandoned_pop.exit.thread42.i.i ], [ true, %bb.y ], [ true, %bb.z ], [ true, %select.unfold.i.i ]
  %i.gr = load i8, ptr %i.a, align 1, !tbaa !142, !range !86, !noundef !87
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %mi_segment_reclaim_or_alloc.exit.thread, label %bb.ar

mi_segment_reclaim_or_alloc.exit.thread:          ; preds = %mi_segment_try_reclaim.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.at

bb.ar:                                            ; preds = %mi_segment_try_reclaim.exit.i
  br i1 %.2.i.i, label %mi_segment_reclaim_or_alloc.exit, label %mi_segment_reclaim_or_alloc.exit.thread25

mi_segment_reclaim_or_alloc.exit.thread25:        ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.as

mi_segment_reclaim_or_alloc.exit:                 ; preds = %bb.ar
  %i.gt = load i32, ptr %i.g, align 8, !tbaa !175
  %i.gu = call fastcc ptr @mi_segment_alloc(i64 noundef 0, i64 noundef 0, i32 noundef %i.gt, ptr noundef %3, ptr noundef readonly %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.at, label %bb.as

bb.as:                                            ; preds = %mi_segment_reclaim_or_alloc.exit.thread25, %mi_segment_reclaim_or_alloc.exit
  %i.gw = call fastcc ptr @mi_segments_page_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.at

mi_segments_page_find_and_allocate.exit:          ; preds = %bb.u
  %i.gx = ptrtoint ptr %i.db to i64
  %i.gy = add i64 %i.gx, -1
  %i.gz = and i64 %i.gy, -33554432
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = load ptr, ptr %i.da, align 8, !tbaa !172
  tail call fastcc void @mi_segment_try_purge(ptr noundef %i.ha, i1 noundef zeroext false, ptr noundef %i.hb)
  br label %bb.at

bb.at:                                            ; preds = %mi_segment_reclaim_or_alloc.exit.thread, %mi_segment_reclaim_or_alloc.exit, %mi_segments_page_find_and_allocate.exit, %bb.as
  %.0 = phi ptr [ %i.db, %mi_segments_page_find_and_allocate.exit ], [ %i.gw, %bb.as ], [ null, %mi_segment_reclaim_or_alloc.exit ], [ null, %mi_segment_reclaim_or_alloc.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_abandoned_pool_visit_blocks(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8, !tbaa !581
  %i.c = and i64 %i.b, -33554432                  ; 2 uses
  %.not19 = icmp eq i64 %i.c, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.020 = phi ptr [ %i.g, %bb.b ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.e = tail call fastcc zeroext i1 @mi_segment_visit_pages(ptr noundef %.020, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4)
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %.020, i64 176
  %i.g = load atomic ptr, ptr %i.f seq_cst, align 8, !tbaa !582 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !578

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = load atomic ptr, ptr %0 seq_cst, align 8, !tbaa !583 ; 2 uses
  %.not1721 = icmp eq ptr %i.h, null
  br i1 %.not1721, label %.loopexit, label %.lr.ph24

.lr.ph24:                                         ; preds = %._crit_edge, %bb.c
  %.122 = phi ptr [ %i.k, %bb.c ], [ %i.h, %._crit_edge ] ; 2 uses
  %i.i = tail call fastcc zeroext i1 @mi_segment_visit_pages(ptr noundef %.122, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) ; 3 uses
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph24
  %i.j = getelementptr i8, ptr %.122, i64 176
  %i.k = load atomic ptr, ptr %i.j seq_cst, align 8, !tbaa !582 ; 2 uses
  %.not17 = icmp eq ptr %i.k, null
  br i1 %.not17, label %.loopexit, label %.lr.ph24, !llvm.loop !579

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph24, %bb.c, %._crit_edge
  %.016 = phi i1 [ true, %._crit_edge ], [ %i.i, %.lr.ph24 ], [ %i.i, %bb.c ], [ false, %.lr.ph ]
  ret i1 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_segment_visit_pages(ptr noundef nonnull %0, i8 noundef zeroext %1, i1 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.mi_heap_area_s, align 8     ; 11 uses
  %i.a = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 248
  %i.c = load i64, ptr %i.b, align 8, !tbaa !195
  %i.d = getelementptr [80 x i8], ptr %i.a, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !93
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr [80 x i8], ptr %i.a, i64 %i.f ; 3 uses
  %.not20 = icmp ult ptr %i.g, %i.d
  br i1 %.not20, label %.lr.ph, label %.split._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  br i1 %2, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %.01416.us = phi ptr [ %i.s, %.critedge.us ], [ %i.g, %.lr.ph ] ; 5 uses
  %i.i = getelementptr i8, ptr %.01416.us, i64 28
  %.014.val.us = load i32, ptr %i.i, align 4, !tbaa !65
  %.not.us = icmp eq i32 %.014.val.us, 0
  br i1 %.not.us, label %.critedge.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.j = getelementptr i8, ptr %.01416.us, i64 8
  %i.k = load i8, ptr %i.j, align 8
  %i.l = lshr i8 %i.k, 3
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, %1
end_hunk_5
begin_hunk_6_@mi_segment_purge:bb.a
  %i.dd = load <2 x i64>, ptr %i.db, align 8, !tbaa !128
  %i.de = and <2 x i64> %i.dd, %i.dc
  store <2 x i64> %i.de, ptr %i.db, align 8, !tbaa !128
  %i.df = xor <2 x i64> %i.h, splat (i64 -1)
  %i.dg = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.dh = load <2 x i64>, ptr %i.dg, align 8, !tbaa !128
  %i.di = and <2 x i64> %i.dh, %i.df
  store <2 x i64> %i.di, ptr %i.dg, align 8, !tbaa !128
  %i.dj = xor <2 x i64> %.fr4, splat (i64 -1)
  %i.dk = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.dl = load <2 x i64>, ptr %i.dk, align 8, !tbaa !128
  %i.dm = and <2 x i64> %i.dl, %i.dj
  store <2 x i64> %i.dm, ptr %i.dk, align 8, !tbaa !128
  %i.dn = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %i.do = insertelement <2 x i64> %i.dn, i64 %i.da, i64 1
  %i.dp = xor <2 x i64> %i.do, splat (i64 -1)
  %i.dq = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.dr = load <2 x i64>, ptr %i.dq, align 8, !tbaa !128
  %i.ds = and <2 x i64> %i.dr, %i.dp
  store <2 x i64> %i.ds, ptr %i.dq, align 8, !tbaa !128
  br label %bb.r

bb.r:                                             ; preds = %mi_commit_mask_is_empty.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_segment_commit_mask(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %6) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !128
  %i.a = add i64 %3, -33554433
  %or.cond = icmp ult i64 %i.a, -33554432
  br i1 %or.cond, label %mi_commit_mask_create.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 240
  %i.c = load i32, ptr %i.b, align 8, !tbaa !196
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %mi_commit_mask_create.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 224
  %.val59 = load i64, ptr %i.e, align 8, !tbaa !124
  %i.f = shl i64 %.val59, 16                      ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %.not = icmp ult ptr %2, %i.g
  br i1 %.not, label %bb.d, label %mi_commit_mask_create.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 232
  %.val = load i64, ptr %i.h, align 8, !tbaa !200
  %i.i = shl i64 %.val, 16                        ; 2 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = add i64 %i.l, 65535
  %i.n = add nuw nsw i64 %3, 65535
  %.049.in = select i1 %1, i64 %i.m, i64 %i.l
  %.0.in.v = select i1 %1, i64 %3, i64 %i.n
  %.0.in = add i64 %i.l, %.0.in.v
  %.0 = and i64 %.0.in, -65536
  %.049 = and i64 %.049.in, -65536                ; 2 uses
  %.not56.not = icmp ult i64 %i.l, %i.i
  %i.o = tail call i64 @llvm.umax.i64(i64 %.049, i64 %i.i)
  %.150 = select i1 %.not56.not, i64 %.049, i64 %i.o ; 6 uses
  %.1 = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.f) ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 %.150
  store ptr %i.p, ptr %4, align 8, !tbaa !130
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %.1, i64 %.150) ; 3 uses
  store i64 %i.q, ptr %5, align 8, !tbaa !128
  %.not57 = icmp ugt i64 %.1, %.150
  br i1 %.not57, label %bb.e, label %mi_commit_mask_create.exit

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %.150, 16                 ; 3 uses
  %i.s = lshr exact i64 %i.q, 16                  ; 5 uses
  %i.t = add nuw nsw i64 %i.s, %i.r
  %i.u = icmp samesign ugt i64 %i.t, 512
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.104, i64 noundef %i.r, i64 noundef %i.s, i64 noundef %.150, i64 noundef %.1, ptr noundef %2, i64 noundef %3, i64 noundef %i.q)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  switch i64 %i.s, label %.lr.ph.i [
    i64 512, label %bb.h
    i64 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 -1, i64 64, i1 false), !tbaa !128
  br label %mi_commit_mask_create.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !128
  br label %mi_commit_mask_create.exit

.lr.ph.i:                                         ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !tbaa !128
  %i.v = lshr i64 %.150, 22                       ; 2 uses
  %i.w = and i64 %i.r, 63                         ; 2 uses
  %i.x = sub nuw nsw i64 64, %i.w
  %i.y = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.s, i64 %i.x) ; 3 uses
  %i.z = icmp samesign ugt i64 %i.y, 63
  %notmask.peel.i = shl nsw i64 -1, %i.y
  %i.aa = xor i64 %notmask.peel.i, -1
  %i.ab = shl i64 %i.aa, %i.w
  %i.ac = select i1 %i.z, i64 -1, i64 %i.ab
  %i.ad = getelementptr [8 x i8], ptr %6, i64 %i.v
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !128
  %i.ae = sub nuw nsw i64 %i.s, %i.y              ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %mi_commit_mask_create.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph.i, %.peel.next.i
  %.02127.in.i = phi i64 [ %.02127.i, %.peel.next.i ], [ %i.v, %.lr.ph.i ]
  %.02226.i = phi i64 [ %i.ak, %.peel.next.i ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %.02127.i = add i64 %.02127.in.i, 1             ; 2 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %.02226.i, i64 64) ; 2 uses
  %i.ag = icmp ugt i64 %.02226.i, 63
  %notmask.i = shl nsw i64 -1, %i.af
  %i.ah = xor i64 %notmask.i, -1
  %i.ai = select i1 %i.ag, i64 -1, i64 %i.ah
  %i.aj = getelementptr [8 x i8], ptr %6, i64 %.02127.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !128
  %i.ak = sub nuw nsw i64 %.02226.i, %i.af        ; 2 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %mi_commit_mask_create.exit, label %.peel.next.i, !llvm.loop !43

mi_commit_mask_create.exit:                       ; preds = %.peel.next.i, %.lr.ph.i, %bb.i, %bb.h, %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @mi_segments_track_size(i64 noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i64 %0, -1
  %i.b = getelementptr i8, ptr %1, i64 896
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 12 uses
  %i.d = icmp uge ptr %i.c, @_mi_stats_main
  %i.e = icmp ult ptr %i.c, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.f = select i1 %i.d, i1 %i.e, i1 false        ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 24       ; 6 uses
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.i = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.j = add i64 %i.h, 1                          ; 2 uses
  %i.k = load atomic i64, ptr %i.i monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i.i = phi i64 [ %i.k, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  %i.l = icmp slt i64 %.0.i.i.i, %i.j
  br i1 %i.l, label %bb.e, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = cmpxchg weak ptr %i.i, i64 %.0.i.i.i, i64 %i.j release monotonic, align 8 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0
  br i1 %i.n, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.d, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.p = atomicrmw add ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.g, align 8, !tbaa !144
  %i.r = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.r, ptr %i.g, align 8, !tbaa !144
  %i.s = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !145
  %i.u = icmp sgt i64 %i.r, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.r, ptr %i.s, align 8, !tbaa !145
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load i64, ptr %i.c, align 8, !tbaa !146
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.c, align 8, !tbaa !146
  br label %_mi_stat_increase.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %2 = atomicrmw add ptr %i.g, i64 -1 monotonic, align 8
  %i.x = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.y = add i64 %2, -1                           ; 2 uses
  %i.z = load atomic i64, ptr %i.x monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.i.i.i15 = phi i64 [ %i.z, %bb.j ], [ %i.ad, %bb.l ] ; 2 uses
  %i.aa = icmp slt i64 %.0.i.i.i15, %i.y
  br i1 %i.aa, label %bb.l, label %mi_atomic_maxi64_relaxed.exit.i.i16

bb.l:                                             ; preds = %bb.k
  %i.ab = cmpxchg weak ptr %i.x, i64 %.0.i.i.i15, i64 %i.y release monotonic, align 8 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  br i1 %i.ac, label %mi_atomic_maxi64_relaxed.exit.i.i16, label %bb.k, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i16:              ; preds = %bb.l, %bb.k
  %i.ae = getelementptr i8, ptr %i.c, i64 8
  %i.af = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_increase.exit

bb.m:                                             ; preds = %bb.i
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !144
  %i.ah = add i64 %i.ag, -1                       ; 3 uses
  store i64 %i.ah, ptr %i.g, align 8, !tbaa !144
  %i.ai = getelementptr i8, ptr %i.c, i64 16      ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !145
  %i.ak = icmp sgt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !145
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = getelementptr i8, ptr %i.c, i64 8       ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !147
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !147
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %bb.o, %mi_atomic_maxi64_relaxed.exit.i.i16, %bb.h, %mi_atomic_maxi64_relaxed.exit.i.i
  %i.ao = phi i64 [ 1, %bb.h ], [ 1, %mi_atomic_maxi64_relaxed.exit.i.i ], [ -1, %mi_atomic_maxi64_relaxed.exit.i.i16 ], [ -1, %bb.o ]
  %i.ap = getelementptr i8, ptr %1, i64 864       ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !457
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !457
  %i.as = getelementptr i8, ptr %1, i64 872       ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !647
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_mi_stat_increase.exit
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !647
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_mi_stat_increase.exit
  %i.av = getelementptr i8, ptr %1, i64 880       ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !648
  %i.ax = add i64 %i.aw, %0                       ; 3 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !648
  %i.ay = getelementptr i8, ptr %1, i64 888       ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !649
  %i.ba = icmp ugt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !649
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_segment_alloc(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.mi_memid_s, align 8         ; 9 uses
  %7 = alloca %struct.mi_commit_mask_s, align 8   ; 10 uses
  %i.a = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !121 ; 4 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.c = icmp samesign ult i64 %i.b, 2
  %i.d = add i64 %i.a, 41303                      ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %i.a
  %i.f = and i64 %i.d, %i.e
  br label %mi_segment_calculate_slices.exit

bb.c:                                             ; preds = %bb.a
  %i.g = urem i64 %i.d, %i.a
  %i.h = sub nuw i64 %i.d, %i.g
  br label %mi_segment_calculate_slices.exit

mi_segment_calculate_slices.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = add i64 %.0.i.i, 65535                   ; 3 uses
  %i.j = icmp ne i64 %0, 0                        ; 3 uses
  %i.k = or i64 %i.i, 65535
  %i.l = add i64 %i.k, %0
  %i.m = lshr i64 %i.l, 16
  %i.n = select i1 %i.j, i64 %i.m, i64 512        ; 2 uses
  %i.o = icmp samesign ugt i64 %i.n, 4294967295
  br i1 %i.o, label %bb.au, label %bb.d

bb.d:                                             ; preds = %mi_segment_calculate_slices.exit
  %i.p = load atomic i64, ptr @thread_count monotonic, align 8
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %3, i64 864
  %i.s = load i64, ptr %i.r, align 8, !tbaa !457
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 456), align 8, !tbaa !133
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g, !prof !61

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 448)), !inline_history !134
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 448), align 16, !tbaa !135
  %i.w = icmp ult i64 %i.s, %i.v
  br i1 %i.w, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 104), align 8, !tbaa !133
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %mi_option_is_enabled.exit, !prof !61

bb.h:                                             ; preds = %.thread
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 96)), !inline_history !141
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %.thread, %bb.h
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 96), align 16, !tbaa !135
  %i.aa = or i64 %0, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  br label %bb.i

bb.i:                                             ; preds = %mi_option_is_enabled.exit, %bb.g
  %not..i = phi i1 [ false, %bb.g ], [ true, %mi_option_is_enabled.exit ]
  %i.ac = phi i1 [ %i.j, %bb.g ], [ %i.ab, %mi_option_is_enabled.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = and i64 %i.i, -65536
  %i.ae = add i64 %.0.i.i, 33554431
  %i.af = and i64 %i.ae, -33554432                ; 2 uses
  %i.ag = sub i64 %i.af, %i.ad
  %i.ah = add i64 %i.ag, %0                       ; 2 uses
  %i.ai = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !121 ; 4 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ai)
  %i.ak = icmp samesign ult i64 %i.aj, 2
  %i.al = add i64 %i.ai, 41303                    ; 3 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = sub i64 0, %i.ai
  %i.an = and i64 %i.al, %i.am
  br label %mi_segment_calculate_slices.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ao = urem i64 %i.al, %i.ai
  %i.ap = sub nuw i64 %i.al, %i.ao
  br label %mi_segment_calculate_slices.exit.i

mi_segment_calculate_slices.exit.i:               ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.an, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = add i64 %.0.i.i.i, 65535                ; 2 uses
  %i.ar = icmp eq i64 %i.ah, 0
  %i.as = or i64 %i.aq, 65535
  %i.at = add i64 %i.as, %i.ah
  %i.au = lshr i64 %i.at, 16
  %i.av = select i1 %i.ar, i64 512, i64 %i.au     ; 2 uses
  %i.aw = icmp samesign ult i64 %i.av, 4294967296
  br i1 %i.aw, label %._crit_edge.i, label %mi_segment_os_alloc.exit.thread

._crit_edge.i:                                    ; preds = %bb.i, %mi_segment_calculate_slices.exit.i
  %.059.in = phi i64 [ %i.aq, %mi_segment_calculate_slices.exit.i ], [ %i.i, %bb.i ] ; 6 uses
  %.0 = phi i64 [ %i.av, %mi_segment_calculate_slices.exit.i ], [ %i.n, %bb.i ] ; 5 uses
  %.051.i = phi i64 [ %i.af, %mi_segment_calculate_slices.exit.i ], [ 0, %bb.i ]
  %.050.i = phi i64 [ %1, %mi_segment_calculate_slices.exit.i ], [ 33554432, %bb.i ]
  %.059 = lshr i64 %.059.in, 16                   ; 9 uses
  %i.ax = shl nuw nsw i64 %.0, 16                 ; 4 uses
  %i.ay = call ptr @_mi_arena_alloc_aligned(i64 noundef %i.ax, i64 noundef %.050.i, i64 noundef %.051.i, i1 noundef zeroext %i.ac, i1 noundef zeroext %not..i, i32 noundef %2, ptr noundef nonnull %6, ptr noundef readonly %4) ; 26 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %mi_segment_os_alloc.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !159, !range !86, !noundef !87
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.n, label %bb.o

end_hunk_6
