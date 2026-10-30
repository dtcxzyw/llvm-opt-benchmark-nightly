Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/tzrule?download=true
inline.NumInlined: 52
inline.NumDeleted: 15
begin_hunk_0_@_ZNK6icu_7818AnnualTimeZoneRuleeqERKNS_12TimeZoneRuleE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNKSt9type_infoneERKS_.exit.thread11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.m, 42
  br i1 %.not.i.i, label %_ZNKSt9type_infoneERKS_.exit.thread, label %_ZNKSt9type_infoneERKS_.exit

_ZNKSt9type_infoneERKS_.exit:                     ; preds = %bb.c
  %i.n = load i8, ptr %i.k, align 1, !tbaa !21
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.p) #17
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %_ZNKSt9type_infoneERKS_.exit.thread11, label %_ZNKSt9type_infoneERKS_.exit.thread

_ZNKSt9type_infoneERKS_.exit.thread11:            ; preds = %bb.b, %_ZNKSt9type_infoneERKS_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.v = tail call noundef zeroext i1 @_ZNK6icu_7812DateTimeRuleeqERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.s, ptr noundef nonnull align 8 dereferenceable(36) %i.u)
  br i1 %i.v, label %bb.d, label %_ZNKSt9type_infoneERKS_.exit.thread

bb.d:                                             ; preds = %_ZNKSt9type_infoneERKS_.exit.thread11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load i32, ptr %i.w, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !25
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt9type_infoneERKS_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = icmp eq i32 %i.ac, %i.ae
  br label %_ZNKSt9type_infoneERKS_.exit.thread

_ZNKSt9type_infoneERKS_.exit.thread:              ; preds = %bb.c, %_ZNKSt9type_infoneERKS_.exit.thread11, %bb.d, %bb.e, %_ZNKSt9type_infoneERKS_.exit, %bb.a
  %.0 = phi i1 [ false, %_ZNKSt9type_infoneERKS_.exit ], [ true, %bb.a ], [ false, %bb.d ], [ false, %_ZNKSt9type_infoneERKS_.exit.thread11 ], [ %i.af, %bb.e ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

declare noundef zeroext i1 @_ZNK6icu_7812DateTimeRuleeqERKS0_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_7818AnnualTimeZoneRuleneERKNS_12TimeZoneRuleE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.e = xor i1 %i.d, true
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6icu_7818AnnualTimeZoneRule7getRuleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7818AnnualTimeZoneRule12getStartYearEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7818AnnualTimeZoneRule10getEndYearEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7818AnnualTimeZoneRule14getStartInYearEiiiRd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp slt i32 %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp sgt i32 %1, %i.e
  %or.cond55 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond55, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = tail call noundef i32 @_ZNK6icu_7812DateTimeRule15getDateRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %i.h) ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !24   ; 3 uses
  switch i32 %i.i, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %i.j)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.m = tail call noundef i32 @_ZNK6icu_7812DateTimeRule17getRuleDayOfMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %i.l)
  %i.n = tail call noundef i64 @_ZN6icu_785Grego11fieldsToDayEiii(i32 noundef %1, i32 noundef %i.k, i32 noundef %i.m)
  %i.o = sitofp i64 %i.n to double
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZNK6icu_7812DateTimeRule18getRuleWeekInMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %i.j) ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.s = tail call noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %i.r) ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef i64 @_ZN6icu_785Grego11fieldsToDayEiii(i32 noundef %1, i32 noundef %i.s, i32 noundef 1)
  %i.u = sitofp i64 %i.t to double
  %i.v = mul i32 %i.p, 7
  %i.w = add i32 %i.v, -7
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fadd double %i.x, %i.u
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.aa = tail call noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %i.z)
  %i.ab = and i32 %1, 3
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %_ZN6icu_785Grego10isLeapYearEi.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ad = srem i32 %1, 100
  %.not.i.i = icmp ne i32 %i.ad, 0
  %i.ae = srem i32 %1, 400
  %.not.i = icmp eq i32 %i.ae, 0
  %or.cond.i = or i1 %.not.i.i, %.not.i
  br i1 %or.cond.i, label %_ZN6icu_785Grego11monthLengthEii.exit, label %_ZN6icu_785Grego10isLeapYearEi.exit.thread.i

_ZN6icu_785Grego10isLeapYearEi.exit.thread.i:     ; preds = %bb.g, %bb.f
  br label %_ZN6icu_785Grego11monthLengthEii.exit

