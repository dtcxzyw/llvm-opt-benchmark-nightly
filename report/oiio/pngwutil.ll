inline.NumInlined: 101
inline.NumDeleted: 13
begin_hunk_0_@png_compress_IDAT:bb.a
  br i1 %i.au, label %bb.m, label %optimize_cmf.exit

bb.m:                                             ; preds = %bb.l
  %i.av = tail call fastcc i64 @png_image_size(ptr noundef nonnull %0) ; 3 uses
  %i.aw = icmp samesign ult i64 %i.av, 16385
  br i1 %i.aw, label %bb.n, label %optimize_cmf.exit

bb.n:                                             ; preds = %bb.m
  %i.ax = load i8, ptr %i.ao, align 1, !tbaa !7
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
  br i1 %i.bl, label %.preheader.i, label %bb.p, !llvm.loop !81

bb.p:                                             ; preds = %.preheader.i
  %i.bm = shl i32 %i.bh, 4
  %i.bn = or disjoint i32 %i.bm, 8                ; 2 uses
  %i.bo = trunc i32 %i.bn to i8
  store i8 %i.bo, ptr %i.ao, align 1, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 9 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !7
  %i.br = and i8 %i.bq, -32                       ; 2 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl i32 %i.bn, 8
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %i.bv = urem i32 %i.bu, 31
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %i.bx = or disjoint i8 %i.br, %i.bw
  %i.by = xor i8 %i.bx, 31
  store i8 %i.by, ptr %i.bp, align 1, !tbaa !7
  br label %optimize_cmf.exit

optimize_cmf.exit:                                ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.not87 = icmp eq i32 %i.ap, 0
  br i1 %.not87, label %bb.r, label %bb.q

bb.q:                                             ; preds = %optimize_cmf.exit
  %i.bz = zext i32 %i.ap to i64
  tail call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1229209940, ptr noundef nonnull %i.ao, i64 noundef %i.bz)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %optimize_cmf.exit
  %i.ca = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.cb = or i32 %i.ca, 4
  store i32 %i.cb, ptr %i.ab, align 4, !tbaa !26
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !77
  store i32 %i.ap, ptr %i.y, align 8, !tbaa !78
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
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !71  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load i32, ptr %i.aa, align 8, !tbaa !72 ; 2 uses
  %i.cm = sub i32 %i.cl, %i.cd
  %i.cn = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.co = and i32 %i.cn, 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.y, label %optimize_cmf.exit98

bb.y:                                             ; preds = %bb.x
  %i.cq = load i8, ptr %i.ac, align 8, !tbaa !49
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.z, label %optimize_cmf.exit98

bb.z:                                             ; preds = %bb.y
  %i.cs = tail call fastcc i64 @png_image_size(ptr noundef nonnull %0) ; 3 uses
  %i.ct = icmp samesign ult i64 %i.cs, 16385
  br i1 %i.ct, label %bb.aa, label %optimize_cmf.exit98

bb.aa:                                            ; preds = %bb.z
  %i.cu = load i8, ptr %i.ck, align 1, !tbaa !7
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
  br i1 %i.di, label %.preheader.i95, label %bb.ac, !llvm.loop !81

bb.ac:                                            ; preds = %.preheader.i95
  %i.dj = shl i32 %i.de, 4
  %i.dk = or disjoint i32 %i.dj, 8                ; 2 uses
  %i.dl = trunc i32 %i.dk to i8
  store i8 %i.dl, ptr %i.ck, align 1, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 9 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !7
  %i.do = and i8 %i.dn, -32                       ; 2 uses
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl i32 %i.dk, 8
  %i.dr = or disjoint i32 %i.dq, %i.dp
  %i.ds = urem i32 %i.dr, 31
  %i.dt = trunc nuw nsw i32 %i.ds to i8
  %i.du = or disjoint i8 %i.do, %i.dt
  %i.dv = xor i8 %i.du, 31
  store i8 %i.dv, ptr %i.dm, align 1, !tbaa !7
  br label %optimize_cmf.exit98

optimize_cmf.exit98:                              ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.not90 = icmp eq i32 %i.cl, %i.cd
  br i1 %.not90, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %optimize_cmf.exit98
  %i.dw = zext i32 %i.cm to i64
  tail call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1229209940, ptr noundef nonnull %i.ck, i64 noundef %i.dw)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %optimize_cmf.exit98
  store i32 0, ptr %i.y, align 8, !tbaa !78
  store ptr null, ptr %i.ad, align 8, !tbaa !77
  %i.dx = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.dy = or i32 %i.dx, 12
  store i32 %i.dy, ptr %i.ab, align 4, !tbaa !26
  store i32 0, ptr %i.a, align 8, !tbaa !70
  br label %bb.ag

bb.af:                                            ; preds = %bb.w
  tail call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %i.ah) #12
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !76
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef %i.ea) #13
  unreachable

