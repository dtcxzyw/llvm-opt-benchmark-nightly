Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@mktime
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6ImPlot10GetLocTimeERK10ImPlotTimeP2tm(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @localtime_r(ptr noundef nonnull %0, ptr noundef %1) #32
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZN6ImPlot8MakeTimeEiiiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
_ZN6ImPlot8GetStyleEv.exit.i:
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 992 ; 3 uses
  %i.c = tail call i32 @llvm.smax.i32(i32 %0, i32 1900)
  %spec.store.select = add nsw i32 %i.c, -1900
  %i.d = sdiv i32 %6, 1000000
  %i.e = srem i32 %6, 1000000
  %i.f = add nsw i32 %i.d, %5
  store i32 %i.f, ptr %i.b, align 8, !tbaa !278
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 996
  store i32 %4, ptr %i.g, align 4, !tbaa !279
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  store i32 %3, ptr %i.h, align 8, !tbaa !280
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1004
  store i32 %2, ptr %i.i, align 4, !tbaa !281
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store i32 %1, ptr %i.j, align 8, !tbaa !282
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1012
  store i32 %spec.store.select, ptr %i.k, align 4, !tbaa !283
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.m = load i8, ptr %i.l, align 8, !tbaa !284, !range !263, !noundef !264
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i
  %i.o = tail call i64 @mktime(ptr noundef nonnull %i.b) #32
  br label %_ZN6ImPlotL6MkTimeEP2tm.exit

bb.b:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i
  %i.p = tail call i64 @timegm(ptr noundef nonnull %i.b) #32
  br label %_ZN6ImPlotL6MkTimeEP2tm.exit

_ZN6ImPlotL6MkTimeEP2tm.exit:                     ; preds = %bb.a, %bb.b
  %.sink.i = phi i64 [ %i.p, %bb.b ], [ %i.o, %bb.a ]
  %spec.select.i8.i = tail call i64 @llvm.smax.i64(i64 %.sink.i, i64 0)
  %.fca.0.insert.i.pn.i = insertvalue { i64, i32 } poison, i64 %spec.select.i8.i, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert.i.pn.i, i32 %i.e, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -2147481748, -2147483648) i32 @_ZN6ImPlot7GetYearERK10ImPlotTime(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 992 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN6ImPlot8GetStyleEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i

_ZN6ImPlot8GetStyleEv.exit.i:                     ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre.i.i, %bb.b ], [ %i.a, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.f = load i8, ptr %i.e, align 4, !tbaa !284, !range !263, !noundef !264
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i
  %i.h = tail call noundef ptr @localtime_r(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit

bb.d:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i
  %i.i = tail call noundef ptr @gmtime_r(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit

_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit:      ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1012
  %i.k = load i32, ptr %i.j, align 4, !tbaa !283
  %i.l = add nsw i32 %i.k, 1900
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6ImPlot8GetMonthERK10ImPlotTime(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 992 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN6ImPlot8GetStyleEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i

_ZN6ImPlot8GetStyleEv.exit.i:                     ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %.pre.i.i, %bb.b ], [ %i.a, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 768
  %i.f = load i8, ptr %i.e, align 4, !tbaa !284, !range !263, !noundef !264
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i
  %i.h = tail call noundef ptr @localtime_r(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit

bb.d:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i
  %i.i = tail call noundef ptr @gmtime_r(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit

_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit:      ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  %i.k = load i32, ptr %i.j, align 8, !tbaa !282
  ret i32 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZN6ImPlot7AddTimeERK10ImPlotTimeii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.ImPlotTime, align 8         ; 29 uses
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 992 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !286
  switch i32 %1, label %.loopexit [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %.preheader
    i32 7, label %.preheader54
  ]

.preheader54:                                     ; preds = %bb.a
  %i.c = tail call i32 @llvm.abs.i32(i32 %2, i1 false) ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader54
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN6ImPlotL10IsLeapYearEi.exit.thread39.us
  %.056.us = phi i32 [ %i.y, %_ZN6ImPlotL10IsLeapYearEi.exit.thread39.us ], [ 0, %.lr.ph ]
  %i.e = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 992 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.us, label %bb.b, label %_ZN6ImPlot8GetStyleEv.exit.i.i.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i.i.us = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i.i.us

_ZN6ImPlot8GetStyleEv.exit.i.i.us:                ; preds = %bb.b, %.lr.ph.split.us
  %i.h = phi ptr [ %.pre.i.i.i.us, %bb.b ], [ %i.e, %.lr.ph.split.us ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.j = load i8, ptr %i.i, align 4, !tbaa !284, !range !263, !noundef !264
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i.i.us
  %i.l = call noundef ptr @gmtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.f) #32 ; 0 uses
  br label %_ZN6ImPlot7GetYearERK10ImPlotTime.exit.us

bb.d:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i.i.us
  %i.m = call noundef ptr @localtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.f) #32 ; 0 uses
  br label %_ZN6ImPlot7GetYearERK10ImPlotTime.exit.us

_ZN6ImPlot7GetYearERK10ImPlotTime.exit.us:        ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1012
  %i.o = load i32, ptr %i.n, align 4, !tbaa !283
  %.fr48.us = freeze i32 %i.o                     ; 2 uses
  %i.p = and i32 %.fr48.us, 3
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZN6ImPlotL10IsLeapYearEi.exit.thread39.us

bb.e:                                             ; preds = %_ZN6ImPlot7GetYearERK10ImPlotTime.exit.us
  %i.r = add i32 %.fr48.us, 1900                  ; 2 uses
  %i.s = srem i32 %i.r, 100
  %.not.i.us = icmp ne i32 %i.s, 0
  %i.t = srem i32 %i.r, 400
  %i.u = icmp eq i32 %i.t, 0
  %or.cond.us = or i1 %.not.i.us, %i.u
  %spec.select52.us = select i1 %or.cond.us, i64 31622400, i64 31536000
  br label %_ZN6ImPlotL10IsLeapYearEi.exit.thread39.us

_ZN6ImPlotL10IsLeapYearEi.exit.thread39.us:       ; preds = %bb.e, %_ZN6ImPlot7GetYearERK10ImPlotTime.exit.us
  %i.v = phi i64 [ 31536000, %_ZN6ImPlot7GetYearERK10ImPlotTime.exit.us ], [ %spec.select52.us, %bb.e ]
  %i.w = load i64, ptr %3, align 8, !tbaa !288
  %i.x = add nsw i64 %i.w, %i.v
  store i64 %i.x, ptr %3, align 8, !tbaa !288
  %i.y = add nuw nsw i32 %.056.us, 1              ; 2 uses
  %exitcond69.not = icmp eq i32 %i.y, %i.c
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !524

.preheader:                                       ; preds = %bb.a
  %i.z = tail call i32 @llvm.abs.i32(i32 %2, i1 false) ; 2 uses
  %.not64 = icmp eq i32 %2, 0
  br i1 %.not64, label %.loopexit, label %.lr.ph58

.lr.ph58:                                         ; preds = %.preheader
  %i.aa = icmp sgt i32 %2, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1012 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1008 ; 2 uses
  br i1 %i.aa, label %.lr.ph58.split.us, label %.lr.ph58.split.split.us

.lr.ph58.split.us:                                ; preds = %.lr.ph58, %_ZN6ImPlotL14GetDaysInMonthEii.exit.us
  %.02457.us = phi i32 [ %i.be, %_ZN6ImPlotL14GetDaysInMonthEii.exit.us ], [ 0, %.lr.ph58 ]
  %i.ad = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.us, label %bb.f, label %_ZN6ImPlot8GetStyleEv.exit.i.us

bb.f:                                             ; preds = %.lr.ph58.split.us
  %i.ae = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i.us = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i.us

_ZN6ImPlot8GetStyleEv.exit.i.us:                  ; preds = %bb.f, %.lr.ph58.split.us
  %i.af = phi ptr [ %.pre.i.i.us, %bb.f ], [ %i.ad, %.lr.ph58.split.us ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 768
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !284, !range !263, !noundef !264
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i.us
  %i.aj = call noundef ptr @gmtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.b) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us

bb.h:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i.us
  %i.ak = call noundef ptr @localtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.b) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us

_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us:   ; preds = %bb.h, %bb.g
  %i.al = load i32, ptr %i.ab, align 4, !tbaa !283 ; 2 uses
  %i.am = add nsw i32 %i.al, 1900                 ; 2 uses
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !282 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr @_ZZN6ImPlotL14GetDaysInMonthEiiE4days, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = icmp eq i32 %i.an, 1
  %i.as = and i32 %i.al, 3
  %i.at = icmp eq i32 %i.as, 0
  %or.cond.i.us = and i1 %i.ar, %i.at
  br i1 %or.cond.i.us, label %bb.i, label %_ZN6ImPlotL14GetDaysInMonthEii.exit.us

bb.i:                                             ; preds = %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us
  %i.au = srem i32 %i.am, 100
  %.not.i.i28.us = icmp eq i32 %i.au, 0
  br i1 %.not.i.i28.us, label %bb.j, label %_ZN6ImPlotL14GetDaysInMonthEii.exit.us

bb.j:                                             ; preds = %bb.i
  %i.av = srem i32 %i.am, 400
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  br label %_ZN6ImPlotL14GetDaysInMonthEii.exit.us

_ZN6ImPlotL14GetDaysInMonthEii.exit.us:           ; preds = %bb.j, %bb.i, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us
  %i.ay = phi i32 [ 0, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us ], [ %i.ax, %bb.j ], [ 1, %bb.i ]
  %i.az = add nsw i32 %i.ay, %i.aq
  %i.ba = mul nsw i32 %i.az, 86400
  %i.bb = sext i32 %i.ba to i64
  %i.bc = load i64, ptr %3, align 8, !tbaa !288
  %i.bd = add nsw i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %3, align 8, !tbaa !288
  %i.be = add nuw nsw i32 %.02457.us, 1           ; 2 uses
  %exitcond72.not = icmp eq i32 %i.be, %i.z
  br i1 %exitcond72.not, label %.loopexit, label %.lr.ph58.split.us, !llvm.loop !525

.lr.ph58.split.split.us:                          ; preds = %.lr.ph58, %_ZN6ImPlotL14GetDaysInMonthEii.exit31.us
  %.02457.us59 = phi i32 [ %i.cj, %_ZN6ImPlotL14GetDaysInMonthEii.exit31.us ], [ 0, %.lr.ph58 ]
  %i.bf = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.us60 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.us60, label %bb.k, label %_ZN6ImPlot8GetStyleEv.exit.i.us62

bb.k:                                             ; preds = %.lr.ph58.split.split.us
  %i.bg = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i.us61 = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i.us62

_ZN6ImPlot8GetStyleEv.exit.i.us62:                ; preds = %bb.k, %.lr.ph58.split.split.us
  %i.bh = phi ptr [ %.pre.i.i.us61, %bb.k ], [ %i.bf, %.lr.ph58.split.split.us ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 768
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !284, !range !263, !noundef !264
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i.us62
  %i.bl = call noundef ptr @gmtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.b) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us63

bb.m:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i.us62
  %i.bm = call noundef ptr @localtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.b) #32 ; 0 uses
  br label %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us63

_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us63: ; preds = %bb.m, %bb.l
  %i.bn = load i32, ptr %i.ab, align 4, !tbaa !283
  %i.bo = add nsw i32 %i.bn, 1900
  %i.bp = load i32, ptr %i.ac, align 8, !tbaa !282 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0                    ; 2 uses
  %.neg27.us = sext i1 %i.bq to i32
  %i.br = add nsw i32 %i.bo, %.neg27.us           ; 3 uses
  %i.bs = add nsw i32 %i.bp, -1
  %spec.select.us = select i1 %i.bq, i32 11, i32 %i.bs ; 2 uses
  %i.bt = sext i32 %spec.select.us to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr @_ZZN6ImPlotL14GetDaysInMonthEiiE4days, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !29
  %i.bw = icmp eq i32 %spec.select.us, 1
  %i.bx = and i32 %i.br, 3
  %i.by = icmp eq i32 %i.bx, 0
  %or.cond.i29.us = and i1 %i.bw, %i.by
  br i1 %or.cond.i29.us, label %bb.n, label %_ZN6ImPlotL14GetDaysInMonthEii.exit31.us

bb.n:                                             ; preds = %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us63
  %i.bz = srem i32 %i.br, 100
  %.not.i.i30.us = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i30.us, label %bb.o, label %_ZN6ImPlotL14GetDaysInMonthEii.exit31.us

bb.o:                                             ; preds = %bb.n
  %i.ca = srem i32 %i.br, 400
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  br label %_ZN6ImPlotL14GetDaysInMonthEii.exit31.us

_ZN6ImPlotL14GetDaysInMonthEii.exit31.us:         ; preds = %bb.o, %bb.n, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us63
  %i.cd = phi i32 [ 0, %_ZN6ImPlotL7GetTimeERK10ImPlotTimeP2tm.exit.us63 ], [ %i.cc, %bb.o ], [ 1, %bb.n ]
  %i.ce = add nsw i32 %i.cd, %i.bv
  %i.cf = mul nsw i32 %i.ce, 86400
  %i.cg = sext i32 %i.cf to i64
  %i.ch = load i64, ptr %3, align 8, !tbaa !288
  %i.ci = sub nsw i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %3, align 8, !tbaa !288
  %i.cj = add nuw i32 %.02457.us59, 1             ; 2 uses
  %exitcond71.not = icmp eq i32 %i.cj, %i.z
  br i1 %exitcond71.not, label %.loopexit, label %.lr.ph58.split.split.us, !llvm.loop !525

bb.p:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !289
  %i.cm = add nsw i32 %i.cl, %2
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !289
  br label %.loopexit

bb.q:                                             ; preds = %bb.a
  %i.cn = mul nsw i32 %2, 1000
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !289
  %i.cq = add nsw i32 %i.cp, %i.cn
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !289
  br label %.loopexit

bb.r:                                             ; preds = %bb.a
  %i.cr = sext i32 %2 to i64
  %i.cs = load i64, ptr %3, align 8, !tbaa !288
  %i.ct = add nsw i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %3, align 8, !tbaa !288
  br label %.loopexit

bb.s:                                             ; preds = %bb.a
  %i.cu = mul nsw i32 %2, 60
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i64, ptr %3, align 8, !tbaa !288
  %i.cx = add nsw i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %3, align 8, !tbaa !288
  br label %.loopexit

bb.t:                                             ; preds = %bb.a
  %i.cy = mul nsw i32 %2, 3600
  %i.cz = sext i32 %i.cy to i64
  %i.da = load i64, ptr %3, align 8, !tbaa !288
  %i.db = add nsw i64 %i.da, %i.cz
  store i64 %i.db, ptr %3, align 8, !tbaa !288
  br label %.loopexit

bb.u:                                             ; preds = %bb.a
  %i.dc = mul nsw i32 %2, 86400
  %i.dd = sext i32 %i.dc to i64
  %i.de = load i64, ptr %3, align 8, !tbaa !288
  %i.df = add nsw i64 %i.de, %i.dd
  store i64 %i.df, ptr %3, align 8, !tbaa !288
  br label %.loopexit

.lr.ph.split.split:                               ; preds = %.lr.ph, %_ZN6ImPlotL10IsLeapYearEi.exit37.thread43
  %.056 = phi i32 [ %i.ea, %_ZN6ImPlotL10IsLeapYearEi.exit37.thread43 ], [ 0, %.lr.ph ]
  %i.dg = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 992 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i32, label %bb.v, label %_ZN6ImPlot8GetStyleEv.exit.i.i33

bb.v:                                             ; preds = %.lr.ph.split.split
  %i.di = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i.i34 = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i.i33

_ZN6ImPlot8GetStyleEv.exit.i.i33:                 ; preds = %bb.v, %.lr.ph.split.split
  %i.dj = phi ptr [ %.pre.i.i.i34, %bb.v ], [ %i.dg, %.lr.ph.split.split ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 768
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !284, !range !263, !noundef !264
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i.i33
  %i.dn = call noundef ptr @localtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.dh) #32 ; 0 uses
  br label %_ZN6ImPlot7GetYearERK10ImPlotTime.exit35

bb.x:                                             ; preds = %_ZN6ImPlot8GetStyleEv.exit.i.i33
  %i.do = call noundef ptr @gmtime_r(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.dh) #32 ; 0 uses
  br label %_ZN6ImPlot7GetYearERK10ImPlotTime.exit35

_ZN6ImPlot7GetYearERK10ImPlotTime.exit35:         ; preds = %bb.w, %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 1012
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !283
  %.fr = freeze i32 %i.dq
  %i.dr = add i32 %.fr, 1899                      ; 3 uses
  %i.ds = and i32 %i.dr, 3
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.y, label %_ZN6ImPlotL10IsLeapYearEi.exit37.thread43

bb.y:                                             ; preds = %_ZN6ImPlot7GetYearERK10ImPlotTime.exit35
  %i.du = srem i32 %i.dr, 100
  %.not.i36 = icmp ne i32 %i.du, 0
  %i.dv = srem i32 %i.dr, 400
  %i.dw = icmp eq i32 %i.dv, 0
  %or.cond51 = or i1 %.not.i36, %i.dw
  %spec.select53 = select i1 %or.cond51, i64 -31622400, i64 -31536000
  br label %_ZN6ImPlotL10IsLeapYearEi.exit37.thread43

_ZN6ImPlotL10IsLeapYearEi.exit37.thread43:        ; preds = %bb.y, %_ZN6ImPlot7GetYearERK10ImPlotTime.exit35
  %i.dx = phi i64 [ -31536000, %_ZN6ImPlot7GetYearERK10ImPlotTime.exit35 ], [ %spec.select53, %bb.y ]
  %i.dy = load i64, ptr %3, align 8, !tbaa !288
  %i.dz = add i64 %i.dy, %i.dx
  store i64 %i.dz, ptr %3, align 8, !tbaa !288
  %i.ea = add nuw i32 %.056, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ea, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !524

.loopexit:                                        ; preds = %_ZN6ImPlotL10IsLeapYearEi.exit37.thread43, %_ZN6ImPlotL10IsLeapYearEi.exit.thread39.us, %_ZN6ImPlotL14GetDaysInMonthEii.exit31.us, %_ZN6ImPlotL14GetDaysInMonthEii.exit.us, %.preheader54, %.preheader, %bb.a, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %i.eb = load i64, ptr %3, align 8, !tbaa !288
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !289 ; 2 uses
  %i.ee = sdiv i32 %i.ed, 1000000
  %i.ef = sext i32 %i.ee to i64
  %i.eg = add nsw i64 %i.eb, %i.ef
  %i.eh = srem i32 %i.ed, 1000000
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %i.eg, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %i.eh, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZN6ImPlot9FloorTimeERK10ImPlotTimei(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 992 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN6ImPlot8GetStyleEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.134) #32 ; 0 uses
  %.pre.i.i = load ptr, ptr @GImPlot, align 8, !tbaa !35
  br label %_ZN6ImPlot8GetStyleEv.exit.i

_ZN6ImPlot8GetStyleEv.exit.i:                     ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@_ZN10ImPlotPlotC2Ev:.preheader.preheader
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 2232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.eq, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.et, align 8, !tbaa !296
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2236
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2088
  store ptr null, ptr %i.ew, align 8, !tbaa !330
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2275
  store i8 0, ptr %i.ex, align 1, !tbaa !366
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2274
  store i8 0, ptr %i.ey, align 2, !tbaa !367
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2273
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %i.eu, i8 0, i64 33, i1 false)
  store i8 1, ptr %i.ez, align 1, !tbaa !388
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2324
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2394
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fg, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.ff, align 2, !tbaa !316
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2393
  store i8 0, ptr %i.fh, align 1, !tbaa !757
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 2392
  store i8 0, ptr %i.fi, align 8, !tbaa !444
  store <4 x i32> <i32 0, i32 0, i32 5, i32 5>, ptr %i.fc, align 8, !tbaa !29
  store i32 0, ptr %i.fd, align 8, !tbaa !41
  store i32 0, ptr %i.fe, align 4, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2400
  store i32 0, ptr %i.fb, align 8, !tbaa !437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.fj, i8 0, i64 44, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2540
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 389
  store i8 0, ptr %i.fo, align 1, !tbaa !331
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 765
  store i8 0, ptr %i.fp, align 1, !tbaa !331
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1141
  store <4 x i8> zeroinitializer, ptr %i.fq, align 1, !tbaa !262
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1517
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fk, i8 0, i64 80, i1 false)
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.fr, align 1, !tbaa !262
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1893
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.fs, align 1, !tbaa !262
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2269
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.ft, align 1, !tbaa !262
  store i32 0, ptr %i.fl, align 8, !tbaa !41
  store i32 0, ptr %i.fm, align 4, !tbaa !41
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 2448
  store i32 0, ptr %i.fu, align 8, !tbaa !418
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2452
  store i32 3, ptr %i.fv, align 4, !tbaa !419
  store <4 x i32> <i32 0, i32 0, i32 10, i32 0>, ptr %i.fn, align 4, !tbaa !29
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i32 -1, ptr %i.fw, align 8, !tbaa !329
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i8 1, ptr %i.fx, align 4, !tbaa !385
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2549
  store i64 0, ptr %i.fy, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN6ImPoolI13ImPlotSubplotE3AddEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !243  ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !495
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.b, 1                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !240  ; 4 uses
  %.not = icmp slt i32 %i.b, %i.g
  br i1 %.not, label %._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge, label %bb.c

._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre5.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !239
  br label %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %i.g, 2
  %i.i = add nsw i32 %i.h, %i.g
  br label %_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i

_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i: ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %i.i, %bb.d ], [ 8, %bb.c ]
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %i.j, i32 %i.e) ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.l, 336
  %i.n = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.m) #32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !239  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i
  %i.q = load i32, ptr %0, align 8, !tbaa !241
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 336
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr nonnull align 8 %i.p, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !239
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t) #32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI13ImPlotSubplotE14_grow_capacityEi.exit.i
  store ptr %i.n, ptr %i.o, align 8, !tbaa !239
  store i32 %i.k, ptr %i.f, align 4, !tbaa !240
  %.pre = load i32, ptr %i.a, align 8, !tbaa !243
  %.pre7 = add nsw i32 %.pre, 1
  br label %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit

_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit:      ; preds = %._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge, %bb.f
  %.pre-phi = phi i32 [ %i.e, %._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge ], [ %.pre7, %bb.f ]
  %.pre5 = phi ptr [ %.pre5.pre, %._ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit_crit_edge ], [ %i.n, %bb.f ]
  store i32 %i.e, ptr %0, align 8, !tbaa !241
  %.pre8 = sext i32 %i.b to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239  ; 2 uses
  %i.w = sext i32 %i.b to i64                     ; 2 uses
  %i.x = getelementptr inbounds [336 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit
  %.pre-phi9 = phi i64 [ %i.w, %bb.g ], [ %.pre8, %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit ] ; 2 uses
  %i.z = phi ptr [ %i.v, %bb.g ], [ %.pre5, %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit ]
  %storemerge = phi i32 [ %i.y, %bb.g ], [ %.pre-phi, %_ZN8ImVectorI13ImPlotSubplotE6resizeEi.exit ]
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !243
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds [336 x i8], ptr %i.z, i64 %.pre-phi9 ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 114
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %i.ah, i8 0, i64 66, i1 false)
  store i32 0, ptr %i.ae, align 8, !tbaa !41
  store i32 0, ptr %i.af, align 4, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  store i32 0, ptr %i.ac, align 8, !tbaa !437
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ai, i8 0, i64 44, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 224
  store i32 0, ptr %i.ab, align 8, !tbaa !454
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 0, ptr %i.ak, align 8, !tbaa !456
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !322
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.am, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i8 0, i64 96, i1 false)
  store <4 x i32> <i32 48, i32 0, i32 1, i32 5>, ptr %i.ad, align 8, !tbaa !29
  store i8 0, ptr %i.ag, align 2, !tbaa !758
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.an, i8 0, i64 10, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !242
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !242
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !239
  %i.as = getelementptr inbounds [336 x i8], ptr %i.ar, i64 %.pre-phi9
  ret ptr %i.as
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #31

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn }
attributes #29 = { nofree nounwind }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #32 = { nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}
!llvm.errno.tbaa = !{!25}

