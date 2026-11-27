Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_compress_IDAT:bb.a
  %i.at = load i8, ptr %i.ac, align 8, !tbaa !39
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.m, label %optimize_cmf.exit

bb.m:                                             ; preds = %bb.l
  %i.av = tail call fastcc i64 @png_image_size(ptr noundef nonnull %0) ; 3 uses
  %i.aw = icmp samesign ult i64 %i.av, 16385
  br i1 %i.aw, label %bb.n, label %optimize_cmf.exit

bb.n:                                             ; preds = %bb.m
  %i.ax = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.ay = zext i8 %i.ax to i32                    ; 3 uses
  %i.az = and i32 %i.ay, 15
  %i.ba = icmp eq i32 %i.az, 8
  %i.bb = and i32 %i.ay, 240
  %i.bc = icmp samesign ult i32 %i.bb, 113
  %or.cond.i = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond.i, label %bb.o, label %optimize_cmf.exit

bb.o:                                             ; preds = %bb.n
  %i.bd = lshr i32 %i.ay, 4                       ; 2 uses
  %i.be = shl nuw nsw i32 128, %i.bd              ; 2 uses
  %i.bf = zext nneg i32 %i.be to i64
  %.not.i91 = icmp samesign ugt i64 %i.av, %i.bf
  br i1 %.not.i91, label %optimize_cmf.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %.preheader.i
  %.022.i = phi i32 [ %i.bh, %.preheader.i ], [ %i.bd, %bb.o ]
  %.0.i92 = phi i32 [ %i.bg, %.preheader.i ], [ %i.be, %bb.o ]
  %i.bg = lshr i32 %.0.i92, 1                     ; 2 uses
  %i.bh = add i32 %.022.i, -1                     ; 3 uses
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = icmp samesign ule i64 %i.av, %i.bj
  %i.bl = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %i.bl, label %.preheader.i, label %bb.p, !llvm.loop !1

bb.p:                                             ; preds = %.preheader.i
  %i.bm = shl i32 %i.bh, 4
  %i.bn = or disjoint i32 %i.bm, 8                ; 2 uses
  %i.bo = trunc i32 %i.bn to i8
  store i8 %i.bo, ptr %i.ao, align 1, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 9 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !10
  %i.br = and i8 %i.bq, -32                       ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl i32 %i.bn, 8
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %i.bv = urem i32 %i.bu, 31
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %i.bx = or disjoint i8 %i.br, %i.bw
  %i.by = xor i8 %i.bx, 31
  store i8 %i.by, ptr %i.bp, align 1, !tbaa !10
  br label %optimize_cmf.exit

optimize_cmf.exit:                                ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.not87 = icmp eq i32 %i.ap, 0
  br i1 %.not87, label %bb.r, label %bb.q

bb.q:                                             ; preds = %optimize_cmf.exit
  %i.bz = zext i32 %i.ap to i64
  tail call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1229209940, ptr noundef nonnull %i.ao, i64 noundef %i.bz)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %optimize_cmf.exit
  %i.ca = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.cb = or i32 %i.ca, 4
  store i32 %i.cb, ptr %i.ab, align 4, !tbaa !28
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !52
  store i32 %i.ap, ptr %i.y, align 8, !tbaa !53
  %i.cc = icmp ne i32 %i.ah, 0
  %or.cond.not = or i1 %i.ae, %i.cc
  br i1 %or.cond.not, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r, %bb.j
  %i.cd = phi i32 [ %i.ap, %bb.r ], [ %i.al, %bb.j ] ; 2 uses
  %i.ce = icmp eq i32 %i.ah, 0
  br i1 %i.ce, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cf = icmp eq i64 %i.ak, 0
  br i1 %i.cf, label %bb.u, label %.backedge

.backedge:                                        ; preds = %bb.t, %bb.r
  br label %bb.j

bb.u:                                             ; preds = %bb.t
  %i.cg = icmp eq i32 %3, 4
  br i1 %i.cg, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #13
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.ch = icmp eq i32 %i.ah, 1
  %i.ci = icmp eq i32 %3, 4
  %or.cond3 = and i1 %i.ci, %i.ch
  br i1 %or.cond3, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !99  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load i32, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.cm = sub i32 %i.cl, %i.cd
  %i.cn = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.co = and i32 %i.cn, 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.y, label %optimize_cmf.exit98

bb.y:                                             ; preds = %bb.x
  %i.cq = load i8, ptr %i.ac, align 8, !tbaa !39
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.z, label %optimize_cmf.exit98

bb.z:                                             ; preds = %bb.y
  %i.cs = tail call fastcc i64 @png_image_size(ptr noundef nonnull %0) ; 3 uses
  %i.ct = icmp samesign ult i64 %i.cs, 16385
  br i1 %i.ct, label %bb.aa, label %optimize_cmf.exit98

bb.aa:                                            ; preds = %bb.z
  %i.cu = load i8, ptr %i.ck, align 1, !tbaa !10
  %i.cv = zext i8 %i.cu to i32                    ; 3 uses
  %i.cw = and i32 %i.cv, 15
  %i.cx = icmp eq i32 %i.cw, 8
  %i.cy = and i32 %i.cv, 240
  %i.cz = icmp samesign ult i32 %i.cy, 113
  %or.cond.i93 = select i1 %i.cx, i1 %i.cz, i1 false
  br i1 %or.cond.i93, label %bb.ab, label %optimize_cmf.exit98

bb.ab:                                            ; preds = %bb.aa
  %i.da = lshr i32 %i.cv, 4                       ; 2 uses
  %i.db = shl nuw nsw i32 128, %i.da              ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %.not.i94 = icmp samesign ugt i64 %i.cs, %i.dc
  br i1 %.not.i94, label %optimize_cmf.exit98, label %.preheader.i95

.preheader.i95:                                   ; preds = %bb.ab, %.preheader.i95
  %.022.i96 = phi i32 [ %i.de, %.preheader.i95 ], [ %i.da, %bb.ab ]
  %.0.i97 = phi i32 [ %i.dd, %.preheader.i95 ], [ %i.db, %bb.ab ]
  %i.dd = lshr i32 %.0.i97, 1                     ; 2 uses
  %i.de = add i32 %.022.i96, -1                   ; 3 uses
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = icmp samesign ule i64 %i.cs, %i.dg
  %i.di = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %i.di, label %.preheader.i95, label %bb.ac, !llvm.loop !1

