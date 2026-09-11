Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_compile?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@parse_regex:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i32 %.0901
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_lookbehinds(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) initializes((168, 176)) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i64 -1, ptr %i.c, align 8, !tbaa !46
  %i.d = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  %.not20 = icmp eq i32 %i.d, -2147483648
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.t
  %i.e = phi i32 [ %i.ah, %bb.t ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = phi ptr [ %i.ag, %bb.t ], [ %0, %bb.a ]  ; 43 uses
  %.021 = phi i32 [ %.1, %bb.t ], [ 0, %bb.a ]    ; 43 uses
  %i.g = icmp sgt i32 %i.e, -1
  br i1 %i.g, label %bb.t, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i32 %i.e, 2147418112
  %i.i = lshr i32 %i.h, 16
  %trunc = trunc nuw i32 %i.i to i16
  switch i16 %trunc, label %.loopexit [
    i16 23, label %bb.c
    i16 24, label %bb.d
    i16 1, label %bb.g
    i16 7, label %bb.g
    i16 14, label %bb.g
    i16 34, label %bb.g
    i16 35, label %bb.g
    i16 38, label %bb.g
    i16 25, label %bb.g
    i16 33, label %bb.g
    i16 41, label %bb.t
    i16 0, label %bb.t
    i16 51, label %bb.t
    i16 52, label %bb.t
    i16 53, label %bb.t
    i16 2, label %bb.t
    i16 8, label %bb.t
    i16 9, label %bb.t
    i16 10, label %bb.t
    i16 11, label %bb.t
    i16 12, label %bb.t
    i16 13, label %bb.t
    i16 43, label %bb.t
    i16 21, label %bb.t
    i16 22, label %bb.t
    i16 42, label %bb.t
    i16 54, label %bb.t
    i16 55, label %bb.t
    i16 56, label %bb.t
    i16 45, label %bb.t
    i16 57, label %bb.t
    i16 58, label %bb.t
    i16 59, label %bb.t
    i16 29, label %bb.t
    i16 30, label %bb.t
    i16 47, label %bb.t
    i16 49, label %bb.t
    i16 31, label %bb.h
    i16 3, label %bb.i
    i16 32, label %bb.i
    i16 15, label %bb.j
    i16 16, label %bb.k
    i16 17, label %bb.k
    i16 18, label %bb.k
    i16 19, label %bb.k
    i16 20, label %bb.l
    i16 6, label %bb.m
    i16 4, label %bb.n
    i16 27, label %bb.n
    i16 28, label %bb.n
    i16 60, label %bb.o
    i16 62, label %bb.o
    i16 61, label %bb.o
    i16 26, label %bb.o
    i16 5, label %bb.p
    i16 40, label %bb.q
    i16 44, label %bb.q
    i16 46, label %bb.q
    i16 48, label %bb.q
    i16 50, label %bb.q
    i16 36, label %bb.r
    i16 37, label %bb.r
    i16 39, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  %.off = add nsw i32 %i.e, 2145910769
  %switch = icmp ult i32 %.off, 2
  %spec.select.idx = select i1 %switch, i64 4, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.idx
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.021, -1
  %i.k = icmp slt i32 %.021, 1
  br i1 %i.k, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.f, ptr %1, align 8, !tbaa !68
  br label %.loopexit

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = add nsw i32 %.021, 1
  br label %bb.t

bb.h:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.t

bb.i:                                             ; preds = %bb.b, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %bb.t

bb.j:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = add nsw i32 %.021, 1
  br label %bb.t

bb.k:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.r = add nsw i32 %.021, 1
  br label %bb.t

bb.l:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.t = add nsw i32 %.021, 1
  br label %bb.t

bb.m:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  br label %bb.t

bb.n:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %bb.t

bb.o:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.t

bb.p:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %bb.t

bb.q:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28
  %i.aa = add i32 %i.z, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  br label %bb.t

bb.r:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.ad = call fastcc i32 @set_lookbehind_lengths(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %4, ptr noundef %2, ptr noundef %3)
  %.not16 = icmp eq i32 %i.ad, 0
  br i1 %.not16, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !68
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !28
  br label %.loopexit

bb.t:                                             ; preds = %bb.c, %._crit_edge, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.d, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %.lr.ph
  %i.af = phi ptr [ %i.f, %.lr.ph ], [ %.pre, %._crit_edge ], [ %spec.select, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.g ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.f, %bb.b ], [ %i.m, %bb.h ], [ %i.n, %bb.i ], [ %i.o, %bb.j ], [ %i.q, %bb.k ], [ %i.s, %bb.l ], [ %i.u, %bb.m ], [ %i.v, %bb.n ], [ %i.w, %bb.o ], [ %i.x, %bb.p ], [ %i.ac, %bb.q ]
  %.1 = phi i32 [ %.021, %.lr.ph ], [ %.021, %._crit_edge ], [ %.021, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.g ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.b ], [ %.021, %bb.h ], [ %.021, %bb.i ], [ %i.p, %bb.j ], [ %i.r, %bb.k ], [ %i.t, %bb.l ], [ %.021, %bb.m ], [ %.021, %bb.n ], [ %.021, %bb.o ], [ %.021, %bb.p ], [ %.021, %bb.q ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 3 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !68
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28 ; 2 uses
  %.not = icmp eq i32 %i.ah, -2147483648
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !172

.loopexit:                                        ; preds = %bb.b, %bb.t, %bb.a, %bb.e, %bb.f, %bb.s
  %.011 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %i.ae, %bb.s ], [ 0, %bb.a ], [ 170, %bb.b ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @compile_regex(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, i32 noundef range(i32 0, 6) %5, ptr nofree noundef nonnull writeonly captures(none) %6, ptr nofree noundef nonnull writeonly captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8, ptr nofree noundef nonnull writeonly captures(none) %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr nofree noundef captures(address_is_null) %13) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 48 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %i.d = alloca [32 x i8], align 16               ; 44 uses
  %i.e = alloca ptr, align 8                      ; 34 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = alloca [8 x i8], align 1                 ; 15 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 9 uses
  %i.n = alloca i32, align 4                      ; 9 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %14 = alloca %struct.open_capitem, align 8      ; 6 uses
  %15 = alloca %struct.branch_chain_8, align 8    ; 5 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !27     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.s = load ptr, ptr %3, align 8, !tbaa !68     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.t = load ptr, ptr %12, align 8, !tbaa !43    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !191  ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 180
  %i.x = load i16, ptr %i.w, align 4, !tbaa !71
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !192
  %i.ab = tail call i32 %i.v(i32 noundef %i.y, ptr noundef %i.aa) #17
  %.not120 = icmp eq i32 %i.ab, 0
  br i1 %.not120, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 133, ptr %4, align 4, !tbaa !28
  br label %.thread602

bb.d:                                             ; preds = %bb.b, %bb.a
  store ptr %10, ptr %15, align 8, !tbaa !195
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !196
  %i.ad = add nuw nsw i32 %5, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = load i8, ptr %i.r, align 1, !tbaa !29
  switch i8 %i.af, label %bb.f [
    i8 -127, label %switch.edge.thread240
    i8 -126, label %switch.edge.thread240
    i8 -124, label %switch.edge.thread240
    i8 -119, label %bb.e
  ]

switch.edge.thread240:                            ; preds = %bb.d, %bb.d, %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ai = and i32 %i.ah, 65535
  %i.aj = load i32, ptr %i.s, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = zext i8 %i.aq to i16
  %i.as = or disjoint i16 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i16 %i.as, ptr %i.at, align 8, !tbaa !199
  store ptr %11, ptr %14, align 8, !tbaa !200
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 182
  %i.av = load i16, ptr %i.au, align 2, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 10
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !201
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %switch.edge.thread240, %bb.e
  %.093246 = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ %i.aj, %switch.edge.thread240 ] ; 4 uses
  %.094245 = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ %i.ai, %switch.edge.thread240 ]
  %.0223244 = phi ptr [ %i.s, %bb.e ], [ %i.s, %bb.d ], [ %i.ak, %switch.edge.thread240 ]
  %i.ax = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ true, %switch.edge.thread240 ]
  %.0113 = phi ptr [ %14, %bb.e ], [ %11, %bb.d ], [ %11, %switch.edge.thread240 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 0, ptr %i.ay, align 1, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 0, ptr %i.az, align 1, !tbaa !29
  %i.ba = zext nneg i32 %5 to i64                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.bd = icmp eq ptr %13, null                   ; 22 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 182 ; 17 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 276 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 12 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 204 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 268 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 184 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 176 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 244 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 240 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 288
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 180 ; 4 uses
  %..i = select i1 %i.bd, ptr null, ptr %i.b
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 284 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 280
  %.not1635.i1148 = icmp eq ptr %.0113, null
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 256 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 260 ; 8 uses
  %i.ca = icmp eq i32 %.093246, 65535
  %i.cb = lshr i32 %.093246, 8
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = trunc i32 %.093246 to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.mn, %bb.f
  %.0 = phi i64 [ %i.ae, %bb.f ], [ %.24, %bb.mn ] ; 2 uses
  %.0237 = phi i32 [ %0, %bb.f ], [ %.1238, %bb.mn ] ; 6 uses
  %.0234 = phi i32 [ %1, %bb.f ], [ %.1235, %bb.mn ] ; 2 uses
  %.0228 = phi ptr [ %i.bc, %bb.f ], [ %.2230, %bb.mn ] ; 8 uses
  %.1224 = phi ptr [ %.0223244, %bb.f ], [ %i.bhz, %bb.mn ] ; 2 uses
  %.0108 = phi ptr [ %i.r, %bb.f ], [ %.3111, %bb.mn ] ; 5 uses
  %.0105 = phi i32 [ 1, %bb.f ], [ %spec.select, %bb.mn ]
  %.0102 = phi i32 [ 0, %bb.f ], [ %.1103562595, %bb.mn ] ; 6 uses
  %.097 = phi i32 [ 0, %bb.f ], [ %.3100564593, %bb.mn ] ; 4 uses
  %.195 = phi i32 [ %.094245, %bb.f ], [ %i.bhy, %bb.mn ] ; 5 uses
  %.089 = phi i32 [ -1, %bb.f ], [ %.291566591, %bb.mn ] ; 6 uses
  %.086 = phi i32 [ -1, %bb.f ], [ %.3568589, %bb.mn ] ; 5 uses
  %i.co = icmp ne i32 %.195, 0
  %or.cond = select i1 %i.ax, i1 %i.co, i1 false
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cp = icmp eq i32 %.093246, %.195
  %or.cond130 = select i1 %i.ca, i1 true, i1 %i.cp
  %i.cq = getelementptr inbounds nuw i8, ptr %.0228, i64 1 ; 2 uses
  br i1 %or.cond130, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 125, ptr %.0228, align 1, !tbaa !29
  %i.cr = lshr i32 %.195, 8
  %i.cs = trunc nuw i32 %i.cr to i8
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !29
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  store i8 126, ptr %.0228, align 1, !tbaa !29
  store i8 %i.cc, ptr %i.cq, align 1, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %.0228, i64 2
  store i8 %i.cd, ptr %i.ct, align 1, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %.0228, i64 3
  %i.cv = lshr i32 %.195, 8
  %i.cw = trunc nuw i32 %i.cv to i8
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !29
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i
  %.sink2252 = phi i64 [ 2, %bb.i ], [ 4, %bb.j ]
  %.sink2249 = phi i64 [ 3, %bb.i ], [ 5, %bb.j ] ; 2 uses
  %i.cx = trunc i32 %.195 to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %.0228, i64 %.sink2252
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %.0228, i64 %.sink2249
  %i.da = add i64 %.0, %.sink2249
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g
  %.1 = phi i64 [ %.0, %bb.g ], [ %i.da, %.sink.split ]
  %.1229 = phi ptr [ %.0228, %bb.g ], [ %i.cz, %.sink.split ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %.1224, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.db = load ptr, ptr %i.be, align 8, !tbaa !41 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.dc = and i32 %.0237, 524288
  %i.dd = icmp ne i32 %i.dc, 0                    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
end_hunk_0
begin_hunk_1_@compile_regex:bb.a
  store i8 28, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 27, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.w:                                             ; preds = %._crit_edge1745
  %i.ew = and i32 %.01522.i, 1024
  %.not1649.i = icmp eq i32 %i.ew, 0
  %i.ex = select i1 %.not1649.i, i8 25, i8 26
  %i.ey = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 %i.ex, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.x:                                             ; preds = %._crit_edge1745
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2) ; 2 uses
  %i.ez = and i32 %.01522.i, 32
  %.not1648.i = icmp eq i32 %i.ez, 0
  %i.fa = select i1 %.not1648.i, i8 12, i8 13
  %i.fb = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 %i.fa, ptr %.31386.i, align 1, !tbaa !29
  br label %.thread

bb.y:                                             ; preds = %._crit_edge1745, %._crit_edge1745
  %i.fc = icmp eq i32 %i.du, -2146697216
  %i.fd = select i1 %i.fc, i8 13, i8 -93
  %i.fe = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 %i.fd, ptr %.31386.i, align 1, !tbaa !29
  %spec.store.select13.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2) ; 2 uses
  br label %.thread

