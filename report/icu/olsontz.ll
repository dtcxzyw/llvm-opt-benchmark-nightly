Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/olsontz?download=true
inline.NumInlined: 127
inline.NumDeleted: 36
begin_hunk_0_@_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs:bb.a
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
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 1, %bb.l ] ; 6 uses
  %i.cb = icmp slt i64 %indvars.iv, %i.aj
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.peel.next
  %i.cc = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.cd = shl nuw i64 %indvars.iv, 1
  %1 = and i64 %i.cd, 4294967294
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %1 ; 2 uses
  %i.ce = load i32, ptr %2, align 4, !tbaa !41
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw i64 %i.cf, 32
  %i.ch = getelementptr i8, ptr %2, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !41
  %i.cj = zext i32 %i.ci to i64
  %i.ck = or disjoint i64 %i.cg, %i.cj
  br label %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit

bb.n:                                             ; preds = %.peel.next
  %i.cl = trunc nuw nsw i64 %indvars.iv to i16
  %i.cm = sub i16 %i.cl, %i.w                     ; 3 uses
  %i.cn = icmp slt i16 %i.cm, %i.y
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.cp = sext i16 %i.cm to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !41
  %i.cs = sext i32 %i.cr to i64
  br label %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit

bb.p:                                             ; preds = %bb.n
  %i.ct = sub i16 %i.cm, %i.y
  %i.cu = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.cv = sext i16 %i.ct to i32
  %i.cw = shl nsw i32 %i.cv, 1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !41
  %i.da = zext i32 %i.cz to i64
  %i.db = shl nuw i64 %i.da, 32
  %i.dc = getelementptr i8, ptr %i.cy, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !41
  %i.de = zext i32 %i.dd to i64
  %i.df = or disjoint i64 %i.db, %i.de
  br label %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit

_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit: ; preds = %bb.m, %bb.o, %bb.p
  %.0.i = phi i64 [ %i.ck, %bb.m ], [ %i.cs, %bb.o ], [ %i.df, %bb.p ]
  %i.dg = sitofp i64 %.0.i to double              ; 3 uses
  %i.dh = fcmp ult double %i.dg, %i.u
  br i1 %i.dh, label %bb.q, label %.thread31

bb.q:                                             ; preds = %_ZNK6icu_7813OlsonTimeZone23transitionTimeInSecondsEs.exit
  %i.di = fcmp ult double %i.dg, %i.q
  br i1 %i.di, label %bb.r, label %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit

_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit:   ; preds = %bb.q
  %i.dj = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !47
  %i.dm = zext i8 %i.dl to i64
  %i.dn = load ptr, ptr %i.ai, align 8, !tbaa !35
  %.idx = shl nuw nsw i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !41
  %.not26 = icmp eq i32 %i.dq, 0
  br i1 %.not26, label %bb.r, label %.thread31

bb.r:                                             ; preds = %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit, %bb.q
  %i.dr = fcmp ogt double %i.dg, %i.q
  br i1 %i.dr, label %_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28, label %bb.s

_ZNK6icu_7813OlsonTimeZone11dstOffsetAtEs.exit28: ; preds = %bb.r
  %i.ds = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.dt = getelementptr i8, ptr %i.ds, i64 %indvars.iv
  %i.du = getelementptr i8, ptr %i.dt, i64 -1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !47
  %i.dw = zext i8 %i.dv to i64
  %i.dx = load ptr, ptr %i.ai, align 8, !tbaa !35
  %.idx53 = shl nuw nsw i64 %i.dw, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx53
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !41
  %.not27 = icmp eq i32 %i.ea, 0
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

end_hunk_0
begin_hunk_1_@_ZN6icu_7813OlsonTimeZone19initTransitionRulesER10UErrorCode:bb.a
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn122 = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.x, %bb.m ]
  %i.z = load ptr, ptr %8, align 8, !tbaa !44
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.z) #19, !srcloc !46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ci

bb.p:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.q:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.n) #19
  br label %bb.ch

