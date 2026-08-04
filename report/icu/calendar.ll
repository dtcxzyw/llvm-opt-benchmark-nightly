inline.NumInlined: 469
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki:bb.a
  %i.u = phi i32 [ %i.aa, %bb.b ], [ %i.t, %.lr.ph74 ]
  %.04268 = phi i32 [ %spec.select, %bb.b ], [ 0, %.lr.ph74 ]
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.b, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !42    ; 2 uses
  %.not60 = icmp eq i8 %i.x, 0
  br i1 %.not60, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.y = sext i8 %i.x to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.04268, i32 %i.y) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !46  ; 2 uses
  %.not59 = icmp eq i32 %i.aa, -1
  br i1 %.not59, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.b, %.lr.ph74
  %.042.lcssa = phi i32 [ 0, %.lr.ph74 ], [ %spec.select, %bb.b ] ; 2 uses
  %i.ab = icmp sgt i32 %.042.lcssa, %.04771
  br i1 %i.ab, label %bb.c, label %.thread

bb.c:                                             ; preds = %._crit_edge
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = and i32 %i.o, 31                        ; 3 uses
  %.not61 = icmp eq i32 %i.ac, 5
  %.not61.not = xor i1 %.not61, true
  %brmerge = select i1 %.not61.not, i1 true, i1 %i.g ; 2 uses
  %spec.select95 = select i1 %brmerge, i32 %i.ac, i32 5
  %spec.select96 = select i1 %brmerge, i32 %i.ac, i32 %.173
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.052 = phi i32 [ %i.o, %bb.c ], [ %spec.select95, %bb.d ]
  %.2 = phi i32 [ %i.o, %bb.c ], [ %spec.select96, %bb.d ] ; 2 uses
  %i.ad = icmp eq i32 %.2, %.052
  %spec.select62 = select i1 %i.ad, i32 %.042.lcssa, i32 %.04771
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.e, %._crit_edge
  %.148 = phi i32 [ %.04771, %._crit_edge ], [ %spec.select62, %bb.e ], [ %.04771, %.lr.ph ]
  %.3 = phi i32 [ %.173, %._crit_edge ], [ %.2, %bb.e ], [ %.173, %.lr.ph ] ; 3 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %indvars.iv.next83
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !46 ; 2 uses
  %.not = icmp eq i32 %i.af, -1
  br i1 %.not, label %._crit_edge75, label %.lr.ph74, !llvm.loop !94
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788Calendar11computeTimeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !19     ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 16
  %.not33 = icmp eq i8 %i.h, 0
  br i1 %.not33, label %.lr.ph.i, label %bb.f

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %i.j = phi i32 [ %i.d, %.lr.ph.i ], [ %i.r, %bb.e ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  %i.m = icmp sgt i8 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 368
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = trunc nuw nsw i64 %indvars.iv.i to i32
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %1), !inline_history !95
  %.pre.i = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.j, %bb.c ], [ %.pre.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.s = icmp slt i32 %i.r, 1                     ; 2 uses
  %i.t = icmp samesign ult i64 %indvars.iv.i, 23
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.c, label %_ZN6icu_788Calendar14validateFieldsER10UErrorCode.exit, !llvm.loop !91

_ZN6icu_788Calendar14validateFieldsER10UErrorCode.exit: ; preds = %bb.e
  br i1 %i.s, label %bb.f, label %bb.z

bb.f:                                             ; preds = %_ZN6icu_788Calendar14validateFieldsER10UErrorCode.exit, %bb.b
  %i.v = tail call noundef i32 @_ZN6icu_788Calendar16computeJulianDayER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.w = load i32, ptr %1, align 4, !tbaa !19
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.y = sitofp i32 %i.v to double
  %i.z = fadd nnan double %i.y, f0xC1429EC600000000
  %i.aa = fmul nnan double %i.z, 8.640000e+07     ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !42  ; 2 uses
  %i.ad = icmp sgt i8 %i.ac, 1
  br i1 %i.ad, label %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 115
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !42
  %.phi.trans.insert47 = getelementptr inbounds nuw i8, ptr %0, i64 114
  %.pre48 = load i8, ptr %.phi.trans.insert47, align 2, !tbaa !42
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %0, i64 113
  %.pre50 = load i8, ptr %.phi.trans.insert49, align 1, !tbaa !42
  br label %bb.i

_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !42  ; 2 uses
  %i.ag = tail call i8 @llvm.smax.i8(i8 %i.af, i8 0)
  %spec.select.i = zext nneg i8 %i.ag to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !42  ; 2 uses
  %i.aj = sext i8 %i.ai to i32
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !42  ; 2 uses
  %i.am = sext i8 %i.al to i32
  %spec.select.i.2 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.1, i32 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !42
  %i.ap = sext i8 %i.ao to i32
  %spec.select.i.3 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.2, i32 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 117
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !42
  %i.as = sext i8 %i.ar to i32
  %spec.select.i.4 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.3, i32 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.au = load i8, ptr %i.at, align 2, !tbaa !42
  %i.av = sext i8 %i.au to i32
  %spec.select.i.5 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.4, i32 %i.av)
  %i.aw = zext nneg i8 %i.ac to i32
  %.not36 = icmp samesign ugt i32 %spec.select.i.5, %i.aw
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !46
  %i.az = sitofp i32 %i.ay to double
  br label %bb.m