bb.z:                                             ; preds = %._crit_edge1745, %._crit_edge1745
  %i.ff = icmp eq i32 %i.du, -2146566144          ; 5 uses
  %i.fg = zext i1 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %.promoted, i64 4 ; 4 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !28 ; 15 uses
  %i.fj = icmp sgt i32 %i.fi, -1
  br i1 %i.fj, label %bb.aa, label %.thread256

bb.aa:                                            ; preds = %bb.z
  %i.fk = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !28 ; 4 uses
  %i.fm = icmp eq i32 %i.fl, -2146631680
  br i1 %i.fm, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.fk, ptr %i.a, align 8, !tbaa !68
  %i.fn = icmp eq i32 %i.du, -2146828288
  br i1 %i.fn, label %bb.lk, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %spec.store.select14.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2) ; 4 uses
  %i.fo = and i32 %.01522.i, 8
  %.not1645.i = icmp eq i32 %i.fo, 0              ; 2 uses
  %or.cond1660.i = select i1 %or.cond16.not.i, i1 true, i1 %.not1645.i
  br i1 %or.cond1660.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fp = lshr i32 %i.fi, 7
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !30
  %i.ft = zext i16 %i.fs to i32
  %i.fu = shl nuw nsw i32 %i.ft, 7
  %i.fv = and i32 %i.fi, 127
  %i.fw = or disjoint i32 %i.fu, %i.fv
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !30
  %i.ga = zext i16 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 3
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !83  ; 3 uses
  %.not1646.i = icmp eq i8 %i.gd, 0
  br i1 %.not1646.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ge = and i32 %.01519.i, 128
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gg = zext i8 %i.gd to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr @_pcre2_ucd_caseless_sets_8, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !28
  %i.gj = icmp ugt i32 %i.gi, 127
  br i1 %i.gj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 15, ptr %.31386.i, align 1, !tbaa !29
  %i.gl = getelementptr inbounds nuw i8, ptr %.31386.i, i64 2
  store i8 10, ptr %i.gk, align 1, !tbaa !29
  %i.gm = getelementptr inbounds nuw i8, ptr %.31386.i, i64 3
  store i8 %i.gd, ptr %i.gl, align 1, !tbaa !29
  br label %.thread

