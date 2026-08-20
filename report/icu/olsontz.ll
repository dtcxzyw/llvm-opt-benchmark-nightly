inline.NumInlined: 127
inline.NumDeleted: 36
begin_hunk_0_@_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = icmp slt i16 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sext i16 %1 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = shl nsw i32 %i.d, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw i64 %i.k, 32
  %i.m = getelementptr i8, ptr %i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41
  %i.o = zext i32 %i.n to i64
  %i.p = or disjoint i64 %i.l, %i.o
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.q = sub i16 %1, %i.b                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.s = load i16, ptr %i.r, align 2, !tbaa !31   ; 2 uses
  %i.t = icmp slt i16 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = sext i16 %i.q to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !41
  %i.z = sext i32 %i.y to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = sub i16 %i.q, %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = sext i16 %i.aa to i32
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !41
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw i64 %i.ai, 32
  %i.ak = getelementptr i8, ptr %i.ag, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !41
  %i.am = zext i32 %i.al to i64
  %i.an = or disjoint i64 %i.aj, %i.am
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.p, %bb.b ], [ %i.z, %bb.d ], [ %i.an, %bb.e ]
  ret i64 %.0
}

declare double @uprv_floor_78(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZNK6icu_7813OlsonTimeZone15useDaylightTimeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call double @uprv_getUTCtime_78()   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load double, ptr %i.e, align 8, !tbaa !49
  %i.g = fcmp ult double %i.b, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef signext i8 %i.j(ptr noundef nonnull align 8 dereferenceable(160) %i.d)
  br label %bb.t

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !39
  %i.l = call noundef i32 @_ZN6icu_785Grego10timeToYearEdR10UErrorCode(double noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !39
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %.thread31

bb.e:                                             ; preds = %bb.d
  %i.o = call noundef i64 @_ZN6icu_785Grego11fieldsToDayEiii(i32 noundef %i.l, i32 noundef 0, i32 noundef 1)
  %i.p = mul nsw i64 %i.o, 86400
  %i.q = sitofp i64 %i.p to double                ; 4 uses
  %i.r = add nsw i32 %i.l, 1
  %i.s = call noundef i64 @_ZN6icu_785Grego11fieldsToDayEiii(i32 noundef %i.r, i32 noundef 0, i32 noundef 1)
  %i.t = mul nsw i64 %i.s, 86400
  %i.u = sitofp i64 %i.t to double                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load i16, ptr %i.v, align 8, !tbaa !32   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.y = load i16, ptr %i.x, align 2, !tbaa !31   ; 5 uses
  %i.z = add i16 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !30
  %i.ac = add i16 %i.z, %i.ab                     ; 3 uses
  %i.ad = icmp sgt i16 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.thread31

.lr.ph:                                           ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.aj = sext i16 %i.w to i64
  %wide.trip.count = zext nneg i16 %i.ac to i64
  %i.ak = icmp sgt i16 %i.w, 0
  br i1 %i.ak, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.al = sub i16 0, %i.w                         ; 3 uses
  %i.am = icmp sgt i16 %i.y, %i.al
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = sub i16 %i.al, %i.y
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.ap = sext i16 %i.an to i32
  %i.aq = shl nsw i32 %i.ap, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw i64 %i.au, 32
  %i.aw = getelementptr i8, ptr %i.as, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !41
  %i.ay = zext i32 %i.ax to i64
  %i.az = or disjoint i64 %i.av, %i.ay
  br label %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit.peel

bb.h:                                             ; preds = %bb.f
  %i.ba = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.bb = sext i16 %i.al to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !41
  %i.be = sext i32 %i.bd to i64
  br label %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit.peel

bb.i:                                             ; preds = %.lr.ph
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !41
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl nuw i64 %i.bh, 32
  %i.bj = getelementptr i8, ptr %i.bf, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !41
  %i.bl = zext i32 %i.bk to i64
  %i.bm = or disjoint i64 %i.bi, %i.bl
  br label %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit.peel

_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit.peel: ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.peel = phi i64 [ %i.bm, %bb.i ], [ %i.be, %bb.h ], [ %i.az, %bb.g ]
  %i.bn = sitofp i64 %.0.i.peel to double         ; 3 uses
  %i.bo = fcmp ult double %i.bn, %i.u
  br i1 %i.bo, label %bb.j, label %.thread31

bb.j:                                             ; preds = %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit.peel
  %i.bp = fcmp ult double %i.bn, %i.q
  br i1 %i.bp, label %bb.k, label %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit.peel

_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit.peel: ; preds = %bb.j
  %i.bq = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !47
  %i.bs = zext i8 %i.br to i64
  %i.bt = load ptr, ptr %i.ai, align 8, !tbaa !35
  %.idx.peel = shl nuw nsw i64 %i.bs, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.peel
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !41
  %.not26.peel = icmp eq i32 %i.bw, 0
  br i1 %.not26.peel, label %bb.k, label %.thread31

bb.k:                                             ; preds = %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit.peel, %bb.j
  %i.bx = fcmp ogt double %i.bn, %i.q
  br i1 %i.bx, label %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28.peel, label %bb.l

_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28.peel: ; preds = %bb.k
  %i.by = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !41
  %.not27.peel = icmp eq i32 %i.ca, 0
  br i1 %.not27.peel, label %bb.l, label %.thread31

bb.l:                                             ; preds = %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28.peel, %bb.k
  %exitcond.peel.not = icmp eq i16 %i.ac, 1
  br i1 %exitcond.peel.not, label %.thread31, label %.peel.next

.peel.next:                                       ; preds = %bb.l, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 1, %bb.l ] ; 5 uses
  %i.cb = icmp slt i64 %indvars.iv, %i.aj
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.peel.next
  %i.cc = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.cd = shl nuw i64 %indvars.iv, 1
  %i.ce = and i64 %i.cd, 4294967294
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !41
  %i.ch = zext i32 %i.cg to i64
  %i.ci = shl nuw i64 %i.ch, 32
  %i.cj = getelementptr i8, ptr %i.cf, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !41
  %i.cl = zext i32 %i.ck to i64
  %i.cm = or disjoint i64 %i.ci, %i.cl
  br label %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit

bb.n:                                             ; preds = %.peel.next
  %i.cn = trunc nuw nsw i64 %indvars.iv to i16
  %i.co = sub i16 %i.cn, %i.w                     ; 3 uses
  %i.cp = icmp slt i16 %i.co, %i.y
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.cr = sext i16 %i.co to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !41
  %i.cu = sext i32 %i.ct to i64
  br label %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit

bb.p:                                             ; preds = %bb.n
  %i.cv = sub i16 %i.co, %i.y
  %i.cw = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.cx = sext i16 %i.cv to i32
  %i.cy = shl nsw i32 %i.cx, 1
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !41
  %i.dc = zext i32 %i.db to i64
  %i.dd = shl nuw i64 %i.dc, 32
  %i.de = getelementptr i8, ptr %i.da, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !41
  %i.dg = zext i32 %i.df to i64
  %i.dh = or disjoint i64 %i.dd, %i.dg
  br label %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit

_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit: ; preds = %bb.m, %bb.o, %bb.p
  %.0.i = phi i64 [ %i.cm, %bb.m ], [ %i.cu, %bb.o ], [ %i.dh, %bb.p ]
  %i.di = sitofp i64 %.0.i to double              ; 3 uses
  %i.dj = fcmp ult double %i.di, %i.u
  br i1 %i.dj, label %bb.q, label %.thread31

bb.q:                                             ; preds = %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit
  %i.dk = fcmp ult double %i.di, %i.q
  br i1 %i.dk, label %bb.r, label %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit

_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit:   ; preds = %bb.q
  %i.dl = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !47
  %i.do = zext i8 %i.dn to i64
  %i.dp = load ptr, ptr %i.ai, align 8, !tbaa !35
  %.idx = shl nuw nsw i64 %i.do, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !41
  %.not26 = icmp eq i32 %i.ds, 0
  br i1 %.not26, label %bb.r, label %.thread31

bb.r:                                             ; preds = %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit, %bb.q
  %i.dt = fcmp ogt double %i.di, %i.q
  br i1 %i.dt, label %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28, label %bb.s

_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28: ; preds = %bb.r
  %i.du = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 -1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !47
  %i.dx = zext i8 %i.dw to i64
  %i.dy = load ptr, ptr %i.ai, align 8, !tbaa !35
  %.idx53 = shl nuw nsw i64 %i.dx, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx53
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !41
  %.not27 = icmp eq i32 %i.eb, 0
  br i1 %.not27, label %bb.s, label %.thread31

bb.s:                                             ; preds = %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread31, label %.peel.next, !llvm.loop !66

.thread31:                                        ; preds = %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit, %bb.s, %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit, %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28, %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit.peel, %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit.peel, %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28.peel, %bb.l, %bb.e, %bb.d
  %.4 = phi i8 [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit.peel ], [ 1, %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit.peel ], [ 1, %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28.peel ], [ 0, %bb.l ], [ 1, %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28 ], [ 0, %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit ], [ 0, %bb.s ], [ 1, %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.t

bb.t:                                             ; preds = %.thread31, %bb.c
  %.5 = phi i8 [ %i.k, %bb.c ], [ %.4, %.thread31 ]
  ret i8 %.5
}

declare noundef i32 @_ZN6icu_785Grego10timeToYearEdR10UErrorCode(double noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7813OlsonTimeZone13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(160) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK6icu_788TimeZone13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i32 %.0
}

declare noundef i32 @_ZNK6icu_788TimeZone13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7813OlsonTimeZone14inDaylightTimeEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(224) %0, double noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = load ptr, ptr %0, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(224) %0, double noundef %1, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.f = load i32, ptr %i.b, align 4, !tbaa !41
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i8 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7813OlsonTimeZone12hasSameRulesERKNS_8TimeZoneE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(72) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN6icu_788TimeZoneE, ptr nonnull @_ZTIN6icu_7813OlsonTimeZoneE, i64 0) #19 ; 13 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.m, null                  ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %.thread38.thread, label %bb.r

