Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwutil?download=true
inline.NumInlined: 101
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@png_compress_IDAT:bb.a

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
  %i.a = alloca [64 x i8], align 16               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = lshr i32 %1, 24
  %i.e = trunc nuw nsw i32 %i.d to i8
  store i8 %i.e, ptr %i.a, align 16, !tbaa !10
  %i.f = lshr i32 %1, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !10
  %i.i = lshr i32 %1, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !10
  %i.l = trunc i32 %1 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 58, ptr %i.n, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 32, ptr %i.o, align 1, !tbaa !10
  %i.p = lshr i32 %i.c, 24
  %i.q = trunc nuw i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.q, ptr %i.r, align 2, !tbaa !10
  %i.s = lshr i32 %i.c, 16
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.t, ptr %i.u, align 1, !tbaa !10
  %i.v = lshr i32 %i.c, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.w, ptr %i.x, align 8, !tbaa !10
  %i.y = trunc i32 %i.c to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.y, ptr %i.z, align 1, !tbaa !10
  %i.aa = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 10, ptr noundef nonnull @.str.44) #12 ; 0 uses
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #12
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !49
  %i.ac = icmp eq i32 %i.ab, 1229209940
  br i1 %i.ac, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @.str.45, ptr %i.ad, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.w

bb.d:                                             ; preds = %.thread, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !102 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !103 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !105 ; 2 uses
  %i.am = icmp eq i32 %1, 1229209940
  br i1 %i.am, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !106
  %3 = and i32 %i.ao, 1
  %.not79 = icmp eq i32 %3, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !107
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !47
  %.not80 = icmp ne i8 %i.as, 8
  %. = zext i1 %.not80 to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.au = load i32, ptr %i.at, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !110
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !111
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !112
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %.072 = phi i32 [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.au, %bb.h ] ; 2 uses
  %.071 = phi i32 [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ %i.aw, %bb.h ] ; 2 uses
  %.070 = phi i32 [ %i.aj, %bb.f ], [ %i.aj, %bb.g ], [ %i.ay, %bb.h ] ; 4 uses
  %.069 = phi i32 [ %i.al, %bb.f ], [ %i.al, %bb.g ], [ %i.ba, %bb.h ] ; 2 uses
  %.068 = phi i32 [ %i.aq, %bb.f ], [ %., %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %i.bd = icmp ult i64 %2, 16385
  br i1 %i.bd, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %.070, -1
  %i.bf = shl nuw i32 1, %i.be                    ; 2 uses
  %i.bg = add nuw nsw i64 %2, 262                 ; 2 uses
  %i.bh = zext i32 %i.bf to i64
  %.not8196 = icmp samesign ugt i64 %i.bg, %i.bh
  br i1 %.not8196, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bi = trunc nuw nsw i64 %i.bg to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.098 = phi i32 [ %i.bj, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ]
  %.197 = phi i32 [ %i.bk, %.lr.ph ], [ %.070, %.lr.ph.preheader ]
  %i.bj = lshr i32 %.098, 1                       ; 2 uses
  %i.bk = add nsw i32 %.197, -1                   ; 2 uses
  %.not81 = icmp samesign ult i32 %i.bj, %i.bi
  br i1 %.not81, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i
  %.2 = phi i32 [ %.070, %bb.i ], [ %.070, %bb.j ], [ %i.bk, %.lr.ph ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !106 ; 3 uses
  %i.bn = and i32 %i.bm, 2
  %.not82 = icmp eq i32 %i.bn, 0
  br i1 %.not82, label %bb.s, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !113
  %.not83 = icmp eq i32 %i.bp, %.072
  br i1 %.not83, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !114
  %.not84 = icmp eq i32 %i.br, %.071
  br i1 %.not84, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !115
  %.not85 = icmp eq i32 %i.bt, %.2
  br i1 %.not85, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !116
  %.not86 = icmp eq i32 %i.bv, %.069
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !117
  %.not87 = icmp eq i32 %i.bx, %.068
  br i1 %.not87, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bz = call i32 @deflateEnd(ptr noundef nonnull %i.by) #12
  %.not88 = icmp eq i32 %i.bz, 0
  br i1 %.not88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ca = load i32, ptr %i.bl, align 8, !tbaa !106
  %i.cb = and i32 %i.ca, -3                       ; 2 uses
  store i32 %i.cb, ptr %i.bl, align 8, !tbaa !106
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %.loopexit
  %i.cc = phi i32 [ %i.cb, %bb.r ], [ %i.bm, %bb.o ], [ %i.bm, %.loopexit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store ptr null, ptr %i.cd, align 8, !tbaa !54
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.ce, align 8, !tbaa !55
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.cf, align 8, !tbaa !52
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 0, ptr %i.cg, align 8, !tbaa !53
  %i.ch = and i32 %i.cc, 2
  %.not89 = icmp eq i32 %i.ch, 0
  br i1 %.not89, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = call i32 @deflateInit2_(ptr noundef nonnull %i.cd, i32 noundef %.072, i32 noundef %.071, i32 noundef %.2, i32 noundef %.069, i32 noundef %.068, ptr noundef nonnull @.str.47, i32 noundef 112) #12 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.thread90, label %.thread93

.thread90:                                        ; preds = %bb.t
  %i.ck = load i32, ptr %i.bl, align 8, !tbaa !106
  %i.cl = or i32 %i.ck, 2
  store i32 %i.cl, ptr %i.bl, align 8, !tbaa !106
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cm = call i32 @deflateReset(ptr noundef nonnull %i.cd) #12 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %.thread93

bb.v:                                             ; preds = %.thread90, %bb.u
  store i32 %1, ptr %i.b, align 8, !tbaa !49
  br label %bb.w

.thread93:                                        ; preds = %bb.t, %bb.u
  %.06795 = phi i32 [ %i.cm, %bb.u ], [ %i.ci, %bb.t ] ; 2 uses
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
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.h = load i8, ptr %i.g, align 4, !tbaa !38
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.l = load i8, ptr %i.k, align 2, !tbaa !42
  %.fr45 = freeze i8 %i.l                         ; 3 uses
  %i.m = icmp ugt i8 %.fr45, 7
  %i.n = zext nneg i8 %.fr45 to i64               ; 7 uses
  %i.o = lshr i8 %.fr45, 3
  %i.p = zext nneg i8 %i.o to i64                 ; 7 uses
  %i.q = add i32 %i.j, 7
  %i.r = lshr i32 %i.q, 3                         ; 3 uses
  %.not40.us = icmp eq i32 %i.r, 0                ; 2 uses
  br i1 %i.m, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  br i1 %.not40.us, label %.split.1, label %bb.k

.split.us.preheader:                              ; preds = %bb.c
  br i1 %.not40.us, label %.split.us.1, label %bb.d

bb.d:                                             ; preds = %.split.us.preheader
  %i.s = zext nneg i32 %i.r to i64
  %i.t = mul nuw nsw i64 %i.s, %i.p
  %i.u = add nuw nsw i64 %i.t, 1
  %i.v = add nuw nsw i32 %i.b, 7
  %i.w = lshr i32 %i.v, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.u, %i.x
end_hunk_0
begin_hunk_1_@png_write_sBIT:bb.a
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !45
  %i.ai = icmp ugt i8 %i.ae, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.20) #12
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.aj = add nuw nsw i64 %.1, 1
  store i8 %i.ae, ptr %.1.sroa.phi, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.2 = phi i64 [ %i.aj, %bb.p ], [ %.1, %bb.l ]
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1933723988, ptr noundef nonnull %i.a, i64 noundef %.2)
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q, %bb.o, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_cHRM_fixed(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 4, !tbaa !169
  call void @png_save_int_32(ptr noundef nonnull %i.a, i32 noundef %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !170
  call void @png_save_int_32(ptr noundef nonnull %i.d, i32 noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i32, ptr %1, align 4, !tbaa !171
  call void @png_save_int_32(ptr noundef nonnull %i.g, i32 noundef %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !172
  call void @png_save_int_32(ptr noundef nonnull %i.i, i32 noundef %i.k) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !173
  call void @png_save_int_32(ptr noundef nonnull %i.l, i32 noundef %i.n) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !174
  call void @png_save_int_32(ptr noundef nonnull %i.o, i32 noundef %i.q) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !175
  call void @png_save_int_32(ptr noundef nonnull %i.r, i32 noundef %i.t) #12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !176
  call void @png_save_int_32(ptr noundef nonnull %i.u, i32 noundef %i.w) #12
  call fastcc void @png_write_complete_chunk(ptr noundef %0, i32 noundef 1665684045, ptr noundef nonnull %i.a, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @png_save_int_32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_write_tRNS(ptr noalias noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  switch i32 %4, label %bb.m [
    i32 3, label %bb.b
    i32 0, label %bb.f
    i32 2, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %3, 1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load i16, ptr %i.c, align 8, !tbaa !48
  %i.e = zext i16 %i.d to i32
  %i.f = icmp samesign ugt i32 %3, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @png_app_warning(ptr noundef %0, ptr noundef nonnull @.str.21) #12
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %3 to i64
  tail call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1951551059, ptr noundef %1, i64 noundef %i.g)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i16, ptr %i.h, align 2, !tbaa !60   ; 3 uses
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.l = load i8, ptr %i.k, align 8, !tbaa !36
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl nuw i32 1, %i.m
  %.not23 = icmp sgt i32 %i.n, %i.j
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #12
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.o = lshr i16 %i.i, 8
  %i.p = trunc nuw i16 %i.o to i8
  store i8 %i.p, ptr %i.a, align 1, !tbaa !10
  %i.q = trunc i16 %i.i to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1951551059, ptr noundef nonnull %i.a, i64 noundef 2)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !61   ; 2 uses
  %i.u = lshr i16 %i.t, 8
  %i.v = trunc nuw i16 %i.u to i8                 ; 2 uses
  store i8 %i.v, ptr %i.a, align 1, !tbaa !10
  %i.w = trunc i16 %i.t to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !62  ; 2 uses
  %i.ab = lshr i16 %i.aa, 8
  %i.ac = trunc nuw i16 %i.ab to i8               ; 2 uses
  store i8 %i.ac, ptr %i.y, align 1, !tbaa !10
  %i.ad = trunc i16 %i.aa to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !63 ; 2 uses
  %i.ai = lshr i16 %i.ah, 8
  %i.aj = trunc nuw i16 %i.ai to i8               ; 2 uses
  store i8 %i.aj, ptr %i.af, align 1, !tbaa !10
  %i.ak = trunc i16 %i.ah to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.an = load i8, ptr %i.am, align 8, !tbaa !36
  %i.ao = icmp eq i8 %i.an, 8
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = or i8 %i.ac, %i.v
  %i.aq = or i8 %i.ap, %i.aj
  %.not = icmp eq i8 %i.aq, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #12
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1951551059, ptr noundef nonnull %i.a, i64 noundef 6)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void @png_app_warning(ptr noundef %0, ptr noundef nonnull @.str.24) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.l, %bb.m, %bb.h, %bb.k, %bb.g, %bb.d
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
  %3 = and i32 %i.f, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i8, ptr %1, align 2, !tbaa !177
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i8, ptr %1, align 2, !tbaa !177     ; 2 uses
  %i.h = zext i8 %i.g to i16
  %.not23 = icmp ugt i16 %i.d, %i.h
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #12
  br label %bb.o

bb.f:                                             ; preds = %._crit_edge, %bb.d
  %i.i = phi i8 [ %.pre, %._crit_edge ], [ %i.g, %bb.d ]
  store i8 %i.i, ptr %i.a, align 1, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.j = and i32 %2, 2
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !61   ; 2 uses
  %i.m = lshr i16 %i.l, 8
  %i.n = trunc nuw i16 %i.m to i8                 ; 2 uses
  store i8 %i.n, ptr %i.a, align 1, !tbaa !10
  %i.o = trunc i16 %i.l to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i16, ptr %i.r, align 2, !tbaa !62   ; 2 uses
  %i.t = lshr i16 %i.s, 8
  %i.u = trunc nuw i16 %i.t to i8                 ; 2 uses
  store i8 %i.u, ptr %i.q, align 1, !tbaa !10
  %i.v = trunc i16 %i.s to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !63   ; 2 uses
  %i.aa = lshr i16 %i.z, 8
  %i.ab = trunc nuw i16 %i.aa to i8               ; 2 uses
  store i8 %i.ab, ptr %i.x, align 1, !tbaa !10
  %i.ac = trunc i16 %i.z to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !36
  %i.ag = icmp eq i8 %i.af, 8
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ah = or i8 %i.u, %i.n
  %i.ai = or i8 %i.ah, %i.ab
  %.not21 = icmp eq i8 %i.ai, 0
  br i1 %.not21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #12
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.h
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %i.a, i64 noundef 6)
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !60 ; 3 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.an = load i8, ptr %i.am, align 8, !tbaa !36
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = shl nuw i32 1, %i.ao
  %.not20 = icmp sgt i32 %i.ap, %i.al
  br i1 %.not20, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.27) #12
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aq = lshr i16 %i.ak, 8
  %i.ar = trunc nuw i16 %i.aq to i8
  store i8 %i.ar, ptr %i.a, align 1, !tbaa !10
  %i.as = trunc i16 %i.ak to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !10
  call fastcc void @png_write_complete_chunk(ptr noundef nonnull %0, i32 noundef 1649100612, ptr noundef nonnull %i.a, i64 noundef 2)
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n, %bb.k, %bb.m, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_cICP(ptr noalias noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !183
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %png_write_chunk_data.exit.thread, label %bb.b

png_write_chunk_data.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !184
  br label %png_write_chunk_end.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 3 uses
  store i32 34, ptr %i.e, align 4, !tbaa !27, !alias.scope !183
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <8 x i8> <i8 0, i8 0, i8 0, i8 4, i8 99, i8 73, i8 67, i8 80>, ptr %i.b, align 8, !tbaa !10, !noalias !183
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1665745744, ptr %i.g, align 8, !tbaa !29, !alias.scope !183
  call void @png_reset_crc(ptr noundef nonnull %0) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 4) #12
  store i32 66, ptr %i.e, align 4, !tbaa !27, !alias.scope !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !183
  store i8 %1, ptr %i.c, align 1, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %2, ptr %i.h, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %3, ptr %i.i, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %4, ptr %i.j, align 1, !tbaa !10
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #12
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 4) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !185
  store i32 130, ptr %i.e, align 4, !tbaa !27, !alias.scope !185
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30, !alias.scope !185 ; 4 uses
  %i.m = lshr i32 %i.l, 24
  %i.n = trunc nuw i32 %i.m to i8
  store i8 %i.n, ptr %i.a, align 1, !tbaa !10, !noalias !185
  %i.o = lshr i32 %i.l, 16
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !10, !noalias !185
  %i.r = lshr i32 %i.l, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.s, ptr %i.t, align 1, !tbaa !10, !noalias !185
  %i.u = trunc i32 %i.l to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.u, ptr %i.v, align 1, !tbaa !10, !noalias !185
  call void @png_write_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #12
  br label %png_write_chunk_end.exit

png_write_chunk_end.exit:                         ; preds = %png_write_chunk_data.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_cLLI_fixed(ptr noalias noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = lshr i32 %1, 24
  %i.c = trunc nuw i32 %i.b to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !10
  %i.d = lshr i32 %1, 16
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !10
  %i.g = lshr i32 %1, 8
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.h, ptr %i.i, align 1, !tbaa !10
  %i.j = trunc i32 %1 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.j, ptr %i.k, align 1, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = lshr i32 %2, 24
  %i.n = trunc nuw i32 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1, !tbaa !10
  %i.o = lshr i32 %2, 16
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.p, ptr %i.q, align 1, !tbaa !10
  %i.r = lshr i32 %2, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.s, ptr %i.t, align 1, !tbaa !10
  %i.u = trunc i32 %2 to i8
end_hunk_1
begin_hunk_2_@png_do_write_interlace:bb.a

bb.k:                                             ; preds = %.outer209
  %i.eh = lshr i32 %i.ef, 2
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.el = zext i8 %i.ek to i32
  %i.em = shl i32 %i.ef, 1
  %i.en = and i32 %i.em, 6
  %i.eo = xor i32 %i.en, 6
  %i.ep = lshr i32 %i.el, %i.eo
  %i.eq = shl nuw nsw i32 %i.ep, 4
  %i.er = and i32 %i.eq, 48
  %i.es = or disjoint i32 %i.er, %i.ee            ; 2 uses
  %i.et = add i32 %i.ef, %i.dt                    ; 4 uses
  %i.eu = icmp ult i32 %i.et, %i.d
  br i1 %i.eu, label %bb.l, label %.loopexit.sink.split, !llvm.loop !258

bb.l:                                             ; preds = %bb.k
  %i.ev = lshr i32 %i.et, 2
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !10
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl i32 %i.et, 1
  %i.fb = and i32 %i.fa, 6
  %i.fc = xor i32 %i.fb, 6
  %i.fd = lshr i32 %i.ez, %i.fc
  %i.fe = shl nuw nsw i32 %i.fd, 2
  %i.ff = and i32 %i.fe, 12
  %i.fg = or disjoint i32 %i.ff, %i.es            ; 2 uses
  %i.fh = add i32 %i.et, %i.dt                    ; 4 uses
  %i.fi = icmp ult i32 %i.fh, %i.d
  br i1 %i.fi, label %.thread182, label %.loopexit.sink.split, !llvm.loop !258

.thread182:                                       ; preds = %bb.l
  %i.fj = lshr i32 %i.fh, 2
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !10
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl i32 %i.fh, 1
  %i.fp = and i32 %i.fo, 6
  %i.fq = xor i32 %i.fp, 6
  %i.fr = lshr i32 %i.fn, %i.fq
  %i.fs = and i32 %i.fr, 3
  %i.ft = or disjoint i32 %i.fs, %i.fg
  %i.fu = trunc nuw i32 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %.0105125.ph, i64 1
  store i8 %i.fu, ptr %.0105125.ph, align 1, !tbaa !10
  %i.fw = add i32 %i.fh, %i.dt                    ; 2 uses
  %i.fx = icmp ult i32 %i.fw, %i.d
  br i1 %i.fx, label %.outer209, label %.loopexit, !llvm.loop !258

bb.m:                                             ; preds = %bb.b
  %i.fy = sext i32 %2 to i64                      ; 5 uses
  %i.fz = getelementptr inbounds i8, ptr @png_pass_start, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !10
  %i.gb = zext i8 %i.ga to i32                    ; 5 uses
  %i.gc = icmp ugt i32 %i.d, %i.gb
  br i1 %i.gc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.m
  %i.gd = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.fy
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10
  %i.gf = zext i8 %i.ge to i32                    ; 2 uses
  br label %.outer211

.outer211:                                        ; preds = %.lr.ph, %.thread196
  %.094122.ph = phi i32 [ %i.hf, %.thread196 ], [ %i.gb, %.lr.ph ] ; 3 uses
  %.098119.ph = phi ptr [ %i.he, %.thread196 ], [ %1, %.lr.ph ] ; 3 uses
  %i.gg = lshr i32 %.094122.ph, 1
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !10
  %i.gk = zext i8 %i.gj to i32
  %i.gl = shl i32 %.094122.ph, 2
  %i.gm = and i32 %i.gl, 4
  %i.gn = xor i32 %i.gm, 4
  %i.go = lshr i32 %i.gk, %i.gn
  %i.gp = shl nuw nsw i32 %i.go, 4                ; 2 uses
  %i.gq = add i32 %.094122.ph, %i.gf              ; 4 uses
  %i.gr = icmp ult i32 %i.gq, %i.d
  br i1 %i.gr, label %.thread196, label %.loopexit.sink.split, !llvm.loop !259

.thread196:                                       ; preds = %.outer211
  %i.gs = lshr i32 %i.gq, 1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !10
  %i.gw = zext i8 %i.gv to i32
  %i.gx = shl i32 %i.gq, 2
  %i.gy = and i32 %i.gx, 4
  %i.gz = xor i32 %i.gy, 4
  %i.ha = lshr i32 %i.gw, %i.gz
  %i.hb = and i32 %i.ha, 15
  %i.hc = or disjoint i32 %i.hb, %i.gp
  %i.hd = trunc i32 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %.098119.ph, i64 1
  store i8 %i.hd, ptr %.098119.ph, align 1, !tbaa !10
  %i.hf = add i32 %i.gq, %i.gf                    ; 2 uses
  %i.hg = icmp ult i32 %i.hf, %i.d
  br i1 %i.hg, label %.outer211, label %.loopexit, !llvm.loop !259

bb.n:                                             ; preds = %bb.b
  %i.hh = lshr i8 %i.c, 3
  %i.hi = zext nneg i8 %i.hh to i64               ; 3 uses
  %i.hj = sext i32 %2 to i64                      ; 4 uses
  %i.hk = getelementptr inbounds i8, ptr @png_pass_start, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !10
  %i.hm = zext i8 %i.hl to i32                    ; 4 uses
  %i.hn = icmp ugt i32 %i.d, %i.hm
  br i1 %i.hn, label %.lr.ph148, label %.loopexit

.lr.ph148:                                        ; preds = %bb.n
  %i.ho = getelementptr inbounds i8, ptr @png_pass_inc, i64 %i.hj
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !10
  %i.hq = zext i8 %i.hp to i32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph148, %bb.q
  %.0146 = phi i32 [ %i.hm, %.lr.ph148 ], [ %i.hv, %bb.q ] ; 2 uses
  %.093145 = phi ptr [ %1, %.lr.ph148 ], [ %i.hu, %bb.q ] ; 3 uses
  %i.hr = zext i32 %.0146 to i64
  %i.hs = mul nuw nsw i64 %i.hr, %i.hi
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %i.hs ; 2 uses
  %.not118 = icmp eq ptr %.093145, %i.ht
  br i1 %.not118, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.093145, ptr align 1 %i.ht, i64 %i.hi, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hu = getelementptr inbounds nuw i8, ptr %.093145, i64 %i.hi
  %i.hv = add i32 %.0146, %i.hq                   ; 2 uses
  %i.hw = icmp ult i32 %i.hv, %i.d
  br i1 %i.hw, label %bb.o, label %.loopexit, !llvm.loop !260

.loopexit.sink.split:                             ; preds = %.outer211, %.outer209, %bb.k, %bb.l, %.outer, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sink249 = phi i32 [ %i.cv, %bb.i ], [ %i.fg, %bb.l ], [ %i.v, %.outer ], [ %i.ai, %bb.d ], [ %i.av, %bb.e ], [ %i.bi, %bb.f ], [ %i.bv, %bb.g ], [ %i.ci, %bb.h ], [ %i.ee, %.outer209 ], [ %i.es, %bb.k ], [ %i.gp, %.outer211 ]
  %.098119.ph.sink = phi ptr [ %.0112135.ph, %.outer ], [ %.0105125.ph, %.outer209 ], [ %.0112135.ph, %bb.i ], [ %.0112135.ph, %bb.h ], [ %.0112135.ph, %bb.g ], [ %.0112135.ph, %bb.f ], [ %.0112135.ph, %bb.e ], [ %.0112135.ph, %bb.d ], [ %.0105125.ph, %bb.l ], [ %.0105125.ph, %bb.k ], [ %.098119.ph, %.outer211 ]
  %.pre-phi149.ph = phi i32 [ %i.h, %.outer ], [ %i.dp, %.outer209 ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.dp, %bb.l ], [ %i.dp, %bb.k ], [ %i.gb, %.outer211 ]
  %.pre-phi.ph = phi i64 [ %i.e, %.outer ], [ %i.dm, %.outer209 ], [ %i.e, %bb.i ], [ %i.e, %bb.h ], [ %i.e, %bb.g ], [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.d ], [ %i.dm, %bb.l ], [ %i.dm, %bb.k ], [ %i.fy, %.outer211 ]
  %i.hx = trunc i32 %.sink249 to i8
  store i8 %i.hx, ptr %.098119.ph.sink, align 1, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.thread196, %.thread182, %.thread, %bb.q, %.loopexit.sink.split, %bb.m, %bb.j, %bb.c, %bb.n
  %.pre-phi149 = phi i32 [ %i.gb, %bb.m ], [ %i.hm, %bb.n ], [ %i.hm, %bb.q ], [ %.pre-phi149.ph, %.loopexit.sink.split ], [ %i.dp, %.thread182 ], [ %i.dp, %bb.j ], [ %i.h, %bb.c ], [ %i.h, %.thread ], [ %i.gb, %.thread196 ]
  %.pre-phi = phi i64 [ %i.fy, %bb.m ], [ %i.hj, %bb.n ], [ %i.hj, %bb.q ], [ %.pre-phi.ph, %.loopexit.sink.split ], [ %i.dm, %.thread182 ], [ %i.dm, %bb.j ], [ %i.e, %bb.c ], [ %i.e, %.thread ], [ %i.fy, %.thread196 ]
  %i.hy = load i32, ptr %0, align 8, !tbaa !261
  %i.hz = getelementptr inbounds i8, ptr @png_pass_inc, i64 %.pre-phi
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !10
  %i.ib = zext i8 %i.ia to i32                    ; 2 uses
  %i.ic = add i32 %i.hy, %i.ib
  %i.id = xor i32 %.pre-phi149, -1
  %i.ie = add i32 %i.ic, %i.id
  %i.if = udiv i32 %i.ie, %i.ib                   ; 2 uses
  store i32 %i.if, ptr %0, align 8, !tbaa !261
  %i.ig = load i8, ptr %i.b, align 1, !tbaa !72   ; 3 uses
  %i.ih = icmp ugt i8 %i.ig, 7
  %i.ii = zext i32 %i.if to i64                   ; 2 uses
  br i1 %i.ih, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.ij = lshr i8 %i.ig, 3
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = mul nuw nsw i64 %i.ik, %i.ii
  br label %bb.t

bb.s:                                             ; preds = %.loopexit
  %i.im = zext nneg i8 %i.ig to i64
  %i.in = mul nuw nsw i64 %i.im, %i.ii
  %i.io = add nuw nsw i64 %i.in, 7
  %i.ip = lshr i64 %i.io, 3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.iq = phi i64 [ %i.il, %bb.r ], [ %i.ip, %bb.s ]
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !73
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_find_filter(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.b = load i8, ptr %i.a, align 2, !tbaa !47    ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !73   ; 37 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.g = load i8, ptr %i.f, align 1, !tbaa !72    ; 10 uses
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %i.h, 7
  %i.j = lshr i32 %i.i, 3                         ; 27 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 89 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 10 uses
  %i.n = icmp ugt i64 %i.e, 144115188075855870
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nsw i32 0, %i.c
  %i.p = and i32 %i.c, %i.o
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.c, 8
  %i.r = icmp ne i32 %i.q, 0
  %i.s = icmp ne i8 %i.b, 8
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %.not229 = icmp eq i64 %i.e, 0
  br i1 %.not229, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader706, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 144115188075855868       ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi272 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %wide.load = load <2 x i8>, ptr %i.u, align 1, !tbaa !10 ; 2 uses
  %wide.load273 = load <2 x i8>, ptr %i.v, align 1, !tbaa !10 ; 2 uses
  %i.w = zext <2 x i8> %wide.load to <2 x i64>    ; 2 uses
  %i.x = zext <2 x i8> %wide.load273 to <2 x i64> ; 2 uses
  %i.y = sub nuw nsw <2 x i64> splat (i64 256), %i.w
  %i.z = sub nuw nsw <2 x i64> splat (i64 256), %i.x
  %i.aa = icmp slt <2 x i8> %wide.load, zeroinitializer
  %i.ab = icmp slt <2 x i8> %wide.load273, zeroinitializer
  %i.ac = select <2 x i1> %i.aa, <2 x i64> %i.y, <2 x i64> %i.w
  %i.ad = select <2 x i1> %i.ab, <2 x i64> %i.z, <2 x i64> %i.x
  %i.ae = add <2 x i64> %i.ac, %vec.phi           ; 2 uses
  %i.af = add <2 x i64> %i.ad, %vec.phi272        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.af, %i.ae
  %i.ah = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader706

.lr.ph.preheader706:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0228.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0101227.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  %.pn226.ph = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader706, %.lr.ph
  %.0228 = phi i64 [ %i.ao, %.lr.ph ], [ %.0228.ph, %.lr.ph.preheader706 ]
  %.0101227 = phi i64 [ %i.an, %.lr.ph ], [ %.0101227.ph, %.lr.ph.preheader706 ]
  %.pn226 = phi ptr [ %.0102, %.lr.ph ], [ %.pn226.ph, %.lr.ph.preheader706 ]
  %.0102 = getelementptr inbounds nuw i8, ptr %.pn226, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.0102, align 1, !tbaa !10 ; 2 uses
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = sub nuw nsw i64 256, %i.aj
  %i.al = icmp slt i8 %i.ai, 0
  %i.am = select i1 %i.al, i64 %i.ak, i64 %i.aj
  %i.an = add i64 %i.am, %.0101227                ; 2 uses
  %i.ao = add nuw nsw i64 %.0228, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.e
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !263

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %.preheader, %bb.c, %bb.b
  %.0111 = phi i32 [ %i.p, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %.preheader ], [ %i.c, %middle.block ], [ %i.c, %.lr.ph ] ; 8 uses
  %.0103 = phi i64 [ -257, %bb.b ], [ -257, %bb.c ], [ 0, %.preheader ], [ %i.ah, %middle.block ], [ %i.an, %.lr.ph ] ; 4 uses
  %i.ap = icmp eq i32 %.0111, 16
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.aq = getelementptr i8, ptr %0, i64 568
  %.val128 = load ptr, ptr %i.aq, align 8, !tbaa !66 ; 9 uses
  store i8 1, ptr %.val128, align 1, !tbaa !10
  %i.ar = zext nneg i32 %i.j to i64               ; 13 uses
  %.0201.i = getelementptr inbounds nuw i8, ptr %.val128, i64 1 ; 6 uses
  %.0222.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 6 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader.i, label %iter.check620

iter.check620:                                    ; preds = %bb.d
  %.val128601 = ptrtoaddr ptr %.val128 to i64
  %min.iters.check604 = icmp ult i8 %i.g, 25
  %i.as = sub i64 %i.m, %.val128601
  %diff.check602 = icmp ugt i64 %i.as, -16
  %or.cond686 = select i1 %min.iters.check604, i1 true, i1 %diff.check602
  br i1 %or.cond686, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check605

vector.main.loop.iter.check605:                   ; preds = %iter.check620
  %min.iters.check606 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check606, label %vec.epilog.ph624, label %vector.ph607

vector.ph607:                                     ; preds = %vector.main.loop.iter.check605
  %i.at = and i64 %i.ar, 12
  %n.vec608 = and i64 %i.ar, 48                   ; 6 uses
  %i.au = getelementptr i8, ptr %.0222.i, i64 %n.vec608 ; 2 uses
  %i.av = getelementptr i8, ptr %.0201.i, i64 %n.vec608 ; 2 uses
  %wide.load613 = load <16 x i8>, ptr %.0222.i, align 1, !tbaa !10
  store <16 x i8> %wide.load613, ptr %.0201.i, align 1, !tbaa !10
  %i.aw = icmp eq i64 %n.vec608, 16
  br i1 %i.aw, label %middle.block615, label %vector.body609.1

vector.body609.1:                                 ; preds = %vector.ph607
  %next.gep611.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep612.1 = getelementptr i8, ptr %.val128, i64 17
  %wide.load613.1 = load <16 x i8>, ptr %next.gep611.1, align 1, !tbaa !10
  store <16 x i8> %wide.load613.1, ptr %next.gep612.1, align 1, !tbaa !10
  br label %middle.block615

middle.block615:                                  ; preds = %vector.body609.1, %vector.ph607
  %cmp.n616 = icmp eq i64 %n.vec608, %i.ar
  br i1 %cmp.n616, label %.preheader.i, label %vec.epilog.iter.check622

vec.epilog.iter.check622:                         ; preds = %middle.block615
  %min.epilog.iters.check623 = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check623, label %.lr.ph.i.preheader, label %vec.epilog.ph624, !prof !310

vec.epilog.ph624:                                 ; preds = %vector.main.loop.iter.check605, %vec.epilog.iter.check622
  %vec.epilog.resume.val617 = phi i64 [ %n.vec608, %vec.epilog.iter.check622 ], [ 0, %vector.main.loop.iter.check605 ]
  %n.vec625 = and i64 %i.ar, 60                   ; 5 uses
  %i.ax = getelementptr i8, ptr %.0222.i, i64 %n.vec625 ; 2 uses
  %i.ay = getelementptr i8, ptr %.0201.i, i64 %n.vec625 ; 2 uses
  br label %vec.epilog.vector.body626

vec.epilog.vector.body626:                        ; preds = %vec.epilog.vector.body626, %vec.epilog.ph624
  %index627 = phi i64 [ %vec.epilog.resume.val617, %vec.epilog.ph624 ], [ %index.next631, %vec.epilog.vector.body626 ] ; 3 uses
  %next.gep628 = getelementptr i8, ptr %.0222.i, i64 %index627
  %next.gep629 = getelementptr i8, ptr %.0201.i, i64 %index627
  %wide.load630 = load <4 x i8>, ptr %next.gep628, align 1, !tbaa !10
  store <4 x i8> %wide.load630, ptr %next.gep629, align 1, !tbaa !10
  %index.next631 = add nuw i64 %index627, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next631, %n.vec625
  br i1 %i.az, label %vec.epilog.middle.block632, label %vec.epilog.vector.body626, !llvm.loop !264

vec.epilog.middle.block632:                       ; preds = %vec.epilog.vector.body626
  %cmp.n633 = icmp eq i64 %n.vec625, %i.ar
  br i1 %cmp.n633, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check620, %vec.epilog.iter.check622, %vec.epilog.middle.block632
  %.0225.i.ph = phi ptr [ %.0222.i, %iter.check620 ], [ %i.au, %vec.epilog.iter.check622 ], [ %i.ax, %vec.epilog.middle.block632 ] ; 2 uses
  %.0204.i.ph = phi ptr [ %.0201.i, %iter.check620 ], [ %i.av, %vec.epilog.iter.check622 ], [ %i.ay, %vec.epilog.middle.block632 ] ; 2 uses
  %.03.i.ph = phi i64 [ 0, %iter.check620 ], [ %n.vec608, %vec.epilog.iter.check622 ], [ %n.vec625, %vec.epilog.middle.block632 ] ; 4 uses
  %i.ba = sub nsw i64 %i.ar, %.03.i.ph
  %xtraiter722 = and i64 %i.ba, 7                 ; 2 uses
  %lcmp.mod723.not = icmp eq i64 %xtraiter722, 0
  br i1 %lcmp.mod723.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.0225.i.prol = phi ptr [ %.022.i.prol, %.lr.ph.i.prol ], [ %.0225.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0204.i.prol = phi ptr [ %.020.i.prol, %.lr.ph.i.prol ], [ %.0204.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.03.i.prol = phi i64 [ %i.bc, %.lr.ph.i.prol ], [ %.03.i.ph, %.lr.ph.i.preheader ]
  %prol.iter724 = phi i64 [ %prol.iter724.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bb = load i8, ptr %.0225.i.prol, align 1, !tbaa !10
  store i8 %i.bb, ptr %.0204.i.prol, align 1, !tbaa !10
  %i.bc = add nuw nsw i64 %.03.i.prol, 1          ; 2 uses
  %.020.i.prol = getelementptr inbounds nuw i8, ptr %.0204.i.prol, i64 1 ; 3 uses
  %.022.i.prol = getelementptr inbounds nuw i8, ptr %.0225.i.prol, i64 1 ; 3 uses
  %prol.iter724.next = add i64 %prol.iter724, 1   ; 2 uses
  %prol.iter724.cmp.not = icmp eq i64 %prol.iter724.next, %xtraiter722
  br i1 %prol.iter724.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !265

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.022.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0225.i.unr = phi ptr [ %.0225.i.ph, %.lr.ph.i.preheader ], [ %.022.i.prol, %.lr.ph.i.prol ]
  %.0204.i.unr = phi ptr [ %.0204.i.ph, %.lr.ph.i.preheader ], [ %.020.i.prol, %.lr.ph.i.prol ]
  %.03.i.unr = phi i64 [ %.03.i.ph, %.lr.ph.i.preheader ], [ %i.bc, %.lr.ph.i.prol ]
  %i.bd = sub nsw i64 %.03.i.ph, %i.ar
  %i.be = icmp ugt i64 %i.bd, -8
  br i1 %i.be, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block615, %vec.epilog.middle.block632, %bb.d
  %.0.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.ar, %middle.block615 ], [ %i.ar, %vec.epilog.middle.block632 ], [ %i.ar, %.lr.ph.i ], [ %i.ar, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.020.lcssa.i = phi ptr [ %.0201.i, %bb.d ], [ %i.av, %middle.block615 ], [ %i.ay, %vec.epilog.middle.block632 ], [ %.020.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.020.i.7, %.lr.ph.i ] ; 7 uses
  %.022.lcssa.i = phi ptr [ %.0222.i, %bb.d ], [ %i.au, %middle.block615 ], [ %i.ax, %vec.epilog.middle.block632 ], [ %.022.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.022.i.7, %.lr.ph.i ] ; 7 uses
  %.020.lcssa.i638 = ptrtoaddr ptr %.020.lcssa.i to i64 ; 2 uses
  %.022.lcssa.i640 = ptrtoaddr ptr %.022.lcssa.i to i64
  %i.bf = icmp ult i64 %.0.lcssa.i, %i.e
  br i1 %i.bf, label %iter.check666, label %.thread214.thread

iter.check666:                                    ; preds = %.preheader.i
  %i.bg = sub i64 %i.e, %i.ar                     ; 7 uses
  %min.iters.check644 = icmp ult i64 %i.bg, 4
end_hunk_2
begin_hunk_3_@png_write_find_filter:bb.a
  %i.bh = sub i64 %.020.lcssa.i638, %i.m
  %i.bi = add i64 %i.bh, -2
  %diff.check639 = icmp ult i64 %i.bi, 31
  %i.bj = sub i64 %.022.lcssa.i640, %.020.lcssa.i638
  %diff.check641 = icmp ugt i64 %i.bj, -32
  %conflict.rdx642 = or i1 %diff.check639, %diff.check641
  br i1 %conflict.rdx642, label %.lr.ph12.i.preheader, label %vector.main.loop.iter.check645

vector.main.loop.iter.check645:                   ; preds = %vector.memcheck637
  %min.iters.check646 = icmp ult i64 %i.bg, 32
  br i1 %min.iters.check646, label %vec.epilog.ph670, label %vector.ph647

vector.ph647:                                     ; preds = %vector.main.loop.iter.check645
  %i.bk = and i64 %i.bg, 28
  %n.vec648 = and i64 %i.bg, -32                  ; 7 uses
  %i.bl = add i64 %.0.lcssa.i, %n.vec648
  %i.bm = getelementptr i8, ptr %i.l, i64 %n.vec648
  %i.bn = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec648
  %i.bo = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec648
  br label %vector.body649

vector.body649:                                   ; preds = %vector.ph647, %vector.body649
  %index650 = phi i64 [ 0, %vector.ph647 ], [ %index.next658, %vector.body649 ] ; 4 uses
  %next.gep651 = getelementptr i8, ptr %i.l, i64 %index650 ; 2 uses
  %next.gep652 = getelementptr i8, ptr %.020.lcssa.i, i64 %index650 ; 2 uses
  %next.gep653 = getelementptr i8, ptr %.022.lcssa.i, i64 %index650 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %next.gep651, i64 1
  %i.bq = getelementptr i8, ptr %next.gep653, i64 16
  %wide.load654 = load <16 x i8>, ptr %next.gep653, align 1, !tbaa !10
  %wide.load655 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %next.gep651, i64 17
  %wide.load656 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !10
  %wide.load657 = load <16 x i8>, ptr %i.br, align 1, !tbaa !10
  %i.bs = sub <16 x i8> %wide.load654, %wide.load656
  %i.bt = sub <16 x i8> %wide.load655, %wide.load657
  %i.bu = getelementptr i8, ptr %next.gep652, i64 16
  store <16 x i8> %i.bs, ptr %next.gep652, align 1, !tbaa !10
  store <16 x i8> %i.bt, ptr %i.bu, align 1, !tbaa !10
  %index.next658 = add nuw i64 %index650, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next658, %n.vec648
  br i1 %i.bv, label %middle.block659, label %vector.body649, !llvm.loop !266

middle.block659:                                  ; preds = %vector.body649
  %cmp.n660 = icmp eq i64 %i.bg, %n.vec648
  br i1 %cmp.n660, label %.thread214.thread, label %vec.epilog.iter.check668

vec.epilog.iter.check668:                         ; preds = %middle.block659
  %min.epilog.iters.check669 = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check669, label %.lr.ph12.i.preheader, label %vec.epilog.ph670, !prof !312

vec.epilog.ph670:                                 ; preds = %vector.main.loop.iter.check645, %vec.epilog.iter.check668
  %vec.epilog.resume.val661 = phi i64 [ %n.vec648, %vec.epilog.iter.check668 ], [ 0, %vector.main.loop.iter.check645 ]
  %n.vec671 = and i64 %i.bg, -4                   ; 6 uses
  %i.bw = add i64 %.0.lcssa.i, %n.vec671
  %i.bx = getelementptr i8, ptr %i.l, i64 %n.vec671
  %i.by = getelementptr i8, ptr %.020.lcssa.i, i64 %n.vec671
  %i.bz = getelementptr i8, ptr %.022.lcssa.i, i64 %n.vec671
  br label %vec.epilog.vector.body672

vec.epilog.vector.body672:                        ; preds = %vec.epilog.vector.body672, %vec.epilog.ph670
  %index673 = phi i64 [ %vec.epilog.resume.val661, %vec.epilog.ph670 ], [ %index.next679, %vec.epilog.vector.body672 ] ; 4 uses
  %next.gep674 = getelementptr i8, ptr %i.l, i64 %index673
  %next.gep675 = getelementptr i8, ptr %.020.lcssa.i, i64 %index673
  %next.gep676 = getelementptr i8, ptr %.022.lcssa.i, i64 %index673
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep674, i64 1
  %wide.load677 = load <4 x i8>, ptr %next.gep676, align 1, !tbaa !10
  %wide.load678 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !10
  %i.cb = sub <4 x i8> %wide.load677, %wide.load678
  store <4 x i8> %i.cb, ptr %next.gep675, align 1, !tbaa !10
  %index.next679 = add nuw i64 %index673, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next679, %n.vec671
  br i1 %i.cc, label %vec.epilog.middle.block680, label %vec.epilog.vector.body672, !llvm.loop !267

vec.epilog.middle.block680:                       ; preds = %vec.epilog.vector.body672
  %cmp.n681 = icmp eq i64 %i.bg, %n.vec671
  br i1 %cmp.n681, label %.thread214.thread, label %.lr.ph12.i.preheader

.lr.ph12.i.preheader:                             ; preds = %iter.check666, %vector.memcheck637, %vec.epilog.iter.check668, %vec.epilog.middle.block680
  %.111.i.ph = phi i64 [ %.0.lcssa.i, %iter.check666 ], [ %.0.lcssa.i, %vector.memcheck637 ], [ %i.bl, %vec.epilog.iter.check668 ], [ %i.bw, %vec.epilog.middle.block680 ] ; 4 uses
  %.pn10.i.ph = phi ptr [ %i.l, %iter.check666 ], [ %i.l, %vector.memcheck637 ], [ %i.bm, %vec.epilog.iter.check668 ], [ %i.bx, %vec.epilog.middle.block680 ] ; 2 uses
  %.1219.i.ph = phi ptr [ %.020.lcssa.i, %iter.check666 ], [ %.020.lcssa.i, %vector.memcheck637 ], [ %i.bn, %vec.epilog.iter.check668 ], [ %i.by, %vec.epilog.middle.block680 ] ; 2 uses
  %.1238.i.ph = phi ptr [ %.022.lcssa.i, %iter.check666 ], [ %.022.lcssa.i, %vector.memcheck637 ], [ %i.bo, %vec.epilog.iter.check668 ], [ %i.bz, %vec.epilog.middle.block680 ] ; 2 uses
  %i.cd = sub i64 %i.e, %.111.i.ph
  %xtraiter725 = and i64 %i.cd, 3                 ; 2 uses
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod726.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol

.lr.ph12.i.prol:                                  ; preds = %.lr.ph12.i.preheader, %.lr.ph12.i.prol
  %.111.i.prol = phi i64 [ %i.cg, %.lr.ph12.i.prol ], [ %.111.i.ph, %.lr.ph12.i.preheader ]
  %.pn10.i.prol = phi ptr [ %.019.i.prol, %.lr.ph12.i.prol ], [ %.pn10.i.ph, %.lr.ph12.i.preheader ]
  %.1219.i.prol = phi ptr [ %i.ci, %.lr.ph12.i.prol ], [ %.1219.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %.1238.i.prol = phi ptr [ %i.ch, %.lr.ph12.i.prol ], [ %.1238.i.ph, %.lr.ph12.i.preheader ] ; 2 uses
  %prol.iter727 = phi i64 [ %prol.iter727.next, %.lr.ph12.i.prol ], [ 0, %.lr.ph12.i.preheader ]
  %.019.i.prol = getelementptr inbounds nuw i8, ptr %.pn10.i.prol, i64 1 ; 3 uses
  %i.ce = load i8, ptr %.1238.i.prol, align 1, !tbaa !10
  %i.cf = load i8, ptr %.019.i.prol, align 1, !tbaa !10
  %.narrow.i.prol = sub i8 %i.ce, %i.cf
  store i8 %.narrow.i.prol, ptr %.1219.i.prol, align 1, !tbaa !10
  %i.cg = add nuw i64 %.111.i.prol, 1             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1238.i.prol, i64 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1219.i.prol, i64 1 ; 2 uses
  %prol.iter727.next = add i64 %prol.iter727, 1   ; 2 uses
  %prol.iter727.cmp.not = icmp eq i64 %prol.iter727.next, %xtraiter725
  br i1 %prol.iter727.cmp.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol, !llvm.loop !268

.lr.ph12.i.prol.loopexit:                         ; preds = %.lr.ph12.i.prol, %.lr.ph12.i.preheader
  %.111.i.unr = phi i64 [ %.111.i.ph, %.lr.ph12.i.preheader ], [ %i.cg, %.lr.ph12.i.prol ]
  %.pn10.i.unr = phi ptr [ %.pn10.i.ph, %.lr.ph12.i.preheader ], [ %.019.i.prol, %.lr.ph12.i.prol ]
  %.1219.i.unr = phi ptr [ %.1219.i.ph, %.lr.ph12.i.preheader ], [ %i.ci, %.lr.ph12.i.prol ]
  %.1238.i.unr = phi ptr [ %.1238.i.ph, %.lr.ph12.i.preheader ], [ %i.ch, %.lr.ph12.i.prol ]
  %i.cj = sub i64 %.111.i.ph, %i.e
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %.thread214.thread, label %.lr.ph12.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0225.i = phi ptr [ %.022.i.7, %.lr.ph.i ], [ %.0225.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0204.i = phi ptr [ %.020.i.7, %.lr.ph.i ], [ %.0204.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03.i = phi i64 [ %i.ct, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.cl = load i8, ptr %.0225.i, align 1, !tbaa !10
  store i8 %i.cl, ptr %.0204.i, align 1, !tbaa !10
  %.020.i = getelementptr inbounds nuw i8, ptr %.0204.i, i64 1
  %.022.i = getelementptr inbounds nuw i8, ptr %.0225.i, i64 1
  %i.cm = load i8, ptr %.022.i, align 1, !tbaa !10
  store i8 %i.cm, ptr %.020.i, align 1, !tbaa !10
  %.020.i.1 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 2
  %.022.i.1 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 2
  %i.cn = load i8, ptr %.022.i.1, align 1, !tbaa !10
  store i8 %i.cn, ptr %.020.i.1, align 1, !tbaa !10
  %.020.i.2 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 3
  %.022.i.2 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 3
  %i.co = load i8, ptr %.022.i.2, align 1, !tbaa !10
  store i8 %i.co, ptr %.020.i.2, align 1, !tbaa !10
  %.020.i.3 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 4
  %.022.i.3 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 4
  %i.cp = load i8, ptr %.022.i.3, align 1, !tbaa !10
  store i8 %i.cp, ptr %.020.i.3, align 1, !tbaa !10
  %.020.i.4 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 5
  %.022.i.4 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 5
  %i.cq = load i8, ptr %.022.i.4, align 1, !tbaa !10
  store i8 %i.cq, ptr %.020.i.4, align 1, !tbaa !10
  %.020.i.5 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 6
  %.022.i.5 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 6
  %i.cr = load i8, ptr %.022.i.5, align 1, !tbaa !10
  store i8 %i.cr, ptr %.020.i.5, align 1, !tbaa !10
  %.020.i.6 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 7
  %.022.i.6 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 7
  %i.cs = load i8, ptr %.022.i.6, align 1, !tbaa !10
  store i8 %i.cs, ptr %.020.i.6, align 1, !tbaa !10
  %i.ct = add nuw nsw i64 %.03.i, 8               ; 2 uses
  %.020.i.7 = getelementptr inbounds nuw i8, ptr %.0204.i, i64 8 ; 2 uses
  %.022.i.7 = getelementptr inbounds nuw i8, ptr %.0225.i, i64 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.ct, %i.ar
  br i1 %exitcond.not.i.7, label %.preheader.i, label %.lr.ph.i, !llvm.loop !269

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.prol.loopexit, %.lr.ph12.i
  %.111.i = phi i64 [ %i.di, %.lr.ph12.i ], [ %.111.i.unr, %.lr.ph12.i.prol.loopexit ]
  %.pn10.i = phi ptr [ %.019.i.3, %.lr.ph12.i ], [ %.pn10.i.unr, %.lr.ph12.i.prol.loopexit ] ; 4 uses
  %.1219.i = phi ptr [ %i.dk, %.lr.ph12.i ], [ %.1219.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.1238.i = phi ptr [ %i.dj, %.lr.ph12.i ], [ %.1238.i.unr, %.lr.ph12.i.prol.loopexit ] ; 5 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 1
  %i.cu = load i8, ptr %.1238.i, align 1, !tbaa !10
  %i.cv = load i8, ptr %.019.i, align 1, !tbaa !10
  %.narrow.i = sub i8 %i.cu, %i.cv
  store i8 %.narrow.i, ptr %.1219.i, align 1, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %.1238.i, i64 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.1219.i, i64 1
  %.019.i.1 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 2
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !10
  %i.cz = load i8, ptr %.019.i.1, align 1, !tbaa !10
  %.narrow.i.1 = sub i8 %i.cy, %i.cz
  store i8 %.narrow.i.1, ptr %i.cx, align 1, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %.1238.i, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %.1219.i, i64 2
  %.019.i.2 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 3
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dd = load i8, ptr %.019.i.2, align 1, !tbaa !10
  %.narrow.i.2 = sub i8 %i.dc, %i.dd
  store i8 %.narrow.i.2, ptr %i.db, align 1, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %.1238.i, i64 3
  %i.df = getelementptr inbounds nuw i8, ptr %.1219.i, i64 3
  %.019.i.3 = getelementptr inbounds nuw i8, ptr %.pn10.i, i64 4 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dh = load i8, ptr %.019.i.3, align 1, !tbaa !10
  %.narrow.i.3 = sub i8 %i.dg, %i.dh
  store i8 %.narrow.i.3, ptr %i.df, align 1, !tbaa !10
  %i.di = add nuw i64 %.111.i, 4                  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1238.i, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.1219.i, i64 4
  %exitcond15.not.i.3 = icmp eq i64 %i.di, %i.e
  br i1 %exitcond15.not.i.3, label %.thread214.thread, label %.lr.ph12.i, !llvm.loop !270

bb.e:                                             ; preds = %.loopexit
  %i.dl = and i32 %.0111, 16
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = getelementptr i8, ptr %0, i64 568       ; 2 uses
  %.val130 = load ptr, ptr %i.dm, align 8, !tbaa !66 ; 21 uses
  store i8 1, ptr %.val130, align 1, !tbaa !10
  %i.dn = zext nneg i32 %i.j to i64               ; 8 uses
  %.0331.i = getelementptr inbounds nuw i8, ptr %.val130, i64 1 ; 4 uses
  %.0352.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  %.not.i131 = icmp eq i32 %i.j, 0
  br i1 %.not.i131, label %.preheader.i134, label %.lr.ph.i132.preheader

.lr.ph.i132.preheader:                            ; preds = %bb.f
  %.val130275 = ptrtoaddr ptr %.val130 to i64
  %min.iters.check277 = icmp ult i8 %i.g, 57
  %i.do = sub i64 %i.m, %.val130275
  %diff.check = icmp ugt i64 %i.do, -4
  %or.cond687 = select i1 %min.iters.check277, i1 true, i1 %diff.check
  br i1 %or.cond687, label %.lr.ph.i132.preheader702, label %vector.ph278

vector.ph278:                                     ; preds = %.lr.ph.i132.preheader
  %n.vec279 = and i64 %i.dn, 60                   ; 11 uses
  %i.dp = getelementptr i8, ptr %.0352.i, i64 %n.vec279 ; 2 uses
  %i.dq = getelementptr i8, ptr %.0331.i, i64 %n.vec279 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.l, i64 3
  %wide.load286 = load <2 x i8>, ptr %.0352.i, align 1, !tbaa !10 ; 3 uses
  %wide.load287 = load <2 x i8>, ptr %i.dr, align 1, !tbaa !10 ; 3 uses
  %i.ds = getelementptr i8, ptr %.val130, i64 3
  store <2 x i8> %wide.load286, ptr %.0331.i, align 1, !tbaa !10
  store <2 x i8> %wide.load287, ptr %i.ds, align 1, !tbaa !10
  %i.dt = zext <2 x i8> %wide.load286 to <2 x i64> ; 2 uses
  %i.du = zext <2 x i8> %wide.load287 to <2 x i64> ; 2 uses
  %i.dv = sub nuw nsw <2 x i64> splat (i64 256), %i.dt
  %i.dw = sub nuw nsw <2 x i64> splat (i64 256), %i.du
  %i.dx = icmp slt <2 x i8> %wide.load286, zeroinitializer
  %i.dy = icmp slt <2 x i8> %wide.load287, zeroinitializer
  %i.dz = select <2 x i1> %i.dx, <2 x i64> %i.dv, <2 x i64> %i.dt ; 2 uses
  %i.ea = select <2 x i1> %i.dy, <2 x i64> %i.dw, <2 x i64> %i.du ; 2 uses
  %i.eb = icmp eq i64 %n.vec279, 4
  br i1 %i.eb, label %middle.block289, label %vector.body280.1

vector.body280.1:                                 ; preds = %vector.ph278
  %next.gep284.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep285.1 = getelementptr i8, ptr %.val130, i64 5
  %i.ec = getelementptr i8, ptr %i.l, i64 7
  %wide.load286.1 = load <2 x i8>, ptr %next.gep284.1, align 1, !tbaa !10 ; 3 uses
  %wide.load287.1 = load <2 x i8>, ptr %i.ec, align 1, !tbaa !10 ; 3 uses
  %i.ed = getelementptr i8, ptr %.val130, i64 7
  store <2 x i8> %wide.load286.1, ptr %next.gep285.1, align 1, !tbaa !10
  store <2 x i8> %wide.load287.1, ptr %i.ed, align 1, !tbaa !10
  %i.ee = zext <2 x i8> %wide.load286.1 to <2 x i64> ; 2 uses
  %i.ef = zext <2 x i8> %wide.load287.1 to <2 x i64> ; 2 uses
  %i.eg = sub nuw nsw <2 x i64> splat (i64 256), %i.ee
  %i.eh = sub nuw nsw <2 x i64> splat (i64 256), %i.ef
  %i.ei = icmp slt <2 x i8> %wide.load286.1, zeroinitializer
  %i.ej = icmp slt <2 x i8> %wide.load287.1, zeroinitializer
  %i.ek = select <2 x i1> %i.ei, <2 x i64> %i.eg, <2 x i64> %i.ee
  %i.el = select <2 x i1> %i.ej, <2 x i64> %i.eh, <2 x i64> %i.ef
  %i.em = add nuw nsw <2 x i64> %i.ek, %i.dz      ; 2 uses
  %i.en = add nuw nsw <2 x i64> %i.el, %i.ea      ; 2 uses
  %i.eo = icmp eq i64 %n.vec279, 8
  br i1 %i.eo, label %middle.block289, label %vector.body280.2

vector.body280.2:                                 ; preds = %vector.body280.1
  %next.gep284.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep285.2 = getelementptr i8, ptr %.val130, i64 9
  %i.ep = getelementptr i8, ptr %i.l, i64 11
  %wide.load286.2 = load <2 x i8>, ptr %next.gep284.2, align 1, !tbaa !10 ; 3 uses
  %wide.load287.2 = load <2 x i8>, ptr %i.ep, align 1, !tbaa !10 ; 3 uses
  %i.eq = getelementptr i8, ptr %.val130, i64 11
  store <2 x i8> %wide.load286.2, ptr %next.gep285.2, align 1, !tbaa !10
  store <2 x i8> %wide.load287.2, ptr %i.eq, align 1, !tbaa !10
  %i.er = zext <2 x i8> %wide.load286.2 to <2 x i64> ; 2 uses
  %i.es = zext <2 x i8> %wide.load287.2 to <2 x i64> ; 2 uses
  %i.et = sub nuw nsw <2 x i64> splat (i64 256), %i.er
  %i.eu = sub nuw nsw <2 x i64> splat (i64 256), %i.es
  %i.ev = icmp slt <2 x i8> %wide.load286.2, zeroinitializer
  %i.ew = icmp slt <2 x i8> %wide.load287.2, zeroinitializer
  %i.ex = select <2 x i1> %i.ev, <2 x i64> %i.et, <2 x i64> %i.er
  %i.ey = select <2 x i1> %i.ew, <2 x i64> %i.eu, <2 x i64> %i.es
  %i.ez = add nuw nsw <2 x i64> %i.ex, %i.em      ; 2 uses
  %i.fa = add nuw nsw <2 x i64> %i.ey, %i.en      ; 2 uses
  %i.fb = icmp eq i64 %n.vec279, 12
  br i1 %i.fb, label %middle.block289, label %vector.body280.3

vector.body280.3:                                 ; preds = %vector.body280.2
  %next.gep284.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep285.3 = getelementptr i8, ptr %.val130, i64 13
  %i.fc = getelementptr i8, ptr %i.l, i64 15
  %wide.load286.3 = load <2 x i8>, ptr %next.gep284.3, align 1, !tbaa !10 ; 3 uses
  %wide.load287.3 = load <2 x i8>, ptr %i.fc, align 1, !tbaa !10 ; 3 uses
  %i.fd = getelementptr i8, ptr %.val130, i64 15
  store <2 x i8> %wide.load286.3, ptr %next.gep285.3, align 1, !tbaa !10
  store <2 x i8> %wide.load287.3, ptr %i.fd, align 1, !tbaa !10
  %i.fe = zext <2 x i8> %wide.load286.3 to <2 x i64> ; 2 uses
  %i.ff = zext <2 x i8> %wide.load287.3 to <2 x i64> ; 2 uses
  %i.fg = sub nuw nsw <2 x i64> splat (i64 256), %i.fe
  %i.fh = sub nuw nsw <2 x i64> splat (i64 256), %i.ff
  %i.fi = icmp slt <2 x i8> %wide.load286.3, zeroinitializer
  %i.fj = icmp slt <2 x i8> %wide.load287.3, zeroinitializer
  %i.fk = select <2 x i1> %i.fi, <2 x i64> %i.fg, <2 x i64> %i.fe
  %i.fl = select <2 x i1> %i.fj, <2 x i64> %i.fh, <2 x i64> %i.ff
  %i.fm = add nuw nsw <2 x i64> %i.fk, %i.ez      ; 2 uses
  %i.fn = add nuw nsw <2 x i64> %i.fl, %i.fa      ; 2 uses
  %i.fo = icmp eq i64 %n.vec279, 16
  br i1 %i.fo, label %middle.block289, label %vector.body280.4

vector.body280.4:                                 ; preds = %vector.body280.3
  %next.gep284.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep285.4 = getelementptr i8, ptr %.val130, i64 17
  %i.fp = getelementptr i8, ptr %i.l, i64 19
  %wide.load286.4 = load <2 x i8>, ptr %next.gep284.4, align 1, !tbaa !10 ; 3 uses
  %wide.load287.4 = load <2 x i8>, ptr %i.fp, align 1, !tbaa !10 ; 3 uses
  %i.fq = getelementptr i8, ptr %.val130, i64 19
  store <2 x i8> %wide.load286.4, ptr %next.gep285.4, align 1, !tbaa !10
  store <2 x i8> %wide.load287.4, ptr %i.fq, align 1, !tbaa !10
  %i.fr = zext <2 x i8> %wide.load286.4 to <2 x i64> ; 2 uses
  %i.fs = zext <2 x i8> %wide.load287.4 to <2 x i64> ; 2 uses
  %i.ft = sub nuw nsw <2 x i64> splat (i64 256), %i.fr
  %i.fu = sub nuw nsw <2 x i64> splat (i64 256), %i.fs
  %i.fv = icmp slt <2 x i8> %wide.load286.4, zeroinitializer
  %i.fw = icmp slt <2 x i8> %wide.load287.4, zeroinitializer
  %i.fx = select <2 x i1> %i.fv, <2 x i64> %i.ft, <2 x i64> %i.fr
  %i.fy = select <2 x i1> %i.fw, <2 x i64> %i.fu, <2 x i64> %i.fs
  %i.fz = add nuw nsw <2 x i64> %i.fx, %i.fm      ; 2 uses
  %i.ga = add nuw nsw <2 x i64> %i.fy, %i.fn      ; 2 uses
  %i.gb = icmp eq i64 %n.vec279, 20
  br i1 %i.gb, label %middle.block289, label %vector.body280.5

vector.body280.5:                                 ; preds = %vector.body280.4
  %next.gep284.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep285.5 = getelementptr i8, ptr %.val130, i64 21
  %i.gc = getelementptr i8, ptr %i.l, i64 23
  %wide.load286.5 = load <2 x i8>, ptr %next.gep284.5, align 1, !tbaa !10 ; 3 uses
  %wide.load287.5 = load <2 x i8>, ptr %i.gc, align 1, !tbaa !10 ; 3 uses
  %i.gd = getelementptr i8, ptr %.val130, i64 23
  store <2 x i8> %wide.load286.5, ptr %next.gep285.5, align 1, !tbaa !10
  store <2 x i8> %wide.load287.5, ptr %i.gd, align 1, !tbaa !10
  %i.ge = zext <2 x i8> %wide.load286.5 to <2 x i64> ; 2 uses
  %i.gf = zext <2 x i8> %wide.load287.5 to <2 x i64> ; 2 uses
  %i.gg = sub nuw nsw <2 x i64> splat (i64 256), %i.ge
  %i.gh = sub nuw nsw <2 x i64> splat (i64 256), %i.gf
  %i.gi = icmp slt <2 x i8> %wide.load286.5, zeroinitializer
  %i.gj = icmp slt <2 x i8> %wide.load287.5, zeroinitializer
  %i.gk = select <2 x i1> %i.gi, <2 x i64> %i.gg, <2 x i64> %i.ge
  %i.gl = select <2 x i1> %i.gj, <2 x i64> %i.gh, <2 x i64> %i.gf
  %i.gm = add nuw nsw <2 x i64> %i.gk, %i.fz      ; 2 uses
  %i.gn = add nuw nsw <2 x i64> %i.gl, %i.ga      ; 2 uses
  %i.go = icmp eq i64 %n.vec279, 24
  br i1 %i.go, label %middle.block289, label %vector.body280.6

vector.body280.6:                                 ; preds = %vector.body280.5
  %next.gep284.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep285.6 = getelementptr i8, ptr %.val130, i64 25
  %i.gp = getelementptr i8, ptr %i.l, i64 27
  %wide.load286.6 = load <2 x i8>, ptr %next.gep284.6, align 1, !tbaa !10 ; 3 uses
  %wide.load287.6 = load <2 x i8>, ptr %i.gp, align 1, !tbaa !10 ; 3 uses
  %i.gq = getelementptr i8, ptr %.val130, i64 27
  store <2 x i8> %wide.load286.6, ptr %next.gep285.6, align 1, !tbaa !10
  store <2 x i8> %wide.load287.6, ptr %i.gq, align 1, !tbaa !10
  %i.gr = zext <2 x i8> %wide.load286.6 to <2 x i64> ; 2 uses
  %i.gs = zext <2 x i8> %wide.load287.6 to <2 x i64> ; 2 uses
  %i.gt = sub nuw nsw <2 x i64> splat (i64 256), %i.gr
  %i.gu = sub nuw nsw <2 x i64> splat (i64 256), %i.gs
  %i.gv = icmp slt <2 x i8> %wide.load286.6, zeroinitializer
  %i.gw = icmp slt <2 x i8> %wide.load287.6, zeroinitializer
  %i.gx = select <2 x i1> %i.gv, <2 x i64> %i.gt, <2 x i64> %i.gr
  %i.gy = select <2 x i1> %i.gw, <2 x i64> %i.gu, <2 x i64> %i.gs
  %i.gz = add <2 x i64> %i.gx, %i.gm              ; 2 uses
  %i.ha = add <2 x i64> %i.gy, %i.gn              ; 2 uses
  %i.hb = icmp eq i64 %n.vec279, 28
  br i1 %i.hb, label %middle.block289, label %vector.body280.7

vector.body280.7:                                 ; preds = %vector.body280.6
  %next.gep284.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep285.7 = getelementptr i8, ptr %.val130, i64 29
  %i.hc = getelementptr i8, ptr %i.l, i64 31
  %wide.load286.7 = load <2 x i8>, ptr %next.gep284.7, align 1, !tbaa !10 ; 3 uses
  %wide.load287.7 = load <2 x i8>, ptr %i.hc, align 1, !tbaa !10 ; 3 uses
  %i.hd = getelementptr i8, ptr %.val130, i64 31
  store <2 x i8> %wide.load286.7, ptr %next.gep285.7, align 1, !tbaa !10
  store <2 x i8> %wide.load287.7, ptr %i.hd, align 1, !tbaa !10
  %i.he = zext <2 x i8> %wide.load286.7 to <2 x i64> ; 2 uses
  %i.hf = zext <2 x i8> %wide.load287.7 to <2 x i64> ; 2 uses
  %i.hg = sub nuw nsw <2 x i64> splat (i64 256), %i.he
  %i.hh = sub nuw nsw <2 x i64> splat (i64 256), %i.hf
  %i.hi = icmp slt <2 x i8> %wide.load286.7, zeroinitializer
  %i.hj = icmp slt <2 x i8> %wide.load287.7, zeroinitializer
  %i.hk = select <2 x i1> %i.hi, <2 x i64> %i.hg, <2 x i64> %i.he
  %i.hl = select <2 x i1> %i.hj, <2 x i64> %i.hh, <2 x i64> %i.hf
  %i.hm = add <2 x i64> %i.hk, %i.gz
  %i.hn = add <2 x i64> %i.hl, %i.ha
  br label %middle.block289

middle.block289:                                  ; preds = %vector.body280.7, %vector.body280.6, %vector.body280.5, %vector.body280.4, %vector.body280.3, %vector.body280.2, %vector.body280.1, %vector.ph278
  %.lcssa705 = phi <2 x i64> [ %i.dz, %vector.ph278 ], [ %i.em, %vector.body280.1 ], [ %i.ez, %vector.body280.2 ], [ %i.fm, %vector.body280.3 ], [ %i.fz, %vector.body280.4 ], [ %i.gm, %vector.body280.5 ], [ %i.gz, %vector.body280.6 ], [ %i.hm, %vector.body280.7 ]
  %.lcssa704 = phi <2 x i64> [ %i.ea, %vector.ph278 ], [ %i.en, %vector.body280.1 ], [ %i.fa, %vector.body280.2 ], [ %i.fn, %vector.body280.3 ], [ %i.ga, %vector.body280.4 ], [ %i.gn, %vector.body280.5 ], [ %i.ha, %vector.body280.6 ], [ %i.hn, %vector.body280.7 ]
  %bin.rdx290 = add <2 x i64> %.lcssa704, %.lcssa705
  %i.ho = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx290) ; 2 uses
  %cmp.n291 = icmp eq i64 %n.vec279, %i.dn
  br i1 %cmp.n291, label %.preheader.i134, label %.lr.ph.i132.preheader702

.lr.ph.i132.preheader702:                         ; preds = %.lr.ph.i132.preheader, %middle.block289
  %.0356.i.ph = phi ptr [ %.0352.i, %.lr.ph.i132.preheader ], [ %i.dp, %middle.block289 ] ; 3 uses
  %.0335.i.ph = phi ptr [ %.0331.i, %.lr.ph.i132.preheader ], [ %i.dq, %middle.block289 ] ; 3 uses
  %.04.i.ph = phi i64 [ 0, %.lr.ph.i132.preheader ], [ %i.ho, %middle.block289 ] ; 2 uses
  %.0303.i.ph = phi i64 [ 0, %.lr.ph.i132.preheader ], [ %n.vec279, %middle.block289 ] ; 3 uses
  %xtraiter = and i64 %i.dn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i132.prol.loopexit, label %.lr.ph.i132.prol

.lr.ph.i132.prol:                                 ; preds = %.lr.ph.i132.preheader702
  %i.hp = load i8, ptr %.0356.i.ph, align 1, !tbaa !10 ; 3 uses
  store i8 %i.hp, ptr %.0335.i.ph, align 1, !tbaa !10
  %i.hq = zext i8 %i.hp to i64                    ; 2 uses
  %i.hr = sub nuw nsw i64 256, %i.hq
  %i.hs = icmp slt i8 %i.hp, 0
  %i.ht = select i1 %i.hs, i64 %i.hr, i64 %i.hq
  %i.hu = add i64 %i.ht, %.04.i.ph                ; 2 uses
  %i.hv = or disjoint i64 %.0303.i.ph, 1
  %.033.i.prol = getelementptr inbounds nuw i8, ptr %.0335.i.ph, i64 1 ; 2 uses
  %.035.i.prol = getelementptr inbounds nuw i8, ptr %.0356.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i132.prol.loopexit

.lr.ph.i132.prol.loopexit:                        ; preds = %.lr.ph.i132.prol, %.lr.ph.i132.preheader702
  %.lcssa703.unr = phi i64 [ poison, %.lr.ph.i132.preheader702 ], [ %i.hu, %.lr.ph.i132.prol ]
  %.033.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i132.preheader702 ], [ %.033.i.prol, %.lr.ph.i132.prol ]
  %.035.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i132.preheader702 ], [ %.035.i.prol, %.lr.ph.i132.prol ]
  %.0356.i.unr = phi ptr [ %.0356.i.ph, %.lr.ph.i132.preheader702 ], [ %.035.i.prol, %.lr.ph.i132.prol ]
  %.0335.i.unr = phi ptr [ %.0335.i.ph, %.lr.ph.i132.preheader702 ], [ %.033.i.prol, %.lr.ph.i132.prol ]
  %.04.i.unr = phi i64 [ %.04.i.ph, %.lr.ph.i132.preheader702 ], [ %i.hu, %.lr.ph.i132.prol ]
  %.0303.i.unr = phi i64 [ %.0303.i.ph, %.lr.ph.i132.preheader702 ], [ %i.hv, %.lr.ph.i132.prol ]
  %i.hw = add nsw i64 %i.dn, -1
  %i.hx = icmp eq i64 %.0303.i.ph, %i.hw
  br i1 %i.hx, label %.preheader.i134, label %.lr.ph.i132

.preheader.i134:                                  ; preds = %.lr.ph.i132.prol.loopexit, %.lr.ph.i132, %middle.block289, %bb.f
  %.030.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.dn, %middle.block289 ], [ %i.dn, %.lr.ph.i132 ], [ %i.dn, %.lr.ph.i132.prol.loopexit ] ; 2 uses
  %.0.lcssa.i135 = phi i64 [ 0, %bb.f ], [ %i.ho, %middle.block289 ], [ %.lcssa703.unr, %.lr.ph.i132.prol.loopexit ], [ %i.ik, %.lr.ph.i132 ] ; 2 uses
  %.033.lcssa.i = phi ptr [ %.0331.i, %bb.f ], [ %i.dq, %middle.block289 ], [ %.033.i.lcssa.unr, %.lr.ph.i132.prol.loopexit ], [ %.033.i.1, %.lr.ph.i132 ]
  %.035.lcssa.i = phi ptr [ %.0352.i, %bb.f ], [ %i.dp, %middle.block289 ], [ %.035.i.lcssa.unr, %.lr.ph.i132.prol.loopexit ], [ %.035.i.1, %.lr.ph.i132 ]
  %i.hy = icmp ult i64 %.030.lcssa.i, %i.e
  br i1 %i.hy, label %.lr.ph16.i, label %png_setup_sub_row.exit

.lr.ph.i132:                                      ; preds = %.lr.ph.i132.prol.loopexit, %.lr.ph.i132
  %.0356.i = phi ptr [ %.035.i.1, %.lr.ph.i132 ], [ %.0356.i.unr, %.lr.ph.i132.prol.loopexit ] ; 3 uses
  %.0335.i = phi ptr [ %.033.i.1, %.lr.ph.i132 ], [ %.0335.i.unr, %.lr.ph.i132.prol.loopexit ] ; 3 uses
  %.04.i = phi i64 [ %i.ik, %.lr.ph.i132 ], [ %.04.i.unr, %.lr.ph.i132.prol.loopexit ]
  %.0303.i = phi i64 [ %i.il, %.lr.ph.i132 ], [ %.0303.i.unr, %.lr.ph.i132.prol.loopexit ]
  %i.hz = load i8, ptr %.0356.i, align 1, !tbaa !10 ; 3 uses
  store i8 %i.hz, ptr %.0335.i, align 1, !tbaa !10
  %i.ia = zext i8 %i.hz to i64                    ; 2 uses
  %i.ib = sub nuw nsw i64 256, %i.ia
  %i.ic = icmp slt i8 %i.hz, 0
  %i.id = select i1 %i.ic, i64 %i.ib, i64 %i.ia
  %i.ie = add i64 %i.id, %.04.i
  %.033.i = getelementptr inbounds nuw i8, ptr %.0335.i, i64 1
  %.035.i = getelementptr inbounds nuw i8, ptr %.0356.i, i64 1
  %i.if = load i8, ptr %.035.i, align 1, !tbaa !10 ; 3 uses
  store i8 %i.if, ptr %.033.i, align 1, !tbaa !10
  %i.ig = zext i8 %i.if to i64                    ; 2 uses
  %i.ih = sub nuw nsw i64 256, %i.ig
  %i.ii = icmp slt i8 %i.if, 0
  %i.ij = select i1 %i.ii, i64 %i.ih, i64 %i.ig
  %i.ik = add i64 %i.ij, %i.ie                    ; 2 uses
  %i.il = add nuw nsw i64 %.0303.i, 2             ; 2 uses
  %.033.i.1 = getelementptr inbounds nuw i8, ptr %.0335.i, i64 2 ; 2 uses
  %.035.i.1 = getelementptr inbounds nuw i8, ptr %.0356.i, i64 2 ; 2 uses
  %exitcond.not.i133.1 = icmp eq i64 %i.il, %i.dn
  br i1 %exitcond.not.i133.1, label %.preheader.i134, label %.lr.ph.i132, !llvm.loop !271

.lr.ph16.i:                                       ; preds = %.preheader.i134, %.lr.ph16.i
  %.03215.pn.i = phi ptr [ %.03215.i, %.lr.ph16.i ], [ %i.l, %.preheader.i134 ]
  %.114.i = phi i64 [ %i.is, %.lr.ph16.i ], [ %.0.lcssa.i135, %.preheader.i134 ]
  %.13113.i = phi i64 [ %i.iu, %.lr.ph16.i ], [ %.030.lcssa.i, %.preheader.i134 ]
  %.13412.i = phi ptr [ %i.iw, %.lr.ph16.i ], [ %.033.lcssa.i, %.preheader.i134 ] ; 2 uses
  %.13611.i = phi ptr [ %i.iv, %.lr.ph16.i ], [ %.035.lcssa.i, %.preheader.i134 ] ; 2 uses
  %.03215.i = getelementptr inbounds nuw i8, ptr %.03215.pn.i, i64 1 ; 2 uses
  %i.im = load i8, ptr %.13611.i, align 1, !tbaa !10
  %i.in = load i8, ptr %.03215.i, align 1, !tbaa !10
  %.narrow.i136 = sub i8 %i.im, %i.in             ; 3 uses
  store i8 %.narrow.i136, ptr %.13412.i, align 1, !tbaa !10
  %i.io = zext i8 %.narrow.i136 to i64            ; 2 uses
  %i.ip = sub nuw nsw i64 256, %i.io
  %i.iq = icmp slt i8 %.narrow.i136, 0
  %i.ir = select i1 %i.iq, i64 %i.ip, i64 %i.io
  %i.is = add i64 %i.ir, %.114.i                  ; 3 uses
  %i.it = icmp ule i64 %i.is, %.0103
  %i.iu = add nuw i64 %.13113.i, 1                ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.13611.i, i64 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.13412.i, i64 1
  %i.ix = icmp ult i64 %i.iu, %i.e
  %or.cond.i = select i1 %i.it, i1 %i.ix, i1 false
  br i1 %or.cond.i, label %.lr.ph16.i, label %png_setup_sub_row.exit, !llvm.loop !272

png_setup_sub_row.exit:                           ; preds = %.lr.ph16.i, %.preheader.i134
  %.2.i = phi i64 [ %.0.lcssa.i135, %.preheader.i134 ], [ %i.is, %.lr.ph16.i ] ; 3 uses
  %i.iy = icmp ult i64 %.2.i, %.0103
  br i1 %i.iy, label %bb.g, label %bb.i

bb.g:                                             ; preds = %png_setup_sub_row.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !67 ; 2 uses
  %.not121 = icmp eq ptr %i.ja, null
  br i1 %.not121, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ja, ptr %i.dm, align 8, !tbaa !66
  store ptr %.val130, ptr %i.iz, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %png_setup_sub_row.exit, %bb.h, %bb.g, %bb.e
  %.1105 = phi ptr [ %i.l, %png_setup_sub_row.exit ], [ %i.l, %bb.e ], [ %.val130, %bb.h ], [ %.val130, %bb.g ] ; 2 uses
  %.2 = phi i64 [ %.0103, %png_setup_sub_row.exit ], [ %.0103, %bb.e ], [ %.2.i, %bb.h ], [ %.2.i, %bb.g ] ; 4 uses
  %i.jb = icmp eq i32 %.0111, 32
  br i1 %i.jb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !66, !alias.scope !313 ; 13 uses
  %i.je = ptrtoaddr ptr %i.jd to i64              ; 2 uses
  store i8 2, ptr %i.jd, align 1, !tbaa !10, !noalias !313
  %.not.i137 = icmp eq i64 %i.e, 0
  br i1 %.not.i137, label %.thread214.thread, label %iter.check580

iter.check580:                                    ; preds = %bb.j
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !68, !alias.scope !313 ; 7 uses
  %min.iters.check559 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check559, label %.lr.ph.i138.preheader, label %vector.memcheck554

vector.memcheck554:                               ; preds = %iter.check580
  %i.jh = ptrtoaddr ptr %i.jg to i64
  %i.ji = sub i64 %i.m, %i.je
  %diff.check555 = icmp ugt i64 %i.ji, -32
  %i.jj = sub i64 %i.jh, %i.je
  %diff.check556 = icmp ugt i64 %i.jj, -32
  %conflict.rdx557 = or i1 %diff.check555, %diff.check556
  br i1 %conflict.rdx557, label %.lr.ph.i138.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %vector.memcheck554
  %min.iters.check561 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check561, label %vec.epilog.ph584, label %vector.ph562

vector.ph562:                                     ; preds = %vector.main.loop.iter.check560
  %i.jk = and i64 %i.e, 28
  %n.vec563 = and i64 %i.e, -32                   ; 7 uses
  %i.jl = getelementptr i8, ptr %i.jg, i64 %n.vec563
  %i.jm = getelementptr i8, ptr %i.jd, i64 %n.vec563
  %i.jn = getelementptr i8, ptr %i.l, i64 %n.vec563
  br label %vector.body564

vector.body564:                                   ; preds = %vector.ph562, %vector.body564
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next573, %vector.body564 ] ; 4 uses
  %next.gep566 = getelementptr i8, ptr %i.jg, i64 %index565 ; 2 uses
  %next.gep567 = getelementptr i8, ptr %i.jd, i64 %index565 ; 2 uses
  %next.gep568 = getelementptr i8, ptr %i.l, i64 %index565 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %next.gep567, i64 1
  %i.jp = getelementptr inbounds nuw i8, ptr %next.gep566, i64 1
  %i.jq = getelementptr inbounds nuw i8, ptr %next.gep568, i64 1
  %i.jr = getelementptr inbounds nuw i8, ptr %next.gep568, i64 17
  %wide.load569 = load <16 x i8>, ptr %i.jq, align 1, !tbaa !10, !noalias !313
  %wide.load570 = load <16 x i8>, ptr %i.jr, align 1, !tbaa !10, !noalias !313
  %i.js = getelementptr inbounds nuw i8, ptr %next.gep566, i64 17
  %wide.load571 = load <16 x i8>, ptr %i.jp, align 1, !tbaa !10, !noalias !313
  %wide.load572 = load <16 x i8>, ptr %i.js, align 1, !tbaa !10, !noalias !313
  %i.jt = sub <16 x i8> %wide.load569, %wide.load571
  %i.ju = sub <16 x i8> %wide.load570, %wide.load572
  %i.jv = getelementptr inbounds nuw i8, ptr %next.gep567, i64 17
  store <16 x i8> %i.jt, ptr %i.jo, align 1, !tbaa !10, !noalias !313
  store <16 x i8> %i.ju, ptr %i.jv, align 1, !tbaa !10, !noalias !313
  %index.next573 = add nuw i64 %index565, 32      ; 2 uses
  %i.jw = icmp eq i64 %index.next573, %n.vec563
  br i1 %i.jw, label %middle.block574, label %vector.body564, !llvm.loop !275

middle.block574:                                  ; preds = %vector.body564
  %cmp.n575 = icmp eq i64 %i.e, %n.vec563
  br i1 %cmp.n575, label %.thread214.thread, label %vec.epilog.iter.check582

vec.epilog.iter.check582:                         ; preds = %middle.block574
  %min.epilog.iters.check583 = icmp eq i64 %i.jk, 0
  br i1 %min.epilog.iters.check583, label %.lr.ph.i138.preheader, label %vec.epilog.ph584, !prof !312

vec.epilog.ph584:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check582
  %vec.epilog.resume.val576 = phi i64 [ %n.vec563, %vec.epilog.iter.check582 ], [ 0, %vector.main.loop.iter.check560 ]
  %n.vec585 = and i64 %i.e, -4                    ; 6 uses
  %i.jx = getelementptr i8, ptr %i.jg, i64 %n.vec585
  %i.jy = getelementptr i8, ptr %i.jd, i64 %n.vec585
  %i.jz = getelementptr i8, ptr %i.l, i64 %n.vec585
  br label %vec.epilog.vector.body586

vec.epilog.vector.body586:                        ; preds = %vec.epilog.vector.body586, %vec.epilog.ph584
  %index587 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph584 ], [ %index.next593, %vec.epilog.vector.body586 ] ; 4 uses
  %next.gep588 = getelementptr i8, ptr %i.jg, i64 %index587
  %next.gep589 = getelementptr i8, ptr %i.jd, i64 %index587
  %next.gep590 = getelementptr i8, ptr %i.l, i64 %index587
  %i.ka = getelementptr inbounds nuw i8, ptr %next.gep589, i64 1
  %i.kb = getelementptr inbounds nuw i8, ptr %next.gep588, i64 1
  %i.kc = getelementptr inbounds nuw i8, ptr %next.gep590, i64 1
  %wide.load591 = load <4 x i8>, ptr %i.kc, align 1, !tbaa !10, !noalias !313
  %wide.load592 = load <4 x i8>, ptr %i.kb, align 1, !tbaa !10, !noalias !313
  %i.kd = sub <4 x i8> %wide.load591, %wide.load592
  store <4 x i8> %i.kd, ptr %i.ka, align 1, !tbaa !10, !noalias !313
  %index.next593 = add nuw i64 %index587, 4       ; 2 uses
  %i.ke = icmp eq i64 %index.next593, %n.vec585
  br i1 %i.ke, label %vec.epilog.middle.block594, label %vec.epilog.vector.body586, !llvm.loop !276

vec.epilog.middle.block594:                       ; preds = %vec.epilog.vector.body586
  %cmp.n595 = icmp eq i64 %i.e, %n.vec585
end_hunk_3
begin_hunk_4_@png_write_find_filter:bb.a
  %i.rm = add nuw nsw <2 x i64> %i.rk, %i.qu      ; 2 uses
  %i.rn = add nuw nsw <2 x i64> %i.rl, %i.qv      ; 2 uses
  %i.ro = icmp eq i64 %n.vec302, 8
  br i1 %i.ro, label %middle.block315, label %vector.body303.2

vector.body303.2:                                 ; preds = %vector.body303.1
  %next.gep307.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep308.2 = getelementptr i8, ptr %i.py, i64 9
  %next.gep309.2 = getelementptr i8, ptr %i.pv, i64 9
  %i.rp = getelementptr i8, ptr %i.l, i64 11
  %wide.load310.2 = load <2 x i8>, ptr %next.gep307.2, align 1, !tbaa !10, !noalias !317
  %wide.load311.2 = load <2 x i8>, ptr %i.rp, align 1, !tbaa !10, !noalias !317
  %i.rq = getelementptr i8, ptr %i.py, i64 11
  %wide.load312.2 = load <2 x i8>, ptr %next.gep308.2, align 1, !tbaa !10, !noalias !317
  %wide.load313.2 = load <2 x i8>, ptr %i.rq, align 1, !tbaa !10, !noalias !317
  %i.rr = lshr <2 x i8> %wide.load312.2, splat (i8 1)
  %i.rs = lshr <2 x i8> %wide.load313.2, splat (i8 1)
  %i.rt = sub <2 x i8> %wide.load310.2, %i.rr     ; 3 uses
  %i.ru = sub <2 x i8> %wide.load311.2, %i.rs     ; 3 uses
  %i.rv = getelementptr i8, ptr %i.pv, i64 11
  store <2 x i8> %i.rt, ptr %next.gep309.2, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.ru, ptr %i.rv, align 1, !tbaa !10, !noalias !317
  %i.rw = zext <2 x i8> %i.rt to <2 x i64>        ; 2 uses
  %i.rx = zext <2 x i8> %i.ru to <2 x i64>        ; 2 uses
  %i.ry = sub nuw nsw <2 x i64> splat (i64 256), %i.rw
  %i.rz = sub nuw nsw <2 x i64> splat (i64 256), %i.rx
  %i.sa = icmp slt <2 x i8> %i.rt, zeroinitializer
  %i.sb = icmp slt <2 x i8> %i.ru, zeroinitializer
  %i.sc = select <2 x i1> %i.sa, <2 x i64> %i.ry, <2 x i64> %i.rw
  %i.sd = select <2 x i1> %i.sb, <2 x i64> %i.rz, <2 x i64> %i.rx
  %i.se = add nuw nsw <2 x i64> %i.sc, %i.rm      ; 2 uses
  %i.sf = add nuw nsw <2 x i64> %i.sd, %i.rn      ; 2 uses
  %i.sg = icmp eq i64 %n.vec302, 12
  br i1 %i.sg, label %middle.block315, label %vector.body303.3

vector.body303.3:                                 ; preds = %vector.body303.2
  %next.gep307.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep308.3 = getelementptr i8, ptr %i.py, i64 13
  %next.gep309.3 = getelementptr i8, ptr %i.pv, i64 13
  %i.sh = getelementptr i8, ptr %i.l, i64 15
  %wide.load310.3 = load <2 x i8>, ptr %next.gep307.3, align 1, !tbaa !10, !noalias !317
  %wide.load311.3 = load <2 x i8>, ptr %i.sh, align 1, !tbaa !10, !noalias !317
  %i.si = getelementptr i8, ptr %i.py, i64 15
  %wide.load312.3 = load <2 x i8>, ptr %next.gep308.3, align 1, !tbaa !10, !noalias !317
  %wide.load313.3 = load <2 x i8>, ptr %i.si, align 1, !tbaa !10, !noalias !317
  %i.sj = lshr <2 x i8> %wide.load312.3, splat (i8 1)
  %i.sk = lshr <2 x i8> %wide.load313.3, splat (i8 1)
  %i.sl = sub <2 x i8> %wide.load310.3, %i.sj     ; 3 uses
  %i.sm = sub <2 x i8> %wide.load311.3, %i.sk     ; 3 uses
  %i.sn = getelementptr i8, ptr %i.pv, i64 15
  store <2 x i8> %i.sl, ptr %next.gep309.3, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.sm, ptr %i.sn, align 1, !tbaa !10, !noalias !317
  %i.so = zext <2 x i8> %i.sl to <2 x i64>        ; 2 uses
  %i.sp = zext <2 x i8> %i.sm to <2 x i64>        ; 2 uses
  %i.sq = sub nuw nsw <2 x i64> splat (i64 256), %i.so
  %i.sr = sub nuw nsw <2 x i64> splat (i64 256), %i.sp
  %i.ss = icmp slt <2 x i8> %i.sl, zeroinitializer
  %i.st = icmp slt <2 x i8> %i.sm, zeroinitializer
  %i.su = select <2 x i1> %i.ss, <2 x i64> %i.sq, <2 x i64> %i.so
  %i.sv = select <2 x i1> %i.st, <2 x i64> %i.sr, <2 x i64> %i.sp
  %i.sw = add nuw nsw <2 x i64> %i.su, %i.se      ; 2 uses
  %i.sx = add nuw nsw <2 x i64> %i.sv, %i.sf      ; 2 uses
  %i.sy = icmp eq i64 %n.vec302, 16
  br i1 %i.sy, label %middle.block315, label %vector.body303.4

vector.body303.4:                                 ; preds = %vector.body303.3
  %next.gep307.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep308.4 = getelementptr i8, ptr %i.py, i64 17
  %next.gep309.4 = getelementptr i8, ptr %i.pv, i64 17
  %i.sz = getelementptr i8, ptr %i.l, i64 19
  %wide.load310.4 = load <2 x i8>, ptr %next.gep307.4, align 1, !tbaa !10, !noalias !317
  %wide.load311.4 = load <2 x i8>, ptr %i.sz, align 1, !tbaa !10, !noalias !317
  %i.ta = getelementptr i8, ptr %i.py, i64 19
  %wide.load312.4 = load <2 x i8>, ptr %next.gep308.4, align 1, !tbaa !10, !noalias !317
  %wide.load313.4 = load <2 x i8>, ptr %i.ta, align 1, !tbaa !10, !noalias !317
  %i.tb = lshr <2 x i8> %wide.load312.4, splat (i8 1)
  %i.tc = lshr <2 x i8> %wide.load313.4, splat (i8 1)
  %i.td = sub <2 x i8> %wide.load310.4, %i.tb     ; 3 uses
  %i.te = sub <2 x i8> %wide.load311.4, %i.tc     ; 3 uses
  %i.tf = getelementptr i8, ptr %i.pv, i64 19
  store <2 x i8> %i.td, ptr %next.gep309.4, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.te, ptr %i.tf, align 1, !tbaa !10, !noalias !317
  %i.tg = zext <2 x i8> %i.td to <2 x i64>        ; 2 uses
  %i.th = zext <2 x i8> %i.te to <2 x i64>        ; 2 uses
  %i.ti = sub nuw nsw <2 x i64> splat (i64 256), %i.tg
  %i.tj = sub nuw nsw <2 x i64> splat (i64 256), %i.th
  %i.tk = icmp slt <2 x i8> %i.td, zeroinitializer
  %i.tl = icmp slt <2 x i8> %i.te, zeroinitializer
  %i.tm = select <2 x i1> %i.tk, <2 x i64> %i.ti, <2 x i64> %i.tg
  %i.tn = select <2 x i1> %i.tl, <2 x i64> %i.tj, <2 x i64> %i.th
  %i.to = add nuw nsw <2 x i64> %i.tm, %i.sw      ; 2 uses
  %i.tp = add nuw nsw <2 x i64> %i.tn, %i.sx      ; 2 uses
  %i.tq = icmp eq i64 %n.vec302, 20
  br i1 %i.tq, label %middle.block315, label %vector.body303.5

vector.body303.5:                                 ; preds = %vector.body303.4
  %next.gep307.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep308.5 = getelementptr i8, ptr %i.py, i64 21
  %next.gep309.5 = getelementptr i8, ptr %i.pv, i64 21
  %i.tr = getelementptr i8, ptr %i.l, i64 23
  %wide.load310.5 = load <2 x i8>, ptr %next.gep307.5, align 1, !tbaa !10, !noalias !317
  %wide.load311.5 = load <2 x i8>, ptr %i.tr, align 1, !tbaa !10, !noalias !317
  %i.ts = getelementptr i8, ptr %i.py, i64 23
  %wide.load312.5 = load <2 x i8>, ptr %next.gep308.5, align 1, !tbaa !10, !noalias !317
  %wide.load313.5 = load <2 x i8>, ptr %i.ts, align 1, !tbaa !10, !noalias !317
  %i.tt = lshr <2 x i8> %wide.load312.5, splat (i8 1)
  %i.tu = lshr <2 x i8> %wide.load313.5, splat (i8 1)
  %i.tv = sub <2 x i8> %wide.load310.5, %i.tt     ; 3 uses
  %i.tw = sub <2 x i8> %wide.load311.5, %i.tu     ; 3 uses
  %i.tx = getelementptr i8, ptr %i.pv, i64 23
  store <2 x i8> %i.tv, ptr %next.gep309.5, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.tw, ptr %i.tx, align 1, !tbaa !10, !noalias !317
  %i.ty = zext <2 x i8> %i.tv to <2 x i64>        ; 2 uses
  %i.tz = zext <2 x i8> %i.tw to <2 x i64>        ; 2 uses
  %i.ua = sub nuw nsw <2 x i64> splat (i64 256), %i.ty
  %i.ub = sub nuw nsw <2 x i64> splat (i64 256), %i.tz
  %i.uc = icmp slt <2 x i8> %i.tv, zeroinitializer
  %i.ud = icmp slt <2 x i8> %i.tw, zeroinitializer
  %i.ue = select <2 x i1> %i.uc, <2 x i64> %i.ua, <2 x i64> %i.ty
  %i.uf = select <2 x i1> %i.ud, <2 x i64> %i.ub, <2 x i64> %i.tz
  %i.ug = add nuw nsw <2 x i64> %i.ue, %i.to      ; 2 uses
  %i.uh = add nuw nsw <2 x i64> %i.uf, %i.tp      ; 2 uses
  %i.ui = icmp eq i64 %n.vec302, 24
  br i1 %i.ui, label %middle.block315, label %vector.body303.6

vector.body303.6:                                 ; preds = %vector.body303.5
  %next.gep307.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep308.6 = getelementptr i8, ptr %i.py, i64 25
  %next.gep309.6 = getelementptr i8, ptr %i.pv, i64 25
  %i.uj = getelementptr i8, ptr %i.l, i64 27
  %wide.load310.6 = load <2 x i8>, ptr %next.gep307.6, align 1, !tbaa !10, !noalias !317
  %wide.load311.6 = load <2 x i8>, ptr %i.uj, align 1, !tbaa !10, !noalias !317
  %i.uk = getelementptr i8, ptr %i.py, i64 27
  %wide.load312.6 = load <2 x i8>, ptr %next.gep308.6, align 1, !tbaa !10, !noalias !317
  %wide.load313.6 = load <2 x i8>, ptr %i.uk, align 1, !tbaa !10, !noalias !317
  %i.ul = lshr <2 x i8> %wide.load312.6, splat (i8 1)
  %i.um = lshr <2 x i8> %wide.load313.6, splat (i8 1)
  %i.un = sub <2 x i8> %wide.load310.6, %i.ul     ; 3 uses
  %i.uo = sub <2 x i8> %wide.load311.6, %i.um     ; 3 uses
  %i.up = getelementptr i8, ptr %i.pv, i64 27
  store <2 x i8> %i.un, ptr %next.gep309.6, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.uo, ptr %i.up, align 1, !tbaa !10, !noalias !317
  %i.uq = zext <2 x i8> %i.un to <2 x i64>        ; 2 uses
  %i.ur = zext <2 x i8> %i.uo to <2 x i64>        ; 2 uses
  %i.us = sub nuw nsw <2 x i64> splat (i64 256), %i.uq
  %i.ut = sub nuw nsw <2 x i64> splat (i64 256), %i.ur
  %i.uu = icmp slt <2 x i8> %i.un, zeroinitializer
  %i.uv = icmp slt <2 x i8> %i.uo, zeroinitializer
  %i.uw = select <2 x i1> %i.uu, <2 x i64> %i.us, <2 x i64> %i.uq
  %i.ux = select <2 x i1> %i.uv, <2 x i64> %i.ut, <2 x i64> %i.ur
  %i.uy = add <2 x i64> %i.uw, %i.ug              ; 2 uses
  %i.uz = add <2 x i64> %i.ux, %i.uh              ; 2 uses
  %i.va = icmp eq i64 %n.vec302, 28
  br i1 %i.va, label %middle.block315, label %vector.body303.7

vector.body303.7:                                 ; preds = %vector.body303.6
  %next.gep307.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep308.7 = getelementptr i8, ptr %i.py, i64 29
  %next.gep309.7 = getelementptr i8, ptr %i.pv, i64 29
  %i.vb = getelementptr i8, ptr %i.l, i64 31
  %wide.load310.7 = load <2 x i8>, ptr %next.gep307.7, align 1, !tbaa !10, !noalias !317
  %wide.load311.7 = load <2 x i8>, ptr %i.vb, align 1, !tbaa !10, !noalias !317
  %i.vc = getelementptr i8, ptr %i.py, i64 31
  %wide.load312.7 = load <2 x i8>, ptr %next.gep308.7, align 1, !tbaa !10, !noalias !317
  %wide.load313.7 = load <2 x i8>, ptr %i.vc, align 1, !tbaa !10, !noalias !317
  %i.vd = lshr <2 x i8> %wide.load312.7, splat (i8 1)
  %i.ve = lshr <2 x i8> %wide.load313.7, splat (i8 1)
  %i.vf = sub <2 x i8> %wide.load310.7, %i.vd     ; 3 uses
  %i.vg = sub <2 x i8> %wide.load311.7, %i.ve     ; 3 uses
  %i.vh = getelementptr i8, ptr %i.pv, i64 31
  store <2 x i8> %i.vf, ptr %next.gep309.7, align 1, !tbaa !10, !noalias !317
  store <2 x i8> %i.vg, ptr %i.vh, align 1, !tbaa !10, !noalias !317
  %i.vi = zext <2 x i8> %i.vf to <2 x i64>        ; 2 uses
  %i.vj = zext <2 x i8> %i.vg to <2 x i64>        ; 2 uses
  %i.vk = sub nuw nsw <2 x i64> splat (i64 256), %i.vi
  %i.vl = sub nuw nsw <2 x i64> splat (i64 256), %i.vj
  %i.vm = icmp slt <2 x i8> %i.vf, zeroinitializer
  %i.vn = icmp slt <2 x i8> %i.vg, zeroinitializer
  %i.vo = select <2 x i1> %i.vm, <2 x i64> %i.vk, <2 x i64> %i.vi
  %i.vp = select <2 x i1> %i.vn, <2 x i64> %i.vl, <2 x i64> %i.vj
  %i.vq = add <2 x i64> %i.vo, %i.uy
  %i.vr = add <2 x i64> %i.vp, %i.uz
  br label %middle.block315

middle.block315:                                  ; preds = %vector.body303.7, %vector.body303.6, %vector.body303.5, %vector.body303.4, %vector.body303.3, %vector.body303.2, %vector.body303.1, %vector.ph301
  %.lcssa699 = phi <2 x i64> [ %i.qu, %vector.ph301 ], [ %i.rm, %vector.body303.1 ], [ %i.se, %vector.body303.2 ], [ %i.sw, %vector.body303.3 ], [ %i.to, %vector.body303.4 ], [ %i.ug, %vector.body303.5 ], [ %i.uy, %vector.body303.6 ], [ %i.vq, %vector.body303.7 ]
  %.lcssa698 = phi <2 x i64> [ %i.qv, %vector.ph301 ], [ %i.rn, %vector.body303.1 ], [ %i.sf, %vector.body303.2 ], [ %i.sx, %vector.body303.3 ], [ %i.tp, %vector.body303.4 ], [ %i.uh, %vector.body303.5 ], [ %i.uz, %vector.body303.6 ], [ %i.vr, %vector.body303.7 ]
  %bin.rdx316 = add <2 x i64> %.lcssa698, %.lcssa699
  %i.vs = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx316) ; 2 uses
  %cmp.n317 = icmp eq i64 %n.vec302, %i.qa
  br i1 %cmp.n317, label %.preheader.i164, label %.lr.ph.i159.preheader696

.lr.ph.i159.preheader696:                         ; preds = %vector.memcheck296, %.lr.ph.i159.preheader, %middle.block315
  %.03551.i.ph = phi ptr [ %.03546.i, %vector.memcheck296 ], [ %.03546.i, %.lr.ph.i159.preheader ], [ %i.qd, %middle.block315 ] ; 3 uses
  %.03150.i.ph = phi ptr [ %.03145.i, %vector.memcheck296 ], [ %.03145.i, %.lr.ph.i159.preheader ], [ %i.qe, %middle.block315 ] ; 3 uses
  %.03349.i.ph = phi ptr [ %.03344.i, %vector.memcheck296 ], [ %.03344.i, %.lr.ph.i159.preheader ], [ %i.qf, %middle.block315 ] ; 3 uses
  %.048.i.ph = phi i64 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i159.preheader ], [ %i.vs, %middle.block315 ] ; 2 uses
  %.02847.i.ph = phi i32 [ 0, %vector.memcheck296 ], [ 0, %.lr.ph.i159.preheader ], [ %i.qg, %middle.block315 ] ; 4 uses
  %i.vt = sub nsw i32 %i.j, %.02847.i.ph
  %.neg = add nsw i32 %.02847.i.ph, 1
  %xtraiter710 = and i32 %i.vt, 1
  %lcmp.mod711.not = icmp eq i32 %xtraiter710, 0
  br i1 %lcmp.mod711.not, label %.lr.ph.i159.prol.loopexit, label %.lr.ph.i159.prol

.lr.ph.i159.prol:                                 ; preds = %.lr.ph.i159.preheader696
  %i.vu = load i8, ptr %.03551.i.ph, align 1, !tbaa !10, !noalias !317
  %i.vv = load i8, ptr %.03150.i.ph, align 1, !tbaa !10, !noalias !317
  %i.vw = lshr i8 %i.vv, 1
  %.narrow42.i.prol = sub i8 %i.vu, %i.vw         ; 3 uses
  store i8 %.narrow42.i.prol, ptr %.03349.i.ph, align 1, !tbaa !10, !noalias !317
  %i.vx = zext i8 %.narrow42.i.prol to i64        ; 2 uses
  %i.vy = sub nuw nsw i64 256, %i.vx
  %i.vz = icmp slt i8 %.narrow42.i.prol, 0
  %i.wa = select i1 %i.vz, i64 %i.vy, i64 %i.vx
  %i.wb = add i64 %i.wa, %.048.i.ph               ; 2 uses
  %i.wc = add nuw nsw i32 %.02847.i.ph, 1
  %.033.i160.prol = getelementptr inbounds nuw i8, ptr %.03349.i.ph, i64 1 ; 2 uses
  %.031.i161.prol = getelementptr inbounds nuw i8, ptr %.03150.i.ph, i64 1 ; 2 uses
  %.035.i162.prol = getelementptr inbounds nuw i8, ptr %.03551.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i159.prol.loopexit

.lr.ph.i159.prol.loopexit:                        ; preds = %.lr.ph.i159.prol, %.lr.ph.i159.preheader696
  %.lcssa697.unr = phi i64 [ poison, %.lr.ph.i159.preheader696 ], [ %i.wb, %.lr.ph.i159.prol ]
  %.033.i160.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.033.i160.prol, %.lr.ph.i159.prol ]
  %.031.i161.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.031.i161.prol, %.lr.ph.i159.prol ]
  %.035.i162.lcssa.unr = phi ptr [ poison, %.lr.ph.i159.preheader696 ], [ %.035.i162.prol, %.lr.ph.i159.prol ]
  %.03551.i.unr = phi ptr [ %.03551.i.ph, %.lr.ph.i159.preheader696 ], [ %.035.i162.prol, %.lr.ph.i159.prol ]
  %.03150.i.unr = phi ptr [ %.03150.i.ph, %.lr.ph.i159.preheader696 ], [ %.031.i161.prol, %.lr.ph.i159.prol ]
  %.03349.i.unr = phi ptr [ %.03349.i.ph, %.lr.ph.i159.preheader696 ], [ %.033.i160.prol, %.lr.ph.i159.prol ]
  %.048.i.unr = phi i64 [ %.048.i.ph, %.lr.ph.i159.preheader696 ], [ %i.wb, %.lr.ph.i159.prol ]
  %.02847.i.unr = phi i32 [ %.02847.i.ph, %.lr.ph.i159.preheader696 ], [ %i.wc, %.lr.ph.i159.prol ]
  %i.wd = icmp eq i32 %i.j, %.neg
  br i1 %i.wd, label %.preheader.i164, label %.lr.ph.i159

.preheader.i164:                                  ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159, %middle.block315, %bb.q
  %.0.lcssa.i165 = phi i64 [ 0, %bb.q ], [ %i.vs, %middle.block315 ], [ %.lcssa697.unr, %.lr.ph.i159.prol.loopexit ], [ %i.wv, %.lr.ph.i159 ] ; 2 uses
  %.033.lcssa.i166 = phi ptr [ %.03344.i, %bb.q ], [ %i.qf, %middle.block315 ], [ %.033.i160.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.033.i160.1, %.lr.ph.i159 ]
  %.031.lcssa.i = phi ptr [ %.03145.i, %bb.q ], [ %i.qe, %middle.block315 ], [ %.031.i161.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.031.i161.1, %.lr.ph.i159 ]
  %.035.lcssa.i167 = phi ptr [ %.03546.i, %bb.q ], [ %i.qd, %middle.block315 ], [ %.035.i162.lcssa.unr, %.lr.ph.i159.prol.loopexit ], [ %.035.i162.1, %.lr.ph.i159 ]
  %i.we = zext nneg i32 %i.j to i64
  %i.wf = icmp ugt i64 %i.e, %i.we
  br i1 %i.wf, label %.lr.ph63.i, label %png_setup_avg_row.exit

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.prol.loopexit, %.lr.ph.i159
  %.03551.i = phi ptr [ %.035.i162.1, %.lr.ph.i159 ], [ %.03551.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.03150.i = phi ptr [ %.031.i161.1, %.lr.ph.i159 ], [ %.03150.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.03349.i = phi ptr [ %.033.i160.1, %.lr.ph.i159 ], [ %.03349.i.unr, %.lr.ph.i159.prol.loopexit ] ; 3 uses
  %.048.i = phi i64 [ %i.wv, %.lr.ph.i159 ], [ %.048.i.unr, %.lr.ph.i159.prol.loopexit ]
  %.02847.i = phi i32 [ %i.ww, %.lr.ph.i159 ], [ %.02847.i.unr, %.lr.ph.i159.prol.loopexit ]
  %i.wg = load i8, ptr %.03551.i, align 1, !tbaa !10, !noalias !317
  %i.wh = load i8, ptr %.03150.i, align 1, !tbaa !10, !noalias !317
  %i.wi = lshr i8 %i.wh, 1
  %.narrow42.i = sub i8 %i.wg, %i.wi              ; 3 uses
  store i8 %.narrow42.i, ptr %.03349.i, align 1, !tbaa !10, !noalias !317
  %i.wj = zext i8 %.narrow42.i to i64             ; 2 uses
  %i.wk = sub nuw nsw i64 256, %i.wj
  %i.wl = icmp slt i8 %.narrow42.i, 0
  %i.wm = select i1 %i.wl, i64 %i.wk, i64 %i.wj
  %i.wn = add i64 %i.wm, %.048.i
  %.033.i160 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 1
  %.031.i161 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 1
  %.035.i162 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 1
  %i.wo = load i8, ptr %.035.i162, align 1, !tbaa !10, !noalias !317
  %i.wp = load i8, ptr %.031.i161, align 1, !tbaa !10, !noalias !317
  %i.wq = lshr i8 %i.wp, 1
  %.narrow42.i.1 = sub i8 %i.wo, %i.wq            ; 3 uses
  store i8 %.narrow42.i.1, ptr %.033.i160, align 1, !tbaa !10, !noalias !317
  %i.wr = zext i8 %.narrow42.i.1 to i64           ; 2 uses
  %i.ws = sub nuw nsw i64 256, %i.wr
  %i.wt = icmp slt i8 %.narrow42.i.1, 0
  %i.wu = select i1 %i.wt, i64 %i.ws, i64 %i.wr
  %i.wv = add i64 %i.wu, %i.wn                    ; 2 uses
  %i.ww = add nuw nsw i32 %.02847.i, 2            ; 2 uses
  %.033.i160.1 = getelementptr inbounds nuw i8, ptr %.03349.i, i64 2 ; 2 uses
  %.031.i161.1 = getelementptr inbounds nuw i8, ptr %.03150.i, i64 2 ; 2 uses
  %.035.i162.1 = getelementptr inbounds nuw i8, ptr %.03551.i, i64 2 ; 2 uses
  %exitcond.not.i163.1 = icmp eq i32 %i.ww, %i.j
  br i1 %exitcond.not.i163.1, label %.preheader.i164, label %.lr.ph.i159, !llvm.loop !292

.lr.ph63.i:                                       ; preds = %.preheader.i164, %.lr.ph63.i
  %.03062.pn.i = phi ptr [ %.03062.i, %.lr.ph63.i ], [ %i.l, %.preheader.i164 ]
  %.161.i = phi i64 [ %i.xi, %.lr.ph63.i ], [ %.0.lcssa.i165, %.preheader.i164 ]
  %.12960.i = phi i32 [ %i.xn, %.lr.ph63.i ], [ %i.j, %.preheader.i164 ]
  %.13259.i = phi ptr [ %i.xl, %.lr.ph63.i ], [ %.031.lcssa.i, %.preheader.i164 ] ; 2 uses
  %.13458.i = phi ptr [ %i.xk, %.lr.ph63.i ], [ %.033.lcssa.i166, %.preheader.i164 ] ; 2 uses
  %.13657.i = phi ptr [ %i.xm, %.lr.ph63.i ], [ %.035.lcssa.i167, %.preheader.i164 ] ; 2 uses
  %.03062.i = getelementptr inbounds nuw i8, ptr %.03062.pn.i, i64 1 ; 2 uses
  %i.wx = load i8, ptr %.13657.i, align 1, !tbaa !10, !noalias !317
  %i.wy = load i8, ptr %.13259.i, align 1, !tbaa !10, !noalias !317
  %i.wz = zext i8 %i.wy to i16
  %i.xa = load i8, ptr %.03062.i, align 1, !tbaa !10, !noalias !317
  %i.xb = zext i8 %i.xa to i16
  %i.xc = add nuw nsw i16 %i.xb, %i.wz
  %i.xd = lshr i16 %i.xc, 1
  %.tr.i169 = trunc nuw i16 %i.xd to i8
  %.narrow.i170 = sub i8 %i.wx, %.tr.i169         ; 3 uses
  store i8 %.narrow.i170, ptr %.13458.i, align 1, !tbaa !10, !noalias !317
  %i.xe = zext i8 %.narrow.i170 to i64            ; 2 uses
  %i.xf = sub nuw nsw i64 256, %i.xe
  %i.xg = icmp slt i8 %.narrow.i170, 0
  %i.xh = select i1 %i.xg, i64 %i.xf, i64 %i.xe
  %i.xi = add i64 %i.xh, %.161.i                  ; 3 uses
  %i.xj = icmp ule i64 %i.xi, %.4
  %i.xk = getelementptr inbounds nuw i8, ptr %.13458.i, i64 1
  %i.xl = getelementptr inbounds nuw i8, ptr %.13259.i, i64 1
  %i.xm = getelementptr inbounds nuw i8, ptr %.13657.i, i64 1
  %i.xn = add i32 %.12960.i, 1                    ; 2 uses
  %i.xo = zext i32 %i.xn to i64
  %i.xp = icmp ugt i64 %i.e, %i.xo
  %or.cond.i171 = select i1 %i.xj, i1 %i.xp, i1 false
  br i1 %or.cond.i171, label %.lr.ph63.i, label %png_setup_avg_row.exit, !llvm.loop !293

png_setup_avg_row.exit:                           ; preds = %.lr.ph63.i, %.preheader.i164
  %.2.i168 = phi i64 [ %.0.lcssa.i165, %.preheader.i164 ], [ %i.xi, %.lr.ph63.i ] ; 3 uses
  %i.xq = icmp ult i64 %.2.i168, %.4
  br i1 %i.xq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %png_setup_avg_row.exit
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !67 ; 2 uses
  %.not125 = icmp eq ptr %i.xs, null
  br i1 %.not125, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.xs, ptr %i.pu, align 8, !tbaa !66
  store ptr %i.pv, ptr %i.xr, align 8, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %png_setup_avg_row.exit, %bb.s, %bb.r, %.thread197
  %.5109 = phi ptr [ %.3107, %png_setup_avg_row.exit ], [ %.3107, %.thread197 ], [ %i.pv, %bb.s ], [ %i.pv, %bb.r ] ; 2 uses
  %.6 = phi i64 [ %.4, %png_setup_avg_row.exit ], [ %.4, %.thread197 ], [ %.2.i168, %bb.s ], [ %.2.i168, %bb.r ] ; 2 uses
  %i.xt = icmp eq i32 %.0111, 128
  br i1 %i.xt, label %bb.u, label %.thread214

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !66, !alias.scope !318 ; 8 uses
  %i.xw = ptrtoaddr ptr %i.xv to i64              ; 2 uses
  store i8 4, ptr %i.xv, align 1, !tbaa !10, !noalias !318
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !68, !alias.scope !318 ; 9 uses
  %i.xz = ptrtoaddr ptr %i.xy to i64              ; 2 uses
  %i.ya = zext nneg i32 %i.j to i64               ; 13 uses
  %.04964.i = getelementptr inbounds nuw i8, ptr %i.xv, i64 1 ; 7 uses
  %.04765.i = getelementptr inbounds nuw i8, ptr %i.xy, i64 1 ; 7 uses
  %.05166.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 7 uses
  %.not81.i = icmp eq i32 %i.j, 0
  br i1 %.not81.i, label %.preheader.i174, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check356 = icmp ult i8 %i.g, 25
  br i1 %min.iters.check356, label %.lr.ph.i172.preheader, label %vector.memcheck351

vector.memcheck351:                               ; preds = %iter.check
  %i.yb = sub i64 %i.m, %i.xw
  %diff.check352 = icmp ugt i64 %i.yb, -16
  %i.yc = sub i64 %i.xz, %i.xw
  %diff.check353 = icmp ugt i64 %i.yc, -16
  %conflict.rdx354 = or i1 %diff.check352, %diff.check353
  br i1 %conflict.rdx354, label %.lr.ph.i172.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck351
  %min.iters.check357 = icmp ult i8 %i.g, 121
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph358

vector.ph358:                                     ; preds = %vector.main.loop.iter.check
  %i.yd = and i64 %i.ya, 12
  %n.vec359 = and i64 %i.ya, 48                   ; 7 uses
  %i.ye = getelementptr i8, ptr %.05166.i, i64 %n.vec359 ; 2 uses
  %i.yf = getelementptr i8, ptr %.04765.i, i64 %n.vec359 ; 2 uses
  %i.yg = getelementptr i8, ptr %.04964.i, i64 %n.vec359 ; 2 uses
  %wide.load365 = load <16 x i8>, ptr %.05166.i, align 1, !tbaa !10, !noalias !318
  %wide.load366 = load <16 x i8>, ptr %.04765.i, align 1, !tbaa !10, !noalias !318
  %i.yh = sub <16 x i8> %wide.load365, %wide.load366
  store <16 x i8> %i.yh, ptr %.04964.i, align 1, !tbaa !10, !noalias !318
  %i.yi = icmp eq i64 %n.vec359, 16
  br i1 %i.yi, label %middle.block368, label %vector.body360.1

vector.body360.1:                                 ; preds = %vector.ph358
  %next.gep362.1 = getelementptr i8, ptr %i.l, i64 17
  %next.gep363.1 = getelementptr i8, ptr %i.xy, i64 17
  %next.gep364.1 = getelementptr i8, ptr %i.xv, i64 17
  %wide.load365.1 = load <16 x i8>, ptr %next.gep362.1, align 1, !tbaa !10, !noalias !318
  %wide.load366.1 = load <16 x i8>, ptr %next.gep363.1, align 1, !tbaa !10, !noalias !318
  %i.yj = sub <16 x i8> %wide.load365.1, %wide.load366.1
  store <16 x i8> %i.yj, ptr %next.gep364.1, align 1, !tbaa !10, !noalias !318
  br label %middle.block368

middle.block368:                                  ; preds = %vector.body360.1, %vector.ph358
  %cmp.n369 = icmp eq i64 %n.vec359, %i.ya
  br i1 %cmp.n369, label %.preheader.i174, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block368
  %min.epilog.iters.check = icmp eq i64 %i.yd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i172.preheader, label %vec.epilog.ph, !prof !310

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec359, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec373 = and i64 %i.ya, 60                   ; 6 uses
  %i.yk = getelementptr i8, ptr %.05166.i, i64 %n.vec373 ; 2 uses
  %i.yl = getelementptr i8, ptr %.04765.i, i64 %n.vec373 ; 2 uses
  %i.ym = getelementptr i8, ptr %.04964.i, i64 %n.vec373 ; 2 uses
end_hunk_4
begin_hunk_5_@png_write_find_filter:bb.a

vector.ph401:                                     ; preds = %vector.main.loop.iter.check399
  %i.zc = and i64 %i.yv, 12
  %n.vec402 = and i64 %i.yv, -16                  ; 9 uses
  %i.zd = add i64 %.0.lcssa.i175, %n.vec402
  %i.ze = getelementptr i8, ptr %i.l, i64 %n.vec402
  %i.zf = getelementptr i8, ptr %i.xy, i64 %n.vec402
  %i.zg = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec402
  %i.zh = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec402
  %i.zi = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec402
  br label %vector.body403

vector.body403:                                   ; preds = %vector.ph401, %vector.body403
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next414, %vector.body403 ] ; 6 uses
  %next.gep405 = getelementptr i8, ptr %i.l, i64 %index404
  %next.gep406 = getelementptr i8, ptr %i.xy, i64 %index404
  %next.gep407 = getelementptr i8, ptr %.047.lcssa.i, i64 %index404
  %next.gep408 = getelementptr i8, ptr %.049.lcssa.i, i64 %index404
  %next.gep409 = getelementptr i8, ptr %.051.lcssa.i, i64 %index404
  %i.zj = getelementptr inbounds nuw i8, ptr %next.gep406, i64 1
  %i.zk = getelementptr inbounds nuw i8, ptr %next.gep405, i64 1
  %wide.load410 = load <16 x i8>, ptr %next.gep407, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.zl = zext <16 x i8> %wide.load410 to <16 x i32>
  %wide.load411 = load <16 x i8>, ptr %i.zj, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.zm = zext <16 x i8> %wide.load411 to <16 x i32> ; 2 uses
  %wide.load412 = load <16 x i8>, ptr %i.zk, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.zn = zext <16 x i8> %wide.load412 to <16 x i32>
  %i.zo = sub nsw <16 x i32> %i.zl, %i.zm         ; 2 uses
  %i.zp = sub nsw <16 x i32> %i.zn, %i.zm         ; 2 uses
  %i.zq = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zo, i1 true) ; 2 uses
  %i.zr = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zp, i1 true) ; 2 uses
  %i.zs = add nsw <16 x i32> %i.zp, %i.zo
  %i.zt = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.zs, i1 true) ; 2 uses
  %i.zu = icmp samesign ugt <16 x i32> %i.zq, %i.zr
  %i.zv = icmp samesign ugt <16 x i32> %i.zq, %i.zt
  %i.zw = select <16 x i1> %i.zu, <16 x i1> splat (i1 true), <16 x i1> %i.zv
  %i.zx = icmp samesign ugt <16 x i32> %i.zr, %i.zt
  %i.zy = select <16 x i1> %i.zx, <16 x i8> %wide.load411, <16 x i8> %wide.load410
  %i.zz = select <16 x i1> %i.zw, <16 x i8> %i.zy, <16 x i8> %wide.load412
  %wide.load413 = load <16 x i8>, ptr %next.gep409, align 1, !tbaa !10, !noalias !318
  %i.aaa = sub <16 x i8> %wide.load413, %i.zz
  store <16 x i8> %i.aaa, ptr %next.gep408, align 1, !tbaa !10, !noalias !318
  %index.next414 = add nuw i64 %index404, 16      ; 2 uses
  %i.aab = icmp eq i64 %index.next414, %n.vec402
  br i1 %i.aab, label %middle.block415, label %vector.body403, !llvm.loop !298

