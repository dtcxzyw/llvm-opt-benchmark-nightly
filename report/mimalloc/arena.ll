Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/arena?download=true
inline.NumInlined: 308
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mi_arenas_try_find_free:bb.a

bb.j:                                             ; preds = %mi_arena_is_suitable.exit.thread.thread.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !85 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  %i.bj = icmp eq i32 %i.bh, %6
  %spec.select.i = or i1 %i.bi, %i.bj
  br i1 %spec.select.i, label %mi_arena_is_suitable_ex.exit, label %mi_arena_is_suitable_ex.exit.thread143

mi_arena_is_suitable_ex.exit:                     ; preds = %mi_arena_is_suitable.exit.thread.thread.i, %bb.j
  %i.bk = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %i.az, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) #18 ; 2 uses
  %.not112 = icmp eq ptr %i.bk, null
  br i1 %.not112, label %mi_arena_is_suitable_ex.exit.thread143, label %.thread185

mi_arena_is_suitable_ex.exit.thread143:           ; preds = %bb.i, %bb.j, %.thread, %.lr.ph.split.split, %mi_arena_is_suitable_ex.exit
  %i.bl = add nuw i64 %.091188, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.c
  br i1 %exitcond.not, label %.thread159, label %.lr.ph.split.split, !llvm.loop !143

.thread159:                                       ; preds = %mi_arena_is_suitable_ex.exit.thread143, %mi_arena_is_suitable_ex.exit.thread143.us200, %.lr.ph.split.us.split.us.split.preheader, %mi_arena_is_suitable.exit.thread.i.us.us, %.lr.ph.split.us.split.us.split.us.preheader, %mi_arena_start_idx.exit
  %i.bm = icmp slt i32 %6, 0
  br i1 %i.bm, label %.thread185, label %bb.k

bb.k:                                             ; preds = %.thread159
  %i.bn = load ptr, ptr %0, align 8, !tbaa !40    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load atomic i64, ptr %i.bo monotonic, align 8 ; 5 uses
  %i.bq = tail call i64 @llvm.usub.sat.i64(i64 %i.bp, i64 1) ; 10 uses
  %i.br = load i64, ptr %i.e, align 8, !tbaa !50  ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 1488
  %i.bt = load atomic i64, ptr %i.bs monotonic, align 8 ; 4 uses
  %i.bu = icmp ult i64 %i.bq, 2
  br i1 %i.bu, label %mi_arena_start_idx.exit127, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp eq i64 %i.br, 0
  %i.bw = icmp ult i64 %i.bt, 2
  %or.cond.i124 = select i1 %i.bv, i1 true, i1 %i.bw
  %i.bx = icmp ugt i64 %i.bq, 2303
  %or.cond3.i125 = or i1 %i.bx, %or.cond.i124
  br i1 %or.cond3.i125, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = urem i64 %5, %i.bq
  br label %mi_arena_start_idx.exit127

bb.n:                                             ; preds = %bb.l
  %i.bz = shl nuw nsw i64 %i.bq, 8                ; 2 uses
  %i.ca = udiv i64 %i.bz, %i.bt                   ; 3 uses
  %i.cb = icmp ugt i64 %i.bt, %i.bz
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = urem i64 %i.br, %i.bq
  br label %mi_arena_start_idx.exit127

bb.p:                                             ; preds = %bb.n
  %i.cd = urem i64 %i.br, %i.bt
  %i.ce = mul nuw nsw i64 %i.cd, %i.ca
  %i.cf = lshr i64 %i.ce, 8                       ; 2 uses
  %i.cg = icmp samesign ugt i64 %i.ca, 511
  br i1 %i.cg, label %bb.q, label %mi_arena_start_idx.exit127

bb.q:                                             ; preds = %bb.p
  %i.ch = lshr i64 %i.ca, 8
  %i.ci = urem i64 %5, %i.ch
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  br label %mi_arena_start_idx.exit127

mi_arena_start_idx.exit127:                       ; preds = %bb.k, %bb.m, %bb.o, %bb.p, %bb.q
  %.026.i126 = phi i64 [ 0, %bb.k ], [ %i.by, %bb.m ], [ %i.cc, %bb.o ], [ %i.cj, %bb.q ], [ %i.cf, %bb.p ] ; 3 uses
  %.not225 = icmp eq i64 %i.bp, 0
  br i1 %.not225, label %.thread185, label %.lr.ph215

.lr.ph215:                                        ; preds = %mi_arena_start_idx.exit127
  %.not113 = icmp eq ptr %4, null                 ; 4 uses
  br i1 %.not113, label %bb.r, label %.thread162.peel.a

