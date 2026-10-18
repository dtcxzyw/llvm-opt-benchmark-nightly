Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_recurse_enter_prim:bb.a
  %.0 = xor i1 %i.c, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_recurse_exit_prim() unnamed_addr #51 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @recurse)
  store i8 0, ptr %i.a, align 1, !tbaa !142
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #52

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_large_huge_page_alloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 524288
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !121
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %1, 2097152
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i64 %1, 8388608
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i64 %1, 33554432
  %..i = select i1 %i.e, i64 1048576, i64 4194304
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i = phi i64 [ %i.b, %bb.b ], [ 262144, %bb.d ], [ 65536, %bb.c ], [ %..i, %bb.e ] ; 5 uses
  %i.f = xor i64 %.0.i, -1
  %.not.i = icmp ult i64 %1, %i.f
  br i1 %.not.i, label %bb.g, label %_mi_os_good_alloc_size.exit, !prof !96

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.h = icmp samesign ult i64 %i.g, 2
  %i.i = add nsw i64 %1, -1
  %i.j = add i64 %i.i, %.0.i                      ; 3 uses
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = sub i64 0, %.0.i
  %i.l = and i64 %i.j, %i.k
  br label %_mi_os_good_alloc_size.exit

bb.i:                                             ; preds = %bb.g
  %i.m = urem i64 %i.j, %.0.i
  %i.n = sub nuw i64 %i.j, %i.m
  br label %_mi_os_good_alloc_size.exit

_mi_os_good_alloc_size.exit:                      ; preds = %bb.f, %bb.h, %bb.i
  %.010.i = phi i64 [ %1, %bb.f ], [ %i.l, %bb.h ], [ %i.n, %bb.i ] ; 3 uses
  %i.o = icmp ugt i64 %.010.i, 16777216
  %i.p = icmp ne i64 %2, 0
  %i.q = or i1 %i.p, %i.o
  %i.r = add i64 %.010.i, 7
  %i.s = select i1 %i.q, i64 2147483655, i64 %i.r ; 4 uses
  %i.t = lshr i64 %i.s, 3                         ; 2 uses
  %i.u = icmp ult i64 %i.s, 16
  br i1 %i.u, label %mi_page_queue.exit, label %bb.j

bb.j:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.v = icmp ult i64 %i.s, 72
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = add nuw nsw i64 %i.t, 1
  %i.x = and i64 %i.w, 30
  br label %mi_page_queue.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp ugt i64 %i.s, 131079
  br i1 %i.y, label %mi_page_queue.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i64 %i.t, -1                     ; 2 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false) ; 2 uses
  %i.ab = sub nsw i64 61, %i.aa
  %i.ac = lshr i64 %i.z, %i.ab
  %i.ad = and i64 %i.ac, 3
  %i.ae = shl nuw nsw i64 %i.aa, 2
  %reass.sub = sub nsw i64 %i.ad, %i.ae
  %i.af = add nsw i64 %reass.sub, 249
  %i.ag = and i64 %i.af, 255
  br label %mi_page_queue.exit

