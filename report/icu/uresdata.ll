Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uresdata?download=true
inline.NumInlined: 120
inline.NumDeleted: 26
begin_hunk_0_@ures_swap_78:bb.a
  %i.dt = load i32, ptr %4, align 4, !tbaa !11
  %i.du = icmp slt i32 %i.dt, 1
  br i1 %i.du, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.ax)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !74 ; 2 uses
  %.not158 = icmp eq ptr %i.dw, %5
  br i1 %.not158, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @uprv_free_78(ptr noundef %i.dw)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dx = load ptr, ptr %i.cj, align 8, !tbaa !71 ; 2 uses
  %.not159 = icmp eq ptr %i.dx, %i.b
  br i1 %.not159, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @uprv_free_78(ptr noundef %i.dx)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !76
  %i.ea = shl nuw nsw i32 %i.bd, 2
  %i.eb = call noundef i32 %i.dz(ptr noundef nonnull %0, ptr noundef nonnull %i.at, i32 noundef %i.ea, ptr noundef nonnull %i.bx, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.r
  %i.ec = shl nsw i32 %i.bn, 2
  %i.ed = add nsw i32 %i.ec, %i.c
  br label %bb.at

.critedge:                                        ; preds = %bb.ai, %bb.aj, %bb.ae, %bb.aa, %bb.ad, %bb.z, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.at

bb.at:                                            ; preds = %.critedge, %bb.a, %bb.b, %bb.as, %bb.q, %bb.m, %bb.k, %.thread
  %.1 = phi i32 [ 0, %.thread ], [ 0, %bb.m ], [ 0, %bb.q ], [ %i.ed, %bb.as ], [ 0, %.critedge ], [ 0, %bb.k ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.1
}

declare i32 @udata_swapDataHeader_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @udata_printError_78(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @udata_readInt32_78(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @udata_swapInvStringBlock_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL17ures_swapResourcePK12UDataSwapperPKjPjjPKcP9TempTableP10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %3, 28                          ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 5, label %bb.aw
    i32 6, label %bb.aw
    i32 7, label %bb.aw
    i32 9, label %bb.aw
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, 268435455                    ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.f = lshr i32 %i.b, 5
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 2 uses
  %i.j = and i32 %3, 31
  %i.k = shl nuw i32 1, %i.j                      ; 2 uses
  %i.l = and i32 %i.i, %i.k
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.aw

bb.d:                                             ; preds = %bb.c
  %i.m = or i32 %i.i, %i.k
  store i32 %i.m, ptr %i.h, align 4, !tbaa !26
  %i.n = zext nneg i32 %i.b to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n ; 18 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n ; 11 uses
  switch i32 %i.a, label %bb.av [
    i32 3, label %bb.e
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 14, label %bb.au
    i32 8, label %bb.aq
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.q = load i32, ptr %i.o, align 4, !tbaa !26
  %i.r = tail call i32 @udata_readInt32_78(ptr noundef %0, i32 noundef %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.u = tail call noundef i32 %i.t(ptr noundef %0, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull %i.p, ptr noundef nonnull %6) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.y = shl nsw i32 %i.r, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.aa = tail call noundef i32 %i.w(ptr noundef %0, ptr noundef nonnull %i.x, i32 noundef %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %6) ; 0 uses
  br label %bb.aw

bb.f:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !26
  %i.ac = tail call i32 @udata_readInt32_78(ptr noundef %0, i32 noundef %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !76
  %i.af = tail call noundef i32 %i.ae(ptr noundef %0, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull %i.p, ptr noundef nonnull %6) ; 0 uses
  %.not302 = icmp eq ptr %4, null
  br i1 %.not302, label %bb.aw, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not303 = icmp eq ptr %4, @.str.15
  br i1 %.not303, label %bb.h, label %.split

.split:                                           ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !92
  %i.ai = tail call noundef i32 %i.ah(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef -1, ptr noundef nonnull @_ZL16gCollationBinKey, i32 noundef 14)
  %.not305 = icmp eq i32 %i.ai, 0
  br i1 %.not305, label %bb.i, label %bb.aw

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ak = tail call signext i8 @ucol_looksLikeCollationBinary_78(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i32 noundef %i.ac)
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.aw, label %bb.i

bb.i:                                             ; preds = %.split, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ao = tail call i32 @ucol_swap_78(ptr noundef nonnull %0, ptr noundef nonnull %i.am, i32 noundef %i.ac, ptr noundef nonnull %i.an, ptr noundef nonnull %6) ; 0 uses
  br label %bb.aw

bb.j:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !93
  %i.ar = load i16, ptr %i.o, align 2, !tbaa !36
  %i.as = tail call noundef zeroext i16 %i.aq(i16 noundef zeroext %i.ar)
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.ay = tail call noundef i32 %i.av(ptr noundef %0, ptr noundef nonnull %i.o, i32 noundef 2, ptr noundef nonnull %i.p, ptr noundef nonnull %6) ; 0 uses
  %i.az = add nuw nsw i32 %i.at, 2
  %i.ba = lshr i32 %i.az, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bb = load i32, ptr %i.o, align 4, !tbaa !26
  %i.bc = tail call i32 @udata_readInt32_78(ptr noundef %0, i32 noundef %i.bb) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.bh = tail call noundef i32 %i.be(ptr noundef %0, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull %i.p, ptr noundef nonnull %6) ; 0 uses
  %i.bi = add nsw i32 %i.bc, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi i32 [ %i.ba, %bb.j ], [ %i.bi, %bb.k ]
  %.0280 = phi i32 [ %i.at, %bb.j ], [ %i.bc, %bb.k ] ; 16 uses
  %.0276 = phi ptr [ %i.aw, %bb.j ], [ null, %bb.k ] ; 8 uses
  %.0275 = phi ptr [ %i.ax, %bb.j ], [ null, %bb.k ] ; 5 uses
  %.0274 = phi ptr [ null, %bb.j ], [ %i.bf, %bb.k ] ; 5 uses
  %.0273 = phi ptr [ null, %bb.j ], [ %i.bg, %bb.k ] ; 5 uses
  %i.bj = icmp eq i32 %.0280, 0
  br i1 %i.bj, label %bb.aw, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0281 = add nsw i32 %.pn, %i.b
  %i.bk = sext i32 %.0281 to i64                  ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk ; 4 uses
  %i.bn = icmp sgt i32 %.0280, 0                  ; 6 uses
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %.not300 = icmp eq ptr %.0276, null
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %.0280 to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  br i1 %.not300, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !93
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.0276, i64 %indvars.iv
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !36
  %i.bu = tail call noundef zeroext i16 %i.br(i16 noundef zeroext %i.bt) ; 2 uses
  %i.bv = zext i16 %i.bu to i32
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !70
  %i.bx = icmp sgt i32 %i.bw, %i.bv
  %i.by = zext i16 %i.bu to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0274, i64 %indvars.iv
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !26
  %i.cb = tail call i32 @udata_readInt32_78(ptr noundef nonnull %0, i32 noundef %i.ca) ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, -1
  %i.cd = zext nneg i32 %i.cb to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink380 = phi i64 [ %i.cd, %bb.p ], [ %i.by, %bb.o ]
  %.sink = phi i1 [ %i.cc, %bb.p ], [ %i.bx, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %.sink380
  %.1 = select i1 %.sink, ptr %i.ce, ptr @.str.15
  %i.cf = load ptr, ptr %i.bq, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !26
  %i.ci = tail call noundef i32 %i.cf(i32 noundef %i.ch) ; 2 uses
  tail call fastcc void @_ZL17ures_swapResourcePK12UDataSwapperPKjPjjPKcP9TempTableP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %i.ci, ptr noundef %.1, ptr noundef %5, ptr noundef %6)
  %i.cj = load i32, ptr %6, align 4, !tbaa !11
  %i.ck = icmp slt i32 %i.cj, 1
  br i1 %i.ck, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %i.cl, i32 noundef %i.ci)
  br label %bb.aw

.critedge:                                        ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !85

._crit_edge:                                      ; preds = %.critedge, %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !67
  %i.co = icmp ugt i8 %i.cn, 1
  br i1 %i.co, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !94
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !95
  %i.ct = icmp eq i8 %i.cq, %i.cs
  br i1 %i.ct, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %.not299 = icmp eq ptr %.0276, null
  br i1 %.not299, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = shl nsw i32 %.0280, 1
  %i.cx = tail call noundef i32 %i.cv(ptr noundef nonnull %0, ptr noundef nonnull %.0276, i32 noundef %i.cw, ptr noundef %.0275, ptr noundef nonnull %6) ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !76
  %i.da = shl nsw i32 %.0280, 2
  %i.db = tail call noundef i32 %i.cz(ptr noundef nonnull %0, ptr noundef %i.bl, i32 noundef %i.da, ptr noundef %i.bm, ptr noundef nonnull %6) ; 0 uses
  br label %bb.aw

bb.v:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !76
  %i.de = shl nsw i32 %.0280, 3
  %i.df = tail call noundef i32 %i.dd(ptr noundef nonnull %0, ptr noundef %.0274, i32 noundef %i.de, ptr noundef %.0273, ptr noundef nonnull %6) ; 0 uses
  br label %bb.aw

bb.w:                                             ; preds = %bb.s
  %.not291 = icmp eq ptr %.0276, null             ; 2 uses
  br i1 %.not291, label %.preheader, label %.preheader306

.preheader306:                                    ; preds = %bb.w
  br i1 %i.bn, label %.lr.ph313, label %.loopexit

.lr.ph313:                                        ; preds = %.preheader306
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count343 = zext nneg i32 %.0280 to i64
  br label %bb.x

.preheader:                                       ; preds = %bb.w
  br i1 %i.bn, label %.lr.ph315, label %.loopexit

.lr.ph315:                                        ; preds = %.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count348 = zext nneg i32 %.0280 to i64
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph313, %bb.x
  %indvars.iv340 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next341, %bb.x ] ; 4 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !93
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.0276, i64 %indvars.iv340
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !36
  %i.dm = tail call noundef zeroext i16 %i.dj(i16 noundef zeroext %i.dl)
  %i.dn = zext i16 %i.dm to i32
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !74
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv340 ; 2 uses
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !78
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = trunc nuw nsw i64 %indvars.iv340 to i32
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !96
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %exitcond344.not = icmp eq i64 %indvars.iv.next341, %wide.trip.count343
  br i1 %exitcond344.not, label %.loopexit, label %bb.x, !llvm.loop !86

bb.y:                                             ; preds = %.lr.ph315, %bb.y
  %indvars.iv345 = phi i64 [ 0, %.lr.ph315 ], [ %indvars.iv.next346, %bb.y ] ; 4 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0274, i64 %indvars.iv345
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !26
  %i.du = tail call i32 @udata_readInt32_78(ptr noundef nonnull %0, i32 noundef %i.dt)
  %i.dv = load ptr, ptr %i.di, align 8, !tbaa !74
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv345 ; 2 uses
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !78
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = trunc nuw nsw i64 %indvars.iv345 to i32
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !96
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %exitcond349.not = icmp eq i64 %indvars.iv.next346, %wide.trip.count348
  br i1 %exitcond349.not, label %.loopexit, label %bb.y, !llvm.loop !87

.loopexit:                                        ; preds = %bb.x, %bb.y, %.preheader306, %.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !74
  %i.eb = load ptr, ptr %5, align 8, !tbaa !73
  tail call void @uprv_sortArray_78(ptr noundef %i.ea, i32 noundef %.0280, i32 noundef 8, ptr noundef nonnull @_ZL16ures_compareRowsPKvS0_S0_, ptr noundef %i.eb, i8 noundef signext 0, ptr noundef nonnull %6)
  %i.ec = load i32, ptr %6, align 4, !tbaa !11
  %i.ed = icmp slt i32 %i.ec, 1
  br i1 %i.ed, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %3, i32 noundef %.0280)
  br label %bb.aw

bb.aa:                                            ; preds = %.loopexit
  br i1 %.not291, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not295 = icmp eq ptr %.0276, %.0275
  br i1 %.not295, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !75
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0268 = phi ptr [ %i.ef, %bb.ac ], [ %.0275, %bb.ab ] ; 3 uses
  br i1 %i.bn, label %.lr.ph318, label %._crit_edge319

.lr.ph318:                                        ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count353 = zext nneg i32 %.0280 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph318, %bb.ae
  %indvars.iv350 = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next351, %bb.ae ] ; 3 uses
  %i.eh = load ptr, ptr %i.dz, align 8, !tbaa !74
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv350
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !96
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !72
  %i.em = sext i32 %i.ek to i64
  %i.en = getelementptr inbounds [2 x i8], ptr %.0276, i64 %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.0268, i64 %indvars.iv350
  %i.ep = tail call noundef i32 %i.el(ptr noundef nonnull %0, ptr noundef nonnull %i.en, i32 noundef 2, ptr noundef %i.eo, ptr noundef nonnull %6) ; 0 uses
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next351, %wide.trip.count353
  br i1 %exitcond354.not, label %._crit_edge319, label %bb.ae, !llvm.loop !88

._crit_edge319:                                   ; preds = %bb.ae, %bb.ad
  %.not296 = icmp eq ptr %.0275, %.0268
  br i1 %.not296, label %bb.al, label %bb.af

bb.af:                                            ; preds = %._crit_edge319
  %i.eq = shl nsw i32 %.0280, 1
  %i.er = sext i32 %i.eq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0275, ptr align 2 %.0268, i64 %i.er, i1 false)
  br label %bb.al

bb.ag:                                            ; preds = %bb.aa
  %.not293 = icmp eq ptr %.0274, %.0273
  br i1 %.not293, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !75
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.0267 = phi ptr [ %i.et, %bb.ah ], [ %.0273, %bb.ag ] ; 3 uses
  br i1 %i.bn, label %.lr.ph322, label %._crit_edge323

.lr.ph322:                                        ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %wide.trip.count358 = zext nneg i32 %.0280 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph322, %bb.aj
  %indvars.iv355 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next356, %bb.aj ] ; 3 uses
  %i.ev = load ptr, ptr %i.dz, align 8, !tbaa !74
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv355
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !96
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !76
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %.0274, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0267, i64 %indvars.iv355
  %i.fd = tail call noundef i32 %i.ez(ptr noundef nonnull %0, ptr noundef %i.fb, i32 noundef 4, ptr noundef %i.fc, ptr noundef nonnull %6) ; 0 uses
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %exitcond359.not = icmp eq i64 %indvars.iv.next356, %wide.trip.count358
  br i1 %exitcond359.not, label %._crit_edge323, label %bb.aj, !llvm.loop !89

