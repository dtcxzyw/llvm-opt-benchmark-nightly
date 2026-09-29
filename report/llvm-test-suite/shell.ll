Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/shell?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@do_meta_command:bb.a
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1
  %exitcond736.not = icmp eq i32 %i.xm, %i.xj
  br i1 %exitcond736.not, label %.loopexit622, label %.lr.ph679, !llvm.loop !60

.loopexit622:                                     ; preds = %._crit_edge676, %._crit_edge669.thread, %bb.es
  %i.xw = load ptr, ptr %i.j, align 8, !tbaa !68
  call void @sqlite3_free_table(ptr noundef %i.xw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  br label %.loopexit

.critedge558.thread618:                           ; preds = %.thread, %bb.em, %.critedge558
  %i.xx = phi i1 [ %i.we, %.critedge558 ], [ true, %bb.em ], [ false, %.thread ]
  %i.xy = icmp sgt i32 %i.di, 4
  %or.cond45 = select i1 %i.xx, i1 %i.xy, i1 false
  br i1 %or.cond45, label %bb.ew, label %bb.fa

bb.ew:                                            ; preds = %.critedge558.thread618
  %i.xz = and i64 %i.dh, 2147483647               ; 2 uses
  %i.ya = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.116, i64 noundef %i.xz) #23
  %i.yb = icmp eq i32 %i.ya, 0
  %i.yc = icmp ne i32 %.0453.lcssa.ph, 1          ; 2 uses
  %or.cond48 = and i1 %i.yb, %i.yc
  br i1 %or.cond48, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  tail call fastcc void @open_db(ptr noundef %1)
  %i.yd = load ptr, ptr %1, align 8, !tbaa !26
  %i.ye = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !13
  %i.yg = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.yf, ptr noundef null, i32 noundef 10) #22, !inline_history !0
  %i.yh = trunc i64 %i.yg to i32
  %i.yi = tail call i32 @sqlite3_busy_timeout(ptr noundef %i.yd, i32 noundef %i.yh) #22 ; 0 uses
  br label %.loopexit

bb.ey:                                            ; preds = %bb.ew
  %i.yj = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.117, i64 noundef %i.xz) #23
  %i.yk = icmp eq i32 %i.yj, 0
  %or.cond54 = and i1 %i.yk, %i.yc
  br i1 %or.cond54, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.yl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !13
  %i.yn = tail call fastcc i32 @booleanValue(ptr noundef %i.ym)
  store i32 %i.yn, ptr @enableTimer, align 4, !tbaa !10
  br label %.loopexit

bb.fa:                                            ; preds = %.critedge558.thread618, %bb.ey
  %i.yo = icmp eq i8 %i.dj, 119
  br i1 %i.yo, label %bb.fb, label %.thread787

bb.fb:                                            ; preds = %bb.fa
  %sext507 = shl i64 %i.dh, 32
  %i.yp = ashr exact i64 %sext507, 32
  %i.yq = tail call i32 @strncmp(ptr noundef nonnull %i.dg, ptr noundef nonnull @.str.108, i64 noundef %i.yp) #23
  %i.yr = icmp eq i32 %i.yq, 0
  br i1 %i.yr, label %.preheader, label %.thread787

.preheader:                                       ; preds = %bb.fb
  %.not685 = icmp eq i32 %.0453.lcssa.ph, 1
  br i1 %.not685, label %.loopexit, label %.lr.ph683.preheader

.lr.ph683.preheader:                              ; preds = %.preheader
  %umax747 = tail call i32 @llvm.umin.i32(i32 %.0453.lcssa.ph, i32 100)
  %wide.trip.count748 = zext nneg i32 %umax747 to i64
  br label %.lr.ph683