bb.i:                                             ; preds = %._crit_edge, %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit
  %i.ba = phi i8 [ %.pre50, %._crit_edge ], [ %i.af, %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit ]
  %i.bb = phi i8 [ %.pre48, %._crit_edge ], [ %i.ai, %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit ]
  %i.bc = phi i8 [ %.pre, %._crit_edge ], [ %i.al, %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit ] ; 2 uses
  %..i = tail call i8 @llvm.smax.i8(i8 %i.bb, i8 %i.ba) ; 2 uses
  %i.bd = tail call i8 @llvm.smax.i8(i8 %..i, i8 %i.bc)
  %.not.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i, label %_ZN6icu_788Calendar18computeMillisInDayEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not18.i = icmp slt i8 %i.bc, %..i
  br i1 %.not18.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !46
  %i.bg = sitofp i32 %i.bf to double
  br label %_ZN6icu_788Calendar18computeMillisInDayEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !46
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !46
  %i.bm = and i32 %i.bl, 1
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = select i1 %i.bn, i32 0, i32 12
  %i.bp = uitofp nneg i32 %i.bo to double
  %i.bq = fadd nnan double %i.bj, %i.bp
  br label %_ZN6icu_788Calendar18computeMillisInDayEv.exit

_ZN6icu_788Calendar18computeMillisInDayEv.exit:   ; preds = %bb.i, %bb.k, %bb.l
  %.0.i = phi double [ %i.bg, %bb.k ], [ %i.bq, %bb.l ], [ 0.000000e+00, %bb.i ]
  %i.br = fmul nnan double %.0.i, 6.000000e+01
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !46
  %i.bu = sitofp i32 %i.bt to double
  %i.bv = fadd nnan double %i.br, %i.bu
  %i.bw = fmul nnan double %i.bv, 6.000000e+01
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %2 = load <2 x i32>, ptr %i.bx, align 4, !tbaa !46
  %3 = sitofp <2 x i32> %2 to <2 x double>        ; 2 uses
  %4 = extractelement <2 x double> %3, i64 0
  %5 = fadd nnan double %i.bw, %4
  %6 = fmul nnan double %5, 1.000000e+03
  %7 = extractelement <2 x double> %3, i64 1
  %i.by = fadd double %6, %7
  br label %bb.m

