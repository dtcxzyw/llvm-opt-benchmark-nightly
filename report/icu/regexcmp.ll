Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/regexcmp?download=true
inline.NumInlined: 589
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7813UnicodeStringD1Ev
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812RegexCompileD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7812RegexCompileE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @_ZN6icu_786UStackD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.g) #10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @_ZN6icu_786UStackD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.j) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812RegexCompileD0Ev(ptr noundef nonnull align 8 dereferenceable(512) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_7812RegexCompileD1Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #10
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812RegexCompile7compileERKNS_13UnicodeStringER11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.UText, align 8              ; 8 uses
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.e, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false)
  store i32 878368812, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 144, ptr %i.f, align 4
  %i.g = call ptr @utext_openConstUnicodeString_78(ptr noundef nonnull %4, ptr noundef %i.a, ptr noundef nonnull %3) ; 0 uses
  %i.h = load i32, ptr %3, align 4, !tbaa !51
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN6icu_7812RegexCompile7compileEP5UTextR11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.j = call ptr @utext_close_78(ptr noundef nonnull %4) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #10
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @utext_openConstUnicodeString_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812RegexCompile7compileEP5UTextR11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(512) initializes((8, 16), (24, 32), (80, 82), (280, 284)) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 8 uses
  store i32 0, ptr %i.e, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i16 0, ptr %i.f, align 8, !tbaa !55
  %i.g = load i32, ptr %3, align 4, !tbaa !51
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.m = tail call ptr @utext_clone_78(ptr noundef %i.l, ptr noundef %1, i8 noundef signext 0, i8 noundef signext 1, ptr noundef nonnull %3)
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !56
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.q = load i32, ptr %i.p, align 4, !tbaa !51
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.s = tail call i64 @utext_nativeLength_78(ptr noundef %1)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %i.s, ptr %i.t, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45
  %i.w = and i32 %i.v, 16
  %.not37 = icmp eq i32 %i.w, 0
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.x, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  tail call void @_ZN6icu_7812RegexCompile8nextCharERNS0_16RegexPatternCharE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.y)
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit49
  %.054 = phi i16 [ 1, %.lr.ph ], [ %.1, %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit49 ]
  %i.ag = zext i16 %.054 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_78L20gRuleParseStateTableE, i64 %i.ag
  br label %bb.g

bb.g:                                             ; preds = %.thread50, %bb.f
  %.029 = phi ptr [ %i.ah, %bb.f ], [ %i.ba, %.thread50 ] ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !107 ; 5 uses
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = icmp ult i8 %i.aj, 127
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.ac, align 4, !tbaa !58
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !59
  %i.ap = icmp eq i32 %i.ao, %i.ak
  br i1 %i.ap, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  switch i8 %i.aj, label %bb.m [
    i8 -1, label %bb.q
    i8 -2, label %bb.k
    i8 -3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ac, align 4, !tbaa !58
  %.not39 = icmp eq i8 %i.aq, 0
  br i1 %.not39, label %.thread50, label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.ar = load i32, ptr %i.y, align 8, !tbaa !59
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.q, label %.thread50

bb.m:                                             ; preds = %bb.j
  %or.cond = icmp slt i8 %i.aj, -16
  br i1 %or.cond, label %bb.n, label %.thread50

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %i.ac, align 4, !tbaa !58
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.o, label %.thread50

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr %i.y, align 8, !tbaa !59  ; 2 uses
  %.not40 = icmp eq i32 %i.av, -1
  br i1 %.not40, label %.thread50, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr @_ZN6icu_7815RegexStaticSets11gStaticSetsE, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 3024
  %4 = and i8 %i.aj, 127
  %5 = zext nneg i8 %4 to i64
  %i.ay = getelementptr inbounds nuw [200 x i8], ptr %i.ax, i64 %5
  %i.az = call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.ay, i32 noundef %i.av)
  %.not41 = icmp eq i8 %i.az, 0
  br i1 %.not41, label %.thread50, label %bb.q

.thread50:                                        ; preds = %bb.k, %bb.l, %bb.p, %bb.o, %bb.n, %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.029, i64 8
  br label %bb.g, !llvm.loop !101

bb.q:                                             ; preds = %bb.j, %bb.p, %bb.l, %bb.k, %bb.i
  %i.bb = load i32, ptr %.029, align 4, !tbaa !108
  %i.bc = call noundef signext i8 @_ZN6icu_7812RegexCompile14doParseActionsEi(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %i.bb)
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.029, i64 6
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !109 ; 2 uses
  %.not42 = icmp eq i8 %i.bf, 0
  br i1 %.not42, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load i32, ptr %i.e, align 8, !tbaa !104 ; 3 uses
  %i.bh = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.e, align 8, !tbaa !104
  %i.bi = icmp sgt i32 %i.bg, 98
  br i1 %i.bi, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !51
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.u, label %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit

