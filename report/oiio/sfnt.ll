Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/sfnt?download=true
inline.NumInlined: 86
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@tt_face_get_colorline_stops:bb.a
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !26
  %i.bb = zext i8 %i.ba to i16
  %i.bc = or disjoint i16 %i.ay, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !560
  br i1 %.not54, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.bf = load i32, ptr %i.au, align 1            ; 2 uses
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf) ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = icmp eq i32 %i.bf, -1
  br i1 %i.bi, label %get_deltas_for_var_index_base.exit, label %.preheader37.i

.preheader37.i:                                   ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !129
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 112 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !305 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader37.i
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !306 ; 2 uses
  %.not36.i = icmp ugt i64 %i.br, %i.bh
  %i.bs = add nsw i64 %i.br, -1
  %spec.select.i = select i1 %.not36.i, i64 %i.bh, i64 %i.bs ; 2 uses
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !307
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %spec.select.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !16
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %spec.select.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %.preheader37.i, %bb.h
  %.031.i = phi i32 [ %i.bv, %bb.h ], [ 0, %.preheader37.i ]
  %.030.i = phi i32 [ %i.bx, %bb.h ], [ %i.bg, %.preheader37.i ]
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !308
  %i.bz = tail call i32 %i.by(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i32 noundef %.031.i, i32 noundef %.030.i) #26, !inline_history !551
  %i.ca = add nuw nsw i64 %i.bh, 1                ; 3 uses
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !305 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.cb, null
  br i1 %.not.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = load i64, ptr %i.bo, align 8, !tbaa !306 ; 2 uses
  %.not36.i.1 = icmp ult i64 %i.ca, %i.cc
  %i.cd = add nsw i64 %i.cc, -1
  %spec.select.i.1 = select i1 %.not36.i.1, i64 %i.ca, i64 %i.cd ; 2 uses
  %i.ce = load ptr, ptr %i.bp, align 8, !tbaa !307
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %spec.select.i.1
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !16
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %spec.select.i.1
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !16
  br label %get_deltas_for_var_index_base.exit.loopexit

bb.k:                                             ; preds = %bb.i
  %i.cj = trunc nuw i64 %i.ca to i32
  br label %get_deltas_for_var_index_base.exit.loopexit

get_deltas_for_var_index_base.exit.loopexit:      ; preds = %bb.k, %bb.j
  %.031.i.1 = phi i32 [ %i.cg, %bb.j ], [ 0, %bb.k ]
  %.030.i.1 = phi i32 [ %i.ci, %bb.j ], [ %i.cj, %bb.k ]
  %i.ck = load ptr, ptr %i.bm, align 8, !tbaa !308
  %i.cl = tail call i32 %i.ck(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i32 noundef %.031.i.1, i32 noundef %.030.i.1) #26, !inline_history !551
  %.pre = load i64, ptr %1, align 8, !tbaa !558
  %.pre56 = load i16, ptr %i.bd, align 2, !tbaa !560
  %.pre57.pre = load i32, ptr %i.g, align 4, !tbaa !552
  %i.cm = sext i32 %i.bz to i64
  %i.cn = shl nsw i64 %i.cm, 2
  %i.co = trunc i32 %i.cl to i16
  br label %get_deltas_for_var_index_base.exit

get_deltas_for_var_index_base.exit:               ; preds = %bb.g, %get_deltas_for_var_index_base.exit.loopexit
  %.pre57 = phi i32 [ %.pre57.pre, %get_deltas_for_var_index_base.exit.loopexit ], [ %i.h, %bb.g ]
  %i.cp = phi i16 [ %.pre56, %get_deltas_for_var_index_base.exit.loopexit ], [ %i.bc, %bb.g ]
  %i.cq = phi i64 [ %.pre, %get_deltas_for_var_index_base.exit.loopexit ], [ %i.ak, %bb.g ]
  %.sroa.5.0 = phi i16 [ %i.co, %get_deltas_for_var_index_base.exit.loopexit ], [ 0, %bb.g ]
  %.sroa.0.0 = phi i64 [ %i.cn, %get_deltas_for_var_index_base.exit.loopexit ], [ 0, %bb.g ]
  %i.cr = add nsw i64 %.sroa.0.0, %i.cq
  store i64 %i.cr, ptr %1, align 8, !tbaa !558
  %i.cs = add i16 %i.cp, %.sroa.5.0
  store i16 %i.cs, ptr %i.bd, align 2, !tbaa !560
  br label %bb.l