bb.ah:                                            ; preds = %bb.af, %bb.ad, %bb.ac
  %i.gn = select i1 %.not1645.i, i8 31, i8 32
  %i.go = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1 ; 3 uses
  store i8 %i.gn, ptr %.31386.i, align 1, !tbaa !29
  %i.gp = icmp samesign ugt i32 %i.fi, 127
  %or.cond18.i = and i1 %i.dd, %i.gp
  br i1 %or.cond18.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gq = call i32 @_pcre2_ord2utf_8(i32 noundef %i.fi, ptr noundef nonnull %i.go) #17, !inline_history !173
  %i.gr = zext i32 %i.gq to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gs = trunc i32 %i.fi to i8
  store i8 %i.gs, ptr %i.go, align 1, !tbaa !29
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gt = phi i64 [ %i.gr, %bb.ai ], [ 1, %bb.aj ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gt
  br label %.thread

bb.al:                                            ; preds = %bb.aa
  %i.gv = icmp eq i32 %i.du, -2146828288
  %i.gw = icmp sgt i32 %i.fl, -1
  %or.cond2253 = and i1 %i.gv, %i.gw
  br i1 %or.cond2253, label %bb.am, label %.thread256

bb.am:                                            ; preds = %bb.al
  %i.gx = getelementptr inbounds nuw i8, ptr %.promoted, i64 12 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !28
  %i.gz = icmp eq i32 %i.gy, -2146631680
  br i1 %i.gz, label %bb.an, label %.thread256

bb.an:                                            ; preds = %bb.am
  %i.ha = lshr i32 %i.fi, 7
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !30
  %i.he = zext i16 %i.hd to i32
  %i.hf = shl nuw nsw i32 %i.he, 7
  %i.hg = and i32 %i.fi, 127
  %i.hh = or disjoint i32 %i.hf, %i.hg
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !30
  %i.hl = zext i16 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !83
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hq = and i32 %.01519.i, 128
  %i.hr = icmp ne i32 %i.hq, 0
  %i.hs = or i32 %i.fl, %i.fi
  %i.ht = icmp samesign ult i32 %i.hs, 128
  %or.cond1661.i = and i1 %i.hr, %i.ht
  br i1 %or.cond1661.i, label %.thread257, label %.thread256

bb.ap:                                            ; preds = %bb.an
  %i.hu = icmp samesign ugt i32 %i.fi, 127
  %or.cond24.i = and i1 %or.cond22.i, %i.hu
  br i1 %or.cond24.i, label %bb.aq, label %.thread257

bb.aq:                                            ; preds = %bb.ap
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !80
  %i.hx = add nsw i32 %i.hw, %i.fi
  br label %bb.ar

.thread257:                                       ; preds = %bb.ao, %bb.ap
  %i.hy = load ptr, ptr %i.bx, align 8, !tbaa !40
  %i.hz = zext nneg i32 %i.fi to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !29
  %i.ic = zext i8 %i.ib to i32
  br label %bb.ar

bb.ar:                                            ; preds = %.thread257, %bb.aq
  %.01287.i = phi i32 [ %i.hx, %bb.aq ], [ %i.ic, %.thread257 ] ; 2 uses
  %.not1638.i = icmp ne i32 %i.fi, %.01287.i
  %i.id = icmp eq i32 %i.fl, %.01287.i
  %or.cond652 = and i1 %.not1638.i, %i.id
  br i1 %or.cond652, label %bb.as, label %.thread256

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gx, ptr %i.a, align 8, !tbaa !68
  %i.ie = and i32 %.01522.i, 8                    ; 2 uses
  %i.if = icmp eq i32 %i.ie, 0
  %.11523.i = or i32 %.01522.i, 8
  %.11417.i = select i1 %i.if, i32 1, i32 %.01416.i
  %i.ig = icmp ne i32 %i.ie, 0
  br label %.thread425

.thread256:                                       ; preds = %bb.z, %bb.ar, %bb.ao, %bb.am, %bb.al
  %i.ih = getelementptr inbounds nuw i8, ptr %.31386.i, i64 4 ; 9 uses
  store ptr %i.ih, ptr %i.e, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store ptr %i.fh, ptr %i.a, align 8, !tbaa !68
  %i.ii = load i32, ptr %i.fh, align 4, !tbaa !28 ; 2 uses
  %.not1639.i1169 = icmp eq i32 %i.ii, -2146631680
  br i1 %.not1639.i1169, label %._crit_edge1176.thread, label %.lr.ph1175

._crit_edge1176.thread:                           ; preds = %.thread256
  %spec.store.select33.i1815 = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2)
  br label %bb.cp

