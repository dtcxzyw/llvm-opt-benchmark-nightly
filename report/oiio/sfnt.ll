inline.NumInlined: 86
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@tt_face_get_colr_layer:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 2 uses
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !501
  %i.bo = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt
  store i32 %i.bu, ptr %2, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !501
  %i.bw = load i8, ptr %i.bn, align 1, !tbaa !16
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16
  %i.cb = zext i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.by, %i.cb            ; 3 uses
  store i32 %i.cc, ptr %3, align 4, !tbaa !3
  %i.cd = load i32, ptr %2, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !46
  %i.cg = trunc i64 %i.cf to i32
  %.not44 = icmp ult i32 %i.cd, %i.cg
  br i1 %.not44, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %.not45 = icmp eq i32 %i.cc, 65535
  br i1 %.not45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !457
  %i.cj = zext i16 %i.ci to i32
  %.not46 = icmp samesign ult i32 %i.cc, %i.cj
  br i1 %.not46, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ck = load i32, ptr %i.be, align 4, !tbaa !503
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.be, align 4, !tbaa !503
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.g, %bb.h, %bb.l, %bb.n, %bb.i, %bb.j, %bb.k, %bb.a, %bb.o
  %.1 = phi i8 [ 0, %bb.a ], [ 0, %bb.i ], [ 1, %bb.o ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.f ]
  ret i8 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i8 0, 2) i8 @tt_face_get_colr_glyph_paint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %find_base_glyph_v1_record.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !492  ; 2 uses
  %.not26 = icmp eq ptr %i.d, null
  br i1 %.not26, label %find_base_glyph_v1_record.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %i.b, align 8, !tbaa !468
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %find_base_glyph_v1_record.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !476  ; 2 uses
  %.not27 = icmp eq i64 %i.h, 0
  br i1 %.not27, label %find_base_glyph_v1_record.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !477  ; 3 uses
  %.not28 = icmp eq ptr %i.j, null
  br i1 %.not28, label %find_base_glyph_v1_record.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %3, align 8, !tbaa !506
  %.not29 = icmp ne ptr %i.k, null
  %i.l = trunc i64 %i.h to i32                    ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  %or.cond = or i1 %.not.i, %.not29
  br i1 %or.cond, label %find_base_glyph_v1_record.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %.02737.i = phi i32 [ %.229.i, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %.03036.i = phi i32 [ %.232.i, %bb.i ], [ %i.l, %bb.f ] ; 2 uses
  %i.m = sub nuw i32 %.03036.i, %.02737.i
  %i.n = lshr i32 %i.m, 1
  %i.o = add i32 %i.n, %.02737.i                  ; 3 uses
  %i.p = mul i32 %i.o, 6
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32
  %i.z = or disjoint i32 %i.v, %i.y               ; 2 uses
  %i.aa = icmp ugt i32 %1, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = add i32 %i.o, 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ac = icmp samesign ult i32 %1, %i.z
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.232.i = phi i32 [ %i.o, %bb.h ], [ %.03036.i, %bb.g ] ; 2 uses
  %.229.i = phi i32 [ %.02737.i, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ad = icmp ult i32 %.229.i, %.232.i
  br i1 %i.ad, label %.lr.ph.i, label %find_base_glyph_v1_record.exit.thread, !llvm.loop !508

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.af = load i32, ptr %i.ae, align 1            ; 2 uses
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %.not31 = icmp eq i32 %i.af, 0
  br i1 %.not31, label %find_base_glyph_v1_record.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !493 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  br i1 %i.ak, label %find_base_glyph_v1_record.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ah ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aj
  %.not32 = icmp ult ptr %i.al, %i.am
  br i1 %.not32, label %find_base_glyph_v1_record.exit.thread.sink.split, label %find_base_glyph_v1_record.exit.thread

find_base_glyph_v1_record.exit.thread.sink.split: ; preds = %bb.l
  store ptr %i.al, ptr %3, align 8, !tbaa !506
  %i.an = icmp eq i32 %2, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %. = zext i1 %i.an to i8
  store i8 %., ptr %i.ao, align 8, !tbaa !509
  br label %find_base_glyph_v1_record.exit.thread

find_base_glyph_v1_record.exit.thread:            ; preds = %bb.i, %find_base_glyph_v1_record.exit.thread.sink.split, %bb.l, %bb.j, %bb.k, %bb.f, %bb.c, %bb.d, %bb.e, %bb.a, %bb.b
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %find_base_glyph_v1_record.exit.thread.sink.split ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %bb.i ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @tt_face_get_color_glyph_clipbox(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %3 = alloca [4 x %struct.FT_Vector_], align 16  ; 14 uses
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !481  ; 6 uses
  %.not113 = icmp eq ptr %i.e, null
  br i1 %.not113, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !492
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.i = load i64, ptr %i.h, align 8, !tbaa !493  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -5
  %i.l = icmp ugt ptr %i.e, %i.k
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.e, align 1, !tbaa !16
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  %i.t = udiv i64 %i.i, 7
  %.neg = mul nsw i64 %i.s, -7
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 %.neg
  %i.v = icmp ule ptr %i.o, %i.u
  %i.w = add nsw i64 %i.s, -1
  %i.x = icmp ult i64 %i.w, %i.t
  %or.cond144 = select i1 %i.x, i1 %i.v, i1 false
  br i1 %or.cond144, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %bb.ac
  %.0102142 = phi ptr [ %i.af, %bb.ac ], [ %i.o, %bb.e ] ; 8 uses
  %.0103141 = phi i64 [ %i.hk, %bb.ac ], [ 0, %bb.e ]
  %i.y = load i8, ptr %.0102142, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0102142, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0102142, i64 7
  %.not114 = icmp ult i32 %1, %i.ae
  br i1 %.not114, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.0102142, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %.0102142, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 8
  %i.am = zext i8 %i.ah to i32
  %i.an = or disjoint i32 %i.al, %i.am
  %.not115 = icmp ugt i32 %1, %i.an
  br i1 %.not115, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.0102142, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0102142, i64 5
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0102142, i64 6
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay ; 11 uses
  %i.bc = getelementptr inbounds i8, ptr %i.j, i64 -1
  %i.bd = icmp ugt ptr %i.bb, %i.bc
  br i1 %i.bd, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !16  ; 2 uses
  %i.bf = icmp ugt i8 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %or.cond122 = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond122, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !16
  %i.bk = zext i8 %i.bj to i16
  %i.bl = shl nuw i16 %i.bk, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = zext i8 %i.bn to i16
  %i.bp = or disjoint i16 %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !407 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !510
  %i.bu = sext i16 %i.bp to i64
  %sext = shl i64 %i.bt, 32
  %i.bv = ashr exact i64 %sext, 32                ; 2 uses
  %i.bw = mul nsw i64 %i.bv, %i.bu                ; 2 uses
  %i.bx = ashr i64 %i.bw, 63
  %i.by = add nsw i64 %i.bw, 32768
  %i.bz = add nsw i64 %i.by, %i.bx
  %i.ca = ashr i64 %i.bz, 16                      ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = zext i8 %i.cc to i16
  %i.ce = shl nuw i16 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = zext i8 %i.cg to i16
  %i.ci = or disjoint i16 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !511
  %i.cl = sext i16 %i.ci to i64
  %sext124 = shl i64 %i.ck, 32
  %i.cm = ashr exact i64 %sext124, 32             ; 2 uses
  %i.cn = mul nsw i64 %i.cm, %i.cl                ; 2 uses
  %i.co = ashr i64 %i.cn, 63
  %i.cp = add nsw i64 %i.cn, 32768
  %i.cq = add nsw i64 %i.cp, %i.co
  %i.cr = ashr i64 %i.cq, 16                      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = zext i8 %i.ct to i16
  %i.cv = shl nuw i16 %i.cu, 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bb, i64 6
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !16
  %i.cy = zext i8 %i.cx to i16
  %i.cz = or disjoint i16 %i.cv, %i.cy
  %i.da = sext i16 %i.cz to i64
  %i.db = mul nsw i64 %i.bv, %i.da                ; 2 uses
  %i.dc = ashr i64 %i.db, 63
  %i.dd = add nsw i64 %i.db, 32768
  %i.de = add nsw i64 %i.dd, %i.dc
  %i.df = ashr i64 %i.de, 16                      ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bb, i64 7
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16
  %i.di = zext i8 %i.dh to i16
  %i.dj = shl nuw i16 %i.di, 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  %i.dm = zext i8 %i.dl to i16
  %i.dn = or disjoint i16 %i.dj, %i.dm
  %i.do = sext i16 %i.dn to i64
  %i.dp = mul nsw i64 %i.cm, %i.do                ; 2 uses
  %i.dq = ashr i64 %i.dp, 63
  %i.dr = add nsw i64 %i.dp, 32768
  %i.ds = add nsw i64 %i.dr, %i.dq
  %i.dt = ashr i64 %i.ds, 16                      ; 2 uses
  %i.du = icmp eq i8 %i.be, 2
  br i1 %i.du, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bb, i64 9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.dw = getelementptr inbounds i8, ptr %i.j, i64 -4
  %.not116 = icmp ugt ptr %i.dv, %i.dw
  br i1 %.not116, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dx = load i32, ptr %i.dv, align 1
  %i.dy = tail call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.dz = zext i32 %i.dy to i64
  call fastcc void @get_deltas_for_var_index_base(ptr noundef nonnull %0, ptr noundef %i.c, i64 noundef %i.dz, i32 noundef 4, ptr noundef %i.a)
  %i.ea = load i32, ptr %i.a, align 16, !tbaa !3
  %i.eb = load ptr, ptr %i.bq, align 8, !tbaa !407 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !510
  %i.ee = sext i32 %i.ea to i64
  %sext128 = shl i64 %i.ed, 32
  %i.ef = ashr exact i64 %sext128, 32             ; 2 uses
  %i.eg = mul nsw i64 %i.ef, %i.ee                ; 2 uses
  %i.eh = ashr i64 %i.eg, 63
  %i.ei = add nsw i64 %i.eg, 32768
  %i.ej = add nsw i64 %i.ei, %i.eh
  %i.ek = shl i64 %i.ej, 16
  %i.el = ashr i64 %i.ek, 32
  %i.em = add nsw i64 %i.el, %i.ca
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !511
  %i.er = sext i32 %i.eo to i64
  %sext130 = shl i64 %i.eq, 32
  %i.es = ashr exact i64 %sext130, 32             ; 2 uses
  %i.et = mul nsw i64 %i.es, %i.er                ; 2 uses
  %i.eu = ashr i64 %i.et, 63
  %i.ev = add nsw i64 %i.et, 32768
  %i.ew = add nsw i64 %i.ev, %i.eu
  %i.ex = shl i64 %i.ew, 16
  %i.ey = ashr i64 %i.ex, 32
  %i.ez = add nsw i64 %i.ey, %i.cr
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !3
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul nsw i64 %i.ef, %i.fc                ; 2 uses
  %i.fe = ashr i64 %i.fd, 63
  %i.ff = add nsw i64 %i.fd, 32768
  %i.fg = add nsw i64 %i.ff, %i.fe
  %i.fh = shl i64 %i.fg, 16
  %i.fi = ashr i64 %i.fh, 32
  %i.fj = add nsw i64 %i.fi, %i.df
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = sext i32 %i.fl to i64
  %i.fn = mul nsw i64 %i.es, %i.fm                ; 2 uses
  %i.fo = ashr i64 %i.fn, 63
  %i.fp = add nsw i64 %i.fn, 32768
  %i.fq = add nsw i64 %i.fp, %i.fo
  %i.fr = shl i64 %i.fq, 16
  %i.fs = ashr i64 %i.fr, 32
  %i.ft = add nsw i64 %i.fs, %i.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.17.1 = phi i64 [ %i.ft, %bb.k ], [ %i.dt, %bb.i ] ; 2 uses
  %.sroa.12.1 = phi i64 [ %i.fj, %bb.k ], [ %i.df, %bb.i ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %i.ez, %bb.k ], [ %i.cr, %bb.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.em, %bb.k ], [ %i.ca, %bb.i ] ; 2 uses
  store i64 %.sroa.0.1, ptr %3, align 16, !tbaa !512
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i64 %.sroa.0.1, ptr %i.fu, align 16, !tbaa !512
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  store i64 %.sroa.12.1, ptr %i.fv, align 16, !tbaa !512
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  store i64 %.sroa.12.1, ptr %i.fw, align 16, !tbaa !512
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.7.1, ptr %i.fx, align 8, !tbaa !513
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.17.1, ptr %i.fy, align 8, !tbaa !513
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.sroa.17.1, ptr %i.fz, align 8, !tbaa !513
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %.sroa.7.1, ptr %i.ga, align 8, !tbaa !513
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !223 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !514 ; 2 uses
  %i.gf = and i32 %i.ge, 1
  %.not117 = icmp eq i32 %i.gf, 0
  br i1 %.not117, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @FT_Vector_Transform(ptr noundef nonnull %3, ptr noundef nonnull %i.gc) #26
  %.pre = load ptr, ptr %i.gb, align 8, !tbaa !223 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre151 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !514
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gg = phi i32 [ %.pre151, %bb.m ], [ %i.ge, %bb.l ] ; 3 uses
  %i.gh = phi ptr [ %.pre, %bb.m ], [ %i.gc, %bb.l ] ; 3 uses
  %i.gi = and i32 %i.gg, 2                        ; 2 uses
  %.not118 = icmp eq i32 %i.gi, 0
  br i1 %.not118, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gk = load <2 x i64>, ptr %i.gj, align 8, !tbaa !160
  %i.gl = load <2 x i64>, ptr %3, align 16, !tbaa !160
  %i.gm = add nsw <2 x i64> %i.gl, %i.gk
  store <2 x i64> %i.gm, ptr %3, align 16, !tbaa !160
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gn = and i32 %i.gg, 1
  %.not117.1 = icmp eq i32 %i.gn, 0
  br i1 %.not117.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @FT_Vector_Transform(ptr noundef nonnull %i.fu, ptr noundef nonnull %i.gh) #26
  %.pre152 = load ptr, ptr %i.gb, align 8, !tbaa !223 ; 2 uses
  %.phi.trans.insert153 = getelementptr inbounds nuw i8, ptr %.pre152, i64 48
  %.pre154 = load i32, ptr %.phi.trans.insert153, align 8, !tbaa !514 ; 2 uses
  %.pre161 = and i32 %.pre154, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi = phi i32 [ %.pre161, %bb.q ], [ %i.gi, %bb.p ] ; 2 uses
  %i.go = phi i32 [ %.pre154, %bb.q ], [ %i.gg, %bb.p ] ; 2 uses
  %i.gp = phi ptr [ %.pre152, %bb.q ], [ %i.gh, %bb.p ] ; 3 uses
  %.not118.1 = icmp eq i32 %.pre-phi, 0
  br i1 %.not118.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load <2 x i64>, ptr %i.gq, align 8, !tbaa !160
  %i.gs = load <2 x i64>, ptr %i.fu, align 16, !tbaa !160
  %i.gt = add nsw <2 x i64> %i.gs, %i.gr
  store <2 x i64> %i.gt, ptr %i.fu, align 16, !tbaa !160
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gu = and i32 %i.go, 1
  %.not117.2 = icmp eq i32 %i.gu, 0
  br i1 %.not117.2, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @FT_Vector_Transform(ptr noundef nonnull %i.fv, ptr noundef nonnull %i.gp) #26
  %.pre155 = load ptr, ptr %i.gb, align 8, !tbaa !223 ; 2 uses
  %.phi.trans.insert156 = getelementptr inbounds nuw i8, ptr %.pre155, i64 48
  %.pre157 = load i32, ptr %.phi.trans.insert156, align 8, !tbaa !514 ; 2 uses
  %.pre162 = and i32 %.pre157, 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi163 = phi i32 [ %.pre162, %bb.u ], [ %.pre-phi, %bb.t ] ; 2 uses
  %i.gv = phi i32 [ %.pre157, %bb.u ], [ %i.go, %bb.t ]
  %i.gw = phi ptr [ %.pre155, %bb.u ], [ %i.gp, %bb.t ] ; 3 uses
  %.not118.2 = icmp eq i32 %.pre-phi163, 0
  br i1 %.not118.2, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = load <2 x i64>, ptr %i.gx, align 8, !tbaa !160
  %i.gz = load <2 x i64>, ptr %i.fv, align 16, !tbaa !160
  %i.ha = add nsw <2 x i64> %i.gz, %i.gy
  store <2 x i64> %i.ha, ptr %i.fv, align 16, !tbaa !160
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hb = and i32 %i.gv, 1
  %.not117.3 = icmp eq i32 %i.hb, 0
  br i1 %.not117.3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @FT_Vector_Transform(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.gw) #26
  %.pre158 = load ptr, ptr %i.gb, align 8, !tbaa !223 ; 2 uses
  %.phi.trans.insert159 = getelementptr inbounds nuw i8, ptr %.pre158, i64 48
  %.pre160 = load i32, ptr %.phi.trans.insert159, align 8, !tbaa !514
  %.pre164 = and i32 %.pre160, 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi165 = phi i32 [ %.pre164, %bb.y ], [ %.pre-phi163, %bb.x ]
  %i.hc = phi ptr [ %.pre158, %bb.y ], [ %i.gw, %bb.x ]
  %.not118.3 = icmp eq i32 %.pre-phi165, 0
  br i1 %.not118.3, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load <2 x i64>, ptr %i.hd, align 8, !tbaa !160
  %i.hf = load <2 x i64>, ptr %i.fw, align 16, !tbaa !160
  %i.hg = add nsw <2 x i64> %i.hf, %i.he
  store <2 x i64> %i.hg, ptr %i.fw, align 16, !tbaa !160
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !515
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 16 dereferenceable(16) %i.fu, i64 16, i1 false), !tbaa.struct !515
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull align 16 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !515
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 16 dereferenceable(16) %i.fw, i64 16, i1 false), !tbaa.struct !515
  br label %.loopexit

bb.ac:                                            ; preds = %.lr.ph, %bb.f
  %i.hk = add nuw nsw i64 %.0103141, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.hk, %i.s
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !516

.critedge:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %.critedge, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.ab
  %.1 = phi i8 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ 1, %bb.ab ], [ 0, %bb.a ], [ 0, %.critedge ], [ 0, %bb.c ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i8 0, 2) i8 @tt_face_get_paint_layers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !503  ; 3 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !505
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264  ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !501  ; 8 uses
  %i.i = shl i32 %i.b, 2
  %i.j = zext i32 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !479  ; 4 uses
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !478
  %i.t = shl i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %.not41 = icmp uge ptr %i.m, %i.u
  %i.v = icmp ult ptr %i.h, %i.o
  %or.cond = or i1 %i.v, %.not41
  br i1 %or.cond, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !492
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.z = load i64, ptr %i.y, align 8, !tbaa !493
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ac = icmp ugt ptr %i.h, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.h, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.ar, align 8, !tbaa !509
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.af
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !480
  %i.ay = icmp uge ptr %i.av, %i.ax
  %.not42 = icmp ult ptr %i.av, %i.aa
  %or.cond43 = and i1 %i.ay, %.not42
  br i1 %or.cond43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.av, ptr %2, align 8, !tbaa !506
  store ptr %i.az, ptr %i.g, align 8, !tbaa !501
  %i.ba = add i32 %i.b, 1
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !503
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.e ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @tt_face_get_colorline_stops(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !492  ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !517  ; 4 uses
  %i.i = load i32, ptr %2, align 8, !tbaa !519    ; 2 uses
  %.not53 = icmp ult i32 %i.h, %i.i
  br i1 %.not53, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !520
  %.not54 = icmp eq i8 %i.k, 0                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !521  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !480
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = select i1 %.not54, i32 6, i32 10 ; 2 uses
  %i.q = xor i32 %i.h, -1
  %i.r = add i32 %i.i, %i.q
  %i.s = mul i32 %spec.select, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.w = load i64, ptr %i.v, align 8, !tbaa !493
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w
  %i.y = zext nneg i32 %spec.select to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z
  %i.ab = icmp ugt ptr %i.u, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i8, ptr %i.m, align 1, !tbaa !16
  %i.ad = zext i8 %i.ac to i16
  %i.ae = shl nuw i16 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = zext i8 %i.ag to i16
  %i.ai = or disjoint i16 %i.ae, %i.ah
  %i.aj = sext i16 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 2                    ; 2 uses
  store i64 %i.ak, ptr %1, align 8, !tbaa !522
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = zext i8 %i.aq to i16
  %i.as = or disjoint i16 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.as, ptr %i.at, align 8, !tbaa !525
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  %i.ax = zext i8 %i.aw to i16
  %i.ay = shl nuw i16 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = zext i8 %i.ba to i16
  %i.bc = or disjoint i16 %i.ay, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !526
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
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !175
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 112 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
end_hunk_0