bb.l:                                             ; preds = %get_deltas_for_var_index_base.exit, %bb.f
  %i.ct = phi i32 [ %.pre57, %get_deltas_for_var_index_base.exit ], [ %i.h, %bb.f ]
  %.048 = phi ptr [ %i.be, %get_deltas_for_var_index_base.exit ], [ %i.au, %bb.f ]
  store ptr %.048, ptr %i.l, align 8, !tbaa !555
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.g, align 4, !tbaa !552
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a, %bb.b, %bb.l
  %.1 = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.l ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i8 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @tt_face_get_paint(ptr noundef %0, ptr %1, i8 %2, ptr nofree noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 17 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca [6 x i32], align 16               ; 42 uses
  %4 = alloca %struct.FT_Matrix_, align 8         ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.ed, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !279
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %bb.ed, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 24 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !288  ; 2 uses
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %bb.ed, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not29 = icmp eq i8 %2, 0
  br i1 %.not29, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 12, ptr %3, align 8, !tbaa !562
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !258
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !239  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !301
  %i.o = add nsw i64 %i.n, 32
  %i.p = ashr i64 %i.o, 6                         ; 2 uses
  store i64 %i.p, ptr %4, align 8, !tbaa !563
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = load i64, ptr %i.r, align 8, !tbaa !302
  %i.t = add nsw i64 %i.s, 32
  %i.u = ashr i64 %i.t, 6                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !564
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !145  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !303
  %i.aa = and i32 %i.z, 1
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @FT_Matrix_Multiply(ptr noundef nonnull %i.x, ptr noundef nonnull %4) #26
  %.pre = load i64, ptr %4, align 8, !tbaa !563
  %.pre32 = load i64, ptr %i.q, align 8, !tbaa !565
  %.pre33 = load i64, ptr %i.ab, align 8, !tbaa !566
  %.pre34 = load i64, ptr %i.v, align 8, !tbaa !564
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi i64 [ %.pre34, %bb.f ], [ %i.u, %bb.e ]
  %i.ad = phi i64 [ %.pre33, %bb.f ], [ 0, %bb.e ]
  %i.ae = phi i64 [ %.pre32, %bb.f ], [ 0, %bb.e ]
  %i.af = phi i64 [ %.pre, %bb.f ], [ %i.p, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.ac, ptr %i.aj, align 8, !tbaa !26
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !145 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !303
  %i.an = and i32 %i.am, 2
  %.not31 = icmp eq i32 %i.an, 0
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !567
  %i.aq = shl nsw i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !26
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !145
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !568
  %i.av = shl nsw i64 %i.au, 10
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.aw, align 8, !tbaa !26
  br label %.sink.split

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %read_paint.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 24 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !282
  %i.az = icmp ult ptr %1, %i.ay
  br i1 %i.az, label %read_paint.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 24 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !289
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -2 ; 2 uses
  %i.be = icmp ugt ptr %1, %i.bd
  br i1 %i.be, label %read_paint.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 6 uses
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !258
  %i.bg = load i8, ptr %1, align 1, !tbaa !26     ; 4 uses
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %3, align 8, !tbaa !562
  %i.bi = icmp ugt i8 %i.bg, 32
  br i1 %i.bi, label %read_paint.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i8 %i.bg, label %bb.z [
    i8 1, label %bb.o
    i8 2, label %bb.r
    i8 3, label %bb.r
    i8 11, label %bb.x
  ]

bb.o:                                             ; preds = %bb.n
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !26  ; 2 uses
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !280 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bk
  br i1 %i.bn, label %read_paint.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp) ; 2 uses
  %i.br = zext i8 %i.bj to i32                    ; 2 uses
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp ult i64 %i.bm, %i.bt
  br i1 %i.bu, label %read_paint.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.br, ptr %i.bv, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !281
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = shl i32 %i.bq, 2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !26
  br label %read_paint.exit

bb.r:                                             ; preds = %bb.n, %bb.n
  %i.ce = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.cf = icmp ugt ptr %i.bf, %i.ce
  br i1 %i.cf, label %read_paint.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ch = load i8, ptr %i.bf, align 1, !tbaa !26
  %i.ci = zext i8 %i.ch to i16
  %i.cj = shl nuw i16 %i.ci, 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !26
  %i.cm = zext i8 %i.cl to i16
  %i.cn = or disjoint i16 %i.cj, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %i.cn, ptr %i.co, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %i.cq = load i8, ptr %i.cg, align 1, !tbaa !26
  %i.cr = zext i8 %i.cq to i16
  %i.cs = shl nuw i16 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !26
  %i.cv = zext i8 %i.cu to i16
  %i.cw = or disjoint i16 %i.cs, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !26
  %i.cy = icmp eq i8 %i.bg, 3
  br i1 %i.cy, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %i.ax, align 8, !tbaa !282
  %i.da = icmp ult ptr %i.cp, %i.cz
  br i1 %i.da, label %read_paint.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !288
  %i.dc = load i64, ptr %i.ba, align 8, !tbaa !289
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %i.df = icmp ugt ptr %i.cp, %i.de
  br i1 %i.df, label %read_paint.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = load i32, ptr %i.cp, align 1
  %i.dh = tail call i32 @llvm.bswap.i32(i32 %i.dg)
  %i.di = zext i32 %i.dh to i64
  call fastcc void @get_deltas_for_var_index_base(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %i.di, i32 noundef 1, ptr noundef %i.c)
  %i.dj = load i32, ptr %i.c, align 16, !tbaa !16
  %i.dk = load i16, ptr %i.cx, align 2, !tbaa !26
  %i.dl = trunc i32 %i.dj to i16
  %i.dm = add i16 %i.dk, %i.dl
  store i16 %i.dm, ptr %i.cx, align 2, !tbaa !26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  store i32 2, ptr %3, align 8, !tbaa !562
  br label %read_paint.exit

bb.x:                                             ; preds = %bb.n
  %i.dn = icmp ugt ptr %i.bf, %i.bd
  br i1 %i.dn, label %read_paint.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = load i8, ptr %i.bf, align 1, !tbaa !26
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !26
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !26
  br label %read_paint.exit

bb.z:                                             ; preds = %bb.n
  %i.dw = call fastcc zeroext i8 @get_child_table_pointer(ptr noundef nonnull %i.e, ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef %i.b)
  %.not383.i = icmp eq i8 %i.dw, 0
  br i1 %.not383.i, label %read_paint.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = load i32, ptr %3, align 8, !tbaa !562   ; 22 uses
  %i.dy = icmp eq i32 %i.dx, 4                    ; 2 uses
  br i1 %i.dy, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = icmp eq i32 %i.dx, 5
  br i1 %i.dz, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0338.i = phi i8 [ 0, %bb.aa ], [ 1, %bb.ab ]
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !258
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ec = tail call fastcc zeroext i8 @read_color_line(ptr noundef nonnull %i.e, ptr noundef %i.ea, ptr noundef nonnull %i.eb, i8 noundef zeroext %.0338.i)
  %.not391.i = icmp eq i8 %i.ec, 0
  br i1 %.not391.i, label %read_paint.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !258 ; 15 uses
  %i.ee = load ptr, ptr %i.ax, align 8, !tbaa !282
  %i.ef = icmp ult ptr %i.ed, %i.ee
  br i1 %i.ef, label %read_paint.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !288
  %i.eh = load i64, ptr %i.ba, align 8, !tbaa !289
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -12
  %i.ek = icmp ugt ptr %i.ed, %i.ej
  br i1 %i.ek, label %read_paint.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.em = load i8, ptr %i.ed, align 1, !tbaa !26
  %i.en = zext i8 %i.em to i16
  %i.eo = shl nuw i16 %i.en, 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !26
  %i.er = zext i8 %i.eq to i16
  %i.es = or disjoint i16 %i.eo, %i.er
  %i.et = sext i16 %i.es to i64
  %i.eu = shl nsw i64 %i.et, 16
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !26
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ex = load i8, ptr %i.el, align 1, !tbaa !26
  %i.ey = zext i8 %i.ex to i16
end_hunk_0
begin_hunk_1_@tt_face_get_paint:bb.a
  %i.ahh = load i8, ptr %i.agy, align 1, !tbaa !26
  %i.ahi = zext i8 %i.ahh to i16
  %i.ahj = shl nuw i16 %i.ahi, 8
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agy, i64 1
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !26
  %i.ahm = zext i8 %i.ahl to i16
  %i.ahn = or disjoint i16 %i.ahj, %i.ahm
  %i.aho = sext i16 %i.ahn to i64
  %i.ahp = shl nsw i64 %i.aho, 2
  %i.ahq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store i64 %i.ahp, ptr %i.ahq, align 8, !tbaa !26
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agy, i64 4 ; 4 uses
  %i.ahs = load i8, ptr %i.ahg, align 1, !tbaa !26
  %i.aht = zext i8 %i.ahs to i16
  %i.ahu = shl nuw i16 %i.aht, 8
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agy, i64 3
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !26
  %i.ahx = zext i8 %i.ahw to i16
  %i.ahy = or disjoint i16 %i.ahu, %i.ahx
  %i.ahz = sext i16 %i.ahy to i64
  %i.aia = shl nsw i64 %i.ahz, 2
  %i.aib = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.aia, ptr %i.aib, align 8, !tbaa !26
  %i.aic = and i32 %i.dx, -2
  %switch396.i = icmp eq i32 %i.aic, 30
  br i1 %switch396.i, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.aid = load ptr, ptr %i.ax, align 8, !tbaa !282
  %i.aie = icmp ult ptr %i.ahr, %i.aid
  br i1 %i.aie, label %read_paint.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aif = load ptr, ptr %i.h, align 8, !tbaa !288
  %i.aig = load i64, ptr %i.ba, align 8, !tbaa !289
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aif, i64 %i.aig
  %i.aii = getelementptr inbounds i8, ptr %i.aih, i64 -4
  %i.aij = icmp ugt ptr %i.ahr, %i.aii
  br i1 %i.aij, label %read_paint.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aik = getelementptr inbounds nuw i8, ptr %i.agy, i64 6
  %i.ail = load i8, ptr %i.ahr, align 1, !tbaa !26
  %i.aim = zext i8 %i.ail to i16
  %i.ain = shl nuw i16 %i.aim, 8
  %i.aio = getelementptr inbounds nuw i8, ptr %i.agy, i64 5
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !26
  %i.aiq = zext i8 %i.aip to i16
  %i.air = or disjoint i16 %i.ain, %i.aiq
  %i.ais = sext i16 %i.air to i64
  %i.ait = shl nsw i64 %i.ais, 16
  %i.aiu = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.ait, ptr %i.aiu, align 8, !tbaa !26
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.aiw = load i8, ptr %i.aik, align 1, !tbaa !26
  %i.aix = zext i8 %i.aiw to i16
  %i.aiy = shl nuw i16 %i.aix, 8
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.agy, i64 7
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !26
  %i.ajb = zext i8 %i.aja to i16
  %i.ajc = or disjoint i16 %i.aiy, %i.ajb
  %i.ajd = sext i16 %i.ajc to i64
  %i.aje = shl nsw i64 %i.ajd, 16
  %i.ajf = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.aje, ptr %i.ajf, align 8, !tbaa !26
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dl
  %i.ajg = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ajg, i8 0, i64 16, i1 false)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ajh = phi ptr [ %i.ahr, %bb.dp ], [ %i.aiv, %bb.do ] ; 6 uses
  switch i32 %i.dx, label %bb.dx [
    i32 29, label %bb.dr
    i32 31, label %bb.dr
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq
  %i.aji = load ptr, ptr %i.ax, align 8, !tbaa !282
  %i.ajj = icmp ult ptr %i.ajh, %i.aji
  br i1 %i.ajj, label %read_paint.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ajk = load ptr, ptr %i.h, align 8, !tbaa !288
  %i.ajl = load i64, ptr %i.ba, align 8, !tbaa !289
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %i.ajl
  %i.ajn = getelementptr inbounds i8, ptr %i.ajm, i64 -4
  %i.ajo = icmp ugt ptr %i.ajh, %i.ajn
  br i1 %i.ajo, label %read_paint.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ajp = load i8, ptr %i.ajh, align 1, !tbaa !26
  %i.ajq = zext i8 %i.ajp to i64
  %i.ajr = shl nuw nsw i64 %i.ajq, 24
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajh, i64 1
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !26
  %i.aju = zext i8 %i.ajt to i64
  %i.ajv = shl nuw nsw i64 %i.aju, 16
  %i.ajw = or disjoint i64 %i.ajv, %i.ajr
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajh, i64 2
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !26
  %i.ajz = zext i8 %i.ajy to i64
  %i.aka = shl nuw nsw i64 %i.ajz, 8
  %i.akb = or disjoint i64 %i.ajw, %i.aka
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajh, i64 3
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !26
  %i.ake = zext i8 %i.akd to i64
  %i.akf = or disjoint i64 %i.akb, %i.ake         ; 2 uses
  %i.akg = icmp eq i32 %i.dx, 29
  br i1 %i.akg, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call fastcc void @get_deltas_for_var_index_base(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %i.akf, i32 noundef 2, ptr noundef %i.c)
  %i.akh = load <2 x i32>, ptr %i.c, align 16, !tbaa !16
  %i.aki = sext <2 x i32> %i.akh to <2 x i64>
  %i.akj = shl nsw <2 x i64> %i.aki, splat (i64 2)
  %i.akk = load <2 x i64>, ptr %i.ahq, align 8, !tbaa !26
  %i.akl = add nsw <2 x i64> %i.akj, %i.akk
  store <2 x i64> %i.akl, ptr %i.ahq, align 8, !tbaa !26
  %.pre.i = load i32, ptr %3, align 8, !tbaa !562
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.akm = phi i32 [ %.pre.i, %bb.du ], [ %i.dx, %bb.dt ]
  %i.akn = icmp eq i32 %i.akm, 31
  br i1 %i.akn, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call fastcc void @get_deltas_for_var_index_base(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %i.akf, i32 noundef 4, ptr noundef %i.c)
  %i.ako = load <2 x i32>, ptr %i.c, align 16, !tbaa !16
  %i.akp = sext <2 x i32> %i.ako to <2 x i64>
  %i.akq = shl nsw <2 x i64> %i.akp, splat (i64 2)
  %i.akr = load <2 x i64>, ptr %i.ahq, align 8, !tbaa !26
  %i.aks = add nsw <2 x i64> %i.akq, %i.akr
  store <2 x i64> %i.aks, ptr %i.ahq, align 8, !tbaa !26
  %i.akt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aku = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.akv = load <2 x i32>, ptr %i.akt, align 8, !tbaa !16
  %i.akw = sext <2 x i32> %i.akv to <2 x i64>
  %i.akx = shl nsw <2 x i64> %i.akw, splat (i64 16)
  %i.aky = load <2 x i64>, ptr %i.aku, align 8, !tbaa !26
  %i.akz = add nsw <2 x i64> %i.akx, %i.aky
  store <2 x i64> %i.akz, ptr %i.aku, align 8, !tbaa !26
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.dq
  store i32 28, ptr %3, align 8, !tbaa !562
  br label %read_paint.exit

bb.dy:                                            ; preds = %bb.cu
  %i.ala = load ptr, ptr %i.b, align 8, !tbaa !258
  %i.alb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ala, ptr %i.alb, align 8, !tbaa !26
  %i.alc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.alc, align 8, !tbaa !26
  %i.ald = load ptr, ptr %i.a, align 8, !tbaa !258 ; 4 uses
  %i.ale = load ptr, ptr %i.ax, align 8, !tbaa !282
  %i.alf = icmp ult ptr %i.ald, %i.ale
  br i1 %i.alf, label %read_paint.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.alg = load ptr, ptr %i.h, align 8, !tbaa !288
  %i.alh = load i64, ptr %i.ba, align 8, !tbaa !289
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.alh
  %i.alj = getelementptr inbounds i8, ptr %i.ali, i64 -1
  %i.alk = icmp ugt ptr %i.ald, %i.alj
  br i1 %i.alk, label %read_paint.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.all = getelementptr inbounds nuw i8, ptr %i.ald, i64 1
  store ptr %i.all, ptr %i.a, align 8, !tbaa !258
  %i.alm = load i8, ptr %i.ald, align 1, !tbaa !26 ; 2 uses
  %i.aln = icmp ugt i8 %i.alm, 27
  br i1 %i.aln, label %read_paint.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.alo = zext nneg i8 %i.alm to i32
  %i.alp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.alo, ptr %i.alp, align 8, !tbaa !26
  %i.alq = call fastcc zeroext i8 @get_child_table_pointer(ptr noundef nonnull %i.e, ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef %i.b)
  %.not384.i = icmp eq i8 %i.alq, 0
  br i1 %.not384.i, label %read_paint.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.alr = load ptr, ptr %i.b, align 8, !tbaa !258
  %i.als = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.alr, ptr %i.als, align 8, !tbaa !26
  %i.alt = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.alt, align 8, !tbaa !26
  br label %read_paint.exit

read_paint.exit:                                  ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %bb.t, %bb.u, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ac, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.aj, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.at, %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.bb, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.bo, %bb.bp, %bb.bq, %bb.bs, %bb.bt, %bb.bv, %bb.bx, %bb.by, %bb.ca, %bb.cb, %bb.ce, %bb.cf, %bb.cj, %bb.ck, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cy, %bb.cz, %bb.dd, %bb.de, %bb.di, %bb.dj, %bb.dk, %bb.dm, %bb.dn, %bb.dr, %bb.ds, %bb.dx, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec
  %.4.i = phi i8 [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.r ], [ 1, %bb.w ], [ 1, %bb.di ], [ 0, %bb.t ], [ 1, %bb.y ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 1, %bb.aj ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.ag ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 1, %bb.bd ], [ 0, %bb.eb ], [ 0, %bb.aq ], [ 0, %bb.ba ], [ 1, %bb.bg ], [ 0, %bb.bh ], [ 0, %bb.bi ], [ 1, %bb.bo ], [ 0, %bb.dr ], [ 0, %bb.be ], [ 0, %bb.bl ], [ 0, %bb.bp ], [ 1, %bb.bv ], [ 0, %bb.cy ], [ 0, %bb.bs ], [ 0, %bb.bx ], [ 0, %bb.ca ], [ 0, %bb.ce ], [ 1, %bb.ct ], [ 0, %bb.dj ], [ 0, %bb.dm ], [ 1, %bb.dx ], [ 0, %bb.cu ], [ 0, %bb.cj ], [ 0, %bb.cv ], [ 0, %bb.dz ], [ 0, %bb.l ], [ 1, %bb.q ], [ 0, %bb.o ], [ 0, %bb.dd ], [ 0, %bb.u ], [ 0, %bb.de ], [ 0, %bb.ae ], [ 0, %bb.ah ], [ 0, %bb.am ], [ 0, %bb.an ], [ 1, %bb.at ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.ay ], [ 0, %bb.bb ], [ 0, %bb.bf ], [ 0, %bb.bj ], [ 0, %bb.bm ], [ 0, %bb.bq ], [ 0, %bb.bt ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cf ], [ 0, %bb.ck ], [ 0, %bb.cw ], [ 0, %bb.cz ], [ 0, %bb.dk ], [ 0, %bb.dn ], [ 0, %bb.ds ], [ 0, %bb.ea ], [ 0, %bb.dy ], [ 1, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ed

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sink = phi i64 [ 0, %bb.i ], [ %i.av, %bb.h ]
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %.sink, ptr %5, align 8, !tbaa !26
  br label %bb.ed

bb.ed:                                            ; preds = %.sink.split, %bb.a, %bb.b, %bb.c, %read_paint.exit
  %.0 = phi i8 [ 0, %bb.a ], [ %.4.i, %read_paint.exit ], [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_colr_blend_layer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !572
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 156 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.i = load <2 x i32>, ptr %i.g, align 8, !tbaa !16
  store <2 x i32> %i.i, ptr %i.h, align 8, !tbaa !16
  %i.j = load i32, ptr %i.f, align 4, !tbaa !573  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i32 %i.j, ptr %i.k, align 4, !tbaa !573
  %i.l = load i32, ptr %i.e, align 8, !tbaa !574  ; 2 uses
  store i32 %i.l, ptr %i.b, align 8, !tbaa !574
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 178
  store i8 7, ptr %i.m, align 2, !tbaa !575
  %i.n = shl nsw i32 %i.j, 2                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 %i.n, ptr %i.o, align 8, !tbaa !576
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i16 256, ptr %i.p, align 8, !tbaa !577
  %i.q = mul i32 %i.l, %i.n
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = tail call i32 @ft_glyphslot_alloc_bitmap(ptr noundef nonnull %2, i64 noundef %i.r) #26 ; 3 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !16
  %.not194 = icmp eq i32 %i.s, 0
  br i1 %.not194, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !572
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 0, i64 %i.r, i1 false)
  br label %.critedge.thread

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !578  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.x = load i32, ptr %i.w, align 8, !tbaa !578  ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.x) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !573
  %i.aa = add nsw i32 %i.z, %i.v                  ; 2 uses
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !573
  %i.ac = add nsw i32 %i.ab, %i.x                 ; 2 uses
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 196 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !579 ; 3 uses
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !574
  %i.ah = sub nsw i32 %i.af, %i.ag                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !579 ; 3 uses
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !574
  %i.al = sub nsw i32 %i.aj, %i.ak                ; 2 uses
  %i.am = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.al)
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %i.aj) ; 3 uses
  %.not195 = icmp sle i32 %i.v, %i.x
  %.not196 = icmp sge i32 %i.aa, %i.ac
  %or.cond219 = select i1 %.not195, i1 %.not196, i1 false
  br i1 %or.cond219, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not197 = icmp sle i32 %i.ah, %i.al
  %.not198 = icmp sge i32 %i.af, %i.aj
  %or.cond = and i1 %.not198, %.not197
  br i1 %or.cond, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !143
  %i.aq = sub nsw i32 %i.ad, %.                   ; 2 uses
  %i.ar = sub nsw i32 %i.an, %i.am                ; 2 uses
  %i.as = shl i32 %i.aq, 2                        ; 4 uses
  %i.at = mul i32 %i.ar, %i.as
  %i.au = zext i32 %i.at to i64
  %i.av = call ptr @ft_mem_alloc(ptr noundef %i.ap, i64 noundef %i.au, ptr noundef nonnull %i.a) #26 ; 2 uses
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %.not199 = icmp eq i32 %i.aw, 0
  br i1 %.not199, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !574
  %.not232 = icmp eq i32 %i.ax, 0
  br i1 %.not232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ay = load i32, ptr %i.ae, align 4, !tbaa !579
  %i.az = sub nsw i32 %i.an, %i.ay
  %i.ba = mul nsw i32 %i.az, %i.as
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.av, i64 %i.bb
  %i.bd = load i32, ptr %i.u, align 8, !tbaa !578
  %i.be = sub nsw i32 %i.bd, %.
  %i.bf = shl nsw i32 %i.be, 2
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !572
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bk = zext i32 %i.as to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.0171225 = phi i32 [ 0, %.lr.ph ], [ %i.bs, %bb.h ]
  %.0179224 = phi ptr [ %i.bh, %.lr.ph ], [ %i.br, %bb.h ] ; 2 uses
  %.0180223 = phi ptr [ %i.bi, %.lr.ph ], [ %i.bq, %bb.h ] ; 2 uses
  %i.bl = load i32, ptr %i.y, align 4, !tbaa !573
  %i.bm = shl i32 %i.bl, 2
  %i.bn = zext i32 %i.bm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0179224, ptr align 1 %.0180223, i64 %i.bn, i1 false)
  %i.bo = load i32, ptr %i.bj, align 8, !tbaa !576
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %.0180223, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.0179224, i64 %i.bk
  %i.bs = add nuw i32 %.0171225, 1                ; 2 uses
  %i.bt = load i32, ptr %i.b, align 8, !tbaa !574
  %i.bu = icmp ult i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.h, label %._crit_edge, !llvm.loop !569

