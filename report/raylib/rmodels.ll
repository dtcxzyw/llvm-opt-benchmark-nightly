Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@_m3dstbi_zlib_decode_malloc_guesssize_headerflag:bb.a
  %5 = alloca %struct._m3dstbi__zhuffman, align 4 ; 9 uses
  %i.a = alloca [455 x i8], align 16              ; 8 uses
  %i.b = alloca [19 x i8], align 16               ; 6 uses
  %i.c = alloca [4 x i8], align 2                 ; 13 uses
  %6 = alloca %struct._m3dstbi__zbuf, align 8     ; 77 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 2147483648) %i.d) #56 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.dz, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %6, align 8
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 14 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  store ptr %i.e, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  store ptr %i.e, ptr %i.k, align 8
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 7 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  store i32 1, ptr %i.n, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) @_m3dstbi__zdefault_length, i8 8, i64 144, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) getelementptr inbounds nuw (i8, ptr @_m3dstbi__zdefault_length, i64 144), i8 9, i64 112, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_m3dstbi__zdefault_length, i64 256), i8 7, i64 24, i1 false)
  store i64 578721382704613384, ptr getelementptr inbounds nuw (i8, ptr @_m3dstbi__zdefault_length, i64 280), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_m3dstbi__zdefault_distance, i8 5, i64 32, i1 false)
  %.not.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i, label %_m3dstbi__parse_zlib_header.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp sgt i32 %1, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_m3dstbi__zget8.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store ptr %i.o, ptr %6, align 8
  %i.p = load i8, ptr %0, align 1
  %i.q = zext i8 %i.p to i32
  br label %_m3dstbi__zget8.exit.i.i.i

_m3dstbi__zget8.exit.i.i.i:                       ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.o, %bb.d ], [ %0, %bb.c ]   ; 3 uses
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.s = and i32 %.0.i.i.i.i, 15
  %.not.i9.i.i.i = icmp ult ptr %i.r, %i.h
  br i1 %.not.i9.i.i.i, label %bb.e, label %_m3dstbi__zget8.exit11.i.i.i

bb.e:                                             ; preds = %_m3dstbi__zget8.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.t, ptr %6, align 8
  %i.u = load i8, ptr %i.r, align 1
  %i.v = zext i8 %i.u to i32
  br label %_m3dstbi__zget8.exit11.i.i.i

_m3dstbi__zget8.exit11.i.i.i:                     ; preds = %bb.e, %_m3dstbi__zget8.exit.i.i.i
  %.0.i10.i.i.i = phi i32 [ %i.v, %bb.e ], [ 0, %_m3dstbi__zget8.exit.i.i.i ] ; 2 uses
  %i.w = shl nuw nsw i32 %.0.i.i.i.i, 8
  %i.x = or disjoint i32 %.0.i10.i.i.i, %i.w
  %.lhs.trunc.i.i.i = trunc nuw i32 %i.x to i16
  %i.y = urem i16 %.lhs.trunc.i.i.i, 31
  %.not.i.i.i = icmp eq i16 %i.y, 0
  %i.z = and i32 %.0.i10.i.i.i, 32
  %.not7.i.i.i = icmp eq i32 %i.z, 0
  %or.cond.i.i.i = and i1 %.not7.i.i.i, %.not.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.s, 8
  %or.cond14.i.i.i = select i1 %or.cond.i.i.i, i1 %.not8.i.i.i, i1 false
  br i1 %or.cond14.i.i.i, label %_m3dstbi__parse_zlib_header.exit.i.i, label %.loopexit

_m3dstbi__parse_zlib_header.exit.i.i:             ; preds = %_m3dstbi__zget8.exit11.i.i.i, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 60 uses
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 61 uses
  store i32 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 1056
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 1024
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 1124
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 1444
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 2072 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 1108
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 1076
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 1176
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 1496
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 3128
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 3096
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 3196
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 3516
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.dx, %_m3dstbi__parse_zlib_header.exit.i.i
  %i.ar = phi ptr [ %i.e, %_m3dstbi__parse_zlib_header.exit.i.i ], [ %i.afa, %bb.dx ] ; 3 uses
  %.promoted6.i.i.i.i = phi i32 [ 0, %_m3dstbi__parse_zlib_header.exit.i.i ], [ %.pre.i.i.i109, %bb.dx ] ; 5 uses
  %i.as = phi i32 [ 0, %_m3dstbi__parse_zlib_header.exit.i.i ], [ %.pr.i.i, %bb.dx ] ; 10 uses
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.f, label %_m3dstbi__zreceive.exit.i.i

bb.f:                                             ; preds = %thread-pre-split.i.i
  %i.au = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i.i.i = load ptr, ptr %6, align 8  ; 5 uses
  %i.av = sub i32 24, %i.as                       ; 2 uses
  %i.aw = and i32 %i.av, 8
  %lcmp.mod353.not.not = icmp eq i32 %i.aw, 0
  br i1 %lcmp.mod353.not.not, label %.prol.preheader349, label %.prol.loopexit350

.prol.preheader349:                               ; preds = %bb.f
  %.not.i.i.i.i.i.prol = icmp ult ptr %.promoted.i.i.i.i, %i.au
  br i1 %.not.i.i.i.i.i.prol, label %bb.g, label %_m3dstbi__zget8.exit.i.i.i.i.prol

bb.g:                                             ; preds = %.prol.preheader349
  %i.ax = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i.i, i64 1 ; 2 uses
  store ptr %i.ax, ptr %6, align 8
  %i.ay = load i8, ptr %.promoted.i.i.i.i, align 1
  %i.az = zext i8 %i.ay to i32
  br label %_m3dstbi__zget8.exit.i.i.i.i.prol

_m3dstbi__zget8.exit.i.i.i.i.prol:                ; preds = %bb.g, %.prol.preheader349
  %i.ba = phi ptr [ %i.ax, %bb.g ], [ %.promoted.i.i.i.i, %.prol.preheader349 ]
  %.0.i.i.i.i.i.prol = phi i32 [ %i.az, %bb.g ], [ 0, %.prol.preheader349 ]
  %i.bb = shl i32 %.0.i.i.i.i.i.prol, %i.as
  %i.bc = or i32 %i.bb, %.promoted6.i.i.i.i       ; 3 uses
  store i32 %i.bc, ptr %i.ab, align 4
  %i.bd = add nsw i32 %i.as, 8                    ; 2 uses
  store i32 %i.bd, ptr %i.aa, align 8
  br label %.prol.loopexit350

.prol.loopexit350:                                ; preds = %_m3dstbi__zget8.exit.i.i.i.i.prol, %bb.f
  %.unr354 = phi i32 [ %.promoted6.i.i.i.i, %bb.f ], [ %i.bc, %_m3dstbi__zget8.exit.i.i.i.i.prol ]
  %.unr355 = phi i32 [ %i.as, %bb.f ], [ %i.bd, %_m3dstbi__zget8.exit.i.i.i.i.prol ]
  %.unr356 = phi ptr [ %.promoted.i.i.i.i, %bb.f ], [ %i.ba, %_m3dstbi__zget8.exit.i.i.i.i.prol ]
  %.lcssa312.unr = phi i32 [ poison, %bb.f ], [ %i.bc, %_m3dstbi__zget8.exit.i.i.i.i.prol ]
  %i.be = icmp ult i32 %i.av, 8
  br i1 %i.be, label %_m3dstbi__zreceive.exit.thread.i.i, label %.new351

.new351:                                          ; preds = %.prol.loopexit350, %_m3dstbi__zget8.exit.i.i.i.i.1
  %i.bf = phi i32 [ %i.bu, %_m3dstbi__zget8.exit.i.i.i.i.1 ], [ %.unr354, %.prol.loopexit350 ]
  %i.bg = phi i32 [ %i.bv, %_m3dstbi__zget8.exit.i.i.i.i.1 ], [ %.unr355, %.prol.loopexit350 ] ; 4 uses
  %i.bh = phi ptr [ %i.bs, %_m3dstbi__zget8.exit.i.i.i.i.1 ], [ %.unr356, %.prol.loopexit350 ] ; 4 uses
  %.not.i.i.i.i.i = icmp ult ptr %i.bh, %i.au
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_m3dstbi__zget8.exit.i.i.i.i

bb.h:                                             ; preds = %.new351
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store ptr %i.bi, ptr %6, align 8
  %i.bj = load i8, ptr %i.bh, align 1
  %i.bk = zext i8 %i.bj to i32
  br label %_m3dstbi__zget8.exit.i.i.i.i

_m3dstbi__zget8.exit.i.i.i.i:                     ; preds = %bb.h, %.new351
  %i.bl = phi ptr [ %i.bi, %bb.h ], [ %i.bh, %.new351 ] ; 4 uses
  %.0.i.i.i.i.i = phi i32 [ %i.bk, %bb.h ], [ 0, %.new351 ]
  %i.bm = shl i32 %.0.i.i.i.i.i, %i.bg
  %i.bn = or i32 %i.bm, %i.bf                     ; 2 uses
  store i32 %i.bn, ptr %i.ab, align 4
  %i.bo = add nsw i32 %i.bg, 8                    ; 3 uses
  store i32 %i.bo, ptr %i.aa, align 8
  %.not.i.i.i.i.i.1 = icmp ult ptr %i.bl, %i.au
  br i1 %.not.i.i.i.i.i.1, label %bb.i, label %_m3dstbi__zget8.exit.i.i.i.i.1