bb.r:                                             ; preds = %.lr.ph215
  %.not = icmp eq i64 %i.bp, 1
  %.not114.peel = icmp ult i64 %.026.i126, %i.bq
  %i.ck = select i1 %.not114.peel, i64 0, i64 %i.bq
  %spec.select118.peel = sub nuw i64 %.026.i126, %i.ck
  %.0.peel = select i1 %.not, i64 0, i64 %spec.select118.peel
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.0.peel
  %i.cn = load atomic ptr, ptr %i.cm acquire, align 8 ; 2 uses
  %.not116.peel = icmp eq ptr %i.cn, null
  br i1 %.not116.peel, label %.thread168.peel, label %.thread162.peel.a

.thread162.peel.a:                                ; preds = %.lr.ph215, %bb.r
  %.086165.peel = phi ptr [ %i.cn, %bb.r ], [ %4, %.lr.ph215 ] ; 6 uses
  br i1 %3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread162.peel.a
  %i.co = getelementptr inbounds nuw i8, ptr %.086165.peel, i64 20
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !72, !range !26, !noundef !27
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %.thread168.peel, label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread162.peel.a
  %i.cr = icmp eq ptr %.086165.peel, %4
  br i1 %i.cr, label %mi_arena_is_suitable.exit.thread.i132.peel, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not113, label %bb.v, label %mi_arena_is_suitable.exit.i128.peel

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.086165.peel, i64 68
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !25, !range !26, !noundef !27
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %mi_arena_is_suitable.exit.i128.peel, label %mi_arena_is_suitable.exit.thread.thread.i133.peel

mi_arena_is_suitable.exit.i128.peel:              ; preds = %bb.v, %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %.086165.peel, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !28 ; 2 uses
  %.not.i.i129.peel = icmp ne ptr %i.cw, null
  %i.cx = icmp eq ptr %i.cw, %4
  %or.cond.i.i130.peel = and i1 %.not.i.i129.peel, %i.cx
  br i1 %or.cond.i.i130.peel, label %mi_arena_is_suitable.exit.thread.i132.peel, label %.thread168.peel

mi_arena_is_suitable.exit.thread.i132.peel:       ; preds = %mi_arena_is_suitable.exit.i128.peel, %bb.t
  br i1 %.not113, label %mi_arena_is_suitable.exit.thread.thread.i133.peel, label %bb.w

mi_arena_is_suitable.exit.thread.thread.i133.peel: ; preds = %mi_arena_is_suitable.exit.thread.i132.peel, %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %.086165.peel, i64 64
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !85 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  %i.db = icmp eq i32 %i.cz, %6
  %spec.select.i134.peel = or i1 %i.da, %i.db
  br i1 %spec.select.i134.peel, label %.thread168.peel, label %bb.w

bb.w:                                             ; preds = %mi_arena_is_suitable.exit.thread.thread.i133.peel, %mi_arena_is_suitable.exit.thread.i132.peel
  %i.dc = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %.086165.peel, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) #18 ; 2 uses
  %.not117.peel = icmp eq ptr %i.dc, null
  br i1 %.not117.peel, label %.thread168.peel, label %.thread185

.thread168.peel:                                  ; preds = %bb.w, %mi_arena_is_suitable.exit.thread.thread.i133.peel, %mi_arena_is_suitable.exit.i128.peel, %bb.s, %bb.r
  %exitcond237.peel.not = icmp eq i64 %i.bp, 1
  br i1 %exitcond237.peel.not, label %.thread185, label %.peel.next

.peel.next:                                       ; preds = %.thread168.peel, %.thread168
  %.087214 = phi i64 [ %i.dy, %.thread168 ], [ 1, %.thread168.peel ] ; 4 uses
  br i1 %.not113, label %bb.x, label %.thread185

bb.x:                                             ; preds = %.peel.next
  %i.dd = icmp ult i64 %.087214, %i.bq
  %i.de = add i64 %.087214, %.026.i126            ; 2 uses
  %.not114 = icmp ult i64 %i.de, %i.bq
  %i.df = select i1 %.not114, i64 0, i64 %i.bq
  %spec.select118 = sub nuw i64 %i.de, %i.df
  %.0 = select i1 %i.dd, i64 %spec.select118, i64 %.087214
  %i.dg = load ptr, ptr %0, align 8, !tbaa !40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.0
  %i.dj = load atomic ptr, ptr %i.di acquire, align 8 ; 6 uses
  %.not116 = icmp eq ptr %i.dj, null
  br i1 %.not116, label %.thread168, label %.thread162.a

.thread162.a:                                     ; preds = %bb.x
  br i1 %3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread162.a
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !72, !range !26, !noundef !27
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %.thread168, label %bb.z

bb.z:                                             ; preds = %.thread162.a, %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 68
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !25, !range !26, !noundef !27
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %mi_arena_is_suitable.exit.i128, label %mi_arena_is_suitable.exit.thread.thread.i133