bb.ag:                                            ; preds = %bb.u, %bb.ae
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @png_deflate_claim(ptr noalias noundef %0, i32 noundef range(i32 1229209940, 2052348021) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = lshr i32 %i.c, 16
  %4 = lshr i32 %i.c, 24
  %5 = trunc nuw i32 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = lshr i32 %1, 24
  %i.e = trunc nuw nsw i32 %i.d to i8
  store i8 %i.e, ptr %i.a, align 16, !tbaa !7
  %i.f = lshr i32 %1, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !7
  %i.i = lshr i32 %1, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !7
  %i.l = trunc i32 %1 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 58, ptr %i.n, align 4, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 32, ptr %i.o, align 1, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %5, ptr %i.p, align 2, !tbaa !7
  %i.q = trunc i32 %3 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.q, ptr %i.r, align 1, !tbaa !7
  %i.s = lshr i32 %i.c, 8
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.t, ptr %i.u, align 8, !tbaa !7
  %i.v = trunc i32 %i.c to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.v, ptr %i.w, align 1, !tbaa !7
  %i.x = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 10, ptr noundef nonnull @.str.44) #12 ; 0 uses
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %i.y = load i32, ptr %i.b, align 8, !tbaa !70
  %i.z = icmp eq i32 %i.y, 1229209940
  br i1 %i.z, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @.str.45, ptr %i.aa, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.d:                                             ; preds = %.thread, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !82 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !83 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !84 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !85 ; 2 uses
  %i.aj = icmp eq i32 %1, 1229209940
  br i1 %i.aj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !86
  %i.am = and i32 %i.al, 1
  %.not79 = icmp eq i32 %i.am, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !87
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !57
  %.not80 = icmp ne i8 %i.aq, 8
  %. = zext i1 %.not80 to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !88
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.au = load i32, ptr %i.at, align 4, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !90
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !91
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !92
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.072 = phi i32 [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %i.as, %bb.h ] ; 2 uses
  %.071 = phi i32 [ %i.ae, %bb.f ], [ %i.ae, %bb.g ], [ %i.au, %bb.h ] ; 2 uses
  %.070 = phi i32 [ %i.ag, %bb.f ], [ %i.ag, %bb.g ], [ %i.aw, %bb.h ] ; 4 uses
  %.069 = phi i32 [ %i.ai, %bb.f ], [ %i.ai, %bb.g ], [ %i.ay, %bb.h ] ; 2 uses
  %.068 = phi i32 [ %i.ao, %bb.f ], [ %., %bb.g ], [ %i.ba, %bb.h ] ; 2 uses
  %i.bb = icmp ult i64 %2, 16385
  br i1 %i.bb, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bc = add nsw i32 %.070, -1
  %i.bd = shl nuw i32 1, %i.bc                    ; 2 uses
  %i.be = add nuw nsw i64 %2, 262                 ; 2 uses
  %i.bf = zext i32 %i.bd to i64
  %.not8196 = icmp samesign ugt i64 %i.be, %i.bf
  br i1 %.not8196, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bg = trunc nuw nsw i64 %i.be to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.098 = phi i32 [ %i.bh, %.lr.ph ], [ %i.bd, %.lr.ph.preheader ]
  %.197 = phi i32 [ %i.bi, %.lr.ph ], [ %.070, %.lr.ph.preheader ]
  %i.bh = lshr i32 %.098, 1                       ; 2 uses
  %i.bi = add nsw i32 %.197, -1                   ; 2 uses
  %.not81 = icmp samesign ult i32 %i.bh, %i.bg
  br i1 %.not81, label %.loopexit, label %.lr.ph, !llvm.loop !93

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i
  %.2 = phi i32 [ %.070, %bb.i ], [ %.070, %bb.j ], [ %i.bi, %.lr.ph ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !86 ; 3 uses
  %i.bl = and i32 %i.bk, 2
  %.not82 = icmp eq i32 %i.bl, 0
  br i1 %.not82, label %bb.s, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !94
  %.not83 = icmp eq i32 %i.bn, %.072
  br i1 %.not83, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !95
  %.not84 = icmp eq i32 %i.bp, %.071
  br i1 %.not84, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !96
  %.not85 = icmp eq i32 %i.br, %.2
  br i1 %.not85, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !97
  %.not86 = icmp eq i32 %i.bt, %.069
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !98
  %.not87 = icmp eq i32 %i.bv, %.068
  br i1 %.not87, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bx = call i32 @deflateEnd(ptr noundef nonnull %i.bw) #12
  %.not88 = icmp eq i32 %i.bx, 0
  br i1 %.not88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.by = load i32, ptr %i.bj, align 8, !tbaa !86
  %i.bz = and i32 %i.by, -3                       ; 2 uses
  store i32 %i.bz, ptr %i.bj, align 8, !tbaa !86
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %.loopexit
  %i.ca = phi i32 [ %i.bz, %bb.r ], [ %i.bk, %bb.o ], [ %i.bk, %.loopexit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !79
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.cc, align 8, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.cd, align 8, !tbaa !77
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.ce, align 8, !tbaa !78
  %i.cf = and i32 %i.ca, 2
  %.not89 = icmp eq i32 %i.cf, 0
  br i1 %.not89, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = call i32 @deflateInit2_(ptr noundef nonnull %i.cb, i32 noundef %.072, i32 noundef %.071, i32 noundef %.2, i32 noundef %.069, i32 noundef %.068, ptr noundef nonnull @.str.47, i32 noundef 112) #12 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.thread90, label %.thread93

.thread90:                                        ; preds = %bb.t
  %i.ci = load i32, ptr %i.bj, align 8, !tbaa !86
  %i.cj = or i32 %i.ci, 2
  store i32 %i.cj, ptr %i.bj, align 8, !tbaa !86
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ck = call i32 @deflateReset(ptr noundef nonnull %i.cb) #12 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.v, label %.thread93

bb.v:                                             ; preds = %.thread90, %bb.u
  store i32 %1, ptr %i.b, align 8, !tbaa !70
  br label %bb.w

.thread93:                                        ; preds = %bb.t, %bb.u
  %.06795 = phi i32 [ %i.ck, %bb.u ], [ %i.cg, %bb.t ] ; 2 uses
  call void @png_zstream_error(ptr noundef nonnull %0, i32 noundef %.06795) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.c, %bb.v, %.thread93
  %.175 = phi i32 [ -2, %bb.c ], [ %.06795, %.thread93 ], [ 0, %bb.v ]
  ret i32 %.175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i64 0, 4362728993185823) i64 @png_image_size(ptr noalias noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
end_hunk_0
