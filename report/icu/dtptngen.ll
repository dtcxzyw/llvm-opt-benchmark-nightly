Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/dtptngen?download=true
inline.NumInlined: 765
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode:bb.a

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.p
  %.034 = phi i32 [ 2, %bb.o ], [ %..1, %bb.r ], [ 2, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.s
  %.135 = phi i32 [ %.034, %bb.s ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.y

bb.u:                                             ; preds = %bb.q, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.y, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.m, %bb.g ]
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %8) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.v ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %7) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.w ], [ %i.k, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.y:                                             ; preds = %bb.t, %bb.b
  %.236 = phi i32 [ 0, %bb.b ], [ %.135, %bb.t ]
  ret i32 %.236
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator9hackTimesERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 2, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3208 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.noexc49, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.t, %.noexc49 ] ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(3216) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0.i, ptr noundef nonnull %i.a)
          to label %.noexc unwind label %bb.e, !inline_history !98

.noexc:                                           ; preds = %bb.b
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.m = load i32, ptr %i.a, align 4, !tbaa !76
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0.i, i32 noundef %i.m)
          to label %.noexc49 unwind label %bb.e

.noexc49:                                         ; preds = %bb.c
  %i.n = load i32, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.f, align 8, !tbaa !97
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [64 x i8], ptr %i.g, i64 %i.p
  %i.r = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %3) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.s = load i32, ptr %i.a, align 4, !tbaa !76
  %i.t = add nsw i32 %i.s, %.0.i
  %i.u = load i32, ptr %i.f, align 8, !tbaa !97
  %i.v = icmp slt i32 %i.u, 50
  br i1 %i.v, label %bb.b, label %bb.d, !llvm.loop !4

bb.d:                                             ; preds = %.noexc, %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.w, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !76
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3208
  %i.z = load i32, ptr %i.y, align 8, !tbaa !97
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.f:                                             ; preds = %.lr.ph, %bb.t
  %i.ai = phi ptr [ %i.x, %.lr.ph ], [ %i.cn, %bb.t ]
  %.03083 = phi i8 [ 0, %.lr.ph ], [ %.4.ph, %bb.t ] ; 3 uses
  %storemerge82 = phi i32 [ 0, %.lr.ph ], [ %i.cm, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = sext i32 %storemerge82 to i64
  %i.al = getelementptr inbounds [64 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.al)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.am = load i16, ptr %i.ab, align 8, !tbaa !32 ; 4 uses
  %i.an = icmp slt i16 %i.am, 0
  %i.ao = ashr i16 %i.am, 5
  %i.ap = sext i16 %i.ao to i32
  %i.aq = load i32, ptr %i.ac, align 4
  %i.ar = select i1 %i.an, i32 %i.aq, i32 %i.ap   ; 5 uses
  %.not.i = icmp eq i32 %i.ar, 0                  ; 2 uses
  br i1 %.not.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit, label %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit

_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit: ; preds = %bb.g
  %i.as = and i16 %i.am, 2
  %.not.i.i.i.i = icmp eq i16 %i.as, 0
  %i.at = load ptr, ptr %i.ae, align 8
  %i.au = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ad ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !78
  %.not = icmp eq i16 %i.av, 39
  br i1 %.not, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %.not43 = icmp eq i8 %.03083, 0
  br i1 %.not43, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !31
  store i16 2, ptr %i.af, align 8, !tbaa !32
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !47
  invoke void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ax = load i16, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ay = icmp slt i16 %i.ax, 0
  %i.az = ashr i16 %i.ax, 5
  %i.ba = sext i16 %i.az to i32
  %i.bb = load i32, ptr %i.ag, align 4
  %i.bc = select i1 %i.ay, i32 %i.bb, i32 %i.ba
  %i.bd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.bc)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit unwind label %bb.l ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit:           ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.pre = load i32, ptr %i.b, align 4, !tbaa !76
  br label %bb.t