bb.r:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !31
  %i.ah = add i16 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !30
  %i.ak = add i16 %i.ah, %i.aj                    ; 5 uses
  %i.al = zext i16 %i.ak to i64                   ; 3 uses
  %i.am = icmp sgt i16 %i.ak, 0                   ; 2 uses
  br i1 %i.am, label %bb.s, label %.critedge145

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  store i16 0, ptr %i.an, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.u
  %i.aq = phi i16 [ 0, %bb.s ], [ %i.at, %bb.u ]
  %indvars.iv = phi i64 [ 0, %bb.s ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !47
  %.not124 = icmp eq i8 %i.as, 0
  br i1 %.not124, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = add i16 %i.aq, 1                        ; 2 uses
  store i16 %i.at, ptr %i.an, align 8, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.al
  br i1 %exitcond.not, label %.critedge145, label %bb.t, !llvm.loop !71

bb.v:                                             ; preds = %bb.t
  %i.au = trunc nuw nsw i64 %indvars.iv to i16
  %i.av = icmp eq i16 %i.ak, %i.au
  br i1 %i.av, label %.critedge145, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = shl nuw nsw i64 %i.al, 3
  %i.ax = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.aw) #21
          to label %bb.x unwind label %bb.y       ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.invoke, label %.preheader155

.preheader155:                                    ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !34 ; 2 uses
  %i.bb = icmp sgt i16 %i.ba, 0
  br i1 %i.bb, label %.lr.ph173, label %._crit_edge174

.lr.ph173:                                        ; preds = %.preheader155
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bj = zext nneg i16 %i.ak to i64
  br label %bb.z

bb.y:                                             ; preds = %.invoke, %._crit_edge174, %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.z:                                             ; preds = %.lr.ph173, %._crit_edge.thread
  %i.bl = phi i16 [ %i.ba, %.lr.ph173 ], [ %i.eo, %._crit_edge.thread ] ; 4 uses
  %indvars.iv187 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next188, %._crit_edge.thread ] ; 5 uses
  %i.bm = load i16, ptr %i.an, align 8, !tbaa !70 ; 2 uses
  %i.bn = icmp slt i16 %i.bm, %i.ak
  br i1 %i.bn, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.z
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.bp = sext i16 %i.bm to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ai
  %indvars.iv181 = phi i64 [ %i.bp, %.lr.ph ], [ %indvars.iv.next182, %bb.ai ] ; 5 uses
  %.097169 = phi i32 [ 0, %.lr.ph ], [ %.299, %bb.ai ] ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %indvars.iv181
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !47
  %i.bs = zext i8 %i.br to i64
  %i.bt = icmp eq i64 %indvars.iv187, %i.bs
  br i1 %i.bt, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.bu = load i16, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %i.bv = sext i16 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv181, %i.bv
  br i1 %i.bw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bx = trunc nsw i64 %indvars.iv181 to i32
  %i.by = load ptr, ptr %i.be, align 8, !tbaa !40
  %i.bz = shl nsw i32 %i.bx, 1
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !41
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw i64 %i.cd, 32
  %i.cf = getelementptr i8, ptr %i.cb, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !41
  %i.ch = zext i32 %i.cg to i64
  %i.ci = or disjoint i64 %i.ce, %i.ch
  br label %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cj = trunc nsw i64 %indvars.iv181 to i16
  %i.ck = sub i16 %i.cj, %i.bu                    ; 3 uses
  %i.cl = load i16, ptr %i.af, align 2, !tbaa !31 ; 2 uses
  %i.cm = icmp slt i16 %i.ck, %i.cl
  br i1 %i.cm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load ptr, ptr %i.bd, align 8, !tbaa !42
  %i.co = sext i16 %i.ck to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !41
  %i.cr = sext i32 %i.cq to i64
  br label %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit

bb.af:                                            ; preds = %bb.ad
  %i.cs = sub i16 %i.ck, %i.cl
  %i.ct = load ptr, ptr %i.bc, align 8, !tbaa !43
  %i.cu = sext i16 %i.cs to i32
  %i.cv = shl nsw i32 %i.cu, 1
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !41
  %i.cz = zext i32 %i.cy to i64
  %i.da = shl nuw i64 %i.cz, 32
  %i.db = getelementptr i8, ptr %i.cx, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !41
  %i.dd = zext i32 %i.dc to i64
  %i.de = or disjoint i64 %i.da, %i.dd
  br label %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit

_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit: ; preds = %bb.ac, %bb.ae, %bb.af
  %.0.i.i = phi i64 [ %i.ci, %bb.ac ], [ %i.cr, %bb.ae ], [ %i.de, %bb.af ]
  %i.df = sitofp i64 %.0.i.i to double
  %i.dg = fmul nnan double %i.df, 1.000000e+03    ; 2 uses
  %i.dh = load ptr, ptr %i.bf, align 8, !tbaa !36
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit
  %i.dj = load double, ptr %i.bg, align 8, !tbaa !49
  %i.dk = fcmp ugt double %i.dg, %i.dj
  br i1 %i.dk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit
  %i.dl = add nsw i32 %.097169, 1
  %i.dm = sext i32 %.097169 to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.dm
  store double %i.dg, ptr %i.dn, align 8, !tbaa !72
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.aa
  %.299 = phi i32 [ %.097169, %bb.aa ], [ %i.dl, %bb.ah ], [ %.097169, %bb.ag ] ; 3 uses
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.do = icmp slt i64 %indvars.iv.next182, %i.bj
  br i1 %i.do, label %bb.aa, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.ai
  %i.dp = icmp sgt i32 %.299, 0
  br i1 %i.dp, label %bb.aj, label %._crit_edge.thread

bb.aj:                                            ; preds = %._crit_edge
  %i.dq = load ptr, ptr %i.i, align 8, !tbaa !35
  %.idx = shl nsw i64 %indvars.iv187, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !41
  %i.dt = mul nsw i32 %i.ds, 1000
  %i.du = getelementptr i8, ptr %i.dr, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !41 ; 2 uses
  %i.dw = mul nsw i32 %i.dv, 1000
  %i.dx = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.bl, ptr %i.bi, align 8, !tbaa !59
  %10 = sext i16 %i.bl to i64
  %i.dz = shl nsw i64 %10, 3
  %i.ea = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.dz) #21
          to label %bb.al unwind label %.loopexit156 ; 3 uses

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ea, ptr %i.bh, align 8, !tbaa !58
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.am, label %.preheader

.preheader:                                       ; preds = %bb.al
  %i.ec = load i16, ptr %i.bi, align 8, !tbaa !59 ; 2 uses
  %i.ed = icmp sgt i16 %i.ec, 0
  br i1 %i.ed, label %.lr.ph171.preheader, label %.loopexit

.lr.ph171.preheader:                              ; preds = %.preheader
  %i.ee = zext nneg i16 %i.ec to i64
  %i.ef = shl nuw nsw i64 %i.ee, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ea, i8 0, i64 %i.ef, i1 false), !tbaa !60
  br label %.loopexit

bb.am:                                            ; preds = %bb.al
  store i32 7, ptr %1, align 4, !tbaa !39
  invoke void @_ZN6icu_7813OlsonTimeZone21deleteTransitionRulesEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
          to label %bb.an unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  invoke void @uprv_free_78(ptr noundef nonnull %i.ax)
          to label %.critedge unwind label %.loopexit.split-lp

.loopexit156:                                     ; preds = %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp:                               ; preds = %bb.am, %bb.an, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit:                                        ; preds = %.lr.ph171.preheader, %.preheader, %bb.aj
  %i.eg = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 352) #19 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.ei = icmp eq i32 %i.dv, 0
  %.5 = select i1 %i.ei, ptr %3, ptr %6
  invoke void @_ZN6icu_7821TimeArrayTimeZoneRuleC1ERKNS_13UnicodeStringEiiPKdiNS_12DateTimeRule12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(352) %i.eg, ptr noundef nonnull align 8 dereferenceable(64) %.5, i32 noundef %i.dt, i32 noundef %i.dw, ptr noundef nonnull %i.ax, i32 noundef %.299, i32 noundef 2)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv187
  store ptr %i.eg, ptr %i.ek, align 8, !tbaa !60
  %.pre = load i16, ptr %i.az, align 8, !tbaa !34
  br label %._crit_edge.thread

bb.aq:                                            ; preds = %.loopexit
  %i.el = load ptr, ptr %i.bh, align 8, !tbaa !58
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv187
  store ptr null, ptr %i.em, align 8, !tbaa !60
  store i32 7, ptr %1, align 4, !tbaa !39
  invoke void @_ZN6icu_7813OlsonTimeZone21deleteTransitionRulesEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
          to label %.critedge unwind label %.loopexit.split-lp