.lr.ph683:                                        ; preds = %.lr.ph683.preheader, %.lr.ph683
  %indvars.iv743 = phi i64 [ 1, %.lr.ph683.preheader ], [ %indvars.iv.next744, %.lr.ph683 ] ; 3 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv743
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !13
  %i.yu = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.yt, ptr noundef null, i32 noundef 10) #22, !inline_history !0
  %i.yv = trunc i64 %i.yu to i32
  %i.yw = getelementptr [4 x i8], ptr %1, i64 %indvars.iv743
  %i.yx = getelementptr i8, ptr %i.yw, i64 64
  store i32 %i.yv, ptr %i.yx, align 4, !tbaa !10
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond749.not = icmp eq i64 %indvars.iv.next744, %wide.trip.count748
  br i1 %exitcond749.not, label %.loopexit, label %.lr.ph683, !llvm.loop !61

.thread787:                                       ; preds = %bb.be, %bb.ab, %.critedge547, %.critedge557, %bb.dr, %bb.do, %bb.dg, %bb.de, %bb.ci, %bb.ds, %bb.ce, %bb.fb, %bb.fa
  %i.yy = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.yz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yy, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.dg) #25 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph683, %bb.a, %.preheader, %.thread605, %.thread609, %booleanValue.exit, %bb.an, %booleanValue.exit600, %bb.dm, %bb.dn, %bb.dk, %bb.eg, %.critedge39, %bb.ex, %.thread787, %bb.ez, %.loopexit622, %bb.ei, %bb.dp, %bb.dq, %bb.df, %bb.ch, %bb.bf, %booleanValue.exit586, %bb.ai, %bb.as, %bb.ax, %bb.ay, %bb.aw, %bb.co, %bb.cs, %bb.cw, %bb.dd, %bb.dc, %bb.db, %bb.cy, %bb.cu, %bb.cq, %bb.cl, %bb.dr, %bb.dv, %bb.du, %._crit_edge
  %.1433 = phi i32 [ %.0432.ph, %.thread609 ], [ 0, %._crit_edge ], [ 0, %booleanValue.exit ], [ 0, %bb.ai ], [ 0, %bb.an ], [ 0, %booleanValue.exit586 ], [ 0, %.thread787 ], [ 2, %bb.as ], [ 0, %booleanValue.exit600 ], [ 0, %bb.bf ], [ 0, %bb.ch ], [ 0, %bb.aw ], [ 0, %bb.df ], [ 0, %bb.dk ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %bb.dq ], [ 0, %bb.dp ], [ 0, %bb.cl ], [ 2, %bb.dr ], [ 0, %bb.eg ], [ 0, %bb.ei ], [ 0, %.critedge39 ], [ 0, %.loopexit622 ], [ 0, %bb.ex ], [ 0, %bb.ez ], [ 0, %bb.du ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.co ], [ 0, %bb.cs ], [ 0, %bb.cw ], [ 0, %bb.dd ], [ 0, %bb.dc ], [ 0, %bb.db ], [ 0, %bb.cy ], [ 0, %bb.cu ], [ 0, %bb.cq ], [ 0, %bb.dv ], [ 0, %.thread605 ], [ 0, %.preheader ], [ 0, %bb.a ], [ 0, %.lr.ph683 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1433
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @callback(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  switch i32 %i.b, label %.loopexit [
    i32 0, label %bb.b
    i32 9, label %bb.f
    i32 1, label %bb.f
    i32 3, label %bb.ac
    i32 2, label %bb.ac
    i32 4, label %bb.al
    i32 6, label %bb.ay
    i32 7, label %bb.bd
    i32 5, label %bb.bi
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph386.preheader, label %._crit_edge387

.lr.ph386.preheader:                              ; preds = %.preheader
  %wide.trip.count460 = zext nneg i32 %1 to i64
  br label %.lr.ph386

.lr.ph386:                                        ; preds = %.lr.ph386.preheader, %.lr.ph386
  %indvars.iv457 = phi i64 [ 0, %.lr.ph386.preheader ], [ %indvars.iv.next458, %.lr.ph386 ] ; 2 uses
  %.0226385 = phi i32 [ 5, %.lr.ph386.preheader ], [ %.1227, %.lr.ph386 ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv457
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not305 = icmp eq ptr %i.f, null
  %spec.select = select i1 %.not305, ptr @.str.113, ptr %i.f
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #23
  %i.h = trunc i64 %i.g to i32
  %.1227 = tail call i32 @llvm.smax.i32(i32 %.0226385, i32 %i.h) ; 2 uses
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge387, label %.lr.ph386, !llvm.loop !69

._crit_edge387:                                   ; preds = %.lr.ph386, %.preheader
  %.0226.lcssa = phi i32 [ 5, %.preheader ], [ %.1227, %.lr.ph386 ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !35
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge387
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %fputc303 = tail call i32 @fputc(i32 10, ptr %i.n) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge387
  br i1 %i.d, label %.lr.ph390, label %.loopexit

.lr.ph390:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 868
  %wide.trip.count465 = zext nneg i32 %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph390, %bb.e
  %indvars.iv462 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next463, %bb.e ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv462
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv462
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %.not304 = icmp eq ptr %i.u, null
  %i.v = select i1 %.not304, ptr %i.p, ptr %i.u
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.141, i32 noundef %.0226.lcssa, ptr noundef %i.s, ptr noundef nonnull %i.v) #22 ; 0 uses
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %.loopexit, label %bb.e, !llvm.loop !70

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35   ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !35
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %.preheader338, label %.loopexit337

.preheader338:                                    ; preds = %bb.f
  %i.ab = icmp sgt i32 %1, 0
  br i1 %i.ab, label %.lr.ph378, label %.loopexit

.lr.ph378:                                        ; preds = %.preheader338
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %.not299 = icmp eq ptr %2, null                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = add nsw i32 %1, -1
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %wide.trip.count445 = zext nneg i32 %1 to i64
  %.not517 = icmp eq i32 %1, 1
  br i1 %.not517, label %._crit_edge379.peel.begin, label %.lr.ph378.split

.lr.ph378.split:                                  ; preds = %.lr.ph378
  %i.aj = add nsw i64 %wide.trip.count445, -2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph378.split, %bb.n
  %indvars.iv442 = phi i64 [ 0, %.lr.ph378.split ], [ %indvars.iv.next443, %bb.n ] ; 9 uses
  %i.ak = icmp samesign ult i64 %indvars.iv442, 100 ; 2 uses
  br i1 %i.ak, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv442
  %i.am = load i32, ptr %i.al, align 4, !tbaa !10 ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.thread, label %.thread326

.thread:                                          ; preds = %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv442
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %.not298 = icmp eq ptr %i.ap, null
  %spec.select306 = select i1 %.not298, ptr @.str.113, ptr %i.ap
  %i.aq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select306) #23
  %i.ar = trunc i64 %i.aq to i32
  br i1 %.not299, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv442
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  %.not300 = icmp eq ptr %i.at, null
  br i1 %.not300, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.thread
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = phi ptr [ %i.ad, %bb.j ], [ %i.at, %bb.i ]
  %i.av = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #23
  %i.aw = trunc i64 %i.av to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.aw)
  %spec.select307 = tail call i32 @llvm.smax.i32(i32 %spec.store.select, i32 10) ; 2 uses
  br i1 %i.ak, label %.thread326, label %bb.l

.thread326:                                       ; preds = %bb.h, %bb.k
  %.1225328 = phi i32 [ %spec.select307, %bb.k ], [ %i.am, %bb.h ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv442
  store i32 %.1225328, ptr %i.ax, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %.thread326, %bb.k
  %.1225329 = phi i32 [ %.1225328, %.thread326 ], [ %spec.select307, %bb.k ] ; 2 uses
  %i.ay = load i32, ptr %i.af, align 8, !tbaa !24
  %.not301 = icmp eq i32 %i.ay, 0
  br i1 %.not301, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv442
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13
  %i.bc = icmp eq i64 %indvars.iv442, %i.ai
  %i.bd = select i1 %i.bc, ptr @.str.107, ptr @.str.114
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.142, i32 noundef %.1225329, i32 noundef %.1225329, ptr noundef %i.bb, ptr noundef nonnull %i.bd) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv442, %i.aj
  br i1 %exitcond446.not, label %._crit_edge379.peel.begin, label %bb.g, !llvm.loop !71

._crit_edge379.peel.begin:                        ; preds = %.lr.ph378, %bb.n
  %i.bf = phi i64 [ 0, %.lr.ph378 ], [ %indvars.iv.next443, %bb.n ] ; 7 uses
  %i.bg = icmp samesign ult i64 %i.bf, 100        ; 2 uses
  br i1 %i.bg, label %bb.o, label %.thread.peel

bb.o:                                             ; preds = %._crit_edge379.peel.begin
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bf
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !10 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.thread.peel, label %.thread326.peel

.thread.peel:                                     ; preds = %bb.o, %._crit_edge379.peel.begin
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bf
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %.not298.peel = icmp eq ptr %i.bl, null
  %spec.select306.peel = select i1 %.not298.peel, ptr @.str.113, ptr %i.bl
  %i.bm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select306.peel) #23
  %i.bn = trunc i64 %i.bm to i32
  br i1 %.not299, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread.peel
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bf
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %.not300.peel = icmp eq ptr %i.bp, null
  br i1 %.not300.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.thread.peel
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bq = phi ptr [ %i.ad, %bb.q ], [ %i.bp, %bb.p ]
  %i.br = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bq) #23
  %i.bs = trunc i64 %i.br to i32
  %spec.store.select.peel = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 %i.bs)
  %spec.select307.peel = tail call i32 @llvm.smax.i32(i32 %spec.store.select.peel, i32 10) ; 2 uses
  br i1 %i.bg, label %.thread326.peel, label %bb.s