bb.u:                                             ; preds = %bb.t
  store i32 66304, ptr %i.bj, align 4, !tbaa !51
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 2147483647
  br i1 %i.bn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !64
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 2147483647
  %i.br = trunc i64 %i.bm to i32
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !64
  %i.bt = trunc i64 %i.bp to i32
  %spec.select.i = select i1 %i.bq, i32 -1, i32 %i.bt
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink5.i = phi ptr [ %i.bo, %bb.v ], [ %i.bs, %bb.w ] ; 2 uses
  %.sink.i = phi i32 [ -1, %bb.v ], [ %spec.select.i, %bb.w ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink5.i, i64 4
  store i32 %.sink.i, ptr %i.bu, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %.sink5.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bv, i8 0, i64 32, i1 false)
  %i.bw = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bx, i8 0, i64 32, i1 false)
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !56
  %i.cb = load i64, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.cc = add nsw i64 %i.cb, -15
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = call i32 @utext_extract_78(ptr noundef %i.ca, i64 noundef %i.cc, i64 noundef %i.cb, ptr noundef nonnull %i.ce, i32 noundef 16, ptr noundef nonnull %i.b) ; 0 uses
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !56
  %i.cj = load i64, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.ck = add nsw i64 %i.cj, 15
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = call i32 @utext_extract_78(ptr noundef %i.ci, i64 noundef %i.cj, i64 noundef %i.ck, ptr noundef nonnull %i.cm, i32 noundef 16, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %.pre = load i32, ptr %i.e, align 8, !tbaa !104
  %i.co = add nsw i32 %.pre, -1
  br label %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit

_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit: ; preds = %bb.t, %bb.x
  %i.cp = phi i32 [ %i.bg, %bb.t ], [ %i.co, %bb.x ] ; 2 uses
  store i32 %i.cp, ptr %i.e, align 8, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit, %bb.s
  %i.cq = phi i32 [ %i.cp, %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit ], [ %i.bh, %bb.s ]
  %i.cr = zext i8 %i.bf to i16
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.cs
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !55
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %.029, i64 7
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !110
  %.not43 = icmp eq i8 %i.cv, 0
  br i1 %.not43, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN6icu_7812RegexCompile8nextCharERNS0_16RegexPatternCharE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.y)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %.029, i64 5
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !111 ; 2 uses
  %.not44 = icmp eq i8 %i.cx, -1
  br i1 %.not44, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = zext i8 %i.cx to i16
  br label %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit49

bb.ad:                                            ; preds = %bb.ab
  %i.cz = load i32, ptr %i.e, align 8, !tbaa !104 ; 4 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !55 ; 3 uses
  %i.dd = add nsw i32 %i.cz, -1
  store i32 %i.dd, ptr %i.e, align 8, !tbaa !104
  %i.de = icmp slt i32 %i.cz, 1
  br i1 %i.de, label %bb.ae, label %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit49

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !104
  %i.df = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !51
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %bb.af, label %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit49

bb.af:                                            ; preds = %bb.ae
  store i32 66310, ptr %i.df, align 4, !tbaa !51
  %i.di = load i64, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 2147483647
  br i1 %i.dj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  store i32 0, ptr %i.dk, align 4, !tbaa !64
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dl = load i64, ptr %i.ae, align 8, !tbaa !33 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 2147483647
  %i.dn = trunc i64 %i.di to i32
  %i.do = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !64
  %i.dp = trunc i64 %i.dl to i32
  %spec.select.i46 = select i1 %i.dm, i32 -1, i32 %i.dp
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink5.i47 = phi ptr [ %i.dk, %bb.ag ], [ %i.do, %bb.ah ] ; 2 uses
  %.sink.i48 = phi i32 [ -1, %bb.ag ], [ %spec.select.i46, %bb.ah ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sink5.i47, i64 4
  store i32 %.sink.i48, ptr %i.dq, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink5.i47, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dr, i8 0, i64 32, i1 false)
  %i.ds = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dt, i8 0, i64 32, i1 false)
  %i.du = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !56
  %i.dx = load i64, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.dy = add nsw i64 %i.dx, -15
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = call i32 @utext_extract_78(ptr noundef %i.dw, i64 noundef %i.dy, i64 noundef %i.dx, ptr noundef nonnull %i.ea, i32 noundef 16, ptr noundef nonnull %i.a) ; 0 uses
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !56
  %i.ef = load i64, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.eg = add nsw i64 %i.ef, 15
  %i.eh = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = call i32 @utext_extract_78(ptr noundef %i.ee, i64 noundef %i.ef, i64 noundef %i.eg, ptr noundef nonnull %i.ei, i32 noundef 16, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit49

_ZN6icu_7812RegexCompile5errorE10UErrorCode.exit49: ; preds = %bb.ai, %bb.ae, %bb.ad, %bb.ac
  %.1 = phi i16 [ %i.cy, %bb.ac ], [ %i.dc, %bb.ad ], [ %i.dc, %bb.ae ], [ %i.dc, %bb.ai ]
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !51
  %i.em = icmp slt i32 %i.el, 1
  br i1 %i.em, label %bb.f, label %.loopexit, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.q
  %.pre60.pre = load ptr, ptr %i.c, align 8, !tbaa !27
  %.pre61.pre = load i32, ptr %.pre60.pre, align 4, !tbaa !51
  %i.en = icmp slt i32 %.pre61.pre, 1
end_hunk_0