bb.ac:                                            ; preds = %.preheader.i95
  %i.dj = shl i32 %i.de, 4
  %i.dk = or disjoint i32 %i.dj, 8                ; 2 uses
  %i.dl = trunc i32 %i.dk to i8
  store i8 %i.dl, ptr %i.ck, align 1, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 9 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !10
  %i.do = and i8 %i.dn, -32                       ; 2 uses
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl i32 %i.dk, 8
  %i.dr = or disjoint i32 %i.dq, %i.dp
  %i.ds = urem i32 %i.dr, 31
  %i.dt = trunc nuw nsw i32 %i.ds to i8
  %i.du = or disjoint i8 %i.do, %i.dt
  %i.dv = xor i8 %i.du, 31
  store i8 %i.dv, ptr %i.dm, align 1, !tbaa !10
  br label %optimize_cmf.exit98

optimize_cmf.exit98:                              ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.not90 = icmp eq i32 %i.cl, %i.cd
  br i1 %.not90, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %optimize_cmf.exit98
  %i.dw = zext i32 %i.cm to i64
  tail call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1229209940, ptr noundef nonnull %i.ck, i64 noundef %i.dw)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %optimize_cmf.exit98
  store i32 0, ptr %i.y, align 8, !tbaa !53
  store ptr null, ptr %i.ad, align 8, !tbaa !52
  %i.dx = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.dy = or i32 %i.dx, 12
  store i32 %i.dy, ptr %i.ab, align 4, !tbaa !28
  store i32 0, ptr %i.a, align 8, !tbaa !49
  br label %bb.ag

bb.af:                                            ; preds = %bb.w
  tail call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %i.ah) #12
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !51
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef %i.ea) #13
  unreachable