bb.ar:                                            ; preds = %bb.ao
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.eg) #19
  br label %bb.ch

._crit_edge.thread:                               ; preds = %bb.z, %bb.ap, %._crit_edge
  %i.eo = phi i16 [ %.pre, %bb.ap ], [ %i.bl, %._crit_edge ], [ %i.bl, %bb.z ] ; 2 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.ep = sext i16 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next188, %i.ep
  br i1 %i.eq, label %bb.z, label %._crit_edge174, !llvm.loop !74

._crit_edge174:                                   ; preds = %._crit_edge.thread, %.preheader155
  invoke void @uprv_free_78(ptr noundef nonnull %i.ax)
          to label %bb.as unwind label %bb.y

bb.as:                                            ; preds = %._crit_edge174
  %i.er = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.es = load i16, ptr %i.an, align 8, !tbaa !70
  %i.et = sext i16 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !47
  %i.ew = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 32) #19 ; 4 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ey = load i16, ptr %i.an, align 8, !tbaa !70
  %i.ez = call noundef double @_ZNK6icu_7813OlsonTimeZone14transitionTimeEs(ptr noundef nonnull align 8 dereferenceable(224) %0, i16 noundef signext %i.ey)
  %i.fa = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !58
  %i.fd = zext i8 %i.ev to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !60
  invoke void @_ZN6icu_7818TimeZoneTransitionC1EdRKNS_12TimeZoneRuleES3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, double noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(80) %i.fa, ptr noundef nonnull align 8 dereferenceable(80) %i.ff)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.ew, ptr %i.fg, align 8, !tbaa !56
  br label %.critedge145

bb.av:                                            ; preds = %bb.as
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.fh, align 8, !tbaa !56
  br label %.invoke

.invoke:                                          ; preds = %bb.x, %bb.av
  store i32 7, ptr %1, align 4, !tbaa !39
  invoke void @_ZN6icu_7813OlsonTimeZone21deleteTransitionRulesEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
          to label %.critedge unwind label %bb.y

bb.aw:                                            ; preds = %bb.at
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ew) #19
  br label %bb.ch

.critedge145:                                     ; preds = %bb.u, %bb.au, %bb.v, %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !36 ; 3 uses
  %.not129 = icmp eq ptr %i.fk, null
  br i1 %.not129, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %.critedge145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !49 ; 2 uses
  store double %i.fm, ptr %i.a, align 8, !tbaa !72
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !37
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = invoke noundef signext i8 %i.fp(ptr noundef nonnull align 8 dereferenceable(160) %i.fk)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %.not130 = icmp eq i8 %i.fq, 0
  %i.fr = load ptr, ptr %i.fj, align 8, !tbaa !36 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !37
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  br i1 %.not130, label %bb.bo, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fv = invoke noundef ptr %i.fu(ptr noundef nonnull align 8 dereferenceable(160) %i.fr)
          to label %bb.ba unwind label %bb.bb     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !50
  %i.fx = icmp eq ptr %i.fv, null
  br i1 %i.fx, label %.invoke212, label %bb.bc

bb.bb:                                            ; preds = %.invoke212, %bb.bq, %bb.bo, %bb.bc, %bb.az, %bb.ax
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bc:                                            ; preds = %bb.ba
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !48
  invoke void @_ZN6icu_7814SimpleTimeZone12setStartYearEi(ptr noundef nonnull align 8 dereferenceable(160) %i.fv, i32 noundef %i.ga)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZN6icu_7818TimeZoneTransitionC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.gb = load ptr, ptr %i.fw, align 8, !tbaa !50 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !37
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 112
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = invoke noundef signext i8 %i.ge(ptr noundef nonnull align 8 dereferenceable(160) %i.gb, double noundef %i.fm, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bf unwind label %bb.bk     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.gg = invoke noundef ptr @_ZNK6icu_7818TimeZoneTransition5getToEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bg unwind label %bb.bk     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !37
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = invoke noundef ptr %i.gj(ptr noundef nonnull align 8 dereferenceable(80) %i.gg)
          to label %bb.bh unwind label %bb.bk     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %.not133 = icmp eq ptr %i.gk, null
  br i1 %.not133, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  store i32 7, ptr %1, align 4, !tbaa !39
end_hunk_1