bb.f:                                             ; preds = %bb.d
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.m), !inline_history !68
  br i1 %i.q, label %.thread38, label %bb.r

.thread38:                                        ; preds = %bb.g
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.r = icmp eq ptr %.pre, null
  br i1 %i.r, label %.thread38.thread, label %bb.h

bb.h:                                             ; preds = %.thread38
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load i32, ptr %i.s, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.v = load i32, ptr %i.u, align 8, !tbaa !48
  %.not29 = icmp eq i32 %i.t, %i.v
  br i1 %.not29, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load double, ptr %i.w, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.z = load double, ptr %i.y, align 8, !tbaa !49
  %i.aa = fcmp une double %i.x, %i.z
  br i1 %i.aa, label %bb.r, label %.thread38.thread

.thread38.thread:                                 ; preds = %bb.e, %bb.i, %.thread38
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !34
  %.not30 = icmp eq i16 %i.ac, %i.ae
  br i1 %.not30, label %bb.j, label %bb.r

bb.j:                                             ; preds = %.thread38.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !32
  %.not31 = icmp eq i16 %i.ag, %i.ai
  br i1 %.not31, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !31 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 74
  %i.am = load i16, ptr %i.al, align 2, !tbaa !31
  %.not32 = icmp eq i16 %i.ak, %i.am
  br i1 %.not32, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !30 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !30
  %.not33 = icmp eq i16 %i.ao, %i.aq
  br i1 %.not33, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.av = sext i16 %i.ag to i32
  %i.aw = shl nsw i32 %i.av, 3
  %i.ax = tail call fastcc noundef signext i8 @_ZL10arrayEqualPKvS0_i(ptr noundef %i.as, ptr noundef %i.au, i32 noundef %i.aw)
  %.not34 = icmp eq i8 %i.ax, 0
  br i1 %.not34, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42
  %i.bc = sext i16 %i.ak to i32
  %i.bd = shl nsw i32 %i.bc, 2
  %i.be = tail call fastcc noundef signext i8 @_ZL10arrayEqualPKvS0_i(ptr noundef %i.az, ptr noundef %i.bb, i32 noundef %i.bd)
  %.not35 = icmp eq i8 %i.be, 0
  br i1 %.not35, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = sext i16 %i.ao to i32
  %i.bk = shl nsw i32 %i.bj, 3
  %i.bl = tail call fastcc noundef signext i8 @_ZL10arrayEqualPKvS0_i(ptr noundef %i.bg, ptr noundef %i.bi, i32 noundef %i.bk)
  %.not36 = icmp eq i8 %i.bl, 0
  br i1 %.not36, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