bb.ag:                                            ; preds = %bb.u, %bb.ae
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @png_deflate_claim(ptr noalias noundef %0, i32 noundef range(i32 1229209940, 2052348021) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %3 = lshr i32 %1, 24
  %4 = trunc nuw nsw i32 %3 to i8
  store i8 %4, ptr %i.a, align 16, !tbaa !10
  %5 = lshr i32 %1, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %trunc = trunc i32 %1 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %trunc)
  store i16 %8, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 8250, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %i.g, ptr %i.f, align 2, !tbaa !10
  %i.h = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 10, ptr noundef nonnull @.str.44) #12 ; 0 uses
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %i.i = load i32, ptr %i.b, align 8, !tbaa !49
  %i.j = icmp eq i32 %i.i, 1229209940
  br i1 %i.j, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @.str.45, ptr %i.k, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.d:                                             ; preds = %.thread, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.m = load i32, ptr %i.l, align 4, !tbaa !102  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.o = load i32, ptr %i.n, align 8, !tbaa !103  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.q = load i32, ptr %i.p, align 4, !tbaa !104  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.s = load i32, ptr %i.r, align 8, !tbaa !105  ; 2 uses
  %i.t = icmp eq i32 %1, 1229209940
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.v = load i32, ptr %i.u, align 8, !tbaa !106
  %i.w = and i32 %i.v, 1
  %.not79 = icmp eq i32 %i.w, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.y = load i32, ptr %i.x, align 4, !tbaa !107
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !47
  %.not80 = icmp ne i8 %i.aa, 8
  %. = zext i1 %.not80 to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !109
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !110
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !111
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !112
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.072 = phi i32 [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %.071 = phi i32 [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.ae, %bb.h ] ; 2 uses
  %.070 = phi i32 [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ %i.ag, %bb.h ] ; 4 uses
  %.069 = phi i32 [ %i.s, %bb.f ], [ %i.s, %bb.g ], [ %i.ai, %bb.h ] ; 2 uses
  %.068 = phi i32 [ %i.y, %bb.f ], [ %., %bb.g ], [ %i.ak, %bb.h ] ; 2 uses
  %i.al = icmp ult i64 %2, 16385
  br i1 %i.al, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.am = add nsw i32 %.070, -1
  %i.an = shl nuw i32 1, %i.am                    ; 2 uses
  %i.ao = add nuw nsw i64 %2, 262                 ; 2 uses
  %i.ap = zext i32 %i.an to i64
  %.not8196 = icmp samesign ugt i64 %i.ao, %i.ap
  br i1 %.not8196, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.aq = trunc nuw nsw i64 %i.ao to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.098 = phi i32 [ %i.ar, %.lr.ph ], [ %i.an, %.lr.ph.preheader ]
  %.197 = phi i32 [ %i.as, %.lr.ph ], [ %.070, %.lr.ph.preheader ]
  %i.ar = lshr i32 %.098, 1                       ; 2 uses
  %i.as = add nsw i32 %.197, -1                   ; 2 uses
  %.not81 = icmp samesign ult i32 %i.ar, %i.aq
  br i1 %.not81, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i
  %.2 = phi i32 [ %.070, %bb.i ], [ %.070, %bb.j ], [ %i.as, %.lr.ph ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !106 ; 3 uses
  %i.av = and i32 %i.au, 2
  %.not82 = icmp eq i32 %i.av, 0
  br i1 %.not82, label %bb.s, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !113
  %.not83 = icmp eq i32 %i.ax, %.072
  br i1 %.not83, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !114
  %.not84 = icmp eq i32 %i.az, %.071
  br i1 %.not84, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !115
  %.not85 = icmp eq i32 %i.bb, %.2
  br i1 %.not85, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !116
  %.not86 = icmp eq i32 %i.bd, %.069
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !117
  %.not87 = icmp eq i32 %i.bf, %.068
  br i1 %.not87, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bh = call i32 @deflateEnd(ptr noundef nonnull %i.bg) #12
  %.not88 = icmp eq i32 %i.bh, 0
  br i1 %.not88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bi = load i32, ptr %i.at, align 8, !tbaa !106
  %i.bj = and i32 %i.bi, -3                       ; 2 uses
  store i32 %i.bj, ptr %i.at, align 8, !tbaa !106
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %.loopexit
  %i.bk = phi i32 [ %i.bj, %bb.r ], [ %i.au, %bb.o ], [ %i.au, %.loopexit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.bm, align 8, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.bn, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.bo, align 8, !tbaa !53
  %i.bp = and i32 %i.bk, 2
  %.not89 = icmp eq i32 %i.bp, 0
  br i1 %.not89, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = call i32 @deflateInit2_(ptr noundef nonnull %i.bl, i32 noundef %.072, i32 noundef %.071, i32 noundef %.2, i32 noundef %.069, i32 noundef %.068, ptr noundef nonnull @.str.47, i32 noundef 112) #12 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.thread90, label %.thread93

.thread90:                                        ; preds = %bb.t
  %i.bs = load i32, ptr %i.at, align 8, !tbaa !106
  %i.bt = or i32 %i.bs, 2
  store i32 %i.bt, ptr %i.at, align 8, !tbaa !106
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bu = call i32 @deflateReset(ptr noundef nonnull %i.bl) #12 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.v, label %.thread93

bb.v:                                             ; preds = %.thread90, %bb.u
  store i32 %1, ptr %i.b, align 8, !tbaa !49
  br label %bb.w

.thread93:                                        ; preds = %bb.t, %bb.u
  %.06795 = phi i32 [ %i.bu, %bb.u ], [ %i.bq, %bb.t ] ; 2 uses
  call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.06795) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.c, %bb.v, %.thread93
  %.175 = phi i32 [ -2, %bb.c ], [ %.06795, %.thread93 ], [ 0, %bb.v ]
  ret i32 %.175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i64 0, 4362728993185823) i64 @png_image_size(ptr noalias nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp ult i64 %i.d, 32768
  %i.f = icmp ult i32 %i.b, 32768
end_hunk_0
begin_hunk_1_@png_write_tRNS:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @png_app_warning(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_write_bKGD(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq i32 %2, 3
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load i16, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.not22 = icmp eq i16 %i.d, 0
  br i1 %.not22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i8, ptr %1, align 2, !tbaa !180
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load i8, ptr %1, align 2, !tbaa !180     ; 2 uses
  %i.j = zext i8 %i.i to i16
  %.not23 = icmp ugt i16 %i.d, %i.j
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #12
  br label %bb.o

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.i, %bb.d ]
  store i8 %i.k, ptr %i.a, align 1, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.l = and i32 %2, 2
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !61   ; 2 uses
  %i.o = lshr i16 %i.n, 8
  %i.p = trunc nuw i16 %i.o to i8                 ; 2 uses
  store i8 %i.p, ptr %i.a, align 1, !tbaa !10
  %i.q = trunc i16 %i.n to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !62   ; 2 uses
  %i.v = lshr i16 %i.u, 8
  %i.w = trunc nuw i16 %i.v to i8                 ; 2 uses
  store i8 %i.w, ptr %i.s, align 1, !tbaa !10
  %i.x = trunc i16 %i.u to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.x, ptr %i.y, align 1, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !63 ; 2 uses
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8               ; 2 uses
  store i8 %i.ad, ptr %i.z, align 1, !tbaa !10
  %i.ae = trunc i16 %i.ab to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !36
  %i.ai = icmp eq i8 %i.ah, 8
  br i1 %i.ai, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = or i8 %i.w, %i.p
  %i.ak = or i8 %i.aj, %i.ad
  %.not21 = icmp eq i8 %i.ak, 0
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #12
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.h
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %i.a, i64 noundef 6)
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i16, ptr %i.al, align 2, !tbaa !60 ; 3 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !36
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl nuw i32 1, %i.aq
  %.not20 = icmp sgt i32 %i.ar, %i.an
  br i1 %.not20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #12
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.as = lshr i16 %i.am, 8
  %i.at = trunc nuw i16 %i.as to i8
  store i8 %i.at, ptr %i.a, align 1, !tbaa !10
  %i.au = trunc i16 %i.am to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %i.a, i64 noundef 2)
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n, %bb.k, %bb.m, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_cICP(ptr noalias noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !187
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %png_write_chunk_data.exit.thread, label %bb.b

png_write_chunk_data.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !188
  br label %png_write_chunk_end.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 3 uses
  store i32 34, ptr %i.e, align 4, !tbaa !27, !alias.scope !187
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <8 x i8> <i8 0, i8 0, i8 0, i8 4, i8 99, i8 73, i8 67, i8 80>, ptr %i.b, align 8, !tbaa !10, !noalias !187
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1665745744, ptr %i.g, align 8, !tbaa !29, !alias.scope !187
  call void @png_reset_crc(ptr noundef nonnull %0) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 4) #12
  store i32 66, ptr %i.e, align 4, !tbaa !27, !alias.scope !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !187
  store i8 %1, ptr %i.c, align 1, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %2, ptr %i.h, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %3, ptr %i.i, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %4, ptr %i.j, align 1, !tbaa !10
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !189
  store i32 130, ptr %i.e, align 4, !tbaa !27, !alias.scope !189
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30, !alias.scope !189
  %i.m = call i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.m, ptr %i.a, align 4, !tbaa !10, !noalias !189
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #12
  br label %png_write_chunk_end.exit

png_write_chunk_end.exit:                         ; preds = %png_write_chunk_data.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_cLLI_fixed(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.b, ptr %i.a, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1665944649, ptr noundef nonnull %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_mDCV_fixed(ptr noalias noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7, i16 noundef zeroext %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = lshr i16 %1, 8
  %i.c = trunc nuw i16 %i.b to i8
  store i8 %i.c, ptr %i.a, align 16, !tbaa !10
  %i.d = trunc i16 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.g = lshr i16 %2, 8
  %i.h = trunc nuw i16 %i.g to i8
  store i8 %i.h, ptr %i.f, align 2, !tbaa !10
  %i.i = trunc i16 %2 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.i, ptr %i.j, align 1, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = lshr i16 %3, 8
  %i.m = trunc nuw i16 %i.l to i8
  store i8 %i.m, ptr %i.k, align 4, !tbaa !10
  %i.n = trunc i16 %3 to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.n, ptr %i.o, align 1, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.q = lshr i16 %4, 8
  %i.r = trunc nuw i16 %i.q to i8
  store i8 %i.r, ptr %i.p, align 2, !tbaa !10
  %i.s = trunc i16 %4 to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.s, ptr %i.t, align 1, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = lshr i16 %5, 8
  %i.w = trunc nuw i16 %i.v to i8
  store i8 %i.w, ptr %i.u, align 8, !tbaa !10
  %i.x = trunc i16 %5 to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.x, ptr %i.y, align 1, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.aa = lshr i16 %6, 8
  %i.ab = trunc nuw i16 %i.aa to i8
  store i8 %i.ab, ptr %i.z, align 2, !tbaa !10
  %i.ac = trunc i16 %6 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.af = lshr i16 %7, 8
  %i.ag = trunc nuw i16 %i.af to i8
  store i8 %i.ag, ptr %i.ae, align 4, !tbaa !10
  %i.ah = trunc i16 %7 to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ak = lshr i16 %8, 8
  %i.al = trunc nuw i16 %i.ak to i8
  store i8 %i.al, ptr %i.aj, align 2, !tbaa !10
  %i.am = trunc i16 %8 to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.am, ptr %i.an, align 1, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = lshr i32 %9, 24
  %i.aq = trunc nuw i32 %i.ap to i8
  store i8 %i.aq, ptr %i.ao, align 16, !tbaa !10
  %i.ar = lshr i32 %9, 16
  %i.as = trunc i32 %i.ar to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.as, ptr %11, align 1, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %trunc = trunc i32 %9 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %trunc)
  store i16 %12, ptr %i.at, align 2
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.au = lshr i32 %10, 24
  %i.av = trunc nuw i32 %i.au to i8
  store i8 %i.av, ptr %13, align 4, !tbaa !10
  %14 = lshr i32 %10, 16
  %i.aw = trunc i32 %14 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %trunc10 = trunc i32 %10 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %trunc10)
  store i16 %15, ptr %i.ay, align 2
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1833190230, ptr noundef nonnull %i.a, i64 noundef 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_eXIf(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [8 x i8], align 4                 ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !197
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %png_write_chunk_header.exit, label %png_write_chunk_header.exit.thread

png_write_chunk_header.exit:                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !197
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %png_write_chunk_data.exit.us.preheader, label %._crit_edge

png_write_chunk_header.exit.thread:               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  store i32 34, ptr %i.f, align 4, !tbaa !27, !alias.scope !197
  %i.g = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %i.g, ptr %i.b, align 4, !tbaa !10, !noalias !197
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store <4 x i8> <i8 101, i8 88, i8 73, i8 102>, ptr %i.h, align 4, !tbaa !10, !noalias !197
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1700284774, ptr %i.i, align 8, !tbaa !29, !alias.scope !197
  call void @png_reset_crc(ptr noundef nonnull %0) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef 4) #12
  store i32 66, ptr %i.f, align 4, !tbaa !27, !alias.scope !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !197
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %png_write_chunk_data.exit.preheader, label %._crit_edge.thread

png_write_chunk_data.exit.preheader:              ; preds = %png_write_chunk_header.exit.thread
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %png_write_chunk_data.exit

png_write_chunk_data.exit.us.preheader:           ; preds = %png_write_chunk_header.exit
  %i.k = zext nneg i32 %2 to i64
  %i.l = getelementptr i8, ptr %1, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  store i8 %i.n, ptr %i.c, align 1, !tbaa !10
  br label %._crit_edge

png_write_chunk_data.exit:                        ; preds = %png_write_chunk_data.exit.preheader, %png_write_chunk_data.exit
  %indvars.iv = phi i64 [ 0, %png_write_chunk_data.exit.preheader ], [ %indvars.iv.next, %png_write_chunk_data.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  store i8 %i.p, ptr %i.c, align 1, !tbaa !10
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 1) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %png_write_chunk_data.exit, !llvm.loop !192

._crit_edge.thread:                               ; preds = %png_write_chunk_data.exit, %png_write_chunk_header.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !198
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1188
  store i32 130, ptr %i.q, align 4, !tbaa !27, !alias.scope !199
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30, !alias.scope !199
  %i.t = call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.a, align 4, !tbaa !10, !noalias !199
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #12
  br label %png_write_chunk_end.exit

._crit_edge:                                      ; preds = %png_write_chunk_data.exit.us.preheader, %png_write_chunk_header.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !199
  br label %png_write_chunk_end.exit

png_write_chunk_end.exit:                         ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_hIST(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [3 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.e = load i16, ptr %i.d, align 8, !tbaa !48
  %i.f = zext i16 %i.e to i32
  %i.g = icmp sgt i32 %2, %i.f
  br i1 %i.g, label %bb.b, label %png_write_chunk_header.exit

bb.b:                                             ; preds = %bb.a
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #12
  br label %bb.c

png_write_chunk_header.exit:                      ; preds = %bb.a
  %i.h = shl nsw i32 %2, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !205
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 3 uses
  store i32 34, ptr %i.i, align 4, !tbaa !27, !alias.scope !205
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.h)
  store i32 %i.j, ptr %i.b, align 4, !tbaa !10, !noalias !205
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store <4 x i8> <i8 104, i8 73, i8 83, i8 84>, ptr %i.k, align 4, !tbaa !10, !noalias !205
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1749635924, ptr %i.l, align 8, !tbaa !29, !alias.scope !205
  call void @png_reset_crc(ptr noundef nonnull %0) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.k, i64 noundef 4) #12
  store i32 66, ptr %i.i, align 4, !tbaa !27, !alias.scope !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !205
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %png_write_chunk_data.exit.lr.ph, label %png_write_chunk_end.exit

png_write_chunk_data.exit.lr.ph:                  ; preds = %png_write_chunk_header.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %png_write_chunk_data.exit

png_write_chunk_data.exit:                        ; preds = %png_write_chunk_data.exit.lr.ph, %png_write_chunk_data.exit
  %indvars.iv = phi i64 [ 0, %png_write_chunk_data.exit.lr.ph ], [ %indvars.iv.next, %png_write_chunk_data.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !206  ; 2 uses
  %i.q = lshr i16 %i.p, 8
  %i.r = trunc nuw i16 %i.q to i8
  store i8 %i.r, ptr %i.c, align 1, !tbaa !10
  %i.s = trunc i16 %i.p to i8
  store i8 %i.s, ptr %i.n, align 1, !tbaa !10
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %png_write_chunk_end.exit, label %png_write_chunk_data.exit, !llvm.loop !202

png_write_chunk_end.exit:                         ; preds = %png_write_chunk_data.exit, %png_write_chunk_header.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !207
  store i32 130, ptr %i.i, align 4, !tbaa !27, !alias.scope !207
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30, !alias.scope !207
  %i.v = call i32 @llvm.bswap.i32(i32 %i.u)
  store i32 %i.v, ptr %i.a, align 4, !tbaa !10, !noalias !207
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !207
  br label %bb.c

bb.c:                                             ; preds = %png_write_chunk_end.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_tEXt(ptr noalias noundef %0, ptr noundef %1, ptr noundef %2, i64 %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [8 x i8], align 4                 ; 6 uses
  %i.c = alloca [80 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = call i32 @png_check_keyword(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c) #12 ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.29) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %2, null                     ; 2 uses
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %2, align 1, !tbaa !10
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14 ; 2 uses
  %i.j = sub i32 2147483646, %i.d
  %i.k = zext i32 %i.j to i64
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.30) #13
  unreachable

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %.024 = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !212
  %.not35 = icmp eq ptr %0, null
  br i1 %.not35, label %png_write_chunk_data.exit22, label %png_write_chunk_header.exit

end_hunk_1
begin_hunk_2_@png_write_find_filter:bb.a
  %.05882.i.ph = phi i64 [ 0, %vector.memcheck333 ], [ 0, %.lr.ph.i180.preheader ], [ %n.vec338, %middle.block351 ] ; 3 uses
  %xtraiter734 = and i64 %i.aci, 1
  %lcmp.mod735.not = icmp eq i64 %xtraiter734, 0
  br i1 %lcmp.mod735.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader713
  %i.ahk = load i8, ptr %.06686.i.ph, align 1, !tbaa !10, !noalias !328
  %i.ahl = load i8, ptr %.06285.i.ph, align 1, !tbaa !10, !noalias !328
  %.narrow77.i.prol = sub i8 %i.ahk, %i.ahl       ; 3 uses
  store i8 %.narrow77.i.prol, ptr %.06484.i.ph, align 1, !tbaa !10, !noalias !328
  %i.ahm = zext i8 %.narrow77.i.prol to i64       ; 2 uses
  %i.ahn = sub nuw nsw i64 256, %i.ahm
  %i.aho = icmp slt i8 %.narrow77.i.prol, 0
  %i.ahp = select i1 %i.aho, i64 %i.ahn, i64 %i.ahm
  %i.ahq = add i64 %i.ahp, %.05783.i.ph           ; 2 uses
  %i.ahr = or disjoint i64 %.05882.i.ph, 1
  %.064.i.prol = getelementptr inbounds nuw i8, ptr %.06484.i.ph, i64 1 ; 2 uses
  %.062.i.prol = getelementptr inbounds nuw i8, ptr %.06285.i.ph, i64 1 ; 2 uses
  %.066.i.prol = getelementptr inbounds nuw i8, ptr %.06686.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i180.prol.loopexit

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader713
  %.lcssa714.unr = phi i64 [ poison, %.lr.ph.i180.preheader713 ], [ %i.ahq, %.lr.ph.i180.prol ]
  %.064.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader713 ], [ %.064.i.prol, %.lr.ph.i180.prol ]
  %.062.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader713 ], [ %.062.i.prol, %.lr.ph.i180.prol ]
  %.066.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader713 ], [ %.066.i.prol, %.lr.ph.i180.prol ]
  %.06686.i.unr = phi ptr [ %.06686.i.ph, %.lr.ph.i180.preheader713 ], [ %.066.i.prol, %.lr.ph.i180.prol ]
  %.06285.i.unr = phi ptr [ %.06285.i.ph, %.lr.ph.i180.preheader713 ], [ %.062.i.prol, %.lr.ph.i180.prol ]
  %.06484.i.unr = phi ptr [ %.06484.i.ph, %.lr.ph.i180.preheader713 ], [ %.064.i.prol, %.lr.ph.i180.prol ]
  %.05783.i.unr = phi i64 [ %.05783.i.ph, %.lr.ph.i180.preheader713 ], [ %i.ahq, %.lr.ph.i180.prol ]
  %.05882.i.unr = phi i64 [ %.05882.i.ph, %.lr.ph.i180.preheader713 ], [ %i.ahr, %.lr.ph.i180.prol ]
  %i.ahs = add nsw i64 %i.aci, -1
  %i.aht = icmp eq i64 %.05882.i.ph, %i.ahs
  br i1 %i.aht, label %.preheader.i182, label %.lr.ph.i180

