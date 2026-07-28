inline.NumInlined: 474
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7812RegexCompileD2Ev:bb.a
  tail call void @_ZN6icu_786UStackD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.i) #9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.j) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_786UStackD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812RegexCompileD0Ev(ptr noundef nonnull align 8 dereferenceable(512) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7812RegexCompileE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7812RegexCompileD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #9, !inline_history !5
  br label %_ZN6icu_7812RegexCompileD2Ev.exit

_ZN6icu_7812RegexCompileD2Ev.exit:                ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @_ZN6icu_786UStackD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.g) #9, !inline_history !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @_ZN6icu_786UStackD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.h) #9, !inline_history !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.i) #9, !inline_history !5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.j) #9, !inline_history !5
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812RegexCompile7compileERKNS_13UnicodeStringER11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.UText, align 8              ; 8 uses
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #9 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  store i32 878368812, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 144, ptr %i.f, align 4
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call ptr @utext_openConstUnicodeString_78(ptr noundef nonnull %4, ptr noundef %i.i, ptr noundef nonnull %3) #9 ; 0 uses
  %i.k = load i32, ptr %3, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN6icu_7812RegexCompile7compileEP5UTextR11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.m = call ptr @utext_close_78(ptr noundef nonnull %4) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @utext_openConstUnicodeString_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812RegexCompile7compileEP5UTextR11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(512) initializes((8, 16), (24, 32), (80, 82), (280, 284)) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 8 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i16 0, ptr %i.d, align 8
  %i.e = load i32, ptr %3, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @utext_clone_78(ptr noundef %i.j, ptr noundef %1, i8 noundef signext 0, i8 noundef signext 1, ptr noundef nonnull %3) #9
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i64 @utext_nativeLength_78(ptr noundef %1) #9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 16
  %.not37 = icmp eq i32 %i.u, 0
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.v, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  tail call void @_ZN6icu_7812RegexCompile8nextCharERNS0_16RegexPatternCharE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.w)
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.ab
  %.050 = phi i16 [ 1, %.lr.ph ], [ %.1, %bb.ab ]
  %i.ab = zext i16 %.050 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_78L20gRuleParseStateTableE, i64 %i.ab
  br label %bb.g

bb.g:                                             ; preds = %.thread46, %bb.f
  %.029 = phi ptr [ %i.ac, %bb.f ], [ %i.av, %.thread46 ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.ae = load i8, ptr %i.ad, align 4             ; 5 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = icmp ult i8 %i.ae, 127
  br i1 %i.ag, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.aa, align 4
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.w, align 8
  %i.ak = icmp eq i32 %i.aj, %i.af
  br i1 %i.ak, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  switch i8 %i.ae, label %bb.m [
    i8 -1, label %bb.q
    i8 -2, label %bb.k
    i8 -3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.al = load i8, ptr %i.aa, align 4
  %.not39 = icmp eq i8 %i.al, 0
  br i1 %.not39, label %.thread46, label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.w, align 8
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.q, label %.thread46

bb.m:                                             ; preds = %bb.j
  %4 = zext i8 %i.ae to i64
  %or.cond = icmp slt i8 %i.ae, -16
  br i1 %or.cond, label %bb.n, label %.thread46

bb.n:                                             ; preds = %bb.m
  %i.ao = load i8, ptr %i.aa, align 4
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %.thread46

bb.o:                                             ; preds = %bb.n
  %i.aq = load i32, ptr %i.w, align 8             ; 2 uses
  %.not40 = icmp eq i32 %i.aq, -1
  br i1 %.not40, label %.thread46, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = load ptr, ptr @_ZN6icu_7815RegexStaticSets11gStaticSetsE, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 -22576
  %i.at = getelementptr [200 x i8], ptr %i.as, i64 %4
  %i.au = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.at, i32 noundef %i.aq) #9
  %.not41 = icmp eq i8 %i.au, 0
  br i1 %.not41, label %.thread46, label %bb.q

.thread46:                                        ; preds = %bb.k, %bb.l, %bb.p, %bb.o, %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.029, i64 8
  br label %bb.g, !llvm.loop !6

bb.q:                                             ; preds = %bb.j, %bb.p, %bb.l, %bb.k, %bb.i
  %i.aw = load i32, ptr %.029, align 4
  %i.ax = tail call noundef signext i8 @_ZN6icu_7812RegexCompile14doParseActionsEi(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %i.aw)
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.029, i64 6
  %i.ba = load i8, ptr %i.az, align 2             ; 2 uses
  %.not42 = icmp eq i8 %i.ba, 0
  br i1 %.not42, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = load i32, ptr %i.c, align 8             ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bc, ptr %i.c, align 8
  %i.bd = icmp sgt i32 %i.bb, 98
  br i1 %i.bd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN6icu_7812RegexCompile5errorE10UErrorCode(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef 66304)
  %i.be = load i32, ptr %i.c, align 8
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.c, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = phi i32 [ %i.bf, %bb.t ], [ %i.bc, %bb.s ]
  %i.bh = zext i8 %i.ba to i16
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.bi
  store i16 %i.bh, ptr %i.bj, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %.029, i64 7
  %i.bl = load i8, ptr %i.bk, align 1
  %.not43 = icmp eq i8 %i.bl, 0
  br i1 %.not43, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN6icu_7812RegexCompile8nextCharERNS0_16RegexPatternCharE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.w)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %.029, i64 5
  %i.bn = load i8, ptr %i.bm, align 1             ; 2 uses
  %.not44 = icmp eq i8 %i.bn, -1
  br i1 %.not44, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = zext i8 %i.bn to i16
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bp = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2            ; 2 uses
  %i.bt = add nsw i32 %i.bp, -1
  store i32 %i.bt, ptr %i.c, align 8
  %i.bu = icmp slt i32 %i.bp, 1
  br i1 %i.bu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.bp, ptr %i.c, align 8
  tail call void @_ZN6icu_7812RegexCompile5errorE10UErrorCode(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef 66310)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %.1 = phi i16 [ %i.bo, %bb.y ], [ %i.bs, %bb.aa ], [ %i.bs, %bb.z ]
  %i.bv = load ptr, ptr %i.a, align 8
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %bb.f, label %.loopexit, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.q
  %.pre.pre = load ptr, ptr %i.a, align 8
  %.pre55.pre = load i32, ptr %.pre.pre, align 4
  %i.by = icmp slt i32 %.pre55.pre, 1
  br i1 %i.by, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %._crit_edge
  %i.bz = load ptr, ptr %i.g, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 128 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = add nuw nsw i32 %i.cb, 2
  store i32 %i.cd, ptr %i.ca, align 8
  %i.ce = load ptr, ptr %i.g, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = icmp sgt i32 %i.cg, 16777199
  br i1 %i.ch, label %.sink.split.i, label %_ZN6icu_7812RegexCompile17allocateStackDataEi.exit

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac
  %.sink.i = phi i32 [ 66324, %bb.ad ], [ 66304, %bb.ac ]
  tail call void @_ZN6icu_7812RegexCompile5errorE10UErrorCode(ptr noundef nonnull readonly align 8 dereferenceable(512) %0, i32 noundef %.sink.i)
  br label %_ZN6icu_7812RegexCompile17allocateStackDataEi.exit