._crit_edge323:                                   ; preds = %bb.aj, %bb.ai
  %.not294 = icmp eq ptr %.0273, %.0267
  br i1 %.not294, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge323
  %i.fe = shl nsw i32 %.0280, 2
  %i.ff = sext i32 %i.fe to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0273, ptr align 4 %.0267, i64 %i.ff, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge323, %bb.ak, %._crit_edge319, %bb.af
  %.not297 = icmp eq ptr %1, %2
  br i1 %.not297, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !75
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.0266 = phi ptr [ %i.fh, %bb.am ], [ %i.bm, %bb.al ] ; 3 uses
  br i1 %i.bn, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.an
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %wide.trip.count363 = zext nneg i32 %.0280 to i64
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph326, %bb.ao
  %indvars.iv360 = phi i64 [ 0, %.lr.ph326 ], [ %indvars.iv.next361, %bb.ao ] ; 3 uses
  %i.fj = load ptr, ptr %i.dz, align 8, !tbaa !74
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv360
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !96
  %i.fn = load ptr, ptr %i.fi, align 8, !tbaa !76
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.0266, i64 %indvars.iv360
  %i.fr = tail call noundef i32 %i.fn(ptr noundef nonnull %0, ptr noundef %i.fp, i32 noundef 4, ptr noundef %i.fq, ptr noundef nonnull %6) ; 0 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %._crit_edge327, label %bb.ao, !llvm.loop !90

