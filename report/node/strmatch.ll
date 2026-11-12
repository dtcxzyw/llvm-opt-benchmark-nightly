Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/strmatch?download=true
inline.NumInlined: 51
inline.NumDeleted: 22
begin_hunk_0_@_ZN6icu_7813StringMatcher7matchesERKNS_11ReplaceableERiia:bb.a
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %bb.f
  %.pre94 = phi i32 [ %.pre94.pre, %._crit_edge81.loopexit ], [ %i.b, %bb.f ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.l, label %bb.q

bb.l:                                             ; preds = %._crit_edge81
  %i.co = add nsw i32 %.pre94, 1
  store i32 %i.co, ptr %i.cl, align 4
  %i.cp = load i32, ptr %2, align 4
  %i.cq = add nsw i32 %i.cp, 1
  br label %.sink.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %i.cr = phi i32 [ %i.dq, %bb.p ], [ %i.b, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.lr.ph ] ; 2 uses
  %i.cs = phi i16 [ %i.dr, %bb.p ], [ %i.f, %.lr.ph ]
  %i.ct = icmp eq i32 %i.cr, %3
  br i1 %i.ct, label %.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit63

_ZNK6icu_7813UnicodeString6charAtEi.exit63:       ; preds = %.lr.ph.split
  %i.cu = and i16 %i.cs, 2
  %.not.i.i.i62 = icmp eq i16 %i.cu, 0
  %i.cv = load ptr, ptr %i.n, align 8
  %i.cw = select i1 %.not.i.i.i62, ptr %i.cv, ptr %i.m
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %indvars.iv
  %i.cy = load i16, ptr %i.cx, align 2            ; 2 uses
  %i.cz = load ptr, ptr %i.o, align 8
  %i.da = zext i16 %i.cy to i32
  %i.db = call noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168) %i.cz, i32 noundef %i.da) #7 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit63
  %i.dd = load i32, ptr %i.a, align 4             ; 2 uses
  %i.de = icmp slt i32 %i.dd, %3
  br i1 %i.de, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.df = load ptr, ptr %1, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef zeroext i16 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dd) #7, !inline_history !29
  %i.dj = icmp eq i16 %i.cy, %i.di
  br i1 %i.dj, label %.thread70, label %.thread

.thread70:                                        ; preds = %bb.n
  %i.dk = load i32, ptr %i.a, align 4
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  store i32 %i.dl, ptr %i.a, align 4
  br label %bb.p

bb.o:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit63
  %i.dm = load ptr, ptr %i.db, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef i32 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %3, i8 noundef signext %4) #7 ; 2 uses
  %.not57 = icmp eq i32 %i.dp, 2
  %.pre = load i32, ptr %i.a, align 4
  br i1 %.not57, label %bb.p, label %.thread

bb.p:                                             ; preds = %.thread70, %bb.o
  %i.dq = phi i32 [ %i.dl, %.thread70 ], [ %.pre, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dr = load i16, ptr %i.d, align 8             ; 3 uses
  %i.ds = icmp slt i16 %i.dr, 0
  %i.dt = ashr i16 %i.dr, 5
  %i.du = sext i16 %i.dt to i32
  %i.dv = load i32, ptr %i.e, align 4
  %i.dw = select i1 %i.ds, i32 %i.dv, i32 %i.du
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next, %i.dx
  br i1 %i.dy, label %.lr.ph.split, label %._crit_edge, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre93 = load i32, ptr %i.a, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %._crit_edge.loopexit, %.preheader
  %i.dz = phi i32 [ %i.b, %.preheader ], [ %.pre93, %._crit_edge.loopexit ], [ %i.dq, %bb.p ] ; 2 uses
  %i.ea = load i32, ptr %2, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.ea, ptr %i.eb, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.l
  %.sink = phi i32 [ %i.cq, %bb.l ], [ %i.dz, %._crit_edge ]
  %.ph = phi i32 [ %.pre94, %bb.l ], [ %i.dz, %._crit_edge ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.sink, ptr %i.ec, align 8
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %._crit_edge81
  %i.ed = phi i32 [ %.pre94, %._crit_edge81 ], [ %.ph, %.sink.split ]
  store i32 %i.ed, ptr %2, align 4
  br label %.thread

.thread:                                          ; preds = %bb.o, %.lr.ph.split, %bb.m, %bb.n, %bb.d, %bb.c, %bb.b, %bb.j, %bb.i, %bb.k, %bb.q
  %.8 = phi i32 [ %i.cj, %bb.k ], [ 2, %bb.q ], [ %i.ac, %bb.b ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.m ], [ 1, %.lr.ph.split ], [ %i.dp, %bb.o ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.8
}

declare noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_ZThn8_N6icu_7813StringMatcher7matchesERKNS_11ReplaceableERiia(ptr nofree noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, i32 noundef %3, i8 noundef signext %4) unnamed_addr #4 align 2 !guid !33 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN6icu_7813StringMatcher7matchesERKNS_11ReplaceableERiia(ptr noundef nonnull align 8 dereferenceable(108) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i8 noundef signext %4)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813StringMatcher9toPatternERNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(108) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1, i8 noundef signext %2) unnamed_addr #1 align 2 !guid !35 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8              ; 4 uses
  %i.e = trunc i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #7
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i16 %i.d, 0
  %i.g = ashr i16 %i.d, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i16 %i.d, 30
  store i16 %i.l, ptr %i.c, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 40, ptr %i.b, align 2
  %i.r = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6icu_7813UnicodeString8truncateEi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.u = load i16, ptr %i.s, align 8              ; 3 uses
  %i.v = icmp slt i16 %i.u, 0
  %i.w = ashr i16 %i.u, 5
  %i.x = sext i16 %i.w to i32
  %i.y = load i32, ptr %i.t, align 4
  %i.z = select i1 %i.v, i32 %i.y, i32 %i.x
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, label %._crit_edge

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph:   ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %i.ae = load i32, ptr %i.o, align 8
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.k

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ag = phi i16 [ %i.u, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %i.as, %bb.i ]
  %i.ah = and i16 %i.ag, 2
  %.not.i.i.i = icmp eq i16 %i.ah, 0
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = select i1 %.not.i.i.i, ptr %i.ai, ptr %i.ab
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 2
  %5 = load ptr, ptr %i.ad, align 8
  %6 = zext i16 %i.al to i32                      ; 2 uses
  %i.am = call noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168) %5, i32 noundef %6) #7 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  call void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringEiaaS2_(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %6, i8 noundef signext 0, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #7
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ao = load ptr, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef nonnull align 8 dereferenceable(64) ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext %2) #7
  call void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringERKS1_aaS2_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i8 noundef signext 1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i16, ptr %i.s, align 8             ; 3 uses
  %i.at = icmp slt i16 %i.as, 0
  %i.au = ashr i16 %i.as, 5
  %i.av = sext i16 %i.au to i32
  %i.aw = load i32, ptr %i.t, align 4
  %i.ax = select i1 %i.at, i32 %i.aw, i32 %i.av
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %._crit_edge, !llvm.loop !34

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 41, ptr %i.a, align 2
  %i.ba = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  call void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringEiaaS2_(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef -1, i8 noundef signext 1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #7
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret ptr %1
}

