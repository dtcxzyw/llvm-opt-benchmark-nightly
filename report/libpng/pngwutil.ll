Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_compress_IDAT:bb.a
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
  %i.a = alloca [64 x i8], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.d, ptr %i.a, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 58, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 32, ptr %i.f, align 1, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %i.h, ptr %i.g, align 2, !tbaa !10
  %i.i = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 10, ptr noundef nonnull @.str.44) #12 ; 0 uses
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %i.j = load i32, ptr %i.b, align 8, !tbaa !49
  %i.k = icmp eq i32 %i.j, 1229209940
  br i1 %i.k, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @.str.45, ptr %i.l, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.d:                                             ; preds = %.thread, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.n = load i32, ptr %i.m, align 4, !tbaa !102  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.p = load i32, ptr %i.o, align 8, !tbaa !103  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.r = load i32, ptr %i.q, align 4, !tbaa !104  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.t = load i32, ptr %i.s, align 8, !tbaa !105  ; 2 uses
  %i.u = icmp eq i32 %1, 1229209940
  br i1 %i.u, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.w = load i32, ptr %i.v, align 8, !tbaa !106
  %i.x = and i32 %i.w, 1
  %.not79 = icmp eq i32 %i.x, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.z = load i32, ptr %i.y, align 4, !tbaa !107
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !47
  %.not80 = icmp ne i8 %i.ab, 8
  %. = zext i1 %.not80 to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !110
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !111
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !112
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.072 = phi i32 [ %i.n, %bb.f ], [ %i.n, %bb.g ], [ %i.ad, %bb.h ] ; 2 uses
  %.071 = phi i32 [ %i.p, %bb.f ], [ %i.p, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %.070 = phi i32 [ %i.r, %bb.f ], [ %i.r, %bb.g ], [ %i.ah, %bb.h ] ; 4 uses
  %.069 = phi i32 [ %i.t, %bb.f ], [ %i.t, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %.068 = phi i32 [ %i.z, %bb.f ], [ %., %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %i.am = icmp ult i64 %2, 16385
  br i1 %i.am, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %.070, -1
  %i.ao = shl nuw i32 1, %i.an                    ; 2 uses
  %i.ap = add nuw nsw i64 %2, 262                 ; 2 uses
  %i.aq = zext i32 %i.ao to i64
  %.not8196 = icmp samesign ugt i64 %i.ap, %i.aq
  br i1 %.not8196, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ar = trunc nuw nsw i64 %i.ap to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.098 = phi i32 [ %i.as, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ]
  %.197 = phi i32 [ %i.at, %.lr.ph ], [ %.070, %.lr.ph.preheader ]
  %i.as = lshr i32 %.098, 1                       ; 2 uses
  %i.at = add nsw i32 %.197, -1                   ; 2 uses
  %.not81 = icmp samesign ult i32 %i.as, %i.ar
  br i1 %.not81, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i
  %.2 = phi i32 [ %.070, %bb.i ], [ %.070, %bb.j ], [ %i.at, %.lr.ph ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !106 ; 3 uses
  %i.aw = and i32 %i.av, 2
  %.not82 = icmp eq i32 %i.aw, 0
  br i1 %.not82, label %bb.s, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !113
  %.not83 = icmp eq i32 %i.ay, %.072
  br i1 %.not83, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !114
  %.not84 = icmp eq i32 %i.ba, %.071
  br i1 %.not84, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !115
  %.not85 = icmp eq i32 %i.bc, %.2
  br i1 %.not85, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !116
  %.not86 = icmp eq i32 %i.be, %.069
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !117
  %.not87 = icmp eq i32 %i.bg, %.068
  br i1 %.not87, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bi = call i32 @deflateEnd(ptr noundef nonnull %i.bh) #12
  %.not88 = icmp eq i32 %i.bi, 0
  br i1 %.not88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = load i32, ptr %i.au, align 8, !tbaa !106
  %i.bk = and i32 %i.bj, -3                       ; 2 uses
  store i32 %i.bk, ptr %i.au, align 8, !tbaa !106
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %.loopexit
  %i.bl = phi i32 [ %i.bk, %bb.r ], [ %i.av, %bb.o ], [ %i.av, %.loopexit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.bn, align 8, !tbaa !55
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.bo, align 8, !tbaa !52
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.bp, align 8, !tbaa !53
  %i.bq = and i32 %i.bl, 2
  %.not89 = icmp eq i32 %i.bq, 0
  br i1 %.not89, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.br = call i32 @deflateInit2_(ptr noundef nonnull %i.bm, i32 noundef %.072, i32 noundef %.071, i32 noundef %.2, i32 noundef %.069, i32 noundef %.068, ptr noundef nonnull @.str.47, i32 noundef 112) #12 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.thread90, label %.thread93

.thread90:                                        ; preds = %bb.t
  %i.bt = load i32, ptr %i.au, align 8, !tbaa !106
  %i.bu = or i32 %i.bt, 2
  store i32 %i.bu, ptr %i.au, align 8, !tbaa !106
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bv = call i32 @deflateReset(ptr noundef nonnull %i.bm) #12 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.v, label %.thread93

bb.v:                                             ; preds = %.thread90, %bb.u
  store i32 %1, ptr %i.b, align 8, !tbaa !49
  br label %bb.w

.thread93:                                        ; preds = %bb.t, %bb.u
  %.06795 = phi i32 [ %i.bv, %bb.u ], [ %i.br, %bb.t ] ; 2 uses
  call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.06795) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.c, %bb.v, %.thread93
  %.175 = phi i32 [ -2, %bb.c ], [ %.06795, %.thread93 ], [ 0, %bb.v ]
  ret i32 %.175
end_hunk_0