bb.m:                                             ; preds = %_ZN6icu_788Calendar18computeMillisInDayEv.exit, %bb.h
  %.0 = phi double [ %i.az, %bb.h ], [ %i.by, %_ZN6icu_788Calendar18computeMillisInDayEv.exit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 119
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !42
  %i.cb = icmp sgt i8 %i.ca, 1
  br i1 %i.cb, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !42
  %i.ce = icmp sgt i8 %i.cd, 1
  br i1 %i.ce, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.m, %bb.n
  %i.cf = fadd double %i.aa, %.0
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %8 = load <2 x i32>, ptr %i.cg, align 4, !tbaa !46
  %9 = sitofp <2 x i32> %8 to <2 x double>        ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  %11 = fsub double %i.cf, %10
  %12 = extractelement <2 x double> %9, i64 1
  %i.ch = fsub double %11, %12
  br label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.ci = load i8, ptr %i.f, align 8
  %i.cj = and i8 %i.ci, 16
  %.not37 = icmp eq i8 %i.cj, 0
  br i1 %.not37, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = and i16 %i.cl, 7
  %i.cn = icmp eq i16 %i.cm, 2
  br i1 %i.cn, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.co = tail call noundef i32 @_ZN6icu_788Calendar17computeZoneOffsetEddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.aa, double noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 2 uses
  %i.cp = fadd double %i.aa, %.0
  %i.cq = sitofp i32 %i.co to double
  %i.cr = fsub double %i.cp, %i.cq                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, double noundef %i.cr, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.cx = load i32, ptr %1, align 4, !tbaa !19    ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !46
  %i.da = load i32, ptr %i.b, align 4, !tbaa !46
  %i.db = add nsw i32 %i.da, %i.cz
  %.not39 = icmp eq i32 %i.co, %i.db
  br i1 %.not39, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = load i8, ptr %i.f, align 8
  %i.dd = and i8 %i.dc, 16
  %.not40 = icmp eq i8 %i.dd, 0
  br i1 %.not40, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %1, align 4, !tbaa !19
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.de = call noundef signext i8 @_ZNK6icu_788Calendar34getImmediatePreviousZoneTransitionEdPdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.cr, ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.df = load i32, ptr %1, align 4, !tbaa !19    ; 2 uses
  %i.dg = icmp slt i32 %i.df, 1
  %i.dh = icmp ne i8 %i.de, 0
  %or.cond = and i1 %i.dh, %i.dg
  %i.di = load double, ptr %i.c, align 8
  %.032 = select i1 %or.cond, double %i.di, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t, %bb.q
  %i.dj = phi i32 [ %i.df, %bb.u ], [ 1, %bb.t ], [ %i.cx, %bb.q ], [ %i.cx, %bb.r ]
  %.1 = phi double [ %.032, %bb.u ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.q ], [ %i.cr, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.x

bb.w:                                             ; preds = %bb.p
  %i.dk = fadd double %i.aa, %.0
  %i.dl = tail call noundef i32 @_ZN6icu_788Calendar17computeZoneOffsetEddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.aa, double noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.dm = sitofp i32 %i.dl to double
  %i.dn = fsub double %i.dk, %i.dm
  %.pre51 = load i32, ptr %1, align 4, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.do = phi i32 [ %.pre51, %bb.w ], [ %i.dj, %bb.v ]
  %.2 = phi double [ %i.dn, %bb.w ], [ %.1, %bb.v ]
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread, %bb.x
  %.259 = phi double [ %i.ch, %.thread ], [ %.2, %bb.x ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %.259, ptr %i.dq, align 8, !tbaa !49
  br label %bb.z

bb.z:                                             ; preds = %bb.f, %bb.y, %bb.x, %_ZN6icu_788Calendar14validateFieldsER10UErrorCode.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_788Calendar16computeJulianDayER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42    ; 2 uses
  %i.c = icmp sgt i8 %i.b, 1
  br i1 %i.c, label %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader, label %.thread

_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i8, ptr %i.d, align 8, !tbaa !42
  %i.f = tail call i8 @llvm.smax.i8(i8 %i.e, i8 0)
  %spec.select.i = zext nneg i8 %i.f to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.h = load <8 x i8>, ptr %i.g, align 1, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.j = load i8, ptr %i.i, align 1, !tbaa !42
  %i.k = sext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.m = load i8, ptr %i.l, align 2, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.o = load i8, ptr %i.n, align 1, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.q = load i8, ptr %i.p, align 1, !tbaa !42
  %i.r = sext i8 %i.q to i32
  %i.s = sext <8 x i8> %i.h to <8 x i32>
  %i.t = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.s)
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 %i.k)
  %i.v = tail call i8 @llvm.smax.i8(i8 %i.m, i8 %i.o)
  %i.w = sext i8 %i.v to i32
  %i.x = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %spec.select.i)
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.w)
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %i.x)
  %i.aa = zext nneg i8 %i.b to i32
  %.not.not = icmp samesign ugt i32 %i.z, %i.aa
  br i1 %.not.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !46
  br label %bb.j

