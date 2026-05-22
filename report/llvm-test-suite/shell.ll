inline.NumInlined: 40
inline.NumDeleted: 14
begin_hunk_0_@do_meta_command:bb.a
  store ptr null, ptr @zShellStatic, align 8, !tbaa !8
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.0437 = phi i32 [ %i.wu, %bb.ep ], [ %i.wy, %bb.eq ]
  %i.wz = load ptr, ptr %i.l, align 8, !tbaa !8   ; 2 uses
  %.not508 = icmp eq ptr %i.wz, null
  br i1 %.not508, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.xa = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.xb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xa, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.wz) #25 ; 0 uses
  %i.xc = load ptr, ptr %i.l, align 8, !tbaa !8
  call void @sqlite3_free(ptr noundef %i.xc) #22
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.xd = icmp eq i32 %.0437, 0
  br i1 %i.xd, label %.preheader619, label %.loopexit618

.preheader619:                                    ; preds = %bb.et
  %i.xe = load i32, ptr %i.k, align 4, !tbaa !4   ; 3 uses
  %.not509661 = icmp slt i32 %i.xe, 1
  br i1 %.not509661, label %._crit_edge665.thread, label %.lr.ph664

.lr.ph664:                                        ; preds = %.preheader619
  %i.xf = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.xg = add nuw i32 %i.xe, 1
  %wide.trip.count724 = zext i32 %i.xg to i64
  br label %bb.eu

bb.eu:                                            ; preds = %.lr.ph664, %bb.ew
  %indvars.iv720 = phi i64 [ 1, %.lr.ph664 ], [ %indvars.iv.next721, %bb.ew ] ; 2 uses
  %.0434662 = phi i32 [ 0, %.lr.ph664 ], [ %.1435, %bb.ew ] ; 2 uses
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %indvars.iv720
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !8  ; 2 uses
  %i.xj = icmp eq ptr %i.xi, null
  br i1 %i.xj, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xi) #23
  %i.xl = trunc i64 %i.xk to i32
  %spec.select = call i32 @llvm.smax.i32(i32 %.0434662, i32 %i.xl)
  %i.xm = freeze i32 %spec.select
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.1435 = phi i32 [ %.0434662, %bb.eu ], [ %i.xm, %bb.ev ] ; 4 uses
  %indvars.iv.next721 = add nuw nsw i64 %indvars.iv720, 1 ; 2 uses
  %exitcond725.not = icmp eq i64 %indvars.iv.next721, %wide.trip.count724
  br i1 %exitcond725.not, label %._crit_edge665, label %bb.eu, !llvm.loop !64

._crit_edge665:                                   ; preds = %bb.ew
  %i.xn = add nuw nsw i32 %.1435, 2
  %i.xo = udiv i32 80, %i.xn
  %i.xp = icmp ugt i32 %.1435, 78
  %spec.select798 = select i1 %i.xp, i32 1, i32 %i.xo
  br label %._crit_edge665.thread

._crit_edge665.thread:                            ; preds = %._crit_edge665, %.preheader619
  %.0434.lcssa781 = phi i32 [ 0, %.preheader619 ], [ %.1435, %._crit_edge665 ]
  %i.xq = phi i32 [ 40, %.preheader619 ], [ %spec.select798, %._crit_edge665 ] ; 2 uses
  %i.xr = add i32 %i.xe, -1
  %i.xs = add i32 %i.xr, %i.xq
  %i.xt = sdiv i32 %i.xs, %i.xq                   ; 4 uses
  %i.xu = icmp sgt i32 %i.xt, 0
  br i1 %i.xu, label %.lr.ph675.preheader, label %.loopexit618

.lr.ph675.preheader:                              ; preds = %._crit_edge665.thread
  %i.xv = zext nneg i32 %i.xt to i64
  br label %.lr.ph675

.lr.ph675:                                        ; preds = %.lr.ph675.preheader, %._crit_edge672
  %indvars.iv726 = phi i64 [ 1, %.lr.ph675.preheader ], [ %indvars.iv.next727, %._crit_edge672 ] ; 2 uses
  %.1433673 = phi i32 [ 0, %.lr.ph675.preheader ], [ %i.xw, %._crit_edge672 ] ; 2 uses
  %i.xw = add nuw nsw i32 %.1433673, 1            ; 2 uses
  %i.xx = load i32, ptr %i.k, align 4, !tbaa !4
  %.not510668.not = icmp slt i32 %.1433673, %i.xx
  br i1 %.not510668.not, label %.lr.ph671, label %._crit_edge672

.lr.ph671:                                        ; preds = %.lr.ph675, %.lr.ph671
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %.lr.ph671 ], [ %indvars.iv726, %.lr.ph675 ] ; 3 uses
  %i.xy = trunc nuw i64 %indvars.iv728 to i32
  %.not511 = icmp slt i32 %i.xt, %i.xy
  %i.xz = select i1 %.not511, ptr @.str.114, ptr @.str.113
  %i.ya = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %indvars.iv728
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !8  ; 2 uses
  %.not512 = icmp eq ptr %i.yc, null
  %spec.select555 = select i1 %.not512, ptr @.str.113, ptr %i.yc
  %i.yd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.xz, i32 noundef %.0434.lcssa781, ptr noundef nonnull %spec.select555) ; 0 uses
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, %i.xv ; 2 uses
  %i.ye = load i32, ptr %i.k, align 4, !tbaa !4
  %i.yf = trunc nuw i64 %indvars.iv.next729 to i32
  %.not510 = icmp slt i32 %i.ye, %i.yf
  br i1 %.not510, label %._crit_edge672, label %.lr.ph671, !llvm.loop !65

._crit_edge672:                                   ; preds = %.lr.ph671, %.lr.ph675
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %indvars.iv.next727 = add nuw nsw i64 %indvars.iv726, 1
  %exitcond732.not = icmp eq i32 %i.xw, %i.xt
  br i1 %exitcond732.not, label %.loopexit618, label %.lr.ph675, !llvm.loop !66

.loopexit618:                                     ; preds = %._crit_edge672, %._crit_edge665.thread, %bb.et
  %i.yg = load ptr, ptr %i.j, align 8, !tbaa !61
  call void @sqlite3_free_table(ptr noundef %i.yg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  br label %.loopexit

.critedge554.thread614:                           ; preds = %.thread, %bb.en, %.critedge554
  %i.yh = phi i1 [ %i.wo, %.critedge554 ], [ true, %bb.en ], [ false, %.thread ]
  %i.yi = icmp sgt i32 %i.do, 4
  %or.cond45 = select i1 %i.yh, i1 %i.yi, i1 false
  br i1 %or.cond45, label %bb.ex, label %bb.fb

bb.ex:                                            ; preds = %.critedge554.thread614
  %i.yj = and i64 %i.dn, 2147483647               ; 2 uses
  %i.yk = tail call i32 @strncmp(ptr noundef nonnull %i.dm, ptr noundef nonnull @.str.116, i64 noundef %i.yj) #23
  %i.yl = icmp eq i32 %i.yk, 0
  %i.ym = icmp ne i32 %.0429.lcssa.ph, 1          ; 2 uses
  %or.cond48 = and i1 %i.yl, %i.ym
  br i1 %or.cond48, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  tail call fastcc void @open_db(ptr noundef %1)
  %i.yn = load ptr, ptr %1, align 8, !tbaa !27
  %i.yo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !8
  %i.yq = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.yp, ptr noundef null, i32 noundef 10) #22, !inline_history !39
  %i.yr = trunc i64 %i.yq to i32
  %i.ys = tail call i32 @sqlite3_busy_timeout(ptr noundef %i.yn, i32 noundef %i.yr) #22 ; 0 uses
  br label %.loopexit

bb.ez:                                            ; preds = %bb.ex
  %i.yt = tail call i32 @strncmp(ptr noundef nonnull %i.dm, ptr noundef nonnull @.str.117, i64 noundef %i.yj) #23
  %i.yu = icmp eq i32 %i.yt, 0
  %or.cond54 = and i1 %i.yu, %i.ym
  br i1 %or.cond54, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.yv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !8
  %i.yx = tail call fastcc i32 @booleanValue(ptr noundef %i.yw)
  store i32 %i.yx, ptr @enableTimer, align 4, !tbaa !4
  br label %.loopexit

bb.fb:                                            ; preds = %.critedge554.thread614, %bb.ez
  %i.yy = icmp eq i8 %i.dp, 119
  br i1 %i.yy, label %bb.fc, label %.thread785

bb.fc:                                            ; preds = %bb.fb
  %sext507 = shl i64 %i.dn, 32
  %i.yz = ashr exact i64 %sext507, 32
  %i.za = tail call i32 @strncmp(ptr noundef nonnull %i.dm, ptr noundef nonnull @.str.108, i64 noundef %i.yz) #23
  %i.zb = icmp eq i32 %i.za, 0
  br i1 %i.zb, label %.preheader, label %.thread785

.preheader:                                       ; preds = %bb.fc
  %.not681 = icmp eq i32 %.0429.lcssa.ph, 1
  br i1 %.not681, label %.loopexit, label %.lr.ph679.preheader

.lr.ph679.preheader:                              ; preds = %.preheader
  %umax743 = tail call i32 @llvm.umin.i32(i32 %.0429.lcssa.ph, i32 100)
  %wide.trip.count744 = zext nneg i32 %umax743 to i64
  br label %.lr.ph679

.lr.ph679:                                        ; preds = %.lr.ph679.preheader, %.lr.ph679
  %indvars.iv739 = phi i64 [ 1, %.lr.ph679.preheader ], [ %indvars.iv.next740, %.lr.ph679 ] ; 3 uses
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv739
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !8
  %i.ze = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.zd, ptr noundef null, i32 noundef 10) #22, !inline_history !39
  %i.zf = trunc i64 %i.ze to i32
  %i.zg = getelementptr [4 x i8], ptr %1, i64 %indvars.iv739
  %i.zh = getelementptr i8, ptr %i.zg, i64 64
  store i32 %i.zf, ptr %i.zh, align 4, !tbaa !4
  %indvars.iv.next740 = add nuw nsw i64 %indvars.iv739, 1 ; 2 uses
  %exitcond745.not = icmp eq i64 %indvars.iv.next740, %wide.trip.count744
  br i1 %exitcond745.not, label %.loopexit, label %.lr.ph679, !llvm.loop !67

.thread785:                                       ; preds = %bb.bf, %bb.ac, %.critedge543, %.critedge553, %bb.ds, %bb.dp, %bb.dh, %bb.df, %bb.cj, %bb.dt, %bb.cf, %bb.fc, %bb.fb
  %i.zi = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.zj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zi, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.dm) #25 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph679, %bb.a, %.preheader, %.thread601, %.thread605, %booleanValue.exit, %bb.ao, %booleanValue.exit596, %bb.dn, %bb.do, %bb.dl, %bb.eh, %.critedge39, %bb.ey, %.thread785, %bb.fa, %.loopexit618, %bb.ej, %bb.dq, %bb.dr, %bb.dg, %bb.ci, %bb.bg, %booleanValue.exit582, %bb.aj, %bb.at, %bb.ay, %bb.az, %bb.ax, %bb.cp, %bb.ct, %bb.cx, %bb.de, %bb.dd, %bb.dc, %bb.cz, %bb.cv, %bb.cr, %bb.cm, %bb.ds, %bb.dw, %bb.dv, %._crit_edge
  %.1 = phi i32 [ %.0426.ph, %.thread605 ], [ 0, %._crit_edge ], [ 0, %booleanValue.exit ], [ 0, %bb.aj ], [ 0, %bb.ao ], [ 0, %booleanValue.exit582 ], [ 0, %.thread785 ], [ 2, %bb.at ], [ 0, %booleanValue.exit596 ], [ 0, %bb.bg ], [ 0, %bb.ci ], [ 0, %bb.ax ], [ 0, %bb.dg ], [ 0, %bb.dl ], [ 0, %bb.dn ], [ 0, %bb.do ], [ 0, %bb.dr ], [ 0, %bb.dq ], [ 0, %bb.cm ], [ 2, %bb.ds ], [ 0, %bb.eh ], [ 0, %bb.ej ], [ 0, %.critedge39 ], [ 0, %.loopexit618 ], [ 0, %bb.ey ], [ 0, %bb.fa ], [ 0, %bb.dv ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.cp ], [ 0, %bb.ct ], [ 0, %bb.cx ], [ 0, %bb.de ], [ 0, %bb.dd ], [ 0, %bb.dc ], [ 0, %bb.cz ], [ 0, %bb.cv ], [ 0, %bb.cr ], [ 0, %bb.dw ], [ 0, %.thread601 ], [ 0, %.preheader ], [ 0, %bb.a ], [ 0, %.lr.ph679 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @callback(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  switch i32 %i.b, label %.loopexit [
    i32 0, label %bb.b
    i32 9, label %bb.f
    i32 1, label %bb.f
    i32 3, label %bb.w
    i32 2, label %bb.w
    i32 4, label %bb.af
    i32 6, label %bb.as
    i32 7, label %bb.ax
    i32 5, label %bb.bc
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.d, label %.lr.ph372.preheader, label %._crit_edge373

.lr.ph372.preheader:                              ; preds = %.preheader
  %wide.trip.count446 = zext nneg i32 %1 to i64
  br label %.lr.ph372

.lr.ph372:                                        ; preds = %.lr.ph372.preheader, %.lr.ph372
  %indvars.iv443 = phi i64 [ 0, %.lr.ph372.preheader ], [ %indvars.iv.next444, %.lr.ph372 ] ; 2 uses
  %.0226370 = phi i32 [ 5, %.lr.ph372.preheader ], [ %.1227, %.lr.ph372 ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv443
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %.not292 = icmp eq ptr %i.f, null
  %spec.select = select i1 %.not292, ptr @.str.113, ptr %i.f
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #23
  %i.h = trunc i64 %i.g to i32
  %.1227 = tail call i32 @llvm.smax.i32(i32 %.0226370, i32 %i.h) ; 2 uses
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %wide.trip.count446
  br i1 %exitcond447.not, label %._crit_edge373, label %.lr.ph372, !llvm.loop !68

._crit_edge373:                                   ; preds = %.lr.ph372, %.preheader
  %.0226.lcssa = phi i32 [ 5, %.preheader ], [ %.1227, %.lr.ph372 ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !43
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge373
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %fputc290 = tail call i32 @fputc(i32 10, ptr %i.n) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge373
  br i1 %i.d, label %.lr.ph376, label %.loopexit

.lr.ph376:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 868
  %wide.trip.count451 = zext nneg i32 %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph376, %bb.e
  %indvars.iv448 = phi i64 [ 0, %.lr.ph376 ], [ %indvars.iv.next449, %bb.e ] ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv448
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv448
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8    ; 2 uses
  %.not291 = icmp eq ptr %i.u, null
  %i.v = select i1 %.not291, ptr %i.p, ptr %i.u
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.141, i32 noundef %.0226.lcssa, ptr noundef %i.s, ptr noundef nonnull %i.v) #22 ; 0 uses
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %exitcond452.not = icmp eq i64 %indvars.iv.next449, %wide.trip.count451
  br i1 %exitcond452.not, label %.loopexit, label %bb.e, !llvm.loop !69

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43   ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !43
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %.preheader324, label %.loopexit323

.preheader324:                                    ; preds = %bb.f
  %i.ab = icmp sgt i32 %1, 0
  br i1 %i.ab, label %.lr.ph364, label %.loopexit

.lr.ph364:                                        ; preds = %.preheader324
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.not287 = icmp eq ptr %2, null
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = add nsw i32 %1, -1
  %i.ai = zext nneg i32 %i.ah to i64
  %wide.trip.count431 = zext nneg i32 %1 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph364, %bb.n
  %indvars.iv428 = phi i64 [ 0, %.lr.ph364 ], [ %indvars.iv.next429, %bb.n ] ; 8 uses
  %i.aj = icmp samesign ult i64 %indvars.iv428, 100 ; 2 uses
  br i1 %i.aj, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv428
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %.thread, label %.thread312

.thread:                                          ; preds = %bb.g, %bb.h
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv428
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !8  ; 2 uses
  %.not286 = icmp eq ptr %i.ao, null
  %spec.select293 = select i1 %.not286, ptr @.str.113, ptr %i.ao
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select293) #23
  %i.aq = trunc i64 %i.ap to i32
  br i1 %.not287, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv428
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 2 uses
  %.not288 = icmp eq ptr %i.as, null
  br i1 %.not288, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.thread
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = phi ptr [ %i.ad, %bb.j ], [ %i.as, %bb.i ]
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #23
  %i.av = trunc i64 %i.au to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.av)
  %spec.select294 = tail call i32 @llvm.smax.i32(i32 %spec.store.select, i32 10) ; 2 uses
  br i1 %i.aj, label %.thread312, label %bb.l

.thread312:                                       ; preds = %bb.h, %bb.k
  %.1229314 = phi i32 [ %spec.select294, %bb.k ], [ %i.al, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv428
  store i32 %.1229314, ptr %i.aw, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %.thread312, %bb.k
  %.1229315 = phi i32 [ %.1229314, %.thread312 ], [ %spec.select294, %bb.k ] ; 2 uses
  %i.ax = load i32, ptr %i.af, align 8, !tbaa !24
  %.not289 = icmp eq i32 %i.ax, 0
  br i1 %.not289, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv428
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bb = icmp eq i64 %indvars.iv428, %i.ai
  %i.bc = select i1 %i.bb, ptr @.str.107, ptr @.str.114
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str.142, i32 noundef %.1229315, i32 noundef %.1229315, ptr noundef %i.ba, ptr noundef nonnull %i.bc) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431
  br i1 %exitcond432.not, label %._crit_edge365, label %bb.g, !llvm.loop !70

._crit_edge365:                                   ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !24
  %.not283.not = icmp eq i32 %i.bf, 0
  br i1 %.not283.not, label %.loopexit323, label %.lr.ph367

.lr.ph367:                                        ; preds = %._crit_edge365
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = add nsw i32 %1, -1
  %i.bj = zext nneg i32 %i.bi to i64
  %wide.trip.count436 = zext nneg i32 %1 to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph367, %bb.q
  %indvars.iv433 = phi i64 [ 0, %.lr.ph367 ], [ %indvars.iv.next434, %bb.q ] ; 4 uses
  %i.bk = icmp samesign ult i64 %indvars.iv433, 100
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv433
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0225 = phi i32 [ %i.bm, %bb.p ], [ 10, %bb.o ] ; 2 uses
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bo = icmp eq i64 %indvars.iv433, %i.bj
  %i.bp = select i1 %i.bo, ptr @.str.107, ptr @.str.114
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.142, i32 noundef %.0225, i32 noundef %.0225, ptr noundef nonnull @.str.143, ptr noundef nonnull %i.bp) #22 ; 0 uses
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 2 uses
  %exitcond437.not = icmp eq i64 %indvars.iv.next434, %wide.trip.count436
  br i1 %exitcond437.not, label %.loopexit323, label %bb.o, !llvm.loop !71

.loopexit323:                                     ; preds = %bb.q, %._crit_edge365, %bb.f
  %i.br = icmp ne ptr %2, null
  %i.bs = icmp sgt i32 %1, 0
  %or.cond377 = and i1 %i.br, %i.bs
  br i1 %or.cond377, label %.lr.ph369, label %.loopexit

.lr.ph369:                                        ; preds = %.loopexit323
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.bw = add nsw i32 %1, -1
  %i.bx = zext nneg i32 %i.bw to i64
  %wide.trip.count441 = zext nneg i32 %1 to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph369, %._crit_edge454
  %indvars.iv438 = phi i64 [ 0, %.lr.ph369 ], [ %indvars.iv.next439, %._crit_edge454 ] ; 5 uses
  %i.by = icmp samesign ult i64 %indvars.iv438, 100
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv438
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0223 = phi i32 [ %i.ca, %bb.s ], [ 10, %bb.r ] ; 3 uses
  %i.cb = load i32, ptr %i.a, align 8, !tbaa !11
  %i.cc = icmp eq i32 %i.cb, 9
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv438
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8  ; 4 uses
  br i1 %i.cc, label %bb.u, label %._crit_edge454

bb.u:                                             ; preds = %bb.t
  %.not284 = icmp eq ptr %i.ce, null
  br i1 %.not284, label %._crit_edge454, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ce) #23
  %i.cg = sext i32 %.0223 to i64
  %spec.select295319 = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 %i.cg)
  %spec.select295 = trunc i64 %spec.select295319 to i32
  br label %._crit_edge454