bb.i:                                             ; preds = %_m3dstbi__zget8.exit.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  store ptr %i.bp, ptr %6, align 8
  %i.bq = load i8, ptr %i.bl, align 1
  %i.br = zext i8 %i.bq to i32
  br label %_m3dstbi__zget8.exit.i.i.i.i.1

_m3dstbi__zget8.exit.i.i.i.i.1:                   ; preds = %bb.i, %_m3dstbi__zget8.exit.i.i.i.i
  %i.bs = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %_m3dstbi__zget8.exit.i.i.i.i ]
  %.0.i.i.i.i.i.1 = phi i32 [ %i.br, %bb.i ], [ 0, %_m3dstbi__zget8.exit.i.i.i.i ]
  %i.bt = shl i32 %.0.i.i.i.i.i.1, %i.bo
  %i.bu = or i32 %i.bt, %i.bn                     ; 3 uses
  store i32 %i.bu, ptr %i.ab, align 4
  %i.bv = add nsw i32 %i.bg, 16                   ; 2 uses
  store i32 %i.bv, ptr %i.aa, align 8
  %i.bw = icmp slt i32 %i.bg, 9
  br i1 %i.bw, label %.new351, label %_m3dstbi__zreceive.exit.thread.i.i

_m3dstbi__zreceive.exit.thread.i.i:               ; preds = %_m3dstbi__zget8.exit.i.i.i.i.1, %.prol.loopexit350
  %.lcssa312 = phi i32 [ %.lcssa312.unr, %.prol.loopexit350 ], [ %i.bu, %_m3dstbi__zget8.exit.i.i.i.i.1 ] ; 2 uses
  %.lcssa311 = phi i32 [ %i.as, %.prol.loopexit350 ], [ %i.bo, %_m3dstbi__zget8.exit.i.i.i.i.1 ]
  %i.bx = lshr i32 %.lcssa312, 1
  %i.by = add nuw nsw i32 %.lcssa311, 7
  br label %_m3dstbi__zreceive.exit31.i.i

_m3dstbi__zreceive.exit.i.i:                      ; preds = %thread-pre-split.i.i
  %i.bz = lshr i32 %.promoted6.i.i.i.i, 1         ; 4 uses
  store i32 %i.bz, ptr %i.ab, align 4
  %i.ca = add nsw i32 %i.as, -1                   ; 4 uses
  store i32 %i.ca, ptr %i.aa, align 8
  %i.cb = icmp samesign ult i32 %i.as, 3
  br i1 %i.cb, label %bb.j, label %_m3dstbi__zreceive.exit31.i.i

bb.j:                                             ; preds = %_m3dstbi__zreceive.exit.i.i
  %i.cc = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i26.i.i = load ptr, ptr %6, align 8 ; 5 uses
  %lcmp.mod.not.not.not = icmp eq i32 %i.as, 1
  br i1 %lcmp.mod.not.not.not, label %.new, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.j
  %.not.i.i.i28.i.i.prol = icmp ult ptr %.promoted.i.i26.i.i, %i.cc
  br i1 %.not.i.i.i28.i.i.prol, label %bb.k, label %_m3dstbi__zget8.exit.i.i29.i.i.prol

bb.k:                                             ; preds = %.prol.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.promoted.i.i26.i.i, i64 1 ; 2 uses
  store ptr %i.cd, ptr %6, align 8
  %i.ce = load i8, ptr %.promoted.i.i26.i.i, align 1
  %i.cf = zext i8 %i.ce to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i.prol

_m3dstbi__zget8.exit.i.i29.i.i.prol:              ; preds = %bb.k, %.prol.preheader
  %i.cg = phi ptr [ %i.cd, %bb.k ], [ %.promoted.i.i26.i.i, %.prol.preheader ]
  %.0.i.i.i30.i.i.prol = phi i32 [ %i.cf, %bb.k ], [ 0, %.prol.preheader ]
  %i.ch = shl i32 %.0.i.i.i30.i.i.prol, %i.ca
  %i.ci = or i32 %i.ch, %i.bz                     ; 2 uses
  store i32 %i.ci, ptr %i.ab, align 4
  %i.cj = add nuw nsw i32 %i.as, 7                ; 2 uses
  store i32 %i.cj, ptr %i.aa, align 8
  br label %.new