mi_arena_is_suitable.exit.i128:                   ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !28 ; 2 uses
  %.not.i.i129 = icmp ne ptr %i.dr, null
  %i.ds = icmp eq ptr %i.dr, %4
  %or.cond.i.i130 = and i1 %.not.i.i129, %i.ds
  br i1 %or.cond.i.i130, label %mi_arena_is_suitable.exit.thread.thread.i133, label %.thread168

mi_arena_is_suitable.exit.thread.thread.i133:     ; preds = %mi_arena_is_suitable.exit.i128, %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !85 ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  %i.dw = icmp eq i32 %i.du, %6
  %spec.select.i134 = or i1 %i.dv, %i.dw
  br i1 %spec.select.i134, label %.thread168, label %bb.aa

bb.aa:                                            ; preds = %mi_arena_is_suitable.exit.thread.thread.i133
  %i.dx = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %i.dj, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) #18 ; 2 uses
  %.not117 = icmp eq ptr %i.dx, null
  br i1 %.not117, label %.thread168, label %.thread185

.thread168:                                       ; preds = %mi_arena_is_suitable.exit.thread.thread.i133, %bb.y, %mi_arena_is_suitable.exit.i128, %bb.x, %bb.aa
  %i.dy = add nuw i64 %.087214, 1                 ; 2 uses
  %exitcond237.not = icmp eq i64 %i.dy, %i.bp
  br i1 %exitcond237.not, label %.thread185, label %.peel.next, !llvm.loop !144

.thread185:                                       ; preds = %mi_arena_is_suitable_ex.exit, %mi_arena_is_suitable_ex.exit.us198, %.peel.next, %bb.aa, %.thread168, %mi_arena_is_suitable.exit.thread.i.us.us, %.lr.ph.split.us.split.us.split.us.preheader, %bb.w, %.thread168.peel, %mi_arena_start_idx.exit127, %.thread159
  %.10 = phi ptr [ null, %.peel.next ], [ null, %.thread159 ], [ %i.ar, %mi_arena_is_suitable_ex.exit.us198 ], [ %i.ac, %mi_arena_is_suitable.exit.thread.i.us.us ], [ null, %mi_arena_start_idx.exit127 ], [ %i.ab, %.lr.ph.split.us.split.us.split.us.preheader ], [ null, %.thread168.peel ], [ %i.dc, %bb.w ], [ %i.dx, %bb.aa ], [ null, %.thread168 ], [ %i.bk, %mi_arena_is_suitable_ex.exit ]
  ret ptr %.10
}

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc ptr @mi_arena_try_alloc_at(ptr noundef nonnull %0, i64 noundef range(i64 0, 18014398509481984) %1, i1 noundef zeroext %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 5 uses
  switch i64 %1, label %bb.b [
    i64 1, label %.split
    i64 8, label %mi_bbitmap_try_find_and_clearN.exit
    i64 0, label %mi_bbitmap_try_find_and_clearN.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.g = call zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef %i.f, i64 noundef %3, ptr noundef nonnull %i.a) #17
  br i1 %i.g, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = icmp samesign ult i64 %1, 65
  br i1 %i.h, label %.split63, label %bb.c

.split63:                                         ; preds = %bb.b
  %i.i = call zeroext i1 @mi_bbitmap_try_find_and_clearNX(ptr noundef %i.f, i64 noundef %3, i64 noundef range(i64 0, 18014398509481984) %1, ptr noundef nonnull %i.a) #17
  br i1 %i.i, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i64 %1, 513
  br i1 %i.j, label %.split62, label %.split64

.split62:                                         ; preds = %bb.c
  %i.k = call zeroext i1 @mi_bbitmap_try_find_and_clearNC(ptr noundef %i.f, i64 noundef %3, i64 noundef range(i64 0, 18014398509481984) %1, ptr noundef nonnull %i.a) #17
  br i1 %i.k, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

.split64:                                         ; preds = %bb.c
  %i.l = call zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr noundef %i.f, i64 noundef %3, i64 noundef range(i64 0, 18014398509481984) %1, ptr noundef nonnull %i.a) #17
  br i1 %i.l, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