middle.block415:                                  ; preds = %vector.body403
  %cmp.n416 = icmp eq i64 %i.yv, %n.vec402
  br i1 %cmp.n416, label %.thread214.thread, label %vec.epilog.iter.check426

vec.epilog.iter.check426:                         ; preds = %middle.block415
  %min.epilog.iters.check427 = icmp eq i64 %i.zc, 0
  br i1 %min.epilog.iters.check427, label %.lr.ph80.i.preheader, label %vec.epilog.ph428, !prof !310

vec.epilog.ph428:                                 ; preds = %vector.main.loop.iter.check399, %vec.epilog.iter.check426
  %vec.epilog.resume.val417 = phi i64 [ %n.vec402, %vec.epilog.iter.check426 ], [ 0, %vector.main.loop.iter.check399 ]
  %n.vec429 = and i64 %i.yv, -4                   ; 8 uses
  %i.aac = add i64 %.0.lcssa.i175, %n.vec429
  %i.aad = getelementptr i8, ptr %i.l, i64 %n.vec429
  %i.aae = getelementptr i8, ptr %i.xy, i64 %n.vec429
  %i.aaf = getelementptr i8, ptr %.047.lcssa.i, i64 %n.vec429
  %i.aag = getelementptr i8, ptr %.049.lcssa.i, i64 %n.vec429
  %i.aah = getelementptr i8, ptr %.051.lcssa.i, i64 %n.vec429
  br label %vec.epilog.vector.body430