.thread:                                          ; preds = %_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i.exit.preheader, %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 376
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(256) %0) ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !46 ; 2 uses
  %.not80.i = icmp eq i32 %i.ah, -1
  br i1 %.not80.i, label %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit.thread, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 109
  br label %.lr.ph74.preheader.i

.lr.ph74.preheader.i:                             ; preds = %._crit_edge75.i, %.preheader.lr.ph.i
  %i.al = phi i32 [ %i.ah, %.preheader.lr.ph.i ], [ %i.ao, %._crit_edge75.i ]
  %indvars.iv85.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next86.i, %._crit_edge75.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [384 x i8], ptr %i.ag, i64 %indvars.iv85.i ; 2 uses
  br label %.lr.ph74.i

._crit_edge75.i:                                  ; preds = %.thread.i
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [384 x i8], ptr %i.ag, i64 %indvars.iv.next86.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !46 ; 2 uses
  %i.ap = icmp ne i32 %i.ao, -1
  %i.aq = icmp eq i32 %.3.i, 24                   ; 2 uses
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph74.preheader.i, label %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit, !llvm.loop !92

.lr.ph74.i:                                       ; preds = %.thread.i, %.lr.ph74.preheader.i
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph74.preheader.i ], [ %indvars.iv.next83.i, %.thread.i ] ; 2 uses
  %i.as = phi i32 [ %i.al, %.lr.ph74.preheader.i ], [ %i.bn, %.thread.i ] ; 4 uses
  %.173.i = phi i32 [ 24, %.lr.ph74.preheader.i ], [ %.3.i, %.thread.i ] ; 3 uses
  %.04771.i = phi i32 [ 0, %.lr.ph74.preheader.i ], [ %.148.i, %.thread.i ] ; 4 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv82.i ; 2 uses
  %i.au = icmp sgt i32 %i.as, 31                  ; 2 uses
  %i.av = zext i1 %i.au to i64                    ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !46 ; 2 uses
  %.not5967.i = icmp eq i32 %i.ax, -1
  br i1 %.not5967.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph74.i, %bb.c
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i25, %bb.c ], [ %i.av, %.lr.ph74.i ]
  %i.ay = phi i32 [ %i.be, %bb.c ], [ %i.ax, %.lr.ph74.i ]
  %.04268.i = phi i32 [ %spec.select.i24, %bb.c ], [ 0, %.lr.ph74.i ]
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ai, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !42  ; 2 uses
  %.not60.i = icmp eq i8 %i.bb, 0
  br i1 %.not60.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.bc = sext i8 %i.bb to i32
  %spec.select.i24 = tail call i32 @llvm.smax.i32(i32 %.04268.i, i32 %i.bc) ; 2 uses
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i25
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46 ; 2 uses
  %.not59.i = icmp eq i32 %i.be, -1
  br i1 %.not59.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !93

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph74.i
  %.042.lcssa.i = phi i32 [ 0, %.lr.ph74.i ], [ %spec.select.i24, %bb.c ] ; 2 uses
  %i.bf = icmp sgt i32 %.042.lcssa.i, %.04771.i
  br i1 %i.bf, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %._crit_edge.i
  br i1 %i.au, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bg = and i32 %i.as, 31                       ; 3 uses
  %.not61.i = icmp eq i32 %i.bg, 5
  br i1 %.not61.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = load i8, ptr %i.aj, align 4, !tbaa !42
  %i.bi = load i8, ptr %i.ak, align 1, !tbaa !42
  %i.bj = icmp slt i8 %i.bh, %i.bi
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.052.i = phi i32 [ %i.bg, %bb.g ], [ 5, %bb.f ], [ %i.as, %bb.d ]
  %.2.i = phi i32 [ %i.bg, %bb.g ], [ %.173.i, %bb.f ], [ %i.as, %bb.d ]
  %i.bk = freeze i32 %.2.i                        ; 2 uses
  %i.bl = icmp eq i32 %i.bk, %.052.i
  %spec.select62.i = select i1 %i.bl, i32 %.042.lcssa.i, i32 %.04771.i
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i, %bb.h, %._crit_edge.i
  %.148.i = phi i32 [ %.04771.i, %._crit_edge.i ], [ %spec.select62.i, %bb.h ], [ %.04771.i, %.lr.ph.i ]
  %.3.i = phi i32 [ %.173.i, %._crit_edge.i ], [ %i.bk, %bb.h ], [ %.173.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv.next83.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !46 ; 2 uses
  %.not.i = icmp eq i32 %i.bn, -1
  br i1 %.not.i, label %._crit_edge75.i, label %.lr.ph74.i, !llvm.loop !94

_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit: ; preds = %._crit_edge75.i
  br i1 %i.aq, label %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit.thread, label %bb.i

_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit.thread: ; preds = %.thread, %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit, %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit.thread
  %i.bo = phi i32 [ 5, %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit.thread ], [ %.3.i, %_ZNK6icu_788Calendar13resolveFieldsEPA12_A8_Ki.exit ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 352
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef i32 %i.br(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i
  %.1 = phi i32 [ %i.bs, %bb.i ], [ %i.ac, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN6icu_788Calendar18computeMillisInDayEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.b = load i8, ptr %i.a, align 1, !tbaa !42    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.d = load i8, ptr %i.c, align 2, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.f = load i8, ptr %i.e, align 1, !tbaa !42
  %. = tail call i8 @llvm.smax.i8(i8 %i.d, i8 %i.f) ; 2 uses
  %i.g = tail call i8 @llvm.smax.i8(i8 %., i8 %i.b)
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp slt i8 %i.b, %.
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = sitofp i32 %i.i to double
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46
  %i.m = sitofp i32 %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = and i32 %i.o, 1
  %i.q = icmp eq i32 %i.p, 0
  %i.r = select i1 %i.q, i32 0, i32 12
  %i.s = uitofp nneg i32 %i.r to double
  %i.t = fadd nnan double %i.m, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi double [ %i.j, %bb.c ], [ %i.t, %bb.d ], [ 0.000000e+00, %bb.a ]
  %i.u = fmul nnan double %.0, 6.000000e+01
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !46
  %i.x = sitofp i32 %i.w to double
  %i.y = fadd nnan double %i.u, %i.x
  %i.z = fmul nnan double %i.y, 6.000000e+01
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %1 = load <2 x i32>, ptr %i.aa, align 4, !tbaa !46
  %2 = sitofp <2 x i32> %1 to <2 x double>        ; 2 uses
  %3 = extractelement <2 x double> %2, i64 0
  %4 = fadd nnan double %i.z, %3
  %5 = fmul nnan double %4, 1.000000e+03
  %6 = extractelement <2 x double> %2, i64 1
  %i.ab = fadd double %5, %6
  ret double %i.ab
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_788Calendar17computeZoneOffsetEddR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, double noundef %1, double noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !19
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.g = fadd double %1, %2                       ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 15 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7813OlsonTimeZoneE, i64 0) #20
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge.i, label %_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit

.critedge.i:                                      ; preds = %bb.c
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7814SimpleTimeZoneE, i64 0) #20
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge10.i, label %_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit

.critedge10.i:                                    ; preds = %.critedge.i
  %i.o = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7817RuleBasedTimeZoneE, i64 0) #20
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.critedge12.i, label %_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit

.critedge12.i:                                    ; preds = %.critedge10.i
  %i.q = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_789VTimeZoneE, i64 0) #20
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit

_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit:    ; preds = %.critedge12.i, %.critedge10.i, %.critedge.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load i8, ptr %i.s, align 8
  %.mask32 = and i8 %i.t, -32
  %i.u = icmp eq i8 %.mask32, 32
  %i.v = select i1 %i.u, i32 4, i32 12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.x = load i16, ptr %i.w, align 1
  %i.y = and i16 %i.x, 7
  %i.z = icmp eq i16 %i.y, 1
  %i.aa = select i1 %i.z, i32 12, i32 4
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(72) %i.i, double noundef %i.g, i32 noundef %i.aa, i32 noundef %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.h

bb.d:                                             ; preds = %.critedge12.i, %bb.b
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %i.i, double noundef %i.g, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = load i8, ptr %i.ah, align 8
  %.mask = and i8 %i.ai, -32
  %i.aj = icmp eq i8 %.mask, 32
  br i1 %i.aj, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !46
  %i.al = load i32, ptr %i.b, align 4, !tbaa !46
  %i.am = add nsw i32 %i.al, %i.ak
  %i.an = sitofp i32 %i.am to double
  %i.ao = fsub double %i.g, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ap = fadd double %i.ao, -2.160000e+07
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(72) %i.i, double noundef %i.ap, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.at = load i32, ptr %i.a, align 4, !tbaa !46
  %i.au = load i32, ptr %i.b, align 4, !tbaa !46
  %i.av = load i32, ptr %i.c, align 4, !tbaa !46
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !46
  %.neg38 = add i32 %i.au, %i.at
  %i.ax = add i32 %i.av, %i.aw
  %i.ay = sub i32 %.neg38, %i.ax                  ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.critedge34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = sitofp i32 %i.ay to double
  %i.bb = fadd double %i.g, %i.ba
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(72) %i.i, double noundef %i.bb, i8 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.h

