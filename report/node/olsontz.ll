inline.NumInlined: 125
inline.NumDeleted: 35
begin_hunk_0_@_ZNK6icu_7813OlsonTimeZone12hasSameRulesERKNS_8TimeZoneE:bb.a
  %i.aw = shl nsw i32 %i.av, 3
  %i.ax = tail call fastcc noundef signext i8 @_ZL10arrayEqualPKvS0_i(ptr noundef %i.as, ptr noundef %i.au, i32 noundef %i.aw)
  %.not34 = icmp eq i8 %i.ax, 0
  br i1 %.not34, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = sext i16 %i.ak to i32
  %i.bd = shl nsw i32 %i.bc, 2
  %i.be = tail call fastcc noundef signext i8 @_ZL10arrayEqualPKvS0_i(ptr noundef %i.az, ptr noundef %i.bb, i32 noundef %i.bd)
  %.not35 = icmp eq i8 %i.be, 0
  br i1 %.not35, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = sext i16 %i.ao to i32
  %i.bk = shl nsw i32 %i.bj, 3
  %i.bl = tail call fastcc noundef signext i8 @_ZL10arrayEqualPKvS0_i(ptr noundef %i.bg, ptr noundef %i.bi, i32 noundef %i.bk)
  %.not36 = icmp eq i8 %i.bl, 0
  br i1 %.not36, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = sext i16 %i.ac to i32
  %i.br = shl nsw i32 %i.bq, 3
  %i.bs = tail call fastcc noundef signext i8 @_ZL10arrayEqualPKvS0_i(ptr noundef %i.bn, ptr noundef %i.bp, i32 noundef %i.br)
  %.not37 = icmp eq i8 %i.bs, 0
  br i1 %.not37, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.d, align 8
  %i.bu = load ptr, ptr %i.f, align 8
  %i.bv = add i16 %i.ak, %i.ag
  %i.bw = add i16 %i.bv, %i.ao
  %i.bx = sext i16 %i.bw to i32
  %i.by = tail call fastcc noundef signext i8 @_ZL10arrayEqualPKvS0_i(ptr noundef %i.bt, ptr noundef %i.bu, i32 noundef %i.bx)
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.c, %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %bb.l, %bb.k, %bb.j, %.thread38.thread, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.a
  %.1 = phi i8 [ 1, %bb.a ], [ 0, %.thread38.thread ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.by, %bb.q ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL10arrayEqualPKvS0_i(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond18 = xor i1 %i.c, %i.d
  br i1 %or.cond18, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %2 to i64
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %1, i64 %i.f)
  %i.g = icmp eq i32 %bcmp, 0
  %i.h = zext i1 %i.g to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i8 [ %i.h, %bb.d ], [ 1, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ]
  ret i8 %.0
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7813OlsonTimeZone20checkTransitionRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN6icu_7813umtx_initOnceIPNS_13OlsonTimeZoneEEEvRNS_9UInitOnceEPFvT_R10UErrorCodeES5_S7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i32, ptr %i.a acquire, align 8
  %.not12.i = icmp eq i32 %i.d, 2
  br i1 %.not12.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) %i.a) #16
  %.not13.i = icmp eq i8 %i.e, 0
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6icu_7813OlsonTimeZone19initTransitionRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.f = load i32, ptr %1, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.f, ptr %i.g, align 4
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) %i.a) #16
  br label %_ZN6icu_7813umtx_initOnceIPNS_13OlsonTimeZoneEEEvRNS_9UInitOnceEPFvT_R10UErrorCodeES5_S7_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZN6icu_7813umtx_initOnceIPNS_13OlsonTimeZoneEEEvRNS_9UInitOnceEPFvT_R10UErrorCodeES5_S7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.i, ptr %1, align 4
  br label %_ZN6icu_7813umtx_initOnceIPNS_13OlsonTimeZoneEEEvRNS_9UInitOnceEPFvT_R10UErrorCodeES5_S7_.exit

