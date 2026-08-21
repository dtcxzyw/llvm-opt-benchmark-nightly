inline.NumInlined: 243
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gist_box_union:bb.a
  %i.an = fcmp uno double %i.al, 0.000000e+00
  %i.ao = fcmp olt double %i.p, %i.al
  %i.ap = or i1 %i.an, %i.ao
  %i.aq = and i1 %i.am, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.al, ptr %i.m, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = phi double [ %i.al, %bb.g ], [ %i.p, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.at = load double, ptr %i.as, align 8         ; 4 uses
  %i.au = fcmp ord double %i.at, 0.000000e+00
  %i.av = fcmp uno double %i.o, 0.000000e+00
  %i.aw = fcmp ogt double %i.o, %i.at
  %i.ax = or i1 %i.av, %i.aw
  %i.ay = and i1 %i.au, %i.ax
  br i1 %i.ay, label %bb.i, label %adjustBox.exit

bb.i:                                             ; preds = %bb.h
  store double %i.at, ptr %i.n, align 8
  br label %adjustBox.exit

adjustBox.exit:                                   ; preds = %bb.h, %bb.i
  %i.az = phi double [ %i.o, %bb.h ], [ %i.at, %bb.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !4

._crit_edge:                                      ; preds = %adjustBox.exit, %bb.a
  %i.ba = inttoptr i64 %i.e to ptr
  store i32 32, ptr %i.ba, align 4
  %i.bb = ptrtoint ptr %i.g to i64
  ret i64 %i.bb
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gist_box_penalty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.c, align 8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.f, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = tail call fastcc double @box_penalty(ptr noundef %i.k, ptr noundef %i.m)
  %i.o = fptrunc double %i.n to float
  store float %i.o, ptr %i.i, align 4
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc double @box_penalty(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.BOX, align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = load <2 x double>, ptr %0, align 8       ; 3 uses
  %i.b = load <2 x double>, ptr %1, align 8       ; 3 uses
  %i.c = fcmp ord <2 x double> %i.b, zeroinitializer
  %i.d = fcmp uno <2 x double> %i.a, zeroinitializer
  %i.e = fcmp ogt <2 x double> %i.a, %i.b
  %i.f = or <2 x i1> %i.d, %i.e
  %i.g = and <2 x i1> %i.c, %i.f
  %i.h = select <2 x i1> %i.g, <2 x double> %i.a, <2 x double> %i.b
  store <2 x double> %i.h, ptr %2, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x double>, ptr %i.i, align 8     ; 3 uses
  %i.m = load <2 x double>, ptr %i.j, align 8     ; 3 uses
  %i.n = fcmp ord <2 x double> %i.l, zeroinitializer
  %i.o = fcmp uno <2 x double> %i.m, zeroinitializer
  %i.p = fcmp olt <2 x double> %i.l, %i.m
  %i.q = or <2 x i1> %i.o, %i.p
  %i.r = and <2 x i1> %i.n, %i.q
  %i.s = select <2 x i1> %i.r, <2 x double> %i.l, <2 x double> %i.m
  store <2 x double> %i.s, ptr %i.k, align 16
  %i.t = call fastcc double @size_box(ptr noundef nonnull %2) ; 2 uses
  %i.u = tail call fastcc double @size_box(ptr noundef nonnull %0) ; 2 uses
  %i.v = fsub double %i.t, %i.u                   ; 3 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp oeq double %i.w, +inf
  br i1 %i.x, label %bb.b, label %float8_mi.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.y = tail call double @llvm.fabs.f64(double %i.t)
  %i.z = fcmp oeq double %i.y, +inf
  %i.aa = tail call double @llvm.fabs.f64(double %i.u)
  %i.ab = fcmp oeq double %i.aa, +inf
  %or.cond.i.i = or i1 %i.z, %i.ab
  br i1 %or.cond.i.i, label %float8_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = tail call double @float_overflow_error_ext(ptr noundef null) #13
  br label %float8_mi.exit

float8_mi.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi double [ %i.ac, %bb.c ], [ %i.v, %bb.b ], [ %i.v, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret double %.0.i.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gist_box_picksplit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ConsiderSplitContext, align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 0, i64 88, i1 false)
  %i.g = load i32, ptr %i.c, align 8              ; 2 uses
  %i.h = add i32 %i.g, 65535                      ; 3 uses
  %i.i = and i32 %i.h, 65535                      ; 10 uses
  %i.j = add nsw i32 %i.i, -1                     ; 3 uses
  store i32 %i.i, ptr %1, align 8
  %i.k = zext nneg i32 %i.i to i64                ; 6 uses
  %i.l = shl nuw nsw i64 %i.k, 4                  ; 5 uses
  %i.m = tail call ptr @palloc(i64 noundef %i.l) #13 ; 14 uses
  %i.n = tail call ptr @palloc(i64 noundef %i.l) #13 ; 8 uses
  %.not268 = icmp eq i32 %i.i, 0                  ; 3 uses
  br i1 %.not268, label %._crit_edge, label %adjustBox.exit.peel

adjustBox.exit.peel:                              ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = trunc i32 %i.h to i16                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = inttoptr i64 %i.t to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %.not.peel = icmp ult i16 %i.r, 2
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %adjustBox.exit.peel
  %i.v = load <2 x double>, ptr %i.p, align 8
  %i.w = load <2 x double>, ptr %i.q, align 8
  br label %adjustBox.exit

adjustBox.exit:                                   ; preds = %.peel.next, %adjustBox.exit
  %.0238269 = phi i16 [ 2, %.peel.next ], [ %i.as, %adjustBox.exit ] ; 3 uses
  %i.x = phi <2 x double> [ %i.v, %.peel.next ], [ %i.al, %adjustBox.exit ] ; 3 uses
  %i.y = phi <2 x double> [ %i.w, %.peel.next ], [ %i.ar, %adjustBox.exit ] ; 3 uses
  %i.z = zext i16 %.0238269 to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = fcmp ord <2 x double> %i.x, zeroinitializer
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = fcmp uno <2 x double> %i.y, zeroinitializer
  %i.ag = load <2 x double>, ptr %i.ac, align 8   ; 3 uses
  %i.ah = fcmp uno <2 x double> %i.ag, zeroinitializer
  %i.ai = fcmp olt <2 x double> %i.x, %i.ag
  %i.aj = or <2 x i1> %i.ah, %i.ai
  %i.ak = and <2 x i1> %i.ad, %i.aj
  %i.al = select <2 x i1> %i.ak, <2 x double> %i.ag, <2 x double> %i.x ; 2 uses
  %i.am = load <2 x double>, ptr %i.ae, align 8   ; 3 uses
  %i.an = fcmp ord <2 x double> %i.am, zeroinitializer
  %i.ao = fcmp ogt <2 x double> %i.y, %i.am
  %i.ap = or <2 x i1> %i.af, %i.ao
  %i.aq = and <2 x i1> %i.an, %i.ap
  %i.ar = select <2 x i1> %i.aq, <2 x double> %i.am, <2 x double> %i.y ; 2 uses
  %i.as = add nuw i16 %.0238269, 1
  %.not.not = icmp ult i16 %.0238269, %i.r
  br i1 %.not.not, label %adjustBox.exit, label %._crit_edge.loopexit, !llvm.loop !7

._crit_edge.loopexit:                             ; preds = %adjustBox.exit
  store <2 x double> %i.al, ptr %i.p, align 8
  store <2 x double> %i.ar, ptr %i.q, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %adjustBox.exit.peel, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i8 1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 10 uses
  %i.av = sext i32 %i.j to i64                    ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = zext nneg i32 %i.i to i64               ; 2 uses
  %i.bb = zext i32 %i.j to i64
  %i.bc = trunc i32 %i.g to i16                   ; 3 uses
  %umax = tail call i16 @llvm.umax.i16(i16 %i.bc, i16 2)
  %i.bd = add i16 %umax, -1                       ; 6 uses
  %xtraiter = and i16 %i.bd, 1
  %2 = icmp ult i16 %i.bc, 3
  %unroll_iter = and i16 %i.bd, -2
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  %lcmp.mod415 = trunc i16 %i.bd to i1
  %xtraiter416 = and i16 %i.bd, 1
  %3 = icmp ult i16 %i.bc, 3
  %unroll_iter419 = and i16 %i.bd, -2
  %lcmp.mod417.not = icmp eq i16 %xtraiter416, 0
  %lcmp.mod418 = trunc i16 %i.bd to i1
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %._crit_edge292
  %i.be = phi i1 [ true, %._crit_edge ], [ false, %._crit_edge292 ] ; 2 uses
  %.0237303 = phi i32 [ 0, %._crit_edge ], [ 1, %._crit_edge292 ] ; 2 uses
  br i1 %.not268, label %._crit_edge292.critedge, label %.lr.ph272

.lr.ph272:                                        ; preds = %.preheader
  br i1 %i.be, label %.lr.ph272.split.us.preheader, label %.lr.ph272.split.preheader

.lr.ph272.split.preheader:                        ; preds = %.lr.ph272
  br i1 %2, label %.lr.ph272.split.epil.preheader, label %.lr.ph272.split

.lr.ph272.split.us.preheader:                     ; preds = %.lr.ph272
  br i1 %3, label %.lr.ph272.split.us.epil.preheader, label %.lr.ph272.split.us

.lr.ph272.split.us:                               ; preds = %.lr.ph272.split.us.preheader, %.lr.ph272.split.us
  %.1239271.us = phi i16 [ %i.ca, %.lr.ph272.split.us ], [ 1, %.lr.ph272.split.us.preheader ] ; 3 uses
  %niter420 = phi i16 [ %niter420.next.1, %.lr.ph272.split.us ], [ 0, %.lr.ph272.split.us.preheader ]
  %i.bf = zext i16 %.1239271.us to i64            ; 2 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = getelementptr [16 x i8], ptr %i.m, i64 %i.bf ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -16
  store double %i.bk, ptr %i.bm, align 8
  %i.bn = load double, ptr %i.bi, align 8
  %i.bo = getelementptr i8, ptr %i.bl, i64 -8
  store double %i.bn, ptr %i.bo, align 8
  %i.bp = add i16 %.1239271.us, 1
  %i.bq = zext i16 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = getelementptr [16 x i8], ptr %i.m, i64 %i.bq ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 -16
  store double %i.bv, ptr %i.bx, align 8
  %i.by = load double, ptr %i.bt, align 8
  %i.bz = getelementptr i8, ptr %i.bw, i64 -8
  store double %i.by, ptr %i.bz, align 8
  %i.ca = add i16 %.1239271.us, 2                 ; 2 uses
  %niter420.next.1 = add i16 %niter420, 2         ; 2 uses
  %niter420.ncmp.1 = icmp eq i16 %niter420.next.1, %unroll_iter419
  br i1 %niter420.ncmp.1, label %._crit_edge273.loopexit.unr-lcssa, label %.lr.ph272.split.us, !llvm.loop !9

.lr.ph272.split:                                  ; preds = %.lr.ph272.split.preheader, %.lr.ph272.split
  %.1239271 = phi i16 [ %i.cy, %.lr.ph272.split ], [ 1, %.lr.ph272.split.preheader ] ; 3 uses
  %niter = phi i16 [ %niter.next.1, %.lr.ph272.split ], [ 0, %.lr.ph272.split.preheader ]
  %i.cb = zext i16 %.1239271 to i64               ; 2 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load double, ptr %i.cf, align 8
  %i.ch = getelementptr [16 x i8], ptr %i.m, i64 %i.cb ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -16
  store double %i.cg, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load double, ptr %i.cj, align 8
  %i.cl = getelementptr i8, ptr %i.ch, i64 -8
  store double %i.ck, ptr %i.cl, align 8
  %i.cm = add i16 %.1239271, 1
  %i.cn = zext i16 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = inttoptr i64 %i.cp to ptr               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load double, ptr %i.cr, align 8
  %i.ct = getelementptr [16 x i8], ptr %i.m, i64 %i.cn ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -16
  store double %i.cs, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load double, ptr %i.cv, align 8
  %i.cx = getelementptr i8, ptr %i.ct, i64 -8
  store double %i.cw, ptr %i.cx, align 8
  %i.cy = add i16 %.1239271, 2                    ; 2 uses
  %niter.next.1 = add i16 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i16 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge273.loopexit403.unr-lcssa, label %.lr.ph272.split, !llvm.loop !9

._crit_edge273.loopexit.unr-lcssa:                ; preds = %.lr.ph272.split.us
  br i1 %lcmp.mod417.not, label %._crit_edge273, label %.lr.ph272.split.us.epil.preheader

.lr.ph272.split.us.epil.preheader:                ; preds = %._crit_edge273.loopexit.unr-lcssa, %.lr.ph272.split.us.preheader
  %.1239271.us.epil.init = phi i16 [ 1, %.lr.ph272.split.us.preheader ], [ %i.ca, %._crit_edge273.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod418)
  %i.cz = zext i16 %.1239271.us.epil.init to i64  ; 2 uses
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load double, ptr %i.dd, align 8
  %i.df = getelementptr [16 x i8], ptr %i.m, i64 %i.cz ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 -16
  store double %i.de, ptr %i.dg, align 8
  %i.dh = load double, ptr %i.dc, align 8
  %i.di = getelementptr i8, ptr %i.df, i64 -8
  store double %i.dh, ptr %i.di, align 8
  br label %._crit_edge273

._crit_edge273.loopexit403.unr-lcssa:             ; preds = %.lr.ph272.split
  br i1 %lcmp.mod.not, label %._crit_edge273, label %.lr.ph272.split.epil.preheader

.lr.ph272.split.epil.preheader:                   ; preds = %._crit_edge273.loopexit403.unr-lcssa, %.lr.ph272.split.preheader
  %.1239271.epil.init = phi i16 [ 1, %.lr.ph272.split.preheader ], [ %i.cy, %._crit_edge273.loopexit403.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod415)
  %i.dj = zext i16 %.1239271.epil.init to i64     ; 2 uses
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = inttoptr i64 %i.dl to ptr               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load double, ptr %i.dn, align 8
  %i.dp = getelementptr [16 x i8], ptr %i.m, i64 %i.dj ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 -16
  store double %i.do, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.ds = load double, ptr %i.dr, align 8
  %i.dt = getelementptr i8, ptr %i.dp, i64 -8
  store double %i.ds, ptr %i.dt, align 8
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %.lr.ph272.split.epil.preheader, %._crit_edge273.loopexit403.unr-lcssa, %.lr.ph272.split.us.epil.preheader, %._crit_edge273.loopexit.unr-lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr align 8 %i.m, i64 %i.l, i1 false)
  tail call void @pg_qsort(ptr noundef %i.m, i64 noundef %i.k, i64 noundef 16, ptr noundef nonnull @interval_cmp_lower) #13
  tail call void @pg_qsort(ptr noundef %i.n, i64 noundef %i.k, i64 noundef 16, ptr noundef nonnull @interval_cmp_upper) #13
  %i.du = load double, ptr %i.n, align 8
  %i.dv = load double, ptr %i.m, align 8
  br label %.lr.ph277

.lr.ph277:                                        ; preds = %._crit_edge273, %.critedge2
  %.0222287 = phi i32 [ %.1.lcssa, %.critedge2 ], [ 0, %._crit_edge273 ] ; 3 uses
  %.0223286 = phi i64 [ %indvars.iv, %.critedge2 ], [ 0, %._crit_edge273 ]
  %.0227285 = phi double [ %i.dy, %.critedge2 ], [ %i.dv, %._crit_edge273 ] ; 2 uses
  %.0231284 = phi double [ %.1232274.fr, %.critedge2 ], [ %i.du, %._crit_edge273 ]
  %i.dw = fcmp uno double %.0227285, 0.000000e+00
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph277, %bb.c
  %indvars.iv = phi i64 [ %.0223286, %.lr.ph277 ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %.1232274 = phi double [ %.0231284, %.lr.ph277 ], [ %.2233, %bb.c ]
  %.1232274.fr = freeze double %.1232274          ; 7 uses
  %i.dx = getelementptr inbounds [16 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8         ; 4 uses
  %i.dz = fcmp uno double %i.dy, 0.000000e+00
  %i.ea = fcmp oeq double %.0227285, %i.dy
  %.in.i = select i1 %i.dw, i1 %i.dz, i1 %i.ea
  br i1 %.in.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = load double, ptr %i.eb, align 8         ; 3 uses
  %i.ed = fcmp ord double %.1232274.fr, 0.000000e+00
  %i.ee = fcmp uno double %i.ec, 0.000000e+00
  %i.ef = fcmp olt double %.1232274.fr, %i.ec
  %i.eg = or i1 %i.ee, %i.ef
  %i.eh = and i1 %i.ed, %i.eg
  %.2233 = select i1 %i.eh, double %i.ec, double %.1232274.fr
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ei = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.ei, label %bb.b, label %.lr.ph291.preheader, !llvm.loop !10

bb.d:                                             ; preds = %bb.b
  %i.ej = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ek = icmp slt i32 %.0222287, %i.i
  br i1 %i.ek, label %.lr.ph281, label %.critedge2

.lr.ph281:                                        ; preds = %bb.d
  %i.el = fcmp uno double %.1232274.fr, 0.000000e+00
  br i1 %i.el, label %.critedge2, label %.lr.ph281.split.preheader

.lr.ph281.split.preheader:                        ; preds = %.lr.ph281
  %i.em = sext i32 %.0222287 to i64
  br label %.lr.ph281.split

.lr.ph281.split:                                  ; preds = %.lr.ph281.split.preheader, %bb.e
  %indvars.iv326 = phi i64 [ %i.em, %.lr.ph281.split.preheader ], [ %indvars.iv.next327, %bb.e ] ; 3 uses
  %i.en = getelementptr inbounds [16 x i8], ptr %i.n, i64 %indvars.iv326
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load double, ptr %i.eo, align 8
  %i.eq = fcmp ugt double %i.ep, %.1232274.fr
  br i1 %i.eq, label %.critedge2.loopexit.split.loop.exit378, label %bb.e

bb.e:                                             ; preds = %.lr.ph281.split
  %indvars.iv.next327 = add nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next327, %i.ba
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph281.split, !llvm.loop !11

.critedge2.loopexit.split.loop.exit378:           ; preds = %.lr.ph281.split
  %i.er = trunc nsw i64 %indvars.iv326 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.e, %.critedge2.loopexit.split.loop.exit378, %.lr.ph281, %bb.d
  %.1.lcssa = phi i32 [ %.0222287, %bb.d ], [ %i.i, %.lr.ph281 ], [ %i.er, %.critedge2.loopexit.split.loop.exit378 ], [ %i.i, %bb.e ] ; 2 uses
  call fastcc void @g_box_consider_split(ptr noundef %1, i32 noundef %.0237303, double noundef %i.dy, i32 noundef %i.ej, double noundef %.1232274.fr, i32 noundef %.1.lcssa)
  %i.es = icmp sgt i32 %i.i, %i.ej
  br i1 %i.es, label %.lr.ph277, label %.lr.ph291.preheader

.lr.ph291.preheader:                              ; preds = %.critedge2, %bb.c
  %i.et = load double, ptr %i.az, align 8
  %i.eu = load double, ptr %i.ax, align 8
  br label %.lr.ph291

.lr.ph291:                                        ; preds = %.lr.ph291.preheader, %.critedge6
  %.2302 = phi i64 [ %indvars.iv329, %.critedge6 ], [ %i.bb, %.lr.ph291.preheader ]
  %.2225301 = phi i32 [ %.3226.lcssa, %.critedge6 ], [ %i.j, %.lr.ph291.preheader ] ; 3 uses
  %.1228300 = phi double [ %.2229288, %.critedge6 ], [ %i.eu, %.lr.ph291.preheader ]
  %.3234299 = phi double [ %i.ey, %.critedge6 ], [ %i.et, %.lr.ph291.preheader ] ; 2 uses
  %i.ev = fcmp uno double %.3234299, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph291, %bb.g
end_hunk_0