._crit_edge454:                                   ; preds = %bb.t, %bb.v, %bb.u
  %i.ch = phi ptr [ null, %bb.u ], [ %i.ce, %bb.v ], [ %i.ce, %bb.t ] ; 2 uses
  %.1224 = phi i32 [ %.0223, %bb.u ], [ %spec.select295, %bb.v ], [ %.0223, %bb.t ] ; 2 uses
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !21
  %.not285 = icmp eq ptr %i.ch, null
  %i.cj = select i1 %.not285, ptr %i.bv, ptr %i.ch
  %i.ck = icmp eq i64 %indvars.iv438, %i.bx
  %i.cl = select i1 %i.ck, ptr @.str.107, ptr @.str.114
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.142, i32 noundef %.1224, i32 noundef %.1224, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cl) #22 ; 0 uses
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 2 uses
  %exitcond442.not = icmp eq i64 %indvars.iv.next439, %wide.trip.count441
  br i1 %exitcond442.not, label %.loopexit, label %bb.r, !llvm.loop !72

bb.w:                                             ; preds = %bb.a, %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !43 ; 2 uses
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !43
  %i.cq = icmp eq i32 %i.co, 0
  br i1 %i.cq, label %bb.x, label %.loopexit328

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !24
  %.not279 = icmp ne i32 %i.cs, 0
  %i.ct = icmp sgt i32 %1, 0
  %or.cond378 = and i1 %.not279, %i.ct
  br i1 %or.cond378, label %.lr.ph360, label %.loopexit328

.lr.ph360:                                        ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = add nsw i32 %1, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = zext nneg i32 %i.cv to i64
  %wide.trip.count421 = zext nneg i32 %1 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph360, %bb.y
  %indvars.iv418 = phi i64 [ 0, %.lr.ph360 ], [ %indvars.iv.next419, %bb.y ] ; 3 uses
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv418
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.db = icmp eq i64 %indvars.iv418, %i.cx
  %i.dc = select i1 %i.db, ptr @.str.107, ptr %i.cw
  %i.dd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.144, ptr noundef %i.da, ptr noundef nonnull %i.dc) #22 ; 0 uses
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 1 ; 2 uses
  %exitcond422.not = icmp eq i64 %indvars.iv.next419, %wide.trip.count421
  br i1 %exitcond422.not, label %.loopexit328, label %bb.y, !llvm.loop !73

.loopexit328:                                     ; preds = %bb.y, %bb.x, %bb.w
  %i.de = icmp ne ptr %2, null
  %i.df = icmp sgt i32 %1, 0
  %or.cond379 = and i1 %i.de, %i.df
  br i1 %or.cond379, label %.lr.ph362, label %.loopexit

.lr.ph362:                                        ; preds = %.loopexit328
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.di = add nsw i32 %1, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dk = zext nneg i32 %i.di to i64
  %wide.trip.count426 = zext nneg i32 %1 to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph362, %bb.ae
  %indvars.iv423 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next424, %bb.ae ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv423
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !8  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  %spec.select296 = select i1 %i.dn, ptr %i.dg, ptr %i.dm
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !21
  %fputs280 = tail call i32 @fputs(ptr nonnull %spec.select296, ptr %i.do) ; 0 uses
  %i.dp = icmp samesign ult i64 %indvars.iv423, %i.dk
  br i1 %i.dp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !21
  %fputs282 = tail call i32 @fputs(ptr nonnull %i.dj, ptr %i.dq) ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.dr = load i32, ptr %i.a, align 8, !tbaa !11
  %i.ds = icmp eq i32 %i.dr, 3
  %i.dt = load ptr, ptr %i.dh, align 8, !tbaa !21 ; 2 uses
  br i1 %i.ds, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.du = tail call i64 @fwrite(ptr nonnull @.str.145, i64 2, i64 1, ptr %i.dt) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %fputc281 = tail call i32 @fputc(i32 10, ptr %i.dt) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %exitcond427.not = icmp eq i64 %indvars.iv.next424, %wide.trip.count426
  br i1 %exitcond427.not, label %.loopexit, label %bb.z, !llvm.loop !74

bb.af:                                            ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !43 ; 2 uses
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !43
  %i.dy = icmp eq i32 %i.dw, 0
  br i1 %i.dy, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !24
  %.not277 = icmp eq i32 %i.ea, 0
  br i1 %.not277, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !21
  %i.ed = tail call i64 @fwrite(ptr nonnull @.str.146, i64 4, i64 1, ptr %i.ec) ; 0 uses
  %i.ee = icmp sgt i32 %1, 0
  br i1 %i.ee, label %.lr.ph353.preheader, label %._crit_edge354

.lr.ph353.preheader:                              ; preds = %bb.ah
  %wide.trip.count411 = zext nneg i32 %1 to i64
  br label %.lr.ph353

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %.lr.ph353
  %indvars.iv408 = phi i64 [ 0, %.lr.ph353.preheader ], [ %indvars.iv.next409, %.lr.ph353 ] ; 2 uses
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !21
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv408
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !8
  %i.ei = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.147, ptr noundef %i.eh) #22 ; 0 uses
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count411
  br i1 %exitcond412.not, label %._crit_edge354, label %.lr.ph353, !llvm.loop !75

._crit_edge354:                                   ; preds = %.lr.ph353, %bb.ah
  %i.ej = load ptr, ptr %i.eb, align 8, !tbaa !21
  %i.ek = tail call i64 @fwrite(ptr nonnull @.str.148, i64 6, i64 1, ptr %i.ej) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge354, %bb.ag, %bb.af
  %i.el = icmp eq ptr %2, null
  br i1 %i.el, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !21
  %i.eo = tail call i64 @fwrite(ptr nonnull @.str.146, i64 4, i64 1, ptr %i.en) ; 0 uses
  %i.ep = icmp sgt i32 %1, 0
  br i1 %i.ep, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 868
  %wide.trip.count416 = zext nneg i32 %1 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph357, %output_html_string.exit
  %indvars.iv413 = phi i64 [ 0, %.lr.ph357 ], [ %indvars.iv.next414, %output_html_string.exit ] ; 2 uses
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !21
  %i.es = tail call i64 @fwrite(ptr nonnull @.str.149, i64 4, i64 1, ptr %i.er) ; 0 uses
  %i.et = load ptr, ptr %i.em, align 8, !tbaa !21 ; 4 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv413
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !8  ; 2 uses
  %.not278 = icmp eq ptr %i.ev, null
  %i.ew = select i1 %.not278, ptr %i.eq, ptr %i.ev ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !16  ; 2 uses
  %.not27.i = icmp eq i8 %i.ex, 0
  br i1 %.not27.i, label %output_html_string.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ak, %bb.ar
  %i.ey = phi i8 [ %i.fh, %bb.ar ], [ %i.ex, %bb.ak ]
  %.01928.i = phi ptr [ %i.fg, %bb.ar ], [ %i.ew, %bb.ak ] ; 3 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.preheader.i
  %i.ez = phi i8 [ %i.ey, %.preheader.i ], [ %.pre.i, %bb.am ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.am ] ; 4 uses
  switch i8 %i.ez, label %bb.am [
    i8 0, label %.critedge.i
    i8 60, label %.critedge.i
    i8 38, label %.critedge.i
  ]

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.01928.i, i64 %indvars.iv.next.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !16
  br label %bb.al, !llvm.loop !76

.critedge.i:                                      ; preds = %bb.al, %bb.al, %bb.al
  %i.fa = getelementptr inbounds nuw i8, ptr %.01928.i, i64 %indvars.iv.i ; 2 uses
  %.not25.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not25.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.critedge.i
  %i.fb = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.fc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.10, i32 noundef %i.fb, ptr noundef nonnull %.01928.i) #22 ; 0 uses
  %.pre31.i = load i8, ptr %i.fa, align 1, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge.i
  %i.fd = phi i8 [ %.pre31.i, %bb.an ], [ %i.ez, %.critedge.i ]
  switch i8 %i.fd, label %output_html_string.exit.loopexit [
    i8 60, label %bb.ap
    i8 38, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.fe = tail call i64 @fwrite(ptr nonnull @.str.154, i64 4, i64 1, ptr %i.et) ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ff = tail call i64 @fwrite(ptr nonnull @.str.155, i64 5, i64 1, ptr %i.et) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 1 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !16  ; 2 uses
  %.not.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i, label %output_html_string.exit.loopexit, label %.preheader.i, !llvm.loop !77

output_html_string.exit.loopexit:                 ; preds = %bb.ar, %bb.ao
  %.pre453 = load ptr, ptr %i.em, align 8, !tbaa !21
  br label %output_html_string.exit

output_html_string.exit:                          ; preds = %output_html_string.exit.loopexit, %bb.ak
  %i.fi = phi ptr [ %.pre453, %output_html_string.exit.loopexit ], [ %i.et, %bb.ak ]
  %i.fj = tail call i64 @fwrite(ptr nonnull @.str.150, i64 6, i64 1, ptr %i.fi) ; 0 uses
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count416
  br i1 %exitcond417.not, label %._crit_edge358, label %bb.ak, !llvm.loop !78

._crit_edge358:                                   ; preds = %output_html_string.exit, %bb.aj
  %i.fk = load ptr, ptr %i.em, align 8, !tbaa !21
  %i.fl = tail call i64 @fwrite(ptr nonnull @.str.148, i64 6, i64 1, ptr %i.fk) ; 0 uses
  br label %.loopexit

bb.as:                                            ; preds = %bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !43 ; 2 uses
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !43
  %i.fp = icmp eq i32 %i.fn, 0
  br i1 %i.fp, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !24
  %.not270 = icmp eq i32 %i.fr, 0
  br i1 %.not270, label %bb.av, label %.preheader330

.preheader330:                                    ; preds = %bb.at
  %i.fs = icmp sgt i32 %1, 0
  br i1 %i.fs, label %.lr.ph346, label %._crit_edge347

.lr.ph346:                                        ; preds = %.preheader330
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count401 = zext nneg i32 %1 to i64
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph346, %bb.au
  %indvars.iv398 = phi i64 [ 0, %.lr.ph346 ], [ %indvars.iv.next399, %bb.au ] ; 2 uses
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !21
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv398
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !8  ; 2 uses
  %.not275 = icmp eq ptr %i.fx, null
  %spec.select297 = select i1 %.not275, ptr @.str.113, ptr %i.fx
  tail call fastcc void @output_c_string(ptr noundef %i.fv, ptr noundef nonnull %spec.select297)
  %i.fy = load ptr, ptr %i.ft, align 8, !tbaa !21
  %fputs276 = tail call i32 @fputs(ptr nonnull %i.fu, ptr %i.fy) ; 0 uses
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next399, %wide.trip.count401
  br i1 %exitcond402.not, label %._crit_edge347, label %bb.au, !llvm.loop !79

._crit_edge347:                                   ; preds = %bb.au, %.preheader330
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !21
  %fputc271 = tail call i32 @fputc(i32 10, ptr %i.ga) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge347, %bb.at, %bb.as
  %i.gb = icmp eq ptr %2, null
  br i1 %i.gb, label %.loopexit, label %.preheader329

.preheader329:                                    ; preds = %bb.av
  %i.gc = icmp sgt i32 %1, 0
  br i1 %i.gc, label %.lr.ph349, label %._crit_edge350

.lr.ph349:                                        ; preds = %.preheader329
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count406 = zext nneg i32 %1 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph349, %bb.aw
  %indvars.iv403 = phi i64 [ 0, %.lr.ph349 ], [ %indvars.iv.next404, %bb.aw ] ; 2 uses
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !21
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv403
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !8  ; 2 uses
  %.not273 = icmp eq ptr %i.gi, null
  %i.gj = select i1 %.not273, ptr %i.ge, ptr %i.gi
  tail call fastcc void @output_c_string(ptr noundef %i.gg, ptr noundef nonnull %i.gj)
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !21
  %fputs274 = tail call i32 @fputs(ptr nonnull %i.gf, ptr %i.gk) ; 0 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count406
  br i1 %exitcond407.not, label %._crit_edge350, label %bb.aw, !llvm.loop !80

._crit_edge350:                                   ; preds = %bb.aw, %.preheader329
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !21
  %fputc272 = tail call i32 @fputc(i32 10, ptr %i.gm) ; 0 uses
  br label %.loopexit

bb.ax:                                            ; preds = %bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !43 ; 2 uses
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !43
  %i.gq = icmp eq i32 %i.go, 0
  br i1 %i.gq, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !24
  %.not267 = icmp eq i32 %i.gs, 0
  br i1 %.not267, label %bb.ba, label %.preheader332

.preheader332:                                    ; preds = %bb.ay
  %i.gt = icmp sgt i32 %1, 0
  br i1 %i.gt, label %.lr.ph340, label %._crit_edge341

.lr.ph340:                                        ; preds = %.preheader332
  %i.gu = add nsw i32 %1, -1
  %i.gv = zext nneg i32 %i.gu to i64
  %wide.trip.count391 = zext nneg i32 %1 to i64
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph340, %bb.az
  %indvars.iv388 = phi i64 [ 0, %.lr.ph340 ], [ %indvars.iv.next389, %bb.az ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv388
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !8  ; 2 uses
  %.not269 = icmp eq ptr %i.gx, null
  %spec.select298 = select i1 %.not269, ptr @.str.113, ptr %i.gx
  %i.gy = icmp samesign ult i64 %indvars.iv388, %i.gv
  %i.gz = zext i1 %i.gy to i32
  tail call fastcc void @output_csv(ptr noundef nonnull %0, ptr noundef nonnull %spec.select298, i32 noundef %i.gz)
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next389, %wide.trip.count391
  br i1 %exitcond392.not, label %._crit_edge341, label %bb.az, !llvm.loop !81

._crit_edge341:                                   ; preds = %bb.az, %.preheader332
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !21
  %fputc = tail call i32 @fputc(i32 10, ptr %i.hb) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge341, %bb.ay, %bb.ax
  %i.hc = icmp eq ptr %2, null
  br i1 %i.hc, label %.loopexit, label %.preheader331

.preheader331:                                    ; preds = %bb.ba
  %i.hd = icmp sgt i32 %1, 0
  br i1 %i.hd, label %.lr.ph343, label %._crit_edge344

.lr.ph343:                                        ; preds = %.preheader331
  %i.he = add nsw i32 %1, -1
  %i.hf = zext nneg i32 %i.he to i64
  %wide.trip.count396 = zext nneg i32 %1 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph343, %bb.bb
  %indvars.iv393 = phi i64 [ 0, %.lr.ph343 ], [ %indvars.iv.next394, %bb.bb ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv393
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !8
  %i.hi = icmp samesign ult i64 %indvars.iv393, %i.hf
  %i.hj = zext i1 %i.hi to i32
  tail call fastcc void @output_csv(ptr noundef nonnull %0, ptr noundef %i.hh, i32 noundef %i.hj)
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1 ; 2 uses
  %exitcond397.not = icmp eq i64 %indvars.iv.next394, %wide.trip.count396
  br i1 %exitcond397.not, label %._crit_edge344, label %bb.bb, !llvm.loop !82

._crit_edge344:                                   ; preds = %bb.bb, %.preheader331
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !21
  %fputc268 = tail call i32 @fputc(i32 10, ptr %i.hl) ; 0 uses
  br label %.loopexit

bb.bc:                                            ; preds = %bb.a
  %i.hm = icmp eq ptr %2, null
  br i1 %i.hm, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !21
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !28
  %i.hr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ho, ptr noundef nonnull @.str.151, ptr noundef %i.hq) #22 ; 0 uses
  %i.hs = icmp sgt i32 %1, 0
  br i1 %i.hs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bd
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %output_quoted_string.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %output_quoted_string.exit ] ; 3 uses
  %.not = icmp eq i64 %indvars.iv, 0
  %i.ht = select i1 %.not, ptr @.str.113, ptr @.str.9 ; 4 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !8  ; 6 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph
  %i.hx = load ptr, ptr %i.hn, align 8, !tbaa !21
  %i.hy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hx, ptr noundef nonnull @.str.152, ptr noundef nonnull %i.ht) #22 ; 0 uses
  br label %output_quoted_string.exit

