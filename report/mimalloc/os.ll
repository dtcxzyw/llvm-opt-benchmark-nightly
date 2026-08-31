Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/os?download=true
inline.NumInlined: 93
inline.NumDeleted: 27
begin_hunk_0_@_mi_os_free_ex:bb.a
  %i.x = ptrtoint ptr %1 to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = select i1 %i.g, i64 %i.z, i64 0
  %spec.select = add i64 %i.aa, %.020
  %i.ab = sub i64 %.020, %i.z
  %.019 = select i1 %3, i64 %i.ab, i64 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_mi_os_good_alloc_size.exit
  %.2 = phi i64 [ %spec.select, %bb.l ], [ %.020, %_mi_os_good_alloc_size.exit ] ; 5 uses
  %.1 = phi i64 [ %.019, %bb.l ], [ %i.v, %_mi_os_good_alloc_size.exit ]
  %.0 = phi ptr [ %i.w, %bb.l ], [ %1, %_mi_os_good_alloc_size.exit ] ; 5 uses
  %i.ac = icmp eq i32 %i.b, 4
  br i1 %i.ac, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ad = icmp ne ptr %.0, null
  %i.ae = icmp ugt i64 %.2, 1073741823
  %or.cond13.i = and i1 %i.ae, %i.ad
  br i1 %or.cond13.i, label %.lr.ph.i, label %mi_os_free_huge_os_pages.exit

.lr.ph.i:                                         ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1576
  br label %bb.o

bb.o:                                             ; preds = %mi_os_prim_free.exit.i, %.lr.ph.i
  %.012.i = phi ptr [ %.0, %.lr.ph.i ], [ %i.aj, %mi_os_prim_free.exit.i ] ; 3 uses
  %.0811.i = phi i64 [ %.2, %.lr.ph.i ], [ %i.ai, %mi_os_prim_free.exit.i ]
  %i.ah = tail call i32 @_mi_prim_free(ptr noundef nonnull %.012.i, i64 noundef 1073741824) #9 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %mi_os_prim_free.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.ah, i32 noundef %i.ah, i64 noundef 1073741824, ptr noundef nonnull %.012.i) #9
  br label %mi_os_prim_free.exit.i

mi_os_prim_free.exit.i:                           ; preds = %bb.p, %bb.o
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.af, i64 noundef 1073741824) #9
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.ag, i64 noundef 1073741824) #9
  %i.ai = add i64 %.0811.i, -1073741824           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i, i64 1073741824
  %i.ak = icmp ugt i64 %i.ai, 1073741823
  br i1 %i.ak, label %bb.o, label %mi_os_free_huge_os_pages.exit, !llvm.loop !27

bb.q:                                             ; preds = %bb.m
  %i.al = select i1 %3, i64 %.1, i64 0            ; 2 uses
  %i.am = icmp eq ptr %.0, null
  br i1 %i.am, label %mi_os_free_huge_os_pages.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = tail call i32 @_mi_prim_free(ptr noundef nonnull %.0, i64 noundef %.2) #9 ; 3 uses
  %.not.i26 = icmp eq i32 %i.an, 0
  br i1 %.not.i26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.an, i32 noundef %i.an, i64 noundef %.2, ptr noundef nonnull %.0) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not21.i = icmp eq i64 %i.al, 0
  br i1 %.not21.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.ao, i64 noundef %i.al) #9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1576
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.ap, i64 noundef %.2) #9
  br label %mi_os_free_huge_os_pages.exit

mi_os_free_huge_os_pages.exit:                    ; preds = %mi_os_prim_free.exit.i, %bb.v, %bb.q, %bb.n, %bb.a
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_os_prim_free(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_mi_prim_free(ptr noundef nonnull %1, i64 noundef %2) #9 ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.b, i32 noundef %i.b, i64 noundef %2, ptr noundef nonnull %1) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not21 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %4, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.c, i64 noundef %3) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1576
  tail call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.d, i64 noundef %2) #9
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.e, i64 noundef %3) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1576
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.f, i64 noundef %2) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.a
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_os_free(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %3) local_unnamed_addr #1 {
bb.a:
  tail call void @_mi_os_free_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %3) #10
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_os_alloc(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 524288
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i64 %1, 2097152
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult i64 %1, 8388608
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult i64 %1, 33554432
  %..i = select i1 %i.h, i64 1048576, i64 4194304
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.c ], [ 262144, %bb.e ], [ 65536, %bb.d ], [ %..i, %bb.f ] ; 5 uses
  %i.i = xor i64 %.0.i, -1
  %.not.i = icmp ult i64 %1, %i.i
  br i1 %.not.i, label %bb.h, label %_mi_os_good_alloc_size.exit, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.k = icmp samesign ult i64 %i.j, 2
  %i.l = add i64 %1, -1
  %i.m = add i64 %i.l, %.0.i                      ; 3 uses
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = sub i64 0, %.0.i
  %i.o = and i64 %i.m, %i.n
  br label %_mi_os_good_alloc_size.exit

bb.j:                                             ; preds = %bb.h
  %i.p = urem i64 %i.m, %.0.i
  %i.q = sub nuw i64 %i.m, %i.p
  br label %_mi_os_good_alloc_size.exit

