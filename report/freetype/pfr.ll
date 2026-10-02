Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pfr?download=true
inline.NumInlined: 33
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pfr_get_kerning:bb.a
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !120    ; 2 uses
  %.not20 = icmp eq i64 %i.f, 0
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %i.c to i64
  %i.h = zext i32 %i.e to i64
  %i.i = tail call i64 @FT_MulDiv(i64 noundef %i.f, i64 noundef %i.g, i64 noundef %i.h) #12
  store i64 %i.i, ptr %3, align 8, !tbaa !120
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !121  ; 2 uses
  %.not21 = icmp eq i64 %i.k, 0
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.b, align 8, !tbaa !59
  %i.m = zext i32 %i.l to i64
  %i.n = load i32, ptr %i.d, align 4, !tbaa !60
  %i.o = zext i32 %i.n to i64
  %i.p = tail call i64 @FT_MulDiv(i64 noundef %i.k, i64 noundef %i.m, i64 noundef %i.o) #12
  store i64 %i.p, ptr %i.j, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare hidden ptr @ft_service_list_lookup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @pfr_get_metrics(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !257  ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59
  store i32 %i.d, ptr %1, align 4, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.f = load i32, ptr %i.e, align 4, !tbaa !60
  store i32 %i.f, ptr %2, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !258
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !60
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i64 @FT_DivFix(i64 noundef %i.j, i64 noundef %i.m) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.p = load i16, ptr %i.o, align 2, !tbaa !115
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 6
  %i.s = load i32, ptr %i.k, align 4, !tbaa !60
  %i.t = zext i32 %i.s to i64
  %i.u = tail call i64 @FT_DivFix(i64 noundef %i.r, i64 noundef %i.t) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.019 = phi i64 [ %i.n, %bb.f ], [ 65536, %bb.e ]
  %.0 = phi i64 [ %i.u, %bb.f ], [ 65536, %bb.e ]
  %.not27 = icmp eq ptr %3, null
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.019, ptr %3, align 8, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not28 = icmp eq ptr %4, null
  br i1 %.not28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.0, ptr %4, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pfr_face_get_kerning(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %3) #3 {
bb.a:
  %i.a = add i32 %1, -1                           ; 2 uses
  %i.b = add i32 %2, -1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not = icmp ult i32 %i.a, %i.d
  %.not124 = icmp ult i32 %i.b, %i.d
  %or.cond = and i1 %.not, %.not124
  br i1 %or.cond, label %bb.b, label %.loopexit136

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = zext i32 %i.a to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !48
  %i.j = zext i32 %i.b to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !48
  %i.m = shl i32 %i.i, 16
  %i.n = and i32 %i.l, 65535
  %i.o = or disjoint i32 %i.n, %i.m               ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !261  ; 4 uses
  %.0111139 = load ptr, ptr %i.p, align 8, !tbaa !122 ; 2 uses
  %.not125140 = icmp eq ptr %.0111139, null
  br i1 %.not125140, label %.loopexit136, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.0111141 = phi ptr [ %.0111, %bb.d ], [ %.0111139, %bb.b ] ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0111141, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !123
  %.not126 = icmp ult i32 %i.o, %i.t
  br i1 %.not126, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.0111141, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !124
  %.not127 = icmp ugt i32 %i.o, %i.v
  br i1 %.not127, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0111 = load ptr, ptr %.0111141, align 8, !tbaa !122 ; 2 uses
  %.not125 = icmp eq ptr %.0111, null
  br i1 %.not125, label %.loopexit136, label %.lr.ph, !llvm.loop !259

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.0111141, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !125
  %i.y = tail call i32 @FT_Stream_Seek(ptr noundef %i.r, i64 noundef %i.x) #12 ; 2 uses
  %.not128 = icmp eq i32 %i.y, 0
  br i1 %.not128, label %bb.f, label %.loopexit136

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.0111141, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !126
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0111141, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !262
  %i.ae = mul i32 %i.ad, %i.ab
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.r, i64 noundef %i.af) #12 ; 2 uses
  %.not129 = icmp eq i32 %i.ag, 0
  br i1 %.not129, label %bb.g, label %.loopexit136

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.z, align 8, !tbaa !126
  %i.ai = zext i8 %i.ah to i32                    ; 3 uses
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !262 ; 5 uses
  %i.ak = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %i.ai, i1 true) ; 2 uses
  %i.al = lshr exact i32 -2147483648, %i.ak       ; 2 uses
  %i.am = xor i32 %i.ak, 31
  %i.an = shl i32 %i.aj, %i.am                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0111141, i64 9
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !127 ; 2 uses
  %i.as = and i8 %i.ar, 1                         ; 3 uses
  %i.at = lshr i8 %i.ar, 1
  %.lobit = and i8 %i.at, 1                       ; 2 uses
  %.not130 = icmp eq i32 %i.al, %i.ai
  br i1 %.not130, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = sub nsw i32 %i.ai, %i.al
  %i.av = mul i32 %i.au, %i.aj
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aw ; 6 uses
  %.not131 = icmp eq i8 %i.as, 0
  %4 = load i8, ptr %i.ax, align 1, !tbaa !53
  %5 = zext i8 %4 to i32                          ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !53
  %8 = zext i8 %7 to i32                          ; 2 uses
  br i1 %.not131, label %14, label %bb.i