.thread326.peel:                                  ; preds = %bb.r, %bb.o
  %.1225328.peel = phi i32 [ %spec.select307.peel, %bb.r ], [ %i.bi, %bb.o ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bf
  store i32 %.1225328.peel, ptr %i.bt, align 4, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %.thread326.peel, %bb.r
  %.1225329.peel = phi i32 [ %.1225328.peel, %.thread326.peel ], [ %spec.select307.peel, %bb.r ] ; 2 uses
  %i.bu = load i32, ptr %i.af, align 8, !tbaa !24
  %.not301.peel = icmp eq i32 %i.bu, 0
  br i1 %.not301.peel, label %._crit_edge379, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bf
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !13
  %i.by = icmp eq i64 %i.bf, %i.ai
  %i.bz = select i1 %i.by, ptr @.str.107, ptr @.str.114
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.142, i32 noundef %.1225329.peel, i32 noundef %.1225329.peel, ptr noundef %i.bx, ptr noundef nonnull %i.bz) #22 ; 0 uses
  br label %._crit_edge379

._crit_edge379:                                   ; preds = %bb.s, %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !24
  %.not295.not = icmp eq i32 %i.cc, 0
  br i1 %.not295.not, label %.loopexit337, label %.lr.ph381

.lr.ph381:                                        ; preds = %._crit_edge379
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = add nsw i32 %1, -1
  %i.cg = zext nneg i32 %i.cf to i64
  %wide.trip.count450 = zext nneg i32 %1 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph381, %bb.w
  %indvars.iv447 = phi i64 [ 0, %.lr.ph381 ], [ %indvars.iv.next448, %bb.w ] ; 4 uses
  %i.ch = icmp samesign ult i64 %indvars.iv447, 100
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv447
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !10
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.0223 = phi i32 [ %i.cj, %bb.v ], [ 10, %bb.u ] ; 2 uses
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !23
  %i.cl = icmp eq i64 %indvars.iv447, %i.cg
  %i.cm = select i1 %i.cl, ptr @.str.107, ptr @.str.114
  %i.cn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.142, i32 noundef %.0223, i32 noundef %.0223, ptr noundef nonnull @.str.143, ptr noundef nonnull %i.cm) #22 ; 0 uses
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %.loopexit337, label %bb.u, !llvm.loop !72