_mi_os_good_alloc_size.exit:                      ; preds = %bb.g, %bb.i, %bb.j
  %.010.i = phi i64 [ %1, %bb.g ], [ %i.o, %bb.i ], [ %i.q, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i8 0, ptr %i.a, align 1, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 0, ptr %i.b, align 1, !tbaa !29
  %i.r = call fastcc ptr @mi_os_prim_alloc(ptr noundef %0, i64 noundef %.010.i, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.a, ptr noundef %i.b) #10 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.t = load i8, ptr %i.b, align 1, !tbaa !29, !range !12, !noundef !13
  %i.u = load i8, ptr %i.a, align 1, !tbaa !29, !range !12, !noundef !13
  %.sroa.5.22.insert.ext = zext nneg i8 %i.t to i64
  %.sroa.5.22.insert.shift = shl nuw nsw i64 %.sroa.5.22.insert.ext, 48
  %.sroa.5.20.insert.ext = zext nneg i8 %i.u to i64
  %.sroa.5.20.insert.shift = shl nuw nsw i64 %.sroa.5.20.insert.ext, 32
  %.sroa.5.22.insert.insert = or disjoint i64 %.sroa.5.22.insert.shift, %.sroa.5.20.insert.shift
  %.sroa.5.20.insert.insert = or disjoint i64 %.sroa.5.22.insert.insert, 1099511627779
  store ptr %i.r, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.010.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.5.20.insert.insert, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %_mi_os_good_alloc_size.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.1 = phi ptr [ %i.r, %bb.l ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc ptr @mi_os_prim_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull %5, ptr noundef nonnull %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %mi_os_prim_alloc_at.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i = and i1 %3, %4                  ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %2, i64 1) ; 4 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_os_mem_config, i64 8), align 8, !tbaa !16 ; 3 uses
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = shl i64 %i.c, 3
  %.not39.i = icmp ult i64 %1, %i.d
  %or.cond.i = or i1 %.not.i, %.not39.i
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %spec.store.select.i)
  %i.f = icmp samesign ult i64 %i.e, 2
  %i.g = tail call i64 @llvm.umax.i64(i64 %spec.store.select.i, i64 %i.c)
  %spec.select43.i = select i1 %i.f, i64 %i.g, i64 %spec.store.select.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.034.i = phi i64 [ %spec.select43.i, %bb.c ], [ %spec.store.select.i, %bb.b ] ; 2 uses
  store i8 0, ptr %6, align 1, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.h = call i32 @_mi_prim_alloc(ptr noundef null, i64 noundef %1, i64 noundef %.034.i, i1 noundef zeroext %3, i1 noundef zeroext %spec.select.i, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.a) #9 ; 3 uses
  %.not40.i = icmp eq i32 %i.h, 0
  br i1 %.not40.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext i1 %3 to i32
  %i.j = zext i1 %spec.select.i to i32
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.9, i32 noundef %i.h, i32 noundef %i.h, ptr noundef null, i64 noundef %1, i64 noundef %.034.i, i32 noundef %i.i, i32 noundef %i.j) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1784
  call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.k, i64 noundef 1) #9
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !30
  %.not41.i = icmp eq ptr %i.l, null
  br i1 %.not41.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1576
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.m, i64 noundef %1) #9
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1600
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.n, i64 noundef %1) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %mi_os_prim_alloc_at.exit

mi_os_prim_alloc_at.exit:                         ; preds = %bb.a, %bb.i
  %.0.i = phi ptr [ %i.o, %bb.i ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_os_alloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %mi_os_prim_alloc_aligned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %1, 524288
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15
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
  br i1 %.not.i, label %bb.h, label %_mi_os_good_alloc_size.exit, !prof !19

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
  %i.s = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15 ; 4 uses
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.u = icmp samesign ult i64 %i.t, 2
  %i.v = add i64 %2, -1
  %i.w = add i64 %i.v, %i.s                       ; 3 uses
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.x = sub i64 0, %i.s
  %i.y = and i64 %i.w, %i.x
  br label %_mi_align_up.exit

bb.l:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.z = urem i64 %i.w, %i.s
  %i.aa = sub nuw i64 %i.w, %i.z
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.k, %bb.l
  %.0.i15 = phi i64 [ %i.y, %bb.k ], [ %i.aa, %bb.l ] ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %spec.select.i = and i1 %3, %4                  ; 2 uses
  %i.ab = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15 ; 5 uses
  %.not.i16 = icmp uge i64 %.0.i15, %i.ab
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i15)
  %i.ad = icmp samesign ult i64 %i.ac, 2
  %or.cond.i = select i1 %.not.i16, i1 %i.ad, i1 false
  br i1 %or.cond.i, label %bb.m, label %mi_os_prim_alloc_aligned.exit

bb.m:                                             ; preds = %_mi_align_up.exit
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ab)
  %i.af = icmp samesign ult i64 %i.ae, 2
  %i.ag = add i64 %.010.i, -1
  %i.ah = add i64 %i.ag, %i.ab                    ; 3 uses
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = sub i64 0, %i.ab
  %i.aj = and i64 %i.ah, %i.ai
  br label %_mi_align_up.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ak = urem i64 %i.ah, %i.ab
  %i.al = sub nuw i64 %i.ah, %i.ak
  br label %_mi_align_up.exit.i

_mi_align_up.exit.i:                              ; preds = %bb.o, %bb.n
  %.0.i.i = phi i64 [ %i.aj, %bb.n ], [ %i.al, %bb.o ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 0, ptr %i.b, align 1, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i8 0, ptr %i.c, align 1, !tbaa !29
  %i.am = call fastcc ptr @mi_os_prim_alloc(ptr noundef %0, i64 noundef %.0.i.i, i64 noundef %.0.i15, i1 noundef zeroext %3, i1 noundef zeroext %spec.select.i, ptr noundef %i.b, ptr noundef %i.c) #10 ; 9 uses
  %.not100.i = icmp eq ptr %i.am, null
  br i1 %.not100.i, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %_mi_align_up.exit.i
  %i.an = icmp eq i64 %.0.i15, 0
  br i1 %i.an, label %mi_os_prim_free.exit117.i, label %_mi_is_aligned.exit.i

_mi_is_aligned.exit.i:                            ; preds = %bb.p
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = urem i64 %i.ao, %.0.i15
end_hunk_0
begin_hunk_1_@_mi_os_alloc_aligned:bb.a
bb.q:                                             ; preds = %_mi_is_aligned.exit.i
  %i.ar = zext i1 %3 to i32
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.10, i64 noundef %.0.i.i, ptr noundef nonnull %i.am, i64 noundef %.0.i15, i32 noundef %i.ar) #9
  %i.as = select i1 %3, i64 %.0.i.i, i64 0        ; 2 uses
  %i.at = call i32 @_mi_prim_free(ptr noundef nonnull %i.am, i64 noundef %.0.i.i) #9 ; 3 uses
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.at, i32 noundef %i.at, i64 noundef %.0.i.i, ptr noundef nonnull %i.am) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not21.i.i = icmp eq i64 %i.as, 0
  br i1 %.not21.i.i, label %mi_os_prim_free.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1600
  call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.au, i64 noundef %i.as) #9
  br label %mi_os_prim_free.exit.i

mi_os_prim_free.exit.i:                           ; preds = %bb.t, %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1576
  call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.av, i64 noundef %.0.i.i) #9
  br label %bb.u

.critedge.i:                                      ; preds = %_mi_align_up.exit.i
  %i.aw = zext i1 %3 to i32
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.10, i64 noundef %.0.i.i, ptr noundef null, i64 noundef %.0.i15, i32 noundef %i.aw) #9
  br label %bb.u

bb.u:                                             ; preds = %.critedge.i, %mi_os_prim_free.exit.i
  %i.ax = xor i64 %.0.i15, -1
  %.not101.i = icmp ult i64 %.0.i.i, %i.ax
  br i1 %.not101.i, label %bb.v, label %.critedge106.i