_ZN6icu_785Grego11monthLengthEii.exit:            ; preds = %bb.g, %_ZN6icu_785Grego10isLeapYearEi.exit.thread.i
  %i.af = phi i32 [ 0, %_ZN6icu_785Grego10isLeapYearEi.exit.thread.i ], [ 12, %bb.g ]
  %i.ag = add nsw i32 %i.af, %i.aa
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr @_ZN6icu_785Grego12MONTH_LENGTHE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !21
  %i.ak = sext i8 %i.aj to i32
  %i.al = tail call noundef i64 @_ZN6icu_785Grego11fieldsToDayEiii(i32 noundef %1, i32 noundef %i.s, i32 noundef %i.ak)
  %i.am = sitofp i64 %i.al to double
  %i.an = mul i32 %i.p, 7
  %i.ao = add i32 %i.an, 7
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fadd double %i.ap, %i.am
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.ar = tail call noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %i.j) ; 2 uses
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.at = tail call noundef i32 @_ZNK6icu_7812DateTimeRule17getRuleDayOfMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %i.as) ; 3 uses
  %i.au = icmp eq i32 %i.i, 3                     ; 2 uses
  br i1 %i.au, label %bb.i, label %_ZN6icu_785Grego10isLeapYearEi.exit.thread58

bb.i:                                             ; preds = %bb.h
  %i.av = icmp eq i32 %i.ar, 1
  %i.aw = icmp eq i32 %i.at, 29
  %or.cond = and i1 %i.av, %i.aw
  br i1 %or.cond, label %bb.j, label %_ZN6icu_785Grego10isLeapYearEi.exit.thread58

bb.j:                                             ; preds = %bb.i
  %i.ax = and i32 %1, 3
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %_ZN6icu_785Grego10isLeapYearEi.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.az = srem i32 %1, 100
  %.not.i56 = icmp ne i32 %i.az, 0
  %i.ba = srem i32 %1, 400
  %.not = icmp eq i32 %i.ba, 0
  %or.cond60 = or i1 %.not.i56, %.not
  br i1 %or.cond60, label %_ZN6icu_785Grego10isLeapYearEi.exit.thread58, label %_ZN6icu_785Grego10isLeapYearEi.exit.thread

_ZN6icu_785Grego10isLeapYearEi.exit.thread:       ; preds = %bb.k, %bb.j
  br label %_ZN6icu_785Grego10isLeapYearEi.exit.thread58

_ZN6icu_785Grego10isLeapYearEi.exit.thread58:     ; preds = %bb.k, %_ZN6icu_785Grego10isLeapYearEi.exit.thread, %bb.i, %bb.h
  %.040 = phi i32 [ %i.at, %bb.i ], [ %i.at, %bb.h ], [ 28, %_ZN6icu_785Grego10isLeapYearEi.exit.thread ], [ 29, %bb.k ]
  %i.bb = tail call noundef i64 @_ZN6icu_785Grego11fieldsToDayEiii(i32 noundef %1, i32 noundef %i.ar, i32 noundef %.040)
  %i.bc = sitofp i64 %i.bb to double
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %_ZN6icu_785Grego11monthLengthEii.exit, %_ZN6icu_785Grego10isLeapYearEi.exit.thread58
  %.143 = phi double [ %i.bc, %_ZN6icu_785Grego10isLeapYearEi.exit.thread58 ], [ %i.y, %bb.e ], [ %i.aq, %_ZN6icu_785Grego11monthLengthEii.exit ] ; 2 uses
  %.2.a = phi i1 [ %i.au, %_ZN6icu_785Grego10isLeapYearEi.exit.thread58 ], [ false, %bb.e ], [ true, %_ZN6icu_785Grego11monthLengthEii.exit ] ; 2 uses
  %i.bd = fptosi double %.143 to i32
  %i.be = tail call noundef i32 @_ZN6icu_785Grego9dayOfWeekEi(i32 noundef %i.bd)
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.bg = tail call noundef i32 @_ZNK6icu_7812DateTimeRule16getRuleDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(36) %i.bf)
  %i.bh = sub nsw i32 %i.bg, %i.be                ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %i.bj = icmp slt i32 %i.bh, 0
  %.sink64 = select i1 %.2.a, i32 -7, i32 7
  %.sink = select i1 %.2.a, i1 %i.bi, i1 %i.bj
  %i.bk = select i1 %.sink, i32 %.sink64, i32 0
  %i.bl = add nsw i32 %i.bh, %i.bk
  %i.bm = sitofp i32 %i.bl to double
  %i.bn = fadd double %.143, %i.bm
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.244 = phi double [ %i.o, %bb.c ], [ %i.bn, %bb.l ]
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.bp = tail call noundef i32 @_ZNK6icu_7812DateTimeRule18getRuleMillisInDayEv(ptr noundef nonnull align 8 dereferenceable(36) %i.bo)
  %i.bq = sitofp i32 %i.bp to double
  %i.br = tail call double @llvm.fmuladd.f64(double %.244, double 8.640000e+07, double %i.bq)
  store double %i.br, ptr %4, align 8, !tbaa !29
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.bt = tail call noundef i32 @_ZNK6icu_7812DateTimeRule15getTimeRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %i.bs)
  %.not52 = icmp eq i32 %i.bt, 2
  br i1 %.not52, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = sitofp i32 %2 to double
  %i.bv = load double, ptr %4, align 8, !tbaa !29
  %i.bw = fsub double %i.bv, %i.bu
  store double %i.bw, ptr %4, align 8, !tbaa !29
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.by = tail call noundef i32 @_ZNK6icu_7812DateTimeRule15getTimeRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %i.bx)
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = sitofp i32 %3 to double
  %i.cb = load double, ptr %4, align 8, !tbaa !29
  %i.cc = fsub double %i.cb, %i.ca
  store double %i.cc, ptr %4, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.a
  %.045 = phi i8 [ 0, %bb.a ], [ 1, %bb.p ], [ 1, %bb.o ]
  ret i8 %.045
}