.lr.ph1175:                                       ; preds = %.thread256
  %i.ij = and i32 %.01522.i, 8
  %i.ik = icmp ne i32 %i.ij, 0
  %i.il = and i32 %.01522.i, 131072
  %.not1644.i = icmp ne i32 %i.il, 0
  %i.im = and i32 %.01519.i, 2048
  %i.in = icmp eq i32 %i.im, 0
  %or.cond1663.i = select i1 %.not1644.i, i1 %i.in, i1 false
  %i.io = and i32 %.01522.i, -9                   ; 6 uses
  %i.ip = and i32 %.01522.i, 524288
  %.not.i136 = icmp eq i32 %i.ip, 0
  %i.iq = select i1 %.not.i136, i32 -1, i32 1114111 ; 2 uses
  %i.ir = ptrtoint ptr %i.ih to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph1175, %bb.cf
  %i.is = phi ptr [ %i.ih, %.lr.ph1175 ], [ %i.su, %bb.cf ] ; 4 uses
  %.4 = phi i64 [ %.31731, %.lr.ph1175 ], [ %.5, %bb.cf ]
  %i.it = phi i32 [ %i.ii, %.lr.ph1175 ], [ %i.sx, %bb.cf ] ; 7 uses
  %i.iu = phi ptr [ %i.fh, %.lr.ph1175 ], [ %i.sw, %bb.cf ] ; 16 uses
  %.01318.i1174 = phi i32 [ 0, %.lr.ph1175 ], [ %.21320.i, %bb.cf ] ; 5 uses
  %.01327.i1173 = phi i32 [ 0, %.lr.ph1175 ], [ %.31330.i, %bb.cf ] ; 21 uses
  %.01331.i1172 = phi i32 [ 0, %.lr.ph1175 ], [ %.11332.i, %bb.cf ] ; 15 uses
  %.01333.i1171 = phi i32 [ 0, %.lr.ph1175 ], [ %.21335.i, %bb.cf ] ; 19 uses
  %.01336.i1170 = phi i32 [ 0, %.lr.ph1175 ], [ %.11337.i, %bb.cf ]
  %i.iv = phi ptr [ %.promoted, %.lr.ph1175 ], [ %i.so, %bb.cf ] ; 3 uses
  %i.iw = phi i64 [ %.31731, %.lr.ph1175 ], [ %i.sv, %bb.cf ] ; 2 uses
  %i.ix = icmp eq i32 %i.it, -2145583104          ; 3 uses
  switch i32 %i.it, label %bb.be [
    i32 -2145583104, label %bb.au
    i32 -2145648640, label %bb.au
    i32 -2147155968, label %bb.bd
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %i.iy = zext i1 %i.ix to i32                    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 5 uses
  store ptr %i.iz, ptr %i.a, align 8, !tbaa !68
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !28 ; 2 uses
  %i.jb = icmp slt i32 %i.ja, 3
  %or.cond28.i = select i1 %i.ik, i1 %i.jb, i1 false
  %spec.store.select124.i = select i1 %or.cond28.i, i32 0, i32 %i.ja ; 4 uses
  br i1 %or.cond1663.i, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %spec.store.select124.off.i = add i32 %spec.store.select124.i, -8
  %switch.i = icmp ult i32 %spec.store.select124.off.i, 3
  br i1 %switch.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jc = select i1 %i.ix, i8 4, i8 3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  store ptr %i.jd, ptr %i.e, align 8, !tbaa !27
  store i8 %i.jc, ptr %i.is, align 1, !tbaa !29
  %i.je = icmp eq i32 %spec.store.select124.i, 8
  %i.jf = icmp eq i32 %spec.store.select124.i, 9
  %i.jg = select i1 %i.jf, i8 15, i8 16
  %i.jh = select i1 %i.je, i8 14, i8 %i.jg
  %i.ji = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  store ptr %i.jj, ptr %i.e, align 8, !tbaa !27
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !29
  %i.jk = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store ptr %i.jl, ptr %i.e, align 8, !tbaa !27
  store i8 0, ptr %i.jk, align 1, !tbaa !29
  br label %add_list_to_class.exit163

bb.ax:                                            ; preds = %bb.av
  %i.jm = select i1 %i.dd, i32 %i.iy, i32 0
  %spec.select1664.i = or i32 %i.jm, %.01327.i1173
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.11328.i = phi i32 [ %.01327.i1173, %bb.au ], [ %spec.select1664.i, %bb.ax ] ; 2 uses
  %i.jn = mul nsw i32 %spec.store.select124.i, 3
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr @posix_class_maps, i64 %i.jo ; 3 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !28
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %i.db, i64 %i.jr ; 7 uses
  %.sroa.0.0.copyload = load i8, ptr %i.js, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1 ; 3 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %.sroa.17.0.copyload = load i8, ptr %.sroa.17.0..sroa_idx, align 1 ; 3 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 3
  %i.jt = load <8 x i8>, ptr %.sroa.23.0..sroa_idx, align 1 ; 3 uses
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 11
  %.sroa.71.0.copyload = load i8, ptr %.sroa.71.0..sroa_idx, align 1 ; 3 uses
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 12
  %i.ju = load <4 x i8>, ptr %.sroa.79.0..sroa_idx, align 1 ; 3 uses
  %.sroa.103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jv = load <16 x i8>, ptr %.sroa.103.0..sroa_idx, align 1 ; 3 uses
  %i.jw = getelementptr i8, ptr %i.jp, i64 4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !28 ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jp, i64 8
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !28 ; 2 uses
  %i.ka = icmp sgt i32 %i.jx, -1
  br i1 %i.ka, label %bb.az, label %.loopexit678

bb.az:                                            ; preds = %bb.ay
  %i.kb = icmp sgt i32 %i.jz, -1
  %i.kc = zext nneg i32 %i.jx to i64              ; 13 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !29  ; 2 uses
  br i1 %i.kb, label %.preheader677.preheader, label %.preheader679.preheader

.preheader679.preheader:                          ; preds = %bb.az
  %i.kf = xor i8 %i.ke, -1
  %i.kg = and i8 %.sroa.0.0.copyload, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !29
  %i.kk = xor i8 %i.kj, -1
  %i.kl = and i8 %.sroa.9.0.copyload, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !29
  %i.kp = xor i8 %i.ko, -1
  %i.kq = and i8 %.sroa.17.0.copyload, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 3
  %i.kt = load <8 x i8>, ptr %i.ks, align 1, !tbaa !29
  %i.ku = xor <8 x i8> %i.kt, splat (i8 -1)
  %i.kv = and <8 x i8> %i.jt, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 11
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !29
  %i.kz = xor i8 %i.ky, -1
  %i.la = and i8 %.sroa.71.0.copyload, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.ld = load <4 x i8>, ptr %i.lc, align 1, !tbaa !29
  %i.le = xor <4 x i8> %i.ld, splat (i8 -1)
  %i.lf = and <4 x i8> %i.ju, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load <16 x i8>, ptr %i.lh, align 1, !tbaa !29
  %i.lj = xor <16 x i8> %i.li, splat (i8 -1)
  %i.lk = and <16 x i8> %i.jv, %i.lj
  br label %.loopexit678

.preheader677.preheader:                          ; preds = %bb.az
  %i.ll = or i8 %.sroa.0.0.copyload, %i.ke
  %i.lm = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !29
  %i.lp = or i8 %.sroa.9.0.copyload, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 2
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !29
  %i.lt = or i8 %.sroa.17.0.copyload, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 3
  %i.lw = load <8 x i8>, ptr %i.lv, align 1, !tbaa !29
  %i.lx = or <8 x i8> %i.jt, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 11
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !29
  %i.mb = or i8 %.sroa.71.0.copyload, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  %i.me = load <4 x i8>, ptr %i.md, align 1, !tbaa !29
  %i.mf = or <4 x i8> %i.ju, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.kc
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load <16 x i8>, ptr %i.mh, align 1, !tbaa !29
  %i.mj = or <16 x i8> %i.jv, %i.mi
  br label %.loopexit678

.loopexit678:                                     ; preds = %.preheader679.preheader, %.preheader677.preheader, %bb.ay
  %.sroa.71.0 = phi i8 [ %i.mb, %.preheader677.preheader ], [ %i.la, %.preheader679.preheader ], [ %.sroa.71.0.copyload, %bb.ay ] ; 3 uses
  %.sroa.17.0 = phi i8 [ %i.lt, %.preheader677.preheader ], [ %i.kq, %.preheader679.preheader ], [ %.sroa.17.0.copyload, %bb.ay ] ; 2 uses
  %.sroa.9.0 = phi i8 [ %i.lp, %.preheader677.preheader ], [ %i.kl, %.preheader679.preheader ], [ %.sroa.9.0.copyload, %bb.ay ] ; 3 uses
  %.sroa.0.0 = phi i8 [ %i.ll, %.preheader677.preheader ], [ %i.kg, %.preheader679.preheader ], [ %.sroa.0.0.copyload, %bb.ay ] ; 2 uses
  %i.mk = phi <16 x i8> [ %i.mj, %.preheader677.preheader ], [ %i.lk, %.preheader679.preheader ], [ %i.jv, %bb.ay ] ; 2 uses
  %i.ml = phi <4 x i8> [ %i.mf, %.preheader677.preheader ], [ %i.lf, %.preheader679.preheader ], [ %i.ju, %bb.ay ] ; 2 uses
  %i.mm = phi <8 x i8> [ %i.lx, %.preheader677.preheader ], [ %i.kv, %.preheader679.preheader ], [ %i.jt, %bb.ay ] ; 2 uses
  %spec.select1665.i = call i32 @llvm.abs.i32(i32 %i.jz, i1 true)
  switch i32 %spec.select1665.i, label %bb.bc [
    i32 1, label %bb.ba
    i32 2, label %bb.bb
  ]

bb.ba:                                            ; preds = %.loopexit678
  %i.mn = and i8 %.sroa.9.0, -61
  br label %bb.bc

bb.bb:                                            ; preds = %.loopexit678
  %i.mo = and i8 %.sroa.71.0, 127
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.loopexit678
  %.sroa.71.1 = phi i8 [ %.sroa.71.0, %.loopexit678 ], [ %.sroa.71.0, %bb.ba ], [ %i.mo, %bb.bb ] ; 2 uses
  %.sroa.9.1 = phi i8 [ %.sroa.9.0, %.loopexit678 ], [ %i.mn, %bb.ba ], [ %.sroa.9.0, %bb.bb ] ; 2 uses
  br i1 %i.ix, label %.preheader674.preheader, label %.preheader675.preheader

.preheader675.preheader:                          ; preds = %bb.bc
  %i.mp = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.mq = shufflevector <4 x i8> %i.ml, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mr = shufflevector <8 x i8> %i.mm, <8 x i8> %i.mq, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.ms = insertelement <16 x i8> %i.mr, i8 %.sroa.0.0, i64 0
  %i.mt = insertelement <16 x i8> %i.ms, i8 %.sroa.9.1, i64 1
  %i.mu = insertelement <16 x i8> %i.mt, i8 %.sroa.17.0, i64 2
  %i.mv = insertelement <16 x i8> %i.mu, i8 %.sroa.71.1, i64 11
  %i.mw = or <16 x i8> %i.mp, %i.mv
  store <16 x i8> %i.mw, ptr %i.d, align 16, !tbaa !29
  %i.mx = load <16 x i8>, ptr %i.ce, align 16, !tbaa !29
  %i.my = or <16 x i8> %i.mx, %i.mk
  store <16 x i8> %i.my, ptr %i.ce, align 16, !tbaa !29
  br label %add_list_to_class.exit163

.preheader674.preheader:                          ; preds = %bb.bc
  %i.mz = insertelement <16 x i8> poison, i8 %.sroa.0.0, i64 0
  %i.na = insertelement <16 x i8> %i.mz, i8 %.sroa.9.1, i64 1
  %i.nb = insertelement <16 x i8> %i.na, i8 %.sroa.17.0, i64 2
  %i.nc = shufflevector <8 x i8> %i.mm, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nd = shufflevector <16 x i8> %i.nb, <16 x i8> %i.nc, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ne = insertelement <16 x i8> %i.nd, i8 %.sroa.71.1, i64 11
  %i.nf = shufflevector <4 x i8> %i.ml, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ng = shufflevector <16 x i8> %i.ne, <16 x i8> %i.nf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.nh = xor <16 x i8> %i.ng, splat (i8 -1)
  %i.ni = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.nj = or <16 x i8> %i.ni, %i.nh
  store <16 x i8> %i.nj, ptr %i.d, align 16, !tbaa !29
  %i.nk = xor <16 x i8> %i.mk, splat (i8 -1)
  %i.nl = load <16 x i8>, ptr %i.cf, align 16, !tbaa !29
  %i.nm = or <16 x i8> %i.nl, %i.nk
  store <16 x i8> %i.nm, ptr %i.cf, align 16, !tbaa !29
  br label %add_list_to_class.exit163

bb.bd:                                            ; preds = %bb.at
  %i.nn = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !28
  br label %bb.bv

bb.be:                                            ; preds = %bb.at
end_hunk_1
begin_hunk_2_@compile_regex:bb.a
  %i.oa = load <16 x i8>, ptr %i.db, align 1, !tbaa !29
  %i.ob = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.oc = or <16 x i8> %i.ob, %i.oa
  store <16 x i8> %i.oc, ptr %i.d, align 16, !tbaa !29
  %i.od = load <16 x i8>, ptr %i.dk, align 1, !tbaa !29
  %i.oe = load <16 x i8>, ptr %i.ch, align 16, !tbaa !29
  %i.of = or <16 x i8> %i.oe, %i.od
  store <16 x i8> %i.of, ptr %i.ch, align 16, !tbaa !29
  br label %add_list_to_class.exit163

.preheader664.preheader:                          ; preds = %bb.bh
  %i.og = load <16 x i8>, ptr %i.dl, align 1, !tbaa !29
  %i.oh = xor <16 x i8> %i.og, splat (i8 -1)
  %i.oi = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.oj = or <16 x i8> %i.oi, %i.oh
  store <16 x i8> %i.oj, ptr %i.d, align 16, !tbaa !29
  %i.ok = load <16 x i8>, ptr %i.dm, align 1, !tbaa !29
  %i.ol = xor <16 x i8> %i.ok, splat (i8 -1)
  %i.om = load <16 x i8>, ptr %i.ci, align 16, !tbaa !29
  %i.on = or <16 x i8> %i.om, %i.ol
  store <16 x i8> %i.on, ptr %i.ci, align 16, !tbaa !29
  br label %add_list_to_class.exit163

.preheader662.preheader:                          ; preds = %bb.bh
  %i.oo = load <16 x i8>, ptr %i.dn, align 1, !tbaa !29
  %i.op = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.oq = or <16 x i8> %i.op, %i.oo
  store <16 x i8> %i.oq, ptr %i.d, align 16, !tbaa !29
  %i.or = load <16 x i8>, ptr %i.do, align 1, !tbaa !29
  %i.os = load <16 x i8>, ptr %i.cj, align 16, !tbaa !29
  %i.ot = or <16 x i8> %i.os, %i.or
  store <16 x i8> %i.ot, ptr %i.cj, align 16, !tbaa !29
  br label %add_list_to_class.exit163

.preheader660.preheader:                          ; preds = %bb.bh
  %i.ou = load <16 x i8>, ptr %i.dp, align 1, !tbaa !29
  %i.ov = xor <16 x i8> %i.ou, splat (i8 -1)
  %i.ow = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.ox = or <16 x i8> %i.ow, %i.ov
  store <16 x i8> %i.ox, ptr %i.d, align 16, !tbaa !29
  %i.oy = load <16 x i8>, ptr %i.dq, align 1, !tbaa !29
  %i.oz = xor <16 x i8> %i.oy, splat (i8 -1)
  %i.pa = load <16 x i8>, ptr %i.ck, align 16, !tbaa !29
  %i.pb = or <16 x i8> %i.pa, %i.oz
  store <16 x i8> %i.pb, ptr %i.ck, align 16, !tbaa !29
  br label %add_list_to_class.exit163

.preheader.preheader:                             ; preds = %bb.bh
  %i.pc = load <16 x i8>, ptr %i.dr, align 1, !tbaa !29
  %i.pd = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.pe = or <16 x i8> %i.pd, %i.pc
  store <16 x i8> %i.pe, ptr %i.d, align 16, !tbaa !29
  %i.pf = load <16 x i8>, ptr %i.ds, align 1, !tbaa !29
  %i.pg = load <16 x i8>, ptr %i.cl, align 16, !tbaa !29
  %i.ph = or <16 x i8> %i.pg, %i.pf
  store <16 x i8> %i.ph, ptr %i.cl, align 16, !tbaa !29
  br label %add_list_to_class.exit163

bb.bi:                                            ; preds = %bb.bh
  %i.pi = load i32, ptr @_pcre2_hspace_list_8, align 4, !tbaa !28 ; 2 uses
  %.not29.i155 = icmp eq i32 %i.pi, -1
  br i1 %.not29.i155, label %add_list_to_class.exit163, label %.preheader.i157

.preheader.i157:                                  ; preds = %bb.bi, %bb.bk
  %i.pj = phi i32 [ %i.po, %bb.bk ], [ %i.pi, %bb.bi ] ; 2 uses
  %.02630.i159 = phi ptr [ %i.pr, %bb.bk ], [ @_pcre2_hspace_list_8, %bb.bi ] ; 4 uses
  %i.pk = add nuw i32 %i.pj, 1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.preheader.i157
  %.0.i160 = phi i32 [ %i.pl, %bb.bj ], [ 0, %.preheader.i157 ] ; 3 uses
  %i.pl = add i32 %.0.i160, 1                     ; 2 uses
  %i.pm = zext i32 %i.pl to i64                   ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.02630.i159, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !28 ; 3 uses
  %i.pp = add i32 %i.pk, %.0.i160
  %i.pq = icmp eq i32 %i.po, %i.pp
  br i1 %i.pq, label %bb.bj, label %bb.bk, !llvm.loop !174

bb.bk:                                            ; preds = %bb.bj
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.02630.i159, i64 %i.pm
  store i32 %i.pj, ptr %i.by, align 8, !tbaa !84
  %i.ps = zext i32 %.0.i160 to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.02630.i159, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !28 ; 2 uses
  store i32 %i.pu, ptr %i.bz, align 4, !tbaa !85
  %i.pv = load i32, ptr %.02630.i159, align 4, !tbaa !28
  %i.pw = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef range(i32 0, -8) %i.io, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef %i.pv, i32 noundef %i.pu) ; 0 uses
  %.not.i161 = icmp eq i32 %i.po, -1
  br i1 %.not.i161, label %add_list_to_class.exit163, label %.preheader.i157, !llvm.loop !175

