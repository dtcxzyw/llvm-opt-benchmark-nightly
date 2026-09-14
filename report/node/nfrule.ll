Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/nfrule?download=true
inline.NumInlined: 386
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_786NFRule12setBaseValueElR10UErrorCode:bb.a
  store i64 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 10, ptr %i.a, align 8
  %i.b = icmp sgt i64 %1, 0
  br i1 %i.b, label %_ZNK6icu_786NFRule16expectedExponentEv.exit, label %bb.e

_ZNK6icu_786NFRule16expectedExponentEv.exit:      ; preds = %bb.a
  %i.c = uitofp nneg i64 %1 to double
  %i.d = tail call double @uprv_log_78(double noundef %i.c) #8
  %i.e = load i32, ptr %i.a, align 8
  %i.f = sitofp i32 %i.e to double
  %i.g = tail call double @uprv_log_78(double noundef %i.f) #8
  %i.h = fdiv double %i.d, %i.g
  %i.i = fptosi double %i.h to i16                ; 2 uses
  %i.j = load i32, ptr %i.a, align 8
  %i.k = add i16 %i.i, 1                          ; 2 uses
  %i.l = tail call noundef i64 @_ZN6icu_7810util64_powEjt(i32 noundef %i.j, i16 noundef zeroext %i.k) #8
  %i.m = load i64, ptr %0, align 8
  %.not.i = icmp sgt i64 %i.l, %i.m
  %spec.select.i = select i1 %.not.i, i16 %i.i, i16 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i16 %spec.select.i, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_786NFRule16expectedExponentEv.exit
  %i.q = load i32, ptr %i.a, align 8
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i32 noundef %i.q, i16 noundef signext %spec.select.i, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6icu_786NFRule16expectedExponentEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not4 = icmp eq ptr %i.v, null
  br i1 %.not4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.a, align 8
  %i.x = load i16, ptr %i.n, align 4
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 noundef %i.w, i16 noundef signext %i.x, ptr noundef nonnull align 4 dereferenceable(4) %2) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 0, ptr %i.ab, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i16 @_ZNK6icu_786NFRule16expectedExponentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8                ; 2 uses
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = uitofp nneg i64 %i.d to double
  %i.g = tail call double @uprv_log_78(double noundef %i.f) #8
  %i.h = load i32, ptr %i.a, align 8
  %i.i = sitofp i32 %i.h to double
  %i.j = tail call double @uprv_log_78(double noundef %i.i) #8
  %i.k = fdiv double %i.g, %i.j
  %i.l = fptosi double %i.k to i16                ; 2 uses
  %i.m = load i32, ptr %i.a, align 8
  %i.n = add i16 %i.l, 1                          ; 2 uses
  %i.o = tail call noundef i64 @_ZN6icu_7810util64_powEjt(i32 noundef %i.m, i16 noundef zeroext %i.n) #8
  %i.p = load i64, ptr %0, align 8
  %.not = icmp sgt i64 %i.o, %i.p
  %spec.select = select i1 %.not, i16 %i.l, i16 %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.05 = phi i16 [ %spec.select, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i16 %.05
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef align 8 %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = load ptr, ptr %1, align 8
  %i.j = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.h, ptr noundef %i.i, i32 noundef 0, i32 noundef %2) #8
  ret i8 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_786NFRule19extractSubstitutionEPKNS_9NFRuleSetEPKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.a = tail call noundef i32 @_ZNK6icu_786NFRule20indexOfAnyRulePrefixEv(ptr noundef nonnull align 8 dereferenceable(112) %0) ; 11 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.d = icmp slt i16 %.pre.i, 0
  %i.e = ashr i16 %.pre.i, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f       ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 0) ; 2 uses
  %i.j = sub nsw i32 %i.i, %spec.select.i
  %i.k = tail call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull @_ZN6icu_78L22gGreaterGreaterGreaterE, i32 noundef 0, i32 noundef 3, i32 noundef %spec.select.i, i32 noundef %i.j) #8
  %i.l = icmp eq i32 %i.k, %i.a
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.a, 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit35.thread