declare noundef i32 @_ZNK6icu_7812DateTimeRule15getDateRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef i64 @_ZN6icu_785Grego11fieldsToDayEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7812DateTimeRule17getRuleDayOfMonthEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7812DateTimeRule18getRuleWeekInMonthEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef i32 @_ZN6icu_785Grego9dayOfWeekEi(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7812DateTimeRule16getRuleDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7812DateTimeRule18getRuleMillisInDayEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

declare noundef i32 @_ZNK6icu_7812DateTimeRule15getTimeRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7818AnnualTimeZoneRule14isEquivalentToERKNS_12TimeZoneRuleE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNKSt9type_infoneERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8, !tbaa !9
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNKSt9type_infoeqERKS_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.m, 42
  br i1 %.not.i.i, label %_ZNKSt9type_infoneERKS_.exit.thread, label %_ZNKSt9type_infoneERKS_.exit

_ZNKSt9type_infoneERKS_.exit:                     ; preds = %bb.c
  %i.n = load i8, ptr %i.k, align 1, !tbaa !21
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.p) #17
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %_ZNKSt9type_infoeqERKS_.exit.thread.i, label %_ZNKSt9type_infoneERKS_.exit.thread

_ZNKSt9type_infoeqERKS_.exit.thread.i:            ; preds = %_ZNKSt9type_infoneERKS_.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i32, ptr %i.r, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !14
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit, label %_ZNKSt9type_infoneERKS_.exit.thread

_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.x = load i32, ptr %i.w, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.z = load i32, ptr %i.y, align 4, !tbaa !15
  %.not15 = icmp eq i32 %i.x, %i.z
  br i1 %.not15, label %bb.d, label %_ZNKSt9type_infoneERKS_.exit.thread

bb.d:                                             ; preds = %_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24
  %i.ae = tail call noundef zeroext i1 @_ZNK6icu_7812DateTimeRuleeqERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, ptr noundef nonnull align 8 dereferenceable(36) %i.ad)
  br i1 %i.ae, label %bb.e, label %_ZNKSt9type_infoneERKS_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !25
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZNKSt9type_infoneERKS_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = icmp eq i32 %i.al, %i.an
  %i.ap = zext i1 %i.ao to i8
  br label %_ZNKSt9type_infoneERKS_.exit.thread

_ZNKSt9type_infoneERKS_.exit.thread:              ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread.i, %bb.c, %bb.d, %bb.e, %bb.f, %_ZNKSt9type_infoneERKS_.exit, %_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit, %bb.a
  %.0 = phi i8 [ 0, %_ZNKSt9type_infoneERKS_.exit ], [ 1, %bb.a ], [ 0, %_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit ], [ 0, %bb.e ], [ 0, %bb.d ], [ %i.ap, %bb.f ], [ 0, %bb.c ], [ 0, %_ZNKSt9type_infoeqERKS_.exit.thread.i ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7818AnnualTimeZoneRule13getFirstStartEiiRd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = tail call noundef signext i8 @_ZNK6icu_7818AnnualTimeZoneRule14getStartInYearEiiiRd(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.b, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i8 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7818AnnualTimeZoneRule13getFinalStartEiiRd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26   ; 2 uses
  %i.c = icmp eq i32 %i.b, 2147483647
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef signext i8 @_ZNK6icu_7818AnnualTimeZoneRule14getStartInYearEiiiRd(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.b, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZNK6icu_7818AnnualTimeZoneRule12getNextStartEdiiaRd(ptr noundef nonnull align 8 dereferenceable(96) %0, double noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !31
  %i.c = call noundef i32 @_ZN6icu_785Grego10timeToYearEdR10UErrorCode(double noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef signext i8 %i.i(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.k = call noundef signext i8 @_ZNK6icu_7818AnnualTimeZoneRule14getStartInYearEiiiRd(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.c, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load double, ptr %i.b, align 8, !tbaa !29 ; 3 uses
  %i.m = fcmp olt double %i.l, %1
  br i1 %i.m, label %bb.f, label %bb.e

end_hunk_0