bb.k:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %i.bg = icmp sgt i32 %i.ar, 0
  br i1 %i.bg, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %bb.m
  %8 = load ptr, ptr %i.d, align 8, !tbaa !47
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %wide.trip.count.i = zext nneg i32 %i.ar to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.thread.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !78
  switch i16 %i.bi, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i [
    i16 92, label %.thread.i
    i16 58, label %.thread.i
    i16 45, label %.thread.i
    i16 44, label %.thread.i
    i16 39, label %.thread.i
    i16 34, label %.thread.i
    i16 32, label %.thread.i
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %9, i64 %indvars.iv.i ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !32 ; 3 uses
  %i.bm = icmp slt i16 %i.bl, 0
  %i.bn = ashr i16 %i.bl, 5
  %i.bo = sext i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = select i1 %i.bm, i32 %i.bq, i32 %i.bo
  %.not.i52 = icmp eq i32 %i.br, 0
  br i1 %.not.i52, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.bs = and i16 %i.bl, 2
  %.not.i.i.i39.i = icmp eq i16 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = select i1 %.not.i.i.i39.i, ptr %i.bv, ptr %i.bt
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !78
  %i.by = icmp eq i16 %i.bx, 46
  br i1 %i.by, label %.thread.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread

.thread.i:                                        ; preds = %bb.n, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, !llvm.loop !7

_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.n, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.bz = icmp ne i8 %.03083, 0
  br label %bb.o

_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit: ; preds = %.thread.i, %bb.g, %bb.m
  %.not74 = icmp eq i8 %.03083, 0
  br i1 %.not74, label %bb.o, label %.invoke

.invoke:                                          ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit
  %i.ca = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.ar)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit
  %i.cb = phi i1 [ %i.bz, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread ], [ false, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit ] ; 2 uses
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.o
  %i.cc = and i16 %i.am, 2
  %.not.i.i.i = icmp eq i16 %i.cc, 0
  %i.cd = load ptr, ptr %i.ae, align 8
  %i.ce = select i1 %.not.i.i.i, ptr %i.cd, ptr %i.ad
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !78 ; 2 uses
  switch i16 %i.cf, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 109, label %.invoke
    i16 115, label %bb.p
  ]

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.q, %bb.s
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.p:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  br i1 %i.cb, label %bb.q, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54

bb.q:                                             ; preds = %bb.p
  %i.cg = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.ar)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit58 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit58:         ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !46 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit58
  store i32 %i.ci, ptr %2, align 4, !tbaa !29
  br label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54

bb.s:                                             ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit58
  %i.ck = invoke noundef i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull readonly align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.o, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0.i.i65 = phi i16 [ %i.cf, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %bb.o ]
  br i1 %i.cb, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54, label %switch.early.test

switch.early.test:                                ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  switch i16 %.0.i.i65, label %bb.t [
    i16 122, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
    i16 118, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
    i16 90, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
    i16 86, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
  ]

_ZN6icu_7813UnicodeStringpLERKS0_.exit54:         ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.p, %bb.s, %bb.r
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.loopexit

bb.t:                                             ; preds = %.invoke, %_ZN6icu_7813UnicodeStringpLERKS0_.exit, %bb.h, %switch.early.test
  %i.cl = phi i32 [ %storemerge82, %.invoke ], [ %storemerge82, %switch.early.test ], [ %storemerge82, %bb.h ], [ %.pre, %_ZN6icu_7813UnicodeStringpLERKS0_.exit ]
  %.4.ph = phi i8 [ 1, %.invoke ], [ 0, %switch.early.test ], [ 0, %bb.h ], [ 1, %_ZN6icu_7813UnicodeStringpLERKS0_.exit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cm = add nsw i32 %i.cl, 1                    ; 3 uses
  store i32 %i.cm, ptr %i.b, align 4, !tbaa !76
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 3208
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !97
  %i.cq = icmp slt i32 %i.cm, %i.cp
  br i1 %i.cq, label %bb.f, label %.loopexit, !llvm.loop !164

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bf, %bb.l ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.loopexit.split-lp ], [ %i.be, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.v

.loopexit:                                        ; preds = %bb.t, %bb.d, %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.v:                                             ; preds = %bb.u, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.u ], [ %i.ah, %bb.e ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(3216) initializes((3208, 3212)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.c ]     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(3216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0, ptr noundef nonnull %i.a)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.i = load i32, ptr %i.a, align 4, !tbaa !76
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0, i32 noundef %i.i)
  %i.j = load i32, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.b, align 8, !tbaa !97
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [64 x i8], ptr %i.c, i64 %i.l
  %i.n = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %2) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.o = load i32, ptr %i.a, align 4, !tbaa !76
  %i.p = add nsw i32 %i.o, %.0
  %i.q = load i32, ptr %i.b, align 8, !tbaa !97
  %i.r = icmp slt i32 %i.q, 50
  br i1 %i.r, label %bb.b, label %.critedge, !llvm.loop !4

