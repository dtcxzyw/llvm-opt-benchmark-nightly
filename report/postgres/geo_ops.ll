inline.NumInlined: 1108
inline.NumDeleted: 81
begin_hunk_0_@path_distance:bb.a
  %i.cv = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit.i.i

float8_mi.exit.i.i:                               ; preds = %bb.ad, %bb.ac, %float8_mul.exit.i.i
  %.0.i.i19.i.i = phi double [ %i.cv, %bb.ad ], [ %i.co, %bb.ac ], [ %i.co, %float8_mul.exit.i.i ] ; 2 uses
  %i.cw = fcmp oeq double %.0.i.i19.i.i, 0.000000e+00
  br i1 %i.cw, label %line_construct.exit.i.sink.split, label %line_construct.exit.i

line_construct.exit.i.sink.split.sink.split:      ; preds = %bb.v, %bb.h, %point_sl.exit, %bb.g
  %.sink.ph = phi double [ %i.ao, %point_sl.exit ], [ %i.ao, %bb.g ], [ %i.an, %bb.h ], [ %i.an, %bb.v ]
  %i.cx = phi <2 x double> [ <double -1.000000e+00, double 0.000000e+00>, %point_sl.exit ], [ <double -1.000000e+00, double 0.000000e+00>, %bb.g ], [ <double 0.000000e+00, double -1.000000e+00>, %bb.h ], [ <double 0.000000e+00, double -1.000000e+00>, %bb.v ]
  store <2 x double> %i.cx, ptr %2, align 16
  br label %line_construct.exit.i

line_construct.exit.i.sink.split:                 ; preds = %float8_mi.exit.i.i
  br label %line_construct.exit.i

line_construct.exit.i:                            ; preds = %line_construct.exit.i.sink.split.sink.split, %line_construct.exit.i.sink.split, %float8_mi.exit.i.i
  %storemerge = phi double [ %.0.i.i19.i.i, %float8_mi.exit.i.i ], [ %.sink.ph, %line_construct.exit.i.sink.split.sink.split ], [ 0.000000e+00, %line_construct.exit.i.sink.split ]
  store double %storemerge, ptr %i.t, align 16
  %i.cy = call fastcc zeroext i1 @lseg_interpt_line(ptr noundef nonnull %1, ptr noundef nonnull readonly %4, ptr noundef nonnull %2)
  br i1 %i.cy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %line_construct.exit.i
  %i.cz = call fastcc zeroext i1 @lseg_contain_point(ptr noundef nonnull readonly %5, ptr noundef nonnull %1)
  br i1 %i.cz, label %lseg_interpt_lseg.exit, label %bb.af

lseg_interpt_lseg.exit:                           ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %lseg_closept_lseg.exit

bb.af:                                            ; preds = %bb.ae, %line_construct.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.da = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5) ; 3 uses
  %i.db = call fastcc double @lseg_closept_point(ptr noundef nonnull %3, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.r) ; 3 uses
  %i.dc = fcmp ord double %i.db, 0.000000e+00
  %i.dd = fcmp uno double %i.da, 0.000000e+00
  %i.de = fcmp olt double %i.db, %i.da
  %i.df = or i1 %i.dd, %i.de
  %i.dg = and i1 %i.dc, %i.df
  %.0.i = select i1 %i.dg, double %i.db, double %i.da ; 3 uses
  %i.dh = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4) ; 3 uses
  %i.di = fcmp ord double %i.dh, 0.000000e+00
  %i.dj = fcmp uno double %.0.i, 0.000000e+00
  %i.dk = fcmp olt double %i.dh, %.0.i
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = and i1 %i.di, %i.dl
  %.1.i = select i1 %i.dm, double %i.dh, double %.0.i ; 3 uses
  %i.dn = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %i.p) ; 3 uses
  %i.do = fcmp ord double %i.dn, 0.000000e+00
  %i.dp = fcmp uno double %.1.i, 0.000000e+00
  %i.dq = fcmp olt double %i.dn, %.1.i
  %i.dr = or i1 %i.dp, %i.dq
  %i.ds = and i1 %i.do, %i.dr
  br i1 %i.ds, label %bb.ag, label %lseg_closept_lseg.exit

bb.ag:                                            ; preds = %bb.af
  br label %lseg_closept_lseg.exit

