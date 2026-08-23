Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z44?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@VerticalHyphenate:bb.a
  %i.lx = icmp eq i8 %i.lw, 0
  br i1 %i.lx, label %bb.cr, label %bb.cs, !llvm.loop !29

bb.cs:                                            ; preds = %bb.cr
  %i.ly = add i8 %i.lw, -119
  %or.cond439 = icmp ult i8 %i.ly, 20
  br i1 %or.cond439, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lz = getelementptr inbounds nuw i8, ptr %.1326, i64 32
  %i.ma = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.mb = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ma, ptr noundef nonnull @.str.7) #5 ; 0 uses
  %.pre = load i8, ptr %i.lz, align 8, !tbaa !8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.mc = phi i8 [ %i.lw, %bb.cs ], [ %.pre, %bb.ct ] ; 2 uses
  switch i8 %i.mc, label %.thread454 [
    i8 119, label %FindTarget.exit.thread
    i8 120, label %FindTarget.exit
    i8 -123, label %FindTarget.exit
    i8 -127, label %FindTarget.exit
    i8 -126, label %FindTarget.exit
    i8 121, label %bb.cv
    i8 122, label %bb.cv
    i8 123, label %bb.cv
    i8 -120, label %bb.cv
    i8 -119, label %bb.cv
    i8 -118, label %bb.cv
    i8 124, label %FindTarget.exit.thread
    i8 125, label %FindTarget.exit.thread
    i8 -125, label %FindTarget.exit.thread
    i8 -122, label %FindTarget.exit.thread
    i8 127, label %FindTarget.exit.thread
    i8 -128, label %FindTarget.exit.thread
    i8 -121, label %FindTarget.exit.thread
    i8 -124, label %FindTarget.exit.thread
  ]

bb.cv:                                            ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu
  br label %FindTarget.exit

.thread454:                                       ; preds = %bb.cu
  %i.md = zext i8 %i.mc to i32
  %i.me = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.mf = tail call ptr @Image(i32 noundef %i.md) #5
  %i.mg = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef %i.me, ptr noundef nonnull @.str.23, ptr noundef %i.mf) #5 ; 0 uses
  br label %WhichComponent.exit.thread