vec.epilog.vector.body430:                        ; preds = %vec.epilog.vector.body430, %vec.epilog.ph428
  %index431 = phi i64 [ %vec.epilog.resume.val417, %vec.epilog.ph428 ], [ %index.next441, %vec.epilog.vector.body430 ] ; 6 uses
  %next.gep432 = getelementptr i8, ptr %i.l, i64 %index431
  %next.gep433 = getelementptr i8, ptr %i.xy, i64 %index431
  %next.gep434 = getelementptr i8, ptr %.047.lcssa.i, i64 %index431
  %next.gep435 = getelementptr i8, ptr %.049.lcssa.i, i64 %index431
  %next.gep436 = getelementptr i8, ptr %.051.lcssa.i, i64 %index431
  %i.aai = getelementptr inbounds nuw i8, ptr %next.gep433, i64 1
  %i.aaj = getelementptr inbounds nuw i8, ptr %next.gep432, i64 1
  %wide.load437 = load <4 x i8>, ptr %next.gep434, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aak = zext <4 x i8> %wide.load437 to <4 x i32>
  %wide.load438 = load <4 x i8>, ptr %i.aai, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aal = zext <4 x i8> %wide.load438 to <4 x i32> ; 2 uses
  %wide.load439 = load <4 x i8>, ptr %i.aaj, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.aam = zext <4 x i8> %wide.load439 to <4 x i32>
  %i.aan = sub nsw <4 x i32> %i.aak, %i.aal       ; 2 uses
  %i.aao = sub nsw <4 x i32> %i.aam, %i.aal       ; 2 uses
  %i.aap = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aan, i1 true) ; 2 uses
  %i.aaq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aao, i1 true) ; 2 uses
  %i.aar = add nsw <4 x i32> %i.aao, %i.aan
  %i.aas = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aar, i1 true) ; 2 uses
  %i.aat = icmp samesign ugt <4 x i32> %i.aap, %i.aaq
  %i.aau = icmp samesign ugt <4 x i32> %i.aap, %i.aas
  %i.aav = select <4 x i1> %i.aat, <4 x i1> splat (i1 true), <4 x i1> %i.aau
  %i.aaw = icmp samesign ugt <4 x i32> %i.aaq, %i.aas
  %i.aax = select <4 x i1> %i.aaw, <4 x i8> %wide.load438, <4 x i8> %wide.load437
  %i.aay = select <4 x i1> %i.aav, <4 x i8> %i.aax, <4 x i8> %wide.load439
  %wide.load440 = load <4 x i8>, ptr %next.gep436, align 1, !tbaa !10, !noalias !318
  %i.aaz = sub <4 x i8> %wide.load440, %i.aay
  store <4 x i8> %i.aaz, ptr %next.gep435, align 1, !tbaa !10, !noalias !318
  %index.next441 = add nuw i64 %index431, 4       ; 2 uses
  %i.aba = icmp eq i64 %index.next441, %n.vec429
  br i1 %i.aba, label %vec.epilog.middle.block442, label %vec.epilog.vector.body430, !llvm.loop !299