.critedge:                                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2, !tbaa !78
  %i.o = icmp eq i16 %i.n, 39
  %i.p = zext i1 %i.o to i8
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a, %bb.b
  %.0.i.i = phi i8 [ %i.p, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !76     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = and i16 %i.c, 1
  %.not.i = icmp eq i16 %i.d, 0
  %i.e = and i16 %i.c, 30
  %storemerge.i = select i1 %.not.i, i16 %i.e, i16 2
  store i16 %storemerge.i, ptr %i.b, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m       ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.q = and i16 %i.j, 2
  %.not.i.i.i = icmp eq i16 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.r
  %i.v = load i16, ptr %i.u, align 2, !tbaa !78
  %i.w = icmp eq i16 %i.v, 39
  br i1 %i.w, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.x = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i32 noundef 0, i32 noundef %i.p) ; 0 uses
  %i.y = add nsw i32 %i.a, 1
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.a, %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0 = phi i32 [ %i.y, %bb.b ], [ %i.a, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = icmp slt i32 %.0, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %.backedge
  %i.ac = phi i32 [ %i.bw, %.backedge ], [ %i.aa, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ]
  %.136 = phi i32 [ %.1.be, %.backedge ], [ %.0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ] ; 5 uses
  %i.ad = sext i32 %.136 to i64
  %i.ae = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.ad ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  %i.ah = icmp slt i16 %i.ag, 0
  %i.ai = ashr i16 %i.ag, 5
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = select i1 %i.ah, i32 %i.al, i32 %i.aj   ; 4 uses
  %.not31 = icmp eq i32 %i.am, 0
  br i1 %.not31, label %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit24

_ZNK6icu_7813UnicodeString6charAtEi.exit24:       ; preds = %.lr.ph
  %i.an = and i16 %i.ag, 2
  %.not.i.i.i23 = icmp eq i16 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %.not.i.i.i23, ptr %i.aq, ptr %i.ao
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !78
  %i.at = icmp eq i16 %i.as, 39
  br i1 %i.at, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit24
  %i.au = add nsw i32 %.136, 1                    ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.ac
  br i1 %i.av, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread

bb.d:                                             ; preds = %bb.c
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.aw ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !32 ; 3 uses
  %i.ba = icmp slt i16 %i.az, 0
  %i.bb = ashr i16 %i.az, 5
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = select i1 %i.ba, i32 %i.be, i32 %i.bc
  %.not32 = icmp eq i32 %i.bf, 0
  br i1 %.not32, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27

_ZNK6icu_7813UnicodeString6charAtEi.exit27:       ; preds = %bb.d
  %i.bg = and i16 %i.az, 2
  %.not.i.i.i26 = icmp eq i16 %i.bg, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %.not.i.i.i26, ptr %i.bj, ptr %i.bh
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !78
  %i.bm = icmp eq i16 %i.bl, 39
  br i1 %i.bm, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit27
  %i.bn = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.am) ; 0 uses
  %i.bo = add nsw i32 %.136, 2
  %i.bp = load i16, ptr %i.ay, align 8, !tbaa !32 ; 2 uses
  %i.bq = icmp slt i16 %i.bp, 0
  %i.br = ashr i16 %i.bp, 5
  %i.bs = sext i16 %i.br to i32
  %i.bt = load i32, ptr %i.bd, align 4
  %i.bu = select i1 %i.bq, i32 %i.bt, i32 %i.bs
  %i.bv = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef %i.bu) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread
  %.1.be = phi i32 [ %i.bo, %bb.e ], [ %i.ca, %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread ] ; 3 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.bx = icmp slt i32 %.1.be, %i.bw
  br i1 %i.bx, label %.lr.ph, label %.loopexit, !llvm.loop !165