!0 = distinct !{ptr @_ZN6ImPlot12GetAutoColorEi, null}
!1 = distinct !{ptr @_ZN6ImPlot12GetAutoColorEi, null, ptr @_ZN6ImPlot12GetAutoColorEi, null}
!2 = distinct !{!2, !171}
!3 = distinct !{!3, !171}
!4 = distinct !{!4, !171}
!5 = distinct !{!5, !171}
!6 = distinct !{!6, !171}
!7 = distinct !{!7, !171}
!8 = distinct !{null, null}
!9 = distinct !{null, null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{!13, !171}
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!20 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!21 = !{!"Simple C++ TBAA"}
!22 = !{!"omnipotent char", !21, i64 0}
!23 = !{!"int", !22, i64 0}
!24 = !{!"__libc_errno", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"float", !22, i64 0}
!27 = !{!"_ZTS14ImPlotInputMap", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !26, i64 44}
!28 = !{!27, !23, i64 32}
!29 = !{!23, !23, i64 0}
!30 = !{!27, !23, i64 36}
!31 = !{!27, !23, i64 40}
!32 = !{!27, !26, i64 44}
!33 = !{!"any pointer", !22, i64 0}
!34 = !{!"p1 _ZTS13ImPlotContext", !33, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"_ZTS6ImVec2", !26, i64 0, !26, i64 4}
!37 = !{!"bool", !22, i64 0}
!38 = !{!"_ZTS11ImPlotStyle", !26, i64 0, !23, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !26, i64 40, !36, i64 44, !36, i64 52, !36, i64 60, !36, i64 68, !36, i64 76, !36, i64 84, !36, i64 92, !36, i64 100, !36, i64 108, !36, i64 116, !36, i64 124, !36, i64 132, !36, i64 140, !36, i64 148, !36, i64 156, !36, i64 164, !22, i64 172, !23, i64 508, !37, i64 512, !37, i64 513, !37, i64 514}
!39 = !{!38, !26, i64 0}
!40 = !{!38, !23, i64 4}
!41 = !{!26, !26, i64 0}
!42 = !{!38, !26, i64 40}
!43 = !{!"p1 omnipotent char", !33, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTS6ImVec4", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!46 = !{!45, !26, i64 12}
!47 = !{!"p1 _ZTS12ImGuiContext", !33, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 _ZTS11ImFontAtlas", !33, i64 0}
!50 = !{!"p1 _ZTS6ImFont", !33, i64 0}
!51 = !{!"_ZTS16ImGuiMouseSource", !22, i64 0}
!52 = !{!"short", !22, i64 0}
!53 = !{!"p1 short", !33, i64 0}
!54 = !{!"_ZTS8ImVectorItE", !23, i64 0, !23, i64 4, !53, i64 8}
!55 = !{!"_ZTS7ImGuiIO", !23, i64 0, !23, i64 4, !36, i64 8, !36, i64 16, !26, i64 24, !26, i64 28, !43, i64 32, !43, i64 40, !33, i64 48, !49, i64 56, !50, i64 64, !37, i64 72, !37, i64 73, !37, i64 74, !37, i64 75, !37, i64 76, !37, i64 77, !37, i64 78, !37, i64 79, !37, i64 80, !37, i64 81, !37, i64 82, !37, i64 83, !37, i64 84, !37, i64 85, !37, i64 86, !37, i64 87, !37, i64 88, !37, i64 89, !26, i64 92, !26, i64 96, !26, i64 100, !26, i64 104, !26, i64 108, !26, i64 112, !37, i64 116, !37, i64 117, !37, i64 118, !37, i64 119, !37, i64 120, !37, i64 121, !37, i64 122, !37, i64 123, !37, i64 124, !37, i64 125, !37, i64 126, !43, i64 128, !43, i64 136, !33, i64 144, !33, i64 152, !33, i64 160, !37, i64 168, !37, i64 169, !37, i64 170, !37, i64 171, !37, i64 172, !37, i64 173, !37, i64 174, !26, i64 176, !23, i64 180, !23, i64 184, !23, i64 188, !23, i64 192, !36, i64 196, !47, i64 208, !36, i64 216, !22, i64 224, !26, i64 232, !26, i64 236, !51, i64 240, !37, i64 244, !37, i64 245, !37, i64 246, !37, i64 247, !23, i64 248, !22, i64 252, !37, i64 2732, !36, i64 2736, !22, i64 2744, !22, i64 2784, !22, i64 2824, !22, i64 2829, !22, i64 2834, !22, i64 2844, !22, i64 2854, !22, i64 2864, !22, i64 2904, !22, i64 2909, !37, i64 2914, !37, i64 2915, !22, i64 2916, !22, i64 2936, !22, i64 2956, !26, i64 2976, !37, i64 2980, !37, i64 2981, !52, i64 2982, !54, i64 2984, !26, i64 3000, !33, i64 3008, !33, i64 3016, !33, i64 3024}
!56 = !{!"any p2 pointer", !33, i64 0}
!57 = !{!"p2 _ZTS13ImTextureData", !56, i64 0}
!58 = !{!"_ZTS8ImVectorIP13ImTextureDataE", !23, i64 0, !23, i64 4, !57, i64 8}
!59 = !{!"_ZTS15ImGuiPlatformIO", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !52, i64 56, !23, i64 60, !23, i64 64, !33, i64 72, !58, i64 80}
!60 = !{!"_ZTS8ImGuiDir", !22, i64 0}
!61 = !{!"_ZTS10ImGuiStyle", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !36, i64 20, !26, i64 28, !26, i64 32, !26, i64 36, !36, i64 40, !36, i64 48, !60, i64 56, !26, i64 60, !26, i64 64, !26, i64 68, !26, i64 72, !36, i64 76, !26, i64 84, !26, i64 88, !36, i64 92, !36, i64 100, !36, i64 108, !36, i64 116, !26, i64 124, !26, i64 128, !26, i64 132, !26, i64 136, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180, !36, i64 184, !23, i64 192, !26, i64 196, !26, i64 200, !60, i64 204, !36, i64 208, !36, i64 216, !26, i64 224, !36, i64 228, !36, i64 236, !36, i64 244, !36, i64 252, !26, i64 260, !37, i64 264, !37, i64 265, !37, i64 266, !26, i64 268, !26, i64 272, !22, i64 276, !26, i64 1204, !26, i64 1208, !26, i64 1212, !23, i64 1216, !23, i64 1220, !26, i64 1224, !26, i64 1228}
!62 = !{!"p2 _ZTS11ImFontAtlas", !56, i64 0}
!63 = !{!"_ZTS8ImVectorIP11ImFontAtlasE", !23, i64 0, !23, i64 4, !62, i64 8}
!64 = !{!"p1 _ZTS11ImFontBaked", !33, i64 0}
!65 = !{!"p1 _ZTS6ImVec4", !33, i64 0}
!66 = !{!"p1 _ZTS6ImVec2", !33, i64 0}
!67 = !{!"_ZTS8ImVectorI6ImVec2E", !23, i64 0, !23, i64 4, !66, i64 8}
!68 = !{!"p2 _ZTS10ImDrawList", !56, i64 0}
!69 = !{!"_ZTS8ImVectorIP10ImDrawListE", !23, i64 0, !23, i64 4, !68, i64 8}
!70 = !{!"_ZTS20ImDrawListSharedData", !36, i64 0, !65, i64 8, !49, i64 16, !50, i64 24, !26, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !26, i64 48, !23, i64 52, !45, i64 56, !67, i64 72, !69, i64 88, !47, i64 104, !22, i64 112, !26, i64 496, !22, i64 500}
!71 = !{!"double", !22, i64 0}
!72 = !{!"p1 _ZTS15ImGuiInputEvent", !33, i64 0}
!73 = !{!"_ZTS8ImVectorI15ImGuiInputEventE", !23, i64 0, !23, i64 4, !72, i64 8}
!74 = !{!"p2 _ZTS11ImGuiWindow", !56, i64 0}
!75 = !{!"_ZTS8ImVectorIP11ImGuiWindowE", !23, i64 0, !23, i64 4, !74, i64 8}
!76 = !{!"p1 _ZTS20ImGuiWindowStackData", !33, i64 0}
!77 = !{!"_ZTS8ImVectorI20ImGuiWindowStackDataE", !23, i64 0, !23, i64 4, !76, i64 8}
!78 = !{!"p1 _ZTS16ImGuiStoragePair", !33, i64 0}
!79 = !{!"_ZTS8ImVectorI16ImGuiStoragePairE", !23, i64 0, !23, i64 4, !78, i64 8}
!80 = !{!"_ZTS12ImGuiStorage", !79, i64 0}
!81 = !{!"p1 _ZTS11ImGuiWindow", !33, i64 0}
!82 = !{!"_ZTS16ImGuiInputSource", !22, i64 0}
!83 = !{!"_ZTS24ImGuiDeactivatedItemData", !23, i64 0, !23, i64 4, !37, i64 8, !37, i64 9}
!84 = !{!"_ZTS20ImGuiDataTypeStorage", !22, i64 0}
!85 = !{!"_ZTS10ImBitArrayILi155ELin512EE", !22, i64 0}
!86 = !{!"p1 _ZTS19ImGuiKeyRoutingData", !33, i64 0}
!87 = !{!"_ZTS8ImVectorI19ImGuiKeyRoutingDataE", !23, i64 0, !23, i64 4, !86, i64 8}
!88 = !{!"_ZTS20ImGuiKeyRoutingTable", !22, i64 0, !87, i64 312, !87, i64 328}
!89 = !{!"long long", !22, i64 0}
!90 = !{!"_ZTS17ImGuiNextItemData", !23, i64 0, !23, i64 4, !23, i64 8, !89, i64 16, !26, i64 24, !23, i64 28, !23, i64 32, !37, i64 36, !22, i64 37, !84, i64 38, !23, i64 48}
!91 = !{!"_ZTS6ImRect", !36, i64 0, !36, i64 8}
!92 = !{!"_ZTS17ImGuiLastItemData", !23, i64 0, !23, i64 4, !23, i64 8, !91, i64 12, !91, i64 28, !91, i64 44, !91, i64 60, !23, i64 76}
!93 = !{!"_ZTS19ImGuiNextWindowData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !23, i64 56, !23, i64 60, !37, i64 64, !91, i64 68, !33, i64 88, !33, i64 96, !26, i64 104, !36, i64 108, !23, i64 116}
!94 = !{!"p1 _ZTS13ImGuiColorMod", !33, i64 0}
!95 = !{!"_ZTS8ImVectorI13ImGuiColorModE", !23, i64 0, !23, i64 4, !94, i64 8}
!96 = !{!"p1 _ZTS13ImGuiStyleMod", !33, i64 0}
!97 = !{!"_ZTS8ImVectorI13ImGuiStyleModE", !23, i64 0, !23, i64 4, !96, i64 8}
!98 = !{!"p1 _ZTS15ImFontStackData", !33, i64 0}
!99 = !{!"_ZTS8ImVectorI15ImFontStackDataE", !23, i64 0, !23, i64 4, !98, i64 8}
!100 = !{!"p1 _ZTS19ImGuiFocusScopeData", !33, i64 0}
!101 = !{!"_ZTS8ImVectorI19ImGuiFocusScopeDataE", !23, i64 0, !23, i64 4, !100, i64 8}
!102 = !{!"p1 int", !33, i64 0}
!103 = !{!"_ZTS8ImVectorIiE", !23, i64 0, !23, i64 4, !102, i64 8}
!104 = !{!"p1 _ZTS14ImGuiGroupData", !33, i64 0}
!105 = !{!"_ZTS8ImVectorI14ImGuiGroupDataE", !23, i64 0, !23, i64 4, !104, i64 8}
!106 = !{!"p1 _ZTS14ImGuiPopupData", !33, i64 0}
!107 = !{!"_ZTS8ImVectorI14ImGuiPopupDataE", !23, i64 0, !23, i64 4, !106, i64 8}
!108 = !{!"p1 _ZTS22ImGuiTreeNodeStackData", !33, i64 0}
!109 = !{!"_ZTS8ImVectorI22ImGuiTreeNodeStackDataE", !23, i64 0, !23, i64 4, !108, i64 8}
!110 = !{!"p2 _ZTS14ImGuiViewportP", !56, i64 0}
!111 = !{!"_ZTS8ImVectorIP14ImGuiViewportPE", !23, i64 0, !23, i64 4, !110, i64 8}
!112 = !{!"_ZTS13ImGuiNavLayer", !22, i64 0}
!113 = !{!"_ZTS16ImGuiNavItemData", !81, i64 0, !23, i64 8, !23, i64 12, !91, i64 16, !23, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !89, i64 48}
!114 = !{!"_ZTS8ImGuiKey", !22, i64 0}
!115 = !{!"_ZTS12ImGuiPayload", !33, i64 0, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !22, i64 24, !37, i64 57, !37, i64 58}
!116 = !{!"_ZTS8ImVectorIhE", !23, i64 0, !23, i64 4, !43, i64 8}
!117 = !{!"p1 _ZTS20ImGuiListClipperData", !33, i64 0}
!118 = !{!"_ZTS8ImVectorI20ImGuiListClipperDataE", !23, i64 0, !23, i64 4, !117, i64 8}
!119 = !{!"p1 _ZTS10ImGuiTable", !33, i64 0}
!120 = !{!"p1 _ZTS18ImGuiTableTempData", !33, i64 0}
!121 = !{!"_ZTS8ImVectorI18ImGuiTableTempDataE", !23, i64 0, !23, i64 4, !120, i64 8}
!122 = !{!"_ZTS8ImVectorI10ImGuiTableE", !23, i64 0, !23, i64 4, !119, i64 8}
!123 = !{!"_ZTS6ImPoolI10ImGuiTableE", !122, i64 0, !80, i64 16, !23, i64 32, !23, i64 36}
!124 = !{!"p1 float", !33, i64 0}
!125 = !{!"_ZTS8ImVectorIfE", !23, i64 0, !23, i64 4, !124, i64 8}
!126 = !{!"p1 _ZTS13ImDrawChannel", !33, i64 0}
!127 = !{!"_ZTS8ImVectorI13ImDrawChannelE", !23, i64 0, !23, i64 4, !126, i64 8}
!128 = !{!"p1 _ZTS11ImGuiTabBar", !33, i64 0}
!129 = !{!"_ZTS8ImVectorI11ImGuiTabBarE", !23, i64 0, !23, i64 4, !128, i64 8}
!130 = !{!"_ZTS6ImPoolI11ImGuiTabBarE", !129, i64 0, !80, i64 16, !23, i64 32, !23, i64 36}
!131 = !{!"p1 _ZTS15ImGuiPtrOrIndex", !33, i64 0}
!132 = !{!"_ZTS8ImVectorI15ImGuiPtrOrIndexE", !23, i64 0, !23, i64 4, !131, i64 8}
!133 = !{!"p1 _ZTS20ImGuiShrinkWidthItem", !33, i64 0}
!134 = !{!"_ZTS8ImVectorI20ImGuiShrinkWidthItemE", !23, i64 0, !23, i64 4, !133, i64 8}
!135 = !{!"_ZTS19ImGuiBoxSelectState", !23, i64 0, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8, !23, i64 9, !36, i64 12, !36, i64 20, !36, i64 28, !81, i64 40, !37, i64 48, !91, i64 52, !91, i64 68, !91, i64 84}
!136 = !{!"p1 _ZTS24ImGuiMultiSelectTempData", !33, i64 0}
!137 = !{!"_ZTS8ImVectorI24ImGuiMultiSelectTempDataE", !23, i64 0, !23, i64 4, !136, i64 8}
!138 = !{!"p1 _ZTS21ImGuiMultiSelectState", !33, i64 0}
!139 = !{!"_ZTS8ImVectorI21ImGuiMultiSelectStateE", !23, i64 0, !23, i64 4, !138, i64 8}
!140 = !{!"_ZTS6ImPoolI21ImGuiMultiSelectStateE", !139, i64 0, !80, i64 16, !23, i64 32, !23, i64 36}
!141 = !{!"p1 _ZTSN5ImStb17STB_TexteditStateE", !33, i64 0}
!142 = !{!"_ZTS8ImVectorIcE", !23, i64 0, !23, i64 4, !43, i64 8}
!143 = !{!"_ZTS19ImGuiInputTextState", !47, i64 0, !141, i64 8, !23, i64 16, !23, i64 20, !23, i64 24, !43, i64 32, !142, i64 40, !142, i64 56, !142, i64 72, !23, i64 88, !36, i64 92, !26, i64 100, !37, i64 104, !37, i64 105, !37, i64 106, !37, i64 107, !23, i64 108, !23, i64 112}
!144 = !{!"_ZTS30ImGuiInputTextDeactivatedState", !23, i64 0, !142, i64 8}
end_hunk_1