_ZN6icu_7812RegexCompile17allocateStackDataEi.exit: ; preds = %bb.ad, %.sink.split.i
  tail call void @_ZN6icu_7812RegexCompile9stripNOPsEv(ptr noundef nonnull align 8 dereferenceable(512) %0)
  %i.ci = load ptr, ptr %i.g, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = add nsw i32 %i.cm, -1
  %i.co = tail call noundef i32 @_ZN6icu_7812RegexCompile14minMatchLengthEii(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef 3, i32 noundef %i.cn)
  %i.cp = load ptr, ptr %i.g, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 124
  store i32 %i.co, ptr %i.cq, align 4
  tail call void @_ZN6icu_7812RegexCompile14matchStartTypeEv(ptr noundef nonnull align 8 dereferenceable(512) %0)
  %i.cr = load ptr, ptr %i.g, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i32, ptr %i.cu, align 8            ; 5 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i32 %i.cv, 0
  %i.cy = shl nsw i64 %i.cw, 5                    ; 2 uses
  %i.cz = select i1 %i.cx, i64 -1, i64 %i.cy
  %i.da = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.cz) #9 ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  %i.dc = icmp eq i32 %i.cv, 0
  %or.cond48 = or i1 %i.dc, %i.db
  br i1 %or.cond48, label %.loopexit49, label %.loopexit49.loopexit

.loopexit49.loopexit:                             ; preds = %_ZN6icu_7812RegexCompile17allocateStackDataEi.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.da, i8 0, i64 %i.cy, i1 false)
  br label %.loopexit49

.loopexit49:                                      ; preds = %.loopexit49.loopexit, %_ZN6icu_7812RegexCompile17allocateStackDataEi.exit
  %i.dd = load ptr, ptr %i.g, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 112
  store ptr %i.da, ptr %i.de, align 8
  %i.df = load ptr, ptr %i.g, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ae, label %.preheader

.preheader:                                       ; preds = %.loopexit49
  %i.dj = icmp sgt i32 %i.cv, 0
  br i1 %i.dj, label %.lr.ph53.preheader, label %.loopexit

.lr.ph53.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.cv to i64
  br label %.lr.ph53

bb.ae:                                            ; preds = %.loopexit49
  %i.dk = load ptr, ptr %i.a, align 8
  store i32 7, ptr %i.dk, align 4
  store i32 7, ptr %3, align 4
  br label %.loopexit

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next, %_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit ] ; 3 uses
  %i.dl = load ptr, ptr %i.g, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 104
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = trunc nuw nsw i64 %indvars.iv to i32
  %i.dp = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i32 noundef %i.do) #9 ; 2 uses
  %i.dq = load ptr, ptr %i.g, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 112
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %indvars.iv
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %_ZN6icu_7812Regex8BitSet4initEPKNS_10UnicodeSetE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph53, %bb.ag
  %.08.i = phi i32 [ %i.ed, %bb.ag ], [ 0, %.lr.ph53 ] ; 4 uses
  %i.du = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.dp, i32 noundef %.08.i) #9
  %.not7.i = icmp eq i8 %i.du, 0
  br i1 %.not7.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.preheader.i
  %i.dv = and i32 %.08.i, 7
  %i.dw = shl nuw nsw i32 1, %i.dv
  %i.dx = lshr i32 %.08.i, 3
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dy ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = trunc nuw i32 %i.dw to i8
  %i.ec = or i8 %i.ea, %i.eb
  store i8 %i.ec, ptr %i.dz, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.preheader.i
end_hunk_0