bb.v:                                             ; preds = %bb.u
  %i.ay = add i64 %.0.i.i, %.0.i15                ; 11 uses
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @mi_os_mem_config, i64 41), align 1, !tbaa !31, !range !12, !noundef !13
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %.critedge106.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_os_mem_config, i64 8), align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  %i.bd = shl i64 %i.bc, 3
  %.not39.i.i.i = icmp ult i64 %i.ay, %i.bd
  %or.cond.i.i.i = or i1 %.not.i.i.i, %.not39.i.i.i
  %spec.select120.i = select i1 %or.cond.i.i.i, i64 1, i64 %i.bc ; 2 uses
  store i8 0, ptr %i.c, align 1, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.be = call i32 @_mi_prim_alloc(ptr noundef null, i64 noundef %i.ay, i64 noundef %spec.select120.i, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #9 ; 3 uses
  %.not40.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not40.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.9, i32 noundef %i.be, i32 noundef %i.be, ptr noundef null, i64 noundef %i.ay, i64 noundef %spec.select120.i, i32 noundef 0, i32 noundef 0) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1784
  call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.bf, i64 noundef 1) #9
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !30
  %.not41.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not41.i.i.i, label %mi_os_prim_alloc.exit.thread119.i, label %mi_os_prim_alloc.exit.i

mi_os_prim_alloc.exit.thread119.i:                ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.critedge106.i

mi_os_prim_alloc.exit.i:                          ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1576
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.bh, i64 noundef %i.ay) #9
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !30 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.bi = icmp eq ptr %.pr.i, null
  br i1 %i.bi, label %.critedge106.i, label %_mi_align_up_ptr.exit.i

_mi_align_up_ptr.exit.i:                          ; preds = %mi_os_prim_alloc.exit.i
  %i.bj = ptrtoint ptr %.pr.i to i64
  %i.bk = add i64 %.0.i15, -1
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = sub i64 0, %.0.i15
  %i.bn = and i64 %i.bl, %i.bm
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  br i1 %3, label %bb.aa, label %mi_os_prim_free.exit117.i

bb.aa:                                            ; preds = %_mi_align_up_ptr.exit.i
  %i.bp = call noundef zeroext i1 @_mi_os_commit_ex(ptr noundef nonnull %0, ptr noundef %i.bo, i64 noundef %.0.i.i, ptr noundef null, i64 noundef 0) #10
  br i1 %i.bp, label %mi_os_prim_free.exit117.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @mi_os_prim_free(ptr noundef nonnull %0, ptr noundef nonnull %.pr.i, i64 noundef %i.ay, i64 noundef 0, i1 noundef zeroext true) #10
  br label %.critedge106.i

bb.ac:                                            ; preds = %bb.v
  %i.bq = call fastcc ptr @mi_os_prim_alloc(ptr noundef %0, i64 noundef %i.ay, i64 noundef 1, i1 noundef zeroext %3, i1 noundef zeroext %spec.select.i, ptr noundef %i.b, ptr noundef %i.c) #10 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.critedge106.i, label %_mi_align_up_ptr.exit109.i

_mi_align_up_ptr.exit109.i:                       ; preds = %bb.ac
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = add i64 %.0.i15, -1
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = sub i64 0, %.0.i15
  %i.bw = and i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = inttoptr i64 %i.bw to ptr               ; 8 uses
  %i.by = sub i64 %i.bw, %i.bs                    ; 5 uses
  %i.bz = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15 ; 4 uses
  %i.ca = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bz)
  %i.cb = icmp samesign ult i64 %i.ca, 2
  %i.cc = add i64 %.0.i.i, -1
  %i.cd = add i64 %i.cc, %i.bz                    ; 3 uses
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_mi_align_up_ptr.exit109.i
  %i.ce = sub i64 0, %i.bz
  %i.cf = and i64 %i.cd, %i.ce
  br label %_mi_align_up.exit111.i

bb.ae:                                            ; preds = %_mi_align_up_ptr.exit109.i
  %i.cg = urem i64 %i.cd, %i.bz
  %i.ch = sub nuw i64 %i.cd, %i.cg
  br label %_mi_align_up.exit111.i

_mi_align_up.exit111.i:                           ; preds = %bb.ae, %bb.ad
  %.0.i110.i = phi i64 [ %i.cf, %bb.ad ], [ %i.ch, %bb.ae ] ; 5 uses
  %i.ci = add i64 %.0.i110.i, %i.by               ; 2 uses
  %i.cj = sub i64 %i.ay, %i.ci                    ; 4 uses
  %.not102.i = icmp eq ptr %i.bq, %i.bx
  br i1 %.not102.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_mi_align_up.exit111.i
  %i.ck = select i1 %3, i64 %i.by, i64 0          ; 2 uses
  %i.cl = call i32 @_mi_prim_free(ptr noundef nonnull %i.bq, i64 noundef %i.by) #9 ; 3 uses
  %.not.i112.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i112.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.cl, i32 noundef %i.cl, i64 noundef %i.by, ptr noundef nonnull %i.bq) #9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not21.i113.i = icmp eq i64 %i.ck, 0
  br i1 %.not21.i113.i, label %mi_os_prim_free.exit114.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1600
  call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.cm, i64 noundef %i.ck) #9
  br label %mi_os_prim_free.exit114.i

mi_os_prim_free.exit114.i:                        ; preds = %bb.ai, %bb.ah
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1576
  call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.cn, i64 noundef %i.by) #9
  br label %bb.aj

bb.aj:                                            ; preds = %mi_os_prim_free.exit114.i, %_mi_align_up.exit111.i
  %.not103.i = icmp eq i64 %i.ay, %i.ci
  br i1 %.not103.i, label %mi_os_prim_free.exit117.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.0.i110.i ; 2 uses
  %i.cp = select i1 %3, i64 %i.cj, i64 0          ; 2 uses
  %i.cq = icmp eq i64 %i.bw, 0
  br i1 %i.cq, label %mi_os_prim_free.exit117.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cr = call i32 @_mi_prim_free(ptr noundef nonnull %i.co, i64 noundef %i.cj) #9 ; 3 uses
  %.not.i115.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i115.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.cr, i32 noundef %i.cr, i64 noundef %i.cj, ptr noundef nonnull %i.co) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not21.i116.i = icmp eq i64 %i.cp, 0
  br i1 %.not21.i116.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1600
  call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.cs, i64 noundef %i.cp) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1576
  call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.ct, i64 noundef %i.cj) #9
  br label %mi_os_prim_free.exit117.i

