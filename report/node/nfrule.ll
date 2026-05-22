inline.NumInlined: 386
inline.NumDeleted: 69
begin_hunk_0_@_ZNK6icu_786NFRule14shouldRollBackEl:bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef signext i8 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #8
  %.not6 = icmp eq i8 %i.f, 0
  br i1 %.not6, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not7 = icmp eq ptr %i.h, null
  br i1 %.not7, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #8
  %.not8 = icmp eq i8 %i.l, 0
  br i1 %.not8, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i16, ptr %i.o, align 4
  %i.q = tail call noundef i64 @_ZN6icu_7810util64_powEjt(i32 noundef %i.n, i16 noundef zeroext %i.p) #8 ; 2 uses
  %i.r = srem i64 %1, %i.q
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %0, align 8
  %i.u = srem i64 %i.t, %i.q
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0 = phi i8 [ %i.w, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @_ZNK6icu_786NFRule7doParseERKNS_13UnicodeStringERNS_13ParsePositionEadjiRNS_11FormattableE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %2, i8 noundef signext %3, double noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(112) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.icu_78::ParsePosition", align 8 ; 7 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %13 = alloca %"class.icu_78::ParsePosition", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813ParsePositionE, i64 16), ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 -1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %1) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i16, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp slt i16 %i.i, 0
  %i.k = ashr i16 %i.i, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %i.g, %bb.b ], [ %i.o, %bb.c ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not64 = icmp eq ptr %i.r, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i16, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp slt i16 %i.v, 0
  %i.x = ashr i16 %i.v, 5
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = select i1 %i.w, i32 %i.aa, i32 %i.y
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi i32 [ %i.t, %bb.e ], [ %i.ab, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %10, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i16 2, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %10) #8
  %i.af = load i16, ptr %i.ad, align 8            ; 2 uses
  %i.ag = icmp slt i16 %i.af, 0
  %i.ah = ashr i16 %i.af, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = select i1 %i.ag, i32 %i.ak, i32 %i.ai
  %i.am = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %10, i32 noundef 0, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.p) #8 ; 0 uses
  %i.an = load i16, ptr %i.ad, align 8            ; 2 uses
  %i.ao = icmp slt i16 %i.an, 0
  %i.ap = ashr i16 %i.an, 5
  %i.aq = sext i16 %i.ap to i32
  %i.ar = load i32, ptr %i.aj, align 4
  %i.as = select i1 %i.ao, i32 %i.ar, i32 %i.aq
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %_ZNK6icu_786NFRule11stripPrefixERNS_13UnicodeStringERKS1_RNS_13ParsePositionE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.at = call noundef i32 @_ZNK6icu_786NFRule12prefixLengthERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 5 uses
  %i.au = load i32, ptr %i.a, align 4
  %i.av = icmp sgt i32 %i.au, 0
  %.not10.i = icmp eq i32 %i.at, 0
  %or.cond.i = or i1 %.not10.i, %i.av
  br i1 %or.cond.i, label %_ZN6icu_7813UnicodeString6removeEii.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.at, ptr %i.b, align 8
  %i.aw = icmp eq i32 %i.at, 2147483647
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 8            ; 2 uses
  %i.az = and i16 %i.ay, 1
  %.not.i.i.i = icmp eq i16 %i.az, 0
  %i.ba = and i16 %i.ay, 30
  %storemerge.i.i.i = select i1 %.not.i.i.i, i16 %i.ba, i16 2
  store i16 %storemerge.i.i.i, ptr %i.ax, align 8
  br label %_ZN6icu_7813UnicodeString6removeEii.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef 0, i32 noundef %i.at, ptr noundef null, i32 noundef 0, i32 noundef 0) #8 ; 0 uses
  br label %_ZN6icu_7813UnicodeString6removeEii.exit.i