bb.i:                                             ; preds = %bb.h
  %9 = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %10 = shl nuw i32 %5, 24
  %11 = shl nuw nsw i32 %8, 16
  %12 = or disjoint i32 %11, %10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !53
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %13 = or disjoint i32 %12, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !53
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %13, %i.be
  br label %bb.j

14:                                               ; preds = %bb.h
  %15 = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %16 = shl nuw nsw i32 %5, 16
  %17 = or disjoint i32 %16, %8
  br label %bb.j

bb.j:                                             ; preds = %14, %bb.i
  %.0104 = phi ptr [ %9, %bb.i ], [ %15, %14 ]    ; 2 uses
  %.0103 = phi i32 [ %i.bf, %bb.i ], [ %17, %14 ] ; 2 uses
  %i.bg = icmp eq i32 %.0103, %i.o
  br i1 %i.bg, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp ult i32 %.0103, %i.o
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not132 = icmp eq i8 %.lobit, 0
  %.1105.v = select i1 %.not132, i64 1, i64 2
  %.1105 = getelementptr inbounds nuw i8, ptr %.0104, i64 %.1105.v
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.g
  %.0107 = phi ptr [ %.1105, %bb.l ], [ %i.ap, %bb.k ], [ %i.ap, %bb.g ] ; 3 uses
  %i.bi = icmp ugt i32 %i.an, %i.aj
  br i1 %i.bi, label %.lr.ph144, label %._crit_edge.a

.lr.ph144:                                        ; preds = %bb.m
  %.not134 = icmp eq i8 %i.as, 0
  br i1 %.not134, label %.lr.ph144.split.us, label %.lr.ph144.split

.lr.ph144.split.us:                               ; preds = %.lr.ph144, %bb.n
  %.1108143.us = phi ptr [ %spec.select.us, %bb.n ], [ %.0107, %.lr.ph144 ] ; 2 uses
  %.0110142.us = phi i32 [ %i.bj, %bb.n ], [ %i.an, %.lr.ph144 ]
  %i.bj = lshr i32 %.0110142.us, 1                ; 3 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.1108143.us, i64 %i.bk ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !53
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !53
  %i.br = zext i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bo, %i.br            ; 2 uses
  %i.bt = icmp eq i32 %i.bs, %i.o
  br i1 %i.bt, label %.loopexit.split.us, label %bb.n

bb.n:                                             ; preds = %.lr.ph144.split.us
  %i.bu = icmp ult i32 %i.bs, %i.o
  %spec.select.us = select i1 %i.bu, ptr %i.bl, ptr %.1108143.us ; 2 uses
  %i.bv = icmp ugt i32 %i.bj, %i.aj
  br i1 %i.bv, label %.lr.ph144.split.us, label %._crit_edge.a, !llvm.loop !260

.loopexit.split.us:                               ; preds = %.lr.ph144.split.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  br label %.loopexit

.lr.ph144.split:                                  ; preds = %.lr.ph144, %bb.o
  %.1108143 = phi ptr [ %spec.select, %bb.o ], [ %.0107, %.lr.ph144 ] ; 2 uses
  %.0110142 = phi i32 [ %i.bx, %bb.o ], [ %i.an, %.lr.ph144 ]
  %i.bx = lshr i32 %.0110142, 1                   ; 3 uses
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.1108143, i64 %i.by ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.ca) ; 2 uses
  %i.cc = icmp eq i32 %i.cb, %i.o
  br i1 %i.cc, label %.loopexit.split, label %bb.o

bb.o:                                             ; preds = %.lr.ph144.split
  %i.cd = icmp ult i32 %i.cb, %i.o
  %spec.select = select i1 %i.cd, ptr %i.bz, ptr %.1108143 ; 2 uses
  %i.ce = icmp ugt i32 %i.bx, %i.aj
  br i1 %i.ce, label %.lr.ph144.split, label %._crit_edge.a, !llvm.loop !260

._crit_edge.a:                                    ; preds = %bb.o, %bb.n, %bb.m
  %.1108.lcssa = phi ptr [ %.0107, %bb.m ], [ %spec.select.us, %bb.n ], [ %spec.select, %bb.o ] ; 6 uses
  %.not133 = icmp eq i8 %i.as, 0
  %18 = load i8, ptr %.1108.lcssa, align 1, !tbaa !53
  %19 = zext i8 %18 to i32                        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1108.lcssa, i64 1
  %20 = load i8, ptr %i.cf, align 1, !tbaa !53
  %21 = zext i8 %20 to i32                        ; 2 uses
  br i1 %.not133, label %27, label %bb.p