mi_os_prim_free.exit117.i:                        ; preds = %bb.ap, %bb.ak, %bb.aj, %bb.aa, %_mi_align_up_ptr.exit.i, %_mi_is_aligned.exit.i, %bb.p
  %.285.i = phi ptr [ %i.am, %_mi_is_aligned.exit.i ], [ %.pr.i, %bb.aa ], [ %i.bx, %bb.ap ], [ %i.bx, %bb.aj ], [ %.pr.i, %_mi_align_up_ptr.exit.i ], [ %i.bx, %bb.ak ], [ %i.am, %bb.p ]
  %.282.i = phi i64 [ %.0.i.i, %_mi_is_aligned.exit.i ], [ %i.ay, %bb.aa ], [ %.0.i110.i, %bb.ap ], [ %.0.i110.i, %bb.aj ], [ %i.ay, %_mi_align_up_ptr.exit.i ], [ %.0.i110.i, %bb.ak ], [ %.0.i.i, %bb.p ]
  %.2.i = phi ptr [ %i.am, %_mi_is_aligned.exit.i ], [ %i.bo, %bb.aa ], [ %i.bx, %bb.ap ], [ %i.bx, %bb.aj ], [ %i.bo, %_mi_align_up_ptr.exit.i ], [ %i.bx, %bb.ak ], [ %i.am, %bb.p ]
  %i.cu = load i8, ptr %i.c, align 1, !tbaa !29, !range !12, !noundef !13
  %i.cv = load i8, ptr %i.b, align 1, !tbaa !29, !range !12, !noundef !13
  %.sroa.5.21.insert.insert.i = select i1 %3, i64 1099511627779, i64 3
  %.sroa.5.22.insert.ext.i = zext nneg i8 %i.cu to i64
  %.sroa.5.22.insert.shift.i = shl nuw nsw i64 %.sroa.5.22.insert.ext.i, 48
  %.sroa.5.22.insert.insert.i = or disjoint i64 %.sroa.5.22.insert.shift.i, %.sroa.5.21.insert.insert.i
  %.sroa.5.20.insert.ext.i = zext nneg i8 %i.cv to i64
  %.sroa.5.20.insert.shift.i = shl nuw nsw i64 %.sroa.5.20.insert.ext.i, 32
  %.sroa.5.20.insert.insert.i = or disjoint i64 %.sroa.5.22.insert.insert.i, %.sroa.5.20.insert.shift.i
  store ptr %.285.i, ptr %5, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.282.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.sroa.5.20.insert.insert.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %.critedge106.i

.critedge106.i:                                   ; preds = %mi_os_prim_free.exit117.i, %bb.ac, %bb.ab, %mi_os_prim_alloc.exit.i, %mi_os_prim_alloc.exit.thread119.i, %bb.w, %bb.u
  %.187.i = phi ptr [ %.2.i, %mi_os_prim_free.exit117.i ], [ null, %bb.u ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %mi_os_prim_alloc.exit.i ], [ null, %mi_os_prim_alloc.exit.thread119.i ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %mi_os_prim_alloc_aligned.exit

mi_os_prim_alloc_aligned.exit:                    ; preds = %.critedge106.i, %_mi_align_up.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.187.i, %.critedge106.i ], [ null, %_mi_align_up.exit ]
  ret ptr %.1
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_os_zalloc(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %mi_os_ensure_zero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 524288
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i64 %1, 2097152
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult i64 %1, 8388608
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult i64 %1, 33554432
  %..i.i = select i1 %i.h, i64 1048576, i64 4194304
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.e, %bb.c ], [ 262144, %bb.e ], [ 65536, %bb.d ], [ %..i.i, %bb.f ] ; 5 uses
  %i.i = xor i64 %.0.i.i, -1
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %bb.h, label %_mi_os_good_alloc_size.exit.i, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i)
  %i.k = icmp samesign ult i64 %i.j, 2
  %i.l = add i64 %1, -1
  %i.m = add i64 %i.l, %.0.i.i                    ; 3 uses
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = sub i64 0, %.0.i.i
  %i.o = and i64 %i.m, %i.n
  br label %_mi_os_good_alloc_size.exit.i

bb.j:                                             ; preds = %bb.h
  %i.p = urem i64 %i.m, %.0.i.i
  %i.q = sub nuw i64 %i.m, %i.p
  br label %_mi_os_good_alloc_size.exit.i

_mi_os_good_alloc_size.exit.i:                    ; preds = %bb.j, %bb.i, %bb.g
  %.010.i.i = phi i64 [ %1, %bb.g ], [ %i.o, %bb.i ], [ %i.q, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i8 0, ptr %i.a, align 1, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i8 0, ptr %i.b, align 1, !tbaa !29
  %i.r = call fastcc ptr @mi_os_prim_alloc(ptr noundef %0, i64 noundef %.010.i.i, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.a, ptr noundef %i.b) #10 ; 7 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_mi_os_alloc.exit.thread11, label %bb.k

_mi_os_alloc.exit.thread11:                       ; preds = %_mi_os_good_alloc_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %mi_os_ensure_zero.exit

bb.k:                                             ; preds = %_mi_os_good_alloc_size.exit.i
  %i.t = load i8, ptr %i.b, align 1, !tbaa !29, !range !12, !noundef !13 ; 2 uses
  %i.u = load i8, ptr %i.a, align 1, !tbaa !29, !range !12, !noundef !13
  %.sroa.5.22.insert.ext.i = zext nneg i8 %i.t to i64
  %.sroa.5.22.insert.shift.i = shl nuw nsw i64 %.sroa.5.22.insert.ext.i, 48
  %.sroa.5.20.insert.ext.i = zext nneg i8 %i.u to i64
  %.sroa.5.20.insert.shift.i = shl nuw nsw i64 %.sroa.5.20.insert.ext.i, 32
  %.sroa.5.22.insert.insert.i = or disjoint i64 %.sroa.5.22.insert.shift.i, %.sroa.5.20.insert.shift.i
  %.sroa.5.20.insert.insert.i = or disjoint i64 %.sroa.5.22.insert.insert.i, 1099511627779
  store ptr %i.r, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.010.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.5.20.insert.insert.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.w = trunc nuw i8 %i.t to i1
  br i1 %i.w, label %mi_os_ensure_zero.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 8) ]
  %i.x = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !32
  %.not.i.i.i.i = icmp ugt i64 %1, %i.x
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m, !prof !33

bb.m:                                             ; preds = %bb.l
  %i.y = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.r, i64 range(i64 1, 0) %1) #11, !srcloc !34 ; 0 uses
  br label %_mi_memzero_aligned.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, i8 0, i64 range(i64 1, 0) %1, i1 false)
  br label %_mi_memzero_aligned.exit.i

_mi_memzero_aligned.exit.i:                       ; preds = %bb.n, %bb.m
  store i8 1, ptr %i.v, align 2, !tbaa !35
  br label %mi_os_ensure_zero.exit