mi_bbitmap_try_find_and_clearN.exit:              ; preds = %bb.a
  %i.m = call zeroext i1 @mi_bbitmap_try_find_and_clear8(ptr noundef %i.f, i64 noundef %3, ptr noundef nonnull %i.a) #17
  br i1 %i.m, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.d:                                             ; preds = %.split64, %.split63, %.split62, %.split, %mi_bbitmap_try_find_and_clearN.exit
  %i.n = load i64, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.p = shl i64 %i.n, 16
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.p ; 7 uses
  %i.r = trunc i64 %i.n to i32
  %i.s = trunc i64 %1 to i32
  store ptr %0, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.s, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 6, ptr %.sroa.6.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !72, !range !26, !noundef !27
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 %i.u, ptr %i.v, align 4, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.x = load i8, ptr %i.w, align 2, !tbaa !145, !range !26, !noundef !27
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = call zeroext i1 @mi_bitmap_setN(ptr noundef %i.aa, i64 noundef %i.n, i64 noundef %1, ptr noundef nonnull %i.b) #17
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.ad = zext i1 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !81
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !31
  %i.af = sub i64 %1, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ]    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !61 ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  br i1 %2, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.aj = call i64 @mi_bitmap_popcountN(ptr noundef %i.ah, i64 noundef %i.ai, i64 noundef %1) #17 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %1
  br i1 %i.ak, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 0, ptr %i.c, align 1, !tbaa !101
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62 ; 2 uses
  %i.an = shl i64 %1, 16                          ; 3 uses
  %i.ao = shl i64 %i.aj, 16                       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !74 ; 2 uses
  %.not20.i = icmp eq ptr %i.aq, null
  br i1 %.not20.i, label %bb.i, label %.split65

.split65:                                         ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75
  %i.at = call zeroext i1 %i.aq(i1 noundef zeroext true, ptr noundef %i.q, i64 noundef %i.an, ptr noundef nonnull %i.c, ptr noundef %i.as) #17, !inline_history !2
  br i1 %i.at, label %bb.j, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not21.i = icmp eq i64 %i.ao, 0
  br i1 %.not21.i, label %.split69, label %mi_arena_commit.exit

.split69:                                         ; preds = %bb.i
  %i.au = call zeroext i1 @_mi_os_commit(ptr noundef %i.am, ptr noundef %i.q, i64 noundef %i.an, ptr noundef nonnull %i.c) #17
  br i1 %i.au, label %bb.j, label %bb.l

mi_arena_commit.exit:                             ; preds = %bb.i
  %i.av = call zeroext i1 @_mi_os_commit_ex(ptr noundef %i.am, ptr noundef %i.q, i64 noundef %i.an, ptr noundef nonnull %i.c, i64 noundef %i.ao) #17
  br i1 %i.av, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.split69, %.split65, %mi_arena_commit.exit
  %i.aw = load i8, ptr %i.c, align 1, !tbaa !101, !range !26, !noundef !27
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 1, ptr %i.ay, align 2, !tbaa !81
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !61
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !31
  %i.bb = call zeroext i1 @mi_bitmap_setN(ptr noundef %i.az, i64 noundef %i.ba, i64 noundef %1, ptr noundef null) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.critedge

bb.l:                                             ; preds = %mi_arena_commit.exit, %.split65, %.split69
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !31
  %i.be = call zeroext i1 @mi_bbitmap_setN(ptr noundef %i.bc, i64 noundef %i.bd, i64 noundef %1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.m:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bh = shl i64 %1, 16
  call void @_mi_os_reuse(ptr noundef %i.bg, ptr noundef %i.q, i64 noundef %i.bh) #17
  %i.bi = call zeroext i1 @_mi_os_has_overcommit() #17
  %i.bj = icmp ne i64 %.0, 0
  %or.cond = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.bk = load i8, ptr %i.t, align 4, !tbaa !72, !range !26, !noundef !27
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1600
  %i.bo = shl i64 %.0, 16
  call void @__mi_stat_increase_mt(ptr noundef nonnull %i.bn, i64 noundef %i.bo) #17
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.m, %bb.n, %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 1, ptr %i.bp, align 1, !tbaa !80
  br label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.p:                                             ; preds = %bb.f
  %i.bq = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.ah, i64 noundef %i.ai, i64 noundef range(i64 0, 18014398509481984) %1) #17 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.bs = zext i1 %i.bq to i8
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !80
  br i1 %i.bq, label %mi_bbitmap_try_find_and_clearN.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 0, ptr %i.d, align 8, !tbaa !31
  %i.bt = load ptr, ptr %i.ag, align 8, !tbaa !61
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !31
  %i.bv = call zeroext i1 @mi_bitmap_setN(ptr noundef %i.bt, i64 noundef %i.bu, i64 noundef %1, ptr noundef nonnull %i.d) #17 ; 0 uses
  %i.bw = load ptr, ptr %i.ag, align 8, !tbaa !61
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !31
  %i.by = call zeroext i1 @mi_bitmap_clearN(ptr noundef %i.bw, i64 noundef %i.bx, i64 noundef %1) #17 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !62
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1600
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !31
  %i.cd = shl i64 %i.cc, 16
  call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.cb, i64 noundef %i.cd) #17
end_hunk_0