bb.bl:                                            ; preds = %bb.bh
  %i.px = load i32, ptr @_pcre2_hspace_list_8, align 4, !tbaa !28 ; 4 uses
  %.not29.i143 = icmp eq i32 %i.px, 0
  br i1 %.not29.i143, label %.preheader.i148.preheader, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.py = add i32 %i.px, -1                       ; 2 uses
  store i32 0, ptr %i.by, align 8, !tbaa !84
  store i32 %i.py, ptr %i.bz, align 4, !tbaa !85
  %i.pz = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef range(i32 0, -8) %i.io, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef 0, i32 noundef %i.py) ; 0 uses
  %.not3033.i145 = icmp eq i32 %i.px, -1
  br i1 %.not3033.i145, label %add_list_to_class.exit163, label %.preheader.i148.preheader

.preheader.i148.preheader:                        ; preds = %bb.bl, %bb.bm
  br label %.preheader.i148

.preheader.i148:                                  ; preds = %.preheader.i148.backedge, %.preheader.i148.preheader
  %i.qa = phi i32 [ %i.px, %.preheader.i148.preheader ], [ %i.qc, %.preheader.i148.backedge ]
  %.125.i151 = phi ptr [ @_pcre2_hspace_list_8, %.preheader.i148.preheader ], [ %i.qb, %.preheader.i148.backedge ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.125.i151, i64 4 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !28 ; 4 uses
  %i.qd = add i32 %i.qa, 1                        ; 3 uses
  %i.qe = icmp eq i32 %i.qc, %i.qd
  br i1 %i.qe, label %.preheader.i148.backedge, label %bb.bn

.preheader.i148.backedge:                         ; preds = %.preheader.i148, %bb.bn
  br label %.preheader.i148, !llvm.loop !176

bb.bn:                                            ; preds = %.preheader.i148
  %i.qf = icmp eq i32 %i.qc, -1                   ; 2 uses
  %i.qg = add i32 %i.qc, -1
  %i.qh = select i1 %i.qf, i32 %i.iq, i32 %i.qg   ; 2 uses
  store i32 %i.qd, ptr %i.by, align 8, !tbaa !84
  store i32 %i.qh, ptr %i.bz, align 4, !tbaa !85
  %i.qi = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef range(i32 0, -8) %i.io, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef %i.qd, i32 noundef %i.qh) ; 0 uses
  br i1 %i.qf, label %add_list_to_class.exit163, label %.preheader.i148.backedge

bb.bo:                                            ; preds = %bb.bh
  %i.qj = load i32, ptr @_pcre2_vspace_list_8, align 4, !tbaa !28 ; 2 uses
  %.not29.i137 = icmp eq i32 %i.qj, -1
  br i1 %.not29.i137, label %add_list_to_class.exit163, label %.preheader.i139

.preheader.i139:                                  ; preds = %bb.bo, %bb.bq
  %i.qk = phi i32 [ %i.qp, %bb.bq ], [ %i.qj, %bb.bo ] ; 2 uses
  %.02630.i = phi ptr [ %i.qs, %bb.bq ], [ @_pcre2_vspace_list_8, %bb.bo ] ; 4 uses
  %i.ql = add nuw i32 %i.qk, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.preheader.i139
  %.0.i140 = phi i32 [ %i.qm, %bb.bp ], [ 0, %.preheader.i139 ] ; 3 uses
  %i.qm = add i32 %.0.i140, 1                     ; 2 uses
  %i.qn = zext i32 %i.qm to i64                   ; 2 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %.02630.i, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !28 ; 3 uses
  %i.qq = add i32 %i.ql, %.0.i140
  %i.qr = icmp eq i32 %i.qp, %i.qq
  br i1 %i.qr, label %bb.bp, label %bb.bq, !llvm.loop !174