.new:                                             ; preds = %bb.j, %_m3dstbi__zget8.exit.i.i29.i.i.prol
  %.unr = phi i32 [ %i.bz, %bb.j ], [ %i.ci, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  %.unr347 = phi i32 [ %i.ca, %bb.j ], [ %i.cj, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  %.unr348 = phi ptr [ %.promoted.i.i26.i.i, %bb.j ], [ %i.cg, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  br label %bb.l

bb.l:                                             ; preds = %_m3dstbi__zget8.exit.i.i29.i.i.1, %.new
  %i.ck = phi i32 [ %.unr, %.new ], [ %i.cz, %_m3dstbi__zget8.exit.i.i29.i.i.1 ]
  %i.cl = phi i32 [ %.unr347, %.new ], [ %i.da, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %i.cm = phi ptr [ %.unr348, %.new ], [ %i.cx, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %.not.i.i.i28.i.i = icmp ult ptr %i.cm, %i.cc
  br i1 %.not.i.i.i28.i.i, label %bb.m, label %_m3dstbi__zget8.exit.i.i29.i.i

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  store ptr %i.cn, ptr %6, align 8
  %i.co = load i8, ptr %i.cm, align 1
  %i.cp = zext i8 %i.co to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i

_m3dstbi__zget8.exit.i.i29.i.i:                   ; preds = %bb.m, %bb.l
  %i.cq = phi ptr [ %i.cn, %bb.m ], [ %i.cm, %bb.l ] ; 4 uses
  %.0.i.i.i30.i.i = phi i32 [ %i.cp, %bb.m ], [ 0, %bb.l ]
  %i.cr = shl i32 %.0.i.i.i30.i.i, %i.cl
  %i.cs = or i32 %i.cr, %i.ck                     ; 2 uses
  store i32 %i.cs, ptr %i.ab, align 4
  %i.ct = add nuw nsw i32 %i.cl, 8                ; 2 uses
  store i32 %i.ct, ptr %i.aa, align 8
  %.not.i.i.i28.i.i.1 = icmp ult ptr %i.cq, %i.cc
  br i1 %.not.i.i.i28.i.i.1, label %bb.n, label %_m3dstbi__zget8.exit.i.i29.i.i.1

bb.n:                                             ; preds = %_m3dstbi__zget8.exit.i.i29.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cu, ptr %6, align 8
  %i.cv = load i8, ptr %i.cq, align 1
  %i.cw = zext i8 %i.cv to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i.1

_m3dstbi__zget8.exit.i.i29.i.i.1:                 ; preds = %bb.n, %_m3dstbi__zget8.exit.i.i29.i.i
  %i.cx = phi ptr [ %i.cu, %bb.n ], [ %i.cq, %_m3dstbi__zget8.exit.i.i29.i.i ]
  %.0.i.i.i30.i.i.1 = phi i32 [ %i.cw, %bb.n ], [ 0, %_m3dstbi__zget8.exit.i.i29.i.i ]
  %i.cy = shl i32 %.0.i.i.i30.i.i.1, %i.ct
  %i.cz = or i32 %i.cy, %i.cs                     ; 3 uses
  store i32 %i.cz, ptr %i.ab, align 4
  %i.da = add nuw nsw i32 %i.cl, 16               ; 3 uses
  store i32 %i.da, ptr %i.aa, align 8
  %i.db = icmp slt i32 %i.cl, 9
  br i1 %i.db, label %bb.l, label %_m3dstbi__zreceive.exit31.i.i

_m3dstbi__zreceive.exit31.i.i:                    ; preds = %_m3dstbi__zget8.exit.i.i29.i.i.1, %_m3dstbi__zreceive.exit.i.i, %_m3dstbi__zreceive.exit.thread.i.i
  %.in.i.i = phi i32 [ %.promoted6.i.i.i.i, %_m3dstbi__zreceive.exit.i.i ], [ %.lcssa312, %_m3dstbi__zreceive.exit.thread.i.i ], [ %.promoted6.i.i.i.i, %_m3dstbi__zget8.exit.i.i29.i.i.1 ]
  %i.dc = phi i32 [ %i.ca, %_m3dstbi__zreceive.exit.i.i ], [ %i.by, %_m3dstbi__zreceive.exit.thread.i.i ], [ %i.da, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %i.dd = phi i32 [ %i.bz, %_m3dstbi__zreceive.exit.i.i ], [ %i.bx, %_m3dstbi__zreceive.exit.thread.i.i ], [ %i.cz, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 2 uses
  %i.de = and i32 %.in.i.i, 1
  %i.df = and i32 %i.dd, 3
  %i.dg = lshr i32 %i.dd, 2                       ; 6 uses
  store i32 %i.dg, ptr %i.ab, align 4
  %i.dh = add nsw i32 %i.dc, -2                   ; 7 uses
  store i32 %i.dh, ptr %i.aa, align 8
  switch i32 %i.df, label %default.unreachable [
    i32 0, label %bb.o
    i32 3, label %.loopexit
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.o:                                             ; preds = %_m3dstbi__zreceive.exit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  %i.di = and i32 %i.dh, 7                        ; 2 uses
  %.not.i32.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i32.i.i, label %bb.p, label %_m3dstbi__zreceive.exit.i.i.i

_m3dstbi__zreceive.exit.i.i.i:                    ; preds = %bb.o
  %i.dj = lshr i32 %i.dg, %i.di                   ; 2 uses
  store i32 %i.dj, ptr %i.ab, align 4
  %i.dk = and i32 %i.dh, -8                       ; 2 uses
  store i32 %i.dk, ptr %i.aa, align 8
  br label %bb.p

bb.p:                                             ; preds = %_m3dstbi__zreceive.exit.i.i.i, %bb.o
  %.promoted.i.i.i = phi i32 [ %i.dj, %_m3dstbi__zreceive.exit.i.i.i ], [ %i.dg, %bb.o ] ; 3 uses
  %.pr.i.i.i = phi i32 [ %i.dk, %_m3dstbi__zreceive.exit.i.i.i ], [ %i.dh, %bb.o ] ; 4 uses
  %.not263.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not263.i.i, label %.lr.ph42.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.dl = add nsw i32 %.pr.i.i.i, -1              ; 2 uses
  %i.dm = lshr i32 %i.dl, 3
  %i.dn = add nuw nsw i32 %i.dm, 1
  %wide.trip.count.i.i = zext nneg i32 %i.dn to i64 ; 3 uses
  %xtraiter429 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.do = icmp ult i32 %.pr.i.i.i, 25
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741820
  br label %bb.s

.preheader.i.i.i.unr-lcssa:                       ; preds = %bb.s
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod431.not, label %.preheader.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %.preheader.i.i.i.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod434 = icmp ne i64 %xtraiter429, 0
  tail call void @llvm.assume(i1 %lcmp.mod434)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.q ] ; 3 uses
  %i.dp = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.ds, %bb.q ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.dq = trunc i32 %i.dp to i8
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i.epil
  store i8 %i.dq, ptr %i.dr, align 1
  %i.ds = lshr i32 %i.dp, 8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter429
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.epilog-lcssa, label %bb.q, !llvm.loop !64

.preheader.i.i.i.epilog-lcssa:                    ; preds = %bb.q
  %i.dt = icmp samesign ult i64 %indvars.iv.i.i.i.epil, 3
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.unr-lcssa, %.preheader.i.i.i.epilog-lcssa
  %indvars.iv.i.i.i.lcssa = phi i1 [ false, %.preheader.i.i.i.unr-lcssa ], [ %i.dt, %.preheader.i.i.i.epilog-lcssa ]
  %.lcssa345 = phi i32 [ 0, %.preheader.i.i.i.unr-lcssa ], [ %i.ds, %.preheader.i.i.i.epilog-lcssa ] ; 3 uses
  %i.du = add i32 %.pr.i.i.i, -8
  %i.dv = and i32 %i.dl, -8
  %i.dw = sub i32 %i.du, %i.dv                    ; 3 uses
  store i32 %.lcssa345, ptr %i.ab, align 4
  store i32 %i.dw, ptr %i.aa, align 8
  br i1 %indvars.iv.i.i.i.lcssa, label %.lr.ph42.i.i.i, label %._crit_edge.i.i.i

.lr.ph42.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.p
  %.pr.i.i116 = phi i32 [ %i.dw, %.preheader.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %.pre.i.i.i111 = phi i32 [ %.lcssa345, %.preheader.i.i.i ], [ %.promoted.i.i.i, %bb.p ] ; 2 uses
  %.0.lcssa61.i.i.i = phi i64 [ %wide.trip.count.i.i, %.preheader.i.i.i ], [ 0, %bb.p ] ; 5 uses
  %i.dx = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted43.i.i.i = load ptr, ptr %6, align 8  ; 5 uses
  %xtraiter437 = and i64 %.0.lcssa61.i.i.i, 1
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  br i1 %lcmp.mod438.not, label %.prol.loopexit436, label %.prol.preheader435

.prol.preheader435:                               ; preds = %.lr.ph42.i.i.i
  %.not.i.i33.i.i.prol = icmp ult ptr %.promoted43.i.i.i, %i.dx
  br i1 %.not.i.i33.i.i.prol, label %bb.r, label %_m3dstbi__zget8.exit.i34.i.i.prol

bb.r:                                             ; preds = %.prol.preheader435
  %i.dy = getelementptr inbounds nuw i8, ptr %.promoted43.i.i.i, i64 1 ; 2 uses
  store ptr %i.dy, ptr %6, align 8
  %i.dz = load i8, ptr %.promoted43.i.i.i, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i.prol

_m3dstbi__zget8.exit.i34.i.i.prol:                ; preds = %bb.r, %.prol.preheader435
  %i.ea = phi ptr [ %i.dy, %bb.r ], [ %.promoted43.i.i.i, %.prol.preheader435 ]
  %.0.i.i35.i.i.prol = phi i8 [ %i.dz, %bb.r ], [ 0, %.prol.preheader435 ]
  %indvars.iv.next50.i.i.i.prol = add nuw nsw i64 %.0.lcssa61.i.i.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa61.i.i.i
  store i8 %.0.i.i35.i.i.prol, ptr %i.eb, align 1
  br label %.prol.loopexit436

.prol.loopexit436:                                ; preds = %_m3dstbi__zget8.exit.i34.i.i.prol, %.lr.ph42.i.i.i
  %indvars.iv49.i.i.i.unr = phi i64 [ %.0.lcssa61.i.i.i, %.lr.ph42.i.i.i ], [ %indvars.iv.next50.i.i.i.prol, %_m3dstbi__zget8.exit.i34.i.i.prol ]
  %.unr440 = phi ptr [ %.promoted43.i.i.i, %.lr.ph42.i.i.i ], [ %i.ea, %_m3dstbi__zget8.exit.i34.i.i.prol ]
  %i.ec = icmp eq i64 %.0.lcssa61.i.i.i, 3
  br i1 %i.ec, label %._crit_edge.i.i.i, label %.lr.ph42.i.i.i.new

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.s ] ; 5 uses
  %i.ed = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i.new ], [ 0, %bb.s ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.s ]
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  store i8 %i.ee, ptr %i.ef, align 2
  %i.eg = lshr i32 %i.ed, 8
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %i.eh, ptr %i.ej, align 1
  %i.ek = lshr i32 %i.ed, 16
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i8 %i.el, ptr %i.en, align 2
  %i.eo = lshr i32 %i.ed, 24
  %i.ep = trunc nuw i32 %i.eo to i8
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  store i8 %i.ep, ptr %i.er, align 1
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.unr-lcssa, label %bb.s

.lr.ph42.i.i.i.new:                               ; preds = %.prol.loopexit436, %_m3dstbi__zget8.exit.i34.i.i.1
  %indvars.iv49.i.i.i = phi i64 [ %indvars.iv.next50.i.i.i.1, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %indvars.iv49.i.i.i.unr, %.prol.loopexit436 ] ; 3 uses
  %i.es = phi ptr [ %i.ez, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.unr440, %.prol.loopexit436 ] ; 4 uses
  %.not.i.i33.i.i = icmp ult ptr %i.es, %i.dx
  br i1 %.not.i.i33.i.i, label %bb.t, label %_m3dstbi__zget8.exit.i34.i.i

bb.t:                                             ; preds = %.lr.ph42.i.i.i.new
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 2 uses
  store ptr %i.et, ptr %6, align 8
  %i.eu = load i8, ptr %i.es, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i

_m3dstbi__zget8.exit.i34.i.i:                     ; preds = %bb.t, %.lr.ph42.i.i.i.new
  %i.ev = phi ptr [ %i.et, %bb.t ], [ %i.es, %.lr.ph42.i.i.i.new ] ; 4 uses
  %.0.i.i35.i.i = phi i8 [ %i.eu, %bb.t ], [ 0, %.lr.ph42.i.i.i.new ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i.i
  store i8 %.0.i.i35.i.i, ptr %i.ew, align 1
  %.not.i.i33.i.i.1 = icmp ult ptr %i.ev, %i.dx
  br i1 %.not.i.i33.i.i.1, label %bb.u, label %_m3dstbi__zget8.exit.i34.i.i.1

bb.u:                                             ; preds = %_m3dstbi__zget8.exit.i34.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  store ptr %i.ex, ptr %6, align 8
  %i.ey = load i8, ptr %i.ev, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i.1

_m3dstbi__zget8.exit.i34.i.i.1:                   ; preds = %bb.u, %_m3dstbi__zget8.exit.i34.i.i
  %i.ez = phi ptr [ %i.ex, %bb.u ], [ %i.ev, %_m3dstbi__zget8.exit.i34.i.i ]
  %.0.i.i35.i.i.1 = phi i8 [ %i.ey, %bb.u ], [ 0, %_m3dstbi__zget8.exit.i34.i.i ]
  %indvars.iv.next50.i.i.i.1 = add nuw nsw i64 %indvars.iv49.i.i.i, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store i8 %.0.i.i35.i.i.1, ptr %i.fb, align 1
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next50.i.i.i.1, 4
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph42.i.i.i.new

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit436, %_m3dstbi__zget8.exit.i34.i.i.1, %.preheader.i.i.i
  %.pr.i.i115 = phi i32 [ %i.dw, %.preheader.i.i.i ], [ %.pr.i.i116, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.pr.i.i116, %.prol.loopexit436 ]
  %.pre.i.i.i110 = phi i32 [ %.lcssa345, %.preheader.i.i.i ], [ %.pre.i.i.i111, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.pre.i.i.i111, %.prol.loopexit436 ]
  %i.fc = load i16, ptr %i.c, align 2             ; 3 uses
  %i.fd = zext i16 %i.fc to i32
  %i.fe = load i16, ptr %i.aq, align 2
  %i.ff = xor i16 %i.fe, %i.fc
  %.not31.i.i.i = icmp eq i16 %i.ff, -1
  br i1 %.not31.i.i.i, label %bb.v, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.fg = load ptr, ptr %6, align 8               ; 2 uses
  %i.fh = zext i16 %i.fc to i64                   ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh ; 2 uses
  %i.fj = load ptr, ptr %i.i, align 8
  %i.fk = icmp ugt ptr %i.fi, %i.fj
  br i1 %i.fk, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.fh
  %i.fm = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.fn = icmp ugt ptr %i.fl, %i.fm
  br i1 %i.fn, label %bb.x, label %_m3dstbi__parse_uncompressed_block.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.fo = load i32, ptr %i.n, align 8
  %.not.i33.i.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i33.i.i.i, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.fq = ptrtoint ptr %i.ar to i64
  %i.fr = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 2 uses
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = ptrtoint ptr %i.fm to i64
  %i.fv = sub i64 %i.fu, %i.fr
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = add nsw i32 %i.ft, %i.fd
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0.i34.i.i.i = phi i32 [ %i.fw, %bb.y ], [ %i.fz, %bb.z ] ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, %.0.i34.i.i.i
  %i.fz = shl nsw i32 %.0.i34.i.i.i, 1
  br i1 %i.fy, label %bb.z, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = sext i32 %.0.i34.i.i.i to i64           ; 2 uses
  %i.gb = tail call ptr @realloc(ptr noundef %i.fp, i64 noundef %i.ga) #52 ; 4 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %_m3dstbi__zexpand.exit.i.i.i

_m3dstbi__zexpand.exit.i.i.i:                     ; preds = %bb.aa
  store ptr %i.gb, ptr %i.j, align 8
  %sext.i.i.i.i = shl i64 %i.fs, 32
  %i.gd = ashr exact i64 %sext.i.i.i.i, 32
  %i.ge = getelementptr inbounds i8, ptr %i.gb, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.gb, i64 %i.ga
  store ptr %i.gf, ptr %i.m, align 8
  br label %_m3dstbi__parse_uncompressed_block.exit.i.i

_m3dstbi__parse_uncompressed_block.exit.thread.i.i: ; preds = %bb.aa, %bb.x, %bb.v, %._crit_edge.i.i.i
  %.str.319.sink.i.i = phi ptr [ @.str.319, %bb.v ], [ @.str.319, %._crit_edge.i.i.i ], [ @.str.319, %bb.x ], [ @.str.320, %bb.aa ]
  store ptr %.str.319.sink.i.i, ptr @_m3dstbi__g_failure_reason, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %.loopexit

_m3dstbi__parse_uncompressed_block.exit.i.i:      ; preds = %_m3dstbi__zexpand.exit.i.i.i, %bb.w
  %i.gg = phi ptr [ %i.ge, %_m3dstbi__zexpand.exit.i.i.i ], [ %i.ar, %bb.w ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.fg, i64 %i.fh, i1 false)
  store ptr %i.fi, ptr %6, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fh ; 2 uses
  store ptr %i.gh, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %bb.dx

bb.ab:                                            ; preds = %_m3dstbi__zreceive.exit31.i.i
  %i.gi = call fastcc i32 @_m3dstbi__zbuild_huffman(ptr noundef %i.ag, ptr noundef nonnull @_m3dstbi__zdefault_length, i32 noundef 288)
  %.not18.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not18.i.i, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gj = call fastcc i32 @_m3dstbi__zbuild_huffman(ptr noundef %i.ah, ptr noundef nonnull @_m3dstbi__zdefault_distance, i32 noundef 32)
  %.not19.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not19.i.i, label %.loopexit, label %bb.cc

default.unreachable:                              ; preds = %_m3dstbi__zreceive.exit31.i.i
  unreachable

bb.ad:                                            ; preds = %_m3dstbi__zreceive.exit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.gk = icmp samesign ult i32 %i.dc, 7
  br i1 %i.gk, label %bb.ae, label %_m3dstbi__zreceive.exit.i40.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.gl = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i.i50.i.i = load ptr, ptr %6, align 8 ; 5 uses
  %lcmp.mod361.not.not = icmp ugt i32 %i.dc, 2
  br i1 %lcmp.mod361.not.not, label %.prol.preheader357, label %.new359

.prol.preheader357:                               ; preds = %bb.ae
  %.not.i.i.i.i52.i.i.prol = icmp ult ptr %.promoted.i.i.i50.i.i, %i.gl
  br i1 %.not.i.i.i.i52.i.i.prol, label %bb.af, label %_m3dstbi__zget8.exit.i.i.i53.i.i.prol

bb.af:                                            ; preds = %.prol.preheader357
  %i.gm = getelementptr inbounds nuw i8, ptr %.promoted.i.i.i50.i.i, i64 1 ; 2 uses
  store ptr %i.gm, ptr %6, align 8
  %i.gn = load i8, ptr %.promoted.i.i.i50.i.i, align 1
  %i.go = zext i8 %i.gn to i32
  br label %_m3dstbi__zget8.exit.i.i.i53.i.i.prol

_m3dstbi__zget8.exit.i.i.i53.i.i.prol:            ; preds = %bb.af, %.prol.preheader357
  %i.gp = phi ptr [ %i.gm, %bb.af ], [ %.promoted.i.i.i50.i.i, %.prol.preheader357 ]
  %.0.i.i.i.i54.i.i.prol = phi i32 [ %i.go, %bb.af ], [ 0, %.prol.preheader357 ]
  %i.gq = shl i32 %.0.i.i.i.i54.i.i.prol, %i.dh
  %i.gr = or i32 %i.gq, %i.dg                     ; 2 uses
  store i32 %i.gr, ptr %i.ab, align 4
  %i.gs = add nuw nsw i32 %i.dc, 6                ; 2 uses
  store i32 %i.gs, ptr %i.aa, align 8
  br label %.new359

.new359:                                          ; preds = %bb.ae, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol
  %.unr362 = phi i32 [ %i.dg, %bb.ae ], [ %i.gr, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol ]
  %.unr363 = phi i32 [ %i.dh, %bb.ae ], [ %i.gs, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol ]
  %.unr364 = phi ptr [ %.promoted.i.i.i50.i.i, %bb.ae ], [ %i.gp, %_m3dstbi__zget8.exit.i.i.i53.i.i.prol ]
  br label %bb.ag

bb.ag:                                            ; preds = %_m3dstbi__zget8.exit.i.i.i53.i.i.1, %.new359
  %i.gt = phi i32 [ %.unr362, %.new359 ], [ %i.hi, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ]
  %i.gu = phi i32 [ %.unr363, %.new359 ], [ %i.hj, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 4 uses
  %i.gv = phi ptr [ %.unr364, %.new359 ], [ %i.hg, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 4 uses
  %.not.i.i.i.i52.i.i = icmp ult ptr %i.gv, %i.gl
  br i1 %.not.i.i.i.i52.i.i, label %bb.ah, label %_m3dstbi__zget8.exit.i.i.i53.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1 ; 2 uses
  store ptr %i.gw, ptr %6, align 8
  %i.gx = load i8, ptr %i.gv, align 1
  %i.gy = zext i8 %i.gx to i32
  br label %_m3dstbi__zget8.exit.i.i.i53.i.i

_m3dstbi__zget8.exit.i.i.i53.i.i:                 ; preds = %bb.ah, %bb.ag
  %i.gz = phi ptr [ %i.gw, %bb.ah ], [ %i.gv, %bb.ag ] ; 4 uses
  %.0.i.i.i.i54.i.i = phi i32 [ %i.gy, %bb.ah ], [ 0, %bb.ag ]
  %i.ha = shl i32 %.0.i.i.i.i54.i.i, %i.gu
  %i.hb = or i32 %i.ha, %i.gt                     ; 2 uses
  store i32 %i.hb, ptr %i.ab, align 4
  %i.hc = add nsw i32 %i.gu, 8                    ; 2 uses
  store i32 %i.hc, ptr %i.aa, align 8
  %.not.i.i.i.i52.i.i.1 = icmp ult ptr %i.gz, %i.gl
  br i1 %.not.i.i.i.i52.i.i.1, label %bb.ai, label %_m3dstbi__zget8.exit.i.i.i53.i.i.1

bb.ai:                                            ; preds = %_m3dstbi__zget8.exit.i.i.i53.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 2 uses
  store ptr %i.hd, ptr %6, align 8
  %i.he = load i8, ptr %i.gz, align 1
  %i.hf = zext i8 %i.he to i32
  br label %_m3dstbi__zget8.exit.i.i.i53.i.i.1

_m3dstbi__zget8.exit.i.i.i53.i.i.1:               ; preds = %bb.ai, %_m3dstbi__zget8.exit.i.i.i53.i.i
  %i.hg = phi ptr [ %i.hd, %bb.ai ], [ %i.gz, %_m3dstbi__zget8.exit.i.i.i53.i.i ]
  %.0.i.i.i.i54.i.i.1 = phi i32 [ %i.hf, %bb.ai ], [ 0, %_m3dstbi__zget8.exit.i.i.i53.i.i ]
  %i.hh = shl i32 %.0.i.i.i.i54.i.i.1, %i.hc
  %i.hi = or i32 %i.hh, %i.hb                     ; 3 uses
  store i32 %i.hi, ptr %i.ab, align 4
  %i.hj = add nsw i32 %i.gu, 16                   ; 3 uses
  store i32 %i.hj, ptr %i.aa, align 8
  %i.hk = icmp slt i32 %i.gu, 9
  br i1 %i.hk, label %bb.ag, label %_m3dstbi__zreceive.exit.i40.i.i

_m3dstbi__zreceive.exit.i40.i.i:                  ; preds = %_m3dstbi__zget8.exit.i.i.i53.i.i.1, %bb.ad
  %i.hl = phi i32 [ %i.dh, %bb.ad ], [ %i.hj, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 4 uses
  %i.hm = phi i32 [ %i.dg, %bb.ad ], [ %i.hi, %_m3dstbi__zget8.exit.i.i.i53.i.i.1 ] ; 2 uses
  %i.hn = and i32 %i.hm, 31
  %i.ho = lshr i32 %i.hm, 5                       ; 4 uses
  store i32 %i.ho, ptr %i.ab, align 4
  %i.hp = add nsw i32 %i.hl, -5                   ; 4 uses
  store i32 %i.hp, ptr %i.aa, align 8
  %i.hq = add nuw nsw i32 %i.hn, 257              ; 3 uses
  %i.hr = icmp samesign ult i32 %i.hl, 10
  br i1 %i.hr, label %bb.aj, label %_m3dstbi__zreceive.exit69.i.i.i

bb.aj:                                            ; preds = %_m3dstbi__zreceive.exit.i40.i.i
  %i.hs = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i64.i.i.i = load ptr, ptr %6, align 8 ; 5 uses
  %lcmp.mod369.not.not = icmp ugt i32 %i.hl, 5
  br i1 %lcmp.mod369.not.not, label %.prol.preheader365, label %.new367

.prol.preheader365:                               ; preds = %bb.aj
  %.not.i.i.i66.i.i.i.prol = icmp ult ptr %.promoted.i.i64.i.i.i, %i.hs
  br i1 %.not.i.i.i66.i.i.i.prol, label %bb.ak, label %_m3dstbi__zget8.exit.i.i67.i.i.i.prol

bb.ak:                                            ; preds = %.prol.preheader365
  %i.ht = getelementptr inbounds nuw i8, ptr %.promoted.i.i64.i.i.i, i64 1 ; 2 uses
  store ptr %i.ht, ptr %6, align 8
  %i.hu = load i8, ptr %.promoted.i.i64.i.i.i, align 1
  %i.hv = zext i8 %i.hu to i32
  br label %_m3dstbi__zget8.exit.i.i67.i.i.i.prol

_m3dstbi__zget8.exit.i.i67.i.i.i.prol:            ; preds = %bb.ak, %.prol.preheader365
  %i.hw = phi ptr [ %i.ht, %bb.ak ], [ %.promoted.i.i64.i.i.i, %.prol.preheader365 ]
  %.0.i.i.i68.i.i.i.prol = phi i32 [ %i.hv, %bb.ak ], [ 0, %.prol.preheader365 ]
  %i.hx = shl i32 %.0.i.i.i68.i.i.i.prol, %i.hp
  %i.hy = or i32 %i.hx, %i.ho                     ; 2 uses
  store i32 %i.hy, ptr %i.ab, align 4
  %i.hz = add nuw nsw i32 %i.hl, 3                ; 2 uses
  store i32 %i.hz, ptr %i.aa, align 8
  br label %.new367

.new367:                                          ; preds = %bb.aj, %_m3dstbi__zget8.exit.i.i67.i.i.i.prol
  %.unr370 = phi i32 [ %i.ho, %bb.aj ], [ %i.hy, %_m3dstbi__zget8.exit.i.i67.i.i.i.prol ]
  %.unr371 = phi i32 [ %i.hp, %bb.aj ], [ %i.hz, %_m3dstbi__zget8.exit.i.i67.i.i.i.prol ]
  %.unr372 = phi ptr [ %.promoted.i.i64.i.i.i, %bb.aj ], [ %i.hw, %_m3dstbi__zget8.exit.i.i67.i.i.i.prol ]
  br label %bb.al

bb.al:                                            ; preds = %_m3dstbi__zget8.exit.i.i67.i.i.i.1, %.new367
  %i.ia = phi i32 [ %.unr370, %.new367 ], [ %i.ip, %_m3dstbi__zget8.exit.i.i67.i.i.i.1 ]
  %i.ib = phi i32 [ %.unr371, %.new367 ], [ %i.iq, %_m3dstbi__zget8.exit.i.i67.i.i.i.1 ] ; 4 uses
  %i.ic = phi ptr [ %.unr372, %.new367 ], [ %i.in, %_m3dstbi__zget8.exit.i.i67.i.i.i.1 ] ; 4 uses
  %.not.i.i.i66.i.i.i = icmp ult ptr %i.ic, %i.hs
  br i1 %.not.i.i.i66.i.i.i, label %bb.am, label %_m3dstbi__zget8.exit.i.i67.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 1 ; 2 uses
  store ptr %i.id, ptr %6, align 8
  %i.ie = load i8, ptr %i.ic, align 1
  %i.if = zext i8 %i.ie to i32
  br label %_m3dstbi__zget8.exit.i.i67.i.i.i

_m3dstbi__zget8.exit.i.i67.i.i.i:                 ; preds = %bb.am, %bb.al
  %i.ig = phi ptr [ %i.id, %bb.am ], [ %i.ic, %bb.al ] ; 4 uses
  %.0.i.i.i68.i.i.i = phi i32 [ %i.if, %bb.am ], [ 0, %bb.al ]
  %i.ih = shl i32 %.0.i.i.i68.i.i.i, %i.ib
  %i.ii = or i32 %i.ih, %i.ia                     ; 2 uses
  store i32 %i.ii, ptr %i.ab, align 4
  %i.ij = add nsw i32 %i.ib, 8                    ; 2 uses
  store i32 %i.ij, ptr %i.aa, align 8
  %.not.i.i.i66.i.i.i.1 = icmp ult ptr %i.ig, %i.hs
  br i1 %.not.i.i.i66.i.i.i.1, label %bb.an, label %_m3dstbi__zget8.exit.i.i67.i.i.i.1

bb.an:                                            ; preds = %_m3dstbi__zget8.exit.i.i67.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 1 ; 2 uses
  store ptr %i.ik, ptr %6, align 8
  %i.il = load i8, ptr %i.ig, align 1
  %i.im = zext i8 %i.il to i32
  br label %_m3dstbi__zget8.exit.i.i67.i.i.i.1

_m3dstbi__zget8.exit.i.i67.i.i.i.1:               ; preds = %bb.an, %_m3dstbi__zget8.exit.i.i67.i.i.i
  %i.in = phi ptr [ %i.ik, %bb.an ], [ %i.ig, %_m3dstbi__zget8.exit.i.i67.i.i.i ]
  %.0.i.i.i68.i.i.i.1 = phi i32 [ %i.im, %bb.an ], [ 0, %_m3dstbi__zget8.exit.i.i67.i.i.i ]
  %i.io = shl i32 %.0.i.i.i68.i.i.i.1, %i.ij
  %i.ip = or i32 %i.io, %i.ii                     ; 3 uses
  store i32 %i.ip, ptr %i.ab, align 4
  %i.iq = add nsw i32 %i.ib, 16                   ; 3 uses
  store i32 %i.iq, ptr %i.aa, align 8
  %i.ir = icmp slt i32 %i.ib, 9
  br i1 %i.ir, label %bb.al, label %_m3dstbi__zreceive.exit69.i.i.i

_m3dstbi__zreceive.exit69.i.i.i:                  ; preds = %_m3dstbi__zget8.exit.i.i67.i.i.i.1, %_m3dstbi__zreceive.exit.i40.i.i
  %i.is = phi i32 [ %i.hp, %_m3dstbi__zreceive.exit.i40.i.i ], [ %i.iq, %_m3dstbi__zget8.exit.i.i67.i.i.i.1 ] ; 4 uses
  %i.it = phi i32 [ %i.ho, %_m3dstbi__zreceive.exit.i40.i.i ], [ %i.ip, %_m3dstbi__zget8.exit.i.i67.i.i.i.1 ] ; 2 uses
  %i.iu = and i32 %i.it, 31
  %i.iv = lshr i32 %i.it, 5                       ; 4 uses
  store i32 %i.iv, ptr %i.ab, align 4
  %i.iw = add nsw i32 %i.is, -5                   ; 4 uses
  store i32 %i.iw, ptr %i.aa, align 8
  %i.ix = add nuw nsw i32 %i.iu, 1                ; 2 uses
  %i.iy = icmp samesign ult i32 %i.is, 9
  br i1 %i.iy, label %bb.ao, label %_m3dstbi__zreceive.exit69.i.i.i._m3dstbi__zreceive.exit78.i.i.i_crit_edge

_m3dstbi__zreceive.exit69.i.i.i._m3dstbi__zreceive.exit78.i.i.i_crit_edge: ; preds = %_m3dstbi__zreceive.exit69.i.i.i
  %.promoted.pre = load ptr, ptr %6, align 8
  %.pre = load ptr, ptr %i.i, align 8
  br label %_m3dstbi__zreceive.exit78.i.i.i

bb.ao:                                            ; preds = %_m3dstbi__zreceive.exit69.i.i.i
  %i.iz = load ptr, ptr %i.i, align 8             ; 4 uses
  %.promoted.i.i73.i.i.i = load ptr, ptr %6, align 8 ; 5 uses
  %lcmp.mod377.not.not = icmp ugt i32 %i.is, 5
  br i1 %lcmp.mod377.not.not, label %.prol.preheader373, label %.new375

.prol.preheader373:                               ; preds = %bb.ao
  %.not.i.i.i75.i.i.i.prol = icmp ult ptr %.promoted.i.i73.i.i.i, %i.iz
  br i1 %.not.i.i.i75.i.i.i.prol, label %bb.ap, label %_m3dstbi__zget8.exit.i.i76.i.i.i.prol

bb.ap:                                            ; preds = %.prol.preheader373
  %i.ja = getelementptr inbounds nuw i8, ptr %.promoted.i.i73.i.i.i, i64 1 ; 2 uses
  store ptr %i.ja, ptr %6, align 8
  %i.jb = load i8, ptr %.promoted.i.i73.i.i.i, align 1
  %i.jc = zext i8 %i.jb to i32
  br label %_m3dstbi__zget8.exit.i.i76.i.i.i.prol

_m3dstbi__zget8.exit.i.i76.i.i.i.prol:            ; preds = %bb.ap, %.prol.preheader373
  %i.jd = phi ptr [ %i.ja, %bb.ap ], [ %.promoted.i.i73.i.i.i, %.prol.preheader373 ]
  %.0.i.i.i77.i.i.i.prol = phi i32 [ %i.jc, %bb.ap ], [ 0, %.prol.preheader373 ]
  %i.je = shl i32 %.0.i.i.i77.i.i.i.prol, %i.iw
  %i.jf = or i32 %i.je, %i.iv                     ; 2 uses
  store i32 %i.jf, ptr %i.ab, align 4
  %i.jg = add nuw nsw i32 %i.is, 3                ; 2 uses
  store i32 %i.jg, ptr %i.aa, align 8
  br label %.new375

.new375:                                          ; preds = %bb.ao, %_m3dstbi__zget8.exit.i.i76.i.i.i.prol
  %.unr378 = phi i32 [ %i.iv, %bb.ao ], [ %i.jf, %_m3dstbi__zget8.exit.i.i76.i.i.i.prol ]
  %.unr379 = phi i32 [ %i.iw, %bb.ao ], [ %i.jg, %_m3dstbi__zget8.exit.i.i76.i.i.i.prol ]
  %.unr380 = phi ptr [ %.promoted.i.i73.i.i.i, %bb.ao ], [ %i.jd, %_m3dstbi__zget8.exit.i.i76.i.i.i.prol ]
  br label %bb.aq

bb.aq:                                            ; preds = %_m3dstbi__zget8.exit.i.i76.i.i.i.1, %.new375
  %i.jh = phi i32 [ %.unr378, %.new375 ], [ %i.jw, %_m3dstbi__zget8.exit.i.i76.i.i.i.1 ]
  %i.ji = phi i32 [ %.unr379, %.new375 ], [ %i.jx, %_m3dstbi__zget8.exit.i.i76.i.i.i.1 ] ; 4 uses
  %i.jj = phi ptr [ %.unr380, %.new375 ], [ %i.ju, %_m3dstbi__zget8.exit.i.i76.i.i.i.1 ] ; 4 uses
  %.not.i.i.i75.i.i.i = icmp ult ptr %i.jj, %i.iz
  br i1 %.not.i.i.i75.i.i.i, label %bb.ar, label %_m3dstbi__zget8.exit.i.i76.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1 ; 2 uses
  store ptr %i.jk, ptr %6, align 8
  %i.jl = load i8, ptr %i.jj, align 1
  %i.jm = zext i8 %i.jl to i32
  br label %_m3dstbi__zget8.exit.i.i76.i.i.i

_m3dstbi__zget8.exit.i.i76.i.i.i:                 ; preds = %bb.ar, %bb.aq
  %i.jn = phi ptr [ %i.jk, %bb.ar ], [ %i.jj, %bb.aq ] ; 4 uses
  %.0.i.i.i77.i.i.i = phi i32 [ %i.jm, %bb.ar ], [ 0, %bb.aq ]
  %i.jo = shl i32 %.0.i.i.i77.i.i.i, %i.ji
  %i.jp = or i32 %i.jo, %i.jh                     ; 2 uses
  store i32 %i.jp, ptr %i.ab, align 4
  %i.jq = add nsw i32 %i.ji, 8                    ; 2 uses
  store i32 %i.jq, ptr %i.aa, align 8
  %.not.i.i.i75.i.i.i.1 = icmp ult ptr %i.jn, %i.iz
  br i1 %.not.i.i.i75.i.i.i.1, label %bb.as, label %_m3dstbi__zget8.exit.i.i76.i.i.i.1

bb.as:                                            ; preds = %_m3dstbi__zget8.exit.i.i76.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 1 ; 2 uses
  store ptr %i.jr, ptr %6, align 8
  %i.js = load i8, ptr %i.jn, align 1
  %i.jt = zext i8 %i.js to i32
  br label %_m3dstbi__zget8.exit.i.i76.i.i.i.1

_m3dstbi__zget8.exit.i.i76.i.i.i.1:               ; preds = %bb.as, %_m3dstbi__zget8.exit.i.i76.i.i.i
  %i.ju = phi ptr [ %i.jr, %bb.as ], [ %i.jn, %_m3dstbi__zget8.exit.i.i76.i.i.i ] ; 2 uses
  %.0.i.i.i77.i.i.i.1 = phi i32 [ %i.jt, %bb.as ], [ 0, %_m3dstbi__zget8.exit.i.i76.i.i.i ]
  %i.jv = shl i32 %.0.i.i.i77.i.i.i.1, %i.jq
  %i.jw = or i32 %i.jv, %i.jp                     ; 3 uses
  store i32 %i.jw, ptr %i.ab, align 4
  %i.jx = add nsw i32 %i.ji, 16                   ; 3 uses
  store i32 %i.jx, ptr %i.aa, align 8
  %i.jy = icmp slt i32 %i.ji, 9
  br i1 %i.jy, label %bb.aq, label %_m3dstbi__zreceive.exit78.i.i.i

_m3dstbi__zreceive.exit78.i.i.i:                  ; preds = %_m3dstbi__zget8.exit.i.i76.i.i.i.1, %_m3dstbi__zreceive.exit69.i.i.i._m3dstbi__zreceive.exit78.i.i.i_crit_edge
  %i.jz = phi ptr [ %.pre, %_m3dstbi__zreceive.exit69.i.i.i._m3dstbi__zreceive.exit78.i.i.i_crit_edge ], [ %i.iz, %_m3dstbi__zget8.exit.i.i76.i.i.i.1 ] ; 3 uses
  %.promoted = phi ptr [ %.promoted.pre, %_m3dstbi__zreceive.exit69.i.i.i._m3dstbi__zreceive.exit78.i.i.i_crit_edge ], [ %i.ju, %_m3dstbi__zget8.exit.i.i76.i.i.i.1 ]
  %i.ka = phi i32 [ %i.iw, %_m3dstbi__zreceive.exit69.i.i.i._m3dstbi__zreceive.exit78.i.i.i_crit_edge ], [ %i.jx, %_m3dstbi__zget8.exit.i.i76.i.i.i.1 ]
  %i.kb = phi i32 [ %i.iv, %_m3dstbi__zreceive.exit69.i.i.i._m3dstbi__zreceive.exit78.i.i.i_crit_edge ], [ %i.jw, %_m3dstbi__zget8.exit.i.i76.i.i.i.1 ] ; 2 uses
  %i.kc = and i32 %i.kb, 15
  %i.kd = lshr i32 %i.kb, 4                       ; 2 uses
  store i32 %i.kd, ptr %i.ab, align 4
  %i.ke = add nsw i32 %i.ka, -4                   ; 2 uses
  store i32 %i.ke, ptr %i.aa, align 8
  %i.kf = add nuw nsw i32 %i.kc, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.b, i8 0, i64 19, i1 false)
  %wide.trip.count.i.i.i = zext nneg i32 %i.kf to i64
  br label %bb.at

bb.at:                                            ; preds = %_m3dstbi__zreceive.exit87.i.i.i, %_m3dstbi__zreceive.exit78.i.i.i
  %i.kg = phi ptr [ %.promoted, %_m3dstbi__zreceive.exit78.i.i.i ], [ %i.ll, %_m3dstbi__zreceive.exit87.i.i.i ] ; 6 uses
  %indvars.iv.i41.i.i = phi i64 [ 0, %_m3dstbi__zreceive.exit78.i.i.i ], [ %indvars.iv.next.i42.i.i, %_m3dstbi__zreceive.exit87.i.i.i ] ; 2 uses
  %i.kh = phi i32 [ %i.ke, %_m3dstbi__zreceive.exit78.i.i.i ], [ %i.lp, %_m3dstbi__zreceive.exit87.i.i.i ] ; 6 uses
  %.pre.i81147148.i.i.i = phi i32 [ %i.kd, %_m3dstbi__zreceive.exit78.i.i.i ], [ %i.lo, %_m3dstbi__zreceive.exit87.i.i.i ] ; 3 uses
  %i.ki = icmp samesign ult i32 %i.kh, 3
  br i1 %i.ki, label %.preheader65.preheader, label %_m3dstbi__zreceive.exit87.i.i.i

.preheader65.preheader:                           ; preds = %bb.at
  %lcmp.mod382.not.not.not = icmp eq i32 %i.kh, 0
  br i1 %lcmp.mod382.not.not.not, label %.preheader65.preheader.new, label %.preheader65.prol

.preheader65.prol:                                ; preds = %.preheader65.preheader
  %.not.i.i.i84.i.i.i.prol = icmp ult ptr %i.kg, %i.jz
  br i1 %.not.i.i.i84.i.i.i.prol, label %bb.au, label %_m3dstbi__zget8.exit.i.i85.i.i.i.prol

bb.au:                                            ; preds = %.preheader65.prol
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 1 ; 2 uses
  store ptr %i.kj, ptr %6, align 8
  %i.kk = load i8, ptr %i.kg, align 1
  %i.kl = zext i8 %i.kk to i32
  br label %_m3dstbi__zget8.exit.i.i85.i.i.i.prol

_m3dstbi__zget8.exit.i.i85.i.i.i.prol:            ; preds = %bb.au, %.preheader65.prol
  %i.km = phi ptr [ %i.kj, %bb.au ], [ %i.kg, %.preheader65.prol ]
  %.0.i.i.i86.i.i.i.prol = phi i32 [ %i.kl, %bb.au ], [ 0, %.preheader65.prol ]
  %i.kn = shl nuw nsw i32 %.0.i.i.i86.i.i.i.prol, %i.kh
  %i.ko = or i32 %i.kn, %.pre.i81147148.i.i.i     ; 2 uses
  store i32 %i.ko, ptr %i.ab, align 4
  %i.kp = or disjoint i32 %i.kh, 8                ; 2 uses
  store i32 %i.kp, ptr %i.aa, align 8
  br label %.preheader65.preheader.new

.preheader65.preheader.new:                       ; preds = %.preheader65.preheader, %_m3dstbi__zget8.exit.i.i85.i.i.i.prol
  %.unr384 = phi i32 [ %.pre.i81147148.i.i.i, %.preheader65.preheader ], [ %i.ko, %_m3dstbi__zget8.exit.i.i85.i.i.i.prol ]
  %.unr385 = phi i32 [ %i.kh, %.preheader65.preheader ], [ %i.kp, %_m3dstbi__zget8.exit.i.i85.i.i.i.prol ]
  %.unr386 = phi ptr [ %i.kg, %.preheader65.preheader ], [ %i.km, %_m3dstbi__zget8.exit.i.i85.i.i.i.prol ] ; 2 uses
  br label %.preheader65

.preheader65:                                     ; preds = %_m3dstbi__zget8.exit.i.i85.i.i.i.1, %.preheader65.preheader.new
  %i.kq = phi ptr [ %.unr386, %.preheader65.preheader.new ], [ %i.lf, %_m3dstbi__zget8.exit.i.i85.i.i.i.1 ]
  %i.kr = phi i32 [ %.unr384, %.preheader65.preheader.new ], [ %i.li, %_m3dstbi__zget8.exit.i.i85.i.i.i.1 ]
  %i.ks = phi i32 [ %.unr385, %.preheader65.preheader.new ], [ %i.lj, %_m3dstbi__zget8.exit.i.i85.i.i.i.1 ] ; 4 uses
  %i.kt = phi ptr [ %.unr386, %.preheader65.preheader.new ], [ %i.lg, %_m3dstbi__zget8.exit.i.i85.i.i.i.1 ] ; 4 uses
  %.not.i.i.i84.i.i.i = icmp ult ptr %i.kt, %i.jz
  br i1 %.not.i.i.i84.i.i.i, label %bb.av, label %_m3dstbi__zget8.exit.i.i85.i.i.i

bb.av:                                            ; preds = %.preheader65
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1 ; 3 uses
  store ptr %i.ku, ptr %6, align 8
  %i.kv = load i8, ptr %i.kt, align 1
  %i.kw = zext i8 %i.kv to i32
  br label %_m3dstbi__zget8.exit.i.i85.i.i.i

_m3dstbi__zget8.exit.i.i85.i.i.i:                 ; preds = %bb.av, %.preheader65
  %i.kx = phi ptr [ %i.ku, %bb.av ], [ %i.kq, %.preheader65 ]
  %i.ky = phi ptr [ %i.ku, %bb.av ], [ %i.kt, %.preheader65 ] ; 4 uses
  %.0.i.i.i86.i.i.i = phi i32 [ %i.kw, %bb.av ], [ 0, %.preheader65 ]
  %i.kz = shl i32 %.0.i.i.i86.i.i.i, %i.ks
  %i.la = or i32 %i.kz, %i.kr                     ; 2 uses
  store i32 %i.la, ptr %i.ab, align 4
  %i.lb = add nuw nsw i32 %i.ks, 8                ; 2 uses
  store i32 %i.lb, ptr %i.aa, align 8
  %.not.i.i.i84.i.i.i.1 = icmp ult ptr %i.ky, %i.jz
  br i1 %.not.i.i.i84.i.i.i.1, label %bb.aw, label %_m3dstbi__zget8.exit.i.i85.i.i.i.1

bb.aw:                                            ; preds = %_m3dstbi__zget8.exit.i.i85.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 1 ; 3 uses
  store ptr %i.lc, ptr %6, align 8
  %i.ld = load i8, ptr %i.ky, align 1
  %i.le = zext i8 %i.ld to i32
  br label %_m3dstbi__zget8.exit.i.i85.i.i.i.1

_m3dstbi__zget8.exit.i.i85.i.i.i.1:               ; preds = %bb.aw, %_m3dstbi__zget8.exit.i.i85.i.i.i
  %i.lf = phi ptr [ %i.lc, %bb.aw ], [ %i.kx, %_m3dstbi__zget8.exit.i.i85.i.i.i ] ; 2 uses
  %i.lg = phi ptr [ %i.lc, %bb.aw ], [ %i.ky, %_m3dstbi__zget8.exit.i.i85.i.i.i ]
  %.0.i.i.i86.i.i.i.1 = phi i32 [ %i.le, %bb.aw ], [ 0, %_m3dstbi__zget8.exit.i.i85.i.i.i ]
  %i.lh = shl i32 %.0.i.i.i86.i.i.i.1, %i.lb
  %i.li = or i32 %i.lh, %i.la                     ; 3 uses
  store i32 %i.li, ptr %i.ab, align 4
  %i.lj = add nuw nsw i32 %i.ks, 16               ; 3 uses
  store i32 %i.lj, ptr %i.aa, align 8
  %i.lk = icmp slt i32 %i.ks, 9
  br i1 %i.lk, label %.preheader65, label %_m3dstbi__zreceive.exit87.i.i.i

_m3dstbi__zreceive.exit87.i.i.i:                  ; preds = %_m3dstbi__zget8.exit.i.i85.i.i.i.1, %bb.at
  %i.ll = phi ptr [ %i.kg, %bb.at ], [ %i.lf, %_m3dstbi__zget8.exit.i.i85.i.i.i.1 ]
  %i.lm = phi i32 [ %i.kh, %bb.at ], [ %i.lj, %_m3dstbi__zget8.exit.i.i85.i.i.i.1 ]
  %i.ln = phi i32 [ %.pre.i81147148.i.i.i, %bb.at ], [ %i.li, %_m3dstbi__zget8.exit.i.i85.i.i.i.1 ] ; 2 uses
  %i.lo = lshr i32 %i.ln, 3                       ; 2 uses
  store i32 %i.lo, ptr %i.ab, align 4
  %i.lp = add nsw i32 %i.lm, -3                   ; 2 uses
  store i32 %i.lp, ptr %i.aa, align 8
  %i.lq = trunc i32 %i.ln to i8
  %i.lr = and i8 %i.lq, 7
  %i.ls = getelementptr inbounds nuw i8, ptr @_m3dstbi__compute_huffman_codes.length_dezigzag, i64 %indvars.iv.i41.i.i
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = zext i8 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lu
  store i8 %i.lr, ptr %i.lv, align 1
  %indvars.iv.next.i42.i.i = add nuw nsw i64 %indvars.iv.i41.i.i, 1 ; 2 uses
  %exitcond.not.i43.i.i = icmp eq i64 %indvars.iv.next.i42.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i43.i.i, label %bb.ax, label %bb.at

bb.ax:                                            ; preds = %_m3dstbi__zreceive.exit87.i.i.i
  %i.lw = add nuw nsw i32 %i.ix, %i.hq            ; 3 uses
  %i.lx = call fastcc i32 @_m3dstbi__zbuild_huffman(ptr noundef %5, ptr noundef nonnull %i.b, i32 noundef 19)
  %.not.i44.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not.i44.i.i, label %_m3dstbi__compute_huffman_codes.exit.thread.i.i, label %.preheader.i45.i.i

.preheader.i45.i.i:                               ; preds = %bb.ax
  %.promoted150.i.i.i = load i32, ptr %i.aa, align 8
  %.promoted56 = load i32, ptr %i.ab, align 4
  %.promoted57 = load ptr, ptr %6, align 8
  %i.ly = load ptr, ptr %i.i, align 8             ; 12 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bz, %.preheader.i45.i.i
  %i.lz = phi ptr [ %.promoted57, %.preheader.i45.i.i ], [ %i.tx, %bb.bz ] ; 6 uses
  %i.ma = phi i32 [ %.promoted56, %.preheader.i45.i.i ], [ %i.ty, %bb.bz ] ; 3 uses
  %.049151.i.i.i = phi i32 [ 0, %.preheader.i45.i.i ], [ %.352.i.i.i, %bb.bz ] ; 7 uses
  %i.mb = phi i32 [ %.promoted150.i.i.i, %.preheader.i45.i.i ], [ %i.tz, %bb.bz ] ; 6 uses
  %i.mc = icmp slt i32 %i.mb, 16
  br i1 %i.mc, label %.preheader64.preheader, label %_m3dstbi__fill_bits.exit.i.i.i.i

.preheader64.preheader:                           ; preds = %bb.ay
  %i.md = sub i32 24, %i.mb                       ; 2 uses
  %i.me = and i32 %i.md, 8
  %lcmp.mod388.not.not = icmp eq i32 %i.me, 0
  br i1 %lcmp.mod388.not.not, label %.preheader64.prol, label %.preheader64.prol.loopexit

.preheader64.prol:                                ; preds = %.preheader64.preheader
  %.not.i.i.i93.i.i.i.prol = icmp ult ptr %i.lz, %i.ly
  br i1 %.not.i.i.i93.i.i.i.prol, label %bb.az, label %_m3dstbi__zget8.exit.i.i94.i.i.i.prol

bb.az:                                            ; preds = %.preheader64.prol
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 1 ; 2 uses
  store ptr %i.mf, ptr %6, align 8
  %i.mg = load i8, ptr %i.lz, align 1
  %i.mh = zext i8 %i.mg to i32
  br label %_m3dstbi__zget8.exit.i.i94.i.i.i.prol

_m3dstbi__zget8.exit.i.i94.i.i.i.prol:            ; preds = %bb.az, %.preheader64.prol
  %i.mi = phi ptr [ %i.mf, %bb.az ], [ %i.lz, %.preheader64.prol ] ; 2 uses
  %.0.i.i.i95.i.i.i.prol = phi i32 [ %i.mh, %bb.az ], [ 0, %.preheader64.prol ]
  %i.mj = shl i32 %.0.i.i.i95.i.i.i.prol, %i.mb
  %i.mk = or i32 %i.mj, %i.ma                     ; 3 uses
  store i32 %i.mk, ptr %i.ab, align 4
  %i.ml = add nsw i32 %i.mb, 8                    ; 3 uses
  store i32 %i.ml, ptr %i.aa, align 8
  br label %.preheader64.prol.loopexit

.preheader64.prol.loopexit:                       ; preds = %_m3dstbi__zget8.exit.i.i94.i.i.i.prol, %.preheader64.preheader
  %.unr390 = phi i32 [ %i.ma, %.preheader64.preheader ], [ %i.mk, %_m3dstbi__zget8.exit.i.i94.i.i.i.prol ]
  %.unr391 = phi i32 [ %i.mb, %.preheader64.preheader ], [ %i.ml, %_m3dstbi__zget8.exit.i.i94.i.i.i.prol ]
  %.unr392 = phi ptr [ %i.lz, %.preheader64.preheader ], [ %i.mi, %_m3dstbi__zget8.exit.i.i94.i.i.i.prol ] ; 2 uses
  %.lcssa325.unr = phi ptr [ poison, %.preheader64.preheader ], [ %i.mi, %_m3dstbi__zget8.exit.i.i94.i.i.i.prol ]
  %.lcssa324.unr = phi i32 [ poison, %.preheader64.preheader ], [ %i.mk, %_m3dstbi__zget8.exit.i.i94.i.i.i.prol ]
  %.lcssa323.unr = phi i32 [ poison, %.preheader64.preheader ], [ %i.ml, %_m3dstbi__zget8.exit.i.i94.i.i.i.prol ]
  %i.mm = icmp ult i32 %i.md, 8
  br i1 %i.mm, label %_m3dstbi__fill_bits.exit.i.i.i.i, label %.preheader64

.preheader64:                                     ; preds = %.preheader64.prol.loopexit, %_m3dstbi__zget8.exit.i.i94.i.i.i.1
  %i.mn = phi ptr [ %i.nc, %_m3dstbi__zget8.exit.i.i94.i.i.i.1 ], [ %.unr392, %.preheader64.prol.loopexit ]
  %i.mo = phi i32 [ %i.nf, %_m3dstbi__zget8.exit.i.i94.i.i.i.1 ], [ %.unr390, %.preheader64.prol.loopexit ]
  %i.mp = phi i32 [ %i.ng, %_m3dstbi__zget8.exit.i.i94.i.i.i.1 ], [ %.unr391, %.preheader64.prol.loopexit ] ; 4 uses
  %i.mq = phi ptr [ %i.nd, %_m3dstbi__zget8.exit.i.i94.i.i.i.1 ], [ %.unr392, %.preheader64.prol.loopexit ] ; 4 uses
  %.not.i.i.i93.i.i.i = icmp ult ptr %i.mq, %i.ly
  br i1 %.not.i.i.i93.i.i.i, label %bb.ba, label %_m3dstbi__zget8.exit.i.i94.i.i.i

bb.ba:                                            ; preds = %.preheader64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1 ; 3 uses
  store ptr %i.mr, ptr %6, align 8
  %i.ms = load i8, ptr %i.mq, align 1
  %i.mt = zext i8 %i.ms to i32
  br label %_m3dstbi__zget8.exit.i.i94.i.i.i

_m3dstbi__zget8.exit.i.i94.i.i.i:                 ; preds = %bb.ba, %.preheader64
  %i.mu = phi ptr [ %i.mr, %bb.ba ], [ %i.mn, %.preheader64 ]
  %i.mv = phi ptr [ %i.mr, %bb.ba ], [ %i.mq, %.preheader64 ] ; 4 uses
  %.0.i.i.i95.i.i.i = phi i32 [ %i.mt, %bb.ba ], [ 0, %.preheader64 ]
  %i.mw = shl i32 %.0.i.i.i95.i.i.i, %i.mp
  %i.mx = or i32 %i.mw, %i.mo                     ; 2 uses
  store i32 %i.mx, ptr %i.ab, align 4
  %i.my = add nsw i32 %i.mp, 8                    ; 2 uses
  store i32 %i.my, ptr %i.aa, align 8
  %.not.i.i.i93.i.i.i.1 = icmp ult ptr %i.mv, %i.ly
  br i1 %.not.i.i.i93.i.i.i.1, label %bb.bb, label %_m3dstbi__zget8.exit.i.i94.i.i.i.1

bb.bb:                                            ; preds = %_m3dstbi__zget8.exit.i.i94.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 1 ; 3 uses
  store ptr %i.mz, ptr %6, align 8
  %i.na = load i8, ptr %i.mv, align 1
  %i.nb = zext i8 %i.na to i32
  br label %_m3dstbi__zget8.exit.i.i94.i.i.i.1

_m3dstbi__zget8.exit.i.i94.i.i.i.1:               ; preds = %bb.bb, %_m3dstbi__zget8.exit.i.i94.i.i.i
  %i.nc = phi ptr [ %i.mz, %bb.bb ], [ %i.mu, %_m3dstbi__zget8.exit.i.i94.i.i.i ] ; 2 uses
  %i.nd = phi ptr [ %i.mz, %bb.bb ], [ %i.mv, %_m3dstbi__zget8.exit.i.i94.i.i.i ]
  %.0.i.i.i95.i.i.i.1 = phi i32 [ %i.nb, %bb.bb ], [ 0, %_m3dstbi__zget8.exit.i.i94.i.i.i ]
  %i.ne = shl i32 %.0.i.i.i95.i.i.i.1, %i.my
  %i.nf = or i32 %i.ne, %i.mx                     ; 3 uses
  store i32 %i.nf, ptr %i.ab, align 4
  %i.ng = add nsw i32 %i.mp, 16                   ; 3 uses
  store i32 %i.ng, ptr %i.aa, align 8
  %i.nh = icmp slt i32 %i.mp, 9
  br i1 %i.nh, label %.preheader64, label %_m3dstbi__fill_bits.exit.i.i.i.i

_m3dstbi__fill_bits.exit.i.i.i.i:                 ; preds = %.preheader64.prol.loopexit, %_m3dstbi__zget8.exit.i.i94.i.i.i.1, %bb.ay
  %i.ni = phi ptr [ %i.lz, %bb.ay ], [ %.lcssa325.unr, %.preheader64.prol.loopexit ], [ %i.nc, %_m3dstbi__zget8.exit.i.i94.i.i.i.1 ] ; 19 uses
  %i.nj = phi i32 [ %i.mb, %bb.ay ], [ %.lcssa323.unr, %.preheader64.prol.loopexit ], [ %i.ng, %_m3dstbi__zget8.exit.i.i94.i.i.i.1 ] ; 2 uses
end_hunk_0