_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread: ; preds = %bb.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit27, %bb.c
  %i.by = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.am) ; 0 uses
  br label %.loopexit

_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread: ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit24
  %i.bz = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.am) ; 0 uses
  %i.ca = add nsw i32 %.136, 1
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread
  %.134 = phi i32 [ %.136, %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread ], [ %.0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ %.1.be, %.backedge ]
  store i32 %.134, ptr %2, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3216) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, label %.thread48

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph:   ; preds = %bb.a
  %i.j = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i, ptr %i.m, ptr %i.k
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %indvars.iv.next, %.thread ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !78
  switch i16 %i.p, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 92, label %.thread
    i16 58, label %.thread
    i16 45, label %.thread
    i16 44, label %.thread
    i16 39, label %.thread
    i16 34, label %.thread
    i16 32, label %.thread
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !32   ; 3 uses
  %i.t = icmp slt i16 %i.s, 0
  %i.u = ashr i16 %i.s, 5
  %i.v = sext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = select i1 %i.t, i32 %i.x, i32 %i.v
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.thread48, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %i.z = and i16 %i.s, 2
  %.not.i.i.i39 = icmp eq i16 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %.not.i.i.i39, ptr %i.ac, ptr %i.aa
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !78
  %i.af = icmp eq i16 %i.ae, 46
  br i1 %i.af, label %.thread, label %.thread48

.thread:                                          ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread48, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, !llvm.loop !7

.thread48:                                        ; preds = %.thread, %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %bb.a
  %i.ag = phi i8 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ 1, %.thread ]
  ret i8 %i.ag
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr %4, align 4, !tbaa !29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef null, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare i32 @ures_getFunctionalEquivalent_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator23consumeShortTimePatternERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7824DateTimePatternGenerator9hackTimesERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #28
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #28, !inline_history !94
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #28, !inline_history !94
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

declare void @ures_getAllChildrenWithFallback_78(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSink13fillInMissingEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 22 uses
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr @_ZN6icu_78L17UDATPG_ItemFormatE, ptr %2, align 8, !tbaa !92
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext 1, ptr noundef nonnull align 8 %2, i32 noundef 14)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !92
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.a) #28, !srcloc !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109, !nonnull !110, !align !111 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load i16, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp ugt i16 %i.f, 31
  br i1 %i.g, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !92
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.i) #28, !srcloc !89
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc unwind label %bb.e     ; 0 uses

.noexc:                                           ; preds = %bb.d
  %i.k = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit_crit_edge unwind label %bb.e ; 0 uses

.noexc._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit_crit_edge: ; preds = %.noexc
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit

bb.e:                                             ; preds = %.noexc.15, %bb.t, %.noexc.14, %bb.s, %.noexc.13, %bb.r, %.noexc.12, %bb.q, %.noexc.11, %bb.p, %.noexc.10, %bb.o, %.noexc.9, %bb.n, %.noexc.8, %bb.m, %.noexc.7, %bb.l, %.noexc.6, %bb.k, %.noexc.5, %bb.j, %.noexc.4, %bb.i, %.noexc.3, %bb.h, %.noexc.2, %bb.g, %.noexc.1, %bb.f, %.noexc, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  br label %bb.u

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit: ; preds = %.noexc._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit_crit_edge, %bb.b
  %i.m = phi ptr [ %.pre, %.noexc._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit_crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.p = load i16, ptr %i.o, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE:bb.a
bb.w:                                             ; preds = %bb.v
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread

_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread: ; preds = %thread-pre-split, %.preheader.i, %.backedge.peel.i, %.backedge.i, %bb.w
  %.4 = phi ptr [ %i.dn, %bb.w ], [ %.02780, %.backedge.i ], [ %.02780, %.preheader.i ], [ %.02780, %.backedge.peel.i ], [ %.330.ph, %thread-pre-split ] ; 3 uses
  %i.dp = icmp ne ptr %.4, null
  %i.dq = icmp ne ptr %5, null
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.x, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread

bb.x:                                             ; preds = %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !106
  store ptr %i.dr, ptr %5, align 8, !tbaa !106
  br label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread

_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread: ; preds = %bb.d, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread, %bb.x, %bb.b
  %.039 = phi ptr [ null, %bb.b ], [ %.4, %bb.x ], [ %.4, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread ], [ null, %bb.d ]
  call void @_ZN6icu_7818PatternMapIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN6icu_7812DistanceInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret ptr %.039

bb.y:                                             ; preds = %bb.n, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.n ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN6icu_7812DistanceInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 0, ptr %i.c, align 4, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3208 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.noexc121, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.v, %.noexc121 ] ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(3216) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.e, !inline_history !98