mi_os_ensure_zero.exit:                           ; preds = %bb.a, %_mi_os_alloc.exit.thread11, %bb.k, %_mi_memzero_aligned.exit.i
  %.1.i6 = phi ptr [ null, %_mi_os_alloc.exit.thread11 ], [ null, %bb.a ], [ %i.r, %_mi_memzero_aligned.exit.i ], [ %i.r, %bb.k ]
  ret ptr %.1.i6
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_os_alloc_aligned_at_offset(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.b = icmp ugt i64 %3, %1
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_mi_os_alloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef nonnull %6) #10
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.e = add i64 %2, -1
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.g = icmp samesign ult i64 %i.f, 2
  %i.h = add i64 %i.e, %3                         ; 3 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = sub i64 0, %2
  %i.j = and i64 %i.h, %i.i
  br label %_mi_align_up.exit

bb.f:                                             ; preds = %bb.d
  %i.k = urem i64 %i.h, %2
  %i.l = sub nuw i64 %i.h, %i.k
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.j, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.m = sub i64 %.0.i, %3                        ; 5 uses
  %i.n = xor i64 %i.m, -1
  %.not = icmp ult i64 %1, %i.n
  br i1 %.not, label %bb.g, label %bb.r

bb.g:                                             ; preds = %_mi_align_up.exit
  %i.o = add i64 %i.m, %1
  %i.p = tail call ptr @_mi_os_alloc_aligned(ptr noundef %0, i64 noundef %i.o, i64 noundef %2, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef nonnull %6) #10 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 4 uses
  br i1 %4, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15 ; 6 uses
  %.not36 = icmp ult i64 %i.m, %i.s
  br i1 %.not36, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.t = icmp eq i64 %.0.i, %3
  br i1 %i.t, label %_mi_os_decommit.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.w = icmp samesign ult i64 %i.v, 2
  %i.x = add i64 %i.u, -1
  %i.y = add i64 %i.x, %i.s                       ; 3 uses
  %i.z = ptrtoint ptr %i.r to i64                 ; 3 uses
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = sub i64 0, %i.s                         ; 2 uses
  %i.ab = and i64 %i.y, %i.aa
  %i.ac = and i64 %i.aa, %i.z
  br label %_mi_align_down_ptr.exit27.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = urem i64 %i.y, %i.s
  %i.ae = sub nuw i64 %i.y, %i.ad
  %i.af = urem i64 %i.z, %i.s
  %i.ag = sub nuw i64 %i.z, %i.af
  br label %_mi_align_down_ptr.exit27.i.i.i.i

_mi_align_down_ptr.exit27.i.i.i.i:                ; preds = %bb.m, %bb.l
  %.in.i.i.i.i = phi i64 [ %i.ae, %bb.m ], [ %i.ab, %bb.l ] ; 2 uses
  %.in30.i.i.i.i = phi i64 [ %i.ag, %bb.m ], [ %i.ac, %bb.l ]
  %i.ah = sub i64 %.in30.i.i.i.i, %.in.i.i.i.i    ; 3 uses
  %i.ai = icmp slt i64 %i.ah, 1
  br i1 %i.ai, label %_mi_os_decommit.exit, label %bb.n

bb.n:                                             ; preds = %_mi_align_down_ptr.exit27.i.i.i.i
  %i.aj = inttoptr i64 %.in.i.i.i.i to ptr        ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !29
  %i.ak = call i32 @_mi_prim_decommit(ptr noundef %i.aj, i64 noundef %i.ah, ptr noundef nonnull %i.a) #9 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.11, i32 noundef %i.ak, i32 noundef %i.ak, ptr noundef %i.aj, i64 noundef %i.ah) #9
  br label %_mi_os_decommit.exit

bb.p:                                             ; preds = %bb.n
  %i.al = load i8, ptr %i.a, align 1, !tbaa !29, !range !12, !noundef !13
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.q, label %_mi_os_decommit.exit

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1600
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.an, i64 noundef %i.m) #9
  br label %_mi_os_decommit.exit

_mi_os_decommit.exit:                             ; preds = %bb.j, %_mi_align_down_ptr.exit27.i.i.i.i, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.r

bb.r:                                             ; preds = %_mi_align_up.exit, %bb.h, %bb.i, %_mi_os_decommit.exit, %bb.g, %bb.a, %bb.c
  %.2 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ null, %_mi_align_up.exit ], [ null, %bb.g ], [ %i.r, %_mi_os_decommit.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.h ]
  ret ptr %.2
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_os_decommit(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq i64 %2, 0
  %i.c = icmp eq ptr %1, null
  %or.cond.i.i.i = or i1 %i.c, %i.b
  br i1 %or.cond.i.i.i, label %mi_os_decommit_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15 ; 5 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.d)
  %i.g = icmp samesign ult i64 %i.f, 2
  %i.h = add i64 %i.e, -1
  %i.i = add i64 %i.h, %i.d                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.k = ptrtoint ptr %i.j to i64                 ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 0, %i.d                          ; 2 uses
  %i.m = and i64 %i.i, %i.l
  %i.n = and i64 %i.l, %i.k
  br label %_mi_align_down_ptr.exit27.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = urem i64 %i.i, %i.d
  %i.p = sub nuw i64 %i.i, %i.o
  %i.q = urem i64 %i.k, %i.d
  %i.r = sub nuw i64 %i.k, %i.q
  br label %_mi_align_down_ptr.exit27.i.i.i

_mi_align_down_ptr.exit27.i.i.i:                  ; preds = %bb.d, %bb.c
  %.in.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.in30.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  %i.s = sub i64 %.in30.i.i.i, %.in.i.i.i         ; 3 uses
  %i.t = icmp slt i64 %i.s, 1
  br i1 %i.t, label %mi_os_decommit_ex.exit, label %bb.e

bb.e:                                             ; preds = %_mi_align_down_ptr.exit27.i.i.i
  %i.u = inttoptr i64 %.in.i.i.i to ptr           ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !29
  %i.v = call i32 @_mi_prim_decommit(ptr noundef %i.u, i64 noundef %i.s, ptr noundef nonnull %i.a) #9 ; 3 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.g, label %bb.f

end_hunk_1
begin_hunk_2_@_mi_os_purge_ex:bb.a
  %i.bb = inttoptr i64 %.in.i.i.i20 to ptr        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1624
  tail call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.bc, i64 noundef %i.az) #9
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1800
  tail call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.bd, i64 noundef 1) #9
  %i.be = tail call i32 @_mi_prim_reset(ptr noundef %i.bb, i64 noundef %i.az) #9 ; 3 uses
  %.not.i22 = icmp eq i32 %i.be, 0
  br i1 %.not.i22, label %_mi_os_reset.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.1, i32 noundef %i.be, i32 noundef %i.be, ptr noundef %i.bb, i64 noundef %i.az) #9
  br label %_mi_os_reset.exit