bb.d:                                             ; preds = %bb.b
  %i.n = load i16, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = load i32, ptr %i.g, align 4
  %i.s = select i1 %i.o, i32 %i.r, i32 %i.q       ; 3 uses
  %i.t = icmp ult i32 %i.a, %i.s
  br i1 %i.t, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.e:                                             ; preds = %bb.d
  %i.u = and i16 %i.n, 2
  %.not.i.i.i = icmp eq i16 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %.not.i.i.i, ptr %i.x, ptr %i.v
  %i.z = sext i32 %i.a to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.d, %bb.e
  %.0.i.i = phi i16 [ %i.ab, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %i.ac = add nuw nsw i32 %i.a, 1
  %i.ad = icmp slt i32 %i.a, -1
  %spec.select.i32 = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.s)
  %.0.i = select i1 %i.ad, i32 0, i32 %spec.select.i32 ; 2 uses
  %i.ae = sub nsw i32 %i.s, %.0.i
  %i.af = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i16 noundef zeroext %.0.i.i, i32 noundef %.0.i, i32 noundef %i.ae) #8 ; 7 uses
  %i.ag = icmp eq i16 %.0.i.i, 60
  %i.ah = icmp ne i32 %i.af, -1
  %or.cond = and i1 %i.ag, %i.ah
  br i1 %or.cond, label %bb.f, label %_ZNK6icu_7813UnicodeString6charAtEi.exit35.thread

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.ai = load i16, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %i.aj = icmp slt i16 %i.ai, 0
  %i.ak = ashr i16 %i.ai, 5
  %i.al = sext i16 %i.ak to i32
  %i.am = load i32, ptr %i.g, align 4
  %i.an = select i1 %i.aj, i32 %i.am, i32 %i.al   ; 2 uses
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = icmp slt i32 %i.af, %i.ao
  br i1 %i.ap, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aq = add nuw nsw i32 %i.af, 1                ; 3 uses
  %i.ar = icmp ult i32 %i.aq, %i.an
  br i1 %i.ar, label %_ZNK6icu_7813UnicodeString6charAtEi.exit35, label %_ZNK6icu_7813UnicodeString6charAtEi.exit35.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit35:       ; preds = %bb.g
  %i.as = and i16 %i.ai, 2
  %.not.i.i.i34 = icmp eq i16 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = select i1 %.not.i.i.i34, ptr %i.av, ptr %i.at
  %i.ax = sext i32 %i.aq to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2
  %.fr = freeze i16 %i.az
  %i.ba = icmp eq i16 %.fr, 60
  br i1 %i.ba, label %_ZNK6icu_7813UnicodeString6charAtEi.exit35.thread, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit35.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit35, %bb.g, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.c
  %.1 = phi i32 [ %i.m, %bb.c ], [ %i.af, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.af, %bb.g ], [ %i.aq, %_ZNK6icu_7813UnicodeString6charAtEi.exit35 ] ; 2 uses
  %i.bb = icmp eq i32 %.1, -1
  br i1 %i.bb, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit35, %bb.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit35.thread
  %.139 = phi i32 [ %.1, %_ZNK6icu_7813UnicodeString6charAtEi.exit35.thread ], [ %i.af, %bb.f ], [ %i.af, %_ZNK6icu_7813UnicodeString6charAtEi.exit35 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i16 2, ptr %i.bc, align 8
  %reass.sub = sub i32 %.139, %i.a
  %i.bd = add i32 %reass.sub, 1                   ; 2 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #8
  %i.be = load i16, ptr %i.bc, align 8            ; 2 uses
  %i.bf = icmp slt i16 %i.be, 0
  %i.bg = ashr i16 %i.be, 5
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = select i1 %i.bf, i32 %i.bj, i32 %i.bh
  %i.bl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef %i.a, i32 noundef %i.bd) #8 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef ptr @_ZN6icu_7814NFSubstitution16makeSubstitutionEiPKNS_6NFRuleES3_PKNS_9NFRuleSetEPKNS_21RuleBasedNumberFormatERKNS_13UnicodeStringER10UErrorCode(i32 noundef %i.a, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1, ptr noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #8
  %i.bp = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef %i.a, i32 noundef %i.bd, ptr noundef null, i32 noundef 0, i32 noundef 0) #8 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit35.thread, %bb.a, %.thread
  %.026 = phi ptr [ %i.bo, %.thread ], [ null, %bb.a ], [ null, %_ZNK6icu_7813UnicodeString6charAtEi.exit35.thread ]
  ret ptr %.026
}

declare void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) unnamed_addr #1