lseg_closept_lseg.exit:                           ; preds = %lseg_interpt_lseg.exit, %bb.af, %bb.ag
  %.031.i = phi double [ 0.000000e+00, %lseg_interpt_lseg.exit ], [ %.1.i, %bb.af ], [ %i.dn, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.dt = trunc nuw i8 %.153 to i1
  br i1 %i.dt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %lseg_closept_lseg.exit
  %i.du = fcmp ord double %.031.i, 0.000000e+00
  %i.dv = fcmp uno double %.13752, 0.000000e+00
  %i.dw = fcmp olt double %.031.i, %.13752
  %i.dx = or i1 %i.dv, %i.dw
  %i.dy = and i1 %i.du, %i.dx
  br i1 %i.dy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %lseg_closept_lseg.exit
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.f
  %.339 = phi double [ %.13752, %bb.f ], [ %.031.i, %bb.ai ], [ %.13752, %bb.ah ] ; 2 uses
  %.3 = phi i8 [ %.153, %bb.f ], [ 1, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dz = load i32, ptr %i.m, align 4             ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next, %i.ea
  br i1 %i.eb, label %bb.e, label %.loopexit.loopexit, !llvm.loop !32

.loopexit.loopexit:                               ; preds = %bb.aj
  %.pre = load i32, ptr %i.i, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.c
  %i.ec = phi i32 [ %i.u, %bb.c ], [ %i.u, %bb.d ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.440 = phi double [ %.03656, %bb.c ], [ %.03656, %bb.d ], [ %.339, %.loopexit.loopexit ] ; 2 uses
  %.4 = phi i8 [ %.03557, %bb.c ], [ %.03557, %bb.d ], [ %.3, %.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next64, %i.ed
  br i1 %i.ee, label %bb.b, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.loopexit
  %i.ef = trunc nuw i8 %.4 to i1
  %i.eg = bitcast double %.440 to i64
  br i1 %i.ef, label %bb.ak, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.eh, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %._crit_edge.thread
  %.034 = phi i64 [ 0, %._crit_edge.thread ], [ %i.eg, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i64 %.034
}

; Function Attrs: nounwind uwtable
define internal fastcc double @lseg_closept_lseg(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Point, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = tail call fastcc zeroext i1 @lseg_interpt_lseg(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc double @lseg_closept_point(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = call fastcc double @lseg_closept_point(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %i.c) ; 4 uses
  %i.e = fcmp ord double %i.d, 0.000000e+00
  %i.f = fcmp uno double %i.b, 0.000000e+00
  %i.g = fcmp olt double %i.d, %i.b
  %i.h = or i1 %i.f, %i.g
  %i.i = and i1 %i.e, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi double [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.j = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull %2, ptr noundef %1) ; 4 uses
  %i.k = fcmp ord double %i.j, 0.000000e+00
  %i.l = fcmp uno double %.0, 0.000000e+00
  %i.m = fcmp olt double %i.j, %.0
  %i.n = or i1 %i.l, %i.m
  %i.o = and i1 %i.k, %i.n
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not35 = icmp eq ptr %0, null
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1 = phi double [ %i.j, %bb.g ], [ %i.j, %bb.f ], [ %.0, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %i.p) ; 4 uses
  %i.r = fcmp ord double %i.q, 0.000000e+00
  %i.s = fcmp uno double %.1, 0.000000e+00
  %i.t = fcmp olt double %i.q, %.1
  %i.u = or i1 %i.s, %i.t
  %i.v = and i1 %i.r, %i.u
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not36 = icmp eq ptr %0, null
  br i1 %.not36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.a
  %.031 = phi double [ 0.000000e+00, %bb.a ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %.1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret double %.031
}

; Function Attrs: nounwind uwtable
define dso_local i64 @path_length(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %.not.peel = icmp eq i32 %i.j, 0
  br i1 %.not.peel, label %float8_pl.exit.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.f to i64
  %i.l = getelementptr [16 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -16
  %i.n = load double, ptr %i.m, align 8           ; 2 uses
  %i.o = load double, ptr %i.h, align 8           ; 2 uses
  %i.p = fsub double %i.n, %i.o                   ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp oeq double %i.q, +inf
  br i1 %i.r, label %bb.d, label %float8_mi_safe.exit.i.peel, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.s = tail call double @llvm.fabs.f64(double %i.n)
  %i.t = fcmp oeq double %i.s, +inf
  %i.u = tail call double @llvm.fabs.f64(double %i.o)
  %i.v = fcmp oeq double %i.u, +inf
  %or.cond.i.i.peel = or i1 %i.t, %i.v
  br i1 %or.cond.i.i.peel, label %float8_mi_safe.exit.i.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi_safe.exit.i.peel

float8_mi_safe.exit.i.peel:                       ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i.peel = phi double [ %i.w, %bb.e ], [ %i.p, %bb.d ], [ %i.p, %bb.c ]
  %i.x = getelementptr i8, ptr %i.l, i64 -8
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = load double, ptr %i.z, align 8          ; 2 uses
  %i.ab = fsub double %i.y, %i.aa                 ; 3 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp oeq double %i.ac, +inf
  br i1 %i.ad, label %bb.f, label %point_dt.exit.peel, !prof !13

bb.f:                                             ; preds = %float8_mi_safe.exit.i.peel
  %i.ae = tail call double @llvm.fabs.f64(double %i.y)
  %i.af = fcmp oeq double %i.ae, +inf
  %i.ag = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ah = fcmp oeq double %i.ag, +inf
  %or.cond.i19.i.peel = or i1 %i.af, %i.ah
  br i1 %or.cond.i19.i.peel, label %point_dt.exit.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_dt.exit.peel

point_dt.exit.peel:                               ; preds = %bb.g, %bb.f, %float8_mi_safe.exit.i.peel
  %.0.i18.i.peel = phi double [ %i.ai, %bb.g ], [ %i.ab, %bb.f ], [ %i.ab, %float8_mi_safe.exit.i.peel ]
  %i.aj = tail call double @hypot(double noundef %.0.i.i.peel, double noundef %.0.i18.i.peel) #12 ; 2 uses
  %i.ak = fadd double %i.aj, 0.000000e+00         ; 3 uses
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp oeq double %i.al, +inf
  br i1 %i.am, label %bb.h, label %float8_pl.exit.peel, !prof !13

bb.h:                                             ; preds = %point_dt.exit.peel
  %i.an = tail call double @llvm.fabs.f64(double %i.aj)
  %i.ao = fcmp oeq double %i.an, +inf
  br i1 %i.ao, label %float8_pl.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_pl.exit.peel

float8_pl.exit.peel:                              ; preds = %bb.i, %bb.h, %point_dt.exit.peel, %bb.b
  %.1.peel = phi double [ 0.000000e+00, %bb.b ], [ %i.ap, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %point_dt.exit.peel ] ; 2 uses
  %i.aq = load i32, ptr %i.e, align 4
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %.peel.next, label %._crit_edge.loopexit

.peel.next:                                       ; preds = %float8_pl.exit.peel, %float8_pl.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %float8_pl.exit ], [ 1, %float8_pl.exit.peel ] ; 3 uses
  %.01419 = phi double [ %.1, %float8_pl.exit ], [ %.1.peel, %float8_pl.exit.peel ] ; 2 uses
  %sext = shl i64 %indvars.iv, 32
  %1 = ashr exact i64 %sext, 28
  %2 = getelementptr i8, ptr %i.h, i64 %1         ; 2 uses
  %i.as = getelementptr i8, ptr %2, i64 -16
  %3 = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.at = load double, ptr %i.as, align 8         ; 2 uses
  %i.au = load double, ptr %3, align 8            ; 2 uses
  %i.av = fsub double %i.at, %i.au                ; 3 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp oeq double %i.aw, +inf
  br i1 %i.ax, label %bb.j, label %float8_mi_safe.exit.i, !prof !13

bb.j:                                             ; preds = %.peel.next
  %i.ay = tail call double @llvm.fabs.f64(double %i.at)
  %i.az = fcmp oeq double %i.ay, +inf
  %i.ba = tail call double @llvm.fabs.f64(double %i.au)
  %i.bb = fcmp oeq double %i.ba, +inf
  %or.cond.i.i = or i1 %i.az, %i.bb
  br i1 %or.cond.i.i, label %float8_mi_safe.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi_safe.exit.i

float8_mi_safe.exit.i:                            ; preds = %bb.k, %bb.j, %.peel.next
  %.0.i.i = phi double [ %i.bc, %bb.k ], [ %i.av, %bb.j ], [ %i.av, %.peel.next ]
  %i.bd = getelementptr i8, ptr %2, i64 -8
  %i.be = load double, ptr %i.bd, align 8         ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load double, ptr %i.bf, align 8         ; 2 uses
  %i.bh = fsub double %i.be, %i.bg                ; 3 uses
  %i.bi = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp oeq double %i.bi, +inf
  br i1 %i.bj, label %bb.l, label %point_dt.exit, !prof !13

bb.l:                                             ; preds = %float8_mi_safe.exit.i
  %i.bk = tail call double @llvm.fabs.f64(double %i.be)
  %i.bl = fcmp oeq double %i.bk, +inf
  %i.bm = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bn = fcmp oeq double %i.bm, +inf
  %or.cond.i19.i = or i1 %i.bl, %i.bn
  br i1 %or.cond.i19.i, label %point_dt.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_dt.exit

point_dt.exit:                                    ; preds = %float8_mi_safe.exit.i, %bb.l, %bb.m
  %.0.i18.i = phi double [ %i.bo, %bb.m ], [ %i.bh, %bb.l ], [ %i.bh, %float8_mi_safe.exit.i ]
  %i.bp = tail call double @hypot(double noundef %.0.i.i, double noundef %.0.i18.i) #12 ; 2 uses
  %i.bq = fadd double %.01419, %i.bp              ; 3 uses
  %i.br = tail call double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp oeq double %i.br, +inf
  br i1 %i.bs, label %bb.n, label %float8_pl.exit, !prof !13

bb.n:                                             ; preds = %point_dt.exit
  %i.bt = tail call double @llvm.fabs.f64(double %.01419)
  %i.bu = fcmp oeq double %i.bt, +inf
  %i.bv = tail call double @llvm.fabs.f64(double %i.bp)
  %i.bw = fcmp oeq double %i.bv, +inf
  %or.cond.i.i17 = or i1 %i.bu, %i.bw
  br i1 %or.cond.i.i17, label %float8_pl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_pl.exit

float8_pl.exit:                                   ; preds = %bb.o, %bb.n, %point_dt.exit
  %.1 = phi double [ %i.bq, %point_dt.exit ], [ %i.bx, %bb.o ], [ %i.bq, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = load i32, ptr %i.e, align 4
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next, %i.bz
  br i1 %i.ca, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %float8_pl.exit, %float8_pl.exit.peel
  %.1.lcssa = phi double [ %.1.peel, %float8_pl.exit.peel ], [ %.1, %float8_pl.exit ]
  %i.cb = bitcast double %.1.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %i.cb, %._crit_edge.loopexit ]
  ret i64 %.014.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @point_in(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = tail call ptr @palloc(i64 noundef 16) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call fastcc zeroext i1 @pair_decode(ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef %i.c, ptr noundef %i.g) ; 0 uses
  %i.i = ptrtoint ptr %i.d to i64
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @pair_decode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = tail call ptr @__ctype_b_loc() #13       ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi ptr [ %0, %bb.a ], [ %i.h, %bb.b ] ; 4 uses
  store ptr %storemerge, ptr %i.a, align 8
  %i.c = load i8, ptr %storemerge, align 1        ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2
  %i.g = and i16 %i.f, 8192
  %.not = icmp eq i16 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge, i64 1 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !35

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.c, 40                      ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.d ], [ %storemerge, %bb.c ]
  %i.k = call double @float8in_internal(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12
  store double %i.k, ptr %1, align 8
  %.not.i = icmp eq ptr %6, null                  ; 2 uses
  br i1 %.not.i, label %single_decode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %6, align 4
  %i.m = icmp eq i32 %i.l, 468
  br i1 %i.m, label %single_decode.exit, label %single_decode.exit.thread

single_decode.exit:                               ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.o = load i8, ptr %i.n, align 4, !range !8, !noundef !9
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.n, label %single_decode.exit.thread

single_decode.exit.thread:                        ; preds = %bb.e, %bb.f, %single_decode.exit
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.r, ptr %i.a, align 8
  %i.s = load i8, ptr %i.q, align 1
  %.not17 = icmp eq i8 %i.s, 44
  br i1 %.not17, label %bb.g, label %bb.l

bb.g:                                             ; preds = %single_decode.exit.thread
  %i.t = call double @float8in_internal(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, ptr noundef %4, ptr noundef %5, ptr noundef %6) #12
  store double %i.t, ptr %2, align 8
  br i1 %.not.i, label %single_decode.exit23.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr %6, align 4
  %i.v = icmp eq i32 %i.u, 468
  br i1 %i.v, label %single_decode.exit23, label %single_decode.exit23.thread

single_decode.exit23:                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.x = load i8, ptr %i.w, align 4, !range !8, !noundef !9
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.n, label %single_decode.exit23.thread

single_decode.exit23.thread:                      ; preds = %bb.g, %bb.h, %single_decode.exit23
  br i1 %i.i, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %single_decode.exit23.thread
  %i.z = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = load i8, ptr %i.z, align 1
  %.not18 = icmp eq i8 %i.ab, 41
  br i1 %.not18, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.i
  %i.ac = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ad = load i8, ptr %i.aa, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, 8192
  %.not1925 = icmp eq i16 %i.ah, 0
  br i1 %.not1925, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ai = phi ptr [ %i.aj, %.lr.ph ], [ %i.aa, %.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = and i16 %i.an, 8192
  %.not19 = icmp eq i16 %i.ao, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %single_decode.exit23.thread
  %.not20 = icmp eq ptr %3, null
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %.not20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  store ptr %i.ap, ptr %3, align 8
  br label %bb.n

bb.k:                                             ; preds = %.loopexit
  %i.aq = load i8, ptr %i.ap, align 1
  %.not21 = icmp eq i8 %i.aq, 0
  br i1 %.not21, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %single_decode.exit.thread
  %i.ar = call zeroext i1 @errsave_start(ptr noundef %6, ptr noundef null) #12
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.at = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef %4, ptr noundef %5) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef 252, ptr noundef nonnull @__func__.pair_decode) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j, %bb.k, %single_decode.exit23, %single_decode.exit
  %.0 = phi i1 [ true, %bb.j ], [ false, %single_decode.exit23 ], [ false, %single_decode.exit ], [ true, %bb.k ], [ false, %bb.m ], [ false, %bb.l ]
end_hunk_0
begin_hunk_1_@dist_lp:bb.a
  %i.h = bitcast double %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_ps(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef %i.f, ptr noundef %i.c)
  %i.h = bitcast double %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc double @lseg_closept_point(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Point, align 8              ; 7 uses
  %4 = alloca %struct.LINE, align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = tail call fastcc double @point_invsl(ptr noundef %1, ptr noundef nonnull %i.a) ; 4 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp oeq double %i.c, +inf
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %4, align 16
  %i.f = load double, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.f, ptr %i.g, align 16
  br label %line_construct.exit

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp oeq double %i.b, 0.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store <2 x double> <double 0.000000e+00, double -1.000000e+00>, ptr %4, align 16
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.j, ptr %i.k, align 16
  br label %line_construct.exit

bb.e:                                             ; preds = %bb.c
  store double %i.b, ptr %4, align 16
  store double -1.000000e+00, ptr %i.e, align 8
  %i.l = load double, ptr %i.i, align 8           ; 2 uses
  %i.m = load double, ptr %2, align 8             ; 3 uses
  %i.n = fmul double %i.b, %i.m                   ; 4 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp oeq double %i.o, +inf
  br i1 %i.p, label %bb.f, label %bb.h, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.q = tail call double @llvm.fabs.f64(double %i.m)
  %i.r = fcmp oeq double %i.q, +inf
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.t = fcmp oeq double %i.n, 0.000000e+00
  br i1 %i.t, label %bb.i, label %float8_mul.exit.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = fcmp une double %i.m, 0.000000e+00
  br i1 %i.u, label %bb.j, label %float8_mul.exit.i

bb.j:                                             ; preds = %bb.i
  %i.v = tail call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit.i

float8_mul.exit.i:                                ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i.i = phi double [ %i.v, %bb.j ], [ %i.s, %bb.g ], [ %i.n, %bb.i ], [ %i.n, %bb.h ] ; 2 uses
  %i.w = fsub double %i.l, %.0.i.i.i              ; 3 uses
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp oeq double %i.x, +inf
  br i1 %i.y, label %bb.k, label %float8_mi.exit.i, !prof !13

bb.k:                                             ; preds = %float8_mul.exit.i
  %i.z = tail call double @llvm.fabs.f64(double %i.l)
  %i.aa = fcmp oeq double %i.z, +inf
  %i.ab = tail call double @llvm.fabs.f64(double %.0.i.i.i)
  %i.ac = fcmp oeq double %i.ab, +inf
  %or.cond.i.i20.i = or i1 %i.aa, %i.ac
  br i1 %or.cond.i.i20.i, label %float8_mi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit.i

float8_mi.exit.i:                                 ; preds = %bb.l, %bb.k, %float8_mul.exit.i
  %.0.i.i19.i = phi double [ %i.ad, %bb.l ], [ %i.w, %bb.k ], [ %i.w, %float8_mul.exit.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store double %.0.i.i19.i, ptr %i.ae, align 16
  %i.af = fcmp oeq double %.0.i.i19.i, 0.000000e+00
  br i1 %i.af, label %bb.m, label %line_construct.exit

bb.m:                                             ; preds = %float8_mi.exit.i
  store double 0.000000e+00, ptr %i.ae, align 16
  br label %line_construct.exit

line_construct.exit:                              ; preds = %bb.b, %bb.d, %float8_mi.exit.i, %bb.m
  %i.ag = call fastcc zeroext i1 @lseg_interpt_line(ptr noundef nonnull %3, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %4)
  br i1 %i.ag, label %lseg_closept_line.exit, label %bb.n

bb.n:                                             ; preds = %line_construct.exit
  %i.ah = call fastcc double @line_closept_point(ptr noundef null, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %1)
  %i.ai = call fastcc double @line_closept_point(ptr noundef null, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.a)
  %i.aj = fcmp olt double %i.ah, %i.ai
  %.25.i = select i1 %i.aj, ptr %1, ptr %i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.25.i, i64 16, i1 false)
  br label %lseg_closept_line.exit

lseg_closept_line.exit:                           ; preds = %line_construct.exit, %bb.n
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %lseg_closept_line.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %lseg_closept_line.exit
  %i.ak = load double, ptr %3, align 8            ; 2 uses
  %i.al = load double, ptr %2, align 8            ; 2 uses
  %i.am = fsub double %i.ak, %i.al                ; 3 uses
  %i.an = call double @llvm.fabs.f64(double %i.am)
  %i.ao = fcmp oeq double %i.an, +inf
  br i1 %i.ao, label %bb.q, label %float8_mi_safe.exit.i, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.ap = call double @llvm.fabs.f64(double %i.ak)
  %i.aq = fcmp oeq double %i.ap, +inf
  %i.ar = call double @llvm.fabs.f64(double %i.al)
  %i.as = fcmp oeq double %i.ar, +inf
  %or.cond.i.i = or i1 %i.aq, %i.as
  br i1 %or.cond.i.i, label %float8_mi_safe.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi_safe.exit.i

float8_mi_safe.exit.i:                            ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.i = phi double [ %i.at, %bb.r ], [ %i.am, %bb.q ], [ %i.am, %bb.p ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load double, ptr %i.au, align 8         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load double, ptr %i.aw, align 8         ; 2 uses
  %i.ay = fsub double %i.av, %i.ax                ; 3 uses
  %i.az = call double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp oeq double %i.az, +inf
  br i1 %i.ba, label %bb.s, label %point_dt.exit, !prof !13

bb.s:                                             ; preds = %float8_mi_safe.exit.i
  %i.bb = call double @llvm.fabs.f64(double %i.av)
  %i.bc = fcmp oeq double %i.bb, +inf
  %i.bd = call double @llvm.fabs.f64(double %i.ax)
  %i.be = fcmp oeq double %i.bd, +inf
  %or.cond.i19.i = or i1 %i.bc, %i.be
  br i1 %or.cond.i19.i, label %point_dt.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_dt.exit

point_dt.exit:                                    ; preds = %float8_mi_safe.exit.i, %bb.s, %bb.t
  %.0.i18.i = phi double [ %i.bf, %bb.t ], [ %i.ay, %bb.s ], [ %i.ay, %float8_mi_safe.exit.i ]
  %i.bg = call double @hypot(double noundef %.0.i.i, double noundef %.0.i18.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret double %i.bg
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_sp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef %i.c, ptr noundef %i.f)
  %i.h = bitcast double %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_ppath(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #12
  %1 = tail call fastcc double @dist_ppath_internal(ptr noundef %i.c, ptr noundef %i.g)
  %2 = bitcast double %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal fastcc double @dist_ppath_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
  %3 = alloca %struct.LSEG, align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %5 = load i32, ptr %4, align 4                  ; 2 uses
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %._crit_edge

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load i32, ptr %10, align 8
  %.not.peel.not = icmp eq i32 %11, 0             ; 2 uses
  br i1 %.not.peel.not, label %19, label %12

12:                                               ; preds = %7
  %13 = zext nneg i32 %5 to i64
  %14 = getelementptr [16 x i8], ptr %8, i64 %13
  %15 = getelementptr i8, ptr %14, i64 -16
  %16 = load <2 x double>, ptr %15, align 8
  store <2 x double> %16, ptr %3, align 16
  %17 = load <2 x double>, ptr %8, align 8
  store <2 x double> %17, ptr %9, align 16
  %18 = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull %3, ptr noundef %0)
  br label %19

19:                                               ; preds = %12, %7
  %.2.peel = phi double [ 0.000000e+00, %7 ], [ %18, %12 ] ; 4 uses
  %20 = load i32, ptr %4, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %.peel.next.peel, label %._crit_edge

.peel.next.peel:                                  ; preds = %19
  %22 = getelementptr i8, ptr %1, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %24 = load <2 x double>, ptr %22, align 8
  store <2 x double> %24, ptr %3, align 16
  %25 = load <2 x double>, ptr %23, align 8
  store <2 x double> %25, ptr %9, align 16
  %26 = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull %3, ptr noundef %0) ; 3 uses
  br i1 %.not.peel.not, label %33, label %27

27:                                               ; preds = %.peel.next.peel
  %28 = fcmp ord double %26, 0.000000e+00
  %29 = fcmp uno double %.2.peel, 0.000000e+00
  %30 = fcmp olt double %26, %.2.peel
  %31 = or i1 %29, %30
  %32 = and i1 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %.peel.next.peel
  br label %34

34:                                               ; preds = %33, %27
  %.2.peel31 = phi double [ %.2.peel, %27 ], [ %26, %33 ] ; 2 uses
  %35 = load i32, ptr %4, align 4
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %34, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 2, %34 ] ; 3 uses
  %.01724 = phi double [ %.2, %.peel.next ], [ %.2.peel31, %34 ] ; 3 uses
  %37 = shl nuw nsw i64 %indvars.iv, 4
  %38 = getelementptr i8, ptr %8, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -16
  %40 = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %indvars.iv
  %41 = load <2 x double>, ptr %39, align 8
  store <2 x double> %41, ptr %3, align 16
  %42 = load <2 x double>, ptr %40, align 8
  store <2 x double> %42, ptr %9, align 16
  %43 = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull %3, ptr noundef %0) ; 3 uses
  %44 = fcmp ord double %43, 0.000000e+00
  %45 = fcmp uno double %.01724, 0.000000e+00
  %46 = fcmp olt double %43, %.01724
  %47 = or i1 %45, %46
  %48 = and i1 %44, %47
  %.2 = select i1 %48, double %43, double %.01724 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %49 = load i32, ptr %4, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %indvars.iv.next, %50
  br i1 %51, label %.peel.next, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %34, %.peel.next, %19, %2
  %.017.lcssa = phi double [ 0.000000e+00, %2 ], [ %.2.peel, %19 ], [ %.2.peel31, %34 ], [ %.2, %.peel.next ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret double %.017.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_pathp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %1 = tail call fastcc double @dist_ppath_internal(ptr noundef %i.g, ptr noundef %i.d)
  %2 = bitcast double %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_pb(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call fastcc double @box_closept_point(ptr noundef null, ptr noundef %i.f, ptr noundef %i.c)
  %i.h = bitcast double %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc double @box_closept_point(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Point, align 8              ; 8 uses
  %4 = alloca %struct.LSEG, align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = load double, ptr %1, align 8
  %i.b = load double, ptr %2, align 8             ; 2 uses
  %i.c = fcmp ult double %i.a, %i.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load double, ptr %.phi.trans.insert, align 8 ; 4 uses
  %i.d = fcmp ugt double %.pre, %i.b
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %box_contain_point.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8           ; 2 uses
  %i.i = fcmp ult double %i.f, %i.h
  br i1 %i.i, label %box_contain_point.exit.thread, label %box_contain_point.exit

box_contain_point.exit:                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp ugt double %i.k, %i.h
  br i1 %i.l, label %box_contain_point.exit.thread, label %bb.c

bb.c:                                             ; preds = %box_contain_point.exit
  %.not41 = icmp eq ptr %0, null
  br i1 %.not41, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  br label %bb.m

box_contain_point.exit.thread:                    ; preds = %bb.a, %bb.b, %box_contain_point.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load double, ptr %i.n, align 8           ; 2 uses
  store double %.pre, ptr %4, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load double, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store double %.pre, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store double %i.o, ptr %i.t, align 8
  %i.u = call fastcc double @lseg_closept_point(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %2) ; 3 uses
  %i.v = load <2 x double>, ptr %1, align 8
  store <2 x double> %i.v, ptr %4, align 16
  store double %.pre, ptr %i.s, align 16
  store double %i.o, ptr %i.t, align 8
  %i.w = call fastcc double @lseg_closept_point(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) ; 4 uses
  %i.x = fcmp ord double %i.w, 0.000000e+00
  %i.y = fcmp uno double %i.u, 0.000000e+00
  %i.z = fcmp olt double %i.w, %i.u
  %i.aa = or i1 %i.y, %i.z
  %i.ab = and i1 %i.x, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %box_contain_point.exit.thread
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %box_contain_point.exit.thread
  %.0 = phi double [ %i.w, %bb.f ], [ %i.w, %bb.e ], [ %i.u, %box_contain_point.exit.thread ] ; 3 uses
  %i.ac = load double, ptr %1, align 8            ; 2 uses
  %i.ad = load double, ptr %i.p, align 8          ; 2 uses
  %i.ae = load <2 x double>, ptr %i.m, align 8
  store <2 x double> %i.ae, ptr %4, align 16
  store double %i.ac, ptr %i.s, align 16
  store double %i.ad, ptr %i.t, align 8
  %i.af = call fastcc double @lseg_closept_point(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) ; 4 uses
  %i.ag = fcmp ord double %i.af, 0.000000e+00
  %i.ah = fcmp uno double %.0, 0.000000e+00
  %i.ai = fcmp olt double %i.af, %.0
  %i.aj = or i1 %i.ah, %i.ai
  %i.ak = and i1 %i.ag, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not39 = icmp eq ptr %0, null
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.1 = phi double [ %i.af, %bb.i ], [ %i.af, %bb.h ], [ %.0, %bb.g ] ; 3 uses
  %i.al = load <2 x double>, ptr %1, align 8
  store <2 x double> %i.al, ptr %4, align 16
  store double %i.ac, ptr %i.s, align 16
  store double %i.ad, ptr %i.t, align 8
  %i.am = call fastcc double @lseg_closept_point(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) ; 4 uses
  %i.an = fcmp ord double %i.am, 0.000000e+00
  %i.ao = fcmp uno double %.1, 0.000000e+00
  %i.ap = fcmp olt double %i.am, %.1
  %i.aq = or i1 %i.ao, %i.ap
  %i.ar = and i1 %i.an, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not40 = icmp eq ptr %0, null
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k, %bb.c, %bb.d
  %.035 = phi double [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ], [ %i.am, %bb.l ], [ %i.am, %bb.k ], [ %.1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret double %.035
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_bp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call fastcc double @box_closept_point(ptr noundef null, ptr noundef %i.c, ptr noundef %i.f)
  %i.h = bitcast double %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_sl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = tail call fastcc zeroext i1 @lseg_interpt_line(ptr noundef null, ptr noundef readonly %i.c, ptr noundef readonly %i.f)
  br i1 %i.g, label %lseg_closept_line.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc double @line_closept_point(ptr noundef null, ptr noundef readonly %i.f, ptr noundef readonly %i.c) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = tail call fastcc double @line_closept_point(ptr noundef null, ptr noundef readonly %i.f, ptr noundef nonnull readonly %i.i) ; 2 uses
  %i.k = fcmp olt double %i.h, %i.j
  %..i = select i1 %i.k, double %i.h, double %i.j
  %i.l = bitcast double %..i to i64
  br label %lseg_closept_line.exit

lseg_closept_line.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_ls(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = tail call fastcc zeroext i1 @lseg_interpt_line(ptr noundef null, ptr noundef readonly %i.f, ptr noundef readonly %i.c)
  br i1 %i.g, label %lseg_closept_line.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc double @line_closept_point(ptr noundef null, ptr noundef readonly %i.c, ptr noundef readonly %i.f) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = tail call fastcc double @line_closept_point(ptr noundef null, ptr noundef readonly %i.c, ptr noundef nonnull readonly %i.i) ; 2 uses
  %i.k = fcmp olt double %i.h, %i.j
  %..i = select i1 %i.k, double %i.h, double %i.j
  %i.l = bitcast double %..i to i64
end_hunk_1
begin_hunk_2_@box_closept_lseg:bb.a
  store double %i.s, ptr %i.i, align 8
  %i.u = call fastcc double @lseg_closept_lseg(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %2) ; 4 uses
  %i.v = fcmp ord double %i.u, 0.000000e+00
  %i.w = fcmp uno double %.0, 0.000000e+00
  %i.x = fcmp olt double %i.u, %.0
  %i.y = or i1 %i.w, %i.x
  %i.z = and i1 %i.v, %i.y
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not37 = icmp eq ptr %0, null
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1 = phi double [ %i.u, %bb.g ], [ %i.u, %bb.f ], [ %.0, %bb.e ] ; 3 uses
  %i.aa = load <2 x double>, ptr %1, align 8
  store <2 x double> %i.aa, ptr %4, align 16
  store double %i.r, ptr %i.g, align 16
  store double %i.s, ptr %i.i, align 8
  %i.ab = call fastcc double @lseg_closept_lseg(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %2) ; 4 uses
  %i.ac = fcmp ord double %i.ab, 0.000000e+00
  %i.ad = fcmp uno double %.1, 0.000000e+00
  %i.ae = fcmp olt double %i.ab, %.1
  %i.af = or i1 %i.ad, %i.ae
  %i.ag = and i1 %i.ac, %i.af
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not38 = icmp eq ptr %0, null
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.a
  %.033 = phi double [ 0.000000e+00, %bb.a ], [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ %.1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret double %.033
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_bs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call fastcc double @box_closept_lseg(ptr noundef null, ptr noundef %i.c, ptr noundef %i.f)
  %i.h = bitcast double %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_cpoly(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #12
  %i.h = tail call fastcc double @dist_ppoly_internal(ptr noundef readonly %i.c, ptr noundef readonly %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = fsub double %i.h, %i.j                   ; 3 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp oeq double %i.l, +inf
  br i1 %i.m, label %bb.b, label %dist_cpoly_internal.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.n = tail call double @llvm.fabs.f64(double %i.h)
  %i.o = fcmp oeq double %i.n, +inf
  %i.p = tail call double @llvm.fabs.f64(double %i.j)
  %i.q = fcmp oeq double %i.p, +inf
  %or.cond.i.i.i = or i1 %i.o, %i.q
  br i1 %or.cond.i.i.i, label %dist_cpoly_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %dist_cpoly_internal.exit

dist_cpoly_internal.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i = phi double [ %i.r, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.s = fcmp olt double %.0.i.i.i, 0.000000e+00
  %i.t = bitcast double %.0.i.i.i to i64
  %i.u = select i1 %i.s, i64 0, i64 %i.t
  ret i64 %i.u
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_polyc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = tail call fastcc double @dist_ppoly_internal(ptr noundef readonly %i.g, ptr noundef readonly %i.d) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = fsub double %i.h, %i.j                   ; 3 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp oeq double %i.l, +inf
  br i1 %i.m, label %bb.b, label %dist_cpoly_internal.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.n = tail call double @llvm.fabs.f64(double %i.h)
  %i.o = fcmp oeq double %i.n, +inf
  %i.p = tail call double @llvm.fabs.f64(double %i.j)
  %i.q = fcmp oeq double %i.p, +inf
  %or.cond.i.i.i = or i1 %i.o, %i.q
  br i1 %or.cond.i.i.i, label %dist_cpoly_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %dist_cpoly_internal.exit

dist_cpoly_internal.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i = phi double [ %i.r, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.s = fcmp olt double %.0.i.i.i, 0.000000e+00
  %i.t = bitcast double %.0.i.i.i to i64
  %i.u = select i1 %i.s, i64 0, i64 %i.t
  ret i64 %i.u
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_ppoly(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #12
  %i.h = tail call fastcc double @dist_ppoly_internal(ptr noundef %i.c, ptr noundef %i.g)
  %i.i = bitcast double %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define internal fastcc double @dist_ppoly_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.LSEG, align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.d = tail call fastcc i32 @point_inside(ptr noundef %0, i32 noundef %i.b, ptr noundef nonnull %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load <2 x double>, ptr %i.c, align 8
  store <2 x double> %i.e, ptr %2, align 16
  %i.f = load i32, ptr %i.a, align 4
  %i.g = add i32 %i.f, -1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load <2 x double>, ptr %i.i, align 8
  store <2 x double> %i.k, ptr %i.j, align 16
  %i.l = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull %2, ptr noundef %0) ; 2 uses
  %i.m = load i32, ptr %i.a, align 4
  %i.n = add i32 %i.m, -1
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.02728 = phi double [ %.1, %.lr.ph ], [ %i.l, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.q = load <2 x double>, ptr %i.p, align 8
  store <2 x double> %i.q, ptr %2, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.s = load <2 x double>, ptr %i.r, align 8
  store <2 x double> %i.s, ptr %i.j, align 16
  %i.t = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull %2, ptr noundef %0) ; 3 uses
  %i.u = fcmp ord double %i.t, 0.000000e+00
  %i.v = fcmp uno double %.02728, 0.000000e+00
  %i.w = fcmp olt double %i.t, %.02728
  %i.x = or i1 %i.v, %i.w
  %i.y = and i1 %i.u, %i.x
  %.1 = select i1 %i.y, double %i.t, double %.02728 ; 2 uses
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = add i32 %i.z, -1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.026 = phi double [ 0.000000e+00, %bb.a ], [ %i.l, %bb.b ], [ %.1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret double %.026
}

; Function Attrs: nounwind uwtable
define dso_local i64 @dist_polyp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc double @dist_ppoly_internal(ptr noundef %i.g, ptr noundef %i.d)
  %i.i = bitcast double %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @close_pl(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @palloc(i64 noundef 16) #12 ; 2 uses
  %i.h = tail call fastcc double @line_closept_point(ptr noundef %i.g, ptr noundef %i.f, ptr noundef %i.c)
  %i.i = fcmp uno double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.j, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @close_ps(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @palloc(i64 noundef 16) #12 ; 2 uses
  %i.h = tail call fastcc double @lseg_closept_point(ptr noundef %i.g, ptr noundef %i.f, ptr noundef %i.c)
  %i.i = fcmp uno double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.j, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @close_lseg(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = tail call fastcc double @point_sl(ptr noundef readonly %i.c, ptr noundef nonnull readonly %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = tail call fastcc double @point_sl(ptr noundef readonly %i.f, ptr noundef nonnull readonly %i.i)
  %i.k = fcmp oeq double %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.l, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = tail call ptr @palloc(i64 noundef 16) #12 ; 2 uses
  %i.n = tail call fastcc double @lseg_closept_lseg(ptr noundef %i.m, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c)
  %i.o = fcmp uno double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.p, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.m to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.q, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @close_pb(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @palloc(i64 noundef 16) #12 ; 2 uses
  %i.h = tail call fastcc double @box_closept_point(ptr noundef %i.g, ptr noundef %i.f, ptr noundef %i.c)
  %i.i = fcmp uno double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.j, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @close_ls(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = tail call fastcc double @point_sl(ptr noundef readonly %i.f, ptr noundef nonnull readonly %i.g)
  %i.i = load double, ptr %i.c, align 8           ; 2 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i) ; 2 uses
  %i.k = fcmp ugt double %i.j, f0x3EB0C6F7A0B5ED8D
  br i1 %i.k, label %bb.b, label %line_sl.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m) ; 2 uses
  %i.o = fcmp ugt double %i.n, f0x3EB0C6F7A0B5ED8D
  br i1 %i.o, label %bb.c, label %line_sl.exit

bb.c:                                             ; preds = %bb.b
  %i.p = fneg double %i.m
  %i.q = fdiv double %i.i, %i.p                   ; 4 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp oeq double %i.r, +inf
  br i1 %i.s, label %bb.d, label %bb.f, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.t = fcmp oeq double %i.j, +inf
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %line_sl.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.v = fcmp oeq double %i.q, 0.000000e+00
  br i1 %i.v, label %bb.g, label %line_sl.exit, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.w = fcmp oeq double %i.n, +inf
  br i1 %i.w, label %line_sl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call double @float_underflow_error_ext(ptr noundef null) #12
  br label %line_sl.exit

line_sl.exit:                                     ; preds = %bb.a, %bb.b, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi double [ +inf, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.q, %bb.f ], [ %i.x, %bb.h ], [ %i.u, %bb.e ], [ %i.q, %bb.g ]
  %i.y = fcmp oeq double %i.h, %.0.i
end_hunk_2
begin_hunk_3_@lseg_contain_point:bb.a
  %i.ay = fcmp oeq double %i.ax, +inf
  br i1 %i.ay, label %bb.j, label %float8_mi_safe.exit.i12, !prof !13

bb.j:                                             ; preds = %point_dt.exit11
  %i.az = tail call double @llvm.fabs.f64(double %i.au)
  %i.ba = fcmp oeq double %i.az, +inf
  %i.bb = tail call double @llvm.fabs.f64(double %i.av)
  %i.bc = fcmp oeq double %i.bb, +inf
  %or.cond.i.i16 = or i1 %i.ba, %i.bc
  br i1 %or.cond.i.i16, label %float8_mi_safe.exit.i12, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi_safe.exit.i12

float8_mi_safe.exit.i12:                          ; preds = %bb.k, %bb.j, %point_dt.exit11
  %.0.i.i13 = phi double [ %i.bd, %bb.k ], [ %i.aw, %bb.j ], [ %i.aw, %point_dt.exit11 ]
  %i.be = load double, ptr %i.m, align 8          ; 2 uses
  %i.bf = load double, ptr %i.aj, align 8         ; 2 uses
  %i.bg = fsub double %i.be, %i.bf                ; 3 uses
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp oeq double %i.bh, +inf
  br i1 %i.bi, label %bb.l, label %point_dt.exit17, !prof !13

bb.l:                                             ; preds = %float8_mi_safe.exit.i12
  %i.bj = tail call double @llvm.fabs.f64(double %i.be)
  %i.bk = fcmp oeq double %i.bj, +inf
  %i.bl = tail call double @llvm.fabs.f64(double %i.bf)
  %i.bm = fcmp oeq double %i.bl, +inf
  %or.cond.i19.i15 = or i1 %i.bk, %i.bm
  br i1 %or.cond.i19.i15, label %point_dt.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_dt.exit17

point_dt.exit17:                                  ; preds = %float8_mi_safe.exit.i12, %bb.l, %bb.m
  %.0.i18.i14 = phi double [ %i.bn, %bb.m ], [ %i.bg, %bb.l ], [ %i.bg, %float8_mi_safe.exit.i12 ]
  %i.bo = fadd double %i.w, %i.at                 ; 2 uses
  %i.bp = tail call double @hypot(double noundef %.0.i.i13, double noundef %.0.i18.i14) #12 ; 2 uses
  %i.bq = fcmp oeq double %i.bo, %i.bp
  %i.br = fsub double %i.bo, %i.bp
  %i.bs = tail call double @llvm.fabs.f64(double %i.br)
  %i.bt = fcmp ole double %i.bs, f0x3EB0C6F7A0B5ED8D
  %i.bu = or i1 %i.bq, %i.bt
  ret i1 %i.bu
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 2) i64 @on_pb(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = load double, ptr %i.f, align 8
  %i.h = load double, ptr %i.c, align 8           ; 2 uses
  %i.i = fcmp ult double %i.g, %i.h
  br i1 %i.i, label %box_contain_point.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp ugt double %i.k, %i.h
  br i1 %i.l, label %box_contain_point.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load double, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load double, ptr %i.o, align 8           ; 2 uses
  %i.q = fcmp ult double %i.n, %i.p
  br i1 %i.q, label %box_contain_point.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp ole double %i.s, %i.p
  %i.u = zext i1 %i.t to i64
  br label %box_contain_point.exit

box_contain_point.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.v = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.u, %bb.d ]
  ret i64 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 2) i64 @box_contain_pt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load double, ptr %i.c, align 8
  %i.h = load double, ptr %i.f, align 8           ; 2 uses
  %i.i = fcmp ult double %i.g, %i.h
  br i1 %i.i, label %box_contain_point.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp ugt double %i.k, %i.h
  br i1 %i.l, label %box_contain_point.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load double, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load double, ptr %i.o, align 8           ; 2 uses
  %i.q = fcmp ult double %i.n, %i.p
  br i1 %i.q, label %box_contain_point.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp ole double %i.s, %i.p
  %i.u = zext i1 %i.t to i64
  br label %box_contain_point.exit

box_contain_point.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.v = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.u, %bb.d ]
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @on_ppath(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #12 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.k, -1                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.n = load double, ptr %i.c, align 8           ; 2 uses
  %i.o = load double, ptr %i.m, align 8           ; 2 uses
  %i.p = fsub double %i.n, %i.o                   ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp oeq double %i.q, +inf
  br i1 %i.r, label %bb.c, label %float8_mi_safe.exit.i, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.s = tail call double @llvm.fabs.f64(double %i.n)
  %i.t = fcmp oeq double %i.s, +inf
  %i.u = tail call double @llvm.fabs.f64(double %i.o)
  %i.v = fcmp oeq double %i.u, +inf
  %or.cond.i.i = or i1 %i.t, %i.v
  br i1 %or.cond.i.i, label %float8_mi_safe.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi_safe.exit.i

float8_mi_safe.exit.i:                            ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi double [ %i.w, %bb.d ], [ %i.p, %bb.c ], [ %i.p, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aa = load double, ptr %i.z, align 8          ; 2 uses
  %i.ab = fsub double %i.y, %i.aa                 ; 3 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp oeq double %i.ac, +inf
  br i1 %i.ad, label %bb.e, label %point_dt.exit, !prof !13

bb.e:                                             ; preds = %float8_mi_safe.exit.i
  %i.ae = tail call double @llvm.fabs.f64(double %i.y)
  %i.af = fcmp oeq double %i.ae, +inf
  %i.ag = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ah = fcmp oeq double %i.ag, +inf
  %or.cond.i19.i = or i1 %i.af, %i.ah
  br i1 %or.cond.i19.i, label %point_dt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_dt.exit

point_dt.exit:                                    ; preds = %float8_mi_safe.exit.i, %bb.e, %bb.f
  %.0.i18.i = phi double [ %i.ai, %bb.f ], [ %i.ab, %bb.e ], [ %i.ab, %float8_mi_safe.exit.i ]
  %i.aj = tail call double @hypot(double noundef %.0.i.i, double noundef %.0.i18.i) #12
  %smax = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not39 = icmp slt i32 %i.l, 1
  br i1 %exitcond.not39, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %point_dt.exit37
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !40

.lr.ph:                                           ; preds = %point_dt.exit, %bb.g
  %.02241 = phi double [ %i.bg, %bb.g ], [ %i.aj, %point_dt.exit ] ; 2 uses
  %indvars.iv40 = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %point_dt.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv40, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv.next ; 3 uses
  %i.al = load double, ptr %i.c, align 8          ; 2 uses
  %i.am = load double, ptr %i.ak, align 8         ; 2 uses
  %i.an = fsub double %i.al, %i.am                ; 3 uses
  %i.ao = tail call double @llvm.fabs.f64(double %i.an)
  %i.ap = fcmp oeq double %i.ao, +inf
  br i1 %i.ap, label %bb.h, label %float8_mi_safe.exit.i24, !prof !13

bb.h:                                             ; preds = %.lr.ph
  %i.aq = tail call double @llvm.fabs.f64(double %i.al)
  %i.ar = fcmp oeq double %i.aq, +inf
  %i.as = tail call double @llvm.fabs.f64(double %i.am)
  %i.at = fcmp oeq double %i.as, +inf
  %or.cond.i.i28 = or i1 %i.ar, %i.at
  br i1 %or.cond.i.i28, label %float8_mi_safe.exit.i24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi_safe.exit.i24

float8_mi_safe.exit.i24:                          ; preds = %bb.i, %bb.h, %.lr.ph
  %.0.i.i25 = phi double [ %i.au, %bb.i ], [ %i.an, %bb.h ], [ %i.an, %.lr.ph ]
  %i.av = load double, ptr %i.x, align 8          ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8         ; 2 uses
  %i.ay = fsub double %i.av, %i.ax                ; 3 uses
  %i.az = tail call double @llvm.fabs.f64(double %i.ay)
  %i.ba = fcmp oeq double %i.az, +inf
  br i1 %i.ba, label %bb.j, label %point_dt.exit29, !prof !13

bb.j:                                             ; preds = %float8_mi_safe.exit.i24
  %i.bb = tail call double @llvm.fabs.f64(double %i.av)
  %i.bc = fcmp oeq double %i.bb, +inf
  %i.bd = tail call double @llvm.fabs.f64(double %i.ax)
  %i.be = fcmp oeq double %i.bd, +inf
  %or.cond.i19.i27 = or i1 %i.bc, %i.be
  br i1 %or.cond.i19.i27, label %point_dt.exit29, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_dt.exit29

point_dt.exit29:                                  ; preds = %float8_mi_safe.exit.i24, %bb.j, %bb.k
  %.0.i18.i26 = phi double [ %i.bf, %bb.k ], [ %i.ay, %bb.j ], [ %i.ay, %float8_mi_safe.exit.i24 ]
  %i.bg = tail call double @hypot(double noundef %.0.i.i25, double noundef %.0.i18.i26) #12 ; 3 uses
  %i.bh = fadd double %.02241, %i.bg              ; 3 uses
  %i.bi = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp oeq double %i.bi, +inf
  br i1 %i.bj, label %bb.l, label %float8_pl.exit, !prof !13

bb.l:                                             ; preds = %point_dt.exit29
  %i.bk = tail call double @llvm.fabs.f64(double %.02241)
  %i.bl = fcmp oeq double %i.bk, +inf
  %i.bm = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bn = fcmp oeq double %i.bm, +inf
  %or.cond.i.i31 = or i1 %i.bl, %i.bn
  br i1 %or.cond.i.i31, label %float8_pl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_pl.exit

float8_pl.exit:                                   ; preds = %point_dt.exit29, %bb.l, %bb.m
  %.0.i.i30 = phi double [ %i.bo, %bb.m ], [ %i.bh, %bb.l ], [ %i.bh, %point_dt.exit29 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv40 ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8         ; 2 uses
  %i.br = load double, ptr %i.ak, align 8         ; 2 uses
  %i.bs = fsub double %i.bq, %i.br                ; 3 uses
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp oeq double %i.bt, +inf
  br i1 %i.bu, label %bb.n, label %float8_mi_safe.exit.i32, !prof !13

bb.n:                                             ; preds = %float8_pl.exit
  %i.bv = tail call double @llvm.fabs.f64(double %i.bq)
  %i.bw = fcmp oeq double %i.bv, +inf
  %i.bx = tail call double @llvm.fabs.f64(double %i.br)
  %i.by = fcmp oeq double %i.bx, +inf
  %or.cond.i.i36 = or i1 %i.bw, %i.by
  br i1 %or.cond.i.i36, label %float8_mi_safe.exit.i32, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi_safe.exit.i32

float8_mi_safe.exit.i32:                          ; preds = %bb.o, %bb.n, %float8_pl.exit
  %.0.i.i33 = phi double [ %i.bz, %bb.o ], [ %i.bs, %bb.n ], [ %i.bs, %float8_pl.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = load double, ptr %i.ca, align 8         ; 2 uses
  %i.cc = load double, ptr %i.aw, align 8         ; 2 uses
  %i.cd = fsub double %i.cb, %i.cc                ; 3 uses
  %i.ce = tail call double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp oeq double %i.ce, +inf
  br i1 %i.cf, label %bb.p, label %point_dt.exit37, !prof !13

bb.p:                                             ; preds = %float8_mi_safe.exit.i32
  %i.cg = tail call double @llvm.fabs.f64(double %i.cb)
  %i.ch = fcmp oeq double %i.cg, +inf
  %i.ci = tail call double @llvm.fabs.f64(double %i.cc)
  %i.cj = fcmp oeq double %i.ci, +inf
  %or.cond.i19.i35 = or i1 %i.ch, %i.cj
  br i1 %or.cond.i19.i35, label %point_dt.exit37, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_dt.exit37

point_dt.exit37:                                  ; preds = %float8_mi_safe.exit.i32, %bb.p, %bb.q
  %.0.i18.i34 = phi double [ %i.ck, %bb.q ], [ %i.cd, %bb.p ], [ %i.cd, %float8_mi_safe.exit.i32 ]
  %i.cl = tail call double @hypot(double noundef %.0.i.i33, double noundef %.0.i18.i34) #12 ; 2 uses
  %i.cm = fcmp oeq double %.0.i.i30, %i.cl
  %i.cn = fsub double %.0.i.i30, %i.cl
  %i.co = tail call double @llvm.fabs.f64(double %i.cn)
  %i.cp = fcmp ole double %i.co, f0x3EB0C6F7A0B5ED8D
  %i.cq = or i1 %i.cm, %i.cp
  br i1 %i.cq, label %point_dt.exit37..loopexit.loopexit_crit_edge, label %bb.g, !llvm.loop !40

bb.r:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cs = tail call fastcc i32 @point_inside(ptr noundef %i.c, i32 noundef %i.k, ptr noundef nonnull %i.cr)
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = zext i1 %i.ct to i64
  br label %.loopexit

point_dt.exit37..loopexit.loopexit_crit_edge:     ; preds = %point_dt.exit37
  br label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %bb.g, %point_dt.exit, %point_dt.exit37..loopexit.loopexit_crit_edge, %bb.r
  %.0 = phi i64 [ %i.cu, %bb.r ], [ 1, %point_dt.exit37..loopexit.loopexit_crit_edge ], [ 0, %point_dt.exit ], [ 0, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @point_inside(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %2, align 8             ; 2 uses
  %i.b = load double, ptr %0, align 8             ; 2 uses
  %i.c = fsub double %i.a, %i.b                   ; 3 uses
  %i.d = tail call double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp oeq double %i.d, +inf
  br i1 %i.e, label %bb.b, label %float8_mi.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @llvm.fabs.f64(double %i.a)
  %i.g = fcmp oeq double %i.f, +inf
  %i.h = tail call double @llvm.fabs.f64(double %i.b)
  %i.i = fcmp oeq double %i.h, +inf
  %or.cond.i.i = or i1 %i.g, %i.i
  br i1 %or.cond.i.i, label %float8_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit

float8_mi.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi double [ %i.j, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load double, ptr %i.k, align 8           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load double, ptr %i.m, align 8           ; 2 uses
  %i.o = fsub double %i.l, %i.n                   ; 3 uses
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp oeq double %i.p, +inf
  br i1 %i.q, label %bb.d, label %float8_mi.exit38, !prof !13

bb.d:                                             ; preds = %float8_mi.exit
  %i.r = tail call double @llvm.fabs.f64(double %i.l)
  %i.s = fcmp oeq double %i.r, +inf
  %i.t = tail call double @llvm.fabs.f64(double %i.n)
  %i.u = fcmp oeq double %i.t, +inf
  %or.cond.i.i37 = or i1 %i.s, %i.u
  br i1 %or.cond.i.i37, label %float8_mi.exit38, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit38

float8_mi.exit38:                                 ; preds = %float8_mi.exit, %bb.d, %bb.e
  %.0.i.i36 = phi double [ %i.v, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %float8_mi.exit ] ; 3 uses
  %i.w = icmp sgt i32 %1, 1
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %float8_mi.exit38
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.051 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.av, %bb.j ]
  %.03150 = phi double [ %.0.i.i, %.lr.ph.preheader ], [ %.0.i.i39, %bb.j ]
  %.03348 = phi double [ %.0.i.i36, %.lr.ph.preheader ], [ %.0.i.i42, %bb.j ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = load double, ptr %0, align 8             ; 2 uses
  %i.aa = fsub double %i.y, %i.z                  ; 3 uses
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp oeq double %i.ab, +inf
  br i1 %i.ac, label %bb.f, label %float8_mi.exit41, !prof !13

bb.f:                                             ; preds = %.lr.ph
  %i.ad = tail call double @llvm.fabs.f64(double %i.y)
  %i.ae = fcmp oeq double %i.ad, +inf
  %i.af = tail call double @llvm.fabs.f64(double %i.z)
  %i.ag = fcmp oeq double %i.af, +inf
  %or.cond.i.i40 = or i1 %i.ae, %i.ag
  br i1 %or.cond.i.i40, label %float8_mi.exit41, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit41

float8_mi.exit41:                                 ; preds = %.lr.ph, %bb.f, %bb.g
  %.0.i.i39 = phi double [ %i.ah, %bb.g ], [ %i.aa, %bb.f ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = load double, ptr %i.ai, align 8         ; 2 uses
  %i.ak = load double, ptr %i.m, align 8          ; 2 uses
  %i.al = fsub double %i.aj, %i.ak                ; 3 uses
  %i.am = tail call double @llvm.fabs.f64(double %i.al)
  %i.an = fcmp oeq double %i.am, +inf
  br i1 %i.an, label %bb.h, label %float8_mi.exit44, !prof !13

bb.h:                                             ; preds = %float8_mi.exit41
  %i.ao = tail call double @llvm.fabs.f64(double %i.aj)
  %i.ap = fcmp oeq double %i.ao, +inf
  %i.aq = tail call double @llvm.fabs.f64(double %i.ak)
  %i.ar = fcmp oeq double %i.aq, +inf
  %or.cond.i.i43 = or i1 %i.ap, %i.ar
  br i1 %or.cond.i.i43, label %float8_mi.exit44, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit44

float8_mi.exit44:                                 ; preds = %float8_mi.exit41, %bb.h, %bb.i
  %.0.i.i42 = phi double [ %i.as, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %float8_mi.exit41 ] ; 3 uses
  %i.at = tail call fastcc i32 @lseg_crossing(double noundef %.0.i.i39, double noundef %.0.i.i42, double noundef %.03150, double noundef %.03348) ; 2 uses
  %i.au = icmp eq i32 %i.at, 2147483647
  br i1 %i.au, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %float8_mi.exit44
  %i.av = add i32 %i.at, %.051                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.j, %float8_mi.exit38
  %.033.lcssa = phi double [ %.0.i.i36, %float8_mi.exit38 ], [ %.0.i.i42, %bb.j ]
  %.031.lcssa = phi double [ %.0.i.i, %float8_mi.exit38 ], [ %.0.i.i39, %bb.j ]
  %.0.lcssa = phi i32 [ 0, %float8_mi.exit38 ], [ %i.av, %bb.j ]
  %i.aw = tail call fastcc i32 @lseg_crossing(double noundef %.0.i.i, double noundef %.0.i.i36, double noundef %.031.lcssa, double noundef %.033.lcssa) ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 2147483647
  br i1 %i.ax, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ay = sub nsw i32 0, %i.aw
  %.not = icmp ne i32 %.0.lcssa, %i.ay
  %. = zext i1 %.not to i32
  br label %.loopexit

.loopexit:                                        ; preds = %float8_mi.exit44, %bb.k, %._crit_edge
  %.030 = phi i32 [ 2, %._crit_edge ], [ %., %bb.k ], [ 2, %float8_mi.exit44 ]
  ret i32 %.030
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @on_sl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = tail call fastcc zeroext i1 @line_contain_point(ptr noundef %i.f, ptr noundef %i.c)
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = tail call fastcc zeroext i1 @line_contain_point(ptr noundef %i.f, ptr noundef nonnull %i.h)
  %i.j = zext i1 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i64 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 2) i64 @on_sb(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  %i.h = load double, ptr %i.c, align 8           ; 2 uses
  %i.i = fcmp ult double %i.g, %i.h
  br i1 %i.i, label %box_contain_lseg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load double, ptr %i.j, align 8           ; 2 uses
  %i.l = fcmp ugt double %i.k, %i.h
  br i1 %i.l, label %box_contain_lseg.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load double, ptr %i.m, align 8           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load double, ptr %i.o, align 8           ; 2 uses
  %i.q = fcmp ult double %i.n, %i.p
  br i1 %i.q, label %box_contain_lseg.exit, label %box_contain_point.exit.i

box_contain_point.exit.i:                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.s = load double, ptr %i.r, align 8           ; 2 uses
  %i.t = fcmp ugt double %i.s, %i.p
  br i1 %i.t, label %box_contain_lseg.exit, label %bb.d

bb.d:                                             ; preds = %box_contain_point.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = load double, ptr %i.u, align 8           ; 2 uses
  %i.w = fcmp ult double %i.g, %i.v
  %i.x = fcmp ugt double %i.k, %i.v
  %or.cond.i = or i1 %i.w, %i.x
  br i1 %or.cond.i, label %box_contain_lseg.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.z = load double, ptr %i.y, align 8           ; 2 uses
  %i.aa = fcmp ult double %i.n, %i.z
  br i1 %i.aa, label %box_contain_lseg.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = fcmp ole double %i.s, %i.z
  %i.ac = zext i1 %i.ab to i64
  br label %box_contain_lseg.exit

box_contain_lseg.exit:                            ; preds = %bb.a, %bb.b, %bb.c, %box_contain_point.exit.i, %bb.d, %bb.e, %bb.f
  %i.ad = phi i64 [ 0, %box_contain_point.exit.i ], [ %i.ac, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i64 %i.ad
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @inter_sl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call fastcc zeroext i1 @lseg_interpt_line(ptr noundef null, ptr noundef %i.c, ptr noundef %i.f)
  %i.h = zext i1 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @lseg_interpt_line(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Point, align 8              ; 11 uses
  %4 = alloca %struct.LINE, align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = tail call fastcc double @point_sl(ptr noundef readonly %1, ptr noundef nonnull readonly %i.a) ; 4 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp oeq double %i.c, +inf
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %4, align 16
  %i.f = load double, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.f, ptr %i.g, align 16
  br label %line_construct.exit

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp oeq double %i.b, 0.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store <2 x double> <double 0.000000e+00, double -1.000000e+00>, ptr %4, align 16
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.j, ptr %i.k, align 16
  br label %line_construct.exit

bb.e:                                             ; preds = %bb.c
  store double %i.b, ptr %4, align 16
  store double -1.000000e+00, ptr %i.e, align 8
  %i.l = load double, ptr %i.i, align 8           ; 2 uses
  %i.m = load double, ptr %1, align 8             ; 3 uses
  %i.n = fmul double %i.b, %i.m                   ; 4 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp oeq double %i.o, +inf
  br i1 %i.p, label %bb.f, label %bb.h, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.q = tail call double @llvm.fabs.f64(double %i.m)
  %i.r = fcmp oeq double %i.q, +inf
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.t = fcmp oeq double %i.n, 0.000000e+00
  br i1 %i.t, label %bb.i, label %float8_mul.exit.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = fcmp une double %i.m, 0.000000e+00
  br i1 %i.u, label %bb.j, label %float8_mul.exit.i

bb.j:                                             ; preds = %bb.i
  %i.v = tail call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit.i

float8_mul.exit.i:                                ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i.i = phi double [ %i.v, %bb.j ], [ %i.s, %bb.g ], [ %i.n, %bb.i ], [ %i.n, %bb.h ] ; 2 uses
  %i.w = fsub double %i.l, %.0.i.i.i              ; 3 uses
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp oeq double %i.x, +inf
  br i1 %i.y, label %bb.k, label %float8_mi.exit.i, !prof !13

bb.k:                                             ; preds = %float8_mul.exit.i
  %i.z = tail call double @llvm.fabs.f64(double %i.l)
  %i.aa = fcmp oeq double %i.z, +inf
  %i.ab = tail call double @llvm.fabs.f64(double %.0.i.i.i)
  %i.ac = fcmp oeq double %i.ab, +inf
  %or.cond.i.i20.i = or i1 %i.aa, %i.ac
  br i1 %or.cond.i.i20.i, label %float8_mi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit.i

float8_mi.exit.i:                                 ; preds = %bb.l, %bb.k, %float8_mul.exit.i
  %.0.i.i19.i = phi double [ %i.ad, %bb.l ], [ %i.w, %bb.k ], [ %i.w, %float8_mul.exit.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@box_interpt_lseg:bb.a
  %i.bo = call fastcc zeroext i1 @lseg_interpt_lseg(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %2)
  br i1 %i.bo, label %box_ov.exit.thread, label %bb.j

bb.j:                                             ; preds = %box_contain_point.exit31.thread
  %i.bp = load <2 x double>, ptr %1, align 8
  store <2 x double> %i.bp, ptr %3, align 16
  store double %.pre33.pre, ptr %i.bm, align 16
  store double %i.bj, ptr %i.bn, align 8
  %i.bq = call fastcc zeroext i1 @lseg_interpt_lseg(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %2)
  br i1 %i.bq, label %box_ov.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = load double, ptr %1, align 8            ; 2 uses
  %i.bs = load double, ptr %i.ao, align 8         ; 2 uses
  %i.bt = load <2 x double>, ptr %i.af, align 8
  store <2 x double> %i.bt, ptr %3, align 16
  store double %i.br, ptr %i.bm, align 16
  store double %i.bs, ptr %i.bn, align 8
  %i.bu = call fastcc zeroext i1 @lseg_interpt_lseg(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %2)
  br i1 %i.bu, label %box_ov.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load <2 x double>, ptr %1, align 8
  store <2 x double> %i.bv, ptr %3, align 16
  store double %i.br, ptr %i.bm, align 16
  store double %i.bs, ptr %i.bn, align 8
  %i.bw = call fastcc zeroext i1 @lseg_interpt_lseg(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %2)
  br label %box_ov.exit.thread

box_ov.exit.thread:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.l, %bb.k, %bb.j, %box_contain_point.exit31.thread, %box_contain_point.exit, %box_contain_point.exit31, %box_ov.exit
  %.0 = phi i1 [ false, %box_ov.exit ], [ true, %box_contain_point.exit ], [ true, %box_contain_point.exit31.thread ], [ true, %bb.j ], [ %i.bw, %bb.l ], [ true, %bb.k ], [ true, %box_contain_point.exit31 ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @inter_lb(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.LSEG, align 16              ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = load <2 x double>, ptr %i.g, align 8     ; 2 uses
  store <2 x double> %i.k, ptr %1, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.m = extractelement <2 x double> %i.k, i64 0  ; 2 uses
  store double %i.m, ptr %i.l, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store double %i.j, ptr %i.n, align 8
  %i.o = call fastcc zeroext i1 @lseg_interpt_line(ptr noundef null, ptr noundef nonnull %1, ptr noundef %i.c)
  br i1 %i.o, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load <2 x double>, ptr %i.f, align 8     ; 2 uses
  store <2 x double> %i.p, ptr %1, align 16
  store double %i.m, ptr %i.l, align 16
  store double %i.j, ptr %i.n, align 8
  %i.q = call fastcc zeroext i1 @lseg_interpt_line(ptr noundef null, ptr noundef nonnull %1, ptr noundef %i.c)
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load double, ptr %i.f, align 8           ; 2 uses
  %i.s = load double, ptr %i.h, align 8           ; 2 uses
  store <2 x double> %i.p, ptr %1, align 16
  store double %i.r, ptr %i.l, align 16
  store double %i.s, ptr %i.n, align 8
  %i.t = call fastcc zeroext i1 @lseg_interpt_line(ptr noundef null, ptr noundef nonnull %1, ptr noundef %i.c)
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load <2 x double>, ptr %i.g, align 8
  store <2 x double> %i.u, ptr %1, align 16
  store double %i.r, ptr %i.l, align 16
  store double %i.s, ptr %i.n, align 8
  %i.v = call fastcc zeroext i1 @lseg_interpt_line(ptr noundef null, ptr noundef nonnull %1, ptr noundef %i.c)
  %spec.select = zext i1 %i.v to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %spec.select, %bb.d ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @poly_in(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.g = tail call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.d, i32 noundef 44) #14 ; 2 uses
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %pair_count.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.h = phi ptr [ %i.k, %.lr.ph.i ], [ %i.g, %bb.a ]
  %.09.i = phi i32 [ %i.i, %.lr.ph.i ], [ 0, %bb.a ] ; 3 uses
  %i.i = add i32 %.09.i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 44) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %pair_count.exit, label %.lr.ph.i, !llvm.loop !17

pair_count.exit:                                  ; preds = %.lr.ph.i
  %i.l = and i32 %.09.i, 1
  %.not7.i.not = icmp eq i32 %i.l, 0
  %i.m = add i32 %.09.i, 2
  %i.n = ashr exact i32 %i.m, 1
  %i.o = select i1 %.not7.i.not, i32 %i.n, i32 -1 ; 5 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %pair_count.exit.thread, label %bb.c

pair_count.exit.thread:                           ; preds = %bb.a, %pair_count.exit
  %i.q = tail call zeroext i1 @errsave_start(ptr noundef %i.f, ptr noundef null) #12
  br i1 %i.q, label %bb.b, label %bb.i

bb.b:                                             ; preds = %pair_count.exit.thread
  %i.r = tail call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.s = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.d) #12 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef 3513, ptr noundef nonnull @__func__.poly_in) #12
  br label %bb.i

bb.c:                                             ; preds = %pair_count.exit
  %i.t = shl i32 %i.o, 4                          ; 3 uses
  %i.u = sdiv i32 %i.t, %i.o
  %.not = icmp eq i32 %i.u, 16
  %.not31 = icmp slt i32 %i.t, 2147483608
  %or.cond = and i1 %.not31, %.not
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call zeroext i1 @errsave_start(ptr noundef %i.f, ptr noundef null) #12
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @errcode(i32 noundef 261) #12 ; 0 uses
  %i.x = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #12 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef 3522, ptr noundef nonnull @__func__.poly_in) #12
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.y = add nsw i32 %i.t, 40                     ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call ptr @palloc0(i64 noundef %i.z) #12 ; 6 uses
  %i.ab = shl i32 %i.y, 2
  store i32 %i.ab, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  store i32 %i.o, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 3 uses
  %i.ae = call fastcc zeroext i1 @path_decode(ptr noundef nonnull %i.d, i1 noundef zeroext false, i32 noundef %i.o, ptr noundef nonnull %i.ad, ptr noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.d, ptr noundef %i.f)
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.af, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = load <2 x double>, ptr %i.ad, align 8   ; 4 uses
  %i.ah = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %.lr.ph.preheader.i, label %make_bound_box.exit

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %i.ah to i64
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i33 ] ; 2 uses
  %i.aj = phi <2 x double> [ %i.ag, %.lr.ph.preheader.i ], [ %i.ay, %.lr.ph.i33 ] ; 3 uses
  %i.ak = phi <2 x double> [ %i.ag, %.lr.ph.preheader.i ], [ %i.ax, %.lr.ph.i33 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.am = fcmp uno <2 x double> %i.ak, zeroinitializer
  %i.an = fcmp ord <2 x double> %i.aj, zeroinitializer
  %i.ao = load <2 x double>, ptr %i.al, align 8   ; 6 uses
  %i.ap = fcmp uno <2 x double> %i.ao, zeroinitializer
  %i.aq = fcmp ogt <2 x double> %i.ao, %i.aj
  %i.ar = or <2 x i1> %i.ap, %i.aq
  %i.as = and <2 x i1> %i.an, %i.ar
  %i.at = fcmp ord <2 x double> %i.ao, zeroinitializer
  %i.au = fcmp olt <2 x double> %i.ao, %i.ak
  %i.av = or <2 x i1> %i.am, %i.au
  %i.aw = and <2 x i1> %i.at, %i.av
  %i.ax = select <2 x i1> %i.aw, <2 x double> %i.ao, <2 x double> %i.ak ; 2 uses
  %i.ay = select <2 x i1> %i.as, <2 x double> %i.ao, <2 x double> %i.aj ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %make_bound_box.exit, label %.lr.ph.i33, !llvm.loop !42

make_bound_box.exit:                              ; preds = %.lr.ph.i33, %bb.h
  %i.az = phi <2 x double> [ %i.ag, %bb.h ], [ %i.ay, %.lr.ph.i33 ]
  %i.ba = phi <2 x double> [ %i.ag, %bb.h ], [ %i.ax, %.lr.ph.i33 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store <2 x double> %i.ba, ptr %i.bc, align 8
  store <2 x double> %i.az, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.aa to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %pair_count.exit.thread, %bb.b, %make_bound_box.exit, %bb.g
  %.0 = phi i64 [ 0, %bb.g ], [ 0, %pair_count.exit.thread ], [ %i.bd, %make_bound_box.exit ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.0
}

declare ptr @palloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @poly_out(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = tail call fastcc ptr @path_encode(i32 noundef 2, i32 noundef %i.f, ptr noundef nonnull %i.g)
  %i.i = ptrtoint ptr %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @poly_recv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 4) #12 ; 4 uses
  %i.e = add i32 %i.d, -134217725
  %or.cond = icmp ult i32 %i.e, -134217724
  br i1 %or.cond, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.g = tail call i32 @errcode(i32 noundef 50462850) #12 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 3571, ptr noundef nonnull @__func__.poly_recv) #12
  unreachable

.lr.ph:                                           ; preds = %bb.a
  %i.i = shl nuw nsw i32 %i.d, 4
  %narrow = add nuw nsw i32 %i.i, 40              ; 2 uses
  %i.j = zext nneg i32 %narrow to i64
  %i.k = tail call ptr @palloc0(i64 noundef %i.j) #12 ; 7 uses
  %i.l = shl i32 %narrow, 2
  store i32 %i.l, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 %i.d, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.o = tail call double @pq_getmsgfloat8(ptr noundef %i.c) #12
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  store double %i.o, ptr %i.p, align 8
  %i.q = tail call double @pq_getmsgfloat8(ptr noundef %i.c) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store double %i.q, ptr %i.r, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.m, align 4             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 8     ; 4 uses
  %i.u = icmp sgt i32 %.pre, 1
  br i1 %i.u, label %.lr.ph.preheader.i, label %make_bound_box.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %.pre to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.v = phi <2 x double> [ %i.t, %.lr.ph.preheader.i ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %i.w = phi <2 x double> [ %i.t, %.lr.ph.preheader.i ], [ %i.aj, %.lr.ph.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.y = fcmp uno <2 x double> %i.w, zeroinitializer
  %i.z = fcmp ord <2 x double> %i.v, zeroinitializer
  %i.aa = load <2 x double>, ptr %i.x, align 8    ; 6 uses
  %i.ab = fcmp uno <2 x double> %i.aa, zeroinitializer
  %i.ac = fcmp ogt <2 x double> %i.aa, %i.v
  %i.ad = or <2 x i1> %i.ab, %i.ac
  %i.ae = and <2 x i1> %i.z, %i.ad
  %i.af = fcmp ord <2 x double> %i.aa, zeroinitializer
  %i.ag = fcmp olt <2 x double> %i.aa, %i.w
  %i.ah = or <2 x i1> %i.y, %i.ag
  %i.ai = and <2 x i1> %i.af, %i.ah
  %i.aj = select <2 x i1> %i.ai, <2 x double> %i.aa, <2 x double> %i.w ; 2 uses
  %i.ak = select <2 x i1> %i.ae, <2 x double> %i.aa, <2 x double> %i.v ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %make_bound_box.exit, label %.lr.ph.i, !llvm.loop !42

make_bound_box.exit:                              ; preds = %.lr.ph.i, %._crit_edge
  %i.al = phi <2 x double> [ %i.t, %._crit_edge ], [ %i.ak, %.lr.ph.i ]
  %i.am = phi <2 x double> [ %i.t, %._crit_edge ], [ %i.aj, %.lr.ph.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store <2 x double> %i.am, ptr %i.ao, align 8
  store <2 x double> %i.al, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.k to i64
  ret i64 %i.ap
}

; Function Attrs: nounwind uwtable
define dso_local i64 @poly_send(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @pq_begintypsend(ptr noundef nonnull %1) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 4) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.g = call i32 @llvm.bswap.i32(i32 %i.f)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !44
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !alias.scope !44 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  store i32 %i.g, ptr %i.l, align 1, !noalias !44
  %i.m = add i32 %i.j, 4
  store i32 %i.m, ptr %i.i, align 8, !alias.scope !44
  %i.n = load i32, ptr %i.e, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = load double, ptr %i.q, align 8
  call void @pq_sendfloat8(ptr noundef nonnull %1, double noundef %i.r) #12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load double, ptr %i.s, align 8
  call void @pq_sendfloat8(ptr noundef nonnull %1, double noundef %i.t) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.e, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.x = call ptr @pq_endtypsend(ptr noundef nonnull %1) #12
  %i.y = ptrtoint ptr %i.x to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %i.y
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @poly_left(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load double, ptr %i.k, align 8
  %i.m = load i64, ptr %i.a, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %.not = icmp eq ptr %i.d, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef nonnull %i.d) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = load i64, ptr %i.e, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %.not11 = icmp eq ptr %i.h, %i.p
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef nonnull %i.h) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = fcmp olt double %i.j, %i.l
  %i.r = zext i1 %i.q to i64
  ret i64 %i.r
}

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @poly_overleft(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load double, ptr %i.k, align 8
  %i.m = load i64, ptr %i.a, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %.not = icmp eq ptr %i.d, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef nonnull %i.d) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = load i64, ptr %i.e, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %.not11 = icmp eq ptr %i.h, %i.p
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef nonnull %i.h) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = fcmp ole double %i.j, %i.l
  %i.r = zext i1 %i.q to i64
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @poly_right(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load double, ptr %i.k, align 8
  %i.m = load i64, ptr %i.a, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %.not = icmp eq ptr %i.d, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef nonnull %i.d) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = load i64, ptr %i.e, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %.not11 = icmp eq ptr %i.h, %i.p
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef nonnull %i.h) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = fcmp ogt double %i.j, %i.l
  %i.r = zext i1 %i.q to i64
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @poly_overright(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load double, ptr %i.k, align 8
  %i.m = load i64, ptr %i.a, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %.not = icmp eq ptr %i.d, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef nonnull %i.d) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = load i64, ptr %i.e, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %.not11 = icmp eq ptr %i.h, %i.p
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef nonnull %i.h) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = fcmp oge double %i.j, %i.l
  %i.r = zext i1 %i.q to i64
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @poly_below(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load double, ptr %i.k, align 8
  %i.m = load i64, ptr %i.a, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %.not = icmp eq ptr %i.d, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef nonnull %i.d) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = load i64, ptr %i.e, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %.not11 = icmp eq ptr %i.h, %i.p
  br i1 %.not11, label %bb.e, label %bb.d

end_hunk_4
begin_hunk_5_@poly_same:bb.a
  %i.o = icmp sgt i32 %.fr, 0
  br i1 %i.o, label %.lr.ph81.i, label %plist_same.exit

.lr.ph81.i:                                       ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %.not85.i = icmp eq i32 %.fr, 1
  %i.q = add nsw i32 %.fr, -1
  %wide.trip.count96.i = zext nneg i32 %.fr to i64 ; 3 uses
  br i1 %.not85.i, label %.lr.ph81.i.split.us.preheader, label %.lr.ph81.i.split

.lr.ph81.i.split.us.preheader:                    ; preds = %.lr.ph81.i
  %i.r = load double, ptr %i.n, align 8           ; 4 uses
  %i.s = fcmp uno double %i.r, 0.000000e+00       ; 2 uses
  br i1 %i.s, label %..critedge_crit_edge.i.i.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph81.i.split.us.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load double, ptr %i.t, align 8           ; 3 uses
  %.pre14.i.i.us = load double, ptr %i.m, align 8
  %.pre14.fr.i.i.us = freeze double %.pre14.i.i.us ; 5 uses
  %or.cond.i.i.us = fcmp uno double %i.u, %.pre14.fr.i.i.us
  br i1 %or.cond.i.i.us, label %.critedge.i.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load double, ptr %i.p, align 8           ; 3 uses
  %i.w = fcmp uno double %i.v, 0.000000e+00
  br i1 %i.w, label %.critedge.i.i.us, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.x = fcmp oeq double %i.r, %.pre14.fr.i.i.us
  %i.y = fsub double %i.r, %.pre14.fr.i.i.us
  %i.z = tail call double @llvm.fabs.f64(double %i.y)
  %i.aa = fcmp ole double %i.z, f0x3EB0C6F7A0B5ED8D
  %i.ab = or i1 %i.x, %i.aa
  br i1 %i.ab, label %point_eq_point.exit.i.us, label %point_eq_point.exit.thread.i.us

point_eq_point.exit.i.us:                         ; preds = %bb.e
  %i.ac = fcmp oeq double %i.u, %i.v
  %i.ad = fsub double %i.u, %i.v
  %i.ae = tail call double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ole double %i.ae, f0x3EB0C6F7A0B5ED8D
  %i.ag = or i1 %i.ac, %i.af
  br i1 %i.ag, label %plist_same.exit, label %point_eq_point.exit.thread.i.us

..critedge_crit_edge.i.i.us:                      ; preds = %.lr.ph81.i.split.us.preheader
  %.pre.i.i.us = load double, ptr %i.m, align 8
  br label %.critedge.i.i.us

.critedge.i.i.us:                                 ; preds = %..critedge_crit_edge.i.i.us, %bb.d, %bb.c
  %i.ah = phi double [ %.pre.i.i.us, %..critedge_crit_edge.i.i.us ], [ %.pre14.fr.i.i.us, %bb.d ], [ %.pre14.fr.i.i.us, %bb.c ] ; 2 uses
  %i.ai = fcmp uno double %i.ah, 0.000000e+00
  %i.aj = fcmp oeq double %i.r, %i.ah
  %.in.i.i.i.us = select i1 %i.s, i1 %i.ai, i1 %i.aj
  br i1 %.in.i.i.i.us, label %.split.i.us, label %point_eq_point.exit.thread.i.us

.split.i.us:                                      ; preds = %.critedge.i.i.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.al = load double, ptr %i.ak, align 8         ; 2 uses
  %i.am = load double, ptr %i.p, align 8          ; 2 uses
  %i.an = fcmp uno double %i.al, 0.000000e+00
  %i.ao = fcmp uno double %i.am, 0.000000e+00
  %i.ap = fcmp oeq double %i.al, %i.am
  %.in.i13.i.i.us = select i1 %i.an, i1 %i.ao, i1 %i.ap
  br i1 %.in.i13.i.i.us, label %plist_same.exit, label %point_eq_point.exit.thread.i.us

point_eq_point.exit.thread.i.us:                  ; preds = %.split.i.us, %.critedge.i.i.us, %point_eq_point.exit.i.us, %bb.e
  br label %plist_same.exit

.lr.ph81.i.split:                                 ; preds = %.lr.ph81.i, %point_eq_point.exit.thread.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %point_eq_point.exit.thread.i ], [ 0, %.lr.ph81.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv93.i ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8         ; 4 uses
  %i.as = fcmp uno double %i.ar, 0.000000e+00     ; 2 uses
  br i1 %i.as, label %..critedge_crit_edge.i.i, label %bb.f

..critedge_crit_edge.i.i:                         ; preds = %.lr.ph81.i.split
  %.pre.i.i = load double, ptr %i.m, align 8
  br label %.critedge.i.i

bb.f:                                             ; preds = %.lr.ph81.i.split
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load double, ptr %i.at, align 8         ; 3 uses
  %.pre14.i.i = load double, ptr %i.m, align 8
  %.pre14.fr.i.i = freeze double %.pre14.i.i      ; 5 uses
  %or.cond.i.i = fcmp uno double %i.au, %.pre14.fr.i.i
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load double, ptr %i.p, align 8          ; 3 uses
  %i.aw = fcmp uno double %i.av, 0.000000e+00
  br i1 %i.aw, label %.critedge.i.i, label %bb.h, !prof !13

.critedge.i.i:                                    ; preds = %bb.g, %bb.f, %..critedge_crit_edge.i.i
  %i.ax = phi double [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %.pre14.fr.i.i, %bb.g ], [ %.pre14.fr.i.i, %bb.f ] ; 2 uses
  %i.ay = fcmp uno double %i.ax, 0.000000e+00
  %i.az = fcmp oeq double %i.ar, %i.ax
  %.in.i.i.i = select i1 %i.as, i1 %i.ay, i1 %i.az
  br i1 %.in.i.i.i, label %.split.i, label %point_eq_point.exit.thread.i

.split.i:                                         ; preds = %.critedge.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bc = load double, ptr %i.p, align 8          ; 2 uses
  %i.bd = fcmp uno double %i.bb, 0.000000e+00
  %i.be = fcmp uno double %i.bc, 0.000000e+00
  %i.bf = fcmp oeq double %i.bb, %i.bc
  %.in.i13.i.i = select i1 %i.bd, i1 %i.be, i1 %i.bf
  br i1 %.in.i13.i.i, label %.preheader62.i, label %point_eq_point.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.bg = fcmp oeq double %i.ar, %.pre14.fr.i.i
  %i.bh = fsub double %i.ar, %.pre14.fr.i.i
  %i.bi = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bj = fcmp ole double %i.bi, f0x3EB0C6F7A0B5ED8D
  %i.bk = or i1 %i.bg, %i.bj
  br i1 %i.bk, label %point_eq_point.exit.i, label %point_eq_point.exit.thread.i

point_eq_point.exit.i:                            ; preds = %bb.h
  %i.bl = fcmp oeq double %i.au, %i.av
  %i.bm = fsub double %i.au, %i.av
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ole double %i.bn, f0x3EB0C6F7A0B5ED8D
  %i.bp = or i1 %i.bl, %i.bo
  br i1 %i.bp, label %.preheader62.i, label %point_eq_point.exit.thread.i

.preheader62.i:                                   ; preds = %point_eq_point.exit.i, %.split.i
  %i.bq = trunc nuw nsw i64 %indvars.iv93.i to i32 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.preheader62.i
  %indvars.iv.i = phi i64 [ 1, %.preheader62.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.0.in64.i = phi i32 [ %i.bq, %.preheader62.i ], [ %spec.store.select.i, %bb.l ]
  %.0.i = add i32 %.0.in64.i, 1                   ; 2 uses
  %.not.i = icmp slt i32 %.0.i, %.fr
  %spec.store.select.i = select i1 %.not.i, i32 %.0.i, i32 0 ; 2 uses
  %i.br = sext i32 %spec.store.select.i to i64
  %i.bs = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv.i ; 4 uses
  %i.bu = load double, ptr %i.bs, align 8         ; 4 uses
  %i.bv = fcmp uno double %i.bu, 0.000000e+00     ; 2 uses
  br i1 %i.bv, label %..critedge_crit_edge.i44.i, label %bb.i

..critedge_crit_edge.i44.i:                       ; preds = %.lr.ph.i
  %.pre.i45.i = load double, ptr %i.bt, align 8
  br label %.critedge.i41.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load double, ptr %i.bw, align 8         ; 3 uses
  %.pre14.i37.i = load double, ptr %i.bt, align 8
  %.pre14.fr.i38.i = freeze double %.pre14.i37.i  ; 5 uses
  %or.cond.i39.i = fcmp uno double %i.bx, %.pre14.fr.i38.i
  br i1 %or.cond.i39.i, label %.critedge.i41.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = load double, ptr %i.by, align 8         ; 3 uses
  %i.ca = fcmp uno double %i.bz, 0.000000e+00
  br i1 %i.ca, label %.critedge.i41.i, label %bb.k, !prof !13

.critedge.i41.i:                                  ; preds = %bb.j, %bb.i, %..critedge_crit_edge.i44.i
  %i.cb = phi double [ %.pre.i45.i, %..critedge_crit_edge.i44.i ], [ %.pre14.fr.i38.i, %bb.j ], [ %.pre14.fr.i38.i, %bb.i ] ; 2 uses
  %i.cc = fcmp uno double %i.cb, 0.000000e+00
  %i.cd = fcmp oeq double %i.bu, %i.cb
  %.in.i.i42.i = select i1 %i.bv, i1 %i.cc, i1 %i.cd
  br i1 %.in.i.i42.i, label %.split59.i, label %.lr.ph72.i.preheader

.split59.i:                                       ; preds = %.critedge.i41.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cf = load double, ptr %i.ce, align 8         ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ch = load double, ptr %i.cg, align 8         ; 2 uses
  %i.ci = fcmp uno double %i.cf, 0.000000e+00
  %i.cj = fcmp uno double %i.ch, 0.000000e+00
  %i.ck = fcmp oeq double %i.cf, %i.ch
  %.in.i13.i43.i = select i1 %i.ci, i1 %i.cj, i1 %i.ck
  br i1 %.in.i13.i43.i, label %bb.l, label %.lr.ph72.i.preheader

bb.k:                                             ; preds = %bb.j
  %i.cl = fcmp oeq double %i.bu, %.pre14.fr.i38.i
  %i.cm = fsub double %i.bu, %.pre14.fr.i38.i
  %i.cn = tail call double @llvm.fabs.f64(double %i.cm)
  %i.co = fcmp ole double %i.cn, f0x3EB0C6F7A0B5ED8D
  %i.cp = or i1 %i.cl, %i.co
  br i1 %i.cp, label %point_eq_point.exit46.i, label %.lr.ph72.i.preheader

point_eq_point.exit46.i:                          ; preds = %bb.k
  %i.cq = fcmp oeq double %i.bx, %i.bz
  %i.cr = fsub double %i.bx, %i.bz
  %i.cs = tail call double @llvm.fabs.f64(double %i.cr)
  %i.ct = fcmp ole double %i.cs, f0x3EB0C6F7A0B5ED8D
  %i.cu = or i1 %i.cq, %i.ct
  br i1 %i.cu, label %bb.l, label %.lr.ph72.i.preheader

.lr.ph72.i.preheader:                             ; preds = %.critedge.i41.i, %.split59.i, %bb.k, %point_eq_point.exit46.i
  br label %.lr.ph72.i

bb.l:                                             ; preds = %point_eq_point.exit46.i, %.split59.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count96.i
  br i1 %exitcond.not.i, label %plist_same.exit, label %.lr.ph.i, !llvm.loop !48

.lr.ph72.i:                                       ; preds = %.lr.ph72.i.preheader, %bb.p
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %bb.p ], [ 1, %.lr.ph72.i.preheader ] ; 2 uses
  %.1.in71.i = phi i32 [ %spec.select.i, %bb.p ], [ %i.bq, %.lr.ph72.i.preheader ]
  %.1.i = add i32 %.1.in71.i, -1                  ; 2 uses
  %i.cv = icmp slt i32 %.1.i, 0
  %spec.select.i = select i1 %i.cv, i32 %i.q, i32 %.1.i ; 2 uses
  %i.cw = sext i32 %spec.select.i to i64
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv88.i ; 4 uses
  %i.cz = load double, ptr %i.cx, align 8         ; 4 uses
  %i.da = fcmp uno double %i.cz, 0.000000e+00     ; 2 uses
  br i1 %i.da, label %..critedge_crit_edge.i54.i, label %bb.m

..critedge_crit_edge.i54.i:                       ; preds = %.lr.ph72.i
  %.pre.i55.i = load double, ptr %i.cy, align 8
  br label %.critedge.i51.i

bb.m:                                             ; preds = %.lr.ph72.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dc = load double, ptr %i.db, align 8         ; 3 uses
  %.pre14.i47.i = load double, ptr %i.cy, align 8
  %.pre14.fr.i48.i = freeze double %.pre14.i47.i  ; 5 uses
  %or.cond.i49.i = fcmp uno double %i.dc, %.pre14.fr.i48.i
  br i1 %or.cond.i49.i, label %.critedge.i51.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.de = load double, ptr %i.dd, align 8         ; 3 uses
  %i.df = fcmp uno double %i.de, 0.000000e+00
  br i1 %i.df, label %.critedge.i51.i, label %bb.o, !prof !13

.critedge.i51.i:                                  ; preds = %bb.n, %bb.m, %..critedge_crit_edge.i54.i
  %i.dg = phi double [ %.pre.i55.i, %..critedge_crit_edge.i54.i ], [ %.pre14.fr.i48.i, %bb.n ], [ %.pre14.fr.i48.i, %bb.m ] ; 2 uses
  %i.dh = fcmp uno double %i.dg, 0.000000e+00
  %i.di = fcmp oeq double %i.cz, %i.dg
  %.in.i.i52.i = select i1 %i.da, i1 %i.dh, i1 %i.di
  br i1 %.in.i.i52.i, label %.split61.i, label %point_eq_point.exit.thread.i

.split61.i:                                       ; preds = %.critedge.i51.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dk = load double, ptr %i.dj, align 8         ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dm = load double, ptr %i.dl, align 8         ; 2 uses
  %i.dn = fcmp uno double %i.dk, 0.000000e+00
  %i.do = fcmp uno double %i.dm, 0.000000e+00
  %i.dp = fcmp oeq double %i.dk, %i.dm
  %.in.i13.i53.i = select i1 %i.dn, i1 %i.do, i1 %i.dp
  br i1 %.in.i13.i53.i, label %bb.p, label %point_eq_point.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.dq = fcmp oeq double %i.cz, %.pre14.fr.i48.i
  %i.dr = fsub double %i.cz, %.pre14.fr.i48.i
  %i.ds = tail call double @llvm.fabs.f64(double %i.dr)
  %i.dt = fcmp ole double %i.ds, f0x3EB0C6F7A0B5ED8D
  %i.du = or i1 %i.dq, %i.dt
  br i1 %i.du, label %point_eq_point.exit56.i, label %point_eq_point.exit.thread.i

point_eq_point.exit56.i:                          ; preds = %bb.o
  %i.dv = fcmp oeq double %i.dc, %i.de
  %i.dw = fsub double %i.dc, %i.de
  %i.dx = tail call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp ole double %i.dx, f0x3EB0C6F7A0B5ED8D
  %i.dz = or i1 %i.dv, %i.dy
  br i1 %i.dz, label %bb.p, label %point_eq_point.exit.thread.i

bb.p:                                             ; preds = %point_eq_point.exit56.i, %.split61.i
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %wide.trip.count96.i
  br i1 %exitcond92.not.i, label %plist_same.exit, label %.lr.ph72.i, !llvm.loop !49

point_eq_point.exit.thread.i:                     ; preds = %.critedge.i51.i, %.split61.i, %bb.o, %point_eq_point.exit56.i, %point_eq_point.exit.i, %bb.h, %.split.i, %.critedge.i.i
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %wide.trip.count96.i
  br i1 %exitcond97.not.i, label %plist_same.exit, label %.lr.ph81.i.split, !llvm.loop !50

plist_same.exit:                                  ; preds = %point_eq_point.exit.thread.i, %bb.l, %bb.p, %point_eq_point.exit.i.us, %.split.i.us, %point_eq_point.exit.thread.i.us, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.l ], [ 0, %point_eq_point.exit.thread.i.us ], [ 1, %bb.p ], [ 1, %.split.i.us ], [ 1, %point_eq_point.exit.i.us ], [ 0, %point_eq_point.exit.thread.i ]
  %i.ea = load i64, ptr %i.a, align 8
  %i.eb = inttoptr i64 %i.ea to ptr
  %.not16 = icmp eq ptr %i.d, %i.eb
  br i1 %.not16, label %bb.r, label %bb.q

bb.q:                                             ; preds = %plist_same.exit
  tail call void @pfree(ptr noundef %i.d) #12
  br label %bb.r

bb.r:                                             ; preds = %plist_same.exit, %bb.q
  %i.ec = load i64, ptr %i.e, align 8
  %i.ed = inttoptr i64 %i.ec to ptr
  %.not17 = icmp eq ptr %i.h, %i.ed
  br i1 %.not17, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @pfree(ptr noundef %i.h) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @poly_overlap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 3 uses
  %i.i = tail call fastcc zeroext i1 @poly_overlap_internal(ptr noundef %i.d, ptr noundef %i.h)
  %i.j = load i64, ptr %i.a, align 8
  %i.k = inttoptr i64 %i.j to ptr
  %.not = icmp eq ptr %i.d, %i.k
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pfree(ptr noundef %i.d) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = load i64, ptr %i.e, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %.not11 = icmp eq ptr %i.h, %i.m
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef %i.h) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = zext i1 %i.i to i64
  ret i64 %i.n
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @poly_overlap_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Point, align 8              ; 4 uses
  %3 = alloca %struct.LINE, align 16              ; 7 uses
  %4 = alloca %struct.LSEG, align 8               ; 7 uses
  %5 = alloca %struct.LSEG, align 8               ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load double, ptr %i.b, align 8
  %i.d = load double, ptr %i.a, align 8
  %i.e = fadd double %i.d, f0x3EB0C6F7A0B5ED8D
  %i.f = fcmp ugt double %i.c, %i.e
  br i1 %i.f, label %box_ov.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load double, ptr %i.h, align 8
  %i.j = load double, ptr %i.g, align 8
  %i.k = fadd double %i.j, f0x3EB0C6F7A0B5ED8D
  %i.l = fcmp ugt double %i.i, %i.k
  br i1 %i.l, label %box_ov.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load double, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load double, ptr %i.o, align 8
  %i.q = fadd double %i.p, f0x3EB0C6F7A0B5ED8D
  %i.r = fcmp ugt double %i.n, %i.q
  br i1 %i.r, label %box_ov.exit.thread, label %box_ov.exit

box_ov.exit:                                      ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load double, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load double, ptr %i.u, align 8
  %i.w = fadd double %i.v, f0x3EB0C6F7A0B5ED8D
  %i.x = fcmp ugt double %i.t, %i.w
  br i1 %i.x, label %box_ov.exit.thread, label %bb.d

bb.d:                                             ; preds = %box_ov.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = add i32 %i.aa, -1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ae = icmp slt i32 %i.aa, 1
  br i1 %i.ae, label %..critedge_crit_edge, label %.lr.ph39

..critedge_crit_edge:                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre50 = load i32, ptr %.phi.trans.insert, align 4
  br label %.critedge

.lr.ph39:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load i32, ptr %i.ah, align 4            ; 3 uses
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %.critedge, label %.lr.ph39.split.outer

.lr.ph39.split:                                   ; preds = %.lr.ph39.split.outer, %._crit_edge.thread
  %indvars.iv44 = phi i64 [ %indvars.iv.next4568, %._crit_edge.thread ], [ %indvars.iv44.ph, %.lr.ph39.split.outer ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv44 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false)
  br i1 %i.dl, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph39.split, %lseg_interpt_lseg.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %lseg_interpt_lseg.exit ], [ 0, %.lr.ph39.split ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ar = load double, ptr %5, align 8            ; 8 uses
  %i.as = load double, ptr %i.ai, align 8         ; 3 uses
  %i.at = fcmp oeq double %i.ar, %i.as
  %i.au = fsub double %i.ar, %i.as                ; 3 uses
  %i.av = call double @llvm.fabs.f64(double %i.au) ; 2 uses
  %i.aw = fcmp ole double %i.av, f0x3EB0C6F7A0B5ED8D
  %i.ax = or i1 %i.at, %i.aw
  br i1 %i.ax, label %line_construct.exit.i.sink.split.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ay = load double, ptr %i.aj, align 8         ; 7 uses
  %i.az = load double, ptr %i.ak, align 8         ; 3 uses
  %i.ba = fcmp oeq double %i.ay, %i.az
  %i.bb = fsub double %i.ay, %i.az                ; 3 uses
  %i.bc = call double @llvm.fabs.f64(double %i.bb) ; 2 uses
  %i.bd = fcmp ole double %i.bc, f0x3EB0C6F7A0B5ED8D
  %i.be = or i1 %i.ba, %i.bd
  br i1 %i.be, label %line_construct.exit.i.sink.split.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = fcmp oeq double %i.bc, +inf
  br i1 %i.bf, label %bb.g, label %float8_mi.exit.i, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.bg = call double @llvm.fabs.f64(double %i.ay)
  %i.bh = fcmp oeq double %i.bg, +inf
  %i.bi = call double @llvm.fabs.f64(double %i.az)
  %i.bj = fcmp oeq double %i.bi, +inf
  %or.cond.i.i.i = or i1 %i.bh, %i.bj
  br i1 %or.cond.i.i.i, label %float8_mi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit.i

float8_mi.exit.i:                                 ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i.i = phi double [ %i.bb, %bb.f ], [ %i.bb, %bb.g ], [ %i.bk, %bb.h ] ; 4 uses
  %i.bl = fcmp oeq double %i.av, +inf
  br i1 %i.bl, label %bb.i, label %float8_mi.exit11.i, !prof !13

bb.i:                                             ; preds = %float8_mi.exit.i
  %i.bm = call double @llvm.fabs.f64(double %i.ar)
  %i.bn = fcmp oeq double %i.bm, +inf
  %i.bo = call double @llvm.fabs.f64(double %i.as)
  %i.bp = fcmp oeq double %i.bo, +inf
  %or.cond.i.i10.i = or i1 %i.bn, %i.bp
  br i1 %or.cond.i.i10.i, label %float8_mi.exit11.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit11.i

float8_mi.exit11.i:                               ; preds = %bb.j, %bb.i, %float8_mi.exit.i
  %.0.i.i9.i = phi double [ %i.bq, %bb.j ], [ %i.au, %bb.i ], [ %i.au, %float8_mi.exit.i ] ; 3 uses
  %i.br = fcmp oeq double %.0.i.i9.i, 0.000000e+00
  br i1 %i.br, label %bb.k, label %bb.m, !prof !13

bb.k:                                             ; preds = %float8_mi.exit11.i
  %i.bs = fcmp uno double %.0.i.i.i, 0.000000e+00
  br i1 %i.bs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = call double @float_zero_divide_error_ext(ptr noundef null) #12
  br label %point_sl.exit

bb.m:                                             ; preds = %bb.k, %float8_mi.exit11.i
  %i.bu = fdiv double %.0.i.i.i, %.0.i.i9.i       ; 4 uses
  %i.bv = call double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp oeq double %i.bv, +inf
  br i1 %i.bw, label %bb.n, label %bb.p, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.bx = call double @llvm.fabs.f64(double %.0.i.i.i)
  %i.by = fcmp oeq double %i.bx, +inf
  br i1 %i.by, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_sl.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ca = fcmp oeq double %i.bu, 0.000000e+00
  br i1 %i.ca, label %bb.q, label %point_sl.exit, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.cb = fcmp oeq double %.0.i.i.i, 0.000000e+00
  %i.cc = call double @llvm.fabs.f64(double %.0.i.i9.i)
  %i.cd = fcmp oeq double %i.cc, +inf
  %or.cond.i.i13.i = or i1 %i.cb, %i.cd
  br i1 %or.cond.i.i13.i, label %point_sl.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = call double @float_underflow_error_ext(ptr noundef null) #12
  br label %point_sl.exit

point_sl.exit:                                    ; preds = %bb.l, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i31 = phi double [ %i.bu, %bb.q ], [ %i.bu, %bb.p ], [ %i.bt, %bb.l ], [ %i.ce, %bb.r ], [ %i.bz, %bb.o ] ; 4 uses
  %i.cf = call double @llvm.fabs.f64(double %.0.i31)
  %i.cg = fcmp oeq double %i.cf, +inf
  br i1 %i.cg, label %line_construct.exit.i.sink.split.sink.split, label %bb.s

bb.s:                                             ; preds = %point_sl.exit
  %i.ch = fcmp oeq double %.0.i31, 0.000000e+00
  br i1 %i.ch, label %line_construct.exit.i.sink.split.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  store double %.0.i31, ptr %3, align 16
  store double -1.000000e+00, ptr %i.al, align 8
  %i.ci = fmul double %i.ar, %.0.i31              ; 4 uses
  %i.cj = call double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp oeq double %i.cj, +inf
  br i1 %i.ck, label %bb.u, label %bb.w, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.cl = call double @llvm.fabs.f64(double %i.ar)
  %i.cm = fcmp oeq double %i.cl, +inf
  br i1 %i.cm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit.i.i

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.co = fcmp oeq double %i.ci, 0.000000e+00
  br i1 %i.co, label %bb.x, label %float8_mul.exit.i.i, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.cp = fcmp une double %i.ar, 0.000000e+00
  br i1 %i.cp, label %bb.y, label %float8_mul.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.cq = call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit.i.i

float8_mul.exit.i.i:                              ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.0.i.i.i.i = phi double [ %i.cq, %bb.y ], [ %i.cn, %bb.v ], [ %i.ci, %bb.x ], [ %i.ci, %bb.w ] ; 2 uses
  %i.cr = fsub double %i.ay, %.0.i.i.i.i          ; 3 uses
  %i.cs = call double @llvm.fabs.f64(double %i.cr)
  %i.ct = fcmp oeq double %i.cs, +inf
  br i1 %i.ct, label %bb.z, label %float8_mi.exit.i.i, !prof !13

bb.z:                                             ; preds = %float8_mul.exit.i.i
  %i.cu = call double @llvm.fabs.f64(double %i.ay)
  %i.cv = fcmp oeq double %i.cu, +inf
  %i.cw = call double @llvm.fabs.f64(double %.0.i.i.i.i)
  %i.cx = fcmp oeq double %i.cw, +inf
  %or.cond.i.i20.i.i = or i1 %i.cv, %i.cx
  br i1 %or.cond.i.i20.i.i, label %float8_mi.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit.i.i

float8_mi.exit.i.i:                               ; preds = %bb.aa, %bb.z, %float8_mul.exit.i.i
  %.0.i.i19.i.i = phi double [ %i.cy, %bb.aa ], [ %i.cr, %bb.z ], [ %i.cr, %float8_mul.exit.i.i ] ; 2 uses
  %i.cz = fcmp oeq double %.0.i.i19.i.i, 0.000000e+00
  br i1 %i.cz, label %line_construct.exit.i.sink.split, label %line_construct.exit.i

line_construct.exit.i.sink.split.sink.split:      ; preds = %bb.s, %bb.e, %point_sl.exit, %.lr.ph
  %.sink.ph = phi double [ %i.ar, %point_sl.exit ], [ %i.ar, %.lr.ph ], [ %i.ay, %bb.e ], [ %i.ay, %bb.s ]
  %i.da = phi <2 x double> [ <double -1.000000e+00, double 0.000000e+00>, %point_sl.exit ], [ <double -1.000000e+00, double 0.000000e+00>, %.lr.ph ], [ <double 0.000000e+00, double -1.000000e+00>, %bb.e ], [ <double 0.000000e+00, double -1.000000e+00>, %bb.s ]
  store <2 x double> %i.da, ptr %3, align 16
  br label %line_construct.exit.i

line_construct.exit.i.sink.split:                 ; preds = %float8_mi.exit.i.i
  br label %line_construct.exit.i

line_construct.exit.i:                            ; preds = %line_construct.exit.i.sink.split.sink.split, %line_construct.exit.i.sink.split, %float8_mi.exit.i.i
  %storemerge = phi double [ %.0.i.i19.i.i, %float8_mi.exit.i.i ], [ %.sink.ph, %line_construct.exit.i.sink.split.sink.split ], [ 0.000000e+00, %line_construct.exit.i.sink.split ]
  store double %storemerge, ptr %i.am, align 16
  %i.db = call fastcc zeroext i1 @lseg_interpt_line(ptr noundef nonnull %2, ptr noundef nonnull readonly %4, ptr noundef nonnull %3)
  br i1 %i.db, label %bb.ab, label %lseg_interpt_lseg.exit

bb.ab:                                            ; preds = %line_construct.exit.i
  %i.dc = call fastcc zeroext i1 @lseg_contain_point(ptr noundef nonnull readonly %5, ptr noundef nonnull %2)
  br label %lseg_interpt_lseg.exit

lseg_interpt_lseg.exit:                           ; preds = %bb.ab, %line_construct.exit.i
  %.0.i = phi i1 [ %i.dc, %bb.ab ], [ false, %line_construct.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i32, ptr %i.ah, align 4            ; 3 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp sge i64 %indvars.iv.next, %i.de
  %.not30 = select i1 %i.df, i1 true, i1 %.0.i
  br i1 %.not30, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %lseg_interpt_lseg.exit
  %.pre = load i32, ptr %i.z, align 4             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.dg = sext i32 %.pre to i64
  %i.dh = icmp sge i64 %indvars.iv.next45, %i.dg
  %.not28 = select i1 %i.dh, i1 true, i1 %.0.i
  br i1 %.not28, label %._crit_edge40, label %.lr.ph39.split.outer, !llvm.loop !52

.lr.ph39.split.outer:                             ; preds = %.lr.ph39, %._crit_edge
  %.ph = phi i32 [ %.pre, %._crit_edge ], [ %i.aa, %.lr.ph39 ]
  %.ph73 = phi i32 [ %i.dd, %._crit_edge ], [ %i.an, %.lr.ph39 ] ; 3 uses
  %indvars.iv44.ph = phi i64 [ %indvars.iv.next45, %._crit_edge ], [ 0, %.lr.ph39 ]
  %i.di = add i32 %.ph73, -1
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.dj
  %i.dl = icmp slt i32 %.ph73, 1
  %i.dm = sext i32 %.ph to i64
  br label %.lr.ph39.split

._crit_edge.thread:                               ; preds = %.lr.ph39.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %indvars.iv.next4568 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %.not78 = icmp slt i64 %indvars.iv.next4568, %i.dm
  br i1 %.not78, label %.lr.ph39.split, label %.critedge, !llvm.loop !52

._crit_edge40:                                    ; preds = %._crit_edge
  br i1 %.0.i, label %bb.ad, label %.critedge

.critedge:                                        ; preds = %._crit_edge.thread, %.lr.ph39, %..critedge_crit_edge, %._crit_edge40
  %i.dn = phi i32 [ %.pre50, %..critedge_crit_edge ], [ %i.an, %.lr.ph39 ], [ %i.dd, %._crit_edge40 ], [ %.ph73, %._crit_edge.thread ]
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dp = call fastcc i32 @point_inside(ptr noundef nonnull %i.y, i32 noundef %i.dn, ptr noundef nonnull %i.do)
  %.not = icmp eq i32 %i.dp, 0
  br i1 %.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.critedge
  %i.dq = load i32, ptr %i.z, align 4
  %i.dr = call fastcc i32 @point_inside(ptr noundef nonnull %i.do, i32 noundef %i.dq, ptr noundef nonnull %i.y)
  %i.ds = icmp ne i32 %i.dr, 0
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge, %bb.ac, %._crit_edge40
  %.2 = phi i1 [ true, %._crit_edge40 ], [ true, %.critedge ], [ %i.ds, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %box_ov.exit.thread

box_ov.exit.thread:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.ad, %box_ov.exit
  %.3 = phi i1 [ %.2, %bb.ad ], [ false, %box_ov.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @poly_contain(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.LSEG, align 8               ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load double, ptr %i.i, align 8
  %i.l = load double, ptr %i.j, align 8
  %i.m = fadd double %i.k, f0x3EB0C6F7A0B5ED8D
  %i.n = fcmp ult double %i.m, %i.l
  br i1 %i.n, label %poly_contain_poly.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = load double, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load double, ptr %i.q, align 8
  %i.s = fadd double %i.r, f0x3EB0C6F7A0B5ED8D
  %i.t = fcmp ugt double %i.p, %i.s
  br i1 %i.t, label %poly_contain_poly.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load double, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.x = load double, ptr %i.w, align 8
  %i.y = fadd double %i.v, f0x3EB0C6F7A0B5ED8D
  %i.z = fcmp ult double %i.y, %i.x
  br i1 %i.z, label %poly_contain_poly.exit, label %box_contain_box.exit.i

box_contain_box.exit.i:                           ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ab = load double, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = fadd double %i.ad, f0x3EB0C6F7A0B5ED8D
  %i.af = fcmp ugt double %i.ab, %i.ae
  br i1 %i.af, label %poly_contain_poly.exit, label %bb.d

bb.d:                                             ; preds = %box_contain_box.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = add i32 %i.ai, -1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.am = icmp sgt i32 %i.ai, 0
  br i1 %i.am, label %.lr.ph.i, label %poly_contain_poly.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.ap = call fastcc zeroext i1 @lseg_inside_poly(ptr noundef %1, ptr noundef %i.an, ptr noundef readonly %i.d, i32 noundef 0)
  br i1 %i.ap, label %bb.f, label %poly_contain_poly.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = load i32, ptr %i.ah, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.as, label %bb.e, label %poly_contain_poly.exit, !llvm.loop !54

poly_contain_poly.exit:                           ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.c, %box_contain_box.exit.i, %bb.d
  %.010.i = phi i64 [ 0, %box_contain_box.exit.i ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.at = load i64, ptr %i.a, align 8
  %i.au = inttoptr i64 %i.at to ptr
  %.not = icmp eq ptr %i.d, %i.au
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %poly_contain_poly.exit
  tail call void @pfree(ptr noundef %i.d) #12
  br label %bb.h

bb.h:                                             ; preds = %poly_contain_poly.exit, %bb.g
  %i.av = load i64, ptr %i.e, align 8
  %i.aw = inttoptr i64 %i.av to ptr
  %.not11 = icmp eq ptr %i.h, %i.aw
  br i1 %.not11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @pfree(ptr noundef nonnull %i.h) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret i64 %.010.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @poly_contained(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.LSEG, align 8               ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load double, ptr %i.i, align 8
  %i.l = load double, ptr %i.j, align 8
  %i.m = fadd double %i.k, f0x3EB0C6F7A0B5ED8D
  %i.n = fcmp ult double %i.m, %i.l
  br i1 %i.n, label %poly_contain_poly.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load double, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load double, ptr %i.q, align 8
  %i.s = fadd double %i.r, f0x3EB0C6F7A0B5ED8D
  %i.t = fcmp ugt double %i.p, %i.s
  br i1 %i.t, label %poly_contain_poly.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load double, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load double, ptr %i.w, align 8
  %i.y = fadd double %i.v, f0x3EB0C6F7A0B5ED8D
  %i.z = fcmp ult double %i.y, %i.x
  br i1 %i.z, label %poly_contain_poly.exit, label %box_contain_box.exit.i

box_contain_box.exit.i:                           ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ab = load double, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = fadd double %i.ad, f0x3EB0C6F7A0B5ED8D
  %i.af = fcmp ugt double %i.ab, %i.ae
  br i1 %i.af, label %poly_contain_poly.exit, label %bb.d

bb.d:                                             ; preds = %box_contain_box.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = add i32 %i.ai, -1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.am = icmp sgt i32 %i.ai, 0
  br i1 %i.am, label %.lr.ph.i, label %poly_contain_poly.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.ap = call fastcc zeroext i1 @lseg_inside_poly(ptr noundef %1, ptr noundef %i.an, ptr noundef readonly %i.h, i32 noundef 0)
  br i1 %i.ap, label %bb.f, label %poly_contain_poly.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = load i32, ptr %i.ah, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.as, label %bb.e, label %poly_contain_poly.exit, !llvm.loop !54

poly_contain_poly.exit:                           ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.c, %box_contain_box.exit.i, %bb.d
  %.010.i = phi i64 [ 0, %box_contain_box.exit.i ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.at = load i64, ptr %i.a, align 8
  %i.au = inttoptr i64 %i.at to ptr
  %.not = icmp eq ptr %i.d, %i.au
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %poly_contain_poly.exit
  tail call void @pfree(ptr noundef nonnull %i.d) #12
  br label %bb.h

bb.h:                                             ; preds = %poly_contain_poly.exit, %bb.g
  %i.av = load i64, ptr %i.e, align 8
  %i.aw = inttoptr i64 %i.av to ptr
  %.not11 = icmp eq ptr %i.h, %i.aw
  br i1 %.not11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @pfree(ptr noundef %i.h) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret i64 %.010.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @poly_contain_pt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.k = tail call fastcc i32 @point_inside(ptr noundef %i.g, i32 noundef %i.i, ptr noundef nonnull %i.j)
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i64
  ret i64 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @pt_contained_poly(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = tail call fastcc i32 @point_inside(ptr noundef %i.c, i32 noundef %i.i, ptr noundef nonnull %i.j)
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i64
  ret i64 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local i64 @poly_distance(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Point, align 8              ; 5 uses
  %2 = alloca %struct.LINE, align 16              ; 8 uses
  %3 = alloca %struct.Point, align 8              ; 3 uses
  %4 = alloca %struct.LSEG, align 16              ; 8 uses
  %5 = alloca %struct.LSEG, align 16              ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.i = tail call fastcc zeroext i1 @poly_overlap_internal(ptr noundef %i.d, ptr noundef %i.h)
  br i1 %i.i, label %bb.af, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph55, label %._crit_edge56.thread

.lr.ph55:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i32, ptr %i.m, align 4              ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph55.split, label %._crit_edge56.thread

.lr.ph55.split:                                   ; preds = %.lr.ph55, %._crit_edge
  %i.v = phi i32 [ %i.dz, %._crit_edge ], [ %i.k, %.lr.ph55 ] ; 2 uses
  %i.w = phi i32 [ %i.ea, %._crit_edge ], [ %i.t, %.lr.ph55 ] ; 3 uses
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %._crit_edge ], [ 0, %.lr.ph55 ] ; 4 uses
  %.03553 = phi i8 [ %.1.lcssa, %._crit_edge ], [ 0, %.lr.ph55 ] ; 2 uses
  %.03652 = phi double [ %.137.lcssa, %._crit_edge ], [ 0.000000e+00, %.lr.ph55 ] ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph55.split
  %.not77 = icmp eq i64 %indvars.iv61, 0
  %i.y = trunc nuw nsw i64 %indvars.iv61 to i32
  %.033. = select i1 %.not77, i32 %i.v, i32 %i.y
  %.031 = add i32 %.033., -1
  %i.z = sext i32 %.031 to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.z
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv61
  %i.ac = trunc nuw i8 %.03553 to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 4 uses
  %i.ad = phi i32 [ %i.w, %.lr.ph ], [ %i.dw, %bb.ae ]
  %.149 = phi i1 [ %i.ac, %.lr.ph ], [ true, %bb.ae ]
  %.13748 = phi double [ %.03652, %.lr.ph ], [ %.238, %bb.ae ] ; 3 uses
  %.not = icmp eq i64 %indvars.iv, 0
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %.032. = select i1 %.not, i32 %i.ad, i32 %i.ae
  %.0 = add i32 %.032., -1
  %i.af = load <2 x double>, ptr %i.aa, align 8
  store <2 x double> %i.af, ptr %4, align 16
  %i.ag = load <2 x double>, ptr %i.ab, align 8
  store <2 x double> %i.ag, ptr %i.o, align 16
  %i.ah = sext i32 %.0 to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.ak = load <2 x double>, ptr %i.ai, align 8   ; 4 uses
  %i.al = extractelement <2 x double> %i.ak, i64 1 ; 7 uses
  %i.am = extractelement <2 x double> %i.ak, i64 0 ; 7 uses
  store <2 x double> %i.ak, ptr %5, align 16
  %i.an = load <2 x double>, ptr %i.aj, align 8   ; 4 uses
  store <2 x double> %i.an, ptr %i.q, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 2 uses
  %i.ap = fcmp oeq double %i.am, %i.ao
  %foldExtExtBinop = fsub <2 x double> %i.ak, %i.an
  %i.aq = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ar = call double @llvm.fabs.f64(double %i.aq) ; 2 uses
  %i.as = fcmp ole double %i.ar, f0x3EB0C6F7A0B5ED8D
  %i.at = or i1 %i.ap, %i.as
  br i1 %i.at, label %line_construct.exit.i.sink.split.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = extractelement <2 x double> %i.an, i64 1 ; 3 uses
  %i.av = fcmp oeq double %i.al, %i.au
  %i.aw = fsub double %i.al, %i.au                ; 3 uses
  %i.ax = call double @llvm.fabs.f64(double %i.aw) ; 2 uses
  %i.ay = fcmp ole double %i.ax, f0x3EB0C6F7A0B5ED8D
  %i.az = or i1 %i.av, %i.ay
  br i1 %i.az, label %line_construct.exit.i.sink.split.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = fcmp oeq double %i.ax, +inf
  br i1 %i.ba, label %bb.e, label %float8_mi.exit.i, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.bb = call double @llvm.fabs.f64(double %i.al)
  %i.bc = fcmp oeq double %i.bb, +inf
  %i.bd = call double @llvm.fabs.f64(double %i.au)
  %i.be = fcmp oeq double %i.bd, +inf
  %or.cond.i.i.i = or i1 %i.bc, %i.be
  br i1 %or.cond.i.i.i, label %float8_mi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit.i

float8_mi.exit.i:                                 ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i.i = phi double [ %i.aw, %bb.d ], [ %i.aw, %bb.e ], [ %i.bf, %bb.f ] ; 4 uses
  %i.bg = fcmp oeq double %i.ar, +inf
  br i1 %i.bg, label %bb.g, label %float8_mi.exit11.i, !prof !13

bb.g:                                             ; preds = %float8_mi.exit.i
  %i.bh = call double @llvm.fabs.f64(double %i.am)
  %i.bi = fcmp oeq double %i.bh, +inf
  %i.bj = call double @llvm.fabs.f64(double %i.ao)
  %i.bk = fcmp oeq double %i.bj, +inf
  %or.cond.i.i10.i = or i1 %i.bi, %i.bk
  br i1 %or.cond.i.i10.i, label %float8_mi.exit11.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit11.i

float8_mi.exit11.i:                               ; preds = %bb.h, %bb.g, %float8_mi.exit.i
  %.0.i.i9.i = phi double [ %i.bl, %bb.h ], [ %i.aq, %bb.g ], [ %i.aq, %float8_mi.exit.i ] ; 3 uses
  %i.bm = fcmp oeq double %.0.i.i9.i, 0.000000e+00
  br i1 %i.bm, label %bb.i, label %bb.k, !prof !13

bb.i:                                             ; preds = %float8_mi.exit11.i
  %i.bn = fcmp uno double %.0.i.i.i, 0.000000e+00
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = call double @float_zero_divide_error_ext(ptr noundef null) #12
  br label %point_sl.exit

bb.k:                                             ; preds = %bb.i, %float8_mi.exit11.i
  %i.bp = fdiv double %.0.i.i.i, %.0.i.i9.i       ; 4 uses
  %i.bq = call double @llvm.fabs.f64(double %i.bp)
  %i.br = fcmp oeq double %i.bq, +inf
  br i1 %i.br, label %bb.l, label %bb.n, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.bs = call double @llvm.fabs.f64(double %.0.i.i.i)
  %i.bt = fcmp oeq double %i.bs, +inf
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_sl.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bv = fcmp oeq double %i.bp, 0.000000e+00
  br i1 %i.bv, label %bb.o, label %point_sl.exit, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.bw = fcmp oeq double %.0.i.i.i, 0.000000e+00
  %i.bx = call double @llvm.fabs.f64(double %.0.i.i9.i)
  %i.by = fcmp oeq double %i.bx, +inf
  %or.cond.i.i13.i = or i1 %i.bw, %i.by
  br i1 %or.cond.i.i13.i, label %point_sl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call double @float_underflow_error_ext(ptr noundef null) #12
  br label %point_sl.exit

point_sl.exit:                                    ; preds = %bb.j, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i42 = phi double [ %i.bp, %bb.o ], [ %i.bp, %bb.n ], [ %i.bo, %bb.j ], [ %i.bz, %bb.p ], [ %i.bu, %bb.m ] ; 4 uses
  %i.ca = call double @llvm.fabs.f64(double %.0.i42)
  %i.cb = fcmp oeq double %i.ca, +inf
  br i1 %i.cb, label %line_construct.exit.i.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %point_sl.exit
  %i.cc = fcmp oeq double %.0.i42, 0.000000e+00
  br i1 %i.cc, label %line_construct.exit.i.sink.split.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  store double %.0.i42, ptr %2, align 16
  store double -1.000000e+00, ptr %i.r, align 8
  %i.cd = fmul double %i.am, %.0.i42              ; 4 uses
  %i.ce = call double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp oeq double %i.ce, +inf
  br i1 %i.cf, label %bb.s, label %bb.u, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.cg = call double @llvm.fabs.f64(double %i.am)
  %i.ch = fcmp oeq double %i.cg, +inf
  br i1 %i.ch, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit.i.i

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cj = fcmp oeq double %i.cd, 0.000000e+00
  br i1 %i.cj, label %bb.v, label %float8_mul.exit.i.i, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.ck = fcmp une double %i.am, 0.000000e+00
  br i1 %i.ck, label %bb.w, label %float8_mul.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.cl = call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit.i.i

float8_mul.exit.i.i:                              ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.0.i.i.i.i = phi double [ %i.cl, %bb.w ], [ %i.ci, %bb.t ], [ %i.cd, %bb.v ], [ %i.cd, %bb.u ] ; 2 uses
  %i.cm = fsub double %i.al, %.0.i.i.i.i          ; 3 uses
  %i.cn = call double @llvm.fabs.f64(double %i.cm)
  %i.co = fcmp oeq double %i.cn, +inf
  br i1 %i.co, label %bb.x, label %float8_mi.exit.i.i, !prof !13

bb.x:                                             ; preds = %float8_mul.exit.i.i
  %i.cp = call double @llvm.fabs.f64(double %i.al)
  %i.cq = fcmp oeq double %i.cp, +inf
  %i.cr = call double @llvm.fabs.f64(double %.0.i.i.i.i)
  %i.cs = fcmp oeq double %i.cr, +inf
  %or.cond.i.i20.i.i = or i1 %i.cq, %i.cs
  br i1 %or.cond.i.i20.i.i, label %float8_mi.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit.i.i

float8_mi.exit.i.i:                               ; preds = %bb.y, %bb.x, %float8_mul.exit.i.i
  %.0.i.i19.i.i = phi double [ %i.ct, %bb.y ], [ %i.cm, %bb.x ], [ %i.cm, %float8_mul.exit.i.i ] ; 2 uses
  %i.cu = fcmp oeq double %.0.i.i19.i.i, 0.000000e+00
  br i1 %i.cu, label %line_construct.exit.i.sink.split, label %line_construct.exit.i

line_construct.exit.i.sink.split.sink.split:      ; preds = %bb.q, %bb.c, %point_sl.exit, %bb.b
  %.sink.ph = phi double [ %i.am, %point_sl.exit ], [ %i.am, %bb.b ], [ %i.al, %bb.c ], [ %i.al, %bb.q ]
  %i.cv = phi <2 x double> [ <double -1.000000e+00, double 0.000000e+00>, %point_sl.exit ], [ <double -1.000000e+00, double 0.000000e+00>, %bb.b ], [ <double 0.000000e+00, double -1.000000e+00>, %bb.c ], [ <double 0.000000e+00, double -1.000000e+00>, %bb.q ]
  store <2 x double> %i.cv, ptr %2, align 16
  br label %line_construct.exit.i

line_construct.exit.i.sink.split:                 ; preds = %float8_mi.exit.i.i
  br label %line_construct.exit.i

line_construct.exit.i:                            ; preds = %line_construct.exit.i.sink.split.sink.split, %line_construct.exit.i.sink.split, %float8_mi.exit.i.i
  %storemerge = phi double [ %.0.i.i19.i.i, %float8_mi.exit.i.i ], [ %.sink.ph, %line_construct.exit.i.sink.split.sink.split ], [ 0.000000e+00, %line_construct.exit.i.sink.split ]
  store double %storemerge, ptr %i.s, align 16
  %i.cw = call fastcc zeroext i1 @lseg_interpt_line(ptr noundef nonnull %1, ptr noundef nonnull readonly %4, ptr noundef nonnull %2)
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %line_construct.exit.i
  %i.cx = call fastcc zeroext i1 @lseg_contain_point(ptr noundef nonnull readonly %5, ptr noundef nonnull %1)
  br i1 %i.cx, label %lseg_interpt_lseg.exit, label %bb.aa

lseg_interpt_lseg.exit:                           ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %lseg_closept_lseg.exit

bb.aa:                                            ; preds = %bb.z, %line_construct.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.cy = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5) ; 3 uses
  %i.cz = call fastcc double @lseg_closept_point(ptr noundef nonnull %3, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.q) ; 3 uses
  %i.da = fcmp ord double %i.cz, 0.000000e+00
  %i.db = fcmp uno double %i.cy, 0.000000e+00
  %i.dc = fcmp olt double %i.cz, %i.cy
  %i.dd = or i1 %i.db, %i.dc
  %i.de = and i1 %i.da, %i.dd
  %.0.i = select i1 %i.de, double %i.cz, double %i.cy ; 3 uses
  %i.df = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %4) ; 3 uses
  %i.dg = fcmp ord double %i.df, 0.000000e+00
  %i.dh = fcmp uno double %.0.i, 0.000000e+00
  %i.di = fcmp olt double %i.df, %.0.i
  %i.dj = or i1 %i.dh, %i.di
  %i.dk = and i1 %i.dg, %i.dj
  %.1.i = select i1 %i.dk, double %i.df, double %.0.i ; 3 uses
  %i.dl = call fastcc double @lseg_closept_point(ptr noundef null, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly %i.o) ; 3 uses
  %i.dm = fcmp ord double %i.dl, 0.000000e+00
  %i.dn = fcmp uno double %.1.i, 0.000000e+00
  %i.do = fcmp olt double %i.dl, %.1.i
  %i.dp = or i1 %i.dn, %i.do
  %i.dq = and i1 %i.dm, %i.dp
  br i1 %i.dq, label %bb.ab, label %lseg_closept_lseg.exit

bb.ab:                                            ; preds = %bb.aa
  br label %lseg_closept_lseg.exit

lseg_closept_lseg.exit:                           ; preds = %lseg_interpt_lseg.exit, %bb.aa, %bb.ab
  %.031.i = phi double [ 0.000000e+00, %lseg_interpt_lseg.exit ], [ %.1.i, %bb.aa ], [ %i.dl, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br i1 %.149, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lseg_closept_lseg.exit
  %i.dr = fcmp ord double %.031.i, 0.000000e+00
  %i.ds = fcmp uno double %.13748, 0.000000e+00
  %i.dt = fcmp olt double %.031.i, %.13748
  %i.du = or i1 %i.ds, %i.dt
  %i.dv = and i1 %i.dr, %i.du
  br i1 %i.dv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %lseg_closept_lseg.exit
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.238 = phi double [ %.031.i, %bb.ad ], [ %.13748, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = load i32, ptr %i.m, align 4             ; 3 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next, %i.dx
  br i1 %i.dy, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !55

._crit_edge.loopexit:                             ; preds = %bb.ae
  %.pre = load i32, ptr %i.j, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph55.split
  %i.dz = phi i32 [ %i.v, %.lr.ph55.split ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ea = phi i32 [ %i.w, %.lr.ph55.split ], [ %i.dw, %._crit_edge.loopexit ]
  %.137.lcssa = phi double [ %.03652, %.lr.ph55.split ], [ %.238, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i8 [ %.03553, %.lr.ph55.split ], [ 1, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.eb = sext i32 %i.dz to i64
  %i.ec = icmp slt i64 %indvars.iv.next62, %i.eb
  br i1 %i.ec, label %.lr.ph55.split, label %._crit_edge56, !llvm.loop !56

._crit_edge56:                                    ; preds = %._crit_edge
  %i.ed = trunc nuw i8 %.1.lcssa to i1
  %i.ee = bitcast double %.137.lcssa to i64
  br i1 %i.ed, label %bb.af, label %._crit_edge56.thread

._crit_edge56.thread:                             ; preds = %.lr.ph55, %.preheader, %._crit_edge56
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ef, align 4
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge56, %bb.a, %._crit_edge56.thread
  %.034 = phi i64 [ 0, %._crit_edge56.thread ], [ 0, %bb.a ], [ %i.ee, %._crit_edge56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i64 %.034
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @construct_point(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load double, ptr %i.c, align 8
  %i.e = tail call ptr @palloc(i64 noundef 16) #12 ; 3 uses
  store double %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.d, ptr %i.f, align 8
  %i.g = ptrtoint ptr %i.e to i64
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local i64 @point_add(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = tail call ptr @palloc(i64 noundef 16) #12 ; 3 uses
  %i.h = load double, ptr %i.c, align 8           ; 2 uses
  %i.i = load double, ptr %i.f, align 8           ; 2 uses
  %i.j = fadd double %i.h, %i.i                   ; 3 uses
  %i.k = tail call double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp oeq double %i.k, +inf
  br i1 %i.l, label %bb.b, label %float8_pl_safe.exit.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.m = tail call double @llvm.fabs.f64(double %i.h)
  %i.n = fcmp oeq double %i.m, +inf
  %i.o = tail call double @llvm.fabs.f64(double %i.i)
  %i.p = fcmp oeq double %i.o, +inf
  %or.cond.i.i = or i1 %i.n, %i.p
  br i1 %or.cond.i.i, label %float8_pl_safe.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_pl_safe.exit.i

float8_pl_safe.exit.i:                            ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i = phi double [ %i.q, %bb.c ], [ %i.j, %bb.b ], [ %i.j, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load double, ptr %i.r, align 8           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = fadd double %i.s, %i.u                   ; 3 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp oeq double %i.w, +inf
  br i1 %i.x, label %bb.d, label %point_add_point.exit, !prof !13

bb.d:                                             ; preds = %float8_pl_safe.exit.i
  %i.y = tail call double @llvm.fabs.f64(double %i.s)
  %i.z = fcmp oeq double %i.y, +inf
  %i.aa = tail call double @llvm.fabs.f64(double %i.u)
  %i.ab = fcmp oeq double %i.aa, +inf
  %or.cond.i16.i = or i1 %i.z, %i.ab
  br i1 %or.cond.i16.i, label %point_add_point.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_add_point.exit

point_add_point.exit:                             ; preds = %float8_pl_safe.exit.i, %bb.d, %bb.e
  %.0.i15.i = phi double [ %i.ac, %bb.e ], [ %i.v, %bb.d ], [ %i.v, %float8_pl_safe.exit.i ]
  store double %.0.i.i, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store double %.0.i15.i, ptr %i.ad, align 8
  %i.ae = ptrtoint ptr %i.g to i64
  ret i64 %i.ae
}

; Function Attrs: nounwind uwtable
define dso_local i64 @point_sub(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = tail call ptr @palloc(i64 noundef 16) #12 ; 3 uses
  %i.h = load double, ptr %i.c, align 8           ; 2 uses
  %i.i = load double, ptr %i.f, align 8           ; 2 uses
  %i.j = fsub double %i.h, %i.i                   ; 3 uses
  %i.k = tail call double @llvm.fabs.f64(double %i.j)
  %i.l = fcmp oeq double %i.k, +inf
  br i1 %i.l, label %bb.b, label %float8_mi.exit.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.m = tail call double @llvm.fabs.f64(double %i.h)
  %i.n = fcmp oeq double %i.m, +inf
  %i.o = tail call double @llvm.fabs.f64(double %i.i)
  %i.p = fcmp oeq double %i.o, +inf
  %or.cond.i.i.i = or i1 %i.n, %i.p
  br i1 %or.cond.i.i.i, label %float8_mi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit.i

float8_mi.exit.i:                                 ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i.i = phi double [ %i.q, %bb.c ], [ %i.j, %bb.b ], [ %i.j, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load double, ptr %i.r, align 8           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = fsub double %i.s, %i.u                   ; 3 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp oeq double %i.w, +inf
  br i1 %i.x, label %bb.d, label %point_sub_point.exit, !prof !13

bb.d:                                             ; preds = %float8_mi.exit.i
  %i.y = tail call double @llvm.fabs.f64(double %i.s)
  %i.z = fcmp oeq double %i.y, +inf
  %i.aa = tail call double @llvm.fabs.f64(double %i.u)
  %i.ab = fcmp oeq double %i.aa, +inf
  %or.cond.i.i6.i = or i1 %i.z, %i.ab
  br i1 %or.cond.i.i6.i, label %point_sub_point.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_sub_point.exit

point_sub_point.exit:                             ; preds = %float8_mi.exit.i, %bb.d, %bb.e
  %.0.i.i5.i = phi double [ %i.ac, %bb.e ], [ %i.v, %bb.d ], [ %i.v, %float8_mi.exit.i ]
  store double %.0.i.i.i, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store double %.0.i.i5.i, ptr %i.ad, align 8
  %i.ae = ptrtoint ptr %i.g to i64
  ret i64 %i.ae
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @point_mul(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @palloc(i64 noundef 16) #12 ; 2 uses
  tail call fastcc void @point_mul_point(ptr noundef %i.g, ptr noundef %i.c, ptr noundef %i.f)
  %i.h = ptrtoint ptr %i.g to i64
  ret i64 %i.h
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @point_mul_point(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = load double, ptr %1, align 8             ; 3 uses
  %i.b = load double, ptr %2, align 8             ; 3 uses
  %i.c = fmul double %i.a, %i.b                   ; 4 uses
  %i.d = tail call double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp oeq double %i.d, +inf
  br i1 %i.e, label %bb.b, label %bb.d, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @llvm.fabs.f64(double %i.a)
  %i.g = fcmp oeq double %i.f, +inf
  %i.h = tail call double @llvm.fabs.f64(double %i.b)
  %i.i = fcmp oeq double %i.h, +inf
  %or.cond14.i.i = or i1 %i.g, %i.i
  br i1 %or.cond14.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.k, label %bb.e, label %float8_mul.exit, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.l = fcmp une double %i.a, 0.000000e+00
  %i.m = fcmp une double %i.b, 0.000000e+00
  %or.cond.i.i = and i1 %i.l, %i.m
end_hunk_5
begin_hunk_6_@box_div:bb.a
  %i.g = tail call ptr @palloc(i64 noundef 32) #12 ; 3 uses
  call fastcc void @point_div_point(ptr noundef nonnull %1, ptr noundef %i.c, ptr noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @point_div_point(ptr noundef nonnull %2, ptr noundef nonnull %i.h, ptr noundef %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load <2 x double>, ptr %1, align 16      ; 4 uses
  %i.k = load <2 x double>, ptr %2, align 16      ; 4 uses
  %i.l = fcmp ord <2 x double> %i.k, zeroinitializer
  %i.m = fcmp uno <2 x double> %i.j, zeroinitializer
  %i.n = fcmp ogt <2 x double> %i.j, %i.k
  %i.o = or <2 x i1> %i.m, %i.n
  %i.p = and <2 x i1> %i.l, %i.o                  ; 2 uses
  %i.q = select <2 x i1> %i.p, <2 x double> %i.j, <2 x double> %i.k
  store <2 x double> %i.q, ptr %i.g, align 8
  %i.r = select <2 x i1> %i.p, <2 x double> %i.k, <2 x double> %i.j
  store <2 x double> %i.r, ptr %i.i, align 8
  %i.s = ptrtoint ptr %i.g to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @point_box(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = tail call ptr @palloc(i64 noundef 32) #12 ; 5 uses
  %i.e = load double, ptr %i.c, align 8           ; 2 uses
  store double %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store double %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load double, ptr %i.g, align 8           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %i.h, ptr %i.j, align 8
  %i.k = ptrtoint ptr %i.d to i64
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @boxes_bound_box(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = tail call ptr @palloc(i64 noundef 32) #12 ; 5 uses
  %i.h = load double, ptr %i.c, align 8           ; 3 uses
  %i.i = load double, ptr %i.f, align 8           ; 3 uses
  %i.j = fcmp ord double %i.i, 0.000000e+00
  %i.k = fcmp uno double %i.h, 0.000000e+00
  %i.l = fcmp ogt double %i.h, %i.i
  %i.m = or i1 %i.k, %i.l
  %i.n = and i1 %i.j, %i.m
  %i.o = select i1 %i.n, double %i.h, double %i.i
  store double %i.o, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load double, ptr %i.p, align 8           ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = load double, ptr %i.r, align 8           ; 3 uses
  %i.t = fcmp ord double %i.q, 0.000000e+00
  %i.u = fcmp uno double %i.s, 0.000000e+00
  %i.v = fcmp olt double %i.q, %i.s
  %i.w = or i1 %i.u, %i.v
  %i.x = and i1 %i.t, %i.w
  %i.y = select i1 %i.x, double %i.q, double %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store double %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = load double, ptr %i.aa, align 8         ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load double, ptr %i.ac, align 8         ; 3 uses
  %i.ae = fcmp ord double %i.ad, 0.000000e+00
  %i.af = fcmp uno double %i.ab, 0.000000e+00
  %i.ag = fcmp ogt double %i.ab, %i.ad
  %i.ah = or i1 %i.af, %i.ag
  %i.ai = and i1 %i.ae, %i.ah
  %i.aj = select i1 %i.ai, double %i.ab, double %i.ad
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store double %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.am = load double, ptr %i.al, align 8         ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ao = load double, ptr %i.an, align 8         ; 3 uses
  %i.ap = fcmp ord double %i.am, 0.000000e+00
  %i.aq = fcmp uno double %i.ao, 0.000000e+00
  %i.ar = fcmp olt double %i.am, %i.ao
  %i.as = or i1 %i.aq, %i.ar
  %i.at = and i1 %i.ap, %i.as
  %i.au = select i1 %i.at, double %i.am, double %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store double %i.au, ptr %i.av, align 8
  %i.aw = ptrtoint ptr %i.g to i64
  ret i64 %i.aw
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @path_add(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %.not49 = icmp eq i32 %i.l, 0
  br i1 %.not49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.m, align 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 6 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, %i.o                       ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = shl i32 %i.r, 4                          ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = lshr exact i64 %i.u, 4
  %.not50 = icmp ne i64 %i.v, %i.s
  %.not51.not = icmp eq i32 %i.t, 2147483632
  %or.cond = or i1 %.not51.not, %.not50
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 261) #12 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4462, ptr noundef nonnull @__func__.path_add) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = add i32 %i.t, 16                         ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call ptr @palloc(i64 noundef %i.aa) #12 ; 7 uses
  %i.ac = shl i32 %i.z, 2
  store i32 %i.ac, ptr %i.ab, align 4
  %i.ad = load i32, ptr %i.n, align 4
  %i.ae = load i32, ptr %i.p, align 4
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = load i32, ptr %i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.aj, align 4
  %i.ak = load i32, ptr %i.n, align 4
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  br label %bb.g

.preheader:                                       ; preds = %bb.g, %bb.f
  %i.ao = load i32, ptr %i.p, align 4
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph54, label %._crit_edge

.lr.ph54:                                         ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.at = load double, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  store double %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load double, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %i.aw, ptr %i.ax, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %i.n, align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.g, label %.preheader, !llvm.loop !57

bb.h:                                             ; preds = %.lr.ph54, %bb.h
  %indvars.iv56 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next57, %bb.h ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv56 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = load i32, ptr %i.n, align 4
  %i.be = trunc nuw nsw i64 %indvars.iv56 to i32  ; 2 uses
  %i.bf = add i32 %i.bd, %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.bg
  store double %i.bc, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = load i32, ptr %i.n, align 4
  %i.bl = add i32 %i.bk, %i.be
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store double %i.bj, ptr %i.bo, align 8
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.bp = load i32, ptr %i.p, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next57, %i.bq
  br i1 %i.br, label %bb.h, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.bs = ptrtoint ptr %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.c
  %.047 = phi i64 [ 0, %bb.c ], [ %i.bs, %._crit_edge ]
  ret i64 %.047
}

; Function Attrs: nounwind uwtable
define dso_local i64 @path_add_pt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_copy(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %point_add_point.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %point_add_point.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.n = load double, ptr %i.m, align 8           ; 2 uses
  %i.o = load double, ptr %i.g, align 8           ; 2 uses
  %i.p = fadd double %i.n, %i.o                   ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp oeq double %i.q, +inf
  br i1 %i.r, label %bb.c, label %float8_pl_safe.exit.i, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.s = tail call double @llvm.fabs.f64(double %i.n)
  %i.t = fcmp oeq double %i.s, +inf
  %i.u = tail call double @llvm.fabs.f64(double %i.o)
  %i.v = fcmp oeq double %i.u, +inf
  %or.cond.i.i = or i1 %i.t, %i.v
  br i1 %or.cond.i.i, label %float8_pl_safe.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_pl_safe.exit.i

float8_pl_safe.exit.i:                            ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi double [ %i.w, %bb.d ], [ %i.p, %bb.c ], [ %i.p, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = load double, ptr %i.l, align 8           ; 2 uses
  %i.aa = fadd double %i.y, %i.z                  ; 3 uses
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp oeq double %i.ab, +inf
  br i1 %i.ac, label %bb.e, label %point_add_point.exit, !prof !13

bb.e:                                             ; preds = %float8_pl_safe.exit.i
  %i.ad = tail call double @llvm.fabs.f64(double %i.y)
  %i.ae = fcmp oeq double %i.ad, +inf
  %i.af = tail call double @llvm.fabs.f64(double %i.z)
  %i.ag = fcmp oeq double %i.af, +inf
  %or.cond.i16.i = or i1 %i.ae, %i.ag
  br i1 %or.cond.i16.i, label %point_add_point.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_add_point.exit

point_add_point.exit:                             ; preds = %float8_pl_safe.exit.i, %bb.e, %bb.f
  %.0.i15.i = phi double [ %i.ah, %bb.f ], [ %i.aa, %bb.e ], [ %i.aa, %float8_pl_safe.exit.i ]
  store double %.0.i.i, ptr %i.m, align 8
  store double %.0.i15.i, ptr %i.x, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.h, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %point_add_point.exit, %bb.a
  %i.al = ptrtoint ptr %i.d to i64
  ret i64 %i.al
}

; Function Attrs: nounwind uwtable
define dso_local i64 @path_sub_pt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_copy(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %point_sub_point.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %point_sub_point.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.n = load double, ptr %i.m, align 8           ; 2 uses
  %i.o = load double, ptr %i.g, align 8           ; 2 uses
  %i.p = fsub double %i.n, %i.o                   ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp oeq double %i.q, +inf
  br i1 %i.r, label %bb.c, label %float8_mi.exit.i, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.s = tail call double @llvm.fabs.f64(double %i.n)
  %i.t = fcmp oeq double %i.s, +inf
  %i.u = tail call double @llvm.fabs.f64(double %i.o)
  %i.v = fcmp oeq double %i.u, +inf
  %or.cond.i.i.i = or i1 %i.t, %i.v
  br i1 %or.cond.i.i.i, label %float8_mi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit.i

float8_mi.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i.i = phi double [ %i.w, %bb.d ], [ %i.p, %bb.c ], [ %i.p, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = load double, ptr %i.l, align 8           ; 2 uses
  %i.aa = fsub double %i.y, %i.z                  ; 3 uses
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp oeq double %i.ab, +inf
  br i1 %i.ac, label %bb.e, label %point_sub_point.exit, !prof !13

bb.e:                                             ; preds = %float8_mi.exit.i
  %i.ad = tail call double @llvm.fabs.f64(double %i.y)
  %i.ae = fcmp oeq double %i.ad, +inf
  %i.af = tail call double @llvm.fabs.f64(double %i.z)
  %i.ag = fcmp oeq double %i.af, +inf
  %or.cond.i.i6.i = or i1 %i.ae, %i.ag
  br i1 %or.cond.i.i6.i, label %point_sub_point.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %point_sub_point.exit

point_sub_point.exit:                             ; preds = %float8_mi.exit.i, %bb.e, %bb.f
  %.0.i.i5.i = phi double [ %i.ah, %bb.f ], [ %i.aa, %bb.e ], [ %i.aa, %float8_mi.exit.i ]
  store double %.0.i.i.i, ptr %i.m, align 8
  store double %.0.i.i5.i, ptr %i.x, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.h, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %point_sub_point.exit, %bb.a
  %i.al = ptrtoint ptr %i.d to i64
  ret i64 %i.al
}

; Function Attrs: nounwind uwtable
define dso_local i64 @path_mul_pt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_copy(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  tail call fastcc void @point_mul_point(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef %i.g)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.h, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.p = ptrtoint ptr %i.d to i64
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local i64 @path_div_pt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_copy(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  tail call fastcc void @point_div_point(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef %i.g)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.h, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.p = ptrtoint ptr %i.d to i64
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @path_poly(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = tail call zeroext i1 @errsave_start(ptr noundef %i.h, ptr noundef null) #12
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.14) #12 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.h, ptr noundef nonnull @.str.2, i32 noundef 4559, ptr noundef nonnull @__func__.path_poly) #12
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = shl i32 %i.m, 4
  %i.o = add i32 %i.n, 40                         ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = tail call ptr @palloc(i64 noundef %i.p) #12 ; 8 uses
  %i.r = shl i32 %i.o, 2
  store i32 %i.r, ptr %i.q, align 4
  %i.s = load i32, ptr %i.l, align 4              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.s, ptr %i.t, align 4
  %i.u = icmp sgt i32 %i.s, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.w = load <2 x double>, ptr %i.v, align 8     ; 2 uses
  br label %make_bound_box.exit

.lr.ph:                                           ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  store double %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store double %i.ad, ptr %i.ae, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %i.l, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.e, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.aj = load <2 x double>, ptr %i.ai, align 8   ; 4 uses
  %.not28 = icmp eq i32 %i.s, 1
  br i1 %.not28, label %make_bound_box.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %i.s to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ak = phi <2 x double> [ %i.aj, %.lr.ph.preheader.i ], [ %i.az, %.lr.ph.i ] ; 3 uses
  %i.al = phi <2 x double> [ %i.aj, %.lr.ph.preheader.i ], [ %i.ay, %.lr.ph.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.an = fcmp uno <2 x double> %i.al, zeroinitializer
  %i.ao = fcmp ord <2 x double> %i.ak, zeroinitializer
  %i.ap = load <2 x double>, ptr %i.am, align 8   ; 6 uses
  %i.aq = fcmp uno <2 x double> %i.ap, zeroinitializer
  %i.ar = fcmp ogt <2 x double> %i.ap, %i.ak
  %i.as = or <2 x i1> %i.aq, %i.ar
  %i.at = and <2 x i1> %i.ao, %i.as
  %i.au = fcmp ord <2 x double> %i.ap, zeroinitializer
  %i.av = fcmp olt <2 x double> %i.ap, %i.al
  %i.aw = or <2 x i1> %i.an, %i.av
  %i.ax = and <2 x i1> %i.au, %i.aw
  %i.ay = select <2 x i1> %i.ax, <2 x double> %i.ap, <2 x double> %i.al ; 2 uses
  %i.az = select <2 x i1> %i.at, <2 x double> %i.ap, <2 x double> %i.ak ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %make_bound_box.exit, label %.lr.ph.i, !llvm.loop !42

make_bound_box.exit:                              ; preds = %.lr.ph.i, %._crit_edge.thread, %._crit_edge
  %i.ba = phi <2 x double> [ %i.aj, %._crit_edge ], [ %i.w, %._crit_edge.thread ], [ %i.az, %.lr.ph.i ]
  %i.bb = phi <2 x double> [ %i.aj, %._crit_edge ], [ %i.w, %._crit_edge.thread ], [ %i.ay, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store <2 x double> %i.bb, ptr %i.bd, align 8
  store <2 x double> %i.ba, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.q to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %make_bound_box.exit
  %.0 = phi i64 [ %i.be, %make_bound_box.exit ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @poly_npoints(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local i64 @poly_center(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.CIRCLE, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.e = tail call ptr @palloc(i64 noundef 16) #12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  call fastcc void @poly_to_circle(ptr noundef nonnull %1, ptr noundef %i.d, ptr noundef %i.g)
  %i.h = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 468
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i8, ptr %i.k, align 4, !range !8, !noundef !9
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.n, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.o = ptrtoint ptr %i.e to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ 0, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @poly_to_circle(ptr nofree noundef captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.i = load double, ptr %0, align 8             ; 2 uses
  %i.j = load double, ptr %i.h, align 8           ; 2 uses
  %i.k = fadd double %i.i, %i.j                   ; 3 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp oeq double %i.l, +inf
  br i1 %i.m, label %bb.c, label %float8_pl_safe.exit.i, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.n = tail call double @llvm.fabs.f64(double %i.i)
  %i.o = fcmp oeq double %i.n, +inf
  %i.p = tail call double @llvm.fabs.f64(double %i.j)
  %i.q = fcmp oeq double %i.p, +inf
  %or.cond.i.i = or i1 %i.o, %i.q
  br i1 %or.cond.i.i, label %float8_pl_safe.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call double @float_overflow_error_ext(ptr noundef %2) #12
  br label %float8_pl_safe.exit.i

float8_pl_safe.exit.i:                            ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi double [ %i.r, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %float8_pl_safe.exit.i
  %i.s = load i32, ptr %2, align 4
  %i.t = icmp eq i32 %i.s, 468
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.g, align 4, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %point_add_point.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %float8_pl_safe.exit.i
  %i.w = load double, ptr %i.a, align 8           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load double, ptr %i.x, align 8           ; 2 uses
  %i.z = fadd double %i.w, %i.y                   ; 3 uses
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp oeq double %i.aa, +inf
  br i1 %i.ab, label %bb.h, label %float8_pl_safe.exit17.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call double @llvm.fabs.f64(double %i.w)
  %i.ad = fcmp oeq double %i.ac, +inf
  %i.ae = tail call double @llvm.fabs.f64(double %i.y)
  %i.af = fcmp oeq double %i.ae, +inf
  %or.cond.i16.i = or i1 %i.ad, %i.af
  br i1 %or.cond.i16.i, label %float8_pl_safe.exit17.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call double @float_overflow_error_ext(ptr noundef %2) #12
  br label %float8_pl_safe.exit17.i

float8_pl_safe.exit17.i:                          ; preds = %bb.i, %bb.h, %bb.g
  %.0.i15.i = phi double [ %i.ag, %bb.i ], [ %i.z, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  br i1 %.not.i, label %point_add_point.exit, label %bb.j

bb.j:                                             ; preds = %float8_pl_safe.exit17.i
  %i.ah = load i32, ptr %2, align 4
  %i.ai = icmp eq i32 %i.ah, 468
  br i1 %i.ai, label %bb.k, label %point_add_point.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %i.g, align 4, !range !8, !noundef !9
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %point_add_point.exit.thread.thread, label %point_add_point.exit.thread

point_add_point.exit:                             ; preds = %float8_pl_safe.exit17.i
  store double %.0.i.i, ptr %0, align 8
  store double %.0.i15.i, ptr %i.a, align 8
  br label %bb.l

point_add_point.exit.thread:                      ; preds = %bb.k, %bb.j
  store double %.0.i.i, ptr %0, align 8
  store double %.0.i15.i, ptr %i.a, align 8
  %.pre = load i32, ptr %2, align 4
  %i.al = icmp eq i32 %.pre, 468
  br i1 %i.al, label %point_add_point.exit.thread.thread, label %bb.l

point_add_point.exit.thread.thread:               ; preds = %bb.f, %bb.k, %point_add_point.exit.thread
  %i.am = load i8, ptr %i.g, align 4, !range !8, !noundef !9
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %point_add_point.exit, %point_add_point.exit.thread, %point_add_point.exit.thread.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.c, align 4             ; 4 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.l
  %.pre98 = load double, ptr %0, align 8          ; 3 uses
  %i.ar = icmp eq i32 %i.ao, 0
  br i1 %i.ar, label %bb.m, label %bb.n, !prof !13

._crit_edge.thread:                               ; preds = %bb.a
  %i.as = icmp eq i32 %i.d, 0
  br i1 %i.as, label %.thread, label %bb.n, !prof !13

bb.m:                                             ; preds = %._crit_edge
  %i.at = fcmp uno double %.pre98, 0.000000e+00
  br i1 %i.at, label %bb.n, label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.m
  %i.au = tail call double @float_zero_divide_error_ext(ptr noundef %2) #12
  br label %float8_div_safe.exit

bb.n:                                             ; preds = %._crit_edge.thread, %bb.m, %._crit_edge
  %.in = phi i32 [ %i.d, %._crit_edge.thread ], [ %i.ao, %bb.m ], [ %i.ao, %._crit_edge ]
  %i.av = phi double [ 0.000000e+00, %._crit_edge.thread ], [ %.pre98, %bb.m ], [ %.pre98, %._crit_edge ] ; 3 uses
  %i.aw = sitofp i32 %.in to double
  %i.ax = fdiv double %i.av, %i.aw                ; 4 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp oeq double %i.ay, +inf
  br i1 %i.az, label %bb.o, label %bb.q, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call double @llvm.fabs.f64(double %i.av)
  %i.bb = fcmp oeq double %i.ba, +inf
  br i1 %i.bb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = tail call double @float_overflow_error_ext(ptr noundef %2) #12
  br label %float8_div_safe.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.bd = fcmp oeq double %i.ax, 0.000000e+00
  br i1 %i.bd, label %bb.r, label %float8_div_safe.exit, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.be = fcmp oeq double %i.av, 0.000000e+00
  br i1 %i.be, label %float8_div_safe.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = tail call double @float_underflow_error_ext(ptr noundef %2) #12
  br label %float8_div_safe.exit

float8_div_safe.exit:                             ; preds = %.thread, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i = phi double [ %i.au, %.thread ], [ %i.bf, %bb.s ], [ %i.bc, %bb.p ], [ %i.ax, %bb.r ], [ %i.ax, %bb.q ]
  store double %.0.i, ptr %0, align 8
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %.critedge, label %bb.t

bb.t:                                             ; preds = %float8_div_safe.exit
  %i.bg = load i32, ptr %2, align 4
  %i.bh = icmp eq i32 %i.bg, 468
  br i1 %i.bh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bj = load i8, ptr %i.bi, align 4, !range !8, !noundef !9
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bl = load double, ptr %i.a, align 8          ; 4 uses
  %i.bm = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = icmp eq i32 %i.bm, 0
  br i1 %i.bo, label %bb.w, label %bb.y, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.bp = fcmp uno double %i.bl, 0.000000e+00
  br i1 %i.bp, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = tail call double @float_zero_divide_error_ext(ptr noundef nonnull %2) #12
  br label %bb.ae

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.br = fdiv double %i.bl, %i.bn                ; 4 uses
  %i.bs = tail call double @llvm.fabs.f64(double %i.br)
  %i.bt = fcmp oeq double %i.bs, +inf
  br i1 %i.bt, label %bb.z, label %bb.ab, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bu = tail call double @llvm.fabs.f64(double %i.bl)
  %i.bv = fcmp oeq double %i.bu, +inf
  br i1 %i.bv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = tail call double @float_overflow_error_ext(ptr noundef nonnull %2) #12
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.bx = fcmp oeq double %i.br, 0.000000e+00
  br i1 %i.bx, label %bb.ac, label %bb.ae, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.by = fcmp oeq double %i.bl, 0.000000e+00
  br i1 %i.by, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = tail call double @float_underflow_error_ext(ptr noundef nonnull %2) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.x
  %.0.i58 = phi double [ %i.bq, %bb.x ], [ %i.bz, %bb.ad ], [ %i.bw, %bb.aa ], [ %i.br, %bb.ac ], [ %i.br, %bb.ab ]
  store double %.0.i58, ptr %i.a, align 8
  %i.ca = load i32, ptr %2, align 4
  %i.cb = icmp eq i32 %i.ca, 468
  br i1 %i.cb, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cd = load i8, ptr %i.cc, align 4, !range !8, !noundef !9
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.loopexit, label %bb.ao

.critedge:                                        ; preds = %float8_div_safe.exit
  %i.cf = load double, ptr %i.a, align 8          ; 4 uses
  %i.cg = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = icmp eq i32 %i.cg, 0
  br i1 %i.ci, label %bb.ag, label %bb.ai, !prof !13

bb.ag:                                            ; preds = %.critedge
  %i.cj = fcmp uno double %i.cf, 0.000000e+00
  br i1 %i.cj, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = tail call double @float_zero_divide_error_ext(ptr noundef null) #12
  br label %float8_div_safe.exit61

bb.ai:                                            ; preds = %bb.ag, %.critedge
  %i.cl = fdiv double %i.cf, %i.ch                ; 4 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl)
  %i.cn = fcmp oeq double %i.cm, +inf
  br i1 %i.cn, label %bb.aj, label %bb.al, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.co = tail call double @llvm.fabs.f64(double %i.cf)
  %i.cp = fcmp oeq double %i.co, +inf
  br i1 %i.cp, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cq = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_div_safe.exit61

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.cr = fcmp oeq double %i.cl, 0.000000e+00
  br i1 %i.cr, label %bb.am, label %float8_div_safe.exit61, !prof !13

bb.am:                                            ; preds = %bb.al
  %i.cs = fcmp oeq double %i.cf, 0.000000e+00
  br i1 %i.cs, label %float8_div_safe.exit61, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ct = tail call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_div_safe.exit61

float8_div_safe.exit61:                           ; preds = %bb.ah, %bb.ak, %bb.al, %bb.am, %bb.an
  %.0.i60 = phi double [ %i.ck, %bb.ah ], [ %i.ct, %bb.an ], [ %i.cq, %bb.ak ], [ %i.cl, %bb.am ], [ %i.cl, %bb.al ]
  store double %.0.i60, ptr %i.a, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %float8_div_safe.exit61, %bb.af, %bb.ae
  %i.cu = load i32, ptr %i.c, align 4             ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph88, label %.._crit_edge89_crit_edge

.._crit_edge89_crit_edge:                         ; preds = %bb.ao
  %.pre100 = load double, ptr %i.b, align 8
  br label %._crit_edge89

.lr.ph88:                                         ; preds = %bb.ao
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph88, %bb.bf
  %indvars.iv95 = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next96, %bb.bf ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv95 ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8         ; 2 uses
  %i.da = load double, ptr %0, align 8            ; 2 uses
  %i.db = fsub double %i.cz, %i.da                ; 3 uses
  %i.dc = tail call double @llvm.fabs.f64(double %i.db)
  %i.dd = fcmp oeq double %i.dc, +inf
  br i1 %i.dd, label %bb.aq, label %float8_mi_safe.exit.i, !prof !13

bb.aq:                                            ; preds = %bb.ap
  %i.de = tail call double @llvm.fabs.f64(double %i.cz)
  %i.df = fcmp oeq double %i.de, +inf
  %i.dg = tail call double @llvm.fabs.f64(double %i.da)
  %i.dh = fcmp oeq double %i.dg, +inf
  %or.cond.i.i65 = or i1 %i.df, %i.dh
  br i1 %or.cond.i.i65, label %float8_mi_safe.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.di = tail call double @float_overflow_error_ext(ptr noundef %2) #12
  br label %float8_mi_safe.exit.i

float8_mi_safe.exit.i:                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0.i.i62 = phi double [ %i.di, %bb.ar ], [ %i.db, %bb.aq ], [ %i.db, %bb.ap ] ; 2 uses
  br i1 %.not, label %.critedge.i, label %bb.as

bb.as:                                            ; preds = %float8_mi_safe.exit.i
  %i.dj = load i32, ptr %2, align 4
  %i.dk = icmp eq i32 %i.dj, 468
  br i1 %i.dk, label %bb.at, label %.critedge.i

bb.at:                                            ; preds = %bb.as
  %i.dl = load i8, ptr %i.cx, align 4, !range !8, !noundef !9
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %point_dt.exit.thread.thread, label %.critedge.i, !prof !13

.critedge.i:                                      ; preds = %bb.at, %bb.as, %float8_mi_safe.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.do = load double, ptr %i.dn, align 8         ; 2 uses
  %i.dp = load double, ptr %i.a, align 8          ; 2 uses
  %i.dq = fsub double %i.do, %i.dp                ; 3 uses
  %i.dr = tail call double @llvm.fabs.f64(double %i.dq)
  %i.ds = fcmp oeq double %i.dr, +inf
  br i1 %i.ds, label %bb.au, label %float8_mi_safe.exit20.i, !prof !13

bb.au:                                            ; preds = %.critedge.i
  %i.dt = tail call double @llvm.fabs.f64(double %i.do)
  %i.du = fcmp oeq double %i.dt, +inf
  %i.dv = tail call double @llvm.fabs.f64(double %i.dp)
  %i.dw = fcmp oeq double %i.dv, +inf
  %or.cond.i19.i = or i1 %i.du, %i.dw
  br i1 %or.cond.i19.i, label %float8_mi_safe.exit20.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dx = tail call double @float_overflow_error_ext(ptr noundef %2) #12
  br label %float8_mi_safe.exit20.i

float8_mi_safe.exit20.i:                          ; preds = %bb.av, %bb.au, %.critedge.i
  %.0.i18.i = phi double [ %i.dx, %bb.av ], [ %i.dq, %bb.au ], [ %i.dq, %.critedge.i ] ; 2 uses
  br i1 %.not, label %.critedge57, label %bb.aw

bb.aw:                                            ; preds = %float8_mi_safe.exit20.i
  %i.dy = load i32, ptr %2, align 4
  %i.dz = icmp eq i32 %i.dy, 468
  br i1 %i.dz, label %bb.ax, label %point_dt.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ea = load i8, ptr %i.cx, align 4, !range !8, !noundef !9
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %point_dt.exit.thread.thread, label %point_dt.exit.thread, !prof !13

point_dt.exit.thread:                             ; preds = %bb.ax, %bb.aw
  %i.ec = tail call double @hypot(double noundef %.0.i.i62, double noundef %.0.i18.i) #12 ; 2 uses
  %.pre99 = load i32, ptr %2, align 4
  %i.ed = icmp eq i32 %.pre99, 468
  br i1 %i.ed, label %point_dt.exit.thread.thread, label %bb.ay

point_dt.exit.thread.thread:                      ; preds = %bb.ax, %bb.at, %point_dt.exit.thread
  %.0.i6476114 = phi double [ %i.ec, %point_dt.exit.thread ], [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.ax ]
  %i.ee = load i8, ptr %i.cx, align 4, !range !8, !noundef !9
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %point_dt.exit.thread.thread, %point_dt.exit.thread
  %.0.i6476113 = phi double [ %.0.i6476114, %point_dt.exit.thread.thread ], [ %i.ec, %point_dt.exit.thread ] ; 2 uses
  %i.eg = load double, ptr %i.b, align 8          ; 2 uses
  %i.eh = fadd double %.0.i6476113, %i.eg         ; 3 uses
  %i.ei = tail call double @llvm.fabs.f64(double %i.eh)
  %i.ej = fcmp oeq double %i.ei, +inf
  br i1 %i.ej, label %bb.az, label %bb.bb, !prof !13

bb.az:                                            ; preds = %bb.ay
  %i.ek = tail call double @llvm.fabs.f64(double %i.eg)
  %i.el = fcmp oeq double %i.ek, +inf
  %i.em = tail call double @llvm.fabs.f64(double %.0.i6476113)
  %i.en = fcmp oeq double %i.em, +inf
  %or.cond.i = or i1 %i.en, %i.el
  br i1 %or.cond.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eo = tail call double @float_overflow_error_ext(ptr noundef nonnull %2) #12
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.0.i66 = phi double [ %i.eo, %bb.ba ], [ %i.eh, %bb.az ], [ %i.eh, %bb.ay ] ; 3 uses
  store double %.0.i66, ptr %i.b, align 8
  %i.ep = load i32, ptr %2, align 4
  %i.eq = icmp eq i32 %i.ep, 468
  br i1 %i.eq, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.er = load i8, ptr %i.cx, align 4, !range !8, !noundef !9
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %.loopexit, label %bb.bf

.critedge57:                                      ; preds = %float8_mi_safe.exit20.i
  %i.et = tail call double @hypot(double noundef %.0.i.i62, double noundef %.0.i18.i) #12 ; 2 uses
  %i.eu = load double, ptr %i.b, align 8          ; 2 uses
  %i.ev = fadd double %i.et, %i.eu                ; 3 uses
  %i.ew = tail call double @llvm.fabs.f64(double %i.ev)
  %i.ex = fcmp oeq double %i.ew, +inf
  br i1 %i.ex, label %bb.bd, label %float8_pl_safe.exit69, !prof !13

bb.bd:                                            ; preds = %.critedge57
  %i.ey = tail call double @llvm.fabs.f64(double %i.eu)
  %i.ez = fcmp oeq double %i.ey, +inf
  %i.fa = tail call double @llvm.fabs.f64(double %i.et)
  %i.fb = fcmp oeq double %i.fa, +inf
  %or.cond.i68 = or i1 %i.fb, %i.ez
  br i1 %or.cond.i68, label %float8_pl_safe.exit69, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fc = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_pl_safe.exit69

float8_pl_safe.exit69:                            ; preds = %.critedge57, %bb.bd, %bb.be
  %.0.i67 = phi double [ %i.fc, %bb.be ], [ %i.ev, %bb.bd ], [ %i.ev, %.critedge57 ] ; 2 uses
  store double %.0.i67, ptr %i.b, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %float8_pl_safe.exit69, %bb.bb, %bb.bc
  %i.fd = phi double [ %.0.i67, %float8_pl_safe.exit69 ], [ %.0.i66, %bb.bb ], [ %.0.i66, %bb.bc ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.fe = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next96, %i.ff
  br i1 %i.fg, label %bb.ap, label %._crit_edge89, !llvm.loop !65

._crit_edge89:                                    ; preds = %bb.bf, %.._crit_edge89_crit_edge
  %i.fh = phi double [ %.pre100, %.._crit_edge89_crit_edge ], [ %i.fd, %bb.bf ] ; 4 uses
  %.lcssa = phi i32 [ %i.cu, %.._crit_edge89_crit_edge ], [ %i.fe, %bb.bf ] ; 2 uses
  %i.fi = sitofp i32 %.lcssa to double
  %i.fj = icmp eq i32 %.lcssa, 0
  br i1 %i.fj, label %bb.bg, label %bb.bi, !prof !13

bb.bg:                                            ; preds = %._crit_edge89
  %i.fk = fcmp uno double %i.fh, 0.000000e+00
  br i1 %i.fk, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fl = tail call double @float_zero_divide_error_ext(ptr noundef %2) #12
  br label %float8_div_safe.exit72

bb.bi:                                            ; preds = %bb.bg, %._crit_edge89
  %i.fm = fdiv double %i.fh, %i.fi                ; 4 uses
  %i.fn = tail call double @llvm.fabs.f64(double %i.fm)
  %i.fo = fcmp oeq double %i.fn, +inf
  br i1 %i.fo, label %bb.bj, label %bb.bl, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.fp = tail call double @llvm.fabs.f64(double %i.fh)
  %i.fq = fcmp oeq double %i.fp, +inf
  br i1 %i.fq, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fr = tail call double @float_overflow_error_ext(ptr noundef %2) #12
  br label %float8_div_safe.exit72

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.fs = fcmp oeq double %i.fm, 0.000000e+00
  br i1 %i.fs, label %bb.bm, label %float8_div_safe.exit72, !prof !13

bb.bm:                                            ; preds = %bb.bl
  %i.ft = fcmp oeq double %i.fh, 0.000000e+00
  br i1 %i.ft, label %float8_div_safe.exit72, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fu = tail call double @float_underflow_error_ext(ptr noundef %2) #12
  br label %float8_div_safe.exit72

float8_div_safe.exit72:                           ; preds = %bb.bh, %bb.bk, %bb.bl, %bb.bm, %bb.bn
  %.0.i70 = phi double [ %i.fl, %bb.bh ], [ %i.fu, %bb.bn ], [ %i.fr, %bb.bk ], [ %i.fm, %bb.bm ], [ %i.fm, %bb.bl ]
  store double %.0.i70, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %point_add_point.exit.thread.thread, %bb.bc, %point_dt.exit.thread.thread, %float8_div_safe.exit72, %bb.af, %bb.u
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @poly_box(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12
  %i.e = tail call ptr @palloc(i64 noundef 32) #12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.g = ptrtoint ptr %i.e to i64
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @box_poly(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = tail call ptr @palloc(i64 noundef 104) #12 ; 15 uses
  store i32 416, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 4, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.g = load double, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store double %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.j = load double, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store double %i.j, ptr %i.k, align 8
  %i.l = load double, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store double %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.o = load double, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store double %i.o, ptr %i.p, align 8
  %i.q = load double, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store double %i.q, ptr %i.r, align 8
  %i.s = load double, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store double %i.s, ptr %i.t, align 8
  %i.u = load double, ptr %i.c, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store double %i.u, ptr %i.v, align 8
  %i.w = load double, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store double %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load double, ptr %i.c, align 8           ; 3 uses
  %i.aa = load double, ptr %i.f, align 8          ; 3 uses
  %i.ab = fcmp ord double %i.aa, 0.000000e+00
  %i.ac = fcmp uno double %i.z, 0.000000e+00
  %i.ad = fcmp ogt double %i.z, %i.aa
  %i.ae = or i1 %i.ac, %i.ad
  %i.af = and i1 %i.ab, %i.ae                     ; 2 uses
  %..i = select i1 %i.af, double %i.z, double %i.aa
  store double %..i, ptr %i.y, align 8
  %.val.i = load double, ptr %i.f, align 8
  %.val25.i = load double, ptr %i.c, align 8
  %.sink.i = select i1 %i.af, double %.val.i, double %.val25.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %.sink.i, ptr %i.ag, align 8
  %i.ah = load double, ptr %i.n, align 8          ; 3 uses
  %i.ai = load double, ptr %i.i, align 8          ; 3 uses
  %i.aj = fcmp ord double %i.ai, 0.000000e+00
  %i.ak = fcmp uno double %i.ah, 0.000000e+00
  %i.al = fcmp ogt double %i.ah, %i.ai
  %i.am = or i1 %i.ak, %i.al
  %i.an = and i1 %i.aj, %i.am                     ; 2 uses
  %.sink22.i = select i1 %i.an, double %i.ah, double %i.ai
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store double %.sink22.i, ptr %i.ao, align 8
  %.val26.i = load double, ptr %i.i, align 8
  %.val27.i = load double, ptr %i.n, align 8
  %.sink20.i = select i1 %i.an, double %.val26.i, double %.val27.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store double %.sink20.i, ptr %i.ap, align 8
  %i.aq = ptrtoint ptr %i.d to i64
  ret i64 %i.aq
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @poly_path(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = shl i32 %i.f, 4
  %i.h = add i32 %i.g, 16                         ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = tail call ptr @palloc(i64 noundef %i.i) #12 ; 6 uses
  %i.k = shl i32 %i.h, 2
  store i32 %i.k, ptr %i.j, align 4
  %i.l = load i32, ptr %i.e, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = load i32, ptr %i.e, align 4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.u = load double, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  store double %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load double, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double %i.x, ptr %i.y, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.e, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ac = ptrtoint ptr %i.j to i64
  ret i64 %i.ac
}

; Function Attrs: nounwind uwtable
define dso_local i64 @circle_in(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 11 uses
  %i.g = tail call ptr @palloc(i64 noundef 24) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.h = tail call ptr @__ctype_b_loc() #13       ; 2 uses
  %.pre = load ptr, ptr %i.h, align 8             ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi ptr [ %i.d, %bb.a ], [ %i.n, %bb.b ] ; 6 uses
  store ptr %storemerge, ptr %i.a, align 8
  %i.i = load i8, ptr %storemerge, align 1        ; 2 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  %i.m = and i16 %i.l, 8192
  %.not = icmp eq i16 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge, i64 1 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !67

bb.c:                                             ; preds = %bb.b
  switch i8 %i.i, label %bb.e [
    i8 60, label %.sink.split
    i8 40, label %.preheader45
  ]

.preheader45:                                     ; preds = %bb.c, %.preheader45
  %storemerge.pn = phi ptr [ %.036, %.preheader45 ], [ %storemerge, %bb.c ]
  %.036 = getelementptr inbounds nuw i8, ptr %storemerge.pn, i64 1 ; 3 uses
  %i.o = load i8, ptr %.036, align 1              ; 2 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = and i16 %i.r, 8192
  %.not40 = icmp eq i16 %i.s, 0
  br i1 %.not40, label %bb.d, label %.preheader45, !llvm.loop !68

bb.d:                                             ; preds = %.preheader45
  %i.t = icmp eq i8 %i.o, 40
  br i1 %i.t, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.036.lcssa.sink = phi ptr [ %i.n, %bb.c ], [ %.036, %bb.d ] ; 2 uses
  store ptr %.036.lcssa.sink, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.d
  %i.u = phi ptr [ %storemerge, %bb.d ], [ %storemerge, %bb.c ], [ %.036.lcssa.sink, %.sink.split ]
  %.not4449 = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ false, %.sink.split ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = call fastcc zeroext i1 @pair_decode(ptr noundef nonnull %i.u, ptr noundef %i.g, ptr noundef nonnull %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, ptr noundef %i.d, ptr noundef %i.f)
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.x, align 4
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 44
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi ptr [ %i.ab, %bb.h ], [ %i.y, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ae = call double @float8in_internal(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, ptr noundef %i.d, ptr noundef %i.f) #12 ; 2 uses
  store double %i.ae, ptr %i.ad, align 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %single_decode.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.f, align 4
  %i.ag = icmp eq i32 %i.af, 468
  br i1 %i.ag, label %single_decode.exit, label %single_decode.exit.thread

single_decode.exit:                               ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ai = load i8, ptr %i.ah, align 4, !range !8, !noundef !9
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %single_decode.exit.thread

bb.k:                                             ; preds = %single_decode.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ak, align 4
  br label %bb.t

single_decode.exit.thread:                        ; preds = %bb.i, %bb.j, %single_decode.exit
  %i.al = fcmp olt double %i.ae, 0.000000e+00
  br i1 %i.al, label %bb.n, label %.preheader

.preheader:                                       ; preds = %single_decode.exit.thread
  %.pre53 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.pre54 = load i8, ptr %.pre53, align 1         ; 2 uses
  br i1 %.not4449, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.preheader
  switch i8 %.pre54, label %.split.us [
    i8 41, label %bb.l
    i8 62, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph.split.us, %.lr.ph.split.us
  %.pre52 = load ptr, ptr %i.h, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.pn.us = phi ptr [ %.pre53, %bb.l ], [ %storemerge42.us, %bb.m ]
  %storemerge42.us = getelementptr inbounds nuw i8, ptr %.pn.us, i64 1 ; 3 uses
  store ptr %storemerge42.us, ptr %i.a, align 8
  %i.am = load i8, ptr %storemerge42.us, align 1  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.pre52, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = and i16 %i.ap, 8192
  %.not43.us = icmp eq i16 %i.aq, 0
  br i1 %.not43.us, label %._crit_edge, label %bb.m, !llvm.loop !69

bb.n:                                             ; preds = %single_decode.exit.thread
  %i.ar = call zeroext i1 @errsave_start(ptr noundef %i.f, ptr noundef null) #12
  br i1 %i.ar, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.as = call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.at = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.15, ptr noundef %i.d) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef 4752, ptr noundef nonnull @__func__.circle_in) #12
  br label %bb.t

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.au = call zeroext i1 @errsave_start(ptr noundef %i.f, ptr noundef null) #12
  br i1 %i.au, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.split.us
  %i.av = call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.aw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.15, ptr noundef %i.d) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef 4767, ptr noundef nonnull @__func__.circle_in) #12
  br label %bb.t

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %i.ax = phi i8 [ %.pre54, %.preheader ], [ %i.am, %bb.m ]
  %.not41 = icmp eq i8 %i.ax, 0
  br i1 %.not41, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.ay = call zeroext i1 @errsave_start(ptr noundef %i.f, ptr noundef null) #12
  br i1 %i.ay, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.az = call i32 @errcode(i32 noundef 33685634) #12 ; 0 uses
  %i.ba = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.15, ptr noundef %i.d) #12 ; 0 uses
  call void @errsave_finish(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef 4774, ptr noundef nonnull @__func__.circle_in) #12
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.bb = ptrtoint ptr %i.g to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %.split.us, %bb.p, %bb.n, %bb.o, %bb.s, %bb.k, %bb.f
  %.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %.split.us ], [ %i.bb, %bb.s ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @circle_out(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @initStringInfo(ptr noundef nonnull %1) #12
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 60) #12
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 40) #12
  %i.d = load double, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load double, ptr %i.e, align 8
  %i.g = call ptr @float8out_internal(double noundef %i.d) #12 ; 2 uses
  %i.h = call ptr @float8out_internal(double noundef %i.f) #12 ; 2 uses
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef %i.g, ptr noundef %i.h) #12
  call void @pfree(ptr noundef %i.g) #12
  call void @pfree(ptr noundef %i.h) #12
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 41) #12
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load double, ptr %i.i, align 8
  %i.k = call ptr @float8out_internal(double noundef %i.j) #12 ; 2 uses
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef %i.k) #12
  call void @pfree(ptr noundef %i.k) #12
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 62) #12
  %i.l = load ptr, ptr %1, align 8
  %i.m = ptrtoint ptr %i.l to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %i.m
}

declare void @initStringInfo(ptr noundef) local_unnamed_addr #2

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @circle_recv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = tail call ptr @palloc(i64 noundef 24) #12 ; 4 uses
  %i.e = tail call double @pq_getmsgfloat8(ptr noundef %i.c) #12
  store double %i.e, ptr %i.d, align 8
  %i.f = tail call double @pq_getmsgfloat8(ptr noundef %i.c) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.f, ptr %i.g, align 8
  %i.h = tail call double @pq_getmsgfloat8(ptr noundef %i.c) #12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store double %i.h, ptr %i.i, align 8
  %i.j = fcmp olt double %i.h, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 50462850) #12 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 4820, ptr noundef nonnull @__func__.circle_recv) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.d to i64
  ret i64 %i.n
}

; Function Attrs: nounwind uwtable
define dso_local i64 @circle_send(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @pq_begintypsend(ptr noundef nonnull %1) #12
  %i.d = load double, ptr %i.c, align 8
  call void @pq_sendfloat8(ptr noundef nonnull %1, double noundef %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load double, ptr %i.e, align 8
  call void @pq_sendfloat8(ptr noundef nonnull %1, double noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load double, ptr %i.g, align 8
  call void @pq_sendfloat8(ptr noundef nonnull %1, double noundef %i.h) #12
  %i.i = call ptr @pq_endtypsend(ptr noundef nonnull %1) #12
  %i.j = ptrtoint ptr %i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 2) i64 @circle_same(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load double, ptr %i.g, align 8           ; 3 uses
  %i.i = fcmp uno double %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load double, ptr %i.j, align 8           ; 3 uses
  %i.l = fcmp uno double %i.k, 0.000000e+00
  %or.cond = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.m = fcmp oeq double %i.h, %i.k
  %i.n = fsub double %i.h, %i.k
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp ole double %i.o, f0x3EB0C6F7A0B5ED8D
  %i.q = or i1 %i.m, %i.p
  br i1 %i.q, label %bb.b, label %point_eq_point.exit

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %i.r = load double, ptr %i.c, align 8           ; 4 uses
  %i.s = fcmp uno double %i.r, 0.000000e+00       ; 2 uses
  br i1 %i.s, label %..critedge_crit_edge.i, label %bb.c

..critedge_crit_edge.i:                           ; preds = %bb.b
  %.pre.i = load double, ptr %i.f, align 8
  br label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load double, ptr %i.t, align 8           ; 3 uses
  %.pre14.i = load double, ptr %i.f, align 8
  %.pre14.fr.i = freeze double %.pre14.i          ; 5 uses
  %or.cond.i = fcmp uno double %i.u, %.pre14.fr.i
  br i1 %or.cond.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load double, ptr %i.v, align 8           ; 3 uses
  %i.x = fcmp uno double %i.w, 0.000000e+00
  br i1 %i.x, label %.critedge.i, label %bb.f, !prof !13

.critedge.i:                                      ; preds = %bb.d, %bb.c, %..critedge_crit_edge.i
  %i.y = phi double [ %.pre.i, %..critedge_crit_edge.i ], [ %.pre14.fr.i, %bb.d ], [ %.pre14.fr.i, %bb.c ] ; 2 uses
  %i.z = fcmp uno double %i.y, 0.000000e+00
  %i.aa = fcmp oeq double %i.r, %i.y
  %.in.i.i = select i1 %i.s, i1 %i.z, i1 %i.aa
  br i1 %.in.i.i, label %bb.e, label %point_eq_point.exit

bb.e:                                             ; preds = %.critedge.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ae = load double, ptr %i.ad, align 8         ; 2 uses
  %i.af = fcmp uno double %i.ac, 0.000000e+00
  %i.ag = fcmp uno double %i.ae, 0.000000e+00
  %i.ah = fcmp oeq double %i.ac, %i.ae
end_hunk_6
begin_hunk_7_@circle_poly_internal:bb.a
  br label %float8_mul_safe.exit

float8_mul_safe.exit:                             ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i = phi double [ %i.aw, %bb.s ], [ %i.at, %bb.p ], [ %i.aq, %bb.r ], [ %i.aq, %bb.q ] ; 2 uses
  %i.ax = load ptr, ptr %i.ah, align 8            ; 5 uses
  %.not73 = icmp eq ptr %i.ax, null
  br i1 %.not73, label %bb.v, label %bb.t

bb.t:                                             ; preds = %float8_mul_safe.exit
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, 468
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i8, ptr %i.ba, align 4, !range !8, !noundef !9
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %float8_mul_safe.exit
  %i.bd = load double, ptr %i.a, align 8          ; 3 uses
  %i.be = tail call double @cos(double noundef %.0.i) #12 ; 3 uses
  %i.bf = fmul double %i.bd, %i.be                ; 4 uses
  %i.bg = tail call double @llvm.fabs.f64(double %i.bf)
  %i.bh = fcmp oeq double %i.bg, +inf
  br i1 %i.bh, label %bb.w, label %bb.y, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.bi = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bj = fcmp oeq double %i.bi, +inf
  %i.bk = tail call double @llvm.fabs.f64(double %i.be)
  %i.bl = fcmp oeq double %i.bk, +inf
  %or.cond14.i = or i1 %i.bj, %i.bl
  br i1 %or.cond14.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = tail call double @float_overflow_error_ext(ptr noundef %i.ax) #12
  br label %float8_mul_safe.exit80

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bn = fcmp oeq double %i.bf, 0.000000e+00
  br i1 %i.bn, label %bb.z, label %float8_mul_safe.exit80, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bo = fcmp une double %i.bd, 0.000000e+00
  %i.bp = fcmp une double %i.be, 0.000000e+00
  %or.cond.i79 = and i1 %i.bo, %i.bp
  br i1 %or.cond.i79, label %bb.aa, label %float8_mul_safe.exit80

bb.aa:                                            ; preds = %bb.z
  %i.bq = tail call double @float_underflow_error_ext(ptr noundef %i.ax) #12
  br label %float8_mul_safe.exit80

float8_mul_safe.exit80:                           ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i78 = phi double [ %i.bq, %bb.aa ], [ %i.bm, %bb.x ], [ %i.bf, %bb.z ], [ %i.bf, %bb.y ] ; 2 uses
  %i.br = load ptr, ptr %i.ah, align 8            ; 4 uses
  %.not74 = icmp eq ptr %i.br, null
  br i1 %.not74, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %float8_mul_safe.exit80
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp eq i32 %i.bs, 468
  br i1 %i.bt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bv = load i8, ptr %i.bu, align 4, !range !8, !noundef !9
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %float8_mul_safe.exit80
  %i.bx = load double, ptr %1, align 8            ; 2 uses
  %i.by = fsub double %i.bx, %.0.i78              ; 3 uses
  %i.bz = tail call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp oeq double %i.bz, +inf
  br i1 %i.ca, label %bb.ae, label %float8_mi_safe.exit, !prof !13

bb.ae:                                            ; preds = %bb.ad
  %i.cb = tail call double @llvm.fabs.f64(double %i.bx)
  %i.cc = fcmp oeq double %i.cb, +inf
  %i.cd = tail call double @llvm.fabs.f64(double %.0.i78)
  %i.ce = fcmp oeq double %i.cd, +inf
  %or.cond.i82 = or i1 %i.ce, %i.cc
  br i1 %or.cond.i82, label %float8_mi_safe.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cf = tail call double @float_overflow_error_ext(ptr noundef %i.br) #12
  br label %float8_mi_safe.exit

float8_mi_safe.exit:                              ; preds = %bb.ad, %bb.ae, %bb.af
  %.0.i81 = phi double [ %i.cf, %bb.af ], [ %i.by, %bb.ae ], [ %i.by, %bb.ad ]
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  store double %.0.i81, ptr %i.cg, align 8
  %i.ch = load ptr, ptr %i.ah, align 8            ; 5 uses
  %.not75 = icmp eq ptr %i.ch, null
  br i1 %.not75, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %float8_mi_safe.exit
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = icmp eq i32 %i.ci, 468
  br i1 %i.cj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cl = load i8, ptr %i.ck, align 4, !range !8, !noundef !9
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %float8_mi_safe.exit
  %i.cn = load double, ptr %i.a, align 8          ; 3 uses
  %i.co = tail call double @sin(double noundef %.0.i) #12 ; 3 uses
  %i.cp = fmul double %i.cn, %i.co                ; 4 uses
  %i.cq = tail call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp oeq double %i.cq, +inf
  br i1 %i.cr, label %bb.aj, label %bb.al, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.cs = tail call double @llvm.fabs.f64(double %i.cn)
  %i.ct = fcmp oeq double %i.cs, +inf
  %i.cu = tail call double @llvm.fabs.f64(double %i.co)
  %i.cv = fcmp oeq double %i.cu, +inf
  %or.cond14.i85 = or i1 %i.ct, %i.cv
  br i1 %or.cond14.i85, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = tail call double @float_overflow_error_ext(ptr noundef %i.ch) #12
  br label %float8_mul_safe.exit86

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.cx = fcmp oeq double %i.cp, 0.000000e+00
  br i1 %i.cx, label %bb.am, label %float8_mul_safe.exit86, !prof !13

bb.am:                                            ; preds = %bb.al
  %i.cy = fcmp une double %i.cn, 0.000000e+00
  %i.cz = fcmp une double %i.co, 0.000000e+00
  %or.cond.i84 = and i1 %i.cy, %i.cz
  br i1 %or.cond.i84, label %bb.an, label %float8_mul_safe.exit86

bb.an:                                            ; preds = %bb.am
  %i.da = tail call double @float_underflow_error_ext(ptr noundef %i.ch) #12
  br label %float8_mul_safe.exit86

float8_mul_safe.exit86:                           ; preds = %bb.ak, %bb.al, %bb.am, %bb.an
  %.0.i83 = phi double [ %i.da, %bb.an ], [ %i.cw, %bb.ak ], [ %i.cp, %bb.am ], [ %i.cp, %bb.al ] ; 2 uses
  %i.db = load ptr, ptr %i.ah, align 8            ; 4 uses
  %.not76 = icmp eq ptr %i.db, null
  br i1 %.not76, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %float8_mul_safe.exit86
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = icmp eq i32 %i.dc, 468
  br i1 %i.dd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.df = load i8, ptr %i.de, align 4, !range !8, !noundef !9
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %float8_mul_safe.exit86
  %i.dh = load double, ptr %i.am, align 8         ; 2 uses
  %i.di = fadd double %.0.i83, %i.dh              ; 3 uses
  %i.dj = tail call double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp oeq double %i.dj, +inf
  br i1 %i.dk, label %bb.ar, label %float8_pl_safe.exit, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.dl = tail call double @llvm.fabs.f64(double %i.dh)
  %i.dm = fcmp oeq double %i.dl, +inf
  %i.dn = tail call double @llvm.fabs.f64(double %.0.i83)
  %i.do = fcmp oeq double %i.dn, +inf
  %or.cond.i88 = or i1 %i.do, %i.dm
  br i1 %or.cond.i88, label %float8_pl_safe.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dp = tail call double @float_overflow_error_ext(ptr noundef %i.db) #12
  br label %float8_pl_safe.exit

float8_pl_safe.exit:                              ; preds = %bb.aq, %bb.ar, %bb.as
  %.0.i87 = phi double [ %i.dp, %bb.as ], [ %i.di, %bb.ar ], [ %i.di, %bb.aq ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store double %.0.i87, ptr %i.dq, align 8
  %i.dr = load ptr, ptr %i.ah, align 8            ; 4 uses
  %.not77 = icmp eq ptr %i.dr, null
  br i1 %.not77, label %.critedge, label %bb.at

bb.at:                                            ; preds = %float8_pl_safe.exit
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = icmp eq i32 %i.ds, 468
  br i1 %i.dt, label %bb.au, label %.critedge

bb.au:                                            ; preds = %bb.at
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dv = load i8, ptr %i.du, align 4, !range !8, !noundef !9
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.au, %bb.at, %float8_pl_safe.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !70

._crit_edge:                                      ; preds = %.critedge
  %i.dx = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.dy = load <2 x double>, ptr %i.dx, align 8   ; 4 uses
  %i.dz = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 1
  br i1 %i.ea, label %.lr.ph.preheader.i, label %make_bound_box.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %i.dz to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.eb = phi <2 x double> [ %i.dy, %.lr.ph.preheader.i ], [ %i.eq, %.lr.ph.i ] ; 3 uses
  %i.ec = phi <2 x double> [ %i.dy, %.lr.ph.preheader.i ], [ %i.ep, %.lr.ph.i ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %indvars.iv.i
  %i.ee = fcmp uno <2 x double> %i.ec, zeroinitializer
  %i.ef = fcmp ord <2 x double> %i.eb, zeroinitializer
  %i.eg = load <2 x double>, ptr %i.ed, align 8   ; 6 uses
  %i.eh = fcmp uno <2 x double> %i.eg, zeroinitializer
  %i.ei = fcmp ogt <2 x double> %i.eg, %i.eb
  %i.ej = or <2 x i1> %i.eh, %i.ei
  %i.ek = and <2 x i1> %i.ef, %i.ej
  %i.el = fcmp ord <2 x double> %i.eg, zeroinitializer
  %i.em = fcmp olt <2 x double> %i.eg, %i.ec
  %i.en = or <2 x i1> %i.ee, %i.em
  %i.eo = and <2 x i1> %i.el, %i.en
  %i.ep = select <2 x i1> %i.eo, <2 x double> %i.eg, <2 x double> %i.ec ; 2 uses
  %i.eq = select <2 x i1> %i.ek, <2 x double> %i.eg, <2 x double> %i.eb ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %make_bound_box.exit, label %.lr.ph.i, !llvm.loop !42

make_bound_box.exit:                              ; preds = %.lr.ph.i, %._crit_edge
  %i.er = phi <2 x double> [ %i.dy, %._crit_edge ], [ %i.eq, %.lr.ph.i ]
  %i.es = phi <2 x double> [ %i.dy, %._crit_edge ], [ %i.ep, %.lr.ph.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store <2 x double> %i.es, ptr %i.eu, align 8
  store <2 x double> %i.er, ptr %i.et, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.ac, %bb.ah, %bb.ap, %bb.au, %bb.h, %bb.i, %bb.e, %bb.f, %bb.b, %bb.c, %make_bound_box.exit
  %.2 = phi ptr [ %i.y, %make_bound_box.exit ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.i ], [ null, %bb.au ], [ null, %bb.ap ], [ null, %bb.ah ], [ null, %bb.ac ], [ null, %bb.u ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @circle_to_poly(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call fastcc ptr @circle_poly_internal(i32 noundef 12, ptr noundef %i.c, ptr noundef %0)
  %i.e = ptrtoint ptr %i.d to i64
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @poly_circle(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #12
  %i.e = tail call ptr @palloc(i64 noundef 24) #12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call fastcc void @poly_to_circle(ptr noundef %i.e, ptr noundef %i.d, ptr noundef %i.g)
  %i.h = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 468
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i8, ptr %i.k, align 4, !range !8, !noundef !9
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.n, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = ptrtoint ptr %i.e to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ 0, %bb.d ], [ %i.o, %bb.e ]
  ret i64 %.0
}

declare double @float_overflow_error_ext(ptr noundef) local_unnamed_addr #2

declare double @float_underflow_error_ext(ptr noundef) local_unnamed_addr #2

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

declare ptr @pg_detoast_datum_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc double @point_invsl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load double, ptr %0, align 8             ; 3 uses
  %i.b = load double, ptr %1, align 8             ; 3 uses
  %i.c = fcmp oeq double %i.a, %i.b
  %i.d = fsub double %i.a, %i.b                   ; 3 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d) ; 2 uses
  %i.f = fcmp ole double %i.e, f0x3EB0C6F7A0B5ED8D
  %i.g = or i1 %i.c, %i.f
  br i1 %i.g, label %float8_div.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load double, ptr %i.h, align 8           ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8           ; 4 uses
  %i.l = fcmp oeq double %i.i, %i.k
  %i.m = fsub double %i.i, %i.k
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp ole double %i.n, f0x3EB0C6F7A0B5ED8D
  %i.p = or i1 %i.l, %i.o
  br i1 %i.p, label %float8_div.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = fcmp oeq double %i.e, +inf
  br i1 %i.q, label %bb.d, label %float8_mi.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.r = tail call double @llvm.fabs.f64(double %i.a)
  %i.s = fcmp oeq double %i.r, +inf
  %i.t = tail call double @llvm.fabs.f64(double %i.b)
  %i.u = fcmp oeq double %i.t, +inf
  %or.cond.i.i = or i1 %i.s, %i.u
  br i1 %or.cond.i.i, label %float8_mi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call double @float_overflow_error_ext(ptr noundef null) #12
  %.pre = load double, ptr %i.j, align 8
  %.pre14 = load double, ptr %i.h, align 8
  br label %float8_mi.exit

float8_mi.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  %i.w = phi double [ %.pre14, %bb.e ], [ %i.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.x = phi double [ %.pre, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.0.i.i = phi double [ %i.v, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ] ; 4 uses
  %i.y = fsub double %i.x, %i.w                   ; 3 uses
  %i.z = tail call double @llvm.fabs.f64(double %i.y)
  %i.aa = fcmp oeq double %i.z, +inf
  br i1 %i.aa, label %bb.f, label %float8_mi.exit11, !prof !13

bb.f:                                             ; preds = %float8_mi.exit
  %i.ab = tail call double @llvm.fabs.f64(double %i.x)
  %i.ac = fcmp oeq double %i.ab, +inf
  %i.ad = tail call double @llvm.fabs.f64(double %i.w)
  %i.ae = fcmp oeq double %i.ad, +inf
  %or.cond.i.i10 = or i1 %i.ac, %i.ae
  br i1 %or.cond.i.i10, label %float8_mi.exit11, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit11

float8_mi.exit11:                                 ; preds = %float8_mi.exit, %bb.f, %bb.g
  %.0.i.i9 = phi double [ %i.af, %bb.g ], [ %i.y, %bb.f ], [ %i.y, %float8_mi.exit ] ; 3 uses
  %i.ag = fcmp oeq double %.0.i.i9, 0.000000e+00
  br i1 %i.ag, label %bb.h, label %bb.j, !prof !13

bb.h:                                             ; preds = %float8_mi.exit11
  %i.ah = fcmp uno double %.0.i.i, 0.000000e+00
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call double @float_zero_divide_error_ext(ptr noundef null) #12
  br label %float8_div.exit

bb.j:                                             ; preds = %bb.h, %float8_mi.exit11
  %i.aj = fdiv double %.0.i.i, %.0.i.i9           ; 4 uses
  %i.ak = tail call double @llvm.fabs.f64(double %i.aj)
  %i.al = fcmp oeq double %i.ak, +inf
  br i1 %i.al, label %bb.k, label %bb.m, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.am = tail call double @llvm.fabs.f64(double %.0.i.i)
  %i.an = fcmp oeq double %i.am, +inf
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_div.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ap = fcmp oeq double %i.aj, 0.000000e+00
  br i1 %i.ap, label %bb.n, label %float8_div.exit, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.aq = fcmp oeq double %.0.i.i, 0.000000e+00
  %i.ar = tail call double @llvm.fabs.f64(double %.0.i.i9)
  %i.as = fcmp oeq double %i.ar, +inf
  %or.cond.i.i13 = or i1 %i.aq, %i.as
  br i1 %or.cond.i.i13, label %float8_div.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_div.exit

float8_div.exit:                                  ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.b, %bb.a
  %.0 = phi double [ +inf, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.ai, %bb.i ], [ %i.at, %bb.o ], [ %i.ao, %bb.l ], [ %i.aj, %bb.n ], [ %i.aj, %bb.m ]
  ret double %.0
}

declare double @float_zero_divide_error_ext(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @lseg_inside_poly(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.LSEG, align 8               ; 10 uses
  %5 = alloca %struct.LSEG, align 8               ; 12 uses
  %6 = alloca %struct.Point, align 8              ; 7 uses
  %7 = alloca %struct.Point, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  tail call void @check_stack_depth() #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.c = icmp eq i32 %3, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %. = select i1 %i.c, i32 %i.e, i32 %3
  %i.f = add i32 %., -1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.j = icmp slt i32 %3, %i.e
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge57
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next.pre-phi, %._crit_edge57 ] ; 4 uses
  %.02953 = phi i1 [ false, %.lr.ph ], [ %.1, %._crit_edge57 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.m = load volatile i32, ptr @InterruptPending, align 4
  %.not38 = icmp eq i32 %i.m, 0
  br i1 %.not38, label %bb.d, label %bb.c, !prof !71

bb.c:                                             ; preds = %bb.b
  call void @ProcessInterrupts() #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.o = call fastcc zeroext i1 @lseg_contain_point(ptr noundef nonnull %4, ptr noundef nonnull %5)
  %i.p = call fastcc zeroext i1 @lseg_contain_point(ptr noundef nonnull %4, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %indvars.iv, 1               ; 2 uses
  %i.r = trunc nsw i64 %i.q to i32
  %i.s = call fastcc zeroext i1 @touched_lseg_inside_poly(ptr noundef %5, ptr noundef %i.a, ptr noundef %4, ptr noundef nonnull %2, i32 noundef %i.r)
  br label %._crit_edge57

bb.g:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i64 %indvars.iv, 1               ; 2 uses
  %i.u = trunc nsw i64 %i.t to i32
  %i.v = call fastcc zeroext i1 @touched_lseg_inside_poly(ptr noundef %i.a, ptr noundef %5, ptr noundef %4, ptr noundef nonnull %2, i32 noundef %i.u)
  br label %._crit_edge57

bb.i:                                             ; preds = %bb.g
  %i.w = call fastcc zeroext i1 @lseg_interpt_lseg(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %i.x = add nsw i64 %indvars.iv, 1               ; 3 uses
  br i1 %i.w, label %bb.j, label %._crit_edge57

bb.j:                                             ; preds = %bb.i
  %i.y = trunc nsw i64 %i.x to i32                ; 2 uses
  %i.z = call fastcc zeroext i1 @lseg_inside_poly(ptr noundef %5, ptr noundef %6, ptr noundef %2, i32 noundef %i.y)
  br i1 %i.z, label %bb.k, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.aa = call fastcc zeroext i1 @lseg_inside_poly(ptr noundef %i.a, ptr noundef %6, ptr noundef %2, i32 noundef %i.y)
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %bb.i, %bb.h, %bb.k, %bb.f
  %indvars.iv.next.pre-phi = phi i64 [ %i.x, %bb.k ], [ %i.t, %bb.h ], [ %i.q, %bb.f ], [ %i.x, %bb.i ] ; 2 uses
  %.131.shrunk = phi i1 [ %i.aa, %bb.k ], [ %i.v, %bb.h ], [ %i.s, %bb.f ], [ true, %bb.i ] ; 2 uses
  %.1 = phi i1 [ true, %bb.k ], [ %.02953, %bb.h ], [ %.02953, %bb.f ], [ %.02953, %bb.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.ab = load i32, ptr %i.i, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.pre-phi, %i.ac
  %i.ae = select i1 %i.ad, i1 %.131.shrunk, i1 false
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %._crit_edge57, %bb.a
  %.029.lcssa = phi i1 [ false, %bb.a ], [ %.1, %._crit_edge57 ]
  %.lcssa = phi i1 [ true, %bb.a ], [ %.131.shrunk, %._crit_edge57 ] ; 2 uses
  %.not = xor i1 %.lcssa, true
  %or.cond = select i1 %.not, i1 true, i1 %.029.lcssa
  br i1 %or.cond, label %bb.aa, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.af = load double, ptr %5, align 8            ; 2 uses
  %i.ag = load double, ptr %i.a, align 8          ; 2 uses
  %i.ah = fadd double %i.af, %i.ag                ; 3 uses
  %i.ai = call double @llvm.fabs.f64(double %i.ah)
  %i.aj = fcmp oeq double %i.ai, +inf
  br i1 %i.aj, label %bb.m, label %float8_pl.exit, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.ak = call double @llvm.fabs.f64(double %i.af)
  %i.al = fcmp oeq double %i.ak, +inf
  %i.am = call double @llvm.fabs.f64(double %i.ag)
  %i.an = fcmp oeq double %i.am, +inf
  %or.cond.i.i = or i1 %i.al, %i.an
  br i1 %or.cond.i.i, label %float8_pl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_pl.exit

float8_pl.exit:                                   ; preds = %bb.l, %bb.m, %bb.n
  %.0.i.i = phi double [ %i.ao, %bb.n ], [ %i.ah, %bb.m ], [ %i.ah, %bb.l ] ; 3 uses
  %i.ap = fmul double %.0.i.i, 5.000000e-01       ; 4 uses
  %i.aq = call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp oeq double %i.aq, +inf
  br i1 %i.ar, label %bb.o, label %bb.q, !prof !13

bb.o:                                             ; preds = %float8_pl.exit
  %i.as = call double @llvm.fabs.f64(double %.0.i.i)
  %i.at = fcmp oeq double %i.as, +inf
  br i1 %i.at, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_div.exit

bb.q:                                             ; preds = %bb.o, %float8_pl.exit
  %i.av = fcmp oeq double %i.ap, 0.000000e+00
  br i1 %i.av, label %bb.r, label %float8_div.exit, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.aw = fcmp oeq double %.0.i.i, 0.000000e+00
  br i1 %i.aw, label %float8_div.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_div.exit

float8_div.exit:                                  ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i.i39 = phi double [ %i.ap, %bb.q ], [ %i.ax, %bb.s ], [ %i.au, %bb.p ], [ %i.ap, %bb.r ]
  store double %.0.i.i39, ptr %7, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = load double, ptr %i.ay, align 8         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bb = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bc = fadd double %i.az, %i.bb                ; 3 uses
  %i.bd = call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp oeq double %i.bd, +inf
  br i1 %i.be, label %bb.t, label %float8_pl.exit43, !prof !13

bb.t:                                             ; preds = %float8_div.exit
  %i.bf = call double @llvm.fabs.f64(double %i.az)
  %i.bg = fcmp oeq double %i.bf, +inf
  %i.bh = call double @llvm.fabs.f64(double %i.bb)
  %i.bi = fcmp oeq double %i.bh, +inf
  %or.cond.i.i42 = or i1 %i.bg, %i.bi
  br i1 %or.cond.i.i42, label %float8_pl.exit43, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_pl.exit43

float8_pl.exit43:                                 ; preds = %float8_div.exit, %bb.t, %bb.u
  %.0.i.i41 = phi double [ %i.bj, %bb.u ], [ %i.bc, %bb.t ], [ %i.bc, %float8_div.exit ] ; 3 uses
  %i.bk = fmul double %.0.i.i41, 5.000000e-01     ; 4 uses
  %i.bl = call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fcmp oeq double %i.bl, +inf
  br i1 %i.bm, label %bb.v, label %bb.x, !prof !13

bb.v:                                             ; preds = %float8_pl.exit43
  %i.bn = call double @llvm.fabs.f64(double %.0.i.i41)
  %i.bo = fcmp oeq double %i.bn, +inf
  br i1 %i.bo, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_div.exit46

bb.x:                                             ; preds = %bb.v, %float8_pl.exit43
  %i.bq = fcmp oeq double %i.bk, 0.000000e+00
  br i1 %i.bq, label %bb.y, label %float8_div.exit46, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.br = fcmp oeq double %.0.i.i41, 0.000000e+00
  br i1 %i.br, label %float8_div.exit46, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_div.exit46

float8_div.exit46:                                ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i.i44 = phi double [ %i.bk, %bb.x ], [ %i.bs, %bb.z ], [ %i.bp, %bb.w ], [ %i.bk, %bb.y ]
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %.0.i.i44, ptr %i.bt, align 8
  %i.bu = load i32, ptr %i.i, align 4
  %i.bv = call fastcc i32 @point_inside(ptr noundef nonnull %7, i32 noundef %i.bu, ptr noundef nonnull %i.b)
  %i.bw = icmp ne i32 %i.bv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.aa

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %float8_div.exit46, %._crit_edge.thread, %.critedge
  %.236 = phi i1 [ true, %.critedge ], [ %.lcssa, %._crit_edge ], [ %i.bw, %float8_div.exit46 ], [ false, %._crit_edge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i1 %.236
}

declare void @check_stack_depth() local_unnamed_addr #2

declare void @ProcessInterrupts() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @touched_lseg_inside_poly(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.LSEG, align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = load double, ptr %0, align 8             ; 7 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00       ; 4 uses
  br i1 %i.c, label %..critedge_crit_edge.i, label %bb.b

..critedge_crit_edge.i:                           ; preds = %bb.a
  %.pre.i = load double, ptr %2, align 8
  br label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 5 uses
  %.pre14.i = load double, ptr %2, align 8
  %.pre14.fr.i = freeze double %.pre14.i          ; 5 uses
  %or.cond.i = fcmp uno double %i.e, %.pre14.fr.i
  br i1 %or.cond.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = fcmp uno double %i.g, 0.000000e+00
  br i1 %i.h, label %.critedge.i, label %bb.d, !prof !13

.critedge.i:                                      ; preds = %bb.c, %bb.b, %..critedge_crit_edge.i
  %i.i = phi double [ %.pre.i, %..critedge_crit_edge.i ], [ %.pre14.fr.i, %bb.c ], [ %.pre14.fr.i, %bb.b ] ; 2 uses
  %i.j = fcmp uno double %i.i, 0.000000e+00
  %i.k = fcmp oeq double %i.b, %i.i
  %.in.i.i = select i1 %i.c, i1 %i.j, i1 %i.k
  br i1 %.in.i.i, label %.split, label %point_eq_point.exit.thread

.split:                                           ; preds = %.critedge.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load double, ptr %i.l, align 8           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load double, ptr %i.n, align 8           ; 2 uses
  %i.p = fcmp uno double %i.m, 0.000000e+00
  %i.q = fcmp uno double %i.o, 0.000000e+00
  %i.r = fcmp oeq double %i.m, %i.o
  %.in.i13.i = select i1 %i.p, i1 %i.q, i1 %i.r
  br i1 %.in.i13.i, label %bb.e, label %point_eq_point.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.s = fcmp oeq double %i.b, %.pre14.fr.i
  %i.t = fsub double %i.b, %.pre14.fr.i
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = fcmp ole double %i.u, f0x3EB0C6F7A0B5ED8D
  %i.w = or i1 %i.s, %i.v
  br i1 %i.w, label %point_eq_point.exit, label %point_eq_point.exit.thread.thread

point_eq_point.exit.thread.thread:                ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.f

point_eq_point.exit:                              ; preds = %bb.d
  %i.y = fcmp oeq double %i.e, %i.g
  %i.z = fsub double %i.e, %i.g
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp ole double %i.aa, f0x3EB0C6F7A0B5ED8D
  %i.ac = or i1 %i.y, %i.ab
end_hunk_7
begin_hunk_8_@lseg_crossing:bb.a
bb.r:                                             ; preds = %bb.q
  %i.am = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit

float8_mi.exit:                                   ; preds = %bb.p, %bb.q, %bb.r
  %.0.i.i = phi double [ %i.am, %bb.r ], [ %i.af, %bb.q ], [ %i.af, %bb.p ] ; 3 uses
  %i.an = fmul double %1, %.0.i.i                 ; 4 uses
  %i.ao = tail call double @llvm.fabs.f64(double %i.an)
  %i.ap = fcmp oeq double %i.ao, +inf
  br i1 %i.ap, label %bb.s, label %bb.u, !prof !13

bb.s:                                             ; preds = %float8_mi.exit
  %i.aq = tail call double @llvm.fabs.f64(double %.0.i.i)
  %i.ar = fcmp oeq double %i.aq, +inf
  %i.as = fcmp oeq double %i.a, +inf
  %or.cond14.i.i = or i1 %i.as, %i.ar
  br i1 %or.cond14.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit

bb.u:                                             ; preds = %bb.s, %float8_mi.exit
  %i.au = fcmp oeq double %i.an, 0.000000e+00
  br i1 %i.au, label %bb.v, label %float8_mul.exit, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.av = fcmp une double %.0.i.i, 0.000000e+00
  br i1 %i.av, label %bb.w, label %float8_mul.exit

bb.w:                                             ; preds = %bb.v
  %i.aw = tail call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit

float8_mul.exit:                                  ; preds = %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i.i35 = phi double [ %i.aw, %bb.w ], [ %i.at, %bb.t ], [ %i.an, %bb.v ], [ %i.an, %bb.u ] ; 2 uses
  %i.ax = fsub double %1, %3                      ; 3 uses
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp oeq double %i.ay, +inf
  br i1 %i.az, label %bb.x, label %float8_mi.exit39, !prof !13

bb.x:                                             ; preds = %float8_mul.exit
  %i.ba = fcmp oeq double %i.a, +inf
  %i.bb = fcmp oeq double %i.r, +inf
  %or.cond.i.i38 = or i1 %i.ba, %i.bb
  br i1 %or.cond.i.i38, label %float8_mi.exit39, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mi.exit39

float8_mi.exit39:                                 ; preds = %float8_mul.exit, %bb.x, %bb.y
  %.0.i.i37 = phi double [ %i.bc, %bb.y ], [ %i.ax, %bb.x ], [ %i.ax, %float8_mul.exit ] ; 3 uses
  %i.bd = fmul double %0, %.0.i.i37               ; 4 uses
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp oeq double %i.be, +inf
  br i1 %i.bf, label %bb.z, label %bb.ab, !prof !13

bb.z:                                             ; preds = %float8_mi.exit39
  %i.bg = tail call double @llvm.fabs.f64(double %.0.i.i37)
  %i.bh = fcmp oeq double %i.bg, +inf
  %i.bi = tail call double @llvm.fabs.f64(double %0)
  %i.bj = fcmp oeq double %i.bi, +inf
  %or.cond14.i.i42 = or i1 %i.bj, %i.bh
  br i1 %or.cond14.i.i42, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bk = tail call double @float_overflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit43

bb.ab:                                            ; preds = %bb.z, %float8_mi.exit39
  %i.bl = fcmp oeq double %i.bd, 0.000000e+00
  br i1 %i.bl, label %bb.ac, label %float8_mul.exit43, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.bm = fcmp une double %.0.i.i37, 0.000000e+00
  %i.bn = fcmp une double %0, 0.000000e+00
  %or.cond.i.i41 = and i1 %i.bn, %i.bm
  br i1 %or.cond.i.i41, label %bb.ad, label %float8_mul.exit43

bb.ad:                                            ; preds = %bb.ac
  %i.bo = tail call double @float_underflow_error_ext(ptr noundef null) #12
  br label %float8_mul.exit43

float8_mul.exit43:                                ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.0.i.i40 = phi double [ %i.bo, %bb.ad ], [ %i.bk, %bb.aa ], [ %i.bd, %bb.ac ], [ %i.bd, %bb.ab ] ; 2 uses
  %i.bp = fsub double %.0.i.i35, %.0.i.i40        ; 3 uses
  %i.bq = tail call double @llvm.fabs.f64(double %i.bp) ; 2 uses
  %i.br = fcmp oeq double %i.bq, +inf
  br i1 %i.br, label %bb.ae, label %float8_mi.exit46, !prof !13

bb.ae:                                            ; preds = %float8_mul.exit43
  %i.bs = tail call double @llvm.fabs.f64(double %.0.i.i35)
  %i.bt = fcmp oeq double %i.bs, +inf
  %i.bu = tail call double @llvm.fabs.f64(double %.0.i.i40)
  %i.bv = fcmp oeq double %i.bu, +inf
  %or.cond.i.i45 = or i1 %i.bt, %i.bv
  br i1 %or.cond.i.i45, label %float8_mi.exit46.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = tail call double @float_overflow_error_ext(ptr noundef null) #12 ; 2 uses
  %.pre = tail call double @llvm.fabs.f64(double %i.bw)
  br label %float8_mi.exit46

float8_mi.exit46:                                 ; preds = %float8_mul.exit43, %bb.af
  %.pre-phi = phi double [ %i.bq, %float8_mul.exit43 ], [ %.pre, %bb.af ]
  %.0.i.i44 = phi double [ %i.bp, %float8_mul.exit43 ], [ %i.bw, %bb.af ]
  %i.bx = fcmp ugt double %.pre-phi, f0x3EB0C6F7A0B5ED8D
  br i1 %i.bx, label %float8_mi.exit46.thread, label %bb.ai

float8_mi.exit46.thread:                          ; preds = %bb.ae, %float8_mi.exit46
  %.0.i.i4456 = phi double [ %.0.i.i44, %float8_mi.exit46 ], [ %i.bp, %bb.ae ] ; 2 uses
  br i1 %i.p, label %.critedge34, label %bb.ag

bb.ag:                                            ; preds = %float8_mi.exit46.thread
  %i.by = fadd double %.0.i.i4456, f0x3EB0C6F7A0B5ED8D
  %i.bz = fcmp olt double %i.by, 0.000000e+00
  br i1 %i.bz, label %bb.ai, label %bb.ah

.critedge34:                                      ; preds = %float8_mi.exit46.thread
  %i.ca = fcmp ogt double %.0.i.i4456, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ca, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.critedge34
  %i.cb = shl nsw i32 %i.q, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.o, %bb.ag, %.critedge34, %float8_mi.exit46, %bb.l, %.critedge, %bb.g, %bb.b, %bb.ah, %bb.n, %bb.j, %bb.h, %bb.f, %bb.e
  %.0 = phi i32 [ %i.cb, %bb.ah ], [ %i.i, %bb.e ], [ %i.l, %bb.f ], [ %i.o, %bb.h ], [ 2147483647, %bb.b ], [ %i.v, %bb.j ], [ 0, %bb.g ], [ %i.ac, %bb.n ], [ 0, %bb.l ], [ 0, %bb.o ], [ 2147483647, %float8_mi.exit46 ], [ 0, %.critedge ], [ 0, %.critedge34 ], [ 0, %bb.ag ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = !{!22}
!22 = distinct !{!22, !23, !"pq_writeint8: argument 0"}
!23 = distinct !{!23, !"pq_writeint8"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"pq_writeint32: argument 0"}
!26 = distinct !{!26, !"pq_writeint32"}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5, !12}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5, !38}
!38 = !{!"llvm.loop.peeled.count", i32 2}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = !{!45}
!45 = distinct !{!45, !46, !"pq_writeint32: argument 0"}
!46 = distinct !{!46, !"pq_writeint32"}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5, !53}
!53 = !{!"llvm.loop.unswitch.partial.disable"}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5, !53}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!72 = distinct !{!72, !5}
end_hunk_8