_mi_os_reset.exit:                                ; preds = %bb.t, %bb.s, %_mi_align_down_ptr.exit27.i.i.i19, %bb.o, %bb.n, %bb.a, %mi_os_decommit_ex.exit, %bb.c
  %.0 = phi i1 [ %i.ah, %mi_os_decommit_ex.exit ], [ %i.f, %bb.c ], [ false, %bb.a ], [ false, %bb.n ], [ false, %bb.o ], [ false, %_mi_align_down_ptr.exit27.i.i.i19 ], [ false, %bb.s ], [ false, %bb.t ]
  ret i1 %.0
}

declare zeroext i1 @mi_option_is_enabled(i32 noundef) local_unnamed_addr #3

declare zeroext i1 @_mi_preloading() local_unnamed_addr #3

; Function Attrs: nooutline nounwind uwtable
define hidden zeroext i1 @_mi_os_purge(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_mi_os_purge_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true, i64 noundef %2, ptr noundef null, ptr noundef null) #10
  ret i1 %i.a
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_os_protect(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond.i.i.i = or i1 %i.b, %i.a
  br i1 %or.cond.i.i.i, label %mi_os_protectx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15 ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.c)
  %i.f = icmp samesign ult i64 %i.e, 2
  %i.g = add i64 %i.d, -1
  %i.h = add i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub i64 0, %i.c                          ; 2 uses
  %i.l = and i64 %i.h, %i.k
  %i.m = and i64 %i.k, %i.j
  br label %_mi_align_down_ptr.exit27.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = urem i64 %i.h, %i.c
  %i.o = sub nuw i64 %i.h, %i.n
  %i.p = urem i64 %i.j, %i.c
  %i.q = sub nuw i64 %i.j, %i.p
  br label %_mi_align_down_ptr.exit27.i.i.i