mi_page_queue.exit:                               ; preds = %_mi_os_good_alloc_size.exit, %bb.k, %bb.l, %bb.m
  %.0.i.i.i = phi i64 [ %i.ag, %bb.m ], [ %i.x, %bb.k ], [ 1, %_mi_os_good_alloc_size.exit ], [ 73, %bb.l ]
  %i.ah = getelementptr i8, ptr %0, i64 1040
  %i.ai = getelementptr [24 x i8], ptr %i.ah, i64 %.0.i.i.i
  %i.aj = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr noundef %i.ai, i64 noundef %.010.i, i64 noundef %2)
  ret ptr %i.aj
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = getelementptr i8, ptr %i.a, i64 952
  %i.d = tail call ptr @_mi_segment_page_alloc(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3, ptr noundef %i.b, ptr noundef %i.c) ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !103
  %i.h = icmp eq i64 %.val, 131080
  br i1 %i.h, label %bb.d, label %mi_page_block_size.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65   ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %_mi_segment_page_start.exit.i, !prof !96

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.d
  %i.m = load i32, ptr %i.d, align 8, !tbaa !93
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %_mi_segment_page_start.exit.i, %bb.e, %bb.c
  %i.p = phi i64 [ %2, %bb.c ], [ %i.l, %bb.e ], [ %i.o, %_mi_segment_page_start.exit.i ] ; 7 uses
  %i.q = getelementptr i8, ptr %i.d, i64 48
  %i.r = ptrtoint ptr %0 to i64
  store atomic i64 %i.r, ptr %i.q release, align 8
  %i.s = getelementptr i8, ptr %0, i64 3057
  %i.t = load i8, ptr %i.s, align 1, !tbaa !176
  %i.u = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.v = load i8, ptr %i.u, align 8               ; 2 uses
  %i.w = shl i8 %i.t, 3
  %i.x = and i8 %i.w, 120
  %i.y = and i8 %i.v, -121
  %i.z = or disjoint i8 %i.y, %i.x                ; 2 uses
  store i8 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr i8, ptr %0, i64 3059
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !642, !range !86, !noundef !87
  %i.ac = shl nuw nsw i8 %i.ab, 2
  %i.ad = and i8 %i.z, -5
  %i.ae = or disjoint i8 %i.ad, %i.ac
  store i8 %i.ae, ptr %i.u, align 8
  %i.af = getelementptr i8, ptr %0, i64 3058
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !643
  %i.ah = getelementptr i8, ptr %i.d, i64 9
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !644
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.p, i64 2147483648) ; 6 uses
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  %i.ak = getelementptr i8, ptr %i.d, i64 28
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !65
  %i.al = load i32, ptr %i.d, align 8, !tbaa !93
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 16               ; 2 uses
  %i.ao = icmp ugt i64 %i.p, 7                    ; 2 uses
  br i1 %i.ao, label %bb.f, label %_mi_segment_page_start.exit.i21

bb.f:                                             ; preds = %mi_page_block_size.exit
  %i.ap = icmp ult i64 %i.p, 65
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = mul nuw nsw i64 %i.ai, 3
  br label %_mi_segment_page_start.exit.i21

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %i.p, 513
  %spec.select.i.i.i = select i1 %i.ar, i64 %i.ai, i64 0
  br label %_mi_segment_page_start.exit.i21

_mi_segment_page_start.exit.i21:                  ; preds = %bb.h, %bb.g, %mi_page_block_size.exit
  %.0.i.i.i = phi i64 [ %i.aq, %bb.g ], [ 0, %mi_page_block_size.exit ], [ %spec.select.i.i.i, %bb.h ]
  %i.as = sub nsw i64 %i.an, %.0.i.i.i
  %i.at = udiv i64 %i.as, %i.p
  %i.au = trunc i64 %i.at to i16                  ; 3 uses
  %i.av = getelementptr i8, ptr %i.d, i64 12
  store i16 %i.au, ptr %i.av, align 4, !tbaa !181
  %i.aw = lshr i8 %i.v, 1
  %i.ax = and i8 %i.aw, 1
  %i.ay = getelementptr i8, ptr %i.d, i64 15      ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, -2
  %i.bb = or disjoint i8 %i.ba, %i.ax
  store i8 %i.bb, ptr %i.ay, align 1
  %i.bc = getelementptr i8, ptr %i.d, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %bb.i, label %mi_page_init.exit

bb.i:                                             ; preds = %_mi_segment_page_start.exit.i21
  %i.be = getelementptr i8, ptr %i.d, i64 10      ; 3 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !114 ; 2 uses
  %.not24.i.i = icmp ult i16 %i.bf, %i.au
  br i1 %.not24.i.i, label %bb.j, label %mi_page_init.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.ao, label %bb.k, label %_mi_page_start.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp ult i64 %i.p, 65
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = mul nuw nsw i64 %i.ai, 3
  br label %_mi_page_start.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp ult i64 %i.p, 513
  %spec.select.i.i.i.i.i = select i1 %i.bi, i64 %i.ai, i64 0
  br label %_mi_page_start.exit.i.i