vec.epilog.middle.block442:                       ; preds = %vec.epilog.vector.body430
  %cmp.n443 = icmp eq i64 %i.yv, %n.vec429
  br i1 %cmp.n443, label %.thread214.thread, label %.lr.ph80.i.preheader

.lr.ph80.i.preheader:                             ; preds = %iter.check424, %vector.memcheck386, %vec.epilog.iter.check426, %vec.epilog.middle.block442
  %.179.i.ph = phi i64 [ %.0.lcssa.i175, %iter.check424 ], [ %.0.lcssa.i175, %vector.memcheck386 ], [ %i.zd, %vec.epilog.iter.check426 ], [ %i.aac, %vec.epilog.middle.block442 ]
  %.pn5678.i.ph = phi ptr [ %i.l, %iter.check424 ], [ %i.l, %vector.memcheck386 ], [ %i.ze, %vec.epilog.iter.check426 ], [ %i.aad, %vec.epilog.middle.block442 ]
  %.pn77.i.ph = phi ptr [ %i.xy, %iter.check424 ], [ %i.xy, %vector.memcheck386 ], [ %i.zf, %vec.epilog.iter.check426 ], [ %i.aae, %vec.epilog.middle.block442 ]
  %.14876.i.ph = phi ptr [ %.047.lcssa.i, %iter.check424 ], [ %.047.lcssa.i, %vector.memcheck386 ], [ %i.zg, %vec.epilog.iter.check426 ], [ %i.aaf, %vec.epilog.middle.block442 ]
  %.15075.i.ph = phi ptr [ %.049.lcssa.i, %iter.check424 ], [ %.049.lcssa.i, %vector.memcheck386 ], [ %i.zh, %vec.epilog.iter.check426 ], [ %i.aag, %vec.epilog.middle.block442 ]
  %.15274.i.ph = phi ptr [ %.051.lcssa.i, %iter.check424 ], [ %.051.lcssa.i, %vector.memcheck386 ], [ %i.zi, %vec.epilog.iter.check426 ], [ %i.aah, %vec.epilog.middle.block442 ]
  br label %.lr.ph80.i