_mi_align_down_ptr.exit27.i.i.i:                  ; preds = %bb.d, %bb.c
  %.in.i.i.i = phi i64 [ %i.o, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.in30.i.i.i = phi i64 [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = sub i64 %.in30.i.i.i, %.in.i.i.i         ; 3 uses
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %mi_os_protectx.exit, label %bb.e

bb.e:                                             ; preds = %_mi_align_down_ptr.exit27.i.i.i
  %i.t = inttoptr i64 %.in.i.i.i to ptr           ; 2 uses
  %i.u = tail call i32 @_mi_prim_protect(ptr noundef %i.t, i64 noundef %i.r, i1 noundef zeroext true) #9 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %mi_os_protectx.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %i.u, i32 noundef %i.u, ptr noundef %i.t, i64 noundef %i.r) #9
  br label %mi_os_protectx.exit

mi_os_protectx.exit:                              ; preds = %bb.a, %_mi_align_down_ptr.exit27.i.i.i, %bb.e, %bb.f
  %.0.i = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ false, %bb.a ], [ false, %_mi_align_down_ptr.exit27.i.i.i ]
  ret i1 %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_os_unprotect(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq ptr %0, null
  %or.cond.i.i.i = or i1 %i.b, %i.a
  br i1 %or.cond.i.i.i, label %mi_os_protectx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @mi_os_mem_config, align 8, !tbaa !15 ; 5 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.c)
  %i.f = icmp samesign ult i64 %i.e, 2
  %i.g = add i64 %i.d, -1
  %i.h = add i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub i64 0, %i.c                          ; 2 uses
  %i.l = and i64 %i.h, %i.k
  %i.m = and i64 %i.k, %i.j
  br label %_mi_align_down_ptr.exit27.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = urem i64 %i.h, %i.c
  %i.o = sub nuw i64 %i.h, %i.n
  %i.p = urem i64 %i.j, %i.c
  %i.q = sub nuw i64 %i.j, %i.p
  br label %_mi_align_down_ptr.exit27.i.i.i

_mi_align_down_ptr.exit27.i.i.i:                  ; preds = %bb.d, %bb.c
  %.in.i.i.i = phi i64 [ %i.o, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.in30.i.i.i = phi i64 [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = sub i64 %.in30.i.i.i, %.in.i.i.i         ; 3 uses
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %mi_os_protectx.exit, label %bb.e

bb.e:                                             ; preds = %_mi_align_down_ptr.exit27.i.i.i
  %i.t = inttoptr i64 %.in.i.i.i to ptr           ; 2 uses
  %i.u = tail call i32 @_mi_prim_protect(ptr noundef %i.t, i64 noundef %i.r, i1 noundef zeroext false) #9 ; 3 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %mi_os_protectx.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i32 noundef %i.u, i32 noundef %i.u, ptr noundef %i.t, i64 noundef %i.r) #9
  br label %mi_os_protectx.exit

mi_os_protectx.exit:                              ; preds = %bb.a, %_mi_align_down_ptr.exit27.i.i.i, %bb.e, %bb.f
  %.0.i = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ false, %bb.a ], [ false, %_mi_align_down_ptr.exit27.i.i.i ]
  ret i1 %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_os_alloc_huge_os_pages(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 11 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %5, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %5, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not73 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %4, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = icmp ugt i64 %1, 17179869183
  %i.d = shl i64 %1, 30                           ; 2 uses
  br i1 %i.c, label %mi_os_claim_huge_pages.exit.thread, label %bb.f

mi_os_claim_huge_pages.exit.thread:               ; preds = %bb.e
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.15, i64 noundef %1) #9
  br label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.e = load atomic i64, ptr @mi_huge_start monotonic, align 64
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.021.i = phi i64 [ %i.e, %bb.f ], [ %i.r, %bb.j ] ; 3 uses
  %i.g = icmp eq i64 %.021.i, 0
  br i1 %i.g, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %mi_theap_is_initialized.exit.thread.i, label %mi_theap_is_initialized.exit.i

mi_theap_is_initialized.exit.i:                   ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %mi_theap_is_initialized.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %mi_theap_is_initialized.exit.i
  %i.k = tail call i64 @_mi_theap_random_next(ptr noundef nonnull %i.h) #9
  %i.l = shl i64 %i.k, 13
  %i.m = and i64 %i.l, 4396972769280
  %i.n = or disjoint i64 %i.m, 35184372088832
  br label %bb.j

mi_theap_is_initialized.exit.thread.i:            ; preds = %mi_theap_is_initialized.exit.i, %bb.h
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.16, i64 noundef %i.d, ptr noundef nonnull inttoptr (i64 35184372088832 to ptr)) #9
  br label %bb.j

bb.j:                                             ; preds = %mi_theap_is_initialized.exit.thread.i, %bb.i, %bb.g
  %.1.i = phi i64 [ %.021.i, %bb.g ], [ %i.n, %bb.i ], [ 35184372088832, %mi_theap_is_initialized.exit.thread.i ] ; 2 uses
  %i.o = add i64 %.1.i, %i.d
  %i.p = cmpxchg weak ptr @mi_huge_start, i64 %.021.i, i64 %i.o acq_rel acquire, align 64 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  br i1 %i.q, label %bb.k, label %bb.g, !llvm.loop !36

bb.k:                                             ; preds = %bb.j
  %i.s = inttoptr i64 %.1.i to ptr                ; 4 uses
  %i.t = tail call i64 @_mi_clock_start() #9
  %.not120 = icmp eq i64 %1, 0
  br i1 %.not120, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 3 uses
  %i.w = icmp sgt i64 %3, 0
  %i.x = shl nuw nsw i64 %3, 1
  br i1 %i.w, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %mi_os_prim_free.exit.us
  %.054105.us = phi i8 [ %spec.select.us, %mi_os_prim_free.exit.us ], [ 1, %.lr.ph ]
  %.056104.us = phi i64 [ %i.ae, %mi_os_prim_free.exit.us ], [ 0, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i8 0, ptr %i.a, align 1, !tbaa !29
  %i.y = shl nuw i64 %.056104.us, 30
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.aa = call i32 @_mi_prim_alloc_huge_os_pages(ptr noundef nonnull %i.z, i64 noundef 1073741824, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.ab = load i8, ptr %i.a, align 1, !tbaa !29, !range !12, !noundef !13
  %i.ac = trunc nuw i8 %i.ab to i1
  %spec.select.us = select i1 %i.ac, i8 %.054105.us, i8 0 ; 5 uses
  %.not74.us = icmp eq i32 %i.aa, 0
  br i1 %.not74.us, label %bb.l, label %.split.us

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %.not75.us = icmp eq ptr %i.ad, %i.z
  br i1 %.not75.us, label %bb.m, label %.split111.us

bb.m:                                             ; preds = %bb.l
  %i.ae = add nuw i64 %.056104.us, 1              ; 5 uses
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.u, i64 noundef 1073741824) #9
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.v, i64 noundef 1073741824) #9
  %i.af = call i64 @_mi_clock_end(i64 noundef %i.t) #9 ; 2 uses
  %i.ag = udiv i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, %1
  %i.ai = icmp sgt i64 %i.ah, %i.x
  %.not7786.us = icmp sgt i64 %i.af, %3
  %.not77.us = or i1 %.not7786.us, %i.ai
  br i1 %.not77.us, label %.thread, label %mi_os_prim_free.exit.us

mi_os_prim_free.exit.us:                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %exitcond155.not = icmp eq i64 %i.ae, %1
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %mi_os_prim_free.exit
  %.054105 = phi i8 [ %spec.select, %mi_os_prim_free.exit ], [ 1, %.lr.ph ]
  %.056104 = phi i64 [ %i.as, %mi_os_prim_free.exit ], [ 0, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i8 0, ptr %i.a, align 1, !tbaa !29
  %i.aj = shl nuw i64 %.056104, 30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aj ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.al = call i32 @_mi_prim_alloc_huge_os_pages(ptr noundef nonnull %i.ak, i64 noundef 1073741824, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.am = load i8, ptr %i.a, align 1, !tbaa !29, !range !12, !noundef !13
  %i.an = trunc nuw i8 %i.am to i1
  %spec.select = select i1 %i.an, i8 %.054105, i8 0 ; 4 uses
  %.not74 = icmp eq i32 %i.al, 0
  br i1 %.not74, label %bb.n, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.z, %.lr.ph.split.us ], [ %i.ak, %.lr.ph.split ]
  %.us-phi107 = phi i32 [ %i.aa, %.lr.ph.split.us ], [ %i.al, %.lr.ph.split ] ; 2 uses
  %.us-phi108 = phi i8 [ %spec.select.us, %.lr.ph.split.us ], [ %spec.select, %.lr.ph.split ]
  %.us-phi109 = phi i64 [ %.056104.us, %.lr.ph.split.us ], [ %.056104, %.lr.ph.split ]
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3, i32 noundef %.us-phi107, i32 noundef %.us-phi107, ptr noundef nonnull %.us-phi, i64 noundef 1073741824) #9
  br label %mi_os_prim_free.exit.thread

bb.n:                                             ; preds = %.lr.ph.split
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %.not75 = icmp eq ptr %i.ao, %i.ak
  br i1 %.not75, label %mi_os_prim_free.exit, label %.split111.us

.split111.us:                                     ; preds = %bb.n, %bb.l
  %.us-phi112 = phi ptr [ %i.ad, %bb.l ], [ %i.ao, %bb.n ]
  %.us-phi113 = phi ptr [ %i.z, %bb.l ], [ %i.ak, %bb.n ]
  %.us-phi114 = phi i8 [ %spec.select.us, %bb.l ], [ %spec.select, %bb.n ] ; 3 uses
  %.us-phi115 = phi i64 [ %.056104.us, %bb.l ], [ %.056104, %bb.n ] ; 4 uses
  %.not78 = icmp eq ptr %.us-phi112, null
  br i1 %.not78, label %mi_os_prim_free.exit.thread, label %bb.o

bb.o:                                             ; preds = %.split111.us
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.4, i64 noundef %.us-phi115, ptr noundef nonnull %.us-phi113) #9
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %mi_os_prim_free.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = call i32 @_mi_prim_free(ptr noundef nonnull %i.ap, i64 noundef 1073741824) #9 ; 3 uses
  %.not.i81 = icmp eq i32 %i.ar, 0
  br i1 %.not.i81, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, i32 noundef %i.ar, i32 noundef %i.ar, i64 noundef 1073741824, ptr noundef nonnull %i.ap) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.u, i64 noundef 1073741824) #9
  call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.v, i64 noundef 1073741824) #9
  br label %mi_os_prim_free.exit.thread

mi_os_prim_free.exit:                             ; preds = %bb.n
  %i.as = add nuw i64 %.056104, 1                 ; 2 uses
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.u, i64 noundef 1073741824) #9
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.v, i64 noundef 1073741824) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %exitcond.not = icmp eq i64 %i.as, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split

.thread:                                          ; preds = %bb.m
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.5, i64 noundef %i.ae) #9
  br label %mi_os_prim_free.exit.thread

