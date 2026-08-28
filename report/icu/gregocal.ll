Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/gregocal?download=true
inline.NumInlined: 86
inline.NumDeleted: 17
begin_hunk_0_@_ZNK6icu_7817GregorianCalendar14validateFieldsEv:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !27
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZNK6icu_7817GregorianCalendar11boundsCheckEi19UCalendarDateFields.exit, %bb.k, %.thread31, %bb.p, %bb.n, %bb.q
  %.4 = phi i8 [ 0, %bb.k ], [ 1, %bb.q ], [ 0, %bb.n ], [ 0, %.thread31 ], [ 0, %bb.p ], [ 0, %_ZNK6icu_7817GregorianCalendar11boundsCheckEi19UCalendarDateFields.exit ], [ 0, %bb.d ]
  ret i8 %.4
}

declare noundef signext i8 @_ZNK6icu_788Calendar5isSetE19UCalendarDateFields(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7817GregorianCalendar11boundsCheckEi19UCalendarDateFields(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %2)
  %.not = icmp slt i32 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %2)
  %i.i = icmp sle i32 %1, %i.h
  %i.j = zext i1 %i.i to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i8 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i8 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6icu_7817GregorianCalendar11getEpochDayER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788Calendar8completeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load double, ptr %i.a, align 8, !tbaa !39
  %i.c = fdiv double %i.b, 1.000000e+03
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = add nsw i32 %i.g, %i.e
  %i.i = sdiv i32 %i.h, 1000
  %i.j = sitofp i32 %i.i to double
  %i.k = fadd double %i.c, %i.j
  %i.l = fdiv double %i.k, 8.640000e+04
  %i.m = tail call noundef double @uprv_floor_78(double noundef %i.l)
  ret double %i.m
}