_ZN6icu_7813UnicodeString6removeEii.exit.i:       ; preds = %bb.k, %bb.j, %bb.h
  %i.bc = phi i32 [ %i.at, %bb.k ], [ 2147483647, %bb.j ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %_ZNK6icu_786NFRule11stripPrefixERNS_13UnicodeStringERKS1_RNS_13ParsePositionE.exit

_ZNK6icu_786NFRule11stripPrefixERNS_13UnicodeStringERKS1_RNS_13ParsePositionE.exit: ; preds = %bb.g, %_ZN6icu_7813UnicodeString6removeEii.exit.i
  %i.bd = phi i32 [ 0, %bb.g ], [ %i.bc, %_ZN6icu_7813UnicodeString6removeEii.exit.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i16, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp slt i16 %i.bf, 0
  %i.bh = ashr i16 %i.bf, 5
  %i.bi = sext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = select i1 %i.bg, i32 %i.bk, i32 %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bn = load i16, ptr %i.bm, align 8            ; 2 uses
  %i.bo = icmp slt i16 %i.bn, 0
  %i.bp = ashr i16 %i.bn, 5
  %i.bq = sext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = select i1 %i.bo, i32 %i.bs, i32 %i.bq
  %i.bu = sub i32 %i.bl, %i.bt
  %i.bv = icmp eq i32 %i.bd, 0
  %i.bw = icmp ne i32 %i.p, 0
  %or.cond = and i1 %i.bw, %i.bv
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK6icu_786NFRule11stripPrefixERNS_13UnicodeStringERKS1_RNS_13ParsePositionE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 -1, ptr %i.bx, align 4
  call void @_ZN6icu_7811Formattable7setLongEi(ptr noundef nonnull align 8 dereferenceable(112) %7, i32 noundef 0) #8
  br label %bb.ad

bb.m:                                             ; preds = %_ZNK6icu_786NFRule11stripPrefixERNS_13UnicodeStringERKS1_RNS_13ParsePositionE.exit
  %i.by = load i64, ptr %0, align 8               ; 2 uses
  switch i64 %i.by, label %bb.p [
    i64 -5, label %bb.n
    i64 -6, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bd, ptr %i.bz, align 8
  %i.ca = call double @uprv_getInfinity_78() #8
  call void @_ZN6icu_7811Formattable9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(112) %7, double noundef %i.ca) #8
  br label %bb.ad

bb.o:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bd, ptr %i.cb, align 8
  %i.cc = call double @uprv_getNaN_78() #8
  call void @_ZN6icu_7811Formattable9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(112) %7, double noundef %i.cc) #8
  br label %bb.ad

bb.p:                                             ; preds = %bb.m
  %14 = call i64 @llvm.smax.i64(i64 %i.by, i64 0)
  %i.cd = uitofp nneg i64 %14 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %11, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i16 2, ptr %i.ce, align 8
  %i.cf = sub nsw i32 %i.ac, %i.p
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not67 = icmp ne i32 %i.p, %i.ac
  br label %bb.q

bb.q:                                             ; preds = %bb.aa, %bb.p
  %.057 = phi double [ 0.000000e+00, %bb.p ], [ %.259, %bb.aa ] ; 5 uses
  %.055 = phi i32 [ 0, %bb.p ], [ %.156, %bb.aa ] ; 3 uses
  %.054 = phi i32 [ 0, %bb.p ], [ %.2, %bb.aa ]   ; 6 uses
  store i32 0, ptr %i.b, align 8
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %11) #8
  %i.co = load i16, ptr %i.ce, align 8            ; 2 uses
  %i.cp = icmp slt i16 %i.co, 0
  %i.cq = ashr i16 %i.co, 5
  %i.cr = sext i16 %i.cq to i32
  %i.cs = load i32, ptr %i.cg, align 4
  %i.ct = select i1 %i.cp, i32 %i.cs, i32 %i.cr
  %i.cu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %11, i32 noundef 0, i32 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef %i.p, i32 noundef %i.cf) #8 ; 0 uses
  %i.cv = load ptr, ptr %i.d, align 8
  %i.cw = call noundef double @_ZNK6icu_786NFRule16matchToDelimiterERKNS_13UnicodeStringEidS3_RNS_13ParsePositionEPKNS_14NFSubstitutionEjid(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef %.055, double noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.cv, i32 noundef %5, i32 noundef %6, double noundef %4)
  %i.cx = load i32, ptr %i.b, align 8             ; 9 uses
  %.not65 = icmp ne i32 %i.cx, 0
  %i.cy = load ptr, ptr %i.d, align 8
  %i.cz = icmp eq ptr %i.cy, null
  %or.cond70 = select i1 %.not65, i1 true, i1 %i.cz
  br i1 %or.cond70, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %12, align 8
  store i16 2, ptr %i.ci, align 8
  %i.da = load i16, ptr %i.bm, align 8            ; 2 uses
  %i.db = icmp slt i16 %i.da, 0
  %i.dc = ashr i16 %i.da, 5
  %i.dd = sext i16 %i.dc to i32
  %i.de = load i32, ptr %i.br, align 4
  %i.df = select i1 %i.db, i32 %i.de, i32 %i.dd
  %i.dg = sub nsw i32 %i.df, %i.cx
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %12) #8
  %i.dh = load i16, ptr %i.ci, align 8            ; 2 uses
  %i.di = icmp slt i16 %i.dh, 0
  %i.dj = ashr i16 %i.dh, 5
  %i.dk = sext i16 %i.dj to i32
  %i.dl = load i32, ptr %i.cj, align 4
  %i.dm = select i1 %i.di, i32 %i.dl, i32 %i.dk
  %i.dn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %12, i32 noundef 0, i32 noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef %i.cx, i32 noundef %i.dg) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813ParsePositionE, i64 16), ptr %13, align 8
  store i32 0, ptr %i.ck, align 8
  store i32 -1, ptr %i.cl, align 4
  %i.do = load i16, ptr %i.cm, align 8            ; 2 uses
  %i.dp = icmp slt i16 %i.do, 0
  %i.dq = ashr i16 %i.do, 5
  %i.dr = sext i16 %i.dq to i32
  %i.ds = load i32, ptr %i.cn, align 4
  %i.dt = select i1 %i.dp, i32 %i.ds, i32 %i.dr
  %i.du = sub nsw i32 %i.dt, %i.ac
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %11) #8
  %i.dv = load i16, ptr %i.ce, align 8            ; 2 uses
  %i.dw = icmp slt i16 %i.dv, 0
  %i.dx = ashr i16 %i.dv, 5
  %i.dy = sext i16 %i.dx to i32
  %i.dz = load i32, ptr %i.cg, align 4
  %i.ea = select i1 %i.dw, i32 %i.dz, i32 %i.dy
  %i.eb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %11, i32 noundef 0, i32 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef %i.ac, i32 noundef %i.du) #8 ; 0 uses
  %i.ec = load ptr, ptr %i.q, align 8
  %i.ed = call noundef double @_ZNK6icu_786NFRule16matchToDelimiterERKNS_13UnicodeStringEidS3_RNS_13ParsePositionEPKNS_14NFSubstitutionEjid(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %12, i32 noundef 0, double noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.ec, i32 noundef %5, i32 noundef %6, double noundef %4)
  %i.ee = load i32, ptr %i.ck, align 8            ; 2 uses
  %.not66 = icmp ne i32 %i.ee, 0
  %i.ef = load ptr, ptr %i.q, align 8
  %i.eg = icmp eq ptr %i.ef, null
  %or.cond72 = select i1 %.not66, i1 true, i1 %i.eg
  br i1 %or.cond72, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eh = add i32 %i.bu, %i.ee
  %i.ei = add i32 %i.eh, %i.cx                    ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, %.054
  br i1 %i.ej, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.ek = load i32, ptr %i.cl, align 4
  %i.el = add nsw i32 %i.ek, %i.p
  %i.em = add nsw i32 %i.el, %i.cx                ; 2 uses
  %i.en = load i32, ptr %i.ch, align 4
  %i.eo = icmp sgt i32 %i.em, %i.en
  br i1 %i.eo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.em, ptr %i.ch, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s, %bb.t
  %.158 = phi double [ %i.ed, %bb.t ], [ %.057, %bb.s ], [ %.057, %bb.v ], [ %.057, %bb.u ]
  %.1 = phi i32 [ %i.ei, %bb.t ], [ %.054, %bb.s ], [ %.054, %bb.v ], [ %.054, %bb.u ]
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %bb.z