bb.bf:                                            ; preds = %.lr.ph
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.hz, label %bb.bh [
    i8 45, label %bb.bg
    i8 43, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 1 ; 2 uses
  %.pre.i299 = load i8, ptr %i.ia, align 1, !tbaa !16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ib = phi i8 [ %.pre.i299, %bb.bg ], [ %i.hz, %bb.bf ]
  %.028.i = phi ptr [ %i.ia, %bb.bg ], [ %i.hv, %bb.bf ]
  %i.ic = tail call ptr @__ctype_b_loc() #29
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !30 ; 6 uses
  %i.ie = sext i8 %i.ib to i64
  %i.if = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !32
  %i.ih = and i16 %i.ig, 2048
  %.not.i300 = icmp eq i16 %i.ih, 0
  br i1 %.not.i300, label %isNumber.exit.thread, label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.bh, %.preheader3.i
  %.028.pn.i = phi ptr [ %.1.i, %.preheader3.i ], [ %.028.i, %bb.bh ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.028.pn.i, i64 1 ; 3 uses
  %i.ii = load i8, ptr %.1.i, align 1, !tbaa !16  ; 3 uses
  %i.ij = sext i8 %i.ii to i64
  %i.ik = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.ij
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !32
  %i.im = and i16 %i.il, 2048
  %.not35.i = icmp eq i16 %i.im, 0
  br i1 %.not35.i, label %bb.bi, label %.preheader3.i, !llvm.loop !83

bb.bi:                                            ; preds = %.preheader3.i
  %i.in = icmp eq i8 %i.ii, 46
  br i1 %i.in, label %bb.bj, label %.loopexit2.i

bb.bj:                                            ; preds = %bb.bi
  %i.io = getelementptr inbounds nuw i8, ptr %.028.pn.i, i64 2 ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !16
  %i.iq = sext i8 %i.ip to i64
  %i.ir = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !32
  %i.it = and i16 %i.is, 2048
  %.not36.i = icmp eq i16 %i.it, 0
  br i1 %.not36.i, label %isNumber.exit.thread, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.bj, %.preheader1.i
  %.2.i = phi ptr [ %i.iz, %.preheader1.i ], [ %i.io, %bb.bj ] ; 3 uses
  %i.iu = load i8, ptr %.2.i, align 1, !tbaa !16  ; 2 uses
  %i.iv = sext i8 %i.iu to i64
  %i.iw = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !32
  %i.iy = and i16 %i.ix, 2048
  %.not37.i = icmp eq i16 %i.iy, 0
  %i.iz = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br i1 %.not37.i, label %.loopexit2.i, label %.preheader1.i, !llvm.loop !84

.loopexit2.i:                                     ; preds = %.preheader1.i, %bb.bi
  %i.ja = phi i8 [ %i.ii, %bb.bi ], [ %i.iu, %.preheader1.i ] ; 2 uses
  %.3.i = phi ptr [ %.1.i, %bb.bi ], [ %.2.i, %.preheader1.i ] ; 2 uses
  switch i8 %i.ja, label %isNumber.exit [
    i8 101, label %bb.bk
    i8 69, label %bb.bk
  ]

bb.bk:                                            ; preds = %.loopexit2.i, %.loopexit2.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.jc, label %bb.bm [
    i8 43, label %bb.bl
    i8 45, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk
  %i.jd = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  %.pre4.i = load i8, ptr %i.jd, align 1, !tbaa !16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.je = phi i8 [ %.pre4.i, %bb.bl ], [ %i.jc, %bb.bk ]
  %.4.i = phi ptr [ %i.jd, %bb.bl ], [ %i.jb, %bb.bk ]
  %i.jf = sext i8 %i.je to i64
  %i.jg = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !32
  %i.ji = and i16 %i.jh, 2048
  %.not38.i = icmp eq i16 %i.ji, 0
  br i1 %.not38.i, label %isNumber.exit.thread, label %.preheader.i301

.preheader.i301:                                  ; preds = %bb.bm, %.preheader.i301
  %.5.i = phi ptr [ %i.jo, %.preheader.i301 ], [ %.4.i, %bb.bm ] ; 2 uses
  %i.jj = load i8, ptr %.5.i, align 1, !tbaa !16  ; 2 uses
  %i.jk = sext i8 %i.jj to i64
  %i.jl = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.jk
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !32
  %i.jn = and i16 %i.jm, 2048
  %.not39.i = icmp eq i16 %i.jn, 0
  %i.jo = getelementptr inbounds nuw i8, ptr %.5.i, i64 1
  br i1 %.not39.i, label %isNumber.exit, label %.preheader.i301, !llvm.loop !85

isNumber.exit:                                    ; preds = %.preheader.i301, %.loopexit2.i
  %i.jp = phi i8 [ %i.ja, %.loopexit2.i ], [ %i.jj, %.preheader.i301 ]
  %.not318 = icmp eq i8 %i.jp, 0
  br i1 %.not318, label %bb.bn, label %isNumber.exit.thread

bb.bn:                                            ; preds = %isNumber.exit
  %i.jq = load ptr, ptr %i.hn, align 8, !tbaa !21
  %i.jr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jq, ptr noundef nonnull @.str.144, ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hv) #22 ; 0 uses
  br label %output_quoted_string.exit

isNumber.exit.thread:                             ; preds = %bb.bm, %bb.bh, %bb.bj, %isNumber.exit
  %i.js = load i8, ptr %i.ht, align 1, !tbaa !16
  %.not266 = icmp eq i8 %i.js, 0
  br i1 %.not266, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %isNumber.exit.thread
  %i.jt = load ptr, ptr %i.hn, align 8, !tbaa !21
  %fputs = tail call i32 @fputs(ptr nonnull %i.ht, ptr %i.jt) ; 0 uses
  %.pre = load ptr, ptr %i.hu, align 8, !tbaa !8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %isNumber.exit.thread
  %i.ju = phi ptr [ %.pre, %bb.bo ], [ %i.hv, %isNumber.exit.thread ] ; 4 uses
  %i.jv = load ptr, ptr %i.hn, align 8, !tbaa !21 ; 6 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bs, %bb.bp
  %indvars.iv.i302 = phi i64 [ %indvars.iv.next.i305, %bb.bs ], [ 0, %bb.bp ] ; 2 uses
  %.0.i303 = phi i32 [ %.1.i304, %bb.bs ], [ 0, %bb.bp ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 %indvars.iv.i302
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !16
  switch i8 %i.jx, label %bb.bs [
    i8 0, label %bb.bt
    i8 39, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq
  %i.jy = add nsw i32 %.0.i303, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.1.i304 = phi i32 [ %i.jy, %bb.br ], [ %.0.i303, %bb.bq ]
  %indvars.iv.next.i305 = add nuw nsw i64 %indvars.iv.i302, 1
  br label %bb.bq, !llvm.loop !86

bb.bt:                                            ; preds = %bb.bq
  %i.jz = icmp eq i32 %.0.i303, 0
  br i1 %i.jz, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ka = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jv, ptr noundef nonnull @.str.156, ptr noundef nonnull %i.ju) #22 ; 0 uses
  br label %output_quoted_string.exit

bb.bv:                                            ; preds = %bb.bt
  %fputc.i = tail call i32 @fputc(i32 39, ptr %i.jv) ; 0 uses
  %i.kb = load i8, ptr %i.ju, align 1, !tbaa !16  ; 2 uses
  %.not3441.i = icmp eq i8 %i.kb, 0
  br i1 %.not3441.i, label %.loopexit.i308, label %.preheader.i306

.preheader.i306:                                  ; preds = %bb.bv, %bb.cc
  %i.kc = phi i8 [ %i.kk, %bb.cc ], [ %i.kb, %bb.bv ]
  %.03042.i = phi ptr [ %.131.i, %bb.cc ], [ %i.ju, %bb.bv ] ; 5 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bx, %.preheader.i306
  %i.kd = phi i8 [ %i.kc, %.preheader.i306 ], [ %.pre.i310, %bb.bx ] ; 2 uses
  %indvars.iv46.i = phi i64 [ 0, %.preheader.i306 ], [ %indvars.iv.next47.i, %bb.bx ] ; 4 uses
  switch i8 %i.kd, label %bb.bx [
    i8 0, label %.critedge.i307
    i8 39, label %.critedge.i307
  ]

bb.bx:                                            ; preds = %bb.bw
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %.phi.trans.insert.i309 = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %indvars.iv.next47.i
  %.pre.i310 = load i8, ptr %.phi.trans.insert.i309, align 1, !tbaa !16
  br label %bb.bw, !llvm.loop !87

.critedge.i307:                                   ; preds = %bb.bw, %bb.bw
  %i.ke = getelementptr inbounds nuw i8, ptr %.03042.i, i64 %indvars.iv46.i
  %i.kf = trunc nuw nsw i64 %indvars.iv46.i to i32
  %i.kg = icmp eq i64 %indvars.iv46.i, 0
  br i1 %i.kg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.critedge.i307
  %i.kh = tail call i64 @fwrite(ptr nonnull @.str.158, i64 2, i64 1, ptr %i.jv) ; 0 uses
  br label %bb.cc

bb.bz:                                            ; preds = %.critedge.i307
  %i.ki = icmp eq i8 %i.kd, 39
  br i1 %i.ki, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.kj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jv, ptr noundef nonnull @.str.159, i32 noundef %i.kf, ptr noundef nonnull %.03042.i) #22 ; 0 uses
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %fputs.i = tail call i32 @fputs(ptr nonnull %.03042.i, ptr %i.jv) ; 0 uses
  br label %.loopexit.i308

bb.cc:                                            ; preds = %bb.ca, %bb.by
  %.030.pn.i = phi ptr [ %.03042.i, %bb.by ], [ %i.ke, %bb.ca ]
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.pn.i, i64 1 ; 2 uses
  %i.kk = load i8, ptr %.131.i, align 1, !tbaa !16 ; 2 uses
  %.not34.i = icmp eq i8 %i.kk, 0
  br i1 %.not34.i, label %.loopexit.i308, label %.preheader.i306, !llvm.loop !88

.loopexit.i308:                                   ; preds = %bb.cc, %bb.cb, %bb.bv
  %fputc37.i = tail call i32 @fputc(i32 39, ptr %i.jv) ; 0 uses
  br label %output_quoted_string.exit

output_quoted_string.exit:                        ; preds = %.loopexit.i308, %bb.bu, %bb.bn, %bb.be
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %output_quoted_string.exit, %bb.bd
  %i.kl = load ptr, ptr %i.hn, align 8, !tbaa !21
  %i.km = tail call i64 @fwrite(ptr nonnull @.str.153, i64 3, i64 1, ptr %i.kl) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %._crit_edge454, %bb.e, %.preheader324, %bb.d, %bb.b, %bb.bc, %bb.ba, %bb.av, %bb.ai, %.loopexit328, %.loopexit323, %._crit_edge, %._crit_edge344, %._crit_edge350, %._crit_edge358, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @process_input(ptr noundef nonnull %0, ptr noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rusage, align 8             ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [100 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = icmp eq ptr %1, null                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.outer

.outer:                                           ; preds = %_contains_semicolon.exit.thread, %bb.a
  %.095.ph = phi ptr [ %.398, %_contains_semicolon.exit.thread ], [ null, %bb.a ] ; 8 uses
  %.091.ph = phi i32 [ %.394, %_contains_semicolon.exit.thread ], [ 0, %bb.a ]
  %.088.ph = phi i32 [ %.3, %_contains_semicolon.exit.thread ], [ 0, %bb.a ]
  %.087.ph = phi i32 [ %i.x, %_contains_semicolon.exit.thread ], [ 0, %bb.a ]
  %.085.ph = phi i32 [ %.2152, %_contains_semicolon.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %.0.ph = phi ptr [ %.0.i, %_contains_semicolon.exit.thread ], [ null, %bb.a ]
  %.not10.i = icmp eq ptr %.095.ph, null          ; 5 uses
  br label %.outer171.outer

.outer171.outer:                                  ; preds = %bb.ay, %.outer
  %.091.ph172.ph = phi i32 [ 0, %bb.ay ], [ %.091.ph, %.outer ]
  %.088.ph173.ph = phi i32 [ %i.dt, %bb.ay ], [ %.088.ph, %.outer ] ; 10 uses
  %.087.ph174.ph = phi i32 [ %i.x, %bb.ay ], [ %.087.ph, %.outer ]
  %.0.ph176.ph = phi ptr [ %.0.i, %bb.ay ], [ %.0.ph, %.outer ]
  %i.j = icmp ne i32 %.088.ph173.ph, 0
  br label %.outer171

.outer171:                                        ; preds = %.outer171.outer, %bb.ax
  %.091.ph172 = phi i32 [ %i.ds, %bb.ax ], [ %.091.ph172.ph, %.outer171.outer ] ; 8 uses
  %.087.ph174 = phi i32 [ %i.x, %bb.ax ], [ %.087.ph174.ph, %.outer171.outer ]
  %.0.ph176 = phi ptr [ %.0.i, %bb.ax ], [ %.0.ph176.ph, %.outer171.outer ]
  br label %bb.b

bb.b:                                             ; preds = %.outer171, %_all_whitespace.exit
  %.087 = phi i32 [ %i.x, %_all_whitespace.exit ], [ %.087.ph174, %.outer171 ]
  %.0 = phi ptr [ %.0.i, %_all_whitespace.exit ], [ %.0.ph176, %.outer171 ] ; 2 uses
  %i.k = load i32, ptr @bail_on_error, align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @stdin_is_interactive, align 4
  %i.n = icmp ne i32 %i.m, 0
  %i.o = select i1 %i.c, i1 %i.n, i1 false
  br i1 %i.o, label %.critedge, label %.loopexit177

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.q = call i32 @fflush(ptr noundef %i.p)       ; 0 uses
  call void @free(ptr noundef %.0) #22
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.r = call fastcc ptr @local_getline(ptr noundef null, ptr noundef nonnull %1)
  br label %one_input_line.exit

bb.e:                                             ; preds = %.critedge
  br i1 %.not10.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %.095.ph, align 1, !tbaa !16
  %.not11.i = icmp eq i8 %i.s, 0
  br i1 %.not11.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.07.i = phi ptr [ @mainPrompt, %bb.g ], [ @continuePrompt, %bb.f ]
  %i.t = load ptr, ptr @stdin, align 8, !tbaa !20
  %i.u = call fastcc ptr @local_getline(ptr noundef nonnull %.07.i, ptr noundef %i.t)
  br label %one_input_line.exit

one_input_line.exit:                              ; preds = %bb.d, %bb.h
  %.0.i = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.h ] ; 19 uses
  %i.v = icmp eq ptr %.0.i, null
  br i1 %i.v, label %.loopexit177, label %bb.i

bb.i:                                             ; preds = %one_input_line.exit
  %i.w = load volatile i32, ptr @seenInterrupt, align 4, !tbaa !4
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.c, label %bb.k, label %.loopexit177

bb.k:                                             ; preds = %bb.j
  store volatile i32 0, ptr @seenInterrupt, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.x = add nsw i32 %.087, 1                     ; 5 uses
  %i.y = load i32, ptr %i.e, align 8, !tbaa !25
  %.not107 = icmp eq i32 %i.y, 0
  br i1 %.not107, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %.0.i) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load i8, ptr %.095.ph, align 1, !tbaa !16
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.p, label %_all_whitespace.exit.thread.loopexit229

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ab = load i8, ptr %.0.i, align 1, !tbaa !16  ; 6 uses
  %.not37.i = icmp eq i8 %i.ab, 0
  br i1 %.not37.i, label %_all_whitespace.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.ac = tail call ptr @__ctype_b_loc() #29
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.ae = phi i8 [ %i.ab, %.lr.ph.i ], [ %i.az, %.loopexit.i ] ; 2 uses
  %.038.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %i.ay, %.loopexit.i ] ; 5 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !32
  %i.ai = and i16 %i.ah, 8192
  %.not27.i = icmp eq i16 %i.ai, 0
  br i1 %.not27.i, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %bb.q
  switch i8 %i.ae, label %_all_whitespace.exit.thread [
    i8 47, label %bb.s
    i8 45, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %.038.i, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = icmp eq i8 %i.ak, 42
  br i1 %i.al, label %bb.t, label %_all_whitespace.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %.038.i, i64 2
  br label %bb.u

bb.u:                                             ; preds = %.critedge2.i, %bb.t
  %.1.i = phi ptr [ %i.am, %bb.t ], [ %i.aq, %.critedge2.i ] ; 4 uses
  %i.an = load i8, ptr %.1.i, align 1, !tbaa !16
  switch i8 %i.an, label %.critedge2.i [
    i8 0, label %_all_whitespace.exit.thread
    i8 42, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %.not32.i = icmp eq i8 %i.ap, 47
  br i1 %.not32.i, label %.loopexit.i.loopexit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.v, %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %bb.u, !llvm.loop !90

bb.w:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.038.i, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = icmp eq i8 %i.as, 45
  br i1 %i.at, label %bb.x, label %_all_whitespace.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.au = getelementptr inbounds nuw i8, ptr %.038.i, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.2.i = phi ptr [ %i.au, %bb.x ], [ %i.aw, %bb.z ] ; 3 uses
  %i.av = load i8, ptr %.2.i, align 1, !tbaa !16
  switch i8 %i.av, label %bb.z [
    i8 0, label %_all_whitespace.exit
    i8 10, label %.loopexit.i
  ]

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br label %bb.y, !llvm.loop !91

.loopexit.i.loopexit:                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.y, %.loopexit.i.loopexit, %bb.q
  %.3.i = phi ptr [ %.038.i, %bb.q ], [ %i.ax, %.loopexit.i.loopexit ], [ %.2.i, %bb.y ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16  ; 2 uses
  %.not.i121 = icmp eq i8 %i.az, 0
  br i1 %.not.i121, label %_all_whitespace.exit, label %bb.q, !llvm.loop !92

_all_whitespace.exit:                             ; preds = %.loopexit.i, %bb.y, %bb.p
  br label %bb.b, !llvm.loop !93

_all_whitespace.exit.thread.loopexit229:          ; preds = %bb.o
  %.pre = load i8, ptr %.0.i, align 1, !tbaa !16
  br label %_all_whitespace.exit.thread

_all_whitespace.exit.thread:                      ; preds = %bb.r, %bb.s, %bb.w, %bb.u, %_all_whitespace.exit.thread.loopexit229
  %i.ba = phi i8 [ %.pre, %_all_whitespace.exit.thread.loopexit229 ], [ %i.ab, %bb.u ], [ %i.ab, %bb.w ], [ %i.ab, %bb.s ], [ %i.ab, %bb.r ] ; 3 uses
  %i.bb = icmp eq i8 %i.ba, 46
  %i.bc = icmp eq i32 %.091.ph172, 0
  %or.cond3 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond3, label %bb.ax, label %.split99

.split99:                                         ; preds = %_all_whitespace.exit.thread
  %i.bd = tail call ptr @__ctype_b_loc() #29      ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !30 ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.split99
  %.011.i = phi ptr [ %.0.i, %.split99 ], [ %i.bk, %bb.aa ] ; 3 uses
  %i.bf = load i8, ptr %.011.i, align 1, !tbaa !16 ; 3 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !32
  %i.bj = and i16 %i.bi, 8192
  %.not.i122 = icmp eq i16 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i, i64 1 ; 4 uses
  br i1 %.not.i122, label %bb.ab, label %bb.aa, !llvm.loop !94

bb.ab:                                            ; preds = %bb.aa
  %i.bl = icmp eq i8 %i.bf, 47
  br i1 %i.bl, label %bb.ac, label %_all_whitespace.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !16  ; 2 uses
  %.not37.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not37.i.i, label %_is_command_terminator.exit.thread.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %.loopexit.i.i
  %i.bn = phi i8 [ %i.ci, %.loopexit.i.i ], [ %i.bm, %bb.ac ] ; 2 uses
  %.038.i.i = phi ptr [ %i.ch, %.loopexit.i.i ], [ %i.bk, %bb.ac ] ; 5 uses
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !32
  %i.br = and i16 %i.bq, 8192
  %.not27.i.i = icmp eq i16 %i.br, 0
  br i1 %.not27.i.i, label %bb.ad, label %.loopexit.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  switch i8 %i.bn, label %_all_whitespace.exit.thread.i [
    i8 47, label %bb.ae
    i8 45, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bs = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = icmp eq i8 %i.bt, 42
  br i1 %i.bu, label %bb.af, label %_all_whitespace.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.bv = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 2
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge2.i.i, %bb.af
  %.1.i.i = phi ptr [ %i.bv, %bb.af ], [ %i.bz, %.critedge2.i.i ] ; 4 uses
  %i.bw = load i8, ptr %.1.i.i, align 1, !tbaa !16
  switch i8 %i.bw, label %.critedge2.i.i [
    i8 0, label %_all_whitespace.exit.thread.i
    i8 42, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %.not32.i.i = icmp eq i8 %i.by, 47
  br i1 %.not32.i.i, label %.loopexit.i.i.loopexit, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.ah, %bb.ag
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.ag, !llvm.loop !90

bb.ai:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cc = icmp eq i8 %i.cb, 45
  br i1 %i.cc, label %bb.aj, label %_all_whitespace.exit.thread.i

bb.aj:                                            ; preds = %bb.ai
  %i.cd = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.2.i.i = phi ptr [ %i.cd, %bb.aj ], [ %i.cf, %bb.al ] ; 3 uses
  %i.ce = load i8, ptr %.2.i.i, align 1, !tbaa !16
  switch i8 %i.ce, label %bb.al [
    i8 0, label %_is_command_terminator.exit.thread.thread
    i8 10, label %.loopexit.i.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1
  br label %bb.ak, !llvm.loop !91

.loopexit.i.i.loopexit:                           ; preds = %bb.ah
  %i.cg = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ak, %.loopexit.i.i.loopexit, %.lr.ph.i.i
  %.3.i.i = phi ptr [ %.038.i.i, %.lr.ph.i.i ], [ %i.cg, %.loopexit.i.i.loopexit ], [ %.2.i.i, %bb.ak ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i, label %_is_command_terminator.exit.thread.thread, label %.lr.ph.i.i, !llvm.loop !92

_all_whitespace.exit.thread.i:                    ; preds = %bb.ai, %bb.ae, %bb.ad, %bb.ag, %bb.ab
  %i.cj = tail call ptr @__ctype_tolower_loc() #29
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !40 ; 2 uses
  %i.cl = sext i8 %i.bf to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = icmp eq i32 %i.cn, 103
  br i1 %i.co, label %bb.am, label %_is_command_terminator.exit.thread

bb.am:                                            ; preds = %_all_whitespace.exit.thread.i
  %i.cp = load i8, ptr %i.bk, align 1, !tbaa !16
  %i.cq = sext i8 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = icmp eq i32 %i.cs, 111
  br i1 %i.ct, label %bb.an, label %_is_command_terminator.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.cu = getelementptr inbounds nuw i8, ptr %.011.i, i64 2 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !16  ; 2 uses
  %.not37.i14.i = icmp eq i8 %i.cv, 0
  br i1 %.not37.i14.i, label %_is_command_terminator.exit.thread.thread, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.an, %.loopexit.i18.i
  %i.cw = phi i8 [ %i.dr, %.loopexit.i18.i ], [ %i.cv, %bb.an ] ; 2 uses
  %.038.i16.i = phi ptr [ %i.dq, %.loopexit.i18.i ], [ %i.cu, %bb.an ] ; 5 uses
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !32
  %i.da = and i16 %i.cz, 8192
  %.not27.i17.i = icmp eq i16 %i.da, 0
  br i1 %.not27.i17.i, label %bb.ao, label %.loopexit.i18.i

bb.ao:                                            ; preds = %.lr.ph.i15.i
  switch i8 %i.cw, label %_is_command_terminator.exit.thread [
    i8 47, label %bb.ap
    i8 45, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.db = getelementptr inbounds nuw i8, ptr %.038.i16.i, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !16
  %i.dd = icmp eq i8 %i.dc, 42
  br i1 %i.dd, label %bb.aq, label %_is_command_terminator.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.de = getelementptr inbounds nuw i8, ptr %.038.i16.i, i64 2
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge2.i25.i, %bb.aq
  %.1.i23.i = phi ptr [ %i.de, %bb.aq ], [ %i.di, %.critedge2.i25.i ] ; 4 uses
  %i.df = load i8, ptr %.1.i23.i, align 1, !tbaa !16
  switch i8 %i.df, label %.critedge2.i25.i [
    i8 0, label %_is_command_terminator.exit.thread
    i8 42, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %.1.i23.i, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16
  %.not32.i24.i = icmp eq i8 %i.dh, 47
  br i1 %.not32.i24.i, label %.loopexit.i18.i.loopexit, label %.critedge2.i25.i

.critedge2.i25.i:                                 ; preds = %bb.as, %bb.ar
  %i.di = getelementptr inbounds nuw i8, ptr %.1.i23.i, i64 1
  br label %bb.ar, !llvm.loop !90

bb.at:                                            ; preds = %bb.ao
  %i.dj = getelementptr inbounds nuw i8, ptr %.038.i16.i, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !16
  %i.dl = icmp eq i8 %i.dk, 45
  br i1 %i.dl, label %bb.au, label %_is_command_terminator.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.dm = getelementptr inbounds nuw i8, ptr %.038.i16.i, i64 2
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.2.i22.i = phi ptr [ %i.dm, %bb.au ], [ %i.do, %bb.aw ] ; 3 uses
  %i.dn = load i8, ptr %.2.i22.i, align 1, !tbaa !16
  switch i8 %i.dn, label %bb.aw [
    i8 0, label %_is_command_terminator.exit.thread.thread
    i8 10, label %.loopexit.i18.i
  ]

bb.aw:                                            ; preds = %bb.av
  %i.do = getelementptr inbounds nuw i8, ptr %.2.i22.i, i64 1
  br label %bb.av, !llvm.loop !91

.loopexit.i18.i.loopexit:                         ; preds = %bb.as
  %i.dp = getelementptr inbounds nuw i8, ptr %.1.i23.i, i64 1
  br label %.loopexit.i18.i

.loopexit.i18.i:                                  ; preds = %bb.av, %.loopexit.i18.i.loopexit, %.lr.ph.i15.i
  %.3.i19.i = phi ptr [ %.038.i16.i, %.lr.ph.i15.i ], [ %i.dp, %.loopexit.i18.i.loopexit ], [ %.2.i22.i, %bb.av ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.3.i19.i, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16  ; 2 uses
  %.not.i20.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i20.i, label %_is_command_terminator.exit.thread.thread, label %.lr.ph.i15.i, !llvm.loop !92

bb.ax:                                            ; preds = %_all_whitespace.exit.thread
  %i.ds = call fastcc i32 @do_meta_command(ptr noundef %.0.i, ptr noundef %0) ; 2 uses
  switch i32 %i.ds, label %bb.ay [
    i32 2, label %.loopexit177
    i32 0, label %.outer171
  ], !llvm.loop !93

bb.ay:                                            ; preds = %bb.ax
  %i.dt = add nsw i32 %.088.ph173.ph, 1
  br label %.outer171.outer, !llvm.loop !93

_is_command_terminator.exit.thread:               ; preds = %bb.ao, %bb.at, %bb.ap, %bb.ar, %bb.am, %_all_whitespace.exit.thread.i
  br i1 %.not10.i, label %.preheader, label %bb.bd

_is_command_terminator.exit.thread.thread:        ; preds = %.loopexit.i.i, %.loopexit.i18.i, %bb.ak, %bb.av, %bb.ac, %bb.an
  store i16 59, ptr %.0.i, align 1
  br i1 %.not10.i, label %.lr.ph, label %bb.bd

.preheader:                                       ; preds = %_is_command_terminator.exit.thread
  %.not110218 = icmp eq i8 %i.ba, 0
  br i1 %.not110218, label %_contains_semicolon.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_is_command_terminator.exit.thread.thread, %.preheader
  %i.du = phi i8 [ %i.ba, %.preheader ], [ 59, %_is_command_terminator.exit.thread.thread ]
  %i.dv = load ptr, ptr %i.bd, align 8, !tbaa !30
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.next
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16  ; 2 uses
  %.not110 = icmp eq i8 %i.dx, 0
  br i1 %.not110, label %_contains_semicolon.exit.thread, label %bb.ba, !llvm.loop !95

bb.ba:                                            ; preds = %.lr.ph, %bb.az
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.az ]
  %i.dy = phi i8 [ %i.du, %.lr.ph ], [ %i.dx, %bb.az ]
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !32
  %i.ec = and i16 %i.eb, 8192
  %.not111 = icmp eq i16 %i.ec, 0
  br i1 %.not111, label %.critedge5, label %bb.az

.critedge5:                                       ; preds = %bb.ba
  %i.ed = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #23 ; 2 uses
  %i.ee = shl i64 %i.ed, 32
  %sext113 = add i64 %i.ee, 4294967296
  %i.ef = ashr exact i64 %sext113, 32             ; 2 uses
  %i.eg = call noalias ptr @malloc(i64 noundef %i.ef) #24 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.critedge5
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.ej = call i64 @fwrite(ptr nonnull @.str.162, i64 14, i64 1, ptr %i.ei) #27 ; 0 uses
  call void @exit(i32 noundef 1) #26
  unreachable

bb.bc:                                            ; preds = %.critedge5
  %i.ek = trunc i64 %i.ed to i32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull align 1 %.0.i, i64 %i.ef, i1 false)
  %.pre265 = sext i32 %.091.ph172 to i64
  br label %bb.bg

bb.bd:                                            ; preds = %_is_command_terminator.exit.thread.thread, %_is_command_terminator.exit.thread
  %i.el = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #23 ; 2 uses
  %i.em = trunc i64 %i.el to i32                  ; 2 uses
  %i.en = add i32 %.091.ph172, 2
  %i.eo = add i32 %i.en, %i.em
  %i.ep = sext i32 %i.eo to i64
  %i.eq = call ptr @realloc(ptr noundef nonnull %.095.ph, i64 noundef %i.ep) #30 ; 4 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.es = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.et = load ptr, ptr @Argv0, align 8, !tbaa !8
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.es, ptr noundef nonnull @.str.33, ptr noundef %i.et) #25 ; 0 uses
  call void @exit(i32 noundef 1) #26
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ev = add nsw i32 %.091.ph172, 1              ; 2 uses
  %i.ew = sext i32 %.091.ph172 to i64             ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.eq, i64 %i.ew
  store i8 10, ptr %i.ex, align 1, !tbaa !16
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr inbounds i8, ptr %i.eq, i64 %i.ey
  %i.fa = shl i64 %i.el, 32
  %sext = add i64 %i.fa, 4294967296
  %i.fb = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr nonnull align 1 %.0.i, i64 %i.fb, i1 false)
  %i.fc = add nsw i32 %i.ev, %i.em
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %.pre-phi = phi i64 [ %i.ew, %bb.bf ], [ %.pre265, %bb.bc ]
  %.297.ph = phi ptr [ %i.eq, %bb.bf ], [ %i.eg, %bb.bc ] ; 7 uses
  %.293.ph = phi i32 [ %i.fc, %bb.bf ], [ %i.ek, %bb.bc ] ; 4 uses
  %.2.ph = phi i32 [ %.085.ph, %bb.bf ], [ %i.x, %bb.bc ] ; 5 uses
  %i.fd = getelementptr inbounds i8, ptr %.297.ph, i64 %.pre-phi
  %i.fe = sub nsw i32 %.293.ph, %.091.ph172       ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.preheader.i, label %_contains_semicolon.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.bg
  %wide.trip.count.i = zext nneg i32 %i.fe to i64
  br label %.lr.ph.i124

bb.bh:                                            ; preds = %.lr.ph.i124
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_contains_semicolon.exit.thread, label %.lr.ph.i124, !llvm.loop !96

.lr.ph.i124:                                      ; preds = %bb.bh, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.bh ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %indvars.iv.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !16
  %i.fi = icmp eq i8 %i.fh, 59
  br i1 %i.fi, label %_contains_semicolon.exit, label %bb.bh

_contains_semicolon.exit:                         ; preds = %.lr.ph.i124
  %i.fj = call i32 @sqlite3_complete(ptr noundef nonnull %.297.ph) #22
  %.not116 = icmp eq i32 %i.fj, 0
  br i1 %.not116, label %_contains_semicolon.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %_contains_semicolon.exit
  store i32 0, ptr %i.f, align 4, !tbaa !43
  call fastcc void @open_db(ptr noundef %0)
  %i.fk = load i32, ptr @enableTimer, align 4, !tbaa !4
  %.not.i125 = icmp eq i32 %i.fk, 0
  br i1 %.not.i125, label %beginTimer.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fl = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull @sBegin) #22 ; 0 uses
  br label %beginTimer.exit

beginTimer.exit:                                  ; preds = %bb.bi, %bb.bj
  %i.fm = load ptr, ptr %0, align 8, !tbaa !27
  %i.fn = call i32 @sqlite3_exec(ptr noundef %i.fm, ptr noundef nonnull %.297.ph, ptr noundef nonnull @callback, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #22
  %i.fo = load i32, ptr @enableTimer, align 4, !tbaa !4
  %.not.i126 = icmp eq i32 %i.fo, 0
  br i1 %.not.i126, label %endTimer.exit, label %bb.bk

bb.bk:                                            ; preds = %beginTimer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.fp = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %2) #22 ; 0 uses
  %sBegin.val.i = load i64, ptr @sBegin, align 8, !tbaa !97
  %sBegin.val4.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sBegin, i64 8), align 8, !tbaa !100
  %.val5.i = load i64, ptr %2, align 8, !tbaa !97
  %.val6.i = load i64, ptr %i.g, align 8, !tbaa !100
  %i.fq = sub i64 %.val6.i, %sBegin.val4.i
  %i.fr = sub nsw i64 %.val5.i, %sBegin.val.i
  %i.fs = mul nsw i64 %i.fr, 1000000
  %i.ft = add nsw i64 %i.fq, %i.fs
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = sitofp i32 %i.fu to double
  %i.fw = fmul nnan double %i.fv, f0x3EB0C6F7A0B5ED8D
  %.val.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sBegin, i64 16), align 8, !tbaa !97
  %.val1.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @sBegin, i64 24), align 8, !tbaa !100
  %.val2.i = load i64, ptr %i.h, align 8, !tbaa !97
  %.val3.i = load i64, ptr %i.i, align 8, !tbaa !100
  %i.fx = sub i64 %.val3.i, %.val1.i
  %i.fy = sub nsw i64 %.val2.i, %.val.i
  %i.fz = mul nsw i64 %i.fy, 1000000
  %i.ga = add nsw i64 %i.fx, %i.fz
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = sitofp i32 %i.gb to double
  %i.gd = fmul nnan double %i.gc, f0x3EB0C6F7A0B5ED8D
  %i.ge = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.167, double noundef %i.fw, double noundef %i.gd) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %endTimer.exit

endTimer.exit:                                    ; preds = %beginTimer.exit, %bb.bk
  %i.gf = icmp ne i32 %i.fn, 0
  %i.gg = load ptr, ptr %i.a, align 8
  %i.gh = icmp ne ptr %i.gg, null
  %or.cond7 = select i1 %i.gf, i1 true, i1 %i.gh
  br i1 %or.cond7, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %endTimer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.gi = load i32, ptr @stdin_is_interactive, align 4
  %i.gj = icmp ne i32 %i.gi, 0
  %or.cond9 = select i1 %i.c, i1 %i.gj, i1 false
  br i1 %or.cond9, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gk = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.163, i32 noundef %.2.ph) #22 ; 0 uses
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.gl = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.164) #22 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.not117 = icmp eq ptr %i.gm, null
  br i1 %.not117, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, ptr noundef nonnull %i.b, ptr noundef nonnull %i.gm) ; 0 uses
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !8
  call void @sqlite3_free(ptr noundef %i.go) #22
  store ptr null, ptr %i.a, align 8, !tbaa !8
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.gp = load ptr, ptr %0, align 8, !tbaa !27
  %i.gq = call ptr @sqlite3_errmsg(ptr noundef %i.gp) #22
  %i.gr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, ptr noundef nonnull %i.b, ptr noundef %i.gq) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gs = add nsw i32 %.088.ph173.ph, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bs