.noexc:                                           ; preds = %bb.b
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.o = load i32, ptr %i.c, align 4, !tbaa !76
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i, i32 noundef %i.o)
          to label %.noexc121 unwind label %bb.e

.noexc121:                                        ; preds = %bb.c
  %i.p = load i32, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.h, align 8, !tbaa !97
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [64 x i8], ptr %i.i, i64 %i.r
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %6) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.u = load i32, ptr %i.c, align 4, !tbaa !76
  %i.v = add nsw i32 %i.u, %.0.i
  %i.w = load i32, ptr %i.h, align 8, !tbaa !97
  %i.x = icmp slt i32 %i.w, 50
  br i1 %i.x, label %bb.b, label %bb.d, !llvm.loop !4

bb.d:                                             ; preds = %.noexc121, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i32 0, ptr %i.d, align 4, !tbaa !76
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph154, label %._crit_edge

.lr.ph154:                                        ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ag = trunc i32 %4 to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = and i32 %5, 2048
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = and i32 %5, 4096
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = and i32 %5, 8192
  %i.an = icmp eq i32 %i.am, 0
  %.not144 = icmp eq ptr %3, null
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4576
  %i.aq = and i32 %4, 2
  %.not99 = icmp ne i32 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4440
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4444
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit126, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.f:                                             ; preds = %.lr.ph154, %_ZN6icu_7813UnicodeStringpLERKS0_.exit126
  %i.ax = phi ptr [ %i.y, %.lr.ph154 ], [ %i.gi, %_ZN6icu_7813UnicodeStringpLERKS0_.exit126 ]
  %storemerge153 = phi i32 [ 0, %.lr.ph154 ], [ %i.gh, %_ZN6icu_7813UnicodeStringpLERKS0_.exit126 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = sext i32 %storemerge153 to i64
  %i.ba = getelementptr inbounds [64 x i8], ptr %i.ay, i64 %i.az
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bb = load i16, ptr %i.ac, align 8, !tbaa !32 ; 5 uses
  %i.bc = icmp slt i16 %i.bb, 0
  %i.bd = ashr i16 %i.bb, 5
  %i.be = sext i16 %i.bd to i32
  %i.bf = load i32, ptr %i.ad, align 4
  %i.bg = select i1 %i.bc, i32 %i.bf, i32 %i.be   ; 14 uses
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.invoke, label %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit

_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit: ; preds = %bb.g
  %i.bh = and i16 %i.bb, 2
  %.not.i.i.i.i = icmp eq i16 %i.bh, 0
  %i.bi = load ptr, ptr %i.af, align 8
  %i.bj = select i1 %.not.i.i.i.i, ptr %i.bi, ptr %i.ae ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !78 ; 5 uses
  %.not = icmp eq i16 %i.bk, 39
  br i1 %.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !31
  store i16 2, ptr %i.au, align 8, !tbaa !32
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !47
  invoke void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %i.bl, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.d)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bm = load i16, ptr %i.au, align 8, !tbaa !32 ; 2 uses
  %i.bn = icmp slt i16 %i.bm, 0
  %i.bo = ashr i16 %i.bm, 5
  %i.bp = sext i16 %i.bo to i32
  %i.bq = load i32, ptr %i.av, align 4
  %i.br = select i1 %i.bn, i32 %i.bq, i32 %i.bp
  %i.bs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef 0, i32 noundef %i.br)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit unwind label %bb.k ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit:           ; preds = %bb.i
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.pre = load i32, ptr %i.d, align 4, !tbaa !76
  br label %_ZN6icu_7813UnicodeStringpLERKS0_.exit126