bb.bq:                                            ; preds = %bb.bp
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.02630.i, i64 %i.qn
  store i32 %i.qk, ptr %i.by, align 8, !tbaa !84
  %i.qt = zext i32 %.0.i140 to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.02630.i, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !28 ; 2 uses
  store i32 %i.qv, ptr %i.bz, align 4, !tbaa !85
  %i.qw = load i32, ptr %.02630.i, align 4, !tbaa !28
  %i.qx = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef range(i32 0, -8) %i.io, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef %i.qw, i32 noundef %i.qv) ; 0 uses
  %.not.i141 = icmp eq i32 %i.qp, -1
  br i1 %.not.i141, label %add_list_to_class.exit163, label %.preheader.i139, !llvm.loop !175

bb.br:                                            ; preds = %bb.bh
  %i.qy = load i32, ptr @_pcre2_vspace_list_8, align 4, !tbaa !28 ; 4 uses
  %.not29.i = icmp eq i32 %i.qy, 0
  br i1 %.not29.i, label %.preheader.i.preheader, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qz = add i32 %i.qy, -1                       ; 2 uses
  store i32 0, ptr %i.by, align 8, !tbaa !84
  store i32 %i.qz, ptr %i.bz, align 4, !tbaa !85
  %i.ra = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef range(i32 0, -8) %i.io, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef 0, i32 noundef %i.qz) ; 0 uses
  %.not3033.i = icmp eq i32 %i.qy, -1
  br i1 %.not3033.i, label %add_list_to_class.exit163, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.br, %bb.bs
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.i.preheader
  %i.rb = phi i32 [ %i.qy, %.preheader.i.preheader ], [ %i.rd, %.preheader.i.backedge ]
  %.125.i = phi ptr [ @_pcre2_vspace_list_8, %.preheader.i.preheader ], [ %i.rc, %.preheader.i.backedge ]
  %i.rc = getelementptr inbounds nuw i8, ptr %.125.i, i64 4 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !28 ; 4 uses
  %i.re = add i32 %i.rb, 1                        ; 3 uses
  %i.rf = icmp eq i32 %i.rd, %i.re
  br i1 %i.rf, label %.preheader.i.backedge, label %bb.bt

.preheader.i.backedge:                            ; preds = %.preheader.i, %bb.bt
  br label %.preheader.i, !llvm.loop !176

bb.bt:                                            ; preds = %.preheader.i
  %i.rg = icmp eq i32 %i.rd, -1                   ; 2 uses
  %i.rh = add i32 %i.rd, -1
  %i.ri = select i1 %i.rg, i32 %i.iq, i32 %i.rh   ; 2 uses
  store i32 %i.re, ptr %i.by, align 8, !tbaa !84
  store i32 %i.ri, ptr %i.bz, align 4, !tbaa !85
  %i.rj = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef range(i32 0, -8) %i.io, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef %i.re, i32 noundef %i.ri) ; 0 uses
  br i1 %i.rg, label %add_list_to_class.exit163, label %.preheader.i.backedge

bb.bu:                                            ; preds = %bb.bh, %bb.bh
  %i.rk = and i32 %i.it, 65535
  %i.rl = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 3 uses
  store ptr %i.rl, ptr %i.a, align 8, !tbaa !68
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !28 ; 2 uses
  %i.rn = lshr i32 %i.rm, 16
  %i.ro = icmp eq i32 %i.rk, 16
  %i.rp = select i1 %i.ro, i8 3, i8 4
  %i.rq = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  store ptr %i.rq, ptr %i.e, align 8, !tbaa !27
  store i8 %i.rp, ptr %i.is, align 1, !tbaa !29
  %i.rr = trunc i32 %i.rn to i8
  %i.rs = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 1
  store ptr %i.rt, ptr %i.e, align 8, !tbaa !27
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !29
  %i.ru = trunc i32 %i.rm to i8
  %i.rv = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 1
  store ptr %i.rw, ptr %i.e, align 8, !tbaa !27
  store i8 %i.ru, ptr %i.rv, align 1, !tbaa !29
  br label %add_list_to_class.exit163