bb.bs:                                            ; preds = %endTimer.exit, %bb.br
  %.290 = phi i32 [ %i.gs, %bb.br ], [ %.088.ph173.ph, %endTimer.exit ]
  call void @free(ptr noundef nonnull %.297.ph) #22
  br label %_contains_semicolon.exit.thread

_contains_semicolon.exit.thread:                  ; preds = %bb.az, %bb.bh, %.preheader, %bb.bg, %bb.bs, %_contains_semicolon.exit
  %.2152 = phi i32 [ %.2.ph, %bb.bs ], [ %.2.ph, %_contains_semicolon.exit ], [ %.085.ph, %.preheader ], [ %.2.ph, %bb.bg ], [ %.2.ph, %bb.bh ], [ %.085.ph, %bb.az ]
  %.398 = phi ptr [ null, %bb.bs ], [ %.297.ph, %_contains_semicolon.exit ], [ null, %.preheader ], [ %.297.ph, %bb.bg ], [ %.297.ph, %bb.bh ], [ null, %bb.az ]
  %.394 = phi i32 [ 0, %bb.bs ], [ %.293.ph, %_contains_semicolon.exit ], [ %.091.ph172, %.preheader ], [ %.293.ph, %bb.bg ], [ %.293.ph, %bb.bh ], [ %.091.ph172, %bb.az ]
  %.3 = phi i32 [ %.290, %bb.bs ], [ %.088.ph173.ph, %_contains_semicolon.exit ], [ %.088.ph173.ph, %.preheader ], [ %.088.ph173.ph, %bb.bg ], [ %.088.ph173.ph, %bb.bh ], [ %.088.ph173.ph, %bb.az ]
  br label %.outer, !llvm.loop !93

.loopexit177:                                     ; preds = %bb.ax, %bb.j, %one_input_line.exit, %bb.c
  %.1 = phi ptr [ null, %one_input_line.exit ], [ %.0, %bb.c ], [ %.0.i, %bb.j ], [ %.0.i, %bb.ax ]
  br i1 %.not10.i, label %bb.ce, label %bb.bt

bb.bt:                                            ; preds = %.loopexit177
  %i.gt = load i8, ptr %.095.ph, align 1, !tbaa !16 ; 2 uses
  %.not37.i127 = icmp eq i8 %i.gt, 0
  br i1 %.not37.i127, label %_all_whitespace.exit140, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.bt
  %i.gu = tail call ptr @__ctype_b_loc() #29
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !30
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.i131, %.lr.ph.i128
  %i.gw = phi i8 [ %i.gt, %.lr.ph.i128 ], [ %i.hr, %.loopexit.i131 ] ; 2 uses
  %.038.i129 = phi ptr [ %.095.ph, %.lr.ph.i128 ], [ %i.hq, %.loopexit.i131 ] ; 5 uses
  %i.gx = zext i8 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !32
  %i.ha = and i16 %i.gz, 8192
  %.not27.i130 = icmp eq i16 %i.ha, 0
  br i1 %.not27.i130, label %bb.bv, label %.loopexit.i131