.critedge34:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge34
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.bg = load i16, ptr %i.bf, align 1
  %i.bh = and i16 %i.bg, 7
  %i.bi = icmp eq i16 %i.bh, 1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !46
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !46
  %i.bl = add nsw i32 %i.bk, %i.bj
  %i.bm = sitofp i32 %i.bl to double
  %i.bn = fsub double %i.g, %i.bm
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(72) %i.i, double noundef %i.bn, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.critedge, %bb.g, %_ZNK6icu_788Calendar16getBasicTimeZoneEv.exit
  %i.br = load i32, ptr %i.a, align 4, !tbaa !46
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !46
  %i.bt = add nsw i32 %i.bs, %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i32 [ %i.bt, %bb.h ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef ptr @_ZNK6icu_788Calendar16getBasicTimeZoneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7813OlsonTimeZoneE, i64 0) #20
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7814SimpleTimeZoneE, i64 0) #20
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge10, label %bb.c

.critedge10:                                      ; preds = %.critedge
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7817RuleBasedTimeZoneE, i64 0) #20
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge12, label %bb.c

.critedge12:                                      ; preds = %.critedge10
  %i.j = tail call ptr @__dynamic_cast(ptr nonnull %i.b, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_789VTimeZoneE, i64 0) #20
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge14, label %bb.c

bb.c:                                             ; preds = %.critedge12, %.critedge10, %.critedge, %bb.b
  br label %.critedge14

.critedge14:                                      ; preds = %bb.a, %.critedge12, %bb.c
  %.0 = phi ptr [ %i.b, %bb.c ], [ null, %.critedge12 ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZN6icu_7818TimeZoneTransitionC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare noundef double @_ZNK6icu_7818TimeZoneTransition7getTimeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_7818TimeZoneTransitionD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_788Calendar22handleComputeJulianDayE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 15 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 11 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %i.k = load i32, ptr %2, align 4, !tbaa !19
  %i.l = icmp slt i32 %i.k, 1
end_hunk_0