bb.p:                                             ; preds = %._crit_edge.a
  %22 = getelementptr inbounds nuw i8, ptr %.1108.lcssa, i64 4
  %23 = shl nuw i32 %19, 24
  %24 = shl nuw nsw i32 %21, 16
  %25 = or disjoint i32 %24, %23
  %i.cg = getelementptr inbounds nuw i8, ptr %.1108.lcssa, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !53
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %26 = or disjoint i32 %25, %i.cj
  %i.ck = getelementptr inbounds nuw i8, ptr %.1108.lcssa, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !53
  %i.cm = zext i8 %i.cl to i32
  %i.cn = or disjoint i32 %26, %i.cm
  br label %bb.q

27:                                               ; preds = %._crit_edge.a
  %28 = getelementptr inbounds nuw i8, ptr %.1108.lcssa, i64 2
  %29 = shl nuw nsw i32 %19, 16
  %30 = or disjoint i32 %29, %21
  br label %bb.q

bb.q:                                             ; preds = %27, %bb.p
  %.3 = phi ptr [ %22, %bb.p ], [ %28, %27 ]
  %.2 = phi i32 [ %i.cn, %bb.p ], [ %30, %27 ]
  %i.co = icmp eq i32 %.2, %i.o
  br i1 %i.co, label %.loopexit, label %bb.u