._crit_edge327:                                   ; preds = %bb.ao, %bb.an
  %.not298 = icmp eq ptr %i.bm, %.0266
  br i1 %.not298, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge327
  %i.fs = shl nsw i32 %.0280, 2
  %i.ft = sext i32 %i.fs to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bm, ptr align 4 %.0266, i64 %i.ft, i1 false)
  br label %bb.aw

bb.aq:                                            ; preds = %bb.d
  %i.fu = load i32, ptr %i.o, align 4, !tbaa !26
  %i.fv = tail call i32 @udata_readInt32_78(ptr noundef %0, i32 noundef %i.fu) ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !76
  %i.fy = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ga = tail call noundef i32 %i.fx(ptr noundef %0, ptr noundef nonnull %i.o, i32 noundef 4, ptr noundef nonnull %i.p, ptr noundef nonnull %6) ; 0 uses
  %.not290328 = icmp sgt i32 %i.fv, 0
  br i1 %.not290328, label %.lr.ph331, label %._crit_edge332

.lr.ph331:                                        ; preds = %bb.aq
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count368 = zext nneg i32 %i.fv to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph331, %bb.at
  %indvars.iv365 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next366, %bb.at ] ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !69
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv365
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !26
  %i.gf = tail call noundef i32 %i.gc(i32 noundef %i.ge) ; 2 uses
  tail call fastcc void @_ZL17ures_swapResourcePK12UDataSwapperPKjPjjPKcP9TempTableP10UErrorCode(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %i.gf, ptr noundef null, ptr noundef %5, ptr noundef %6)
  %i.gg = load i32, ptr %6, align 4, !tbaa !11
  %i.gh = icmp slt i32 %i.gg, 1
  br i1 %i.gh, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gi = trunc nuw nsw i64 %indvars.iv365 to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %i.gi, i32 noundef %i.gf)
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next366, %wide.trip.count368
  br i1 %exitcond369.not, label %._crit_edge332, label %bb.ar, !llvm.loop !91

._crit_edge332:                                   ; preds = %bb.at, %bb.aq
  %i.gj = load ptr, ptr %i.fw, align 8, !tbaa !76
  %i.gk = shl nsw i32 %i.fv, 2
  %i.gl = tail call noundef i32 %i.gj(ptr noundef nonnull %0, ptr noundef nonnull %i.fy, i32 noundef %i.gk, ptr noundef nonnull %i.fz, ptr noundef nonnull %6) ; 0 uses
  br label %bb.aw

bb.au:                                            ; preds = %bb.d
  %i.gm = load i32, ptr %i.o, align 4, !tbaa !26
  %i.gn = tail call i32 @udata_readInt32_78(ptr noundef %0, i32 noundef %i.gm)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !76
  %i.gq = shl i32 %i.gn, 2
  %i.gr = add i32 %i.gq, 4
  %i.gs = tail call noundef i32 %i.gp(ptr noundef %0, ptr noundef nonnull %i.o, i32 noundef %i.gr, ptr noundef nonnull %i.p, ptr noundef nonnull %6) ; 0 uses
  br label %bb.aw

bb.av:                                            ; preds = %bb.d
  store i32 16, ptr %6, align 4, !tbaa !11
  br label %bb.aw
end_hunk_0