.loopexit337:                                     ; preds = %bb.w, %._crit_edge379, %bb.f
  %i.co = icmp ne ptr %2, null
  %i.cp = icmp sgt i32 %1, 0
  %or.cond391 = and i1 %i.co, %i.cp
  br i1 %or.cond391, label %.lr.ph383, label %.loopexit

.lr.ph383:                                        ; preds = %.loopexit337
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.ct = add nsw i32 %1, -1
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  %wide.trip.count455 = zext nneg i32 %1 to i64
  %.not518.a = icmp eq i32 %1, 1
  br i1 %.not518.a, label %.loopexit.loopexit505.peel.begin, label %.lr.ph383.split

.lr.ph383.split:                                  ; preds = %.lr.ph383
  %i.cv = add nsw i64 %wide.trip.count455, -2
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph383.split, %._crit_edge468
  %indvars.iv452 = phi i64 [ 0, %.lr.ph383.split ], [ %indvars.iv.next453, %._crit_edge468 ] ; 6 uses
  %i.cw = icmp samesign ult i64 %indvars.iv452, 100
  br i1 %i.cw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv452
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !10
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0222 = phi i32 [ %i.cy, %bb.y ], [ 10, %bb.x ] ; 3 uses
  %i.cz = load i32, ptr %i.a, align 8, !tbaa !18
  %i.da = icmp eq i32 %i.cz, 9
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv452
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !13 ; 4 uses
  br i1 %i.da, label %bb.aa, label %._crit_edge468