bb.j:                                             ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %i.bv = icmp sgt i32 %i.bg, 0
  br i1 %i.bv, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.invoke

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %bb.l
  %9 = load ptr, ptr %i.f, align 8, !tbaa !47
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %wide.trip.count.i = zext nneg i32 %i.bg to i64 ; 2 uses
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.thread.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !78
  switch i16 %i.bx, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i [
    i16 92, label %.thread.i
    i16 58, label %.thread.i
    i16 45, label %.thread.i
    i16 44, label %.thread.i
    i16 39, label %.thread.i
    i16 34, label %.thread.i
    i16 32, label %.thread.i
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %10, i64 %indvars.iv.i ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i16, ptr %i.bz, align 8, !tbaa !32 ; 3 uses
  %i.cb = icmp slt i16 %i.ca, 0
  %i.cc = ashr i16 %i.ca, 5
  %i.cd = sext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = select i1 %i.cb, i32 %i.cf, i32 %i.cd
  %.not.i124 = icmp eq i32 %i.cg, 0
  br i1 %.not.i124, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.ch = and i16 %i.ca, 2
  %.not.i.i.i39.i = icmp eq i16 %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = select i1 %.not.i.i.i39.i, ptr %i.ck, ptr %i.ci
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !78
  %i.cn = icmp eq i16 %i.cm, 46
  br i1 %i.cn, label %.thread.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i

.thread.i:                                        ; preds = %bb.m, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.invoke, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, !llvm.loop !7

_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i:     ; preds = %bb.m, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %.not3043.i.i.not = icmp eq i32 %i.bg, 1
  br i1 %.not3043.i.i.not, label %.critedge.outer.i.i.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i

.critedge.outer.i.i.preheader:                    ; preds = %bb.n, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i
  br label %.critedge.outer.i.i

bb.n:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %.critedge.outer.i.i.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i, !llvm.loop !5

_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i:   ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i, %bb.n
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.n ], [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv.i.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !78
  %.not.i.i = icmp eq i16 %i.bk, %i.cp
  br i1 %.not.i.i, label %bb.n, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.invoke

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.critedge.i.i
  %indvars.iv56.i.i = phi i64 [ %i.da, %.lr.ph.preheader.i.i ], [ %indvars.iv.next57.i.i, %.critedge.i.i ] ; 6 uses
  %.in.i.i = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %indvars.iv56.i.i
  %i.cq = load i16, ptr %.in.i.i, align 16, !tbaa !102
  %.not33.i.i = icmp eq i16 %i.cq, %i.bk
  br i1 %.not33.i.i, label %bb.o, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %indvars.iv.next57.i.i = add nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %i.cr = and i64 %indvars.iv.next57.i.i, 4294967295
  %exitcond59.i.i = icmp eq i64 %i.cr, 86
  br i1 %exitcond59.i.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.invoke, label %.lr.ph.i.i, !llvm.loop !6

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.cs = trunc nsw i64 %indvars.iv56.i.i to i32  ; 7 uses
  %i.ct = add nsw i32 %i.cs, 1                    ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.cu ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 16, !tbaa !102
  %.not34.i.i = icmp eq i16 %i.bk, %i.cw
  br i1 %.not34.i.i, label %bb.p, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 10
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !103
  %i.cz = sext i16 %i.cy to i32
  %.not35.i.i = icmp slt i32 %i.bg, %i.cz
  br i1 %.not35.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit, label %.critedge.outer.i.i, !llvm.loop !6

.critedge.outer.i.i:                              ; preds = %.critedge.outer.i.i.preheader, %bb.p
  %.024.ph.i.i = phi i32 [ %i.ct, %bb.p ], [ 0, %.critedge.outer.i.i.preheader ] ; 2 uses
  %.not3145.i.i = icmp eq i32 %.024.ph.i.i, 86
  br i1 %.not3145.i.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.invoke, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.outer.i.i
  %i.da = sext i32 %.024.ph.i.i to i64
  br label %.lr.ph.i.i

_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit: ; preds = %bb.p, %bb.o
  %i.db = icmp sgt i64 %indvars.iv56.i.i, -1
  br i1 %i.db, label %bb.q, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.invoke

bb.q:                                             ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit
  %i.dc = and i64 %indvars.iv56.i.i, 4294967295
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.dc ; 2 uses
  %i.de = and i32 %i.cs, 2147483646
  %i.df = icmp eq i32 %i.de, 64                   ; 2 uses
  %or.cond = and i1 %i.df, %i.ag
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dg = load i16, ptr %i.as, align 8, !tbaa !32 ; 2 uses
  %i.dh = icmp slt i16 %i.dg, 0
  %i.di = ashr i16 %i.dg, 5
  %i.dj = sext i16 %i.di to i32
  %i.dk = load i32, ptr %i.at, align 4
  %i.dl = select i1 %i.dh, i32 %i.dk, i32 %i.dj
  %i.dm = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i32 noundef 0, i32 noundef %i.dl)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit130:        ; preds = %bb.r
  %i.dn = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 94
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !32
  %i.dq = sext i8 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 110
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !32  ; 2 uses
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = icmp sgt i8 %i.ds, 0
  br i1 %i.du, label %.lr.ph.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit130, %.noexc132
  %.08.i = phi i32 [ %i.dw, %.noexc132 ], [ 0, %_ZN6icu_7813UnicodeStringpLERKS0_.exit130 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.dq, ptr %i.b, align 2, !tbaa !78
  %i.dv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc132:                                        ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dw = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %exitcond.not.i131 = icmp eq i32 %i.dw, %i.dt
  br i1 %exitcond.not.i131, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %.lr.ph.i, !llvm.loop !10

bb.s:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !104
  %i.dz = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = sext i32 %i.dy to i64                   ; 4 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !76 ; 2 uses
  %.not96 = icmp eq i32 %i.ed, 0
  br i1 %.not96, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 80
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.eb
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !32  ; 6 uses
  %i.eh = sext i8 %i.eg to i16                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.eb
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !32
  %i.el = sext i8 %i.ek to i32                    ; 2 uses
  %i.em = icmp eq i8 %i.eg, 69
  %i.en = call i32 @llvm.smax.i32(i32 %i.el, i32 3)
  %spec.store.select = select i1 %i.em, i32 %i.en, i32 %i.el ; 5 uses
  %i.eo = add nsw i32 %i.cs, -56
  %i.ep = icmp ult i32 %i.eo, 7                   ; 2 uses
  %or.cond112 = and i1 %i.aj, %i.ep
  %i.eq = icmp eq i64 %indvars.iv56.i.i, 63
  %or.cond114 = and i1 %i.al, %i.eq
  %or.cond155 = or i1 %or.cond112, %or.cond114
  %or.cond116 = and i1 %i.an, %i.df
  %or.cond156 = or i1 %or.cond155, %or.cond116    ; 2 uses
  %brmerge = or i1 %or.cond156, %.not144
  %.mux = select i1 %or.cond156, i32 %i.bg, i32 %spec.store.select
  br i1 %brmerge, label %bb.v, label %switch.early.test

switch.early.test:                                ; preds = %bb.t
  switch i8 %i.eg, label %bb.u [
    i8 101, label %bb.v
    i8 99, label %bb.v
  ]

bb.u:                                             ; preds = %switch.early.test
  %i.er = getelementptr inbounds i8, ptr %i.ao, i64 %i.eb
  %i.es = load i8, ptr %i.er, align 1, !tbaa !32
  %i.et = sext i8 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ev = load i16, ptr %i.eu, align 8, !tbaa !105
  %i.ew = icmp slt i16 %i.ev, 1                   ; 2 uses
  %i.ex = icmp sgt i32 %i.ed, 0                   ; 2 uses
  %i.ey = icmp ne i32 %spec.store.select, %i.et
  %or.cond11 = or i1 %i.ex, %i.ew
end_hunk_1