FindTarget.exit:                                  ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cv
  %.sink = phi i64 [ 80, %bb.cv ], [ 88, %bb.cu ], [ 88, %bb.cu ], [ 88, %bb.cu ], [ 88, %bb.cu ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.1326, i64 %.sink
  %.0.i = load ptr, ptr %i.mh, align 8, !tbaa !8  ; 4 uses
  %.not381 = icmp eq ptr %.0.i, null
  br i1 %.not381, label %FindTarget.exit.thread, label %bb.cw

bb.cw:                                            ; preds = %FindTarget.exit
  %i.mi = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !8  ; 2 uses
  %.not17.i = icmp eq ptr %i.mj, %.0.i
  br i1 %.not17.i, label %WhichComponent.exit.thread, label %.preheader.i

.loopexit.i:                                      ; preds = %bb.cx
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i443, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !8  ; 2 uses
  %.not.i = icmp eq ptr %i.ml, %.0.i443
  br i1 %.not.i, label %WhichComponent.exit.thread, label %.preheader.i, !llvm.loop !30

.preheader.i:                                     ; preds = %bb.cw, %.loopexit.i
  %i.mm = phi ptr [ %i.ml, %.loopexit.i ], [ %i.mj, %bb.cw ] ; 2 uses
  %.0918.i = phi ptr [ %.0.i443, %.loopexit.i ], [ %.0.i, %bb.cw ] ; 2 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.preheader.i
  %.0.in.i = phi ptr [ %.0.i443, %bb.cx ], [ %i.mm, %.preheader.i ]
  %.0.i443 = load ptr, ptr %.0.in.i, align 8, !tbaa !8 ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.i443, i64 32
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !8
  switch i8 %i.mo, label %.loopexit.i [
    i8 0, label %bb.cx
    i8 8, label %WhichComponent.exit
  ], !llvm.loop !30

WhichComponent.exit:                              ; preds = %bb.cx
  %.not383 = icmp eq ptr %.0918.i, %0
  br i1 %.not383, label %WhichComponent.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %WhichComponent.exit
  %i.mp = load ptr, ptr %i.lu, align 8, !tbaa !8  ; 6 uses
  store ptr %i.mp, ptr @xx_link, align 8, !tbaa !17
  store ptr %i.mp, ptr @zz_hold, align 8, !tbaa !17
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !8  ; 3 uses
  %i.ms = icmp eq ptr %i.mr, %i.mp
  br i1 %i.ms, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store ptr %i.mr, ptr @zz_res, align 8, !tbaa !17
  %i.mt = load ptr, ptr %i.mp, align 8, !tbaa !8
  store ptr %i.mt, ptr %i.mr, align 8, !tbaa !8
  %i.mu = load ptr, ptr @zz_res, align 8, !tbaa !17
  %i.mv = load ptr, ptr @zz_hold, align 8, !tbaa !17 ; 5 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store ptr %i.mu, ptr %i.mx, align 8, !tbaa !8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store ptr %i.mv, ptr %i.my, align 8, !tbaa !8
  store ptr %i.mv, ptr %i.mv, align 8, !tbaa !8
  %.pre687 = load ptr, ptr @xx_link, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0918.i, i64 24
  %.pre688 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz
  %i.mz = phi ptr [ %i.mm, %bb.cy ], [ %.pre688, %bb.cz ] ; 4 uses
  %i.na = phi ptr [ %i.mp, %bb.cy ], [ %.pre687, %bb.cz ] ; 3 uses
  store ptr %i.na, ptr @zz_res, align 8, !tbaa !17
  store ptr %i.mz, ptr @zz_hold, align 8, !tbaa !17
  %i.nb = icmp eq ptr %i.mz, null
  %i.nc = icmp eq ptr %i.na, null
  %or.cond29 = select i1 %i.nb, i1 true, i1 %i.nc
  br i1 %or.cond29, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nd = load ptr, ptr %i.mz, align 8, !tbaa !8
  store ptr %i.nd, ptr @zz_tmp, align 8, !tbaa !17
  %i.ne = load ptr, ptr %i.na, align 8, !tbaa !8
  store ptr %i.ne, ptr %i.mz, align 8, !tbaa !8
  %i.nf = load ptr, ptr @zz_hold, align 8, !tbaa !17
  %i.ng = load ptr, ptr @zz_res, align 8, !tbaa !17 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store ptr %i.nf, ptr %i.ni, align 8, !tbaa !8
  %i.nj = load ptr, ptr @zz_tmp, align 8, !tbaa !17 ; 2 uses
  store ptr %i.nj, ptr %i.ng, align 8, !tbaa !8
  %i.nk = load ptr, ptr @zz_res, align 8, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store ptr %i.nk, ptr %i.nl, align 8, !tbaa !8
  br label %bb.dc

WhichComponent.exit.thread:                       ; preds = %.loopexit.i, %.thread454, %bb.cw, %WhichComponent.exit
  %i.nm = load ptr, ptr %i.lu, align 8, !tbaa !8
  br label %bb.dc

FindTarget.exit.thread:                           ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.cu, %FindTarget.exit
  %i.nn = load ptr, ptr %i.lu, align 8, !tbaa !8
  br label %bb.dc

bb.dc:                                            ; preds = %WhichComponent.exit.thread, %bb.db, %bb.da, %FindTarget.exit.thread
  %.11 = phi ptr [ %.10626, %bb.da ], [ %.10626, %bb.db ], [ %i.nm, %WhichComponent.exit.thread ], [ %i.nn, %FindTarget.exit.thread ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.11, i64 8 ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !8  ; 2 uses
  %i.nq = load ptr, ptr %i.kc, align 8, !tbaa !8
  %.not380 = icmp eq ptr %i.np, %i.nq
  br i1 %.not380, label %.critedge425, label %.preheader, !llvm.loop !31

.critedge425:                                     ; preds = %bb.r, %bb.o, %bb.l, %.loopexit475, %bb.e, %bb.k, %._crit_edge574, %.loopexit465, %bb.cf, %bb.dc, %bb.c, %._crit_edge561, %.loopexit470, %bb.cq, %.critedge433, %._crit_edge
  %.0329 = phi i32 [ 0, %bb.cf ], [ 0, %._crit_edge ], [ 0, %bb.k ], [ 0, %.loopexit470 ], [ 1, %bb.cq ], [ 0, %.critedge433 ], [ 0, %._crit_edge561 ], [ 0, %.loopexit465 ], [ 0, %bb.c ], [ 1, %bb.dc ], [ 0, %._crit_edge574 ], [ 0, %bb.e ], [ 0, %.loopexit475 ], [ 0, %bb.l ], [ 0, %bb.o ], [ 0, %bb.r ]
  ret i32 %.0329
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SplitIsDefinite(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @DisposeObject(ptr noundef) local_unnamed_addr #2

declare i32 @MinGap(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @EncloseInHcat(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef nonnull readnone captures(address) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq ptr %i.b, %0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.d = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.c, ptr noundef nonnull @.str.18) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 18), align 1, !tbaa !8 ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  store i32 %i.f, ptr @zz_size, align 4, !tbaa !4
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.l = tail call ptr @GetMemory(i32 noundef %i.f, ptr noundef %i.k) #5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.i, ptr @zz_hold, align 8, !tbaa !17
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.l, %bb.d ], [ %i.i, %bb.e ] ; 28 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i8 18, ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.n, ptr %i.q, align 8, !tbaa !8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.n, ptr %i.r, align 8, !tbaa !8
  store ptr %i.n, ptr %i.n, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 42 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2
  %i.u = and i16 %i.t, -2049
  store i16 %i.u, ptr %i.s, align 2
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !8    ; 10 uses
  store ptr %i.v, ptr @xx_link, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8    ; 3 uses
  %i.y = icmp eq ptr %i.x, %i.v
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.pre224 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8 ; 3 uses
  br i1 %i.y, label %._crit_edge223, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.pre224, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre224, i64 24
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !8
  store ptr %i.v, ptr %.phi.trans.insert, align 8, !tbaa !8
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !8
  br label %._crit_edge223

._crit_edge223:                                   ; preds = %bb.f, %bb.g
  %i.ab = phi ptr [ %i.v, %bb.g ], [ %.pre224, %bb.f ]
  %i.ac = phi ptr [ %.pre, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  store ptr %i.v, ptr @zz_res, align 8, !tbaa !17
  store ptr %i.n, ptr @zz_hold, align 8, !tbaa !17
  store ptr %i.ac, ptr @zz_tmp, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.n, ptr %i.af, align 8, !tbaa !8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.v, ptr %i.ag, align 8, !tbaa !8
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge223
  %i.aj = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ak = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.aj, ptr noundef nonnull @.str.19) #5 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge223
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.am = load i16, ptr %i.al, align 2, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 34
  store i16 %i.am, ptr %i.an, align 2, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 1048575                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 36 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, -1048576
  %i.au = or disjoint i32 %i.at, %i.aq
  store i32 %i.au, ptr %i.ar, align 4
  %i.av = load i32, ptr %i.ao, align 4
  %i.aw = and i32 %i.av, -1048576
  %i.ax = or disjoint i32 %i.aw, %i.aq
  store i32 %i.ax, ptr %i.ar, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 52 ; 2 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 60 ; 2 uses
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !8
  %i.bm = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 15), align 1, !tbaa !8 ; 2 uses
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  store i32 %i.bn, ptr @zz_size, align 4, !tbaa !4
  %i.bo = zext i8 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.bt = tail call ptr @GetMemory(i32 noundef %i.bn, ptr noundef %i.bs) #5 ; 2 uses
  store ptr %i.bt, ptr @zz_hold, align 8, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store ptr %i.bq, ptr @zz_hold, align 8, !tbaa !17
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !8
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bv = phi ptr [ %i.bt, %bb.j ], [ %i.bq, %bb.k ] ; 19 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i8 15, ptr %i.bw, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !8
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bv, ptr %i.bz, align 8, !tbaa !8
  store ptr %i.bv, ptr %i.bv, align 8, !tbaa !8
  %i.ca = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 52 ; 2 uses
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !8
  %i.cd = load i32, ptr %i.bl, align 4, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 60 ; 2 uses
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 41
  store i8 1, ptr %i.cg, align 1, !tbaa !8
  %.0175.in216 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0175217 = load ptr, ptr %.0175.in216, align 8, !tbaa !8 ; 2 uses
  %.not202218 = icmp eq ptr %.0175217, %1
  br i1 %.not202218, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.bt
  %.0175219 = phi ptr [ %.0175, %bb.bt ], [ %.0175217, %bb.l ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.m
  %.0175.pn = phi ptr [ %.0177, %bb.m ], [ %.0175219, %.preheader ]
  %.0177.in = getelementptr inbounds nuw i8, ptr %.0175.pn, i64 16
  %.0177 = load ptr, ptr %.0177.in, align 8, !tbaa !8 ; 14 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0177, i64 32
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !8   ; 2 uses
  switch i8 %i.ci, label %.loopexit [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 26, label %bb.v
    i8 24, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 1), align 1, !tbaa !8 ; 2 uses
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  store i32 %i.ck, ptr @zz_size, align 4, !tbaa !4
  %i.cl = zext i8 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cl ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !17 ; 4 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.cq = tail call ptr @GetMemory(i32 noundef %i.ck, ptr noundef %i.cp) #5 ; 2 uses
  store ptr %i.cq, ptr @zz_hold, align 8, !tbaa !17
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store ptr %i.cn, ptr @zz_hold, align 8, !tbaa !17
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !8
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cs = phi ptr [ %i.cq, %bb.o ], [ %i.cn, %bb.p ] ; 17 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store i8 1, ptr %i.ct, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !8
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cs, ptr %i.cw, align 8, !tbaa !8
  store ptr %i.cs, ptr %i.cs, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %.0177, i64 34
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 34
end_hunk_0