bb.aa:                                            ; preds = %bb.z
  %.not296 = icmp eq ptr %i.dc, null
  br i1 %.not296, label %._crit_edge468, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dc) #23
  %i.de = sext i32 %.0222 to i64
  %spec.select308333 = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 %i.de)
  %spec.select308 = trunc i64 %spec.select308333 to i32
  br label %._crit_edge468

._crit_edge468:                                   ; preds = %bb.z, %bb.ab, %bb.aa
  %i.df = phi ptr [ null, %bb.aa ], [ %i.dc, %bb.ab ], [ %i.dc, %bb.z ] ; 2 uses
  %.1 = phi i32 [ %.0222, %bb.aa ], [ %spec.select308, %bb.ab ], [ %.0222, %bb.z ] ; 2 uses
  %i.dg = load ptr, ptr %i.cr, align 8, !tbaa !23
  %.not297 = icmp eq ptr %i.df, null
  %i.dh = select i1 %.not297, ptr %i.cs, ptr %i.df
  %i.di = icmp eq i64 %indvars.iv452, %i.cu
  %i.dj = select i1 %i.di, ptr @.str.107, ptr @.str.114
  %i.dk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.142, i32 noundef %.1, i32 noundef %.1, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dj) #22 ; 0 uses
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %exitcond456.not = icmp eq i64 %indvars.iv452, %i.cv
  br i1 %exitcond456.not, label %.loopexit.loopexit505.peel.begin, label %bb.x, !llvm.loop !73

bb.ac:                                            ; preds = %bb.a, %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !35 ; 2 uses
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !35
  %i.do = icmp eq i32 %i.dm, 0
  br i1 %i.do, label %bb.ad, label %.loopexit342

bb.ad:                                            ; preds = %bb.ac
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !24
  %.not289 = icmp ne i32 %i.dq, 0
  %i.dr = icmp sgt i32 %1, 0
  %or.cond392 = and i1 %.not289, %i.dr
  br i1 %or.cond392, label %.lr.ph374, label %.loopexit342

.lr.ph374:                                        ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dt = add nsw i32 %1, -1
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dv = zext nneg i32 %i.dt to i64              ; 2 uses
  %wide.trip.count435 = zext nneg i32 %1 to i64
  %.not516 = icmp eq i32 %1, 1
  br i1 %.not516, label %.loopexit342.loopexit.peel.begin, label %.lr.ph374.split

.lr.ph374.split:                                  ; preds = %.lr.ph374
  %i.dw = add nsw i64 %wide.trip.count435, -2
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph374.split, %bb.ae
  %indvars.iv432 = phi i64 [ 0, %.lr.ph374.split ], [ %indvars.iv.next433, %bb.ae ] ; 4 uses
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !23
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv432
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !13
  %i.ea = icmp eq i64 %indvars.iv432, %i.dv
  %i.eb = select i1 %i.ea, ptr @.str.107, ptr %i.du
  %i.ec = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.144, ptr noundef %i.dz, ptr noundef nonnull %i.eb) #22 ; 0 uses
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %exitcond436.not = icmp eq i64 %indvars.iv432, %i.dw
  br i1 %exitcond436.not, label %.loopexit342.loopexit.peel.begin, label %bb.ae, !llvm.loop !74