bb.x:                                             ; preds = %bb.q
  %i.ep = load i32, ptr %i.c, align 4
  %i.eq = add nsw i32 %i.ep, %i.p                 ; 2 uses
  %i.er = load i32, ptr %i.ch, align 4
  %i.es = icmp sgt i32 %i.eq, %i.er
  br i1 %i.es, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.eq, ptr %i.ch, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %.259 = phi double [ %.158, %bb.w ], [ %.057, %bb.y ], [ %.057, %bb.x ] ; 3 uses
  %.156 = phi i32 [ %i.cx, %bb.w ], [ %.055, %bb.y ], [ %.055, %bb.x ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.w ], [ %.054, %bb.y ], [ %.054, %bb.x ] ; 3 uses
  %i.et = icmp sgt i32 %i.cx, 0
  %or.cond82 = and i1 %.not67, %i.et
  br i1 %or.cond82, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.eu = load i16, ptr %i.bm, align 8            ; 2 uses
  %i.ev = icmp slt i16 %i.eu, 0
  %i.ew = ashr i16 %i.eu, 5
  %i.ex = sext i16 %i.ew to i32
  %i.ey = load i32, ptr %i.br, align 4
  %i.ez = select i1 %i.ev, i32 %i.ey, i32 %i.ex
  %i.fa = icmp sge i32 %i.cx, %i.ez
  %.not68 = icmp eq i32 %i.cx, %.156
  %or.cond75 = select i1 %i.fa, i1 true, i1 %.not68
  br i1 %or.cond75, label %.critedge, label %bb.q, !llvm.loop !15