declare void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringEiaaS2_(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i8 noundef signext, i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringERKS1_aaS2_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @_ZThn8_NK6icu_7813StringMatcher9toPatternERNS_13UnicodeStringEa(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1, i8 noundef signext %2) unnamed_addr #4 align 2 !guid !36 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813StringMatcher9toPatternERNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(108) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @_ZNK6icu_7813StringMatcher17matchesIndexValueEh(ptr noundef nonnull align 8 dereferenceable(108) %0, i8 noundef zeroext %1) unnamed_addr #1 align 2 !guid !37 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i32 noundef 0) #7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168) %i.m, i32 noundef %i.k) #7 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = trunc i32 %i.k to i8
  %i.q = icmp eq i8 %1, %i.p
  %i.r = zext i1 %i.q to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef signext i8 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext %1) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i8 [ 1, %bb.a ], [ %i.r, %bb.c ], [ %i.v, %bb.d ]
  ret i8 %.0
}

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef signext i8 @_ZThn8_NK6icu_7813StringMatcher17matchesIndexValueEh(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #4 align 2 !guid !38 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK6icu_7813StringMatcher17matchesIndexValueEh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i32 noundef 0) #7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168) %i.m, i32 noundef %i.k) #7 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = trunc i32 %i.k to i8
  %i.q = icmp eq i8 %1, %i.p
  %i.r = zext i1 %i.q to i8
  br label %_ZNK6icu_7813StringMatcher17matchesIndexValueEh.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef signext i8 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef zeroext %1) #7, !inline_history !39
  br label %_ZNK6icu_7813StringMatcher17matchesIndexValueEh.exit

_ZNK6icu_7813StringMatcher17matchesIndexValueEh.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i8 [ 1, %bb.a ], [ %i.r, %bb.c ], [ %i.v, %bb.d ]
  ret i8 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7813StringMatcher13addMatchSetToERNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #1 align 2 !guid !40 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = load i32, ptr %i.b, align 4
  %i.h = select i1 %i.d, i32 %i.g, i32 %i.f
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.011 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %i.l = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i32 noundef %.011) #7 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = tail call noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168) %i.m, i32 noundef %i.l) #7 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %i.l) #7 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(200) %1) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = icmp ult i32 %i.l, 65536
  %i.u = select i1 %i.t, i32 1, i32 2
  %i.v = add nuw nsw i32 %i.u, %.011              ; 2 uses
  %i.w = load i16, ptr %i.a, align 8              ; 2 uses
  %i.x = icmp slt i16 %i.w, 0
  %i.y = ashr i16 %i.w, 5
  %i.z = sext i16 %i.y to i32
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = select i1 %i.x, i32 %i.aa, i32 %i.z
  %i.ac = icmp slt i32 %i.v, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !0
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_NK6icu_7813StringMatcher13addMatchSetToERNS_10UnicodeSetE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #4 align 2 !guid !41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
end_hunk_0