._crit_edge:                                      ; preds = %bb.h, %bb.g
  call void @ft_glyphslot_set_bitmap(ptr noundef nonnull %2, ptr noundef %i.av) #26
  store i32 %i.an, ptr %i.ae, align 4, !tbaa !579
  store i32 %., ptr %i.u, align 8, !tbaa !578
  store i32 %i.aq, ptr %i.y, align 4, !tbaa !573
  store i32 %i.ar, ptr %i.b, align 8, !tbaa !574
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 %i.as, ptr %i.bv, align 8, !tbaa !576
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !255
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !257
  %i.ca = or i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !257
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 1651078259, ptr %i.cb, align 8, !tbaa !580
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.e, %._crit_edge, %bb.c
  %i.cc = icmp eq i32 %1, 65535
  br i1 %i.cc, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.critedge.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !581
  %.not200 = icmp eq i8 %i.ce, 0
  br i1 %.not200, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1105
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !582
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1106
  %i.ci = load <2 x i8>, ptr %i.ch, align 2, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !583
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !191 ; 2 uses
  %.not201 = icmp eq ptr %i.cm, null
  br i1 %.not201, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !584
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !175
  %i.cs = and i16 %i.cr, 2
  %.not202 = icmp eq i16 %i.cs, 0
  br i1 %.not202, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.o

bb.n:                                             ; preds = %.critedge.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !193
  %i.cv = zext i32 %1 to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !292
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cz = load <2 x i8>, ptr %i.cy, align 1, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  %i.db = load i8, ptr %i.da, align 1, !tbaa !293
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.j, %bb.m, %bb.n
  %.0176 = phi i8 [ %i.ck, %bb.j ], [ %i.db, %bb.n ], [ -1, %bb.m ], [ -1, %bb.l ]
end_hunk_1