declare noundef ptr @_ZNK6icu_7821RuleBasedNumberFormat18createPluralFormatE11UPluralTypeRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_786NFRule20indexOfAnyRulePrefixEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 11 uses
  %i.d = load i16, ptr %i.b, align 8              ; 2 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = load i32, ptr %i.c, align 4
  %i.i = select i1 %i.e, i32 %i.h, i32 %i.g
  %i.j = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 60, i32 noundef 0, i32 noundef %i.i) #8 ; 3 uses
  %i.k = load i16, ptr %i.b, align 8              ; 2 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = load i32, ptr %i.c, align 4
  %i.p = select i1 %i.l, i32 %i.o, i32 %i.n
  %i.q = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 60, i32 noundef 0, i32 noundef %i.p) #8 ; 3 uses
  %.not12.1 = icmp eq i32 %i.q, -1
  %i.r = icmp eq i32 %i.j, -1
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.j)
  %spec.select.1 = select i1 %i.r, i32 %i.q, i32 %i.s
  %.1.1 = select i1 %.not12.1, i32 %i.j, i32 %spec.select.1 ; 3 uses
  %i.t = load i16, ptr %i.b, align 8              ; 2 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = load i32, ptr %i.c, align 4
  %i.y = select i1 %i.u, i32 %i.x, i32 %i.w
  %i.z = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 60, i32 noundef 0, i32 noundef %i.y) #8 ; 3 uses
  %.not12.2 = icmp eq i32 %i.z, -1
  %i.aa = icmp eq i32 %.1.1, -1
  %i.ab = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %.1.1)
  %spec.select.2 = select i1 %i.aa, i32 %i.z, i32 %i.ab
  %.1.2 = select i1 %.not12.2, i32 %.1.1, i32 %spec.select.2 ; 3 uses
  %i.ac = load i16, ptr %i.b, align 8             ; 2 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.c, align 4
  %i.ah = select i1 %i.ad, i32 %i.ag, i32 %i.af
  %i.ai = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 60, i32 noundef 0, i32 noundef %i.ah) #8 ; 3 uses
  %.not12.3 = icmp eq i32 %i.ai, -1
  %i.aj = icmp eq i32 %.1.2, -1
  %i.ak = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %.1.2)
  %spec.select.3 = select i1 %i.aj, i32 %i.ai, i32 %i.ak
  %.1.3 = select i1 %.not12.3, i32 %.1.2, i32 %spec.select.3 ; 3 uses
  %i.al = load i16, ptr %i.b, align 8             ; 2 uses
  %i.am = icmp slt i16 %i.al, 0
  %i.an = ashr i16 %i.al, 5
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.c, align 4
  %i.aq = select i1 %i.am, i32 %i.ap, i32 %i.ao
  %i.ar = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 62, i32 noundef 0, i32 noundef %i.aq) #8 ; 3 uses
  %.not12.4 = icmp eq i32 %i.ar, -1
  %i.as = icmp eq i32 %.1.3, -1
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %.1.3)
  %spec.select.4 = select i1 %i.as, i32 %i.ar, i32 %i.at
  %.1.4 = select i1 %.not12.4, i32 %.1.3, i32 %spec.select.4 ; 3 uses
  %i.au = load i16, ptr %i.b, align 8             ; 2 uses
  %i.av = icmp slt i16 %i.au, 0
  %i.aw = ashr i16 %i.au, 5
  %i.ax = sext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.c, align 4
  %i.az = select i1 %i.av, i32 %i.ay, i32 %i.ax
  %i.ba = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 62, i32 noundef 0, i32 noundef %i.az) #8 ; 3 uses
  %.not12.5 = icmp eq i32 %i.ba, -1
  %i.bb = icmp eq i32 %.1.4, -1
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %.1.4)
  %spec.select.5 = select i1 %i.bb, i32 %i.ba, i32 %i.bc
  %.1.5 = select i1 %.not12.5, i32 %.1.4, i32 %spec.select.5 ; 3 uses
  %i.bd = load i16, ptr %i.b, align 8             ; 2 uses
  %i.be = icmp slt i16 %i.bd, 0
  %i.bf = ashr i16 %i.bd, 5
  %i.bg = sext i16 %i.bf to i32
  %i.bh = load i32, ptr %i.c, align 4
  %i.bi = select i1 %i.be, i32 %i.bh, i32 %i.bg
  %i.bj = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 62, i32 noundef 0, i32 noundef %i.bi) #8 ; 3 uses
  %.not12.6 = icmp eq i32 %i.bj, -1
  %i.bk = icmp eq i32 %.1.5, -1
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %.1.5)
  %spec.select.6 = select i1 %i.bk, i32 %i.bj, i32 %i.bl
  %.1.6 = select i1 %.not12.6, i32 %.1.5, i32 %spec.select.6 ; 3 uses
  %i.bm = load i16, ptr %i.b, align 8             ; 2 uses
  %i.bn = icmp slt i16 %i.bm, 0
  %i.bo = ashr i16 %i.bm, 5
  %i.bp = sext i16 %i.bo to i32
  %i.bq = load i32, ptr %i.c, align 4
  %i.br = select i1 %i.bn, i32 %i.bq, i32 %i.bp
  %i.bs = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 62, i32 noundef 0, i32 noundef %i.br) #8 ; 3 uses
  %.not12.7 = icmp eq i32 %i.bs, -1
  %i.bt = icmp eq i32 %.1.6, -1
  %i.bu = tail call i32 @llvm.smin.i32(i32 %i.bs, i32 %.1.6)
  %spec.select.7 = select i1 %i.bt, i32 %i.bs, i32 %i.bu
  %.1.7 = select i1 %.not12.7, i32 %.1.6, i32 %spec.select.7 ; 3 uses
  %i.bv = load i16, ptr %i.b, align 8             ; 2 uses
  %i.bw = icmp slt i16 %i.bv, 0
  %i.bx = ashr i16 %i.bv, 5
  %i.by = sext i16 %i.bx to i32
  %i.bz = load i32, ptr %i.c, align 4
  %i.ca = select i1 %i.bw, i32 %i.bz, i32 %i.by
  %i.cb = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 61, i32 noundef 0, i32 noundef %i.ca) #8 ; 3 uses
  %.not12.8 = icmp eq i32 %i.cb, -1
  %i.cc = icmp eq i32 %.1.7, -1
  %i.cd = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %.1.7)
  %spec.select.8 = select i1 %i.cc, i32 %i.cb, i32 %i.cd
  %.1.8 = select i1 %.not12.8, i32 %.1.7, i32 %spec.select.8 ; 3 uses
  %i.ce = load i16, ptr %i.b, align 8             ; 2 uses
  %i.cf = icmp slt i16 %i.ce, 0
  %i.cg = ashr i16 %i.ce, 5
  %i.ch = sext i16 %i.cg to i32
  %i.ci = load i32, ptr %i.c, align 4
  %i.cj = select i1 %i.cf, i32 %i.ci, i32 %i.ch
  %i.ck = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 61, i32 noundef 0, i32 noundef %i.cj) #8 ; 3 uses
  %.not12.9 = icmp eq i32 %i.ck, -1
  %i.cl = icmp eq i32 %.1.8, -1
  %i.cm = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 %.1.8)
  %spec.select.9 = select i1 %i.cl, i32 %i.ck, i32 %i.cm
  %.1.9 = select i1 %.not12.9, i32 %.1.8, i32 %spec.select.9 ; 3 uses
  %i.cn = load i16, ptr %i.b, align 8             ; 2 uses
  %i.co = icmp slt i16 %i.cn, 0
  %i.cp = ashr i16 %i.cn, 5
  %i.cq = sext i16 %i.cp to i32
  %i.cr = load i32, ptr %i.c, align 4
  %i.cs = select i1 %i.co, i32 %i.cr, i32 %i.cq
  %i.ct = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i16 noundef zeroext 61, i32 noundef 0, i32 noundef %i.cs) #8 ; 3 uses
  %.not12.10 = icmp eq i32 %i.ct, -1
  %i.cu = icmp eq i32 %.1.9, -1
  %i.cv = tail call i32 @llvm.smin.i32(i32 %i.ct, i32 %.1.9)
  %spec.select.10 = select i1 %i.cu, i32 %i.ct, i32 %i.cv
  %.1.10 = select i1 %.not12.10, i32 %.1.9, i32 %spec.select.10
  ret i32 %.1.10
}

declare noundef ptr @_ZN6icu_7814NFSubstitution16makeSubstitutionEiPKNS_6NFRuleES3_PKNS_9NFRuleSetEPKNS_21RuleBasedNumberFormatERKNS_13UnicodeStringER10UErrorCode(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare double @uprv_log_78(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_786NFRuleeqERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i16, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i16, ptr %i.k, align 4
  %i.m = icmp eq i16 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