_mi_page_start.exit.i.i:                          ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i.i = phi i64 [ %i.bh, %bb.l ], [ 0, %bb.j ], [ %spec.select.i.i.i.i.i, %bb.m ]
  %i.bj = sub nsw i64 %i.an, %.0.i.i.i.i.i
  %i.bk = icmp slt i32 %i.aj, 0
  %i.bl = select i1 %i.bk, i64 %i.bj, i64 %i.ai   ; 3 uses
  %4 = sub nuw i16 %i.au, %i.bf
  %i.bm = zext i16 %4 to i64
  %i.bn = icmp ugt i64 %i.bl, 4095
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_mi_page_start.exit.i.i
  %.rhs.trunc.i.i = trunc nuw nsw i64 %i.bl to i16
  %i.bo = udiv i16 4096, %.rhs.trunc.i.i
  %i.bp = tail call i16 @llvm.umax.i16(i16 %i.bo, i16 4)
  %i.bq = zext nneg i16 %i.bp to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_mi_page_start.exit.i.i
  %spec.store.select.i.i = phi i64 [ %i.bq, %bb.n ], [ 4, %_mi_page_start.exit.i.i ]
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %spec.store.select.i.i) ; 2 uses
  tail call fastcc void @mi_page_free_list_extend(ptr noundef nonnull %i.d, i64 noundef %i.bl, i64 noundef %spec.select.i.i)
  %i.br = trunc nuw nsw i64 %spec.select.i.i to i16
  %i.bs = load i16, ptr %i.be, align 2, !tbaa !114
  %i.bt = add i16 %i.bs, %i.br
  store i16 %i.bt, ptr %i.be, align 2, !tbaa !114
  br label %mi_page_init.exit

mi_page_init.exit:                                ; preds = %_mi_segment_page_start.exit.i21, %bb.i, %bb.o
  br i1 %i.f, label %bb.q, label %bb.p

bb.p:                                             ; preds = %mi_page_init.exit
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %mi_page_init.exit, %bb.p, %bb.a
  ret ptr %i.d
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_free_list_extend(ptr noundef nonnull %0, i64 noundef %1, i64 noundef range(i64 0, 4097) %2) unnamed_addr #53 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65   ; 4 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp ugt i32 %i.f, 7
  br i1 %i.h, label %bb.b, label %_mi_page_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %i.f, 65
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = mul nuw nsw i64 %i.g, 3
  br label %_mi_page_start.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.f, 513
  %spec.select.i.i.i = select i1 %i.k, i64 %i.g, i64 0
  br label %_mi_page_start.exit