bb.bv:                                            ; preds = %bb.bu
  switch i8 %i.gw, label %.loopexit [
    i8 47, label %bb.bw
    i8 45, label %bb.ca
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.hb = getelementptr inbounds nuw i8, ptr %.038.i129, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !16
  %i.hd = icmp eq i8 %i.hc, 42
  br i1 %i.hd, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.he = getelementptr inbounds nuw i8, ptr %.038.i129, i64 2
  br label %bb.by

bb.by:                                            ; preds = %.critedge2.i138, %bb.bx
  %.1.i136 = phi ptr [ %i.he, %bb.bx ], [ %i.hi, %.critedge2.i138 ] ; 4 uses
  %i.hf = load i8, ptr %.1.i136, align 1, !tbaa !16
  switch i8 %i.hf, label %.critedge2.i138 [
    i8 0, label %.loopexit
    i8 42, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by
  %i.hg = getelementptr inbounds nuw i8, ptr %.1.i136, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !16
  %.not32.i137 = icmp eq i8 %i.hh, 47
  br i1 %.not32.i137, label %.loopexit.i131.loopexit, label %.critedge2.i138

.critedge2.i138:                                  ; preds = %bb.bz, %bb.by
  %i.hi = getelementptr inbounds nuw i8, ptr %.1.i136, i64 1
  br label %bb.by, !llvm.loop !90

bb.ca:                                            ; preds = %bb.bv
  %i.hj = getelementptr inbounds nuw i8, ptr %.038.i129, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !16
  %i.hl = icmp eq i8 %i.hk, 45
  br i1 %i.hl, label %bb.cb, label %.loopexit

bb.cb:                                            ; preds = %bb.ca
  %i.hm = getelementptr inbounds nuw i8, ptr %.038.i129, i64 2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  %.2.i135 = phi ptr [ %i.hm, %bb.cb ], [ %i.ho, %bb.cd ] ; 3 uses
  %i.hn = load i8, ptr %.2.i135, align 1, !tbaa !16
  switch i8 %i.hn, label %bb.cd [
    i8 0, label %_all_whitespace.exit140
    i8 10, label %.loopexit.i131
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.ho = getelementptr inbounds nuw i8, ptr %.2.i135, i64 1
  br label %bb.cc, !llvm.loop !91

.loopexit.i131.loopexit:                          ; preds = %bb.bz
  %i.hp = getelementptr inbounds nuw i8, ptr %.1.i136, i64 1
  br label %.loopexit.i131

.loopexit.i131:                                   ; preds = %bb.cc, %.loopexit.i131.loopexit, %bb.bu
  %.3.i132 = phi ptr [ %.038.i129, %bb.bu ], [ %i.hp, %.loopexit.i131.loopexit ], [ %.2.i135, %bb.cc ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.3.i132, i64 1 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !16  ; 2 uses
  %.not.i133 = icmp eq i8 %i.hr, 0
  br i1 %.not.i133, label %_all_whitespace.exit140, label %bb.bu, !llvm.loop !92

.loopexit:                                        ; preds = %bb.ca, %bb.bw, %bb.bv, %bb.by
  %i.hs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.166, ptr noundef nonnull %.095.ph) ; 0 uses
  br label %_all_whitespace.exit140

_all_whitespace.exit140:                          ; preds = %.loopexit.i131, %bb.cc, %bb.bt, %.loopexit
  call void @free(ptr noundef %.095.ph) #22
  br label %bb.ce

bb.ce:                                            ; preds = %_all_whitespace.exit140, %.loopexit177
  call void @free(ptr noundef %.1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.088.ph173.ph
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @set_table_name(ptr noundef nonnull captures(none) %0, ptr noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #22
  store ptr null, ptr %i.a, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__ctype_b_loc() #29
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !16      ; 4 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !32
  %i.j = and i16 %i.i, 1024
  %.not50 = icmp eq i16 %i.j, 0
  %i.k = icmp ne i8 %i.f, 95
  %narrow = and i1 %i.k, %.not50
  %i.l = zext i1 %narrow to i32                   ; 2 uses
  %.not5158 = icmp eq i8 %i.f, 0
  br i1 %.not5158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ]
  %i.m = phi i8 [ %i.u, %.lr.ph ], [ %i.f, %bb.d ] ; 3 uses
  %.04060 = phi i32 [ %.141, %.lr.ph ], [ %i.l, %bb.d ]
  %.04259 = phi i32 [ %i.s, %.lr.ph ], [ 0, %bb.d ]
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !32
  %i.q = and i16 %i.p, 8
  %.not54 = icmp eq i16 %i.q, 0                   ; 2 uses
  %.not55 = icmp ne i8 %i.m, 95
  %or.cond.not = and i1 %.not55, %.not54
  %i.r = icmp eq i8 %i.m, 39
  %narrow57 = and i1 %i.r, %.not54
  %spec.select = zext i1 %narrow57 to i32
  %.141 = select i1 %or.cond.not, i32 1, i32 %.04060 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.143 = add i32 %.04259, 1
  %i.s = add i32 %.143, %spec.select              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 2 uses
  %.not51 = icmp eq i8 %i.u, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph, !llvm.loop !101

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.042.lcssa = phi i32 [ 0, %bb.d ], [ %i.s, %.lr.ph ]
  %.040.lcssa = phi i32 [ %i.l, %bb.d ], [ %.141, %.lr.ph ]
  %.not52 = icmp eq i32 %.040.lcssa, 0            ; 3 uses
  %i.v = select i1 %.not52, i32 1, i32 3
  %i.w = add i32 %i.v, %.042.lcssa
  %i.x = sext i32 %i.w to i64
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #24 ; 7 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !28
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.ab = tail call i64 @fwrite(ptr nonnull @.str.168, i64 15, i64 1, ptr %i.aa) #27 ; 0 uses
  tail call void @exit(i32 noundef 1) #26
  unreachable

bb.f:                                             ; preds = %._crit_edge
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 39, ptr %i.y, align 1, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi i32 [ 1, %bb.g ], [ 0, %bb.f ]        ; 2 uses
  %i.ac = load i8, ptr %1, align 1, !tbaa !16     ; 2 uses
  %.not5363 = icmp eq i8 %i.ac, 0
  br i1 %.not5363, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.h, %bb.j
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %bb.j ], [ 0, %bb.h ]
  %i.ad = phi i8 [ %i.am, %bb.j ], [ %i.ac, %bb.h ] ; 2 uses
  %.464 = phi i32 [ %.5, %bb.j ], [ %.3, %bb.h ]  ; 3 uses
  %i.ae = add nsw i32 %.464, 1                    ; 2 uses
  %i.af = sext i32 %.464 to i64
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !16
  %i.ah = icmp eq i8 %i.ad, 39
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph67
  %i.ai = add nsw i32 %.464, 2
  %i.aj = sext i32 %i.ae to i64
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 %i.aj
  store i8 39, ptr %i.ak, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph67, %bb.i
  %.5 = phi i32 [ %i.ai, %bb.i ], [ %i.ae, %.lr.ph67 ] ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next71
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16  ; 2 uses
  %.not53 = icmp eq i8 %i.am, 0
  br i1 %.not53, label %._crit_edge68, label %.lr.ph67, !llvm.loop !102

._crit_edge68:                                    ; preds = %bb.j, %bb.h
  %.4.lcssa = phi i32 [ %.3, %bb.h ], [ %.5, %bb.j ] ; 3 uses
  br i1 %.not52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge68
  %i.an = add nsw i32 %.4.lcssa, 1
  %i.ao = sext i32 %.4.lcssa to i64
  %i.ap = getelementptr inbounds i8, ptr %i.y, i64 %i.ao
  store i8 39, ptr %i.ap, align 1, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge68
  %.6 = phi i32 [ %i.an, %bb.k ], [ %.4.lcssa, %._crit_edge68 ]
  %i.aq = sext i32 %.6 to i64
  %i.ar = getelementptr inbounds i8, ptr %i.y, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l
  ret void
}

declare i32 @sqlite3_close(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @sqlite3_interrupt(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_open(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_create_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @shellstaticFunc(ptr noundef %0, i32 %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr @zShellStatic, align 8, !tbaa !8
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef %i.a, i32 noundef -1, ptr noundef null) #22
  ret void
}

declare i32 @sqlite3_errcode(ptr noundef) local_unnamed_addr #5

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @booleanValue(ptr noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @strtol(ptr noundef nonnull captures(none) %0, ptr noundef null, i32 noundef 10) #22, !inline_history !39
  %i.b = trunc i64 %i.a to i32
  %i.c = load i8, ptr %0, align 1, !tbaa !16      ; 2 uses
  %.not14 = icmp eq i8 %i.c, 0
  br i1 %.not14, label %.tail.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = tail call ptr @__ctype_tolower_loc() #29
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = phi i8 [ %i.c, %.lr.ph ], [ %i.m, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.h = sext i8 %i.e to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %i.f, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16    ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %sub_0, label %bb.b, !llvm.loop !42

sub_0:                                            ; preds = %bb.b
  %.pre = load i8, ptr %0, align 1
  %i.n = icmp eq i8 %.pre, 111
  br i1 %i.n, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %.not17 = icmp eq i8 %i.p, 110
  br i1 %.not17, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.c, label %.tail.thread

.tail.thread:                                     ; preds = %bb.a, %sub_1, %sub_0, %.tail
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.119) #23
  %i.u = icmp eq i32 %i.t, 0
  %spec.select = select i1 %i.u, i32 1, i32 %i.b
  br label %bb.c

bb.c:                                             ; preds = %.tail.thread, %.tail
  %.0 = phi i32 [ %spec.select, %.tail.thread ], [ 1, %.tail ]
  ret i32 %.0
}

declare void @sqlite3_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @run_schema_dump_query(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = tail call i32 @sqlite3_exec(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull @dump_callback, ptr noundef nonnull %0, ptr noundef null) #22
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.e = shl i64 %i.d, 32
  %sext = add i64 %i.e, 429496729600
  %i.f = ashr exact i64 %sext, 32
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #24 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 8, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.120, ptr noundef nonnull %1) #22 ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !27
  %i.j = tail call i32 @sqlite3_exec(ptr noundef %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull @dump_callback, ptr noundef nonnull %0, ptr noundef null) #22 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.g) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @run_table_dump_query(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call i32 @sqlite3_prepare(ptr noundef %1, ptr noundef %2, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #22 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @sqlite3_step(ptr noundef nonnull %i.d) #22
  %i.g = icmp eq i32 %i.f, 100
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.i = call ptr @sqlite3_column_text(ptr noundef %i.h, i32 noundef 0) #22
  %i.j = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.129, ptr noundef %i.i) #22 ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.l = call i32 @sqlite3_step(ptr noundef %i.k) #22
  %i.m = icmp eq i32 %i.l, 100
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.o = call i32 @sqlite3_finalize(ptr noundef %i.n) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.07 = phi i32 [ %i.o, %._crit_edge ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.07
}

declare ptr @sqlite3_mprintf(ptr noundef, ...) local_unnamed_addr #5

declare i32 @sqlite3_prepare(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_count(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @local_getline(ptr noundef %0, ptr noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !16
  %.not44 = icmp eq i8 %i.a, 0
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, ptr noundef nonnull %0) ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.d = tail call i32 @fflush(ptr noundef %i.c)  ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #24 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit48, label %.preheader47

.preheader47:                                     ; preds = %bb.d, %.preheader47.backedge
  %.03356 = phi i32 [ %i.t, %.preheader47.backedge ], [ 0, %bb.d ] ; 6 uses
  %.03555 = phi i32 [ %.136, %.preheader47.backedge ], [ 100, %bb.d ] ; 3 uses
  %.03754 = phi ptr [ %.138, %.preheader47.backedge ], [ %i.e, %bb.d ] ; 2 uses
  %i.g = add nsw i32 %.03356, 100
  %i.h = icmp sgt i32 %i.g, %.03555
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader47
  %i.i = shl nsw i32 %.03555, 1
  %i.j = add nsw i32 %i.i, 100                    ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = tail call ptr @realloc(ptr noundef %.03754, i64 noundef %i.k) #30 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit48, label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader47
  %.138 = phi ptr [ %i.l, %bb.e ], [ %.03754, %.preheader47 ] ; 6 uses
  %.136 = phi i32 [ %i.j, %bb.e ], [ %.03555, %.preheader47 ] ; 2 uses
  %i.n = sext i32 %.03356 to i64
  %i.o = getelementptr i8, ptr %.138, i64 %i.n    ; 3 uses
  %i.p = sub nsw i32 %.136, %.03356
  %i.q = tail call ptr @fgets(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %1)
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.o)
  %i.s = trunc i64 %strlen to i32
  %i.t = add i32 %.03356, %i.s                    ; 5 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %.preheader47.backedge

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i32 %.03356, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %.138) #22
  br label %.loopexit48

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.o, align 1, !tbaa !16
  %i.w = add nsw i32 %.03356, 1
  br label %.loopexit

bb.j:                                             ; preds = %.preheader.preheader
  %i.x = zext nneg i32 %i.t to i64
  %i.y = getelementptr i8, ptr %.138, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %i.ab = icmp eq i8 %i.aa, 10
  br i1 %i.ab, label %.loopexit.loopexit, label %.preheader47.backedge

.preheader47.backedge:                            ; preds = %bb.j, %.preheader.preheader
  br label %.preheader47, !llvm.loop !104

.loopexit.loopexit:                               ; preds = %bb.j
  %i.ac = zext nneg i32 %i.t to i64
  %i.ad = getelementptr i8, ptr %.138, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  store i8 0, ptr %i.ae, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.i
  %.03351 = phi i32 [ %i.w, %bb.i ], [ %i.t, %.loopexit.loopexit ]
  %i.af = sext i32 %.03351 to i64
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %.138, i64 noundef %i.af) #30
  br label %.loopexit48

.loopexit48:                                      ; preds = %bb.e, %bb.d, %.loopexit, %bb.h
  %.040 = phi ptr [ %i.ag, %.loopexit ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.e ]
  ret ptr %.040
}

declare i32 @sqlite3_bind_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @output_c_string(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @fputc(i32 noundef 34, ptr noundef %0) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.b, %.backedge ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.c = load i8, ptr %.0, align 1, !tbaa !16     ; 3 uses
  %i.d = sext i8 %i.c to i32                      ; 2 uses
  switch i8 %i.c, label %bb.g [
    i8 0, label %bb.j
    i8 92, label %bb.c
    i8 9, label %bb.d
    i8 10, label %bb.e
    i8 13, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @fputc(i32 noundef 92, ptr noundef %0) ; 0 uses
  %i.f = tail call i32 @fputc(i32 noundef 92, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @fputc(i32 noundef 92, ptr noundef %0) ; 0 uses
  %i.h = tail call i32 @fputc(i32 noundef 116, ptr noundef %0) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.f, %bb.i, %bb.h, %bb.e, %bb.c
  br label %bb.b, !llvm.loop !105

bb.e:                                             ; preds = %bb.b
  %i.i = tail call i32 @fputc(i32 noundef 92, ptr noundef %0) ; 0 uses
  %i.j = tail call i32 @fputc(i32 noundef 110, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.k = tail call i32 @fputc(i32 noundef 92, ptr noundef %0) ; 0 uses
  %i.l = tail call i32 @fputc(i32 noundef 114, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.m = tail call ptr @__ctype_b_loc() #29
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = sext i8 %i.c to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !32
  %i.r = and i16 %i.q, 16384
  %.not22 = icmp eq i16 %i.r, 0
  br i1 %.not22, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = and i32 %i.d, 255
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.140, i32 noundef %i.s) #22 ; 0 uses
  br label %.backedge

bb.i:                                             ; preds = %bb.g
  %i.u = tail call i32 @fputc(i32 noundef %i.d, ptr noundef %0) ; 0 uses
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  %i.v = tail call i32 @fputc(i32 noundef 34, ptr noundef %0) ; 0 uses
  ret void
}

declare i32 @sqlite3_get_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sqlite3_free_table(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_busy_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dump_callback(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %.not = icmp eq i32 %1, 3
  br i1 %.not, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !8      ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(16) @.str.121) #23
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = tail call i64 @fwrite(ptr nonnull @.str.122, i64 29, i64 1, ptr %i.j) ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(13) @.str.123) #23
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = tail call i64 @fwrite(ptr nonnull @.str.124, i64 23, i64 1, ptr %i.o) ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.q = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(8) @.str.125, i64 noundef 7) #23
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.bk, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(21) @.str.126, i64 noundef 20) #23
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !44
  %.not69 = icmp eq i32 %i.v, 0
  br i1 %.not69, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = tail call i64 @fwrite(ptr nonnull @.str.127, i64 27, i64 1, ptr %i.x) ; 0 uses
  store i32 1, ptr %i.u, align 4, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.128, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #22 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.16, ptr noundef %i.z) #22 ; 0 uses
  tail call void @sqlite3_free(ptr noundef %i.z) #22
  br label %bb.bk

bb.k:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.129, ptr noundef nonnull %i.f) #22 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.c
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(6) @.str.81) #23
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.bk

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !49
  %malloc = tail call dereferenceable_or_null(19) ptr @malloc(i64 19) ; 5 uses
  %.not5355.i = icmp eq ptr %malloc, null
  br i1 %.not5355.i, label %appendText.exit.thread, label %bb.n

appendText.exit.thread:                           ; preds = %bb.m
  %i.ai = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %malloc, ptr noundef nonnull align 1 dereferenceable(18) @.str.130, i64 18, i1 false)
  %i.aj = getelementptr i8, ptr %malloc, i64 18
  store i8 0, ptr %i.aj, align 1, !tbaa !16
  %i.ak = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #23
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %malloc) #23
  %i.am = trunc i64 %i.al to i32
  br label %bb.o