.lr.ph.i172:                                      ; preds = %.lr.ph.i172.prol.loopexit, %.lr.ph.i172
  %.05170.i = phi ptr [ %.051.i.3, %.lr.ph.i172 ], [ %.05170.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04769.i = phi ptr [ %.047.i.3, %.lr.ph.i172 ], [ %.04769.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.04968.i = phi ptr [ %.049.i.3, %.lr.ph.i172 ], [ %.04968.i.unr, %.lr.ph.i172.prol.loopexit ] ; 5 uses
  %.067.i = phi i64 [ %i.abj, %.lr.ph.i172 ], [ %.067.i.unr, %.lr.ph.i172.prol.loopexit ]
  %i.abb = load i8, ptr %.05170.i, align 1, !tbaa !10, !noalias !318
  %i.abc = load i8, ptr %.04769.i, align 1, !tbaa !10, !noalias !318
  %.narrow62.i = sub i8 %i.abb, %i.abc
  store i8 %.narrow62.i, ptr %.04968.i, align 1, !tbaa !10, !noalias !318
  %.049.i = getelementptr inbounds nuw i8, ptr %.04968.i, i64 1
  %.047.i = getelementptr inbounds nuw i8, ptr %.04769.i, i64 1
  %.051.i = getelementptr inbounds nuw i8, ptr %.05170.i, i64 1
  %i.abd = load i8, ptr %.051.i, align 1, !tbaa !10, !noalias !318
  %i.abe = load i8, ptr %.047.i, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.1 = sub i8 %i.abd, %i.abe
  store i8 %.narrow62.i.1, ptr %.049.i, align 1, !tbaa !10, !noalias !318
  %.049.i.1 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 2
  %.047.i.1 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 2
  %.051.i.1 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 2
  %i.abf = load i8, ptr %.051.i.1, align 1, !tbaa !10, !noalias !318
  %i.abg = load i8, ptr %.047.i.1, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.2 = sub i8 %i.abf, %i.abg
  store i8 %.narrow62.i.2, ptr %.049.i.1, align 1, !tbaa !10, !noalias !318
  %.049.i.2 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 3
  %.047.i.2 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 3
  %.051.i.2 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 3
  %i.abh = load i8, ptr %.051.i.2, align 1, !tbaa !10, !noalias !318
  %i.abi = load i8, ptr %.047.i.2, align 1, !tbaa !10, !noalias !318
  %.narrow62.i.3 = sub i8 %i.abh, %i.abi
  store i8 %.narrow62.i.3, ptr %.049.i.2, align 1, !tbaa !10, !noalias !318
  %i.abj = add nuw nsw i64 %.067.i, 4             ; 2 uses
  %.049.i.3 = getelementptr inbounds nuw i8, ptr %.04968.i, i64 4 ; 2 uses
  %.047.i.3 = getelementptr inbounds nuw i8, ptr %.04769.i, i64 4 ; 2 uses
  %.051.i.3 = getelementptr inbounds nuw i8, ptr %.05170.i, i64 4 ; 2 uses
  %exitcond.not.i173.3 = icmp eq i64 %i.abj, %i.ya
  br i1 %exitcond.not.i173.3, label %.preheader.i174, label %.lr.ph.i172, !llvm.loop !300

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader, %.lr.ph80.i
  %.179.i = phi i64 [ %i.acb, %.lr.ph80.i ], [ %.179.i.ph, %.lr.ph80.i.preheader ]
  %.pn5678.i = phi ptr [ %.045.i, %.lr.ph80.i ], [ %.pn5678.i.ph, %.lr.ph80.i.preheader ]
  %.pn77.i = phi ptr [ %.046.i, %.lr.ph80.i ], [ %.pn77.i.ph, %.lr.ph80.i.preheader ]
  %.14876.i = phi ptr [ %i.abk, %.lr.ph80.i ], [ %.14876.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15075.i = phi ptr [ %i.aca, %.lr.ph80.i ], [ %.15075.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.15274.i = phi ptr [ %i.aby, %.lr.ph80.i ], [ %.15274.i.ph, %.lr.ph80.i.preheader ] ; 2 uses
  %.046.i = getelementptr inbounds nuw i8, ptr %.pn77.i, i64 1 ; 2 uses
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn5678.i, i64 1 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.14876.i, i64 1
  %i.abl = load i8, ptr %.14876.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abm = zext i8 %i.abl to i32
  %i.abn = load i8, ptr %.046.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abo = zext i8 %i.abn to i32                  ; 2 uses
  %i.abp = load i8, ptr %.045.i, align 1, !tbaa !10, !noalias !318 ; 2 uses
  %i.abq = zext i8 %i.abp to i32
  %i.abr = sub nsw i32 %i.abm, %i.abo             ; 2 uses
  %i.abs = sub nsw i32 %i.abq, %i.abo             ; 2 uses
  %i.abt = tail call i32 @llvm.abs.i32(i32 %i.abr, i1 true) ; 2 uses
  %i.abu = tail call i32 @llvm.abs.i32(i32 %i.abs, i1 true) ; 2 uses
  %i.abv = add nsw i32 %i.abs, %i.abr
  %i.abw = tail call i32 @llvm.abs.i32(i32 %i.abv, i1 true) ; 2 uses
  %.not.i176 = icmp samesign ugt i32 %i.abt, %i.abu
  %.not57.i = icmp samesign ugt i32 %i.abt, %i.abw
  %or.cond.i177 = select i1 %.not.i176, i1 true, i1 %.not57.i
  %.not58.i = icmp samesign ugt i32 %i.abu, %i.abw
  %i.abx = select i1 %.not58.i, i8 %i.abn, i8 %i.abl
  %.tr.i178 = select i1 %or.cond.i177, i8 %i.abx, i8 %i.abp
  %i.aby = getelementptr inbounds nuw i8, ptr %.15274.i, i64 1
  %i.abz = load i8, ptr %.15274.i, align 1, !tbaa !10, !noalias !318
  %.narrow.i179 = sub i8 %i.abz, %.tr.i178
  %i.aca = getelementptr inbounds nuw i8, ptr %.15075.i, i64 1
  store i8 %.narrow.i179, ptr %.15075.i, align 1, !tbaa !10, !noalias !318
  %i.acb = add nuw i64 %.179.i, 1                 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %i.acb, %i.e
  br i1 %exitcond85.not.i, label %.thread214.thread, label %.lr.ph80.i, !llvm.loop !301

.thread214:                                       ; preds = %bb.t
  %i.acc = and i32 %.0111, 128
  %.not126 = icmp eq i32 %i.acc, 0
  br i1 %.not126, label %.thread214.thread, label %bb.v

bb.v:                                             ; preds = %.thread214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !66, !alias.scope !319 ; 21 uses
  %i.acf = ptrtoaddr ptr %i.ace to i64            ; 2 uses
  store i8 4, ptr %i.ace, align 1, !tbaa !10, !noalias !319
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !68, !alias.scope !319 ; 18 uses
  %i.aci = ptrtoaddr ptr %i.ach to i64
  %i.acj = zext nneg i32 %i.j to i64              ; 8 uses
  %.06479.i = getelementptr inbounds nuw i8, ptr %i.ace, i64 1 ; 5 uses
  %.06280.i = getelementptr inbounds nuw i8, ptr %i.ach, i64 1 ; 5 uses
  %.06681.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 5 uses
  %.not109.i = icmp eq i32 %i.j, 0
  br i1 %.not109.i, label %.preheader.i182, label %.lr.ph.i180.preheader

.lr.ph.i180.preheader:                            ; preds = %bb.v
  %min.iters.check328 = icmp ult i8 %i.g, 57
  br i1 %min.iters.check328, label %.lr.ph.i180.preheader691, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i180.preheader
  %i.ack = sub i64 %i.m, %i.acf
  %diff.check324 = icmp ugt i64 %i.ack, -4
  %i.acl = sub i64 %i.aci, %i.acf
  %diff.check325 = icmp ugt i64 %i.acl, -4
  %conflict.rdx326 = or i1 %diff.check324, %diff.check325
  br i1 %conflict.rdx326, label %.lr.ph.i180.preheader691, label %vector.ph329

vector.ph329:                                     ; preds = %vector.memcheck323
  %n.vec330 = and i64 %i.acj, 60                  ; 12 uses
  %i.acm = getelementptr i8, ptr %.06681.i, i64 %n.vec330 ; 2 uses
  %i.acn = getelementptr i8, ptr %.06280.i, i64 %n.vec330 ; 2 uses
  %i.aco = getelementptr i8, ptr %.06479.i, i64 %n.vec330 ; 2 uses
  %i.acp = getelementptr i8, ptr %i.l, i64 3
  %wide.load338 = load <2 x i8>, ptr %.06681.i, align 1, !tbaa !10, !noalias !319
  %wide.load339 = load <2 x i8>, ptr %i.acp, align 1, !tbaa !10, !noalias !319
  %i.acq = getelementptr i8, ptr %i.ach, i64 3
  %wide.load340 = load <2 x i8>, ptr %.06280.i, align 1, !tbaa !10, !noalias !319
  %wide.load341 = load <2 x i8>, ptr %i.acq, align 1, !tbaa !10, !noalias !319
  %i.acr = sub <2 x i8> %wide.load338, %wide.load340 ; 3 uses
  %i.acs = sub <2 x i8> %wide.load339, %wide.load341 ; 3 uses
  %i.act = getelementptr i8, ptr %i.ace, i64 3
  store <2 x i8> %i.acr, ptr %.06479.i, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.acs, ptr %i.act, align 1, !tbaa !10, !noalias !319
  %i.acu = zext <2 x i8> %i.acr to <2 x i64>      ; 2 uses
  %i.acv = zext <2 x i8> %i.acs to <2 x i64>      ; 2 uses
  %i.acw = sub nuw nsw <2 x i64> splat (i64 256), %i.acu
  %i.acx = sub nuw nsw <2 x i64> splat (i64 256), %i.acv
  %i.acy = icmp slt <2 x i8> %i.acr, zeroinitializer
  %i.acz = icmp slt <2 x i8> %i.acs, zeroinitializer
  %i.ada = select <2 x i1> %i.acy, <2 x i64> %i.acw, <2 x i64> %i.acu ; 2 uses
  %i.adb = select <2 x i1> %i.acz, <2 x i64> %i.acx, <2 x i64> %i.acv ; 2 uses
  %i.adc = icmp eq i64 %n.vec330, 4
  br i1 %i.adc, label %middle.block343, label %vector.body331.1

vector.body331.1:                                 ; preds = %vector.ph329
  %next.gep335.1 = getelementptr i8, ptr %i.l, i64 5
  %next.gep336.1 = getelementptr i8, ptr %i.ach, i64 5
  %next.gep337.1 = getelementptr i8, ptr %i.ace, i64 5
  %i.add = getelementptr i8, ptr %i.l, i64 7
  %wide.load338.1 = load <2 x i8>, ptr %next.gep335.1, align 1, !tbaa !10, !noalias !319
  %wide.load339.1 = load <2 x i8>, ptr %i.add, align 1, !tbaa !10, !noalias !319
  %i.ade = getelementptr i8, ptr %i.ach, i64 7
  %wide.load340.1 = load <2 x i8>, ptr %next.gep336.1, align 1, !tbaa !10, !noalias !319
  %wide.load341.1 = load <2 x i8>, ptr %i.ade, align 1, !tbaa !10, !noalias !319
  %i.adf = sub <2 x i8> %wide.load338.1, %wide.load340.1 ; 3 uses
  %i.adg = sub <2 x i8> %wide.load339.1, %wide.load341.1 ; 3 uses
  %i.adh = getelementptr i8, ptr %i.ace, i64 7
  store <2 x i8> %i.adf, ptr %next.gep337.1, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.adg, ptr %i.adh, align 1, !tbaa !10, !noalias !319
  %i.adi = zext <2 x i8> %i.adf to <2 x i64>      ; 2 uses
  %i.adj = zext <2 x i8> %i.adg to <2 x i64>      ; 2 uses
  %i.adk = sub nuw nsw <2 x i64> splat (i64 256), %i.adi
  %i.adl = sub nuw nsw <2 x i64> splat (i64 256), %i.adj
  %i.adm = icmp slt <2 x i8> %i.adf, zeroinitializer
  %i.adn = icmp slt <2 x i8> %i.adg, zeroinitializer
  %i.ado = select <2 x i1> %i.adm, <2 x i64> %i.adk, <2 x i64> %i.adi
  %i.adp = select <2 x i1> %i.adn, <2 x i64> %i.adl, <2 x i64> %i.adj
  %i.adq = add nuw nsw <2 x i64> %i.ado, %i.ada   ; 2 uses
  %i.adr = add nuw nsw <2 x i64> %i.adp, %i.adb   ; 2 uses
  %i.ads = icmp eq i64 %n.vec330, 8
  br i1 %i.ads, label %middle.block343, label %vector.body331.2

vector.body331.2:                                 ; preds = %vector.body331.1
  %next.gep335.2 = getelementptr i8, ptr %i.l, i64 9
  %next.gep336.2 = getelementptr i8, ptr %i.ach, i64 9
  %next.gep337.2 = getelementptr i8, ptr %i.ace, i64 9
  %i.adt = getelementptr i8, ptr %i.l, i64 11
  %wide.load338.2 = load <2 x i8>, ptr %next.gep335.2, align 1, !tbaa !10, !noalias !319
  %wide.load339.2 = load <2 x i8>, ptr %i.adt, align 1, !tbaa !10, !noalias !319
  %i.adu = getelementptr i8, ptr %i.ach, i64 11
  %wide.load340.2 = load <2 x i8>, ptr %next.gep336.2, align 1, !tbaa !10, !noalias !319
  %wide.load341.2 = load <2 x i8>, ptr %i.adu, align 1, !tbaa !10, !noalias !319
  %i.adv = sub <2 x i8> %wide.load338.2, %wide.load340.2 ; 3 uses
  %i.adw = sub <2 x i8> %wide.load339.2, %wide.load341.2 ; 3 uses
  %i.adx = getelementptr i8, ptr %i.ace, i64 11
  store <2 x i8> %i.adv, ptr %next.gep337.2, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.adw, ptr %i.adx, align 1, !tbaa !10, !noalias !319
  %i.ady = zext <2 x i8> %i.adv to <2 x i64>      ; 2 uses
  %i.adz = zext <2 x i8> %i.adw to <2 x i64>      ; 2 uses
  %i.aea = sub nuw nsw <2 x i64> splat (i64 256), %i.ady
  %i.aeb = sub nuw nsw <2 x i64> splat (i64 256), %i.adz
  %i.aec = icmp slt <2 x i8> %i.adv, zeroinitializer
  %i.aed = icmp slt <2 x i8> %i.adw, zeroinitializer
  %i.aee = select <2 x i1> %i.aec, <2 x i64> %i.aea, <2 x i64> %i.ady
  %i.aef = select <2 x i1> %i.aed, <2 x i64> %i.aeb, <2 x i64> %i.adz
  %i.aeg = add nuw nsw <2 x i64> %i.aee, %i.adq   ; 2 uses
  %i.aeh = add nuw nsw <2 x i64> %i.aef, %i.adr   ; 2 uses
  %i.aei = icmp eq i64 %n.vec330, 12
  br i1 %i.aei, label %middle.block343, label %vector.body331.3

vector.body331.3:                                 ; preds = %vector.body331.2
  %next.gep335.3 = getelementptr i8, ptr %i.l, i64 13
  %next.gep336.3 = getelementptr i8, ptr %i.ach, i64 13
  %next.gep337.3 = getelementptr i8, ptr %i.ace, i64 13
  %i.aej = getelementptr i8, ptr %i.l, i64 15
  %wide.load338.3 = load <2 x i8>, ptr %next.gep335.3, align 1, !tbaa !10, !noalias !319
  %wide.load339.3 = load <2 x i8>, ptr %i.aej, align 1, !tbaa !10, !noalias !319
  %i.aek = getelementptr i8, ptr %i.ach, i64 15
  %wide.load340.3 = load <2 x i8>, ptr %next.gep336.3, align 1, !tbaa !10, !noalias !319
  %wide.load341.3 = load <2 x i8>, ptr %i.aek, align 1, !tbaa !10, !noalias !319
  %i.ael = sub <2 x i8> %wide.load338.3, %wide.load340.3 ; 3 uses
  %i.aem = sub <2 x i8> %wide.load339.3, %wide.load341.3 ; 3 uses
  %i.aen = getelementptr i8, ptr %i.ace, i64 15
  store <2 x i8> %i.ael, ptr %next.gep337.3, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.aem, ptr %i.aen, align 1, !tbaa !10, !noalias !319
  %i.aeo = zext <2 x i8> %i.ael to <2 x i64>      ; 2 uses
  %i.aep = zext <2 x i8> %i.aem to <2 x i64>      ; 2 uses
  %i.aeq = sub nuw nsw <2 x i64> splat (i64 256), %i.aeo
  %i.aer = sub nuw nsw <2 x i64> splat (i64 256), %i.aep
  %i.aes = icmp slt <2 x i8> %i.ael, zeroinitializer
  %i.aet = icmp slt <2 x i8> %i.aem, zeroinitializer
  %i.aeu = select <2 x i1> %i.aes, <2 x i64> %i.aeq, <2 x i64> %i.aeo
  %i.aev = select <2 x i1> %i.aet, <2 x i64> %i.aer, <2 x i64> %i.aep
  %i.aew = add nuw nsw <2 x i64> %i.aeu, %i.aeg   ; 2 uses
  %i.aex = add nuw nsw <2 x i64> %i.aev, %i.aeh   ; 2 uses
  %i.aey = icmp eq i64 %n.vec330, 16
  br i1 %i.aey, label %middle.block343, label %vector.body331.4

vector.body331.4:                                 ; preds = %vector.body331.3
  %next.gep335.4 = getelementptr i8, ptr %i.l, i64 17
  %next.gep336.4 = getelementptr i8, ptr %i.ach, i64 17
  %next.gep337.4 = getelementptr i8, ptr %i.ace, i64 17
  %i.aez = getelementptr i8, ptr %i.l, i64 19
  %wide.load338.4 = load <2 x i8>, ptr %next.gep335.4, align 1, !tbaa !10, !noalias !319
  %wide.load339.4 = load <2 x i8>, ptr %i.aez, align 1, !tbaa !10, !noalias !319
  %i.afa = getelementptr i8, ptr %i.ach, i64 19
  %wide.load340.4 = load <2 x i8>, ptr %next.gep336.4, align 1, !tbaa !10, !noalias !319
  %wide.load341.4 = load <2 x i8>, ptr %i.afa, align 1, !tbaa !10, !noalias !319
  %i.afb = sub <2 x i8> %wide.load338.4, %wide.load340.4 ; 3 uses
  %i.afc = sub <2 x i8> %wide.load339.4, %wide.load341.4 ; 3 uses
  %i.afd = getelementptr i8, ptr %i.ace, i64 19
  store <2 x i8> %i.afb, ptr %next.gep337.4, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.afc, ptr %i.afd, align 1, !tbaa !10, !noalias !319
  %i.afe = zext <2 x i8> %i.afb to <2 x i64>      ; 2 uses
  %i.aff = zext <2 x i8> %i.afc to <2 x i64>      ; 2 uses
  %i.afg = sub nuw nsw <2 x i64> splat (i64 256), %i.afe
  %i.afh = sub nuw nsw <2 x i64> splat (i64 256), %i.aff
  %i.afi = icmp slt <2 x i8> %i.afb, zeroinitializer
  %i.afj = icmp slt <2 x i8> %i.afc, zeroinitializer
  %i.afk = select <2 x i1> %i.afi, <2 x i64> %i.afg, <2 x i64> %i.afe
  %i.afl = select <2 x i1> %i.afj, <2 x i64> %i.afh, <2 x i64> %i.aff
  %i.afm = add nuw nsw <2 x i64> %i.afk, %i.aew   ; 2 uses
  %i.afn = add nuw nsw <2 x i64> %i.afl, %i.aex   ; 2 uses
  %i.afo = icmp eq i64 %n.vec330, 20
  br i1 %i.afo, label %middle.block343, label %vector.body331.5

vector.body331.5:                                 ; preds = %vector.body331.4
  %next.gep335.5 = getelementptr i8, ptr %i.l, i64 21
  %next.gep336.5 = getelementptr i8, ptr %i.ach, i64 21
  %next.gep337.5 = getelementptr i8, ptr %i.ace, i64 21
  %i.afp = getelementptr i8, ptr %i.l, i64 23
  %wide.load338.5 = load <2 x i8>, ptr %next.gep335.5, align 1, !tbaa !10, !noalias !319
  %wide.load339.5 = load <2 x i8>, ptr %i.afp, align 1, !tbaa !10, !noalias !319
  %i.afq = getelementptr i8, ptr %i.ach, i64 23
  %wide.load340.5 = load <2 x i8>, ptr %next.gep336.5, align 1, !tbaa !10, !noalias !319
  %wide.load341.5 = load <2 x i8>, ptr %i.afq, align 1, !tbaa !10, !noalias !319
  %i.afr = sub <2 x i8> %wide.load338.5, %wide.load340.5 ; 3 uses
  %i.afs = sub <2 x i8> %wide.load339.5, %wide.load341.5 ; 3 uses
  %i.aft = getelementptr i8, ptr %i.ace, i64 23
  store <2 x i8> %i.afr, ptr %next.gep337.5, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.afs, ptr %i.aft, align 1, !tbaa !10, !noalias !319
  %i.afu = zext <2 x i8> %i.afr to <2 x i64>      ; 2 uses
  %i.afv = zext <2 x i8> %i.afs to <2 x i64>      ; 2 uses
  %i.afw = sub nuw nsw <2 x i64> splat (i64 256), %i.afu
  %i.afx = sub nuw nsw <2 x i64> splat (i64 256), %i.afv
  %i.afy = icmp slt <2 x i8> %i.afr, zeroinitializer
  %i.afz = icmp slt <2 x i8> %i.afs, zeroinitializer
  %i.aga = select <2 x i1> %i.afy, <2 x i64> %i.afw, <2 x i64> %i.afu
  %i.agb = select <2 x i1> %i.afz, <2 x i64> %i.afx, <2 x i64> %i.afv
  %i.agc = add nuw nsw <2 x i64> %i.aga, %i.afm   ; 2 uses
  %i.agd = add nuw nsw <2 x i64> %i.agb, %i.afn   ; 2 uses
  %i.age = icmp eq i64 %n.vec330, 24
  br i1 %i.age, label %middle.block343, label %vector.body331.6

vector.body331.6:                                 ; preds = %vector.body331.5
  %next.gep335.6 = getelementptr i8, ptr %i.l, i64 25
  %next.gep336.6 = getelementptr i8, ptr %i.ach, i64 25
  %next.gep337.6 = getelementptr i8, ptr %i.ace, i64 25
  %i.agf = getelementptr i8, ptr %i.l, i64 27
  %wide.load338.6 = load <2 x i8>, ptr %next.gep335.6, align 1, !tbaa !10, !noalias !319
  %wide.load339.6 = load <2 x i8>, ptr %i.agf, align 1, !tbaa !10, !noalias !319
  %i.agg = getelementptr i8, ptr %i.ach, i64 27
  %wide.load340.6 = load <2 x i8>, ptr %next.gep336.6, align 1, !tbaa !10, !noalias !319
  %wide.load341.6 = load <2 x i8>, ptr %i.agg, align 1, !tbaa !10, !noalias !319
  %i.agh = sub <2 x i8> %wide.load338.6, %wide.load340.6 ; 3 uses
  %i.agi = sub <2 x i8> %wide.load339.6, %wide.load341.6 ; 3 uses
  %i.agj = getelementptr i8, ptr %i.ace, i64 27
  store <2 x i8> %i.agh, ptr %next.gep337.6, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.agi, ptr %i.agj, align 1, !tbaa !10, !noalias !319
  %i.agk = zext <2 x i8> %i.agh to <2 x i64>      ; 2 uses
  %i.agl = zext <2 x i8> %i.agi to <2 x i64>      ; 2 uses
  %i.agm = sub nuw nsw <2 x i64> splat (i64 256), %i.agk
  %i.agn = sub nuw nsw <2 x i64> splat (i64 256), %i.agl
  %i.ago = icmp slt <2 x i8> %i.agh, zeroinitializer
  %i.agp = icmp slt <2 x i8> %i.agi, zeroinitializer
  %i.agq = select <2 x i1> %i.ago, <2 x i64> %i.agm, <2 x i64> %i.agk
  %i.agr = select <2 x i1> %i.agp, <2 x i64> %i.agn, <2 x i64> %i.agl
  %i.ags = add <2 x i64> %i.agq, %i.agc           ; 2 uses
  %i.agt = add <2 x i64> %i.agr, %i.agd           ; 2 uses
  %i.agu = icmp eq i64 %n.vec330, 28
  br i1 %i.agu, label %middle.block343, label %vector.body331.7

vector.body331.7:                                 ; preds = %vector.body331.6
  %next.gep335.7 = getelementptr i8, ptr %i.l, i64 29
  %next.gep336.7 = getelementptr i8, ptr %i.ach, i64 29
  %next.gep337.7 = getelementptr i8, ptr %i.ace, i64 29
  %i.agv = getelementptr i8, ptr %i.l, i64 31
  %wide.load338.7 = load <2 x i8>, ptr %next.gep335.7, align 1, !tbaa !10, !noalias !319
  %wide.load339.7 = load <2 x i8>, ptr %i.agv, align 1, !tbaa !10, !noalias !319
  %i.agw = getelementptr i8, ptr %i.ach, i64 31
  %wide.load340.7 = load <2 x i8>, ptr %next.gep336.7, align 1, !tbaa !10, !noalias !319
  %wide.load341.7 = load <2 x i8>, ptr %i.agw, align 1, !tbaa !10, !noalias !319
  %i.agx = sub <2 x i8> %wide.load338.7, %wide.load340.7 ; 3 uses
  %i.agy = sub <2 x i8> %wide.load339.7, %wide.load341.7 ; 3 uses
  %i.agz = getelementptr i8, ptr %i.ace, i64 31
  store <2 x i8> %i.agx, ptr %next.gep337.7, align 1, !tbaa !10, !noalias !319
  store <2 x i8> %i.agy, ptr %i.agz, align 1, !tbaa !10, !noalias !319
  %i.aha = zext <2 x i8> %i.agx to <2 x i64>      ; 2 uses
  %i.ahb = zext <2 x i8> %i.agy to <2 x i64>      ; 2 uses
  %i.ahc = sub nuw nsw <2 x i64> splat (i64 256), %i.aha
  %i.ahd = sub nuw nsw <2 x i64> splat (i64 256), %i.ahb
  %i.ahe = icmp slt <2 x i8> %i.agx, zeroinitializer
  %i.ahf = icmp slt <2 x i8> %i.agy, zeroinitializer
  %i.ahg = select <2 x i1> %i.ahe, <2 x i64> %i.ahc, <2 x i64> %i.aha
  %i.ahh = select <2 x i1> %i.ahf, <2 x i64> %i.ahd, <2 x i64> %i.ahb
  %i.ahi = add <2 x i64> %i.ahg, %i.ags
  %i.ahj = add <2 x i64> %i.ahh, %i.agt
  br label %middle.block343

middle.block343:                                  ; preds = %vector.body331.7, %vector.body331.6, %vector.body331.5, %vector.body331.4, %vector.body331.3, %vector.body331.2, %vector.body331.1, %vector.ph329
  %.lcssa694 = phi <2 x i64> [ %i.ada, %vector.ph329 ], [ %i.adq, %vector.body331.1 ], [ %i.aeg, %vector.body331.2 ], [ %i.aew, %vector.body331.3 ], [ %i.afm, %vector.body331.4 ], [ %i.agc, %vector.body331.5 ], [ %i.ags, %vector.body331.6 ], [ %i.ahi, %vector.body331.7 ]
  %.lcssa693 = phi <2 x i64> [ %i.adb, %vector.ph329 ], [ %i.adr, %vector.body331.1 ], [ %i.aeh, %vector.body331.2 ], [ %i.aex, %vector.body331.3 ], [ %i.afn, %vector.body331.4 ], [ %i.agd, %vector.body331.5 ], [ %i.agt, %vector.body331.6 ], [ %i.ahj, %vector.body331.7 ]
  %bin.rdx344 = add <2 x i64> %.lcssa693, %.lcssa694
  %i.ahk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx344) ; 2 uses
  %cmp.n345 = icmp eq i64 %n.vec330, %i.acj
  br i1 %cmp.n345, label %.preheader.i182, label %.lr.ph.i180.preheader691

.lr.ph.i180.preheader691:                         ; preds = %vector.memcheck323, %.lr.ph.i180.preheader, %middle.block343
  %.06686.i.ph = phi ptr [ %.06681.i, %vector.memcheck323 ], [ %.06681.i, %.lr.ph.i180.preheader ], [ %i.acm, %middle.block343 ] ; 3 uses
  %.06285.i.ph = phi ptr [ %.06280.i, %vector.memcheck323 ], [ %.06280.i, %.lr.ph.i180.preheader ], [ %i.acn, %middle.block343 ] ; 3 uses
  %.06484.i.ph = phi ptr [ %.06479.i, %vector.memcheck323 ], [ %.06479.i, %.lr.ph.i180.preheader ], [ %i.aco, %middle.block343 ] ; 3 uses
  %.05783.i.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %.lr.ph.i180.preheader ], [ %i.ahk, %middle.block343 ] ; 2 uses
  %.05882.i.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %.lr.ph.i180.preheader ], [ %n.vec330, %middle.block343 ] ; 3 uses
  %xtraiter712 = and i64 %i.acj, 1
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod713.not, label %.lr.ph.i180.prol.loopexit, label %.lr.ph.i180.prol

.lr.ph.i180.prol:                                 ; preds = %.lr.ph.i180.preheader691
  %i.ahl = load i8, ptr %.06686.i.ph, align 1, !tbaa !10, !noalias !319
  %i.ahm = load i8, ptr %.06285.i.ph, align 1, !tbaa !10, !noalias !319
  %.narrow77.i.prol = sub i8 %i.ahl, %i.ahm       ; 3 uses
  store i8 %.narrow77.i.prol, ptr %.06484.i.ph, align 1, !tbaa !10, !noalias !319
  %i.ahn = zext i8 %.narrow77.i.prol to i64       ; 2 uses
  %i.aho = sub nuw nsw i64 256, %i.ahn
  %i.ahp = icmp slt i8 %.narrow77.i.prol, 0
  %i.ahq = select i1 %i.ahp, i64 %i.aho, i64 %i.ahn
  %i.ahr = add i64 %i.ahq, %.05783.i.ph           ; 2 uses
  %i.ahs = or disjoint i64 %.05882.i.ph, 1
  %.064.i.prol = getelementptr inbounds nuw i8, ptr %.06484.i.ph, i64 1 ; 2 uses
  %.062.i.prol = getelementptr inbounds nuw i8, ptr %.06285.i.ph, i64 1 ; 2 uses
  %.066.i.prol = getelementptr inbounds nuw i8, ptr %.06686.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i180.prol.loopexit

.lr.ph.i180.prol.loopexit:                        ; preds = %.lr.ph.i180.prol, %.lr.ph.i180.preheader691
  %.lcssa692.unr = phi i64 [ poison, %.lr.ph.i180.preheader691 ], [ %i.ahr, %.lr.ph.i180.prol ]
  %.064.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader691 ], [ %.064.i.prol, %.lr.ph.i180.prol ]
  %.062.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader691 ], [ %.062.i.prol, %.lr.ph.i180.prol ]
  %.066.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i180.preheader691 ], [ %.066.i.prol, %.lr.ph.i180.prol ]
  %.06686.i.unr = phi ptr [ %.06686.i.ph, %.lr.ph.i180.preheader691 ], [ %.066.i.prol, %.lr.ph.i180.prol ]
  %.06285.i.unr = phi ptr [ %.06285.i.ph, %.lr.ph.i180.preheader691 ], [ %.062.i.prol, %.lr.ph.i180.prol ]
  %.06484.i.unr = phi ptr [ %.06484.i.ph, %.lr.ph.i180.preheader691 ], [ %.064.i.prol, %.lr.ph.i180.prol ]
  %.05783.i.unr = phi i64 [ %.05783.i.ph, %.lr.ph.i180.preheader691 ], [ %i.ahr, %.lr.ph.i180.prol ]
  %.05882.i.unr = phi i64 [ %.05882.i.ph, %.lr.ph.i180.preheader691 ], [ %i.ahs, %.lr.ph.i180.prol ]
  %i.aht = add nsw i64 %i.acj, -1
  %i.ahu = icmp eq i64 %.05882.i.ph, %i.aht
  br i1 %i.ahu, label %.preheader.i182, label %.lr.ph.i180