.loopexit342.loopexit.peel.begin:                 ; preds = %.lr.ph374, %bb.ae
  %i.ed = phi i64 [ 0, %.lr.ph374 ], [ %indvars.iv.next433, %bb.ae ] ; 2 uses
  %i.ee = load ptr, ptr %i.ds, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !13
  %i.eh = icmp eq i64 %i.ed, %i.dv
  %i.ei = select i1 %i.eh, ptr @.str.107, ptr %i.du
  %i.ej = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.144, ptr noundef %i.eg, ptr noundef nonnull %i.ei) #22 ; 0 uses
  br label %.loopexit342

.loopexit342:                                     ; preds = %.loopexit342.loopexit.peel.begin, %bb.ad, %bb.ac
  %i.ek = icmp ne ptr %2, null
  %i.el = icmp sgt i32 %1, 0
  %or.cond393 = and i1 %i.ek, %i.el
  br i1 %or.cond393, label %.lr.ph376, label %.loopexit

.lr.ph376:                                        ; preds = %.loopexit342
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.eo = add nsw i32 %1, -1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eq = zext nneg i32 %i.eo to i64
  %wide.trip.count440 = zext nneg i32 %1 to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph376, %bb.ak
  %indvars.iv437 = phi i64 [ 0, %.lr.ph376 ], [ %indvars.iv.next438, %bb.ak ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv437
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !13 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  %spec.select309 = select i1 %i.et, ptr %i.em, ptr %i.es
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !23
  %fputs290 = tail call i32 @fputs(ptr nonnull %spec.select309, ptr %i.eu) ; 0 uses
  %i.ev = icmp samesign ult i64 %indvars.iv437, %i.eq
  br i1 %i.ev, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !23
  %fputs294 = tail call i32 @fputs(ptr nonnull %i.ep, ptr %i.ew) ; 0 uses
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.ex = load i32, ptr %i.a, align 8, !tbaa !18
  %i.ey = icmp eq i32 %i.ex, 3
  %i.ez = load ptr, ptr %i.en, align 8, !tbaa !23 ; 2 uses
  br i1 %i.ey, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %fwrite293 = tail call i64 @fwrite(ptr nonnull @.str.145, i64 2, i64 1, ptr %i.ez) ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %fputc292 = tail call i32 @fputc(i32 10, ptr %i.ez) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ag
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond441.not = icmp eq i64 %indvars.iv.next438, %wide.trip.count440
  br i1 %exitcond441.not, label %.loopexit, label %bb.af, !llvm.loop !75

bb.al:                                            ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !35 ; 2 uses
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !35
  %i.fd = icmp eq i32 %i.fb, 0
  br i1 %i.fd, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !24
  %.not281 = icmp eq i32 %i.ff, 0
  br i1 %.not281, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !23
  %fwrite282 = tail call i64 @fwrite(ptr nonnull @.str.146, i64 4, i64 1, ptr %i.fh) ; 0 uses
  %i.fi = icmp sgt i32 %1, 0
  br i1 %i.fi, label %.lr.ph367.preheader, label %._crit_edge368

.lr.ph367.preheader:                              ; preds = %bb.an
  %wide.trip.count425 = zext nneg i32 %1 to i64
  br label %.lr.ph367

.lr.ph367:                                        ; preds = %.lr.ph367.preheader, %.lr.ph367
  %indvars.iv422 = phi i64 [ 0, %.lr.ph367.preheader ], [ %indvars.iv.next423, %.lr.ph367 ] ; 2 uses
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !23
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv422
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !13
  %i.fm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fj, ptr noundef nonnull @.str.147, ptr noundef %i.fl) #22 ; 0 uses
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond426.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count425
  br i1 %exitcond426.not, label %._crit_edge368, label %.lr.ph367, !llvm.loop !76