.loopexit.split:                                  ; preds = %.lr.ph144.split
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %bb.q, %bb.j
  %.4 = phi ptr [ %.0104, %bb.j ], [ %.3, %bb.q ], [ %i.cp, %.loopexit.split ], [ %i.bw, %.loopexit.split.us ] ; 2 uses
  %.not135 = icmp eq i8 %.lobit, 0
  %i.cq = load i8, ptr %.4, align 1, !tbaa !53    ; 2 uses
  br i1 %.not135, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.cr = zext i8 %i.cq to i16
  %i.cs = shl nuw i16 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !53
  %i.cv = zext i8 %i.cu to i16
  %i.cw = or disjoint i16 %i.cs, %i.cv
  %i.cx = sext i16 %i.cw to i64
  br label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.cy = zext i8 %i.cq to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0102 = phi i64 [ %i.cx, %bb.r ], [ %i.cy, %bb.s ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0111141, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !128
  %i.db = sext i16 %i.da to i64
  %i.dc = add nsw i64 %.0102, %i.db
  store i64 %i.dc, ptr %3, align 8, !tbaa !120
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  tail call void @FT_Stream_ExitFrame(ptr noundef %i.r) #12
  br label %.loopexit136

.loopexit136:                                     ; preds = %bb.d, %bb.b, %bb.a, %bb.e, %bb.f, %bb.u
  %.2114 = phi i32 [ 0, %bb.a ], [ %i.ag, %bb.f ], [ 0, %bb.u ], [ %i.y, %bb.e ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.2114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 7) i32 @pfr_get_advance(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #6 {
bb.a:
  store i64 0, ptr %2, align 8, !tbaa !76
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %1, -1                           ; 2 uses
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64
  %i.d = icmp ult i32 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = zext i32 %i.a to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !66
  %i.k = sext i32 %i.j to i64
  store i64 %i.k, ptr %2, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.1 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ 0, %bb.d ], [ 6, %bb.c ]
  ret i32 %.1
}

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #5

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @FT_CMap_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_ReadFields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden zeroext i16 @FT_Stream_ReadUShort(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @FT_Stream_Skip(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden i64 @FT_Stream_ReadUOffset(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pfr_extra_items_parse(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.c = icmp ugt ptr %i.b, %1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !53    ; 2 uses
  %.not55 = icmp eq i8 %i.d, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.b
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %.not46 = icmp eq ptr %2, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  br i1 %.not46, label %.lr.ph58.split.us, label %.lr.ph58.split

.lr.ph58.split.us:                                ; preds = %.lr.ph58, %.thread.us
  %.03357.us = phi i32 [ %i.m, %.thread.us ], [ %i.e, %.lr.ph58 ]
  %.03456.us = phi ptr [ %i.k, %.thread.us ], [ %i.b, %.lr.ph58 ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.03456.us, i64 2 ; 3 uses
  %i.h = icmp ugt ptr %i.g, %1
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph58.split.us
  %i.i = load i8, ptr %.03456.us, align 1, !tbaa !53
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j ; 3 uses
  %i.l = icmp ugt ptr %i.k, %1
  br i1 %i.l, label %.loopexit, label %.thread.us

.thread.us:                                       ; preds = %bb.c
  %i.m = add nsw i32 %.03357.us, -1               ; 2 uses
  %.not.us = icmp eq i32 %i.m, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph58.split.us, !llvm.loop !0

.lr.ph58.split:                                   ; preds = %.lr.ph58, %.thread
  %.03357 = phi i32 [ %i.af, %.thread ], [ %i.e, %.lr.ph58 ]
  %.03456 = phi ptr [ %i.u, %.thread ], [ %i.b, %.lr.ph58 ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03456, i64 2 ; 5 uses
  %i.o = icmp ugt ptr %i.n, %1
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph58.split
  %i.p = getelementptr inbounds nuw i8, ptr %.03456, i64 1
  %i.q = load i8, ptr %.03456, align 1, !tbaa !53
  %i.r = load i8, ptr %i.p, align 1, !tbaa !53
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = zext i8 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t ; 4 uses
  %i.v = icmp ugt ptr %i.u, %1
  br i1 %i.v, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !265  ; 2 uses
  %.not4753 = icmp eq ptr %i.w, null
  br i1 %.not4753, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.x = load i32, ptr %2, align 8, !tbaa !266
  %i.y = icmp eq i32 %i.x, %i.s
  br i1 %i.y, label %.lr.ph._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0325498 = phi ptr [ %i.ab, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0325498, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !265 ; 2 uses
  %.not47 = icmp eq ptr %i.aa, null
  br i1 %.not47, label %.thread, label %.lr.ph, !llvm.loop !263

.lr.ph:                                           ; preds = %.lr.ph99
  %i.ab = getelementptr inbounds nuw i8, ptr %.0325498, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !266
  %i.ad = icmp eq i32 %i.ac, %i.s
  br i1 %i.ad, label %.lr.ph._crit_edge, label %.lr.ph99, !llvm.loop !263

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.aa, %.lr.ph ]
  %i.ae = tail call i32 %.lcssa(ptr noundef nonnull %i.n, ptr noundef nonnull %i.u, ptr noundef %3) #12 ; 2 uses
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %.thread, label %.loopexit

.thread:                                          ; preds = %.lr.ph99, %.preheader, %.lr.ph._crit_edge
  %i.af = add nsw i32 %.03357, -1                 ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.loopexit, label %.lr.ph58.split, !llvm.loop !0

.loopexit:                                        ; preds = %.thread, %.lr.ph58.split, %bb.d, %.lr.ph._crit_edge, %.thread.us, %.lr.ph58.split.us, %bb.c, %bb.b, %bb.a
  %.4 = phi i32 [ 8, %bb.a ], [ 0, %.thread.us ], [ 0, %bb.b ], [ 8, %.lr.ph58.split.us ], [ 8, %bb.c ], [ %i.ae, %.lr.ph._crit_edge ], [ 8, %bb.d ], [ 0, %.thread ], [ 8, %.lr.ph58.split ]
end_hunk_0
begin_hunk_1_@pfr_glyph_load_rec:bb.a
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !117
  %i.wa = zext i16 %i.vx to i64                   ; 2 uses
  %i.wb = getelementptr inbounds nuw [16 x i8], ptr %i.vz, i64 %i.wa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wb, ptr noundef nonnull readonly align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !130
  %i.wc = getelementptr inbounds nuw i8, ptr %.val27.i319.i, i64 112
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !134
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.wa
  store i8 1, ptr %i.we, align 1, !tbaa !53
  %i.wf = load i16, ptr %i.vw, align 2, !tbaa !116
  %i.wg = add i16 %i.wf, 1
  store i16 %i.wg, ptr %i.vw, align 2, !tbaa !116
  br label %pfr_glyph_line_to.exit.i

bb.eu:                                            ; preds = %._crit_edge216.i
  %.val157.i = load ptr, ptr %i.hr, align 8, !tbaa !101
  %.val158.i = load i8, ptr %i.kw, align 8, !tbaa !129
  %i.wh = call fastcc i32 @pfr_glyph_curve_to(ptr %.val157.i, i8 %.val158.i, ptr noundef %5, ptr noundef %i.la, ptr noundef %i.lb)
  br label %pfr_glyph_line_to.exit.i

pfr_glyph_line_to.exit.i.thread:                  ; preds = %._crit_edge216.thread.i, %bb.eh, %bb.es, %bb.et, %.thread.i162.i
  %.sink328.i.ph = phi i32 [ 8, %.thread.i162.i ], [ %i.vv, %bb.et ], [ %i.vs, %bb.es ], [ %i.te, %bb.eh ], [ 8, %._crit_edge216.thread.i ] ; 2 uses
  store i32 %.sink328.i.ph, ptr %i.a, align 4, !tbaa !50
  br label %pfr_extra_items_skip.exit.thread.sink.split.i

pfr_glyph_line_to.exit.i:                         ; preds = %bb.eu, %.thread.i.i.i, %.thread.i.i
  %.sink328.i = phi i32 [ %i.wh, %bb.eu ], [ 0, %.thread.i.i ], [ 0, %.thread.i.i.i ] ; 3 uses
  %.7.lcssa313.i = phi ptr [ %.7.lcssa.i, %bb.eu ], [ %.7.lcssa314.i, %.thread.i.i ], [ %.7.lcssa.i, %.thread.i.i.i ]
  store i32 %.sink328.i, ptr %i.a, align 4, !tbaa !50
  %.not152.i = icmp eq i32 %.sink328.i, 0
  br i1 %.not152.i, label %bb.bt, label %pfr_extra_items_skip.exit.thread.sink.split.i

pfr_extra_items_skip.exit.thread.sink.split.i:    ; preds = %pfr_glyph_line_to.exit.i, %bb.cq, %bb.cn, %bb.cm, %bb.ck, %bb.ci, %bb.ce, %bb.cd, %bb.cb, %.lr.ph215.preheader.thread.i, %bb.bx, %bb.bv, %bb.bt, %bb.ct, %bb.cv, %bb.cx, %bb.cy, %bb.dc, %bb.de, %bb.dg, %bb.dh, %bb.ee, %bb.ed, %bb.ec, %.lr.ph215.i, %bb.dl, %bb.dn, %bb.dp, %bb.dq, %bb.du, %bb.dw, %bb.dy, %bb.dz, %pfr_glyph_line_to.exit.i.thread, %._crit_edge216.thread315.i
  %.ph329.i = phi i32 [ %.sink328.i.ph, %pfr_glyph_line_to.exit.i.thread ], [ %.pre231.pre.i, %._crit_edge216.thread315.i ], [ 8, %bb.ee ], [ 8, %bb.dz ], [ 8, %bb.dy ], [ 8, %bb.dw ], [ 8, %bb.du ], [ 8, %bb.dq ], [ 8, %bb.dp ], [ 8, %bb.dn ], [ 8, %bb.dl ], [ 8, %.lr.ph215.i ], [ 8, %bb.ec ], [ 8, %bb.ed ], [ 8, %bb.ci ], [ 8, %bb.ce ], [ 8, %bb.cd ], [ 8, %bb.cb ], [ 8, %.lr.ph215.preheader.thread.i ], [ 8, %bb.bt ], [ 8, %bb.bx ], [ 8, %bb.bv ], [ 8, %bb.cq ], [ 8, %bb.cn ], [ 8, %bb.cm ], [ 8, %bb.ck ], [ 8, %bb.ct ], [ 8, %bb.cv ], [ 8, %bb.cx ], [ 8, %bb.cy ], [ 8, %bb.dc ], [ 8, %bb.de ], [ 8, %bb.dg ], [ 8, %bb.dh ], [ %.sink328.i, %pfr_glyph_line_to.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %pfr_glyph_load_simple.exit

pfr_glyph_load_simple.exit:                       ; preds = %bb.bh, %bb.bk, %bb.bm, %.lr.ph58.split.us.i.i.i100, %bb.br, %.thread, %bb.au, %bb.aw, %bb.az, %bb.bc, %bb.bf, %bb.bp, %pfr_extra_items_skip.exit.thread.sink.split.i
  %i.wi = phi i32 [ 8, %bb.bp ], [ %i.iz, %bb.bf ], [ 8, %bb.aw ], [ 8, %bb.az ], [ %.ph329.i, %pfr_extra_items_skip.exit.thread.sink.split.i ], [ 8, %.thread ], [ 8, %bb.au ], [ 8, %bb.bc ], [ 8, %.lr.ph58.split.us.i.i.i100 ], [ 8, %bb.br ], [ 8, %bb.bm ], [ 8, %bb.bk ], [ 8, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit118.sink.split

.loopexit118.sink.split:                          ; preds = %pfr_glyph_load_simple.exit, %pfr_glyph_load_compound.exit.thread
  %.3.ph = phi i32 [ %.ph, %pfr_glyph_load_compound.exit.thread ], [ %i.wi, %pfr_glyph_load_simple.exit ]
  call void @FT_Stream_ExitFrame(ptr noundef %1) #12
  br label %.loopexit118

.loopexit118:                                     ; preds = %.loopexit, %bb.ao, %.loopexit118.sink.split, %.loopexit119, %bb.b, %bb.a
  %.3 = phi i32 [ %i.d, %bb.a ], [ %i.e, %bb.b ], [ 0, %.loopexit119 ], [ %.3.ph, %.loopexit118.sink.split ], [ 0, %.loopexit ], [ %i.fj, %bb.ao ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pfr_glyph_end(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !129
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %pfr_glyph_close_contour.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 98 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !116  ; 2 uses
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 5 uses
  %i.j = load i16, ptr %i.c, align 8, !tbaa !135  ; 4 uses
  %.not28.i = icmp eq i16 %i.j, 0
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.n = getelementptr [2 x i8], ptr %i.m, i64 %i.k
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !114
  %i.q = zext i16 %i.p to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ]   ; 3 uses
  %i.r = icmp sgt i32 %i.i, %.0.i
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !117  ; 2 uses
  %i.u = zext nneg i32 %.0.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = zext nneg i32 %i.i to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.v, align 8, !tbaa !120
  %i.z = load i64, ptr %i.x, align 8, !tbaa !120
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !121
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = add i16 %i.g, -1
  store i16 %i.ag, ptr %i.f, align 2, !tbaa !116
  %i.ah = add nsw i32 %i.h, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.1.i = phi i32 [ %i.i, %bb.d ], [ %i.ah, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %.not29.i = icmp slt i32 %.1.i, %.0.i
  br i1 %.not29.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = trunc nuw i32 %.1.i to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !136
  %i.al = add i16 %i.j, 1
  store i16 %i.al, ptr %i.c, align 8, !tbaa !135
  %i.am = zext i16 %i.j to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.am
  store i16 %i.ai, ptr %i.an, align 2, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 0, ptr %i.d, align 8, !tbaa !129
  br label %pfr_glyph_close_contour.exit

pfr_glyph_close_contour.exit:                     ; preds = %bb.a, %bb.j
  tail call void @FT_GlyphLoader_Add(ptr noundef %i.b) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pfr_glyph_curve_to(ptr %.40.val, i8 %.48.val, ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i8 %.48.val, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.40.val, i64 26
  %i.b = load i16, ptr %i.a, align 2, !tbaa !131
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %.40.val, i64 98 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !132  ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = add nuw nsw i32 %i.c, 3
  %i.h = add nuw nsw i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %.40.val, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !133
  %.not23 = icmp ugt i32 %i.h, %i.j
  br i1 %.not23, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @FT_GlyphLoader_CheckPoints(ptr noundef nonnull %.40.val, i32 noundef 3, i32 noundef 0) #12 ; 2 uses
  %.not24 = icmp eq i32 %i.k, 0
  br i1 %.not24, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i16, ptr %i.d, align 2, !tbaa !116
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.l = phi i16 [ %.pre, %..thread_crit_edge ], [ %i.e, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.40.val, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.o = zext i16 %i.l to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.40.val, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !130
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !130
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !130
  store i8 2, ptr %i.s, align 1, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 2, ptr %i.v, align 1, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 1, ptr %i.w, align 1, !tbaa !53
  %i.x = load i16, ptr %i.d, align 2, !tbaa !116
  %i.y = add i16 %i.x, 3
  store i16 %i.y, ptr %i.d, align 2, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %.thread
  %.0 = phi i32 [ %i.k, %bb.c ], [ 0, %.thread ], [ 8, %bb.a ]
  ret i32 %.0
}

declare hidden void @FT_GlyphLoader_Add(ptr noundef) local_unnamed_addr #5

declare hidden i32 @FT_GlyphLoader_CheckPoints(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !49}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS11FT_FaceRec_", !9, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"FT_CharMapRec_", !10, i64 0, !6, i64 8, !11, i64 12, !11, i64 14}
!13 = !{!"p1 _ZTS17FT_CMap_ClassRec_", !9, i64 0}
!14 = !{!"FT_CMapRec_", !12, i64 0, !13, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"p1 _ZTS15FT_Bitmap_Size_", !9, i64 0}
!18 = !{!"any p2 pointer", !9, i64 0}
!19 = !{!"p2 _ZTS14FT_CharMapRec_", !18, i64 0}
!20 = !{!"FT_Generic_", !9, i64 0, !9, i64 8}
!21 = !{!"FT_BBox_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!22 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !9, i64 0}
!23 = !{!"p1 _ZTS11FT_SizeRec_", !9, i64 0}
!24 = !{!"p1 _ZTS14FT_CharMapRec_", !9, i64 0}
!25 = !{!"p1 _ZTS13FT_DriverRec_", !9, i64 0}
!26 = !{!"p1 _ZTS13FT_MemoryRec_", !9, i64 0}
!27 = !{!"p1 _ZTS13FT_StreamRec_", !9, i64 0}
!28 = !{!"p1 _ZTS15FT_ListNodeRec_", !9, i64 0}
!29 = !{!"FT_ListRec_", !28, i64 0, !28, i64 8}
!30 = !{!"p1 _ZTS20FT_Face_InternalRec_", !9, i64 0}
!31 = !{!"FT_FaceRec_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !16, i64 40, !16, i64 48, !6, i64 56, !17, i64 64, !6, i64 72, !19, i64 80, !20, i64 88, !21, i64 104, !11, i64 136, !11, i64 138, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !22, i64 152, !23, i64 160, !24, i64 168, !25, i64 176, !26, i64 184, !27, i64 192, !29, i64 200, !20, i64 216, !9, i64 232, !30, i64 240}
!32 = !{!"PFR_HeaderRec_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104}
!33 = !{!"PFR_LogFontRec_", !6, i64 0, !6, i64 4, !5, i64 8, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!34 = !{!"p1 int", !9, i64 0}
!35 = !{!"PFR_DimensionRec_", !6, i64 0, !6, i64 4, !34, i64 8}
!36 = !{!"p1 _ZTS14PFR_StrikeRec_", !9, i64 0}
!37 = !{!"p1 _ZTS12PFR_CharRec_", !9, i64 0}
!38 = !{!"p1 _ZTS16PFR_KernItemRec_", !9, i64 0}
!39 = !{!"p2 _ZTS16PFR_KernItemRec_", !18, i64 0}
!40 = !{!"PFR_PhyFontRec_", !26, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !21, i64 24, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !35, i64 80, !35, i64 96, !16, i64 112, !16, i64 120, !16, i64 128, !6, i64 136, !6, i64 140, !36, i64 144, !6, i64 152, !34, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !15, i64 184, !37, i64 192, !6, i64 200, !38, i64 208, !39, i64 216, !15, i64 224, !16, i64 232}
!41 = !{!"PFR_FaceRec_", !31, i64 0, !32, i64 248, !33, i64 356, !40, i64 408}
!42 = !{!41, !6, i64 584}
!43 = !{!"PFR_CMapRec_", !14, i64 0, !6, i64 24, !37, i64 32}
!44 = !{!43, !6, i64 24}
!45 = !{!41, !37, i64 600}
!46 = !{!43, !37, i64 32}
!47 = !{!"PFR_CharRec_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!48 = !{!47, !6, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!6, !6, i64 0}
!51 = !{!"FT_StreamRec_", !16, i64 0, !15, i64 8, !15, i64 16, !5, i64 24, !5, i64 32, !9, i64 40, !9, i64 48, !26, i64 56, !16, i64 64, !16, i64 72}
!52 = !{!51, !16, i64 64}
!53 = !{!5, !5, i64 0}
!54 = !{!40, !26, i64 0}
!55 = !{!40, !6, i64 8}
!56 = !{!40, !38, i64 208}
!57 = !{!40, !39, i64 216}
!58 = !{!40, !16, i64 232}
!59 = !{!40, !6, i64 16}
!60 = !{!40, !6, i64 20}
!61 = !{!16, !16, i64 0}
!62 = !{!40, !6, i64 152}
!63 = !{!40, !34, i64 160}
!64 = !{!40, !6, i64 176}
!65 = !{!40, !37, i64 192}
!66 = !{!47, !6, i64 4}
!67 = !{!47, !6, i64 8}
!68 = !{!47, !6, i64 12}
!69 = !{!40, !15, i64 224}
!70 = !{!40, !6, i64 136}
!71 = !{!40, !6, i64 200}
!72 = !{!40, !16, i64 120}
!73 = !{!40, !16, i64 112}
!74 = !{!40, !16, i64 128}
!75 = !{!31, !17, i64 64}
!76 = !{!15, !15, i64 0}
!77 = !{!31, !26, i64 184}
!78 = !{!40, !36, i64 144}
!79 = !{!"p1 _ZTS18PFR_BitmapCharRec_", !9, i64 0}
!80 = !{!"PFR_StrikeRec_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !79, i64 32}
!81 = !{!80, !6, i64 4}
!82 = !{!80, !6, i64 0}
!83 = !{!40, !34, i64 104}
!84 = !{!40, !34, i64 88}
!85 = !{!"PFR_KernItemRec_", !38, i64 0, !5, i64 8, !5, i64 9, !11, i64 10, !6, i64 12, !15, i64 16, !6, i64 24, !6, i64 28}
!86 = !{!85, !38, i64 0}
!87 = !{!"p1 _ZTS14FT_LibraryRec_", !9, i64 0}
!88 = !{!"FT_Glyph_Metrics_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56}
!89 = !{!"FT_Vector_", !15, i64 0, !15, i64 8}
!90 = !{!"FT_Bitmap_", !6, i64 0, !6, i64 4, !6, i64 8, !16, i64 16, !11, i64 24, !5, i64 26, !5, i64 27, !9, i64 32}
!91 = !{!"p1 _ZTS10FT_Vector_", !9, i64 0}
!92 = !{!"p1 short", !9, i64 0}
!93 = !{!"FT_Outline_", !11, i64 0, !11, i64 2, !91, i64 8, !16, i64 16, !92, i64 24, !6, i64 32}
!94 = !{!"p1 _ZTS15FT_SubGlyphRec_", !9, i64 0}
!95 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !9, i64 0}
!96 = !{!"FT_GlyphSlotRec_", !87, i64 0, !10, i64 8, !22, i64 16, !6, i64 24, !20, i64 32, !88, i64 48, !15, i64 112, !15, i64 120, !89, i64 128, !6, i64 144, !90, i64 152, !6, i64 192, !6, i64 196, !93, i64 200, !6, i64 240, !94, i64 248, !9, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !9, i64 288, !95, i64 296}
!97 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !9, i64 0}
!98 = !{!"p1 long", !9, i64 0}
!99 = !{!"p1 _ZTS16PFR_SubGlyphRec_", !9, i64 0}
!100 = !{!"PFR_GlyphRec_", !5, i64 0, !6, i64 4, !98, i64 8, !98, i64 16, !6, i64 24, !6, i64 28, !99, i64 32, !97, i64 40, !5, i64 48}
!101 = !{!100, !97, i64 40}
!102 = !{!"FT_GlyphLoadRec_", !93, i64 0, !91, i64 40, !91, i64 48, !6, i64 56, !94, i64 64}
!103 = !{!"FT_GlyphLoaderRec_", !26, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !102, i64 24, !102, i64 96, !9, i64 168}
!104 = !{!103, !26, i64 0}
!105 = !{!100, !98, i64 8}
!106 = !{!100, !99, i64 32}
!107 = !{!"FT_Size_Metrics_", !11, i64 0, !11, i64 2, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!108 = !{!"p1 _ZTS20FT_Size_InternalRec_", !9, i64 0}
!109 = !{!"FT_SizeRec_", !10, i64 0, !20, i64 8, !107, i64 24, !108, i64 80}
!110 = !{!80, !6, i64 8}
!111 = !{!80, !6, i64 24}
!112 = !{!80, !6, i64 28}
!113 = !{!100, !6, i64 24}
!114 = !{!11, !11, i64 0}
!115 = !{!109, !11, i64 26}
!116 = !{!93, !11, i64 2}
!117 = !{!93, !91, i64 8}
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = !{!"llvm.loop.unroll.runtime.disable"}
!120 = !{!89, !15, i64 0}
!121 = !{!89, !15, i64 8}
!122 = !{!38, !38, i64 0}
!123 = !{!85, !6, i64 24}
!124 = !{!85, !6, i64 28}
!125 = !{!85, !15, i64 16}
!126 = !{!85, !5, i64 8}
!127 = !{!85, !5, i64 9}
!128 = !{!85, !11, i64 10}
!129 = !{!100, !5, i64 48}
!130 = !{i64 0, i64 8, !76, i64 8, i64 8, !76}
!131 = !{!103, !11, i64 26}
!132 = !{!103, !11, i64 98}
!133 = !{!103, !6, i64 8}
!134 = !{!93, !16, i64 16}
!135 = !{!93, !11, i64 0}
!136 = !{!93, !92, i64 24}
!137 = distinct !{!137, !49}
!138 = !{!14, !10, i64 0}
!139 = distinct !{!139, !49}
!140 = distinct !{!140, !49}
!141 = distinct !{!141, !49}
!142 = distinct !{!142, !49}
!143 = distinct !{!143, !49}
!144 = distinct !{!144, !49}
!145 = distinct !{!145, !49}
!146 = distinct !{!146, !199}
!147 = !{!32, !6, i64 72}
!148 = !{!32, !6, i64 36}
!149 = !{!32, !6, i64 0}
!150 = !{!32, !6, i64 4}
!151 = !{!32, !6, i64 12}
!152 = !{!32, !6, i64 8}
!153 = !{!41, !6, i64 268}
!154 = !{!51, !15, i64 8}
!155 = !{!31, !15, i64 0}
!156 = !{!41, !6, i64 320}
!157 = !{!33, !6, i64 0}
!158 = !{!33, !6, i64 4}
!159 = !{!33, !6, i64 28}
!160 = !{!33, !6, i64 36}
!161 = !{!33, !6, i64 32}
!162 = !{!33, !6, i64 40}
!163 = !{!33, !6, i64 44}
!164 = !{!41, !6, i64 400}
!165 = !{!41, !6, i64 396}
!166 = !{!51, !26, i64 56}
!167 = !{!40, !6, i64 12}
!168 = !{!40, !15, i64 24}
!169 = !{!40, !15, i64 32}
!170 = !{!40, !15, i64 40}
!171 = !{!40, !15, i64 48}
!172 = !{!40, !6, i64 56}
!173 = !{!40, !6, i64 60}
!174 = !{!40, !6, i64 64}
!175 = !{!40, !6, i64 68}
!176 = !{!40, !6, i64 72}
!177 = !{!40, !6, i64 168}
!178 = !{!40, !6, i64 172}
!179 = !{!40, !6, i64 96}
!180 = !{!40, !6, i64 80}
!181 = !{!40, !15, i64 184}
end_hunk_1