.preheader.i182:                                  ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180, %middle.block343, %bb.v
  %.058.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.acj, %middle.block343 ], [ %i.acj, %.lr.ph.i180 ], [ %i.acj, %.lr.ph.i180.prol.loopexit ] ; 2 uses
  %.057.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.ahk, %middle.block343 ], [ %.lcssa692.unr, %.lr.ph.i180.prol.loopexit ], [ %i.aij, %.lr.ph.i180 ] ; 2 uses
  %.064.lcssa.i = phi ptr [ %.06479.i, %bb.v ], [ %i.aco, %middle.block343 ], [ %.064.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.064.i.1, %.lr.ph.i180 ]
  %.062.lcssa.i = phi ptr [ %.06280.i, %bb.v ], [ %i.acn, %middle.block343 ], [ %.062.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.062.i.1, %.lr.ph.i180 ]
  %.066.lcssa.i = phi ptr [ %.06681.i, %bb.v ], [ %i.acm, %middle.block343 ], [ %.066.i.lcssa.unr, %.lr.ph.i180.prol.loopexit ], [ %.066.i.1, %.lr.ph.i180 ]
  %i.ahv = icmp ult i64 %.058.lcssa.i, %i.e
  br i1 %i.ahv, label %.lr.ph100.i, label %png_setup_paeth_row.exit