.preheader.i182:                                  ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180, %middle.block351, %bb.v
  %.058.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.aci, %middle.block351 ], [ %i.aci, %.lr.ph.i180 ], [ %i.aci, %.lr.ph.i180.prol.loopexit ] ; 2 uses
  %.057.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.ahj, %middle.block351 ], [ %.lcssa714.unr, %.lr.ph.i180.prol.loopexit ], [ %i.aii, %.lr.ph.i180 ] ; 2 uses
  %.064.lcssa.i = phi ptr [ %.06479.i, %bb.v ], [ %i.acn, %middle.block351 ], [ %.064.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.064.i.1, %.lr.ph.i180 ]
  %.062.lcssa.i = phi ptr [ %.06280.i, %bb.v ], [ %i.acm, %middle.block351 ], [ %.062.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.062.i.1, %.lr.ph.i180 ]
  %.066.lcssa.i = phi ptr [ %.06681.i, %bb.v ], [ %i.acl, %middle.block351 ], [ %.066.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.066.i.1, %.lr.ph.i180 ]
  %i.ahu = icmp ult i64 %.058.lcssa.i, %i.e
  br i1 %i.ahu, label %.lr.ph100.i, label %png_setup_paeth_row.exit

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.06686.i = phi ptr [ %.066.i.1, %.lr.ph.i180 ], [ %.06686.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.06285.i = phi ptr [ %.062.i.1, %.lr.ph.i180 ], [ %.06285.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.06484.i = phi ptr [ %.064.i.1, %.lr.ph.i180 ], [ %.06484.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.05783.i = phi i64 [ %i.aii, %.lr.ph.i180 ], [ %.05783.i.unr, %.lr.ph.i180.prol.loopexit ]
  %.05882.i = phi i64 [ %i.aij, %.lr.ph.i180 ], [ %.05882.i.unr, %.lr.ph.i180.prol.loopexit ]
  %i.ahv = load i8, ptr %.06686.i, align 1, !tbaa !10, !noalias !328
  %i.ahw = load i8, ptr %.06285.i, align 1, !tbaa !10, !noalias !328
  %.narrow77.i = sub i8 %i.ahv, %i.ahw            ; 3 uses
  store i8 %.narrow77.i, ptr %.06484.i, align 1, !tbaa !10, !noalias !328
  %i.ahx = zext i8 %.narrow77.i to i64            ; 2 uses
  %i.ahy = sub nuw nsw i64 256, %i.ahx
  %i.ahz = icmp slt i8 %.narrow77.i, 0
  %i.aia = select i1 %i.ahz, i64 %i.ahy, i64 %i.ahx
  %i.aib = add i64 %i.aia, %.05783.i
  %.064.i = getelementptr inbounds nuw i8, ptr %.06484.i, i64 1
  %.062.i = getelementptr inbounds nuw i8, ptr %.06285.i, i64 1
  %.066.i = getelementptr inbounds nuw i8, ptr %.06686.i, i64 1
  %i.aic = load i8, ptr %.066.i, align 1, !tbaa !10, !noalias !328
  %i.aid = load i8, ptr %.062.i, align 1, !tbaa !10, !noalias !328
  %.narrow77.i.1 = sub i8 %i.aic, %i.aid          ; 3 uses
  store i8 %.narrow77.i.1, ptr %.064.i, align 1, !tbaa !10, !noalias !328
  %i.aie = zext i8 %.narrow77.i.1 to i64          ; 2 uses
  %i.aif = sub nuw nsw i64 256, %i.aie
  %i.aig = icmp slt i8 %.narrow77.i.1, 0
  %i.aih = select i1 %i.aig, i64 %i.aif, i64 %i.aie
  %i.aii = add i64 %i.aih, %i.aib                 ; 2 uses
  %i.aij = add nuw nsw i64 %.05882.i, 2           ; 2 uses
  %.064.i.1 = getelementptr inbounds nuw i8, ptr %.06484.i, i64 2 ; 2 uses
  %.062.i.1 = getelementptr inbounds nuw i8, ptr %.06285.i, i64 2 ; 2 uses
  %.066.i.1 = getelementptr inbounds nuw i8, ptr %.06686.i, i64 2 ; 2 uses
  %exitcond.not.i181.1 = icmp eq i64 %i.aij, %i.aci
  br i1 %exitcond.not.i181.1, label %.preheader.i182, label %.lr.ph.i180, !llvm.loop !313

.lr.ph100.i:                                      ; preds = %.preheader.i182, %.lr.ph100.i
  %.06199.pn.i = phi ptr [ %.06199.i, %.lr.ph100.i ], [ %i.acg, %.preheader.i182 ]
  %.06098.pn.i = phi ptr [ %.06098.i, %.lr.ph100.i ], [ %i.l, %.preheader.i182 ]
  %.197.i = phi i64 [ %i.ajc, %.lr.ph100.i ], [ %.057.lcssa.i, %.preheader.i182 ]
  %.15996.i = phi i64 [ %i.ajh, %.lr.ph100.i ], [ %.058.lcssa.i, %.preheader.i182 ]
  %.16395.i = phi ptr [ %i.ajg, %.lr.ph100.i ], [ %.062.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.16594.i = phi ptr [ %i.aje, %.lr.ph100.i ], [ %.064.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.16793.i = phi ptr [ %i.ajf, %.lr.ph100.i ], [ %.066.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.06098.i = getelementptr inbounds nuw i8, ptr %.06098.pn.i, i64 1 ; 2 uses
  %.06199.i = getelementptr inbounds nuw i8, ptr %.06199.pn.i, i64 1 ; 2 uses
  %i.aik = load i8, ptr %.16395.i, align 1, !tbaa !10, !noalias !328 ; 2 uses
  %i.ail = zext i8 %i.aik to i32
  %i.aim = load i8, ptr %.06199.i, align 1, !tbaa !10, !noalias !328 ; 2 uses
  %i.ain = zext i8 %i.aim to i32                  ; 2 uses
  %i.aio = load i8, ptr %.06098.i, align 1, !tbaa !10, !noalias !328 ; 2 uses
  %i.aip = zext i8 %i.aio to i32
  %i.aiq = sub nsw i32 %i.ail, %i.ain             ; 2 uses
  %i.air = sub nsw i32 %i.aip, %i.ain             ; 2 uses
  %i.ais = tail call i32 @llvm.abs.i32(i32 %i.aiq, i1 true) ; 2 uses
  %i.ait = tail call i32 @llvm.abs.i32(i32 %i.air, i1 true) ; 2 uses
  %i.aiu = add nsw i32 %i.air, %i.aiq
  %i.aiv = tail call i32 @llvm.abs.i32(i32 %i.aiu, i1 true) ; 2 uses
  %.not.i184 = icmp samesign ugt i32 %i.ais, %i.ait
  %.not72.i = icmp samesign ugt i32 %i.ais, %i.aiv
  %or.cond.i185 = select i1 %.not.i184, i1 true, i1 %.not72.i
  %.not73.i = icmp samesign ugt i32 %i.ait, %i.aiv
  %i.aiw = select i1 %.not73.i, i8 %i.aim, i8 %i.aik
  %.tr.i186 = select i1 %or.cond.i185, i8 %i.aiw, i8 %i.aio
  %i.aix = load i8, ptr %.16793.i, align 1, !tbaa !10, !noalias !328
  %.narrow.i187 = sub i8 %i.aix, %.tr.i186        ; 3 uses
  store i8 %.narrow.i187, ptr %.16594.i, align 1, !tbaa !10, !noalias !328
  %i.aiy = zext i8 %.narrow.i187 to i64           ; 2 uses
  %i.aiz = sub nuw nsw i64 256, %i.aiy
  %i.aja = icmp slt i8 %.narrow.i187, 0
  %i.ajb = select i1 %i.aja, i64 %i.aiz, i64 %i.aiy
  %i.ajc = add i64 %i.ajb, %.197.i                ; 3 uses
  %i.ajd = icmp ule i64 %i.ajc, %.6
  %i.aje = getelementptr inbounds nuw i8, ptr %.16594.i, i64 1
  %i.ajf = getelementptr inbounds nuw i8, ptr %.16793.i, i64 1
  %i.ajg = getelementptr inbounds nuw i8, ptr %.16395.i, i64 1
  %i.ajh = add nuw i64 %.15996.i, 1               ; 2 uses
  %i.aji = icmp ult i64 %i.ajh, %i.e
  %or.cond108.i = select i1 %i.ajd, i1 %i.aji, i1 false
  br i1 %or.cond108.i, label %.lr.ph100.i, label %png_setup_paeth_row.exit, !llvm.loop !314

png_setup_paeth_row.exit:                         ; preds = %.lr.ph100.i, %.preheader.i182
  %.2.i183 = phi i64 [ %.057.lcssa.i, %.preheader.i182 ], [ %i.ajc, %.lr.ph100.i ]
  %i.ajj = icmp ult i64 %.2.i183, %.6
  br i1 %i.ajj, label %bb.w, label %.thread214.thread

bb.w:                                             ; preds = %png_setup_paeth_row.exit
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !67 ; 2 uses
  %.not127 = icmp eq ptr %i.ajl, null
  br i1 %.not127, label %.thread214.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.ajl, ptr %i.acc, align 8, !tbaa !66
  store ptr %i.acd, ptr %i.ajk, align 8, !tbaa !67
  br label %.thread214.thread

.thread214.thread:                                ; preds = %.lr.ph80.i, %.lr.ph44.i, %.lr.ph.i138.prol.loopexit, %.lr.ph.i138, %.lr.ph12.i.prol.loopexit, %.lr.ph12.i, %middle.block435, %vec.epilog.middle.block456, %middle.block546, %vec.epilog.middle.block565, %middle.block596, %vec.epilog.middle.block613, %middle.block685, %vec.epilog.middle.block702, %.preheader.i174, %.preheader.i154, %bb.j, %.preheader.i, %png_setup_paeth_row.exit, %bb.x, %bb.w, %.thread214
  %.7 = phi ptr [ %i.lm, %.preheader.i154 ], [ %.5109, %.thread214 ], [ %i.acd, %bb.x ], [ %i.acd, %bb.w ], [ %.5109, %png_setup_paeth_row.exit ], [ %i.jd, %bb.j ], [ %.val128, %.preheader.i ], [ %i.xv, %.preheader.i174 ], [ %.val128, %middle.block685 ], [ %i.jd, %middle.block596 ], [ %i.lm, %middle.block546 ], [ %i.xv, %middle.block435 ], [ %.val128, %vec.epilog.middle.block702 ], [ %i.lm, %.lr.ph44.i ], [ %i.jd, %vec.epilog.middle.block613 ], [ %.val128, %.lr.ph12.i.prol.loopexit ], [ %i.lm, %vec.epilog.middle.block565 ], [ %i.jd, %.lr.ph.i138.prol.loopexit ], [ %i.xv, %vec.epilog.middle.block456 ], [ %.val128, %.lr.ph12.i ], [ %i.jd, %.lr.ph.i138 ], [ %i.xv, %.lr.ph80.i ]
  %i.ajm = load i64, ptr %i.d, align 8, !tbaa !73
  %i.ajn = add i64 %i.ajm, 1
  tail call void @png_compress_IDAT(ptr noundef nonnull %0, ptr noundef %.7, i64 noundef %i.ajn, i32 noundef 0)
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !68, !alias.scope !329 ; 2 uses
  %.not.i188 = icmp eq ptr %i.ajp, null
  br i1 %.not.i188, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread214.thread
  %i.ajq = load ptr, ptr %i.k, align 8, !tbaa !65, !alias.scope !329
  store ptr %i.ajq, ptr %i.ajo, align 8, !tbaa !68, !alias.scope !329
  store ptr %i.ajp, ptr %i.k, align 8, !tbaa !65, !alias.scope !329
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread214.thread
  tail call void @png_write_finish_row(ptr noundef nonnull %0)
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !330, !alias.scope !329
  %.fr.i = freeze i32 %i.ajs
  %i.ajt = add i32 %.fr.i, 1                      ; 2 uses
  store i32 %i.ajt, ptr %i.ajr, align 4, !tbaa !330, !alias.scope !329
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ajv = load i32, ptr %i.aju, align 8, !tbaa !331, !alias.scope !329
  %i.ajw = add i32 %i.ajv, -1
  %or.cond.not.i = icmp ult i32 %i.ajw, %i.ajt
  br i1 %or.cond.not.i, label %bb.aa, label %png_write_filtered_row.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @png_write_flush(ptr noundef nonnull %0) #12
  br label %png_write_filtered_row.exit

png_write_filtered_row.exit:                      ; preds = %bb.z, %bb.aa
  ret void
}

declare void @png_reset_crc(ptr noundef) local_unnamed_addr #3

declare i64 @png_safecat(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #3

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #3

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @png_malloc_base(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @png_write_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS13__jmp_buf_tag", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!16 = !{!"z_stream_s", !14, i64 0, !7, i64 8, !13, i64 16, !14, i64 24, !7, i64 32, !13, i64 40, !14, i64 48, !15, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !7, i64 88, !13, i64 96, !13, i64 104}
!17 = !{!"p1 _ZTS22png_compression_buffer", !11, i64 0}
!18 = !{!"p1 _ZTS16png_color_struct", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!"png_color_16_struct", !6, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8}
!21 = !{!"png_xy", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!"p2 short", !22, i64 0}
!24 = !{!"png_color_8_struct", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4}
!25 = !{!"png_unknown_chunk_t", !6, i64 0, !14, i64 8, !13, i64 16, !6, i64 24}
!26 = !{!"png_struct_def", !6, i64 0, !11, i64 200, !12, i64 208, !13, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !6, i64 296, !6, i64 297, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !16, i64 320, !17, i64 432, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !7, i64 480, !7, i64 484, !7, i64 488, !7, i64 492, !7, i64 496, !7, i64 500, !7, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !13, i64 528, !7, i64 536, !7, i64 540, !7, i64 544, !14, i64 552, !14, i64 560, !14, i64 568, !14, i64 576, !13, i64 584, !7, i64 592, !7, i64 596, !18, i64 600, !19, i64 608, !7, i64 612, !19, i64 616, !6, i64 618, !6, i64 619, !6, i64 620, !6, i64 621, !6, i64 622, !6, i64 623, !6, i64 624, !6, i64 625, !6, i64 626, !6, i64 627, !6, i64 628, !6, i64 629, !6, i64 630, !6, i64 631, !6, i64 632, !19, i64 634, !6, i64 636, !7, i64 640, !20, i64 644, !20, i64 654, !11, i64 664, !7, i64 672, !7, i64 676, !21, i64 680, !7, i64 712, !7, i64 716, !7, i64 720, !7, i64 724, !7, i64 728, !14, i64 736, !23, i64 744, !14, i64 752, !14, i64 760, !23, i64 768, !23, i64 776, !24, i64 784, !24, i64 789, !14, i64 800, !20, i64 808, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !7, i64 896, !7, i64 900, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !7, i64 936, !7, i64 940, !14, i64 944, !14, i64 952, !7, i64 960, !6, i64 964, !7, i64 996, !11, i64 1000, !11, i64 1008, !7, i64 1016, !7, i64 1020, !14, i64 1024, !6, i64 1032, !6, i64 1033, !19, i64 1034, !19, i64 1036, !14, i64 1040, !7, i64 1048, !6, i64 1052, !11, i64 1056, !11, i64 1064, !11, i64 1072, !14, i64 1080, !14, i64 1088, !14, i64 1096, !6, i64 1104, !7, i64 1108, !7, i64 1112, !7, i64 1116, !13, i64 1120, !25, i64 1128, !13, i64 1160, !14, i64 1168, !13, i64 1176, !7, i64 1184, !7, i64 1188, !14, i64 1192, !6, i64 1200}
!27 = !{!26, !7, i64 1188}
!28 = !{!26, !7, i64 300}
!29 = !{!26, !7, i64 544}
!30 = !{!26, !7, i64 596}
!31 = !{!17, !17, i64 0}
!32 = !{!"png_compression_buffer", !17, i64 0, !6, i64 8}
!33 = !{!32, !17, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!26, !7, i64 1048}
!36 = !{!26, !6, i64 624}
!37 = !{!26, !6, i64 623}
!38 = !{!26, !6, i64 620}
!39 = !{!26, !6, i64 1104}
!40 = !{!26, !7, i64 508}
!41 = !{!26, !7, i64 512}
!42 = !{!26, !6, i64 626}
!43 = !{!26, !13, i64 528}
!44 = !{!26, !7, i64 520}
!45 = !{!26, !6, i64 625}
!46 = !{!26, !6, i64 628}
!47 = !{!26, !6, i64 622}
!48 = !{!26, !19, i64 608}
!49 = !{!26, !7, i64 312}
!50 = !{!26, !7, i64 440}
!51 = !{!26, !14, i64 368}
!52 = !{!26, !14, i64 344}
!53 = !{!26, !7, i64 352}
!54 = !{!26, !14, i64 320}
!55 = !{!26, !7, i64 328}
!56 = !{!"", !14, i64 0, !13, i64 8, !7, i64 16, !6, i64 20}
!57 = !{!56, !14, i64 0}
!58 = !{!56, !13, i64 8}
!59 = !{!56, !7, i64 16}
!60 = !{!20, !19, i64 8}
!61 = !{!20, !19, i64 2}
!62 = !{!20, !19, i64 4}
!63 = !{!20, !19, i64 6}
!64 = !{}
!65 = !{!26, !14, i64 560}
!66 = !{!26, !14, i64 568}
!67 = !{!26, !14, i64 576}
!68 = !{!26, !14, i64 552}
!69 = !{!26, !7, i64 308}
!70 = !{!26, !7, i64 516}
!71 = !{!"png_row_info_struct", !7, i64 0, !13, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 19}
!72 = !{!71, !6, i64 19}
!73 = !{!71, !13, i64 8}
!74 = !{!26, !6, i64 629}
!75 = distinct !{!75, i1 true, !"png_write_chunk_header"}
!76 = distinct !{!76, !75, !"png_write_chunk_header: argument 0"}
!77 = !{!76}
!78 = distinct !{!78, i1 true, !"png_write_chunk_header"}
!79 = distinct !{!79, !78, !"png_write_chunk_header: argument 0"}
!80 = distinct !{!80, i1 true, !"png_write_chunk_end"}
!81 = distinct !{!81, !80, !"png_write_chunk_end: argument 0"}
!82 = !{!79}
!83 = !{!81}
!84 = !{!26, !6, i64 627}
!85 = !{!26, !6, i64 1052}
!86 = distinct !{!86, i1 true, !"png_write_chunk_header"}
!87 = distinct !{!87, !86, !"png_write_chunk_header: argument 0"}
!88 = distinct !{!88, !34}
!89 = distinct !{!89, i1 true, !"png_write_chunk_end"}
!90 = distinct !{!90, !89, !"png_write_chunk_end: argument 0"}
!91 = !{!87}
!92 = !{!"png_color_struct", !6, i64 0, !6, i64 1, !6, i64 2}
!93 = !{!92, !6, i64 0}
!94 = !{!92, !6, i64 1}
!95 = !{!92, !6, i64 2}
!96 = !{!90}
!97 = distinct !{!97, i1 true, !"png_free_buffer_list"}
!98 = distinct !{!98, !97, !"png_free_buffer_list: argument 0"}
!99 = !{!26, !17, i64 432}
!100 = !{!98}
!101 = distinct !{!101, !34}
!102 = !{!26, !7, i64 444}
!103 = !{!26, !7, i64 448}
!104 = !{!26, !7, i64 452}
!105 = !{!26, !7, i64 456}
!106 = !{!26, !7, i64 304}
!107 = !{!26, !7, i64 460}
!108 = !{!26, !7, i64 464}
!109 = !{!26, !7, i64 468}
!110 = !{!26, !7, i64 472}
!111 = !{!26, !7, i64 476}
!112 = !{!26, !7, i64 480}
!113 = !{!26, !7, i64 484}
!114 = !{!26, !7, i64 488}
!115 = !{!26, !7, i64 492}
!116 = !{!26, !7, i64 496}
!117 = !{!26, !7, i64 500}
!118 = distinct !{!118, i1 true, !"png_write_complete_chunk"}
!119 = distinct !{!119, !118, !"png_write_complete_chunk: argument 0"}
!120 = distinct !{!120, i1 true, !"png_write_chunk_header"}
!121 = distinct !{!121, !120, !"png_write_chunk_header: argument 0"}
!122 = distinct !{!122, i1 true, !"png_write_chunk_end"}
!123 = distinct !{!123, !122, !"png_write_chunk_end: argument 0"}
!124 = !{!119}
!125 = !{!121}
!126 = !{!121, !119}
!127 = !{!123}
!128 = !{!123, !119}
!129 = distinct !{!129, i1 true, !"png_write_chunk_header"}
!130 = distinct !{!130, !129, !"png_write_chunk_header: argument 0"}
!131 = distinct !{!131, i1 true, !"png_write_compressed_data_out"}
!132 = distinct !{!132, !131, !"png_write_compressed_data_out: argument 0:thread"}
!133 = distinct !{!133, i1 true, !"png_write_compressed_data_out"}
!134 = distinct !{!134, !133, !"png_write_compressed_data_out: argument 0"}
!135 = distinct !{!135, i1 true, !"png_write_chunk_end"}
!136 = distinct !{!136, !135, !"png_write_chunk_end: argument 0"}
!137 = !{!130}
!138 = !{!132}
!139 = !{!134}
!140 = !{!136}
!141 = distinct !{!141, !34}
!142 = distinct !{!142, i1 true, !"png_write_chunk_header"}
!143 = distinct !{!143, !142, !"png_write_chunk_header: argument 0"}
!144 = distinct !{!144, i1 true, !"png_write_chunk_end"}
!145 = distinct !{!145, !144, !"png_write_chunk_end: argument 0:thread"}
!146 = distinct !{!146, !34}
!147 = distinct !{!147, i1 true, !"png_write_chunk_end"}
!148 = distinct !{!148, !147, !"png_write_chunk_end: argument 0"}
!149 = distinct !{!149, i1 true, !"png_write_chunk_end"}
!150 = distinct !{!150, !149, !"png_write_chunk_end: argument 0:thread"}
!151 = !{!"p1 _ZTS21png_sPLT_entry_struct", !11, i64 0}
!152 = !{!"png_sPLT_struct", !14, i64 0, !6, i64 8, !151, i64 16, !7, i64 24}
!153 = !{!152, !6, i64 8}
!154 = !{!152, !7, i64 24}
!155 = !{!152, !14, i64 0}
!156 = !{!143}
!157 = !{!152, !151, i64 16}
!158 = !{!145}
!159 = !{!"png_sPLT_entry_struct", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8}
end_hunk_2