mi_os_prim_free.exit.thread:                      ; preds = %.split.us, %.thread, %bb.r, %.split111.us, %bb.o
  %spec.select95 = phi i8 [ %.us-phi114, %bb.o ], [ %.us-phi114, %.split111.us ], [ %.us-phi114, %bb.r ], [ %spec.select.us, %.thread ], [ %.us-phi108, %.split.us ]
  %.157.ph = phi i64 [ %.us-phi115, %bb.o ], [ %.us-phi115, %.split111.us ], [ %.us-phi115, %bb.r ], [ %i.ae, %.thread ], [ %.us-phi109, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.loopexit:                                        ; preds = %mi_os_prim_free.exit, %mi_os_prim_free.exit.us, %bb.k, %mi_os_prim_free.exit.thread
  %.258 = phi i64 [ %.157.ph, %mi_os_prim_free.exit.thread ], [ 0, %bb.k ], [ %1, %mi_os_prim_free.exit.us ], [ %1, %mi_os_prim_free.exit ] ; 3 uses
  %.2 = phi i8 [ %spec.select95, %mi_os_prim_free.exit.thread ], [ 1, %bb.k ], [ %spec.select.us, %mi_os_prim_free.exit.us ], [ %spec.select, %mi_os_prim_free.exit ]
  %i.at = shl i64 %.258, 30                       ; 2 uses
  br i1 %.not73, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit
  store i64 %.258, ptr %4, align 8, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %i.at, ptr %5, align 8, !tbaa !32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not79 = icmp eq i64 %.258, 0
  br i1 %.not79, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.5.22.insert.ext = zext nneg i8 %.2 to i64
  %.sroa.5.22.insert.shift = shl nuw nsw i64 %.sroa.5.22.insert.ext, 48
  %.sroa.5.20.insert.insert = or disjoint i64 %.sroa.5.22.insert.shift, 1103806595075
  store ptr %i.s, ptr %6, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %.sroa.5.20.insert.insert, ptr %.sroa.5.0..sroa_idx, align 8
  store i32 4, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %mi_os_claim_huge_pages.exit.thread
  %.061 = phi ptr [ null, %mi_os_claim_huge_pages.exit.thread ], [ %i.s, %bb.w ], [ null, %bb.v ]
  ret ptr %.061
}

declare i64 @_mi_clock_start() local_unnamed_addr #3

declare i32 @_mi_prim_alloc_huge_os_pages(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @_mi_clock_end(i64 noundef) local_unnamed_addr #3

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 1, -2147483648) i32 @_mi_os_numa_node_count() local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i64, ptr @mi_numa_node_count acquire, align 8 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @mi_option_get(i32 noundef 16) #9 ; 2 uses
  %i.d = add i64 %i.c, -1
  %or.cond = icmp ult i64 %i.d, 2147483646
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @_mi_prim_numa_node_count() #9 ; 2 uses
  %i.f = add i64 %i.e, -2147483648
  %or.cond3 = icmp ult i64 %i.f, -2147483647
  br i1 %or.cond3, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store atomic i64 1, ptr @mi_numa_node_count release, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.e, %bb.c ], [ %i.c, %bb.b ]  ; 4 uses
  store atomic i64 %.1, ptr @mi_numa_node_count release, align 8
  %i.g = icmp samesign ugt i64 %.1, 1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.6, i64 noundef %.1) #9
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.a
  %.2 = phi i64 [ %i.a, %bb.a ], [ %.1, %bb.e ], [ 1, %bb.d ], [ 1, %.thread ]
  %i.h = trunc nuw nsw i64 %.2 to i32
  ret i32 %i.h
}

declare i64 @_mi_prim_numa_node_count() local_unnamed_addr #3

declare void @_mi_verbose_message(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @_mi_os_numa_node() local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i64, ptr @mi_numa_node_count monotonic, align 8
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mi_os_numa_node_get() #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @mi_os_numa_node_get() unnamed_addr #1 {
bb.a:
  %i.a = load atomic i64, ptr @mi_numa_node_count acquire, align 8 ; 2 uses
  switch i64 %i.a, label %bb.e [
    i64 0, label %bb.b
    i64 1, label %_mi_os_numa_node_count.exit.thread
  ], !prof !37

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @mi_option_get(i32 noundef 16) #9 ; 2 uses
  %i.c = add i64 %i.b, -1
  %or.cond.i = icmp ult i64 %i.c, 2147483646
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @_mi_prim_numa_node_count() #9 ; 2 uses
  %i.e = add i64 %i.d, -2147483648
  %or.cond3.i = icmp ult i64 %i.e, -2147483647
  br i1 %or.cond3.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  store atomic i64 1, ptr @mi_numa_node_count release, align 8
  br label %_mi_os_numa_node_count.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
  store atomic i64 %.1.i, ptr @mi_numa_node_count release, align 8
  %i.f = icmp samesign ugt i64 %.1.i, 1
  br i1 %i.f, label %_mi_os_numa_node_count.exit.thread15, label %_mi_os_numa_node_count.exit.thread

_mi_os_numa_node_count.exit.thread15:             ; preds = %bb.d
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.6, i64 noundef %.1.i) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_mi_os_numa_node_count.exit.thread15
  %.in = phi i64 [ %.1.i, %_mi_os_numa_node_count.exit.thread15 ], [ %i.a, %bb.a ]
  %i.g = trunc i64 %.in to i32                    ; 2 uses
  %i.h = tail call i64 @_mi_prim_numa_node() #9   ; 2 uses
  %i.i = icmp ult i64 %i.h, 2147483647
  %i.j = trunc i64 %i.h to i32
  %i.k = select i1 %i.i, i32 %i.j, i32 0          ; 3 uses
  %.not = icmp slt i32 %i.k, %i.g
  br i1 %.not, label %_mi_os_numa_node_count.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = urem i32 %i.k, %i.g
  br label %_mi_os_numa_node_count.exit.thread

_mi_os_numa_node_count.exit.thread:               ; preds = %bb.a, %.thread.i, %bb.d, %bb.e, %bb.f
  %.09 = phi i32 [ 0, %bb.a ], [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ 0, %bb.d ], [ 0, %.thread.i ]
  ret i32 %.09
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #5

declare i32 @_mi_prim_free(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @__mi_stat_adjust_decrease_mt(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @__mi_stat_decrease_mt(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @_mi_prim_alloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare i32 @_mi_prim_decommit(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_mi_prim_protect(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i64 @_mi_prim_numa_node() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind "no-builtin-malloc" }
attributes #10 = { "no-builtin-malloc" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 40}
!9 = !{!"mi_os_mem_config_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !11, i64 41, !11, i64 42, !11, i64 43}
!10 = !{!"long", !6, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!9, !11, i64 42}
!15 = !{!9, !10, i64 0}
!16 = !{!9, !10, i64 8}
!17 = !{!9, !11, i64 43}
!18 = !{!9, !10, i64 32}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!9, !10, i64 16}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS10mi_theap_s", !23, i64 0}
end_hunk_2