declare void @_ZN6icu_788Calendar8completeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6icu_7817GregorianCalendar22computeJulianDayOfYearEaiRa(i8 noundef signext %0, i32 noundef %1, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = and i32 %1, 3
  %i.b = icmp eq i32 %i.a, 0
  %i.c = zext i1 %i.b to i8
  store i8 %i.c, ptr %2, align 1, !tbaa !35
  %i.d = add nsw i32 %1, -1                       ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = tail call noundef i32 @_ZN6icu_789ClockMath11floorDivideEii(i32 noundef %i.d, i32 noundef 4)
  %i.g = sitofp i32 %i.f to double
  %i.h = tail call double @llvm.fmuladd.f64(double %i.e, double 3.650000e+02, double %i.g)
  %i.i = fadd double %i.h, f0x413A444F00000000    ; 2 uses
  %.not = icmp eq i8 %0, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %2, align 1, !tbaa !35
  %.not12 = icmp eq i8 %i.j, 0
  br i1 %.not12, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = srem i32 %1, 100
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = srem i32 %1, 400
  %i.m = icmp eq i32 %i.l, 0
  %i.n = zext i1 %i.m to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.o = phi i8 [ 0, %bb.b ], [ 1, %bb.c ], [ %i.n, %bb.d ]
  store i8 %i.o, ptr %2, align 1, !tbaa !35
  %i.p = sext i32 %1 to i64
  %i.q = add nsw i64 %i.p, -1                     ; 2 uses
  %i.r = tail call noundef i64 @_ZN6icu_789ClockMath16floorDivideInt64Ell(i64 noundef %i.q, i64 noundef 400)
  %i.s = tail call noundef i64 @_ZN6icu_789ClockMath16floorDivideInt64Ell(i64 noundef %i.q, i64 noundef 100)
  %i.t = sub nsw i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.u, 2
  %i.w = sitofp i32 %i.v to double
  %i.x = fadd double %i.i, %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.0 = phi double [ %i.x, %bb.e ], [ %i.i, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6icu_7817GregorianCalendar17millisToJulianDayEd(double noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = fdiv double %0, 8.640000e+07
  %i.b = tail call noundef double @uprv_floor_78(double noundef %i.a)
  %i.c = fadd double %i.b, f0x41429EC600000000
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZN6icu_7817GregorianCalendar17julianDayToMillisEd(double noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fadd double %0, f0xC1429EC600000000
  %i.b = fmul double %i.a, 8.640000e+07
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7817GregorianCalendar14aggregateStampEii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(274) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @uprv_max_78(i32 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.d
}

declare i32 @uprv_max_78(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7817GregorianCalendar4rollENS_8Calendar11EDateFieldsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7817GregorianCalendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = icmp ne i32 %2, 0
  %i.c = load i32, ptr %3, align 4
  %i.d = icmp slt i32 %i.c, 1
  %or.cond147 = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond147, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 19, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23
  %i.h = icmp eq i32 %i.e, %i.g
  %i.i = and i32 %1, -2
  %switch = icmp eq i32 %i.i, 4
  %or.cond142 = and i1 %switch, %i.h
  br i1 %or.cond142, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.n = load ptr, ptr %0, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 464
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.r = load i32, ptr %3, align 4, !tbaa !28
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load double, ptr %i.t, align 8, !tbaa !39 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.y = load double, ptr %i.x, align 8, !tbaa !10 ; 3 uses
  %i.z = fcmp oge double %i.u, %i.y
  %.neg = select i1 %i.z, i32 -10, i32 0
  %i.aa = add i32 %.neg, %i.w                     ; 3 uses
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fneg double %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double 8.640000e+07, double %i.u) ; 4 uses
  %i.af = fcmp olt double %i.ae, %i.y
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = add nsw i32 %i.q, -10                   ; 2 uses
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double 8.640000e+07, double %i.ae)
  %i.aj = fcmp ult double %i.ai, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.2118 = phi i32 [ 0, %bb.b ], [ %i.ag, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %.1115 = phi i32 [ 0, %bb.b ], [ %i.aa, %bb.e ], [ %i.aa, %bb.d ] ; 3 uses
  %.1113 = phi double [ 0.000000e+00, %bb.b ], [ %i.ae, %bb.e ], [ %i.ae, %bb.d ] ; 3 uses
  %.2 = phi i1 [ true, %bb.b ], [ %i.aj, %bb.e ], [ true, %bb.d ] ; 2 uses
  switch i32 %1, label %bb.z [
    i32 3, label %bb.g
    i32 5, label %bb.t
    i32 4, label %bb.w
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ak = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 4 uses
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !27
  %i.al = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !27 ; 4 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 280
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.as = load i32, ptr %3, align 4, !tbaa !28
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.h, label %.critedge144

bb.h:                                             ; preds = %bb.g
  %i.au = icmp eq i32 %i.ar, 0
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = icmp sgt i32 %i.ak, 51
  br i1 %i.av, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %0, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 336
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = add nsw i32 %i.az, %i.an
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.bb = icmp eq i32 %i.ak, 1
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = add nsw i32 %i.al, -1
  %i.bd = load ptr, ptr %0, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 336
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef i32 %i.bf(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bh = sub nsw i32 %i.an, %i.bg
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.j
  %.0109 = phi i32 [ %i.ba, %bb.j ], [ %i.an, %bb.i ], [ %i.bh, %bb.l ], [ %i.an, %bb.k ]
  %i.bi = load i32, ptr %3, align 4, !tbaa !28
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %bb.n, label %.critedge144

bb.n:                                             ; preds = %bb.m
  %i.bk = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.ak, i32 noundef %2, ptr noundef nonnull %i.a)
  %.not139 = icmp eq i8 %i.bk, 0
  br i1 %.not139, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %3, align 4, !tbaa !28
  br label %.critedge144

bb.p:                                             ; preds = %bb.n
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !27  ; 2 uses
  %i.bm = add i32 %i.bl, -53
  %or.cond = icmp ult i32 %i.bm, -52
  br i1 %or.cond, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %0, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 336
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 3 uses
  %i.br = load i32, ptr %3, align 4, !tbaa !28
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.r, label %.critedge144

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !27
  %i.bv = call noundef i32 @_ZNK6icu_788Calendar17getFirstDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.bw = add i32 %i.bq, %i.bu
  %i.bx = add i32 %.0109, %i.bv
  %i.by = sub i32 %i.bw, %i.bx
  %i.bz = srem i32 %i.by, 7                       ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 0
  %i.cb = add nsw i32 %i.bz, 7
  %spec.select = select i1 %i.ca, i32 %i.cb, i32 %i.bz ; 2 uses
  %i.cc = sub nuw nsw i32 6, %spec.select
  %i.cd = call noundef zeroext i8 @_ZNK6icu_788Calendar25getMinimalDaysInFirstWeekEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.ce = zext i8 %i.cd to i32
  %.not141 = icmp samesign ult i32 %i.cc, %i.ce
  %i.cf = add nsw i32 %i.bq, -7
  %.0108 = select i1 %.not141, i32 %i.bq, i32 %i.cf ; 2 uses
  %i.cg = add nuw nsw i32 %spec.select, 1
  %i.ch = call noundef i32 @_ZN6icu_788Calendar10weekNumberEiii(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %.0108, i32 noundef %.0108, i32 noundef %i.cg) ; 2 uses
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !27
  %i.cj = add i32 %i.ch, -1
  %i.ck = add i32 %i.cj, %i.ci
  %i.cl = srem i32 %i.ck, %i.ch
  %i.cm = add nsw i32 %i.cl, 1                    ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.cn = phi i32 [ %i.cm, %bb.r ], [ %i.bl, %bb.p ]
  call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 3, i32 noundef %i.cn)
  call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 17, i32 noundef %i.al)
  br label %.critedge144

.critedge144:                                     ; preds = %bb.q, %bb.m, %bb.g, %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.critedge

bb.t:                                             ; preds = %bb.f
  br i1 %.2, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN6icu_788Calendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 5, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.co = sitofp i32 %.2118 to double
  %i.cp = fmul nnan double %i.co, 8.640000e+07    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !39
  %i.cs = fsub double %i.cr, %.1113
  %i.ct = sitofp i32 %2 to double
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double 8.640000e+07, double %i.cs)
  %i.cv = tail call double @uprv_fmod_78(double noundef %i.cu, double noundef %i.cp) ; 3 uses
  %i.cw = fcmp olt double %i.cv, 0.000000e+00
  %i.cx = fadd double %i.cp, %i.cv
  %.0104 = select i1 %i.cw, double %i.cx, double %i.cv
  %i.cy = fadd double %.1113, %.0104
  tail call void @_ZN6icu_788Calendar15setTimeInMillisEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.cy, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %.critedge

bb.w:                                             ; preds = %bb.f
  br i1 %.2, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN6icu_788Calendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 4, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !27
  %i.db = tail call noundef i32 @_ZNK6icu_788Calendar17getFirstDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.dc = sub nsw i32 %i.da, %i.db                ; 3 uses
  %i.dd = icmp slt i32 %i.dc, 0
  %i.de = add nsw i32 %i.dc, 7
  %spec.select145 = select i1 %i.dd, i32 %i.de, i32 %i.dc ; 2 uses
  %reass.sub = sub i32 %spec.select145, %.1115
  %i.df = add i32 %reass.sub, 1
  %i.dg = srem i32 %i.df, 7                       ; 3 uses
  %i.dh = icmp slt i32 %i.dg, 0
  %i.di = add nsw i32 %i.dg, 7
  %.0102 = select i1 %i.dh, i32 %i.di, i32 %i.dg  ; 2 uses
  %i.dj = sub nuw nsw i32 7, %.0102
  %i.dk = tail call noundef zeroext i8 @_ZNK6icu_788Calendar25getMinimalDaysInFirstWeekEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.dl = zext i8 %i.dk to i32
  %i.dm = icmp samesign ult i32 %i.dj, %i.dl
  %.pn = select i1 %i.dm, i32 8, i32 1
  %.0101 = sub nsw i32 %.pn, %.0102               ; 3 uses
  %i.dn = sub i32 %.2118, %.1115
  %i.do = add nsw i32 %i.dn, %spec.select145
  %i.dp = srem i32 %i.do, 7
  %.neg149 = add nsw i32 %.2118, 7
  %i.dq = add nsw i32 %i.dp, %.0101
  %i.dr = sub i32 %.neg149, %i.dq                 ; 2 uses
  %i.ds = mul nsw i32 %2, 7
  %i.dt = add nsw i32 %.1115, %i.ds
  %i.du = sub i32 %i.dt, %.0101
  %i.dv = srem i32 %i.du, %i.dr                   ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  %i.dx = select i1 %i.dw, i32 %i.dr, i32 0
  %.0 = add i32 %.0101, %i.dv
  %i.dy = add i32 %.0, %i.dx
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 1)
  %.1 = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %.2118)
  %i.dz = add nsw i32 %.1, -1
  %i.ea = sitofp i32 %i.dz to double
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double 8.640000e+07, double %.1113)
  tail call void @_ZN6icu_788Calendar15setTimeInMillisEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.eb, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %.critedge