_mi_page_start.exit:                              ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.a ], [ %spec.select.i.i.i, %bb.d ]
  %i.l = getelementptr i8, ptr %i.d, i64 264
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.a, %i.m
  %i.o = sdiv exact i64 %i.n, 80
  %i.p = shl i64 %i.o, 16
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 %.0.i.i.i ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 10
  %i.t = load i16, ptr %i.s, align 2, !tbaa !114
  %i.u = zext i16 %i.t to i64                     ; 2 uses
  %i.v = mul i64 %1, %i.u
  %i.w = getelementptr i8, ptr %i.r, i64 %i.v     ; 3 uses
  %i.x = add nsw i64 %2, -1
  %i.y = add nsw i64 %i.x, %i.u
  %i.z = mul i64 %i.y, %1
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z    ; 3 uses
  %.not1 = icmp ugt ptr %i.w, %i.aa
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_mi_page_start.exit, %.lr.ph
  %.02 = phi ptr [ %i.ab, %.lr.ph ], [ %i.w, %_mi_page_start.exit ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.02, i64 %1      ; 3 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  store atomic i64 %i.ac, ptr %.02 monotonic, align 8
  %.not = icmp ugt ptr %i.ab, %i.aa
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !645

._crit_edge:                                      ; preds = %.lr.ph, %_mi_page_start.exit
  %i.ad = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.af = ptrtoint ptr %i.ae to i64
  store atomic i64 %i.af, ptr %i.aa monotonic, align 8
  store ptr %i.w, ptr %i.ad, align 8, !tbaa !60
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @chacha_block(ptr nofree noundef captures(none) %0) unnamed_addr #19 {
.preheader21:
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !54
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %0, i64 4 ; 2 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !54
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %0, i64 8
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !54
  %.sroa.12.0..sroa_idx = getelementptr i8, ptr %0, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !54
  %.sroa.15.0..sroa_idx = getelementptr i8, ptr %0, i64 16
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !54
  %.sroa.18.0..sroa_idx = getelementptr i8, ptr %0, i64 20 ; 2 uses
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !54
  %.sroa.21.0..sroa_idx = getelementptr i8, ptr %0, i64 24
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !54
  %.sroa.24.0..sroa_idx = getelementptr i8, ptr %0, i64 28
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !54
  %.sroa.27.0..sroa_idx = getelementptr i8, ptr %0, i64 32
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !54
  %.sroa.30.0..sroa_idx = getelementptr i8, ptr %0, i64 36 ; 2 uses
  %.sroa.30.0.copyload = load i32, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !54
  %.sroa.33.0..sroa_idx = getelementptr i8, ptr %0, i64 40
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !54
  %.sroa.36.0..sroa_idx = getelementptr i8, ptr %0, i64 44
  %.sroa.36.0.copyload = load i32, ptr %.sroa.36.0..sroa_idx, align 4, !tbaa !54
  %.sroa.39.0..sroa_idx = getelementptr i8, ptr %0, i64 48 ; 3 uses
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !54
  %.sroa.42.0..sroa_idx = getelementptr i8, ptr %0, i64 52 ; 3 uses
  %.sroa.42.0.copyload = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !54
  %.sroa.45.0..sroa_idx = getelementptr i8, ptr %0, i64 56 ; 3 uses
  %.sroa.45.0.copyload = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !54
  %.sroa.48.0..sroa_idx = getelementptr i8, ptr %0, i64 60 ; 2 uses
  %.sroa.48.0.copyload = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !54
  br label %bb.a

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load i32, ptr %0, align 4, !tbaa !54
  %i.c = add i32 %i.b, %i.dd
  store i32 %i.c, ptr %i.a, align 4, !tbaa !54
  %i.d = getelementptr i8, ptr %0, i64 68
  %i.e = load <4 x i32>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !54
  %i.f = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %i.g = insertelement <4 x i32> %i.f, i32 %i.ea, i64 1
  %i.h = insertelement <4 x i32> %i.g, i32 %i.eg, i64 2
  %i.i = insertelement <4 x i32> %i.h, i32 %i.es, i64 3
  %i.j = add <4 x i32> %i.e, %i.i
  store <4 x i32> %i.j, ptr %i.d, align 4, !tbaa !54
  %i.k = getelementptr i8, ptr %0, i64 84
  %i.l = load <4 x i32>, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !54
  %i.m = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %i.n = insertelement <4 x i32> %i.m, i32 %i.ep, i64 1
  %i.o = insertelement <4 x i32> %i.n, i32 %i.ef, i64 2
  %i.p = insertelement <4 x i32> %i.o, i32 %i.ed, i64 3
  %i.q = add <4 x i32> %i.l, %i.p
  store <4 x i32> %i.q, ptr %i.k, align 4, !tbaa !54
  %i.r = getelementptr i8, ptr %0, i64 100
  %i.s = load i32, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !54
  %i.t = load <4 x i32>, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !54
  %i.u = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %i.v = insertelement <4 x i32> %i.u, i32 %i.ej, i64 1
  %i.w = insertelement <4 x i32> %i.v, i32 %i.en, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.em, i64 3
  %i.y = add <4 x i32> %i.t, %i.x
  store <4 x i32> %i.y, ptr %i.r, align 4, !tbaa !54
  %i.z = load i32, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !54 ; 2 uses
  %i.aa = add i32 %i.z, %i.ec
  %i.ab = getelementptr i8, ptr %0, i64 116
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !54
  %i.ac = load i32, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !54 ; 2 uses
  %i.ad = add i32 %i.ac, %i.ei
  %i.ae = getelementptr i8, ptr %0, i64 120
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !54
  %i.af = load i32, ptr %.sroa.48.0..sroa_idx, align 4, !tbaa !54
  %i.ag = add i32 %i.af, %i.df
  %i.ah = getelementptr i8, ptr %0, i64 124
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !54
  %i.ai = getelementptr i8, ptr %0, i64 128
  store i32 16, ptr %i.ai, align 4, !tbaa !166
  %i.aj = add i32 %i.s, 1                         ; 2 uses
  store i32 %i.aj, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !54
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %bb.d

bb.a:                                             ; preds = %.preheader21, %bb.a
  %.01953 = phi i64 [ 0, %.preheader21 ], [ %i.et, %bb.a ] ; 2 uses
  %i.al = phi i32 [ %.sroa.15.0.copyload, %.preheader21 ], [ %i.es, %bb.a ] ; 2 uses
  %i.am = phi i32 [ %.sroa.0.0.copyload, %.preheader21 ], [ %i.dd, %bb.a ]
  %i.an = phi i32 [ %.sroa.39.0.copyload, %.preheader21 ], [ %i.em, %bb.a ]
  %i.ao = phi i32 [ %.sroa.27.0.copyload, %.preheader21 ], [ %i.ed, %bb.a ]
  %i.ap = phi i32 [ %.sroa.18.0.copyload, %.preheader21 ], [ %i.el, %bb.a ] ; 2 uses
  %i.aq = phi i32 [ %.sroa.6.0.copyload, %.preheader21 ], [ %i.dy, %bb.a ]
  %i.ar = phi i32 [ %.sroa.42.0.copyload, %.preheader21 ], [ %i.ec, %bb.a ]
  %i.as = phi i32 [ %.sroa.30.0.copyload, %.preheader21 ], [ %i.eq, %bb.a ]
  %i.at = phi i32 [ %.sroa.21.0.copyload, %.preheader21 ], [ %i.ep, %bb.a ] ; 2 uses
  %i.au = phi i32 [ %.sroa.9.0.copyload, %.preheader21 ], [ %i.ea, %bb.a ]
  %i.av = phi i32 [ %.sroa.45.0.copyload, %.preheader21 ], [ %i.ei, %bb.a ]
  %i.aw = phi i32 [ %.sroa.33.0.copyload, %.preheader21 ], [ %i.ej, %bb.a ]
  %i.ax = phi i32 [ %.sroa.24.0.copyload, %.preheader21 ], [ %i.ef, %bb.a ] ; 2 uses
  %i.ay = phi i32 [ %.sroa.12.0.copyload, %.preheader21 ], [ %i.eg, %bb.a ]
  %i.az = phi i32 [ %.sroa.48.0.copyload, %.preheader21 ], [ %i.df, %bb.a ]
  %i.ba = phi i32 [ %.sroa.36.0.copyload, %.preheader21 ], [ %i.en, %bb.a ]
  %i.bb = add i32 %i.am, %i.al                    ; 2 uses
  %i.bc = xor i32 %i.an, %i.bb                    ; 2 uses
  %i.bd = tail call noundef i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 16) ; 2 uses
  %i.be = add i32 %i.bd, %i.ao                    ; 2 uses
  %i.bf = xor i32 %i.be, %i.al                    ; 2 uses
  %i.bg = tail call noundef i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 12) ; 2 uses
  %i.bh = add i32 %i.bg, %i.bb                    ; 2 uses
  %i.bi = xor i32 %i.bh, %i.bd                    ; 2 uses
  %i.bj = tail call noundef i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 8) ; 2 uses
  %i.bk = add i32 %i.bj, %i.be                    ; 2 uses
  %i.bl = xor i32 %i.bk, %i.bg                    ; 2 uses
  %i.bm = tail call noundef i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 7) ; 2 uses
  %i.bn = add i32 %i.aq, %i.ap                    ; 2 uses
  %i.bo = xor i32 %i.ar, %i.bn                    ; 2 uses
  %i.bp = tail call noundef i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 16) ; 2 uses
end_hunk_0