_ZN6icu_7813umtx_initOnceIPNS_13OlsonTimeZoneEEEvRNS_9UInitOnceEPFvT_R10UErrorCodeES5_S7_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813OlsonTimeZone19initTransitionRulesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = alloca double, align 8                   ; 7 uses
  %9 = alloca %"class.icu_78::TimeZoneTransition", align 8 ; 9 uses
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813OlsonTimeZone21deleteTransitionRulesEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.e) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr @.str.8, ptr %5, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 noundef signext 1, ptr noundef nonnull %5, i32 noundef -1) #16
  call void @_ZN6icu_78plERKNS_13UnicodeStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  %i.g = load ptr, ptr %5, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.g) #16, !srcloc !5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr @.str.9, ptr %8, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef signext 1, ptr noundef nonnull %8, i32 noundef -1) #16
  call void @_ZN6icu_78plERKNS_13UnicodeStringES2_(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #16
  %i.h = load ptr, ptr %8, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #16, !srcloc !5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 80) #16 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.p, align 8
  store i32 7, ptr %1, align 4
  call void @_ZN6icu_7813OlsonTimeZone21deleteTransitionRulesEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.q = mul nsw i32 %i.m, 1000
  %i.r = mul nsw i32 %i.k, 1000
  %i.s = icmp eq i32 %i.m, 0
  %. = select i1 %i.s, ptr %3, ptr %6
  call void @_ZN6icu_7819InitialTimeZoneRuleC1ERKNS_13UnicodeStringEii(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %., i32 noundef %i.r, i32 noundef %i.q) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.n, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2
  %i.y = add i16 %i.x, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = add i16 %i.y, %i.aa                     ; 5 uses
  %i.ac = zext i16 %i.ab to i64                   ; 3 uses
  %i.ad = icmp sgt i16 %i.ab, 0                   ; 2 uses
  br i1 %i.ad, label %bb.e, label %.critedge96

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  store i16 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %.073105 = phi i16 [ 0, %bb.e ], [ %i.aj, %bb.g ]
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1
  %.not91 = icmp eq i8 %i.ai, 0
  br i1 %.not91, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = add i16 %.073105, 1                     ; 2 uses
  store i16 %i.aj, ptr %i.ae, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond.not, label %.critedge96, label %bb.f, !llvm.loop !14

bb.h:                                             ; preds = %bb.f
  %10 = trunc nuw nsw i64 %indvars.iv to i16
  %i.ak = icmp eq i16 %i.ab, %10
  br i1 %i.ak, label %.critedge96, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = shl nuw nsw i64 %i.ac, 3
  %i.am = call noalias ptr @uprv_malloc_78(i64 noundef %i.al) #17 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.j, label %.preheader104

.preheader104:                                    ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp sgt i16 %i.ap, 0
  br i1 %i.aq, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %.preheader104
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ay = zext nneg i16 %i.ab to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 7, ptr %1, align 4
  call void @_ZN6icu_7813OlsonTimeZone21deleteTransitionRulesEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph112, %._crit_edge.thread
  %i.az = phi i16 [ %i.ap, %.lr.ph112 ], [ %i.eh, %._crit_edge.thread ] ; 4 uses
  %indvars.iv118.a = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next119, %._crit_edge.thread ] ; 5 uses
  %i.ba = load i16, ptr %i.ae, align 8            ; 2 uses
  %i.bb = icmp slt i16 %i.ba, %i.ab
  br i1 %i.bb, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.k
  %i.bc = load ptr, ptr %i.af, align 8
  %i.bd = sext i16 %i.ba to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv.a = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next.a, %bb.t ] ; 5 uses
  %.070108 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.t ] ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %indvars.iv.a
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = icmp eq i64 %indvars.iv118.a, %i.bg
  br i1 %i.bh, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bi = load i16, ptr %i.u, align 8             ; 2 uses
  %i.bj = sext i16 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.a, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = trunc nsw i64 %indvars.iv.a to i32
  %i.bm = load ptr, ptr %i.at, align 8
  %i.bn = shl nsw i32 %i.bl, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw i64 %i.br, 32
  %i.bt = getelementptr i8, ptr %i.bp, i64 4
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = or disjoint i64 %i.bs, %i.bv
  br label %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit

bb.o:                                             ; preds = %bb.m
  %i.bx = trunc nsw i64 %indvars.iv.a to i16
  %i.by = sub i16 %i.bx, %i.bi                    ; 3 uses
  %i.bz = load i16, ptr %i.w, align 2             ; 2 uses
  %i.ca = icmp slt i16 %i.by, %i.bz
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.as, align 8
  %i.cc = sext i16 %i.by to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = sext i32 %i.ce to i64
  br label %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit

bb.q:                                             ; preds = %bb.o
  %i.cg = sub i16 %i.by, %i.bz
  %i.ch = load ptr, ptr %i.ar, align 8
  %i.ci = sext i16 %i.cg to i32
  %i.cj = shl nsw i32 %i.ci, 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 32
  %i.cp = getelementptr i8, ptr %i.cl, i64 4
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = zext i32 %i.cq to i64
  %i.cs = or disjoint i64 %i.co, %i.cr
  br label %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit

_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit: ; preds = %bb.n, %bb.p, %bb.q
  %.0.i.i = phi i64 [ %i.bw, %bb.n ], [ %i.cf, %bb.p ], [ %i.cs, %bb.q ]
  %i.ct = sitofp i64 %.0.i.i to double
  %i.cu = fmul nnan double %i.ct, 1.000000e+03    ; 2 uses
  %i.cv = load ptr, ptr %i.au, align 8
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit
  %i.cx = load double, ptr %i.av, align 8
  %i.cy = fcmp ugt double %i.cu, %i.cx
  br i1 %i.cy, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNK6icu_7813OlsonTimeZone14transitionTimeEs.exit
  %i.cz = add nsw i32 %.070108, 1
  %i.da = sext i32 %.070108 to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.da
  store double %i.cu, ptr %i.db, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.l
  %.2 = phi i32 [ %.070108, %bb.l ], [ %i.cz, %bb.s ], [ %.070108, %bb.r ] ; 3 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.dc = icmp slt i64 %indvars.iv.next.a, %i.ay
  br i1 %i.dc, label %bb.l, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.t
  %i.dd = icmp sgt i32 %.2, 0
  br i1 %i.dd, label %bb.u, label %._crit_edge.thread

bb.u:                                             ; preds = %._crit_edge
  %i.de = load ptr, ptr %i.i, align 8
  %.idx = shl nsw i64 %indvars.iv118.a, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = mul nsw i32 %i.dg, 1000
  %i.di = getelementptr i8, ptr %i.df, i64 4
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = mul nsw i32 %i.dj, 1000
  %i.dl = load ptr, ptr %i.aw, align 8
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  store i16 %i.az, ptr %i.ax, align 8
  %i.dn = sext i16 %i.az to i64
  %i.do = shl nsw i64 %i.dn, 3
  %i.dp = call noalias ptr @uprv_malloc_78(i64 noundef %i.do) #17 ; 2 uses
  store ptr %i.dp, ptr %i.aw, align 8
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.v
  %i.dr = load i16, ptr %i.ax, align 8
  %i.ds = icmp sgt i16 %i.dr, 0
  br i1 %i.ds, label %.lr.ph110, label %.loopexit

bb.w:                                             ; preds = %bb.v
  store i32 7, ptr %1, align 4
  call void @_ZN6icu_7813OlsonTimeZone21deleteTransitionRulesEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  call void @uprv_free_78(ptr noundef nonnull %i.am) #16
  br label %.critedge

.lr.ph110:                                        ; preds = %.preheader, %.lr.ph110
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %.lr.ph110 ], [ 0, %.preheader ] ; 2 uses
  %i.dt = load ptr, ptr %i.aw, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv115
  store ptr null, ptr %i.du, align 8
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.dv = load i16, ptr %i.ax, align 8
  %i.dw = sext i16 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next116, %i.dw
  br i1 %i.dx, label %.lr.ph110, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph110, %.preheader, %bb.u
  %i.dy = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 352) #16 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.ea = icmp eq i32 %i.dj, 0
  %.5 = select i1 %i.ea, ptr %3, ptr %6
  call void @_ZN6icu_7821TimeArrayTimeZoneRuleC1ERKNS_13UnicodeStringEiiPKdiNS_12DateTimeRule12TimeRuleTypeE(ptr noundef nonnull align 8 dereferenceable(352) %i.dy, ptr noundef nonnull align 8 dereferenceable(64) %.5, i32 noundef %i.dh, i32 noundef %i.dk, ptr noundef nonnull %i.am, i32 noundef %.2, i32 noundef 2) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %i.eb = load ptr, ptr %i.aw, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv118.a
  store ptr %i.dy, ptr %i.ec, align 8
  %i.ed = load ptr, ptr %i.aw, align 8
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv118.a
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.z, label %._crit_edge120

._crit_edge120:                                   ; preds = %bb.y
  %.pre = load i16, ptr %i.ao, align 8
end_hunk_0