._crit_edge368:                                   ; preds = %.lr.ph367, %bb.an
  %i.fn = load ptr, ptr %i.fg, align 8, !tbaa !23
  %fwrite283 = tail call i64 @fwrite(ptr nonnull @.str.148, i64 6, i64 1, ptr %i.fn) ; 0 uses
end_hunk_0
begin_hunk_1_@output_csv:bb.a
  %i.ab = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.thread
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %bb.k ], [ 0, %.thread ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv51 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.ad, label %bb.k [
    i8 0, label %bb.l
    i8 34, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
  %.pre = load i8, ptr %i.ac, align 1, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.af = phi i8 [ %i.ad, %bb.i ], [ %.pre, %bb.j ]
  %i.ag = sext i8 %i.af to i32
  %i.ah = tail call i32 @putc(i32 noundef %i.ag, ptr noundef %i.b) ; 0 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %bb.i, !llvm.loop !119

bb.l:                                             ; preds = %bb.i
  %i.ai = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
  br label %bb.m

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %fputs = tail call i32 @fputs(ptr nonnull %1, ptr %i.b) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge, %bb.b
  %.not40 = icmp eq i32 %2, 0
  br i1 %.not40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %fputs41 = tail call i32 @fputs(ptr nonnull %i.ak, ptr %i.aj) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

declare ptr @getpwuid(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #17

declare i32 @sqlite3_complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { cold nounwind }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { cold }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { nounwind allocsize(1) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS7sqlite3", !11, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!16 = !{!"previous_mode_data", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12}
!17 = !{!"callback_data", !14, i64 0, !9, i64 8, !9, i64 12, !15, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !12, i64 40, !8, i64 48, !8, i64 68, !8, i64 468, !8, i64 868, !16, i64 888, !8, i64 1300, !12, i64 5400}
!18 = !{!17, !9, i64 24}
!19 = !{!8, !8, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!17, !12, i64 5400}
!22 = !{!15, !15, i64 0}
!23 = !{!17, !15, i64 16}
!24 = !{!17, !9, i64 32}
!25 = !{!17, !9, i64 8}
!26 = !{!17, !14, i64 0}
!27 = !{!17, !12, i64 40}
!28 = !{!14, !14, i64 0}
!29 = !{!"p1 short", !11, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"short", !8, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 int", !11, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!17, !9, i64 12}
!36 = !{!17, !9, i64 28}
!37 = !{!"p1 _ZTS12sqlite3_stmt", !11, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = !{!"passwd", !12, i64 0, !12, i64 8, !9, i64 16, !9, i64 20, !12, i64 24, !12, i64 32, !12, i64 40}
!44 = !{!43, !12, i64 32}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20, !39, !40}
!52 = distinct !{!52, !20, !39, !40}
!53 = distinct !{!53, !20, !40, !39}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = !{!17, !9, i64 888}
!63 = !{!17, !9, i64 892}
!64 = !{!17, !9, i64 896}
!65 = !{!"branch_weights", i32 4, i32 12}
!66 = !{!"any p2 pointer", !11, i64 0}
!67 = !{!"p2 omnipotent char", !66, i64 0}
!68 = !{!67, !67, i64 0}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20, !91}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !20, !91}
!74 = distinct !{!74, !20, !91}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !20}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = !{!"llvm.loop.peeled.count", i32 1}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = !{!"long", !8, i64 0}
!100 = !{!99, !99, i64 0}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20}
!105 = distinct !{!105, !20}
!106 = distinct !{!106, !20, !39, !40}
!107 = distinct !{!107, !20, !40, !39}
!108 = distinct !{!108, !20, !39, !40}
!109 = distinct !{!109, !20, !40, !39}
!110 = distinct !{!110, !20, !39, !40}
!111 = distinct !{!111, !20, !40, !39}
!112 = distinct !{!112, !20, !39, !40}
!113 = distinct !{!113, !20, !40, !39}
!114 = distinct !{!114, !20, !39, !40}
!115 = distinct !{!115, !20, !40, !39}
!116 = distinct !{!116, !20, !39, !40}
!117 = distinct !{!117, !20, !40, !39}
!118 = distinct !{!118, !20}
!119 = distinct !{!119, !20}
end_hunk_1