bb.o:                                             ; preds = %appendText.exit.thread, %bb.n
  %i.an = phi i64 [ %i.ak, %bb.n ], [ %i.ai, %appendText.exit.thread ] ; 7 uses
  %i.ao = phi i32 [ %i.am, %bb.n ], [ 0, %appendText.exit.thread ] ; 2 uses
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  %i.aq = add i32 %i.ap, 3
  %i.ar = add i32 %i.aq, %i.ao                    ; 3 uses
  %i.as = icmp sgt i32 %i.ap, 0                   ; 2 uses
  br i1 %i.as, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %wide.trip.count.i = and i64 %i.an, 2147483647  ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.an, 2147483640              ; 3 uses
  %i.at = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ar, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.at, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi255 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %wide.load = load <4 x i8>, ptr %i.au, align 1, !tbaa !16
  %wide.load256 = load <4 x i8>, ptr %i.av, align 1, !tbaa !16
  %i.aw = icmp eq <4 x i8> %wide.load, splat (i8 34)
  %i.ax = icmp eq <4 x i8> %wide.load256, splat (i8 34)
  %i.ay = zext <4 x i1> %i.aw to <4 x i32>
  %i.az = zext <4 x i1> %i.ax to <4 x i32>
  %i.ba = add <4 x i32> %vec.phi, %i.ay           ; 2 uses
  %i.bb = add <4 x i32> %vec.phi255, %i.az        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.04657.i.ph = phi i32 [ %i.ar, %.lr.ph.preheader.i ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.04657.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.04657.i.ph, %.lr.ph.i.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16
  %i.bg = icmp eq i8 %i.bf, 34
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i = add nsw i32 %.04657.i, %i.bh   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !107

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.o
  %.046.lcssa.i = phi i32 [ %i.ar, %bb.o ], [ %i.bd, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.bi = sext i32 %.046.lcssa.i to i64
  %i.bj = tail call ptr @realloc(ptr noundef %malloc, i64 noundef %i.bi) #30 ; 4 uses
  %.not53.i = icmp eq ptr %i.bj, null
  br i1 %.not53.i, label %appendText.exit76.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.bk = sext i32 %i.ao to i64
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 3 uses
  store i8 34, ptr %i.bl, align 1, !tbaa !16
  br i1 %i.as, label %.lr.ph62.preheader.i, label %appendText.exit76

.lr.ph62.preheader.i:                             ; preds = %bb.p
  %wide.trip.count69.i = and i64 %i.an, 2147483647
  %xtraiter = and i64 %i.an, 1
  %i.bn = icmp eq i64 %wide.trip.count69.i, 1
  br i1 %i.bn, label %.lr.ph62.i.epil.preheader, label %.lr.ph62.preheader.i.new

.lr.ph62.preheader.i.new:                         ; preds = %.lr.ph62.preheader.i
  %unroll_iter = and i64 %i.an, 2147483646
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.s, %.lr.ph62.preheader.i.new
  %indvars.iv66.i = phi i64 [ 0, %.lr.ph62.preheader.i.new ], [ %indvars.iv.next67.i.1, %bb.s ] ; 3 uses
  %.060.i = phi ptr [ %i.bm, %.lr.ph62.preheader.i.new ], [ %.1.i.1, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph62.preheader.i.new ], [ %niter.next.1, %bb.s ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv66.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.060.i, i64 1 ; 2 uses
  store i8 %i.bp, ptr %.060.i, align 1, !tbaa !16
  %i.br = icmp eq i8 %i.bp, 34
  br i1 %i.br, label %bb.q, label %.lr.ph62.i.1

bb.q:                                             ; preds = %.lr.ph62.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.060.i, i64 2
  store i8 34, ptr %i.bq, align 1, !tbaa !16
  br label %.lr.ph62.i.1

.lr.ph62.i.1:                                     ; preds = %bb.q, %.lr.ph62.i
  %.1.i = phi ptr [ %i.bs, %bb.q ], [ %i.bq, %.lr.ph62.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv66.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  store i8 %i.bv, ptr %.1.i, align 1, !tbaa !16
  %i.bx = icmp eq i8 %i.bv, 34
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph62.i.1
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 34, ptr %i.bw, align 1, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph62.i.1
  %.1.i.1 = phi ptr [ %i.by, %bb.r ], [ %i.bw, %.lr.ph62.i.1 ] ; 3 uses
  %indvars.iv.next67.i.1 = add nuw nsw i64 %indvars.iv66.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %appendText.exit76.loopexit.unr-lcssa, label %.lr.ph62.i, !llvm.loop !108

appendText.exit76.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %appendText.exit76, label %.lr.ph62.i.epil.preheader

.lr.ph62.i.epil.preheader:                        ; preds = %appendText.exit76.loopexit.unr-lcssa, %.lr.ph62.preheader.i
  %indvars.iv66.i.epil.init = phi i64 [ 0, %.lr.ph62.preheader.i ], [ %indvars.iv.next67.i.1, %appendText.exit76.loopexit.unr-lcssa ]
  %.060.i.epil.init = phi ptr [ %i.bm, %.lr.ph62.preheader.i ], [ %.1.i.1, %appendText.exit76.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod336 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv66.i.epil.init
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.060.i.epil.init, i64 1 ; 2 uses
  store i8 %i.ca, ptr %.060.i.epil.init, align 1, !tbaa !16
  %i.cc = icmp eq i8 %i.ca, 34
  br i1 %i.cc, label %bb.t, label %appendText.exit76

bb.t:                                             ; preds = %.lr.ph62.i.epil.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.060.i.epil.init, i64 2
  store i8 34, ptr %i.cb, align 1, !tbaa !16
  br label %appendText.exit76

appendText.exit76:                                ; preds = %appendText.exit76.loopexit.unr-lcssa, %bb.t, %.lr.ph62.i.epil.preheader, %bb.p
  %.0.lcssa.i = phi ptr [ %i.bm, %bb.p ], [ %.1.i.1, %appendText.exit76.loopexit.unr-lcssa ], [ %i.cd, %bb.t ], [ %i.cb, %.lr.ph62.i.epil.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  store i8 34, ptr %.0.lcssa.i, align 1, !tbaa !16
  store i8 0, ptr %i.ce, align 1, !tbaa !16
  %i.cf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bj) #23
  %i.cg = trunc i64 %i.cf to i32
  br label %appendText.exit76.thread

appendText.exit76.thread:                         ; preds = %._crit_edge.i, %appendText.exit76
  %i.ch = phi i32 [ %i.cg, %appendText.exit76 ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ci = add nsw i32 %i.ch, 3
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = tail call ptr @realloc(ptr noundef %i.bj, i64 noundef %i.cj) #30 ; 5 uses
  %.not5355.i78 = icmp eq ptr %i.ck, null
  br i1 %.not5355.i78, label %appendText.exit82.thread, label %bb.u

appendText.exit82.thread:                         ; preds = %appendText.exit76.thread
  %i.cl = load ptr, ptr %0, align 8, !tbaa !27
  %i.cm = call i32 @sqlite3_prepare(ptr noundef %i.cl, ptr noundef null, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #22
  br label %bb.v

bb.u:                                             ; preds = %appendText.exit76.thread
  %i.cn = sext i32 %i.ch to i64
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %i.cn
  store i16 15145, ptr %i.co, align 1
  %i.cp = getelementptr i8, ptr %i.ck, i64 %i.cj
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  store i8 0, ptr %i.cq, align 1, !tbaa !16
  %i.cr = load ptr, ptr %0, align 8, !tbaa !27
  %i.cs = call i32 @sqlite3_prepare(ptr noundef %i.cr, ptr noundef nonnull %i.ck, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #22
  call void @free(ptr noundef nonnull %i.ck) #22
  br label %bb.v

bb.v:                                             ; preds = %appendText.exit82.thread, %bb.u
  %i.ct = phi i32 [ %i.cm, %appendText.exit82.thread ], [ %i.cs, %bb.u ]
  %i.cu = icmp eq i32 %i.ct, 0
  %i.cv = load ptr, ptr %i.a, align 8
  %i.cw = icmp ne ptr %i.cv, null
  %or.cond = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %malloc235 = call dereferenceable_or_null(26) ptr @malloc(i64 26) ; 6 uses
  %.not5355.i83 = icmp eq ptr %malloc235, null    ; 2 uses
  br i1 %.not5355.i83, label %appendText.exit87, label %.thread56.i84

.thread56.i84:                                    ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %malloc235, ptr noundef nonnull align 1 dereferenceable(25) @.str.132, i64 25, i1 false)
  %i.cx = getelementptr i8, ptr %malloc235, i64 25
  store i8 0, ptr %i.cx, align 1, !tbaa !16
  br label %appendText.exit87

appendText.exit87:                                ; preds = %bb.w, %.thread56.i84
  %i.cy = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #23 ; 7 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = add nsw i32 %i.cz, 3                    ; 3 uses
  %i.db = icmp sgt i32 %i.cz, 0                   ; 2 uses
  br i1 %i.db, label %.lr.ph.preheader.i102, label %._crit_edge.i88

.lr.ph.preheader.i102:                            ; preds = %appendText.exit87
  %wide.trip.count.i103 = and i64 %i.cy, 2147483647 ; 3 uses
  %min.iters.check258 = icmp samesign ult i64 %wide.trip.count.i103, 8
  br i1 %min.iters.check258, label %.lr.ph.i104.preheader, label %vector.ph259

vector.ph259:                                     ; preds = %.lr.ph.preheader.i102
  %n.vec261 = and i64 %i.cy, 2147483640           ; 3 uses
  %i.dc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.da, i64 0
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph259
  %index263 = phi i64 [ 0, %vector.ph259 ], [ %index.next268, %vector.body262 ] ; 2 uses
  %vec.phi264 = phi <4 x i32> [ %i.dc, %vector.ph259 ], [ %i.dj, %vector.body262 ]
  %vec.phi265 = phi <4 x i32> [ zeroinitializer, %vector.ph259 ], [ %i.dk, %vector.body262 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 %index263 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %wide.load266 = load <4 x i8>, ptr %i.dd, align 1, !tbaa !16
  %wide.load267 = load <4 x i8>, ptr %i.de, align 1, !tbaa !16
  %i.df = icmp eq <4 x i8> %wide.load266, splat (i8 34)
  %i.dg = icmp eq <4 x i8> %wide.load267, splat (i8 34)
  %i.dh = zext <4 x i1> %i.df to <4 x i32>
  %i.di = zext <4 x i1> %i.dg to <4 x i32>
  %i.dj = add <4 x i32> %vec.phi264, %i.dh        ; 2 uses
  %i.dk = add <4 x i32> %vec.phi265, %i.di        ; 2 uses
  %index.next268 = add nuw i64 %index263, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.dl, label %middle.block269, label %vector.body262, !llvm.loop !109

middle.block269:                                  ; preds = %vector.body262
  %bin.rdx270 = add <4 x i32> %i.dk, %i.dj
  %i.dm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx270) ; 2 uses
  %cmp.n271 = icmp eq i64 %wide.trip.count.i103, %n.vec261
  br i1 %cmp.n271, label %._crit_edge.i88, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %.lr.ph.preheader.i102, %middle.block269
  %indvars.iv.i105.ph = phi i64 [ 0, %.lr.ph.preheader.i102 ], [ %n.vec261, %middle.block269 ]
  %.04657.i106.ph = phi i32 [ %i.da, %.lr.ph.preheader.i102 ], [ %i.dm, %middle.block269 ]
  br label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader, %.lr.ph.i104
  %indvars.iv.i105 = phi i64 [ %indvars.iv.next.i108, %.lr.ph.i104 ], [ %indvars.iv.i105.ph, %.lr.ph.i104.preheader ] ; 2 uses
  %.04657.i106 = phi i32 [ %spec.select.i107, %.lr.ph.i104 ], [ %.04657.i106.ph, %.lr.ph.i104.preheader ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i105
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = icmp eq i8 %i.do, 34
  %i.dq = zext i1 %i.dp to i32
  %spec.select.i107 = add nuw nsw i32 %.04657.i106, %i.dq ; 2 uses
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i105, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i103
  br i1 %exitcond.not.i109, label %._crit_edge.i88, label %.lr.ph.i104, !llvm.loop !110

._crit_edge.i88:                                  ; preds = %.lr.ph.i104, %middle.block269, %appendText.exit87
  %.046.lcssa.i89 = phi i32 [ %i.da, %appendText.exit87 ], [ %i.dm, %middle.block269 ], [ %spec.select.i107, %.lr.ph.i104 ]
  %i.dr = sext i32 %.046.lcssa.i89 to i64
  %malloc236 = call ptr @malloc(i64 %i.dr)        ; 10 uses
  %.not53.i90 = icmp eq ptr %malloc236, null
  br i1 %.not53.i90, label %appendText.exit134, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i88
  %i.ds = getelementptr inbounds nuw i8, ptr %malloc236, i64 1 ; 3 uses
  store i8 34, ptr %malloc236, align 1, !tbaa !16
  br i1 %i.db, label %.lr.ph62.preheader.i94, label %appendText.exit110.thread223

appendText.exit110.thread223:                     ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %malloc236, i64 2
  store i8 34, ptr %i.ds, align 1, !tbaa !16
  store i8 0, ptr %i.dt, align 1, !tbaa !16
  br label %bb.ac

.lr.ph62.preheader.i94:                           ; preds = %bb.x
  %wide.trip.count69.i95 = and i64 %i.cy, 2147483647
  %xtraiter337 = and i64 %i.cy, 1
  %i.du = icmp eq i64 %wide.trip.count69.i95, 1
  br i1 %i.du, label %.lr.ph62.i96.epil.preheader, label %.lr.ph62.preheader.i94.new

.lr.ph62.preheader.i94.new:                       ; preds = %.lr.ph62.preheader.i94
  %unroll_iter341 = and i64 %i.cy, 2147483646
  br label %.lr.ph62.i96

.lr.ph62.i96:                                     ; preds = %bb.aa, %.lr.ph62.preheader.i94.new
  %indvars.iv66.i97 = phi i64 [ 0, %.lr.ph62.preheader.i94.new ], [ %indvars.iv.next67.i100.1, %bb.aa ] ; 3 uses
  %.060.i98 = phi ptr [ %i.ds, %.lr.ph62.preheader.i94.new ], [ %.1.i99.1, %bb.aa ] ; 3 uses
  %niter342 = phi i64 [ 0, %.lr.ph62.preheader.i94.new ], [ %niter342.next.1, %bb.aa ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv66.i97
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.060.i98, i64 1 ; 2 uses
  store i8 %i.dw, ptr %.060.i98, align 1, !tbaa !16
  %i.dy = icmp eq i8 %i.dw, 34
  br i1 %i.dy, label %bb.y, label %.lr.ph62.i96.1

bb.y:                                             ; preds = %.lr.ph62.i96
  %i.dz = getelementptr inbounds nuw i8, ptr %.060.i98, i64 2
  store i8 34, ptr %i.dx, align 1, !tbaa !16
  br label %.lr.ph62.i96.1

.lr.ph62.i96.1:                                   ; preds = %bb.y, %.lr.ph62.i96
  %.1.i99 = phi ptr [ %i.dz, %bb.y ], [ %i.dx, %.lr.ph62.i96 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv66.i97
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !16  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.1.i99, i64 1 ; 2 uses
  store i8 %i.ec, ptr %.1.i99, align 1, !tbaa !16
  %i.ee = icmp eq i8 %i.ec, 34
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph62.i96.1
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i99, i64 2
  store i8 34, ptr %i.ed, align 1, !tbaa !16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph62.i96.1
  %.1.i99.1 = phi ptr [ %i.ef, %bb.z ], [ %i.ed, %.lr.ph62.i96.1 ] ; 3 uses
  %indvars.iv.next67.i100.1 = add nuw nsw i64 %indvars.iv66.i97, 2 ; 2 uses
  %niter342.next.1 = add i64 %niter342, 2         ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341
  br i1 %niter342.ncmp.1, label %appendText.exit110.unr-lcssa, label %.lr.ph62.i96, !llvm.loop !108

appendText.exit110.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %appendText.exit110, label %.lr.ph62.i96.epil.preheader

.lr.ph62.i96.epil.preheader:                      ; preds = %appendText.exit110.unr-lcssa, %.lr.ph62.preheader.i94
  %indvars.iv66.i97.epil.init = phi i64 [ 0, %.lr.ph62.preheader.i94 ], [ %indvars.iv.next67.i100.1, %appendText.exit110.unr-lcssa ]
  %.060.i98.epil.init = phi ptr [ %i.ds, %.lr.ph62.preheader.i94 ], [ %.1.i99.1, %appendText.exit110.unr-lcssa ] ; 3 uses
  %lcmp.mod340 = trunc i64 %i.cy to i1
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv66.i97.epil.init
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !16  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.060.i98.epil.init, i64 1 ; 2 uses
  store i8 %i.eh, ptr %.060.i98.epil.init, align 1, !tbaa !16
  %i.ej = icmp eq i8 %i.eh, 34
  br i1 %i.ej, label %bb.ab, label %appendText.exit110

bb.ab:                                            ; preds = %.lr.ph62.i96.epil.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %.060.i98.epil.init, i64 2
  store i8 34, ptr %i.ei, align 1, !tbaa !16
  br label %appendText.exit110

appendText.exit110:                               ; preds = %.lr.ph62.i96.epil.preheader, %bb.ab, %appendText.exit110.unr-lcssa
  %.1.i99.lcssa = phi ptr [ %.1.i99.1, %appendText.exit110.unr-lcssa ], [ %i.ek, %bb.ab ], [ %i.ei, %.lr.ph62.i96.epil.preheader ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1.i99.lcssa, i64 1
  store i8 34, ptr %.1.i99.lcssa, align 1, !tbaa !16
  store i8 0, ptr %i.el, align 1, !tbaa !16
  br label %bb.ac

bb.ac:                                            ; preds = %appendText.exit110, %appendText.exit110.thread223
  %i.em = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %malloc236) #23 ; 7 uses
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %.not5355.i83, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %malloc235) #23
  %i.ep = trunc i64 %i.eo to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eq = phi i32 [ %i.ep, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.er = add i32 %i.en, 3
  %i.es = add i32 %i.er, %i.eq                    ; 3 uses
  %i.et = icmp sgt i32 %i.en, 0                   ; 2 uses
  br i1 %i.et, label %.lr.ph.preheader.i126, label %._crit_edge.i112

.lr.ph.preheader.i126:                            ; preds = %bb.ae
  %wide.trip.count.i127 = and i64 %i.em, 2147483647 ; 3 uses
  %min.iters.check275 = icmp samesign ult i64 %wide.trip.count.i127, 8
  br i1 %min.iters.check275, label %.lr.ph.i128.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.preheader.i126
  %n.vec278 = and i64 %i.em, 2147483640           ; 3 uses
  %i.eu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.es, i64 0
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph276
  %index280 = phi i64 [ 0, %vector.ph276 ], [ %index.next285, %vector.body279 ] ; 2 uses
  %vec.phi281 = phi <4 x i32> [ %i.eu, %vector.ph276 ], [ %i.fb, %vector.body279 ]
  %vec.phi282 = phi <4 x i32> [ zeroinitializer, %vector.ph276 ], [ %i.fc, %vector.body279 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %malloc236, i64 %index280 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %wide.load283 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !16
  %wide.load284 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !16
  %i.ex = icmp eq <4 x i8> %wide.load283, splat (i8 39)
  %i.ey = icmp eq <4 x i8> %wide.load284, splat (i8 39)
  %i.ez = zext <4 x i1> %i.ex to <4 x i32>
  %i.fa = zext <4 x i1> %i.ey to <4 x i32>
  %i.fb = add <4 x i32> %vec.phi281, %i.ez        ; 2 uses
  %i.fc = add <4 x i32> %vec.phi282, %i.fa        ; 2 uses
  %index.next285 = add nuw i64 %index280, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next285, %n.vec278
  br i1 %i.fd, label %middle.block286, label %vector.body279, !llvm.loop !111

middle.block286:                                  ; preds = %vector.body279
  %bin.rdx287 = add <4 x i32> %i.fc, %i.fb
  %i.fe = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx287) ; 2 uses
  %cmp.n288 = icmp eq i64 %wide.trip.count.i127, %n.vec278
  br i1 %cmp.n288, label %._crit_edge.i112, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %.lr.ph.preheader.i126, %middle.block286
  %indvars.iv.i129.ph = phi i64 [ 0, %.lr.ph.preheader.i126 ], [ %n.vec278, %middle.block286 ]
  %.04657.i130.ph = phi i32 [ %i.es, %.lr.ph.preheader.i126 ], [ %i.fe, %middle.block286 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next.i132, %.lr.ph.i128 ], [ %indvars.iv.i129.ph, %.lr.ph.i128.preheader ] ; 2 uses
  %.04657.i130 = phi i32 [ %spec.select.i131, %.lr.ph.i128 ], [ %.04657.i130.ph, %.lr.ph.i128.preheader ]
  %i.ff = getelementptr inbounds nuw i8, ptr %malloc236, i64 %indvars.iv.i129
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !16
  %i.fh = icmp eq i8 %i.fg, 39
  %i.fi = zext i1 %i.fh to i32
  %spec.select.i131 = add nsw i32 %.04657.i130, %i.fi ; 2 uses
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %indvars.iv.next.i132, %wide.trip.count.i127
  br i1 %exitcond.not.i133, label %._crit_edge.i112, label %.lr.ph.i128, !llvm.loop !112

._crit_edge.i112:                                 ; preds = %.lr.ph.i128, %middle.block286, %bb.ae
  %.046.lcssa.i113 = phi i32 [ %i.es, %bb.ae ], [ %i.fe, %middle.block286 ], [ %spec.select.i131, %.lr.ph.i128 ]
  %i.fj = sext i32 %.046.lcssa.i113 to i64
  %i.fk = call ptr @realloc(ptr noundef %malloc235, i64 noundef %i.fj) #30 ; 3 uses
  %.not53.i114 = icmp eq ptr %i.fk, null
  br i1 %.not53.i114, label %appendText.exit134.thread, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i112
  %i.fl = sext i32 %i.eq to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1 ; 3 uses
  store i8 39, ptr %i.fm, align 1, !tbaa !16
  br i1 %i.et, label %.lr.ph62.preheader.i118, label %._crit_edge63.i115

.lr.ph62.preheader.i118:                          ; preds = %bb.af
  %wide.trip.count69.i119 = and i64 %i.em, 2147483647
  %xtraiter343 = and i64 %i.em, 1
  %i.fo = icmp eq i64 %wide.trip.count69.i119, 1
  br i1 %i.fo, label %.lr.ph62.i120.epil.preheader, label %.lr.ph62.preheader.i118.new

.lr.ph62.preheader.i118.new:                      ; preds = %.lr.ph62.preheader.i118
  %unroll_iter347 = and i64 %i.em, 2147483646
  br label %.lr.ph62.i120

.lr.ph62.i120:                                    ; preds = %bb.ai, %.lr.ph62.preheader.i118.new
  %indvars.iv66.i121 = phi i64 [ 0, %.lr.ph62.preheader.i118.new ], [ %indvars.iv.next67.i124.1, %bb.ai ] ; 3 uses
  %.060.i122 = phi ptr [ %i.fn, %.lr.ph62.preheader.i118.new ], [ %.1.i123.1, %bb.ai ] ; 3 uses
  %niter348 = phi i64 [ 0, %.lr.ph62.preheader.i118.new ], [ %niter348.next.1, %bb.ai ]
  %i.fp = getelementptr inbounds nuw i8, ptr %malloc236, i64 %indvars.iv66.i121
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !16  ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.060.i122, i64 1 ; 2 uses
  store i8 %i.fq, ptr %.060.i122, align 1, !tbaa !16
  %i.fs = icmp eq i8 %i.fq, 39
  br i1 %i.fs, label %bb.ag, label %.lr.ph62.i120.1

bb.ag:                                            ; preds = %.lr.ph62.i120
  %i.ft = getelementptr inbounds nuw i8, ptr %.060.i122, i64 2
  store i8 39, ptr %i.fr, align 1, !tbaa !16
  br label %.lr.ph62.i120.1

.lr.ph62.i120.1:                                  ; preds = %bb.ag, %.lr.ph62.i120
  %.1.i123 = phi ptr [ %i.ft, %bb.ag ], [ %i.fr, %.lr.ph62.i120 ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %malloc236, i64 %indvars.iv66.i121
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !16  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.1.i123, i64 1 ; 2 uses
  store i8 %i.fw, ptr %.1.i123, align 1, !tbaa !16
  %i.fy = icmp eq i8 %i.fw, 39
  br i1 %i.fy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph62.i120.1
  %i.fz = getelementptr inbounds nuw i8, ptr %.1.i123, i64 2
  store i8 39, ptr %i.fx, align 1, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph62.i120.1
  %.1.i123.1 = phi ptr [ %i.fz, %bb.ah ], [ %i.fx, %.lr.ph62.i120.1 ] ; 3 uses
  %indvars.iv.next67.i124.1 = add nuw nsw i64 %indvars.iv66.i121, 2 ; 2 uses
  %niter348.next.1 = add i64 %niter348, 2         ; 2 uses
  %niter348.ncmp.1 = icmp eq i64 %niter348.next.1, %unroll_iter347
  br i1 %niter348.ncmp.1, label %._crit_edge63.i115.loopexit.unr-lcssa, label %.lr.ph62.i120, !llvm.loop !108

._crit_edge63.i115.loopexit.unr-lcssa:            ; preds = %bb.ai
  %lcmp.mod344.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %._crit_edge63.i115, label %.lr.ph62.i120.epil.preheader

.lr.ph62.i120.epil.preheader:                     ; preds = %._crit_edge63.i115.loopexit.unr-lcssa, %.lr.ph62.preheader.i118
  %indvars.iv66.i121.epil.init = phi i64 [ 0, %.lr.ph62.preheader.i118 ], [ %indvars.iv.next67.i124.1, %._crit_edge63.i115.loopexit.unr-lcssa ]
  %.060.i122.epil.init = phi ptr [ %i.fn, %.lr.ph62.preheader.i118 ], [ %.1.i123.1, %._crit_edge63.i115.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod346 = trunc i64 %i.em to i1
  call void @llvm.assume(i1 %lcmp.mod346)
  %i.ga = getelementptr inbounds nuw i8, ptr %malloc236, i64 %indvars.iv66.i121.epil.init
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !16  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.060.i122.epil.init, i64 1 ; 2 uses
  store i8 %i.gb, ptr %.060.i122.epil.init, align 1, !tbaa !16
  %i.gd = icmp eq i8 %i.gb, 39
  br i1 %i.gd, label %bb.aj, label %._crit_edge63.i115

bb.aj:                                            ; preds = %.lr.ph62.i120.epil.preheader
  %i.ge = getelementptr inbounds nuw i8, ptr %.060.i122.epil.init, i64 2
  store i8 39, ptr %i.gc, align 1, !tbaa !16
  br label %._crit_edge63.i115

._crit_edge63.i115:                               ; preds = %._crit_edge63.i115.loopexit.unr-lcssa, %bb.aj, %.lr.ph62.i120.epil.preheader, %bb.af
  %.0.lcssa.i116 = phi ptr [ %i.fn, %bb.af ], [ %.1.i123.1, %._crit_edge63.i115.loopexit.unr-lcssa ], [ %i.ge, %bb.aj ], [ %i.gc, %.lr.ph62.i120.epil.preheader ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i116, i64 1
  store i8 39, ptr %.0.lcssa.i116, align 1, !tbaa !16
  store i8 0, ptr %i.gf, align 1, !tbaa !16
  br label %appendText.exit134

appendText.exit134:                               ; preds = %._crit_edge.i88, %._crit_edge63.i115
  %.064 = phi ptr [ %i.fk, %._crit_edge63.i115 ], [ %malloc235, %._crit_edge.i88 ] ; 3 uses
  %.not.i135 = icmp eq ptr %.064, null
  br i1 %.not.i135, label %appendText.exit134.thread, label %bb.ak

bb.ak:                                            ; preds = %appendText.exit134
  %i.gg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.064) #23
  %i.gh = trunc i64 %i.gg to i32
  br label %appendText.exit134.thread

appendText.exit134.thread:                        ; preds = %._crit_edge.i112, %bb.ak, %appendText.exit134
  %.064228 = phi ptr [ %.064, %bb.ak ], [ null, %appendText.exit134 ], [ null, %._crit_edge.i112 ]
  %i.gi = phi i32 [ %i.gh, %bb.ak ], [ 0, %appendText.exit134 ], [ 0, %._crit_edge.i112 ] ; 2 uses
  %i.gj = add nsw i32 %i.gi, 19
  %i.gk = sext i32 %i.gj to i64                   ; 2 uses
  %i.gl = call ptr @realloc(ptr noundef %.064228, i64 noundef %i.gk) #30 ; 5 uses
  %.not5355.i136 = icmp eq ptr %i.gl, null
  br i1 %.not5355.i136, label %appendText.exit140, label %.thread56.i137

.thread56.i137:                                   ; preds = %appendText.exit134.thread
  %i.gm = sext i32 %i.gi to i64
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.gn, ptr noundef nonnull align 1 dereferenceable(18) @.str.133, i64 18, i1 false)
  %i.go = getelementptr i8, ptr %i.gl, i64 %i.gk
  %i.gp = getelementptr i8, ptr %i.go, i64 -1
  store i8 0, ptr %i.gp, align 1, !tbaa !16
  br label %appendText.exit140

appendText.exit140:                               ; preds = %appendText.exit134.thread, %.thread56.i137
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.gr = call i32 @sqlite3_step(ptr noundef %i.gq) #22
  %i.gs = icmp eq i32 %i.gr, 100
  br i1 %i.gs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %appendText.exit140, %.lr.ph.backedge
  %.165237 = phi ptr [ %i.jm, %.lr.ph.backedge ], [ %i.gl, %appendText.exit140 ] ; 3 uses
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.gu = call ptr @sqlite3_column_text(ptr noundef %i.gt, i32 noundef 1) #22 ; 7 uses
  %.not.i141 = icmp eq ptr %.165237, null
  br i1 %.not.i141, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.gv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.165237) #23
  %i.gw = trunc i64 %i.gv to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph
  %i.gx = phi i32 [ %i.gw, %bb.al ], [ 0, %.lr.ph ] ; 2 uses
  %i.gy = add nsw i32 %i.gx, 7
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = call ptr @realloc(ptr noundef %.165237, i64 noundef %i.gz) #30 ; 5 uses
  %.not5355.i142 = icmp eq ptr %i.ha, null
  br i1 %.not5355.i142, label %appendText.exit146.thread, label %bb.an

appendText.exit146.thread:                        ; preds = %bb.am
  %i.hb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gu) #23
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hc = sext i32 %i.gx to i64
  %i.hd = getelementptr inbounds i8, ptr %i.ha, i64 %i.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.hd, ptr noundef nonnull align 1 dereferenceable(6) @.str.134, i64 6, i1 false)
  %i.he = getelementptr i8, ptr %i.ha, i64 %i.gz
  %i.hf = getelementptr i8, ptr %i.he, i64 -1
  store i8 0, ptr %i.hf, align 1, !tbaa !16
  %i.hg = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gu) #23
  %i.hh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ha) #23
  %i.hi = trunc i64 %i.hh to i32
  br label %bb.ao

bb.ao:                                            ; preds = %appendText.exit146.thread, %bb.an
  %i.hj = phi i64 [ %i.hg, %bb.an ], [ %i.hb, %appendText.exit146.thread ] ; 7 uses
  %i.hk = phi i32 [ %i.hi, %bb.an ], [ 0, %appendText.exit146.thread ] ; 2 uses
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  %i.hm = add i32 %i.hl, 3
  %i.hn = add i32 %i.hm, %i.hk                    ; 3 uses
  %i.ho = icmp sgt i32 %i.hl, 0                   ; 2 uses
  br i1 %i.ho, label %.lr.ph.preheader.i162, label %._crit_edge.i148

.lr.ph.preheader.i162:                            ; preds = %bb.ao
  %wide.trip.count.i163 = and i64 %i.hj, 2147483647 ; 3 uses
  %min.iters.check292 = icmp samesign ult i64 %wide.trip.count.i163, 8
  br i1 %min.iters.check292, label %.lr.ph.i164.preheader, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph.preheader.i162
  %n.vec295 = and i64 %i.hj, 2147483640           ; 3 uses
  %i.hp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hn, i64 0
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph293
  %index297 = phi i64 [ 0, %vector.ph293 ], [ %index.next302, %vector.body296 ] ; 2 uses
  %vec.phi298 = phi <4 x i32> [ %i.hp, %vector.ph293 ], [ %i.hw, %vector.body296 ]
  %vec.phi299 = phi <4 x i32> [ zeroinitializer, %vector.ph293 ], [ %i.hx, %vector.body296 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gu, i64 %index297 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %wide.load300 = load <4 x i8>, ptr %i.hq, align 1, !tbaa !16
  %wide.load301 = load <4 x i8>, ptr %i.hr, align 1, !tbaa !16
  %i.hs = icmp eq <4 x i8> %wide.load300, splat (i8 34)
  %i.ht = icmp eq <4 x i8> %wide.load301, splat (i8 34)
  %i.hu = zext <4 x i1> %i.hs to <4 x i32>
  %i.hv = zext <4 x i1> %i.ht to <4 x i32>
  %i.hw = add <4 x i32> %vec.phi298, %i.hu        ; 2 uses
  %i.hx = add <4 x i32> %vec.phi299, %i.hv        ; 2 uses
  %index.next302 = add nuw i64 %index297, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next302, %n.vec295
  br i1 %i.hy, label %middle.block303, label %vector.body296, !llvm.loop !113

middle.block303:                                  ; preds = %vector.body296
  %bin.rdx304 = add <4 x i32> %i.hx, %i.hw
  %i.hz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx304) ; 2 uses
  %cmp.n305 = icmp eq i64 %wide.trip.count.i163, %n.vec295
  br i1 %cmp.n305, label %._crit_edge.i148, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i162, %middle.block303
  %indvars.iv.i165.ph = phi i64 [ 0, %.lr.ph.preheader.i162 ], [ %n.vec295, %middle.block303 ]
  %.04657.i166.ph = phi i32 [ %i.hn, %.lr.ph.preheader.i162 ], [ %i.hz, %middle.block303 ]
  br label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i168, %.lr.ph.i164 ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 2 uses
  %.04657.i166 = phi i32 [ %spec.select.i167, %.lr.ph.i164 ], [ %.04657.i166.ph, %.lr.ph.i164.preheader ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv.i165
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !16
  %i.ic = icmp eq i8 %i.ib, 34
  %i.id = zext i1 %i.ic to i32
  %spec.select.i167 = add nsw i32 %.04657.i166, %i.id ; 2 uses
  %indvars.iv.next.i168 = add nuw nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %exitcond.not.i169 = icmp eq i64 %indvars.iv.next.i168, %wide.trip.count.i163
  br i1 %exitcond.not.i169, label %._crit_edge.i148, label %.lr.ph.i164, !llvm.loop !114

._crit_edge.i148:                                 ; preds = %.lr.ph.i164, %middle.block303, %bb.ao
  %.046.lcssa.i149 = phi i32 [ %i.hn, %bb.ao ], [ %i.hz, %middle.block303 ], [ %spec.select.i167, %.lr.ph.i164 ]
  %i.ie = sext i32 %.046.lcssa.i149 to i64
  %i.if = call ptr @realloc(ptr noundef %i.ha, i64 noundef %i.ie) #30 ; 5 uses
  %.not53.i150 = icmp eq ptr %i.if, null
  br i1 %.not53.i150, label %appendText.exit170.thread, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.i148
  %i.ig = sext i32 %i.hk to i64
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1 ; 3 uses
  store i8 34, ptr %i.ih, align 1, !tbaa !16
  br i1 %i.ho, label %.lr.ph62.preheader.i154, label %appendText.exit170

.lr.ph62.preheader.i154:                          ; preds = %bb.ap
  %wide.trip.count69.i155 = and i64 %i.hj, 2147483647
  %xtraiter349 = and i64 %i.hj, 1
  %i.ij = icmp eq i64 %wide.trip.count69.i155, 1
  br i1 %i.ij, label %.lr.ph62.i156.epil.preheader, label %.lr.ph62.preheader.i154.new

.lr.ph62.preheader.i154.new:                      ; preds = %.lr.ph62.preheader.i154
  %unroll_iter353 = and i64 %i.hj, 2147483646
  br label %.lr.ph62.i156

.lr.ph62.i156:                                    ; preds = %bb.as, %.lr.ph62.preheader.i154.new
  %indvars.iv66.i157 = phi i64 [ 0, %.lr.ph62.preheader.i154.new ], [ %indvars.iv.next67.i160.1, %bb.as ] ; 3 uses
  %.060.i158 = phi ptr [ %i.ii, %.lr.ph62.preheader.i154.new ], [ %.1.i159.1, %bb.as ] ; 3 uses
  %niter354 = phi i64 [ 0, %.lr.ph62.preheader.i154.new ], [ %niter354.next.1, %bb.as ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv66.i157
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !16  ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.060.i158, i64 1 ; 2 uses
  store i8 %i.il, ptr %.060.i158, align 1, !tbaa !16
  %i.in = icmp eq i8 %i.il, 34
  br i1 %i.in, label %bb.aq, label %.lr.ph62.i156.1

bb.aq:                                            ; preds = %.lr.ph62.i156
  %i.io = getelementptr inbounds nuw i8, ptr %.060.i158, i64 2
  store i8 34, ptr %i.im, align 1, !tbaa !16
  br label %.lr.ph62.i156.1

.lr.ph62.i156.1:                                  ; preds = %bb.aq, %.lr.ph62.i156
  %.1.i159 = phi ptr [ %i.io, %bb.aq ], [ %i.im, %.lr.ph62.i156 ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv66.i157
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !16  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.1.i159, i64 1 ; 2 uses
  store i8 %i.ir, ptr %.1.i159, align 1, !tbaa !16
  %i.it = icmp eq i8 %i.ir, 34
  br i1 %i.it, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph62.i156.1
  %i.iu = getelementptr inbounds nuw i8, ptr %.1.i159, i64 2
  store i8 34, ptr %i.is, align 1, !tbaa !16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph62.i156.1
  %.1.i159.1 = phi ptr [ %i.iu, %bb.ar ], [ %i.is, %.lr.ph62.i156.1 ] ; 3 uses
  %indvars.iv.next67.i160.1 = add nuw nsw i64 %indvars.iv66.i157, 2 ; 2 uses
  %niter354.next.1 = add i64 %niter354, 2         ; 2 uses
  %niter354.ncmp.1 = icmp eq i64 %niter354.next.1, %unroll_iter353
  br i1 %niter354.ncmp.1, label %appendText.exit170.loopexit.unr-lcssa, label %.lr.ph62.i156, !llvm.loop !108

appendText.exit170.loopexit.unr-lcssa:            ; preds = %bb.as
  %lcmp.mod350.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %appendText.exit170, label %.lr.ph62.i156.epil.preheader

.lr.ph62.i156.epil.preheader:                     ; preds = %appendText.exit170.loopexit.unr-lcssa, %.lr.ph62.preheader.i154
  %indvars.iv66.i157.epil.init = phi i64 [ 0, %.lr.ph62.preheader.i154 ], [ %indvars.iv.next67.i160.1, %appendText.exit170.loopexit.unr-lcssa ]
  %.060.i158.epil.init = phi ptr [ %i.ii, %.lr.ph62.preheader.i154 ], [ %.1.i159.1, %appendText.exit170.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod352 = trunc i64 %i.hj to i1
  call void @llvm.assume(i1 %lcmp.mod352)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv66.i157.epil.init
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !16  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.060.i158.epil.init, i64 1 ; 2 uses
  store i8 %i.iw, ptr %.060.i158.epil.init, align 1, !tbaa !16
  %i.iy = icmp eq i8 %i.iw, 34
  br i1 %i.iy, label %bb.at, label %appendText.exit170

bb.at:                                            ; preds = %.lr.ph62.i156.epil.preheader
  %i.iz = getelementptr inbounds nuw i8, ptr %.060.i158.epil.init, i64 2
  store i8 34, ptr %i.ix, align 1, !tbaa !16
  br label %appendText.exit170

appendText.exit170:                               ; preds = %appendText.exit170.loopexit.unr-lcssa, %bb.at, %.lr.ph62.i156.epil.preheader, %bb.ap
  %.0.lcssa.i152 = phi ptr [ %i.ii, %bb.ap ], [ %.1.i159.1, %appendText.exit170.loopexit.unr-lcssa ], [ %i.iz, %bb.at ], [ %i.ix, %.lr.ph62.i156.epil.preheader ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.lcssa.i152, i64 1
  store i8 34, ptr %.0.lcssa.i152, align 1, !tbaa !16
  store i8 0, ptr %i.ja, align 1, !tbaa !16
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.jc = call i32 @sqlite3_step(ptr noundef %i.jb) #22
  %i.jd = icmp eq i32 %i.jc, 100
  %i.je = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.if) #23
  %i.jf = trunc i64 %i.je to i32                  ; 2 uses
  br i1 %i.jd, label %.thread, label %.thread249

appendText.exit170.thread:                        ; preds = %._crit_edge.i148
  %i.jg = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.jh = call i32 @sqlite3_step(ptr noundef %i.jg) #22
  %i.ji = icmp eq i32 %i.jh, 100
  br i1 %i.ji, label %.thread, label %.thread249

.thread:                                          ; preds = %appendText.exit170, %appendText.exit170.thread
  %i.jj = phi i32 [ 0, %appendText.exit170.thread ], [ %i.jf, %appendText.exit170 ] ; 2 uses
  %i.jk = add nsw i32 %i.jj, 13
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = call ptr @realloc(ptr noundef %i.if, i64 noundef %i.jl) #30 ; 4 uses
  %.not5355.i172 = icmp eq ptr %i.jm, null
  br i1 %.not5355.i172, label %.lr.ph.backedge, label %.thread56.i173

.thread56.i173:                                   ; preds = %.thread
  %i.jn = sext i32 %i.jj to i64
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 %i.jn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.jo, ptr noundef nonnull align 1 dereferenceable(12) @.str.135, i64 12, i1 false)
  %i.jp = getelementptr i8, ptr %i.jm, i64 %i.jl
  %i.jq = getelementptr i8, ptr %i.jp, i64 -1
  store i8 0, ptr %i.jq, align 1, !tbaa !16
  br label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.thread56.i173, %.thread
  br label %.lr.ph

.thread249:                                       ; preds = %appendText.exit170, %appendText.exit170.thread
  %i.jr = phi i32 [ 0, %appendText.exit170.thread ], [ %i.jf, %appendText.exit170 ] ; 2 uses
  %i.js = add nsw i32 %i.jr, 3
  %i.jt = sext i32 %i.js to i64                   ; 2 uses
  %i.ju = call ptr @realloc(ptr noundef %i.if, i64 noundef %i.jt) #30 ; 4 uses
  %.not5355.i178 = icmp eq ptr %i.ju, null
  br i1 %.not5355.i178, label %._crit_edge, label %.thread56.i179

.thread56.i179:                                   ; preds = %.thread249
  %i.jv = sext i32 %i.jr to i64
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 %i.jv
  store i16 8233, ptr %i.jw, align 1
  %i.jx = getelementptr i8, ptr %i.ju, i64 %i.jt
  %i.jy = getelementptr i8, ptr %i.jx, i64 -1
  store i8 0, ptr %i.jy, align 1, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread56.i179, %.thread249, %appendText.exit140
  %.165.lcssa = phi ptr [ %i.gl, %appendText.exit140 ], [ %i.ju, %.thread56.i179 ], [ null, %.thread249 ] ; 4 uses
  %i.jz = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.ka = call i32 @sqlite3_finalize(ptr noundef %i.jz) #22
  %.not72 = icmp eq i32 %i.ka, 0
  %.not.i183 = icmp eq ptr %.165.lcssa, null      ; 2 uses
  br i1 %.not72, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  br i1 %.not.i183, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %.165.lcssa) #22
  br label %.critedge

bb.aw:                                            ; preds = %._crit_edge
  br i1 %.not.i183, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.165.lcssa) #23
  %i.kc = trunc i64 %i.kb to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.kd = phi i32 [ %i.kc, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %i.ke = add nsw i32 %i.kd, 14
  %i.kf = sext i32 %i.ke to i64                   ; 2 uses
  %i.kg = call ptr @realloc(ptr noundef %.165.lcssa, i64 noundef %i.kf) #30 ; 5 uses
  %.not5355.i184 = icmp eq ptr %i.kg, null
  br i1 %.not5355.i184, label %appendText.exit188.thread, label %bb.az

appendText.exit188.thread:                        ; preds = %bb.ay
  %i.kh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #23
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ki = sext i32 %i.kd to i64
  %i.kj = getelementptr inbounds i8, ptr %i.kg, i64 %i.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.kj, ptr noundef nonnull align 1 dereferenceable(13) @.str.137, i64 13, i1 false)
  %i.kk = getelementptr i8, ptr %i.kg, i64 %i.kf
  %i.kl = getelementptr i8, ptr %i.kk, i64 -1
  store i8 0, ptr %i.kl, align 1, !tbaa !16
  %i.km = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #23
  %i.kn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kg) #23
  %i.ko = trunc i64 %i.kn to i32
  br label %bb.ba

bb.ba:                                            ; preds = %appendText.exit188.thread, %bb.az
  %i.kp = phi i64 [ %i.km, %bb.az ], [ %i.kh, %appendText.exit188.thread ] ; 7 uses
  %i.kq = phi i32 [ %i.ko, %bb.az ], [ 0, %appendText.exit188.thread ] ; 2 uses
  %i.kr = trunc i64 %i.kp to i32                  ; 2 uses
  %i.ks = add i32 %i.kr, 3
  %i.kt = add i32 %i.ks, %i.kq                    ; 3 uses
  %i.ku = icmp sgt i32 %i.kr, 0                   ; 2 uses
  br i1 %i.ku, label %.lr.ph.preheader.i204, label %._crit_edge.i190

.lr.ph.preheader.i204:                            ; preds = %bb.ba
  %wide.trip.count.i205 = and i64 %i.kp, 2147483647 ; 3 uses
  %min.iters.check309 = icmp samesign ult i64 %wide.trip.count.i205, 8
  br i1 %min.iters.check309, label %.lr.ph.i206.preheader, label %vector.ph310

vector.ph310:                                     ; preds = %.lr.ph.preheader.i204
  %n.vec312 = and i64 %i.kp, 2147483640           ; 3 uses
  %i.kv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kt, i64 0
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph310
  %index314 = phi i64 [ 0, %vector.ph310 ], [ %index.next319, %vector.body313 ] ; 2 uses
  %vec.phi315 = phi <4 x i32> [ %i.kv, %vector.ph310 ], [ %i.lc, %vector.body313 ]
  %vec.phi316 = phi <4 x i32> [ zeroinitializer, %vector.ph310 ], [ %i.ld, %vector.body313 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 %index314 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %wide.load317 = load <4 x i8>, ptr %i.kw, align 1, !tbaa !16
  %wide.load318 = load <4 x i8>, ptr %i.kx, align 1, !tbaa !16
  %i.ky = icmp eq <4 x i8> %wide.load317, splat (i8 34)
  %i.kz = icmp eq <4 x i8> %wide.load318, splat (i8 34)
  %i.la = zext <4 x i1> %i.ky to <4 x i32>
  %i.lb = zext <4 x i1> %i.kz to <4 x i32>
  %i.lc = add <4 x i32> %vec.phi315, %i.la        ; 2 uses
  %i.ld = add <4 x i32> %vec.phi316, %i.lb        ; 2 uses
  %index.next319 = add nuw i64 %index314, 8       ; 2 uses
  %i.le = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.le, label %middle.block320, label %vector.body313, !llvm.loop !115

middle.block320:                                  ; preds = %vector.body313
  %bin.rdx321 = add <4 x i32> %i.ld, %i.lc
  %i.lf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx321) ; 2 uses
  %cmp.n322 = icmp eq i64 %wide.trip.count.i205, %n.vec312
  br i1 %cmp.n322, label %._crit_edge.i190, label %.lr.ph.i206.preheader

.lr.ph.i206.preheader:                            ; preds = %.lr.ph.preheader.i204, %middle.block320
  %indvars.iv.i207.ph = phi i64 [ 0, %.lr.ph.preheader.i204 ], [ %n.vec312, %middle.block320 ]
  %.04657.i208.ph = phi i32 [ %i.kt, %.lr.ph.preheader.i204 ], [ %i.lf, %middle.block320 ]
  br label %.lr.ph.i206

.lr.ph.i206:                                      ; preds = %.lr.ph.i206.preheader, %.lr.ph.i206
  %indvars.iv.i207 = phi i64 [ %indvars.iv.next.i210, %.lr.ph.i206 ], [ %indvars.iv.i207.ph, %.lr.ph.i206.preheader ] ; 2 uses
  %.04657.i208 = phi i32 [ %spec.select.i209, %.lr.ph.i206 ], [ %.04657.i208.ph, %.lr.ph.i206.preheader ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i207
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !16
  %i.li = icmp eq i8 %i.lh, 34
  %i.lj = zext i1 %i.li to i32
  %spec.select.i209 = add nsw i32 %.04657.i208, %i.lj ; 2 uses
  %indvars.iv.next.i210 = add nuw nsw i64 %indvars.iv.i207, 1 ; 2 uses
  %exitcond.not.i211 = icmp eq i64 %indvars.iv.next.i210, %wide.trip.count.i205
  br i1 %exitcond.not.i211, label %._crit_edge.i190, label %.lr.ph.i206, !llvm.loop !116

._crit_edge.i190:                                 ; preds = %.lr.ph.i206, %middle.block320, %bb.ba
  %.046.lcssa.i191 = phi i32 [ %i.kt, %bb.ba ], [ %i.lf, %middle.block320 ], [ %spec.select.i209, %.lr.ph.i206 ]
  %i.lk = sext i32 %.046.lcssa.i191 to i64
  %i.ll = call ptr @realloc(ptr noundef %i.kg, i64 noundef %i.lk) #30 ; 5 uses
  %.not53.i192 = icmp eq ptr %i.ll, null
  br i1 %.not53.i192, label %appendText.exit212, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i190
  %i.lm = sext i32 %i.kq to i64
  %i.ln = getelementptr inbounds i8, ptr %i.ll, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1 ; 3 uses
  store i8 34, ptr %i.ln, align 1, !tbaa !16
  br i1 %i.ku, label %.lr.ph62.preheader.i196, label %._crit_edge63.i193

.lr.ph62.preheader.i196:                          ; preds = %bb.bb
  %wide.trip.count69.i197 = and i64 %i.kp, 2147483647
  %xtraiter355 = and i64 %i.kp, 1
  %i.lp = icmp eq i64 %wide.trip.count69.i197, 1
  br i1 %i.lp, label %.lr.ph62.i198.epil.preheader, label %.lr.ph62.preheader.i196.new

.lr.ph62.preheader.i196.new:                      ; preds = %.lr.ph62.preheader.i196
  %unroll_iter359 = and i64 %i.kp, 2147483646
  br label %.lr.ph62.i198

.lr.ph62.i198:                                    ; preds = %bb.be, %.lr.ph62.preheader.i196.new
  %indvars.iv66.i199 = phi i64 [ 0, %.lr.ph62.preheader.i196.new ], [ %indvars.iv.next67.i202.1, %bb.be ] ; 3 uses
  %.060.i200 = phi ptr [ %i.lo, %.lr.ph62.preheader.i196.new ], [ %.1.i201.1, %bb.be ] ; 3 uses
  %niter360 = phi i64 [ 0, %.lr.ph62.preheader.i196.new ], [ %niter360.next.1, %bb.be ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv66.i199
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !16  ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.060.i200, i64 1 ; 2 uses
  store i8 %i.lr, ptr %.060.i200, align 1, !tbaa !16
  %i.lt = icmp eq i8 %i.lr, 34
  br i1 %i.lt, label %bb.bc, label %.lr.ph62.i198.1

bb.bc:                                            ; preds = %.lr.ph62.i198
  %i.lu = getelementptr inbounds nuw i8, ptr %.060.i200, i64 2
  store i8 34, ptr %i.ls, align 1, !tbaa !16
  br label %.lr.ph62.i198.1

.lr.ph62.i198.1:                                  ; preds = %bb.bc, %.lr.ph62.i198
  %.1.i201 = phi ptr [ %i.lu, %bb.bc ], [ %i.ls, %.lr.ph62.i198 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv66.i199
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !16  ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.1.i201, i64 1 ; 2 uses
  store i8 %i.lx, ptr %.1.i201, align 1, !tbaa !16
  %i.lz = icmp eq i8 %i.lx, 34
  br i1 %i.lz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph62.i198.1
  %i.ma = getelementptr inbounds nuw i8, ptr %.1.i201, i64 2
  store i8 34, ptr %i.ly, align 1, !tbaa !16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph62.i198.1
  %.1.i201.1 = phi ptr [ %i.ma, %bb.bd ], [ %i.ly, %.lr.ph62.i198.1 ] ; 3 uses
  %indvars.iv.next67.i202.1 = add nuw nsw i64 %indvars.iv66.i199, 2 ; 2 uses
  %niter360.next.1 = add i64 %niter360, 2         ; 2 uses
  %niter360.ncmp.1 = icmp eq i64 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1, label %._crit_edge63.i193.loopexit.unr-lcssa, label %.lr.ph62.i198, !llvm.loop !108

._crit_edge63.i193.loopexit.unr-lcssa:            ; preds = %bb.be
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %._crit_edge63.i193, label %.lr.ph62.i198.epil.preheader

.lr.ph62.i198.epil.preheader:                     ; preds = %._crit_edge63.i193.loopexit.unr-lcssa, %.lr.ph62.preheader.i196
  %indvars.iv66.i199.epil.init = phi i64 [ 0, %.lr.ph62.preheader.i196 ], [ %indvars.iv.next67.i202.1, %._crit_edge63.i193.loopexit.unr-lcssa ]
  %.060.i200.epil.init = phi ptr [ %i.lo, %.lr.ph62.preheader.i196 ], [ %.1.i201.1, %._crit_edge63.i193.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod358 = trunc i64 %i.kp to i1
  call void @llvm.assume(i1 %lcmp.mod358)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv66.i199.epil.init
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !16  ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.060.i200.epil.init, i64 1 ; 2 uses
  store i8 %i.mc, ptr %.060.i200.epil.init, align 1, !tbaa !16
  %i.me = icmp eq i8 %i.mc, 34
  br i1 %i.me, label %bb.bf, label %._crit_edge63.i193

bb.bf:                                            ; preds = %.lr.ph62.i198.epil.preheader
  %i.mf = getelementptr inbounds nuw i8, ptr %.060.i200.epil.init, i64 2
  store i8 34, ptr %i.md, align 1, !tbaa !16
  br label %._crit_edge63.i193

._crit_edge63.i193:                               ; preds = %._crit_edge63.i193.loopexit.unr-lcssa, %bb.bf, %.lr.ph62.i198.epil.preheader, %bb.bb
  %.0.lcssa.i194 = phi ptr [ %i.lo, %bb.bb ], [ %.1.i201.1, %._crit_edge63.i193.loopexit.unr-lcssa ], [ %i.mf, %bb.bf ], [ %i.md, %.lr.ph62.i198.epil.preheader ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i194, i64 1
  store i8 34, ptr %.0.lcssa.i194, align 1, !tbaa !16
  store i8 0, ptr %i.mg, align 1, !tbaa !16
  br label %appendText.exit212

appendText.exit212:                               ; preds = %._crit_edge.i190, %._crit_edge63.i193
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !21
  %i.mj = load ptr, ptr %0, align 8, !tbaa !27
  %i.mk = call fastcc i32 @run_table_dump_query(ptr noundef %i.mi, ptr noundef %i.mj, ptr noundef %i.ll)
  %i.ml = icmp eq i32 %i.mk, 11
  br i1 %i.ml, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %appendText.exit212
  %i.mm = call fastcc ptr @appendText(ptr noundef %i.ll, ptr noundef nonnull @.str.138, i8 noundef signext 0) ; 2 uses
  %i.mn = load ptr, ptr %i.mh, align 8, !tbaa !21
  %i.mo = load ptr, ptr %0, align 8, !tbaa !27
  %i.mp = call fastcc i32 @run_table_dump_query(ptr noundef %i.mn, ptr noundef %i.mo, ptr noundef %i.mm) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %appendText.exit212
  %.3 = phi ptr [ %i.mm, %bb.bg ], [ %i.ll, %appendText.exit212 ] ; 2 uses
  %.not73 = icmp eq ptr %.3, null
  br i1 %.not73, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %.3) #22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bk

.critedge:                                        ; preds = %bb.av, %bb.au, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.l, %bb.bj, %.critedge, %bb.f, %bb.a, %bb.j
  %.1 = phi i32 [ 0, %bb.j ], [ 0, %bb.f ], [ 1, %.critedge ], [ 1, %bb.a ], [ 0, %bb.bj ], [ 0, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @appendText(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(none) %1, i8 noundef signext range(i8 0, 40) %2) unnamed_addr #14 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 8 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %i.d = trunc i64 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.f = add nsw i32 %i.e, %i.b                   ; 2 uses
  %.not52 = icmp eq i8 %2, 0
  br i1 %.not52, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, 3                      ; 3 uses
  %i.h = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = and i64 %i.a, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.a, 2147483640               ; 3 uses
  %i.i = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.g, i64 0
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.i, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi76 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %wide.load = load <4 x i8>, ptr %i.j, align 1, !tbaa !16
  %wide.load77 = load <4 x i8>, ptr %i.k, align 1, !tbaa !16
  %i.l = icmp eq <4 x i8> %wide.load, %broadcast.splat
  %i.m = icmp eq <4 x i8> %wide.load77, %broadcast.splat
  %i.n = zext <4 x i1> %i.l to <4 x i32>
  %i.o = zext <4 x i1> %i.m to <4 x i32>
  %i.p = add <4 x i32> %vec.phi, %i.n             ; 2 uses
  %i.q = add <4 x i32> %vec.phi76, %i.o           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04657.ph = phi i32 [ %i.g, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader78, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader78 ] ; 2 uses
  %.04657 = phi i32 [ %spec.select, %.lr.ph ], [ %.04657.ph, %.lr.ph.preheader78 ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %i.v = icmp eq i8 %i.u, %2
  %i.w = zext i1 %i.v to i32
  %spec.select = add nsw i32 %.04657, %i.w        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.046.lcssa = phi i32 [ %i.g, %bb.d ], [ %i.s, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.x = sext i32 %.046.lcssa to i64
  %i.y = tail call ptr @realloc(ptr noundef %0, i64 noundef %i.x) #30 ; 3 uses
  %.not53 = icmp eq ptr %i.y, null
  br i1 %.not53, label %bb.j, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.z = add nsw i32 %i.f, 1
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = tail call ptr @realloc(ptr noundef %0, i64 noundef %i.aa) #30 ; 4 uses
  %.not5355 = icmp eq ptr %i.ab, null
  br i1 %.not5355, label %bb.j, label %.thread56

bb.e:                                             ; preds = %._crit_edge
  %i.ac = sext i32 %i.e to i64
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 3 uses
  store i8 %2, ptr %i.ad, align 1, !tbaa !16
  br i1 %i.h, label %.lr.ph62.preheader, label %._crit_edge63

.lr.ph62.preheader:                               ; preds = %bb.e
  %wide.trip.count69 = and i64 %i.a, 2147483647
  %xtraiter = and i64 %i.a, 1
  %i.af = icmp eq i64 %wide.trip.count69, 1
  br i1 %i.af, label %.lr.ph62.epil.preheader, label %.lr.ph62.preheader.new

.lr.ph62.preheader.new:                           ; preds = %.lr.ph62.preheader
  %unroll_iter = and i64 %i.a, 2147483646
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.h, %.lr.ph62.preheader.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %indvars.iv.next67.1, %bb.h ] ; 3 uses
  %.060 = phi ptr [ %i.ae, %.lr.ph62.preheader.new ], [ %.1.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv66
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !16  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.060, align 1, !tbaa !16
  %i.aj = icmp eq i8 %i.ah, %2
  br i1 %i.aj, label %bb.f, label %.lr.ph62.1

bb.f:                                             ; preds = %.lr.ph62
  %i.ak = getelementptr inbounds nuw i8, ptr %.060, i64 2
  store i8 %2, ptr %i.ai, align 1, !tbaa !16
  br label %.lr.ph62.1

.lr.ph62.1:                                       ; preds = %.lr.ph62, %bb.f
  %.1 = phi ptr [ %i.ak, %bb.f ], [ %i.ai, %.lr.ph62 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv66
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  store i8 %i.an, ptr %.1, align 1, !tbaa !16
  %i.ap = icmp eq i8 %i.an, %2
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph62.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.1, i64 2
  store i8 %2, ptr %i.ao, align 1, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph62.1
  %.1.1 = phi ptr [ %i.aq, %bb.g ], [ %i.ao, %.lr.ph62.1 ] ; 3 uses
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge63.loopexit.unr-lcssa, label %.lr.ph62, !llvm.loop !108

._crit_edge63.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge63, label %.lr.ph62.epil.preheader

.lr.ph62.epil.preheader:                          ; preds = %._crit_edge63.loopexit.unr-lcssa, %.lr.ph62.preheader
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvars.iv.next67.1, %._crit_edge63.loopexit.unr-lcssa ]
  %.060.epil.init = phi ptr [ %i.ae, %.lr.ph62.preheader ], [ %.1.1, %._crit_edge63.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod81 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv66.epil.init
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.060.epil.init, i64 1 ; 2 uses
  store i8 %i.as, ptr %.060.epil.init, align 1, !tbaa !16
  %i.au = icmp eq i8 %i.as, %2
  br i1 %i.au, label %bb.i, label %._crit_edge63

bb.i:                                             ; preds = %.lr.ph62.epil.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %.060.epil.init, i64 2
  store i8 %2, ptr %i.at, align 1, !tbaa !16
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit.unr-lcssa, %bb.i, %.lr.ph62.epil.preheader, %bb.e
  %.0.lcssa = phi ptr [ %i.ae, %bb.e ], [ %.1.1, %._crit_edge63.loopexit.unr-lcssa ], [ %i.av, %bb.i ], [ %i.at, %.lr.ph62.epil.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 %2, ptr %.0.lcssa, align 1, !tbaa !16
  store i8 0, ptr %i.aw, align 1, !tbaa !16
  br label %bb.j

.thread56:                                        ; preds = %.thread
  %i.ax = sext i32 %i.e to i64
  %i.ay = getelementptr inbounds i8, ptr %i.ab, i64 %i.ax
  %sext = shl i64 %i.a, 32
  %i.az = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %1, i64 %i.az, i1 false)
  %i.ba = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  store i8 0, ptr %i.bb, align 1, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %.thread, %._crit_edge63, %.thread56, %._crit_edge
  %.043 = phi ptr [ null, %._crit_edge ], [ %i.ab, %.thread56 ], [ %i.y, %._crit_edge63 ], [ null, %.thread ]
  ret ptr %.043
}

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @output_csv(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 868
  %fputs39 = tail call i32 @fputs(ptr nonnull %i.d, ptr %i.b) ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.f = load i8, ptr %1, align 1, !tbaa !16      ; 3 uses
  %.not44 = icmp eq i8 %i.f, 0
  br i1 %.not44, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #23
  %.fr = freeze i64 %i.g                          ; 2 uses
  %i.h = and i64 %.fr, 4294967295
  %i.i = icmp eq i64 %i.h, 1
  %sext = shl i64 %.fr, 32
  %i.j = ashr exact i64 %sext, 32
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %bb.e ], [ 0, %.lr.ph ]
  %i.k = phi i8 [ %i.r, %bb.e ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @needCsvQuote, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16
  %.not37.us = icmp eq i8 %i.n, 0
  br i1 %.not37.us, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.o = load i8, ptr %i.e, align 8, !tbaa !16
  %i.p = icmp eq i8 %i.k, %i.o
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next50
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16    ; 2 uses
  %.not.us = icmp eq i8 %i.r, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ]
  %i.s = phi i8 [ %i.aa, %bb.h ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @needCsvQuote, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %.not37 = icmp eq i8 %i.v, 0
  br i1 %.not37, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph.split
  %i.w = load i8, ptr %i.e, align 8, !tbaa !16
  %i.x = icmp eq i8 %i.s, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %bcmp = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %i.e, i64 %i.j)
  %i.y = icmp eq i32 %bcmp, 0
  br i1 %i.y, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16   ; 2 uses
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !119

.thread:                                          ; preds = %bb.g, %.lr.ph.split, %.lr.ph.split.us, %bb.d, %bb.c
  %i.ab = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.thread
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %bb.k ], [ 0, %.thread ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv51 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.ad, label %bb.k [
    i8 0, label %bb.l
    i8 34, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @putc(i32 noundef 34, ptr noundef %i.b) ; 0 uses
  %.pre = load i8, ptr %i.ac, align 1, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.af = phi i8 [ %i.ad, %bb.i ], [ %.pre, %bb.j ]
  %i.ag = sext i8 %i.af to i32
  %i.ah = tail call i32 @putc(i32 noundef %i.ag, ptr noundef %i.b) ; 0 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %bb.i, !llvm.loop !120

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
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !21
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
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
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: read) }
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 24}
!12 = !{!"callback_data", !13, i64 0, !5, i64 8, !5, i64 12, !14, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !9, i64 40, !6, i64 48, !6, i64 68, !6, i64 468, !6, i64 868, !15, i64 888, !6, i64 1300, !9, i64 5400}
!13 = !{!"p1 _ZTS7sqlite3", !10, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!15 = !{!"previous_mode_data", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!12, !9, i64 5400}
!20 = !{!14, !14, i64 0}
!21 = !{!12, !14, i64 16}
!22 = !{!23, !9, i64 32}
!23 = !{!"passwd", !9, i64 0, !9, i64 8, !5, i64 16, !5, i64 20, !9, i64 24, !9, i64 32, !9, i64 40}
!24 = !{!12, !5, i64 32}
!25 = !{!12, !5, i64 8}
!26 = distinct !{!26, !18}
!27 = !{!12, !13, i64 0}
!28 = !{!12, !9, i64 40}
!29 = !{!13, !13, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 short", !10, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"short", !6, i64 0}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{null}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 int", !10, i64 0}
!42 = distinct !{!42, !18}
!43 = !{!12, !5, i64 12}
!44 = !{!12, !5, i64 28}
!45 = distinct !{!45, !18}
!46 = !{!12, !5, i64 888}
!47 = !{!12, !5, i64 892}
!48 = !{!12, !5, i64 896}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTS12sqlite3_stmt", !10, i64 0}
!51 = distinct !{!51, !18, !52, !53}
!52 = !{!"llvm.loop.isvectorized", i32 1}
!53 = !{!"llvm.loop.unroll.runtime.disable"}
!54 = !{!"branch_weights", i32 4, i32 12}
!55 = distinct !{!55, !18, !52, !53}
!56 = distinct !{!56, !18, !53, !52}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = !{!62, !62, i64 0}
!62 = !{!"p2 omnipotent char", !63, i64 0}
!63 = !{!"any p2 pointer", !10, i64 0}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !18}
!85 = distinct !{!85, !18}
!86 = distinct !{!86, !18}
!87 = distinct !{!87, !18}
!88 = distinct !{!88, !18}
!89 = distinct !{!89, !18}
!90 = distinct !{!90, !18}
!91 = distinct !{!91, !18}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18}
!94 = distinct !{!94, !18}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18}
!97 = !{!98, !99, i64 0}
!98 = !{!"timeval", !99, i64 0, !99, i64 8}
!99 = !{!"long", !6, i64 0}
!100 = !{!98, !99, i64 8}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !18}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18, !52, !53}
!107 = distinct !{!107, !18, !53, !52}
!108 = distinct !{!108, !18}
!109 = distinct !{!109, !18, !52, !53}
!110 = distinct !{!110, !18, !53, !52}
!111 = distinct !{!111, !18, !52, !53}
!112 = distinct !{!112, !18, !53, !52}
!113 = distinct !{!113, !18, !52, !53}
!114 = distinct !{!114, !18, !53, !52}
!115 = distinct !{!115, !18, !52, !53}
!116 = distinct !{!116, !18, !53, !52}
!117 = distinct !{!117, !18, !52, !53}
!118 = distinct !{!118, !18, !53, !52}
!119 = distinct !{!119, !18}
!120 = distinct !{!120, !18}
end_hunk_0