.critedge:                                        ; preds = %bb.aa, %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.2, ptr %i.fb, align 8
  %i.fc = icmp sgt i32 %.2, 0                     ; 2 uses
  br i1 %i.fc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge
  store i32 0, ptr %i.ch, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  %i.fd = icmp ne i8 %3, 0
  %or.cond3 = and i1 %i.fd, %i.fc
  %i.fe = load ptr, ptr %i.d, align 8
  %i.ff = icmp eq ptr %i.fe, null
  %or.cond74 = select i1 %or.cond3, i1 %i.ff, i1 false
  %i.fg = fdiv double 1.000000e+00, %.259
  %.3 = select i1 %or.cond74, double %i.fg, double %.259
  call void @_ZN6icu_7811Formattable9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(112) %7, double noundef %.3) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.o, %bb.n, %bb.l
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @_ZN6icu_7813ParsePositionD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_786NFRule11stripPrefixERNS_13UnicodeStringERKS1_RNS_13ParsePositionE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.j = call noundef i32 @_ZNK6icu_786NFRule12prefixLengthERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 4 uses
  %i.k = load i32, ptr %i.a, align 4
  %i.l = icmp sgt i32 %i.k, 0
  %.not10 = icmp eq i32 %i.j, 0
  %or.cond = or i1 %.not10, %i.l
  br i1 %or.cond, label %_ZN6icu_7813UnicodeString6removeEii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, %i.j
  store i32 %i.o, ptr %i.m, align 8
  %i.p = icmp eq i32 %i.j, 2147483647
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i16, ptr %i.q, align 8              ; 2 uses
  %i.s = and i16 %i.r, 1
  %.not.i.i = icmp eq i16 %i.s, 0
  %i.t = and i16 %i.r, 30
  %storemerge.i.i = select i1 %.not.i.i, i16 %i.t, i16 2
  store i16 %storemerge.i.i, ptr %i.q, align 8
  br label %_ZN6icu_7813UnicodeString6removeEii.exit

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.j, ptr noundef null, i32 noundef 0, i32 noundef 0) #8 ; 0 uses
  br label %_ZN6icu_7813UnicodeString6removeEii.exit

_ZN6icu_7813UnicodeString6removeEii.exit:         ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7813UnicodeString6removeEii.exit, %bb.a
end_hunk_0
begin_hunk_1_@_ZNK6icu_786NFRule8findTextERKNS_13UnicodeStringES3_iPi:bb.a
  %i.ei = sext i16 %i.eh to i32
  %i.ej = load i32, ptr %i.cu, align 4
  %i.ek = select i1 %i.eg, i32 %i.ej, i32 %i.ei   ; 4 uses
  %i.el = icmp slt i16 %.pre.i50, 0
  %i.em = select i1 %i.el, i32 %i.ee, i32 %.pre-phi9.i65
  %i.en = sub nsw i32 %i.em, %.0.i66
  %i.eo = and i16 %i.ef, 1
  %.not.i.i67 = icmp eq i16 %i.eo, 0
  br i1 %.not.i.i67, label %.sink.split.i.i.i69, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread

.sink.split.i.i.i69:                              ; preds = %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i64
  %spec.select.i.i70 = tail call i32 @llvm.smin.i32(i32 %i.ek, i32 0) ; 2 uses
  %i.ep = icmp slt i32 %i.ek, 0
  br i1 %i.ep, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i71

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i71: ; preds = %.sink.split.i.i.i69
  %i.eq = sub nuw nsw i32 %i.ek, %spec.select.i.i70
  %i.er = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 %i.eq) ; 2 uses
  %.not.i72 = icmp eq i32 %i.er, 0
  br i1 %.not.i72, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i71
  %i.es = and i16 %i.ef, 2
  %.not.i.i.i73 = icmp eq i16 %i.es, 0
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = select i1 %.not.i.i.i73, ptr %i.ev, ptr %i.et
  %i.ex = tail call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.ew, i32 noundef %spec.select.i.i70, i32 noundef %i.er, i32 noundef %.0.i66, i32 noundef %i.en) #8 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, -1
  br i1 %i.ey, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread: ; preds = %.sink.split.i.i.i69, %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i64, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i71, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79
  %i.ez = tail call noundef i32 @_ZNK6icu_786NFRule15findTextLenientERKNS_13UnicodeStringES3_iPi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3, ptr noundef nonnull %4)
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit:   ; preds = %bb.o, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i, %.sink.split.i.i.i55, %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79, %bb.k
  %.3 = phi i32 [ %.1, %bb.k ], [ %i.ex, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79 ], [ %i.ez, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread ], [ %i.dx, %bb.o ], [ -1, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ], [ -1, %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i ], [ -1, %.sink.split.i.i.i55 ]
  ret i32 %.3
}

; Function Attrs: nounwind
declare void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare noundef ptr @_ZNK6icu_7821RuleBasedNumberFormat11getCollatorEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

declare noundef ptr @_ZNK6icu_7817RuleBasedCollator30createCollationElementIteratorERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN6icu_7824CollationElementIterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7824CollationElementIterator9getOffsetEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare void @_ZNK6icu_7812PluralFormat9parseTypeERKNS_13UnicodeStringEPKNS_6NFRuleERNS_11FormattableERNS_13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2147483648, 2147483647) i32 @_ZNK6icu_786NFRule15findTextLenientERKNS_13UnicodeStringES3_iPi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i16 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i16, ptr %i.c, align 8              ; 2 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = load i32, ptr %i.d, align 4
  %i.j = select i1 %i.f, i32 %i.i, i32 %i.h       ; 2 uses
  %i.k = icmp slt i32 %3, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.m = phi i32 [ %i.j, %.lr.ph ], [ %i.ae, %bb.d ]
  %.01620 = phi i32 [ %3, %.lr.ph ], [ %i.y, %bb.d ] ; 4 uses
  %i.n = sub nsw i32 %i.m, %.01620
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #8
  %i.o = load i16, ptr %i.b, align 8              ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.l, align 4
  %i.t = select i1 %i.p, i32 %i.s, i32 %i.r
  %i.u = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.01620, i32 noundef %i.n) #8 ; 0 uses
  %i.v = call noundef i32 @_ZNK6icu_786NFRule12prefixLengthERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.w = load i32, ptr %i.a, align 4
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %.not19 = icmp eq i32 %i.v, 0
  br i1 %.not19, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.y = add nsw i32 %.01620, 1                   ; 2 uses
  %i.z = load i16, ptr %i.c, align 8              ; 2 uses
  %i.aa = icmp slt i16 %i.z, 0
  %i.ab = ashr i16 %i.z, 5
  %i.ac = sext i16 %i.ab to i32
  %i.ad = load i32, ptr %i.d, align 4
  %i.ae = select i1 %i.aa, i32 %i.ad, i32 %i.ac   ; 2 uses
  %i.af = icmp slt i32 %i.y, %i.ae
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  %storemerge = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ %i.v, %bb.c ]
  %.017 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.d ], [ %.01620, %bb.c ]
  store i32 %storemerge, ptr %4, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret i32 %.017
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786NFRule23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(2459) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7814NFSubstitution23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(2459) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6icu_7814NFSubstitution23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(2459) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN6icu_7814NFSubstitution23setDecimalFormatSymbolsERKNS_20DecimalFormatSymbolsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(2459), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(1)
declare ptr @uprv_realloc_78(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6icu_7810util64_touElPDsjja(i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #1

declare void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7824CollationElementIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = !{i64 2151494816}
!11 = !{ptr @_ZN6icu_7812LocalPointerINS_6NFRuleEED2Ev, ptr @_ZN6icu_786NFRuleD2Ev}
!12 = !{ptr @_ZN6icu_786NFRuleD2Ev}
!13 = distinct !{null}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
end_hunk_1