bb.bv:                                            ; preds = %bb.be, %bb.bd
  %i.rx = phi ptr [ %i.nn, %bb.bd ], [ %i.iu, %bb.be ] ; 4 uses
  %.41483.i = phi i32 [ %i.no, %bb.bd ], [ %i.it, %bb.be ] ; 7 uses
  switch i32 %.41483.i, label %bb.bx [
    i32 13, label %bb.bw
    i32 10, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %i.ry = load i32, ptr %i.bj, align 8, !tbaa !35
  %i.rz = or i32 %i.ry, 2048
  store i32 %i.rz, ptr %i.bj, align 8, !tbaa !35
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !28
  switch i32 %i.sb, label %bb.cd [
    i32 -2145452032, label %bb.by
    i32 -2145517568, label %bb.by
  ]

bb.by:                                            ; preds = %bb.bx, %bb.bx
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rx, i64 8 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !28 ; 2 uses
  %i.se = icmp eq i32 %i.sd, -2147155968
  br i1 %i.se, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rx, i64 12 ; 3 uses
  store ptr %i.sf, ptr %i.a, align 8, !tbaa !68
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !28
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.sh = phi ptr [ %i.sf, %bb.bz ], [ %i.sc, %bb.by ]
  %.01269.i = phi i32 [ %i.sg, %bb.bz ], [ %i.sd, %bb.by ] ; 3 uses
  switch i32 %.01269.i, label %bb.cc [
    i32 13, label %bb.cb
    i32 10, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca, %bb.ca
  %i.si = load i32, ptr %i.bj, align 8, !tbaa !35
  %i.sj = or i32 %i.si, 2048
  store i32 %i.sj, ptr %i.bj, align 8, !tbaa !35
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  store i32 %.41483.i, ptr %i.by, align 8, !tbaa !84
  store i32 %.01269.i, ptr %i.bz, align 4, !tbaa !85
  %i.sk = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %.01522.i, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef %.41483.i, i32 noundef %.01269.i)
  %i.sl = add i32 %i.sk, %.01318.i1174
  br label %add_list_to_class.exit163

bb.cd:                                            ; preds = %bb.bx
  store i32 %.41483.i, ptr %i.by, align 8, !tbaa !84
  store i32 %.41483.i, ptr %i.bz, align 4, !tbaa !85
  %i.sm = call fastcc i32 @add_to_class_internal(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %.01522.i, i32 noundef %.01519.i, ptr noundef nonnull %12, i32 noundef %.41483.i, i32 noundef %.41483.i)
  %i.sn = add i32 %i.sm, %.01318.i1174
  br label %add_list_to_class.exit163

add_list_to_class.exit163:                        ; preds = %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.aw, %.preheader674.preheader, %.preheader675.preheader, %.preheader668.preheader, %.preheader666.preheader, %.preheader664.preheader, %.preheader662.preheader, %.preheader660.preheader, %.preheader.preheader, %bb.bs, %bb.bo, %bb.bm, %bb.bi, %bb.cd, %bb.cc, %bb.bu, %bb.bh
  %i.so = phi ptr [ %i.iu, %bb.bq ], [ %i.sh, %bb.cc ], [ %i.rx, %bb.cd ], [ %i.iu, %bb.bh ], [ %i.rl, %bb.bu ], [ %i.iz, %bb.aw ], [ %i.iu, %bb.bk ], [ %i.iu, %bb.bn ], [ %i.iu, %.preheader.preheader ], [ %i.iu, %.preheader660.preheader ], [ %i.iu, %.preheader662.preheader ], [ %i.iu, %.preheader664.preheader ], [ %i.iu, %.preheader666.preheader ], [ %i.iu, %.preheader668.preheader ], [ %i.iu, %bb.bi ], [ %i.iu, %bb.bm ], [ %i.iu, %bb.bo ], [ %i.iu, %bb.bs ], [ %i.iz, %.preheader675.preheader ], [ %i.iz, %.preheader674.preheader ], [ %i.iu, %bb.bt ] ; 2 uses
  %.21335.i = phi i32 [ %.01333.i1171, %bb.bq ], [ %.01333.i1171, %bb.cc ], [ %.01333.i1171, %bb.cd ], [ %.01333.i1171, %bb.bh ], [ 1, %bb.bu ], [ 1, %bb.aw ], [ %.01333.i1171, %bb.bk ], [ %.01333.i1171, %bb.bn ], [ %.01333.i1171, %.preheader.preheader ], [ %.01333.i1171, %.preheader660.preheader ], [ %.01333.i1171, %.preheader662.preheader ], [ %.01333.i1171, %.preheader664.preheader ], [ %.01333.i1171, %.preheader666.preheader ], [ %.01333.i1171, %.preheader668.preheader ], [ %.01333.i1171, %bb.bi ], [ %.01333.i1171, %bb.bm ], [ %.01333.i1171, %bb.bo ], [ %.01333.i1171, %bb.bs ], [ %.01333.i1171, %.preheader675.preheader ], [ %.01333.i1171, %.preheader674.preheader ], [ %.01333.i1171, %bb.bt ] ; 2 uses
  %.11332.i = phi i32 [ %.01331.i1172, %bb.bq ], [ %.01331.i1172, %bb.cc ], [ %.01331.i1172, %bb.cd ], [ %.01331.i1172, %bb.bh ], [ %.01331.i1172, %bb.bu ], [ %i.iy, %bb.aw ], [ %.01331.i1172, %bb.bk ], [ %.01331.i1172, %bb.bn ], [ %.01331.i1172, %.preheader.preheader ], [ 1, %.preheader660.preheader ], [ %.01331.i1172, %.preheader662.preheader ], [ 1, %.preheader664.preheader ], [ %.01331.i1172, %.preheader666.preheader ], [ 1, %.preheader668.preheader ], [ %.01331.i1172, %bb.bi ], [ %.01331.i1172, %bb.bm ], [ %.01331.i1172, %bb.bo ], [ %.01331.i1172, %bb.bs ], [ 0, %.preheader675.preheader ], [ 1, %.preheader674.preheader ], [ %.01331.i1172, %bb.bt ] ; 4 uses
  %.31330.i = phi i32 [ %.01327.i1173, %bb.bq ], [ %.01327.i1173, %bb.cc ], [ %.01327.i1173, %bb.cd ], [ %.01327.i1173, %bb.bh ], [ %.01327.i1173, %bb.bu ], [ %.01327.i1173, %bb.aw ], [ %.01327.i1173, %bb.bk ], [ %.01327.i1173, %bb.bn ], [ %.01327.i1173, %.preheader.preheader ], [ %.01327.i1173, %.preheader660.preheader ], [ %.01327.i1173, %.preheader662.preheader ], [ %.01327.i1173, %.preheader664.preheader ], [ %.01327.i1173, %.preheader666.preheader ], [ %.01327.i1173, %.preheader668.preheader ], [ %.01327.i1173, %bb.bi ], [ %.01327.i1173, %bb.bm ], [ %.01327.i1173, %bb.bo ], [ %.01327.i1173, %bb.bs ], [ %.11328.i, %.preheader675.preheader ], [ %.11328.i, %.preheader674.preheader ], [ %.01327.i1173, %bb.bt ] ; 2 uses
  %.21320.i = phi i32 [ %i.nr, %bb.bq ], [ %i.sl, %bb.cc ], [ %i.sn, %bb.cd ], [ %i.nr, %bb.bh ], [ %.01318.i1174, %bb.bu ], [ %.01318.i1174, %bb.aw ], [ %i.nr, %bb.bk ], [ %i.nr, %bb.bn ], [ %i.nr, %.preheader.preheader ], [ %i.nr, %.preheader660.preheader ], [ %i.nr, %.preheader662.preheader ], [ %i.nr, %.preheader664.preheader ], [ %i.nr, %.preheader666.preheader ], [ %i.nr, %.preheader668.preheader ], [ %i.nr, %bb.bi ], [ %i.nr, %bb.bm ], [ %i.nr, %bb.bo ], [ %i.nr, %bb.bs ], [ 1, %.preheader675.preheader ], [ 1, %.preheader674.preheader ], [ %i.nr, %bb.bt ] ; 2 uses
  %i.sp = load ptr, ptr %i.e, align 8, !tbaa !27  ; 3 uses
  %i.sq = icmp ule ptr %i.sp, %i.ih               ; 2 uses
  %brmerge.i = or i1 %i.bd, %i.sq
  %.01336.mux.i = select i1 %i.sq, i32 %.01336.i1170, i32 1
  br i1 %brmerge.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %add_list_to_class.exit163
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sr, %i.ir
  %i.st = add i64 %i.ss, %i.iw                    ; 2 uses
  store ptr %i.ih, ptr %i.e, align 8, !tbaa !27
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %add_list_to_class.exit163
  %i.su = phi ptr [ %i.sp, %add_list_to_class.exit163 ], [ %i.ih, %bb.ce ] ; 6 uses
  %.5 = phi i64 [ %.4, %add_list_to_class.exit163 ], [ %i.st, %bb.ce ] ; 4 uses
  %i.sv = phi i64 [ %i.iw, %add_list_to_class.exit163 ], [ %i.st, %bb.ce ]
  %.11337.i = phi i32 [ %.01336.mux.i, %add_list_to_class.exit163 ], [ 1, %bb.ce ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.so, i64 4 ; 3 uses
  store ptr %i.sw, ptr %i.a, align 8, !tbaa !68
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !28 ; 2 uses
  %.not1639.i = icmp eq i32 %i.sx, -2146631680
  br i1 %.not1639.i, label %._crit_edge1176, label %bb.at, !llvm.loop !177

._crit_edge1176:                                  ; preds = %bb.cf
  %i.sy = icmp eq i32 %.11337.i, 0
  %i.sz = icmp ne i32 %.21335.i, 0                ; 3 uses
  %i.ta = icmp eq i32 %.31330.i, 0
  %i.tb = icmp sgt i32 %.21320.i, 0
  %spec.store.select33.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2) ; 4 uses
  br i1 %i.sy, label %bb.cp, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge1176
  %i.tc = and i32 %.01522.i, 131072               ; 2 uses
  %i.td = icmp ne i32 %i.tc, 0
  %or.cond35.i = select i1 %i.td, i1 true, i1 %i.sz
  %or.cond35.not.i = xor i1 %or.cond35.i, true
  %i.te = icmp ne i32 %.11332.i, 0                ; 2 uses
  %or.cond37.i = select i1 %or.cond35.not.i, i1 %i.te, i1 false
  br i1 %or.cond37.i, label %bb.cp, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.ta, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %or.cond39.i = select i1 %i.dd, i1 %i.te, i1 false
  %.not659 = xor i1 %i.ff, true
  %or.cond41.not.i = select i1 %or.cond39.i, i1 %.not659, i1 false
  %i.tf = icmp eq i32 %i.tc, 0
  %or.cond1668.i = and i1 %i.tf, %or.cond41.not.i
  br i1 %or.cond1668.i, label %.thread283, label %bb.cl

.thread283:                                       ; preds = %bb.ci
  %i.tg = getelementptr inbounds nuw i8, ptr %i.su, i64 1
  store ptr %i.tg, ptr %i.e, align 8, !tbaa !27
  store i8 2, ptr %i.su, align 1, !tbaa !29
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.th = getelementptr inbounds nuw i8, ptr %i.su, i64 1
  store ptr %i.th, ptr %i.e, align 8, !tbaa !27
  store i8 2, ptr %i.su, align 1, !tbaa !29
  br i1 %i.dd, label %bb.ck, label %._crit_edge1740

._crit_edge1740:                                  ; preds = %bb.cj
  %.pre1741.a = load ptr, ptr %i.e, align 8, !tbaa !27
  br label %bb.cl

bb.ck:                                            ; preds = %.thread283, %bb.cj
  %i.ti = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.tj = call i32 @_pcre2_ord2utf_8(i32 noundef 256, ptr noundef %i.ti) #17, !inline_history !173
  %i.tk = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.tl = zext i32 %i.tj to i64
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tl ; 2 uses
  store ptr %i.tm, ptr %i.e, align 8, !tbaa !27
  %i.tn = call i32 @_pcre2_ord2utf_8(i32 noundef 1114111, ptr noundef %i.tm) #17, !inline_history !173
  %i.to = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.tp = zext i32 %i.tn to i64
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.tp
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge1740, %bb.ck, %bb.ci
  %i.tr = phi ptr [ %.pre1741.a, %._crit_edge1740 ], [ %i.tq, %bb.ck ], [ %i.su, %bb.ci ] ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 1
  store ptr %i.ts, ptr %i.e, align 8, !tbaa !27
  store i8 0, ptr %i.tr, align 1, !tbaa !29
  store i8 112, ptr %.31386.i, align 1, !tbaa !29
  %i.tt = getelementptr inbounds nuw i8, ptr %.31386.i, i64 3 ; 2 uses
  %i.tu = zext i1 %i.ff to i8                     ; 2 uses
  %i.tv = or disjoint i8 %i.tu, 4
  %storemerge.i = select i1 %i.sz, i8 %i.tv, i8 %i.tu ; 2 uses
  store i8 %storemerge.i, ptr %i.tt, align 1, !tbaa !29
  br i1 %i.tb, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.tw = or disjoint i8 %storemerge.i, 2
  store i8 %i.tw, ptr %i.tt, align 1, !tbaa !29
  %i.tx = getelementptr inbounds nuw i8, ptr %.31386.i, i64 36
  %i.ty = load ptr, ptr %i.e, align 8, !tbaa !27  ; 2 uses
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = ptrtoint ptr %i.ih to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.tx, ptr nonnull align 1 %i.ih, i64 %i.ub, i1 false)
  %i.uc = xor i1 %i.ff, true
  %or.cond43.i = select i1 %i.uc, i1 true, i1 %i.sz
  br i1 %or.cond43.i, label %.loopexit684, label %.preheader683.preheader