bb.z:                                             ; preds = %bb.f
  tail call void @_ZN6icu_788Calendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %.critedge

.critedge:                                        ; preds = %.critedge144, %bb.u, %bb.v, %bb.x, %bb.y, %bb.z, %bb.c, %bb.a
  ret void
}

declare noundef i32 @_ZNK6icu_788Calendar17getFirstDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #2

declare noundef zeroext i8 @_ZNK6icu_788Calendar25getMinimalDaysInFirstWeekEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #2

declare void @_ZN6icu_788Calendar4rollE19UCalendarDateFieldsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare double @uprv_fmod_78(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7817GregorianCalendar16getActualMinimumENS_8Calendar11EDateFieldsE(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7817GregorianCalendar16getActualMinimumENS_8Calendar11EDateFieldsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7817GregorianCalendar16getActualMinimumE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1, ptr nofree nonnull readnone align 4 captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1)
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZNK6icu_7817GregorianCalendar14handleGetLimitE19UCalendarDateFieldsNS_8Calendar10ELimitTypeE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZL24kGregorianCalendarLimits, i64 %i.a
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7817GregorianCalendar16getActualMaximumE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(274) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %2, align 4, !tbaa !28
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(274) %0) ; 10 uses
  %.not38 = icmp eq ptr %i.f, null
  br i1 %.not38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %2, align 4, !tbaa !28
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6icu_788Calendar10setLenientEa(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i8 noundef signext 1)
  %i.g = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.h = tail call noundef double @_ZNK6icu_788Calendar15getTimeInMillisER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.i
  %.040 = phi i32 [ 140743, %bb.e ], [ %.1, %bb.i ] ; 2 uses
  %.03139 = phi i32 [ 1, %bb.e ], [ %.132, %bb.i ] ; 2 uses
  %i.i = add nuw nsw i32 %.040, %.03139
  %i.j = lshr i32 %i.i, 1                         ; 4 uses
  tail call void @_ZN6icu_788Calendar3setE19UCalendarDateFieldsi(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i32 noundef 1, i32 noundef %i.j)
  %i.k = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.l = icmp eq i32 %i.k, %i.j
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef i32 @_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %i.f, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.n = icmp eq i32 %i.m, %i.g
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6icu_788Calendar15setTimeInMillisEdR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %i.f, double noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.132 = phi i32 [ %.03139, %bb.h ], [ %i.j, %bb.g ] ; 3 uses
  %.1 = phi i32 [ %i.j, %bb.h ], [ %.040, %bb.g ] ; 2 uses
  %i.o = add nuw nsw i32 %.132, 1
  %i.p = icmp samesign ult i32 %i.o, %.1
  br i1 %i.p, label %bb.f, label %bb.j, !llvm.loop !40

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(256) %i.f) #8
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.t = tail call noundef i32 @_ZNK6icu_788Calendar16getActualMaximumE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.j, %bb.b, %bb.k
  %.134 = phi i32 [ %i.t, %bb.k ], [ 0, %bb.b ], [ %.132, %bb.j ], [ 0, %bb.d ]
  ret i32 %.134
}

declare void @_ZN6icu_788Calendar10setLenientEa(ptr noundef nonnull align 8 dereferenceable(256), i8 noundef signext) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_788Calendar16getActualMaximumE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7817GregorianCalendar21handleGetExtendedYearER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !28
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK6icu_788Calendar10newerFieldE19UCalendarDateFieldsS1_(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 19, i32 noundef 1)
  %i.d = tail call noundef i32 @_ZNK6icu_788Calendar10newerFieldE19UCalendarDateFieldsS1_(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.c, i32 noundef 17)
  switch i32 %i.d, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit [
    i32 19, label %bb.c
    i32 1, label %bb.e
    i32 17, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = icmp sgt i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZNK6icu_788Calendar11internalGetE19UCalendarDateFieldsi.exit
end_hunk_0