.lr.ph.i180:                                      ; preds = %.lr.ph.i180.prol.loopexit, %.lr.ph.i180
  %.06686.i = phi ptr [ %.066.i.1, %.lr.ph.i180 ], [ %.06686.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.06285.i = phi ptr [ %.062.i.1, %.lr.ph.i180 ], [ %.06285.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.06484.i = phi ptr [ %.064.i.1, %.lr.ph.i180 ], [ %.06484.i.unr, %.lr.ph.i180.prol.loopexit ] ; 3 uses
  %.05783.i = phi i64 [ %i.aij, %.lr.ph.i180 ], [ %.05783.i.unr, %.lr.ph.i180.prol.loopexit ]
  %.05882.i = phi i64 [ %i.aik, %.lr.ph.i180 ], [ %.05882.i.unr, %.lr.ph.i180.prol.loopexit ]
  %i.ahw = load i8, ptr %.06686.i, align 1, !tbaa !10, !noalias !319
  %i.ahx = load i8, ptr %.06285.i, align 1, !tbaa !10, !noalias !319
  %.narrow77.i = sub i8 %i.ahw, %i.ahx            ; 3 uses
  store i8 %.narrow77.i, ptr %.06484.i, align 1, !tbaa !10, !noalias !319
  %i.ahy = zext i8 %.narrow77.i to i64            ; 2 uses
  %i.ahz = sub nuw nsw i64 256, %i.ahy
  %i.aia = icmp slt i8 %.narrow77.i, 0
  %i.aib = select i1 %i.aia, i64 %i.ahz, i64 %i.ahy
  %i.aic = add i64 %i.aib, %.05783.i
  %.064.i = getelementptr inbounds nuw i8, ptr %.06484.i, i64 1
  %.062.i = getelementptr inbounds nuw i8, ptr %.06285.i, i64 1
  %.066.i = getelementptr inbounds nuw i8, ptr %.06686.i, i64 1
  %i.aid = load i8, ptr %.066.i, align 1, !tbaa !10, !noalias !319
  %i.aie = load i8, ptr %.062.i, align 1, !tbaa !10, !noalias !319
  %.narrow77.i.1 = sub i8 %i.aid, %i.aie          ; 3 uses
  store i8 %.narrow77.i.1, ptr %.064.i, align 1, !tbaa !10, !noalias !319
  %i.aif = zext i8 %.narrow77.i.1 to i64          ; 2 uses
  %i.aig = sub nuw nsw i64 256, %i.aif
  %i.aih = icmp slt i8 %.narrow77.i.1, 0
  %i.aii = select i1 %i.aih, i64 %i.aig, i64 %i.aif
  %i.aij = add i64 %i.aii, %i.aic                 ; 2 uses
  %i.aik = add nuw nsw i64 %.05882.i, 2           ; 2 uses
  %.064.i.1 = getelementptr inbounds nuw i8, ptr %.06484.i, i64 2 ; 2 uses
  %.062.i.1 = getelementptr inbounds nuw i8, ptr %.06285.i, i64 2 ; 2 uses
  %.066.i.1 = getelementptr inbounds nuw i8, ptr %.06686.i, i64 2 ; 2 uses
  %exitcond.not.i181.1 = icmp eq i64 %i.aik, %i.acj
  br i1 %exitcond.not.i181.1, label %.preheader.i182, label %.lr.ph.i180, !llvm.loop !304

.lr.ph100.i:                                      ; preds = %.preheader.i182, %.lr.ph100.i
  %.06199.pn.i = phi ptr [ %.06199.i, %.lr.ph100.i ], [ %i.ach, %.preheader.i182 ]
  %.06098.pn.i = phi ptr [ %.06098.i, %.lr.ph100.i ], [ %i.l, %.preheader.i182 ]
  %.197.i = phi i64 [ %i.ajd, %.lr.ph100.i ], [ %.057.lcssa.i, %.preheader.i182 ]
  %.15996.i = phi i64 [ %i.aji, %.lr.ph100.i ], [ %.058.lcssa.i, %.preheader.i182 ]
  %.16395.i = phi ptr [ %i.ajh, %.lr.ph100.i ], [ %.062.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.16594.i = phi ptr [ %i.ajf, %.lr.ph100.i ], [ %.064.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.16793.i = phi ptr [ %i.ajg, %.lr.ph100.i ], [ %.066.lcssa.i, %.preheader.i182 ] ; 2 uses
  %.06098.i = getelementptr inbounds nuw i8, ptr %.06098.pn.i, i64 1 ; 2 uses
  %.06199.i = getelementptr inbounds nuw i8, ptr %.06199.pn.i, i64 1 ; 2 uses
  %i.ail = load i8, ptr %.16395.i, align 1, !tbaa !10, !noalias !319 ; 2 uses
  %i.aim = zext i8 %i.ail to i32
  %i.ain = load i8, ptr %.06199.i, align 1, !tbaa !10, !noalias !319 ; 2 uses
  %i.aio = zext i8 %i.ain to i32                  ; 2 uses
  %i.aip = load i8, ptr %.06098.i, align 1, !tbaa !10, !noalias !319 ; 2 uses
  %i.aiq = zext i8 %i.aip to i32
  %i.air = sub nsw i32 %i.aim, %i.aio             ; 2 uses
  %i.ais = sub nsw i32 %i.aiq, %i.aio             ; 2 uses
  %i.ait = tail call i32 @llvm.abs.i32(i32 %i.air, i1 true) ; 2 uses
  %i.aiu = tail call i32 @llvm.abs.i32(i32 %i.ais, i1 true) ; 2 uses
  %i.aiv = add nsw i32 %i.ais, %i.air
  %i.aiw = tail call i32 @llvm.abs.i32(i32 %i.aiv, i1 true) ; 2 uses
  %.not.i184 = icmp samesign ugt i32 %i.ait, %i.aiu
  %.not72.i = icmp samesign ugt i32 %i.ait, %i.aiw
  %or.cond.i185 = select i1 %.not.i184, i1 true, i1 %.not72.i
  %.not73.i = icmp samesign ugt i32 %i.aiu, %i.aiw
  %i.aix = select i1 %.not73.i, i8 %i.ain, i8 %i.ail
  %.tr.i186 = select i1 %or.cond.i185, i8 %i.aix, i8 %i.aip
  %i.aiy = load i8, ptr %.16793.i, align 1, !tbaa !10, !noalias !319
  %.narrow.i187 = sub i8 %i.aiy, %.tr.i186        ; 3 uses
  store i8 %.narrow.i187, ptr %.16594.i, align 1, !tbaa !10, !noalias !319
  %i.aiz = zext i8 %.narrow.i187 to i64           ; 2 uses
  %i.aja = sub nuw nsw i64 256, %i.aiz
  %i.ajb = icmp slt i8 %.narrow.i187, 0
  %i.ajc = select i1 %i.ajb, i64 %i.aja, i64 %i.aiz
  %i.ajd = add i64 %i.ajc, %.197.i                ; 3 uses
  %i.aje = icmp ule i64 %i.ajd, %.6
  %i.ajf = getelementptr inbounds nuw i8, ptr %.16594.i, i64 1
  %i.ajg = getelementptr inbounds nuw i8, ptr %.16793.i, i64 1
  %i.ajh = getelementptr inbounds nuw i8, ptr %.16395.i, i64 1
  %i.aji = add nuw i64 %.15996.i, 1               ; 2 uses
  %i.ajj = icmp ult i64 %i.aji, %i.e
  %or.cond108.i = select i1 %i.aje, i1 %i.ajj, i1 false
  br i1 %or.cond108.i, label %.lr.ph100.i, label %png_setup_paeth_row.exit, !llvm.loop !305

png_setup_paeth_row.exit:                         ; preds = %.lr.ph100.i, %.preheader.i182
  %.2.i183 = phi i64 [ %.057.lcssa.i, %.preheader.i182 ], [ %i.ajd, %.lr.ph100.i ]
  %i.ajk = icmp ult i64 %.2.i183, %.6
  br i1 %i.ajk, label %bb.w, label %.thread214.thread

bb.w:                                             ; preds = %png_setup_paeth_row.exit
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !67 ; 2 uses
  %.not127 = icmp eq ptr %i.ajm, null
  br i1 %.not127, label %.thread214.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.ajm, ptr %i.acd, align 8, !tbaa !66
  store ptr %i.ace, ptr %i.ajl, align 8, !tbaa !67
  br label %.thread214.thread

.thread214.thread:                                ; preds = %.lr.ph80.i, %.lr.ph44.i, %.lr.ph.i138.prol.loopexit, %.lr.ph.i138, %.lr.ph12.i.prol.loopexit, %.lr.ph12.i, %middle.block415, %vec.epilog.middle.block442, %middle.block523, %vec.epilog.middle.block547, %middle.block574, %vec.epilog.middle.block594, %middle.block659, %vec.epilog.middle.block680, %.preheader.i174, %.preheader.i154, %bb.j, %.preheader.i, %png_setup_paeth_row.exit, %bb.x, %bb.w, %.thread214
  %.7 = phi ptr [ %i.lm, %.preheader.i154 ], [ %.5109, %.thread214 ], [ %i.ace, %bb.x ], [ %i.ace, %bb.w ], [ %.5109, %png_setup_paeth_row.exit ], [ %i.jd, %bb.j ], [ %.val128, %.preheader.i ], [ %i.xv, %.preheader.i174 ], [ %.val128, %middle.block659 ], [ %i.jd, %middle.block574 ], [ %i.lm, %middle.block523 ], [ %i.xv, %middle.block415 ], [ %.val128, %vec.epilog.middle.block680 ], [ %i.lm, %.lr.ph44.i ], [ %i.jd, %vec.epilog.middle.block594 ], [ %.val128, %.lr.ph12.i.prol.loopexit ], [ %i.lm, %vec.epilog.middle.block547 ], [ %i.jd, %.lr.ph.i138.prol.loopexit ], [ %i.xv, %vec.epilog.middle.block442 ], [ %.val128, %.lr.ph12.i ], [ %i.jd, %.lr.ph.i138 ], [ %i.xv, %.lr.ph80.i ]
  %i.ajn = load i64, ptr %i.d, align 8, !tbaa !73
  %i.ajo = add i64 %i.ajn, 1
  tail call void @png_compress_IDAT(ptr noundef nonnull %0, ptr noundef %.7, i64 noundef %i.ajo, i32 noundef 0)
  %i.ajp = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !68, !alias.scope !320 ; 2 uses
  %.not.i188 = icmp eq ptr %i.ajq, null
  br i1 %.not.i188, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread214.thread
  %i.ajr = load ptr, ptr %i.k, align 8, !tbaa !65, !alias.scope !320
  store ptr %i.ajr, ptr %i.ajp, align 8, !tbaa !68, !alias.scope !320
  store ptr %i.ajq, ptr %i.k, align 8, !tbaa !65, !alias.scope !320
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread214.thread
  tail call void @png_write_finish_row(ptr noundef nonnull %0)
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.ajt = load i32, ptr %i.ajs, align 4, !tbaa !321, !alias.scope !320
  %.fr.i = freeze i32 %i.ajt
  %i.aju = add i32 %.fr.i, 1                      ; 2 uses
  store i32 %i.aju, ptr %i.ajs, align 4, !tbaa !321, !alias.scope !320
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !322, !alias.scope !320
  %i.ajx = add i32 %i.ajw, -1
  %or.cond.not.i = icmp ult i32 %i.ajx, %i.aju
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
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9
end_hunk_5