.preheader683.preheader:                          ; preds = %bb.cm
  %i.ud = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.ue = xor <16 x i8> %i.ud, splat (i8 -1)
  store <16 x i8> %i.ue, ptr %i.d, align 16, !tbaa !29
  %i.uf = load <16 x i8>, ptr %i.cm, align 16, !tbaa !29
  %i.ug = xor <16 x i8> %i.uf, splat (i8 -1)
  store <16 x i8> %i.ug, ptr %i.cm, align 16, !tbaa !29
  br label %.loopexit684

.loopexit684:                                     ; preds = %.preheader683.preheader, %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ih, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.ui = load ptr, ptr %i.e, align 8, !tbaa !27
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.loopexit684
  %.51388.i = phi ptr [ %i.uh, %.loopexit684 ], [ %i.ui, %bb.cn ] ; 2 uses
  %i.uj = ptrtoint ptr %.51388.i to i64
  %i.uk = ptrtoint ptr %.11367.i to i64
  %i.ul = sub i64 %i.uj, %i.uk                    ; 2 uses
  %i.um = trunc i64 %i.ul to i8
  %i.un = lshr i64 %i.ul, 8
  %i.uo = trunc i64 %i.un to i8
  %i.up = getelementptr inbounds nuw i8, ptr %.11367.i, i64 1
  store i8 %i.uo, ptr %i.up, align 1, !tbaa !29
  %i.uq = getelementptr inbounds nuw i8, ptr %.11367.i, i64 2
  store i8 %i.um, ptr %i.uq, align 1, !tbaa !29
  br label %.thread

bb.cp:                                            ; preds = %._crit_edge1176.thread, %bb.cg, %._crit_edge1176
  %spec.store.select33.i1818 = phi i32 [ %spec.store.select33.i1815, %._crit_edge1176.thread ], [ %spec.store.select33.i, %bb.cg ], [ %spec.store.select33.i, %._crit_edge1176 ] ; 2 uses
  %.01331.i.lcssa1817 = phi i32 [ 0, %._crit_edge1176.thread ], [ %.11332.i, %bb.cg ], [ %.11332.i, %._crit_edge1176 ]
  %.61816 = phi i64 [ %.31731, %._crit_edge1176.thread ], [ %.5, %bb.cg ], [ %.5, %._crit_edge1176 ]
  %i.ur = icmp eq i32 %.01331.i.lcssa1817, %i.fg
  %i.us = select i1 %i.ur, i8 110, i8 111
  %i.ut = getelementptr inbounds nuw i8, ptr %.31386.i, i64 1
  store i8 %i.us, ptr %.31386.i, align 1, !tbaa !29
  br i1 %i.bd, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.ff, label %.preheader681.preheader, label %.loopexit682

.preheader681.preheader:                          ; preds = %bb.cq
  %i.uu = load <16 x i8>, ptr %i.d, align 16, !tbaa !29
  %i.uv = xor <16 x i8> %i.uu, splat (i8 -1)
  store <16 x i8> %i.uv, ptr %i.d, align 16, !tbaa !29
  %i.uw = load <16 x i8>, ptr %i.cn, align 16, !tbaa !29
  %i.ux = xor <16 x i8> %i.uw, splat (i8 -1)
  store <16 x i8> %i.ux, ptr %i.cn, align 16, !tbaa !29
  br label %.loopexit682

.loopexit682:                                     ; preds = %.preheader681.preheader, %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ut, ptr noundef nonnull align 16 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit682, %bb.cp
  %i.uy = getelementptr inbounds nuw i8, ptr %.31386.i, i64 33
  br label %.thread

bb.cs:                                            ; preds = %._crit_edge1745
  store i32 1, ptr %i.bw, align 8, !tbaa !73
  br i1 %.not1635.i1148, label %.critedge.i, label %.lr.ph1152

.lr.ph1152:                                       ; preds = %bb.cs, %bb.cw
  %.7 = phi i64 [ %.8, %bb.cw ], [ %.31731, %bb.cs ] ; 3 uses
  %.01303.i1150 = phi ptr [ %i.vm, %bb.cw ], [ %.0113, %bb.cs ] ; 3 uses
  %.61389.i1149 = phi ptr [ %.71390.i, %bb.cw ], [ %.31386.i, %bb.cs ] ; 6 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.01303.i1150, i64 10
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !201
  %i.vb = load i16, ptr %i.bh, align 2, !tbaa !72
  %.not1636.i = icmp ult i16 %i.va, %i.vb
  br i1 %.not1636.i, label %.critedge.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph1152
  br i1 %i.bd, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.vc = add i64 %.7, 3
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.vd = getelementptr inbounds nuw i8, ptr %.61389.i1149, i64 1
  store i8 -90, ptr %.61389.i1149, align 1, !tbaa !29
  %i.ve = getelementptr inbounds nuw i8, ptr %.01303.i1150, i64 8 ; 2 uses
  %i.vf = load i16, ptr %i.ve, align 8, !tbaa !199
  %i.vg = lshr i16 %i.vf, 8
  %i.vh = trunc nuw i16 %i.vg to i8
  store i8 %i.vh, ptr %i.vd, align 1, !tbaa !29
  %i.vi = load i16, ptr %i.ve, align 8, !tbaa !199
  %i.vj = trunc i16 %i.vi to i8
  %i.vk = getelementptr inbounds nuw i8, ptr %.61389.i1149, i64 2
  store i8 %i.vj, ptr %i.vk, align 1, !tbaa !29
  %i.vl = getelementptr inbounds nuw i8, ptr %.61389.i1149, i64 3
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.8 = phi i64 [ %.7, %bb.cv ], [ %i.vc, %bb.cu ] ; 2 uses
  %.71390.i = phi ptr [ %i.vl, %bb.cv ], [ %.61389.i1149, %bb.cu ] ; 2 uses
  %i.vm = load ptr, ptr %.01303.i1150, align 8, !tbaa !200 ; 2 uses
  %.not1635.i = icmp eq ptr %i.vm, null
  br i1 %.not1635.i, label %.critedge.i, label %.lr.ph1152, !llvm.loop !178

.critedge.i:                                      ; preds = %bb.cw, %.lr.ph1152, %bb.cs
  %.9 = phi i64 [ %.31731, %bb.cs ], [ %.8, %bb.cw ], [ %.7, %.lr.ph1152 ]
  %.61389.i.lcssa = phi ptr [ %.31386.i, %bb.cs ], [ %.71390.i, %bb.cw ], [ %.61389.i1149, %.lr.ph1152 ] ; 2 uses
  %i.vn = load i16, ptr %i.bh, align 2, !tbaa !72
  %.not1637.i = icmp eq i16 %i.vn, 0
  %i.vo = select i1 %.not1637.i, i8 -92, i8 -91
  %i.vp = getelementptr inbounds nuw i8, ptr %.61389.i.lcssa, i64 1
  store i8 %i.vo, ptr %.61389.i.lcssa, align 1, !tbaa !29
  %spec.store.select44.i = call i32 @llvm.umin.i32(i32 %.01455.i, i32 -2)
  br label %.thread

bb.cx:                                            ; preds = %._crit_edge1745, %._crit_edge1745
  store i32 1, ptr %i.bv, align 4, !tbaa !74
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %._crit_edge1745, %._crit_edge1745
  %i.vq = add i32 %i.dt, 2144796672
end_hunk_2
