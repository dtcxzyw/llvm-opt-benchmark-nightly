Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rbtz?download=true
inline.NumInlined: 146
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7817RuleBasedTimeZoneC2ERKS0_:bb.a
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !28
  invoke void @_ZN6icu_7817RuleBasedTimeZone8completeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.d
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.u, %bb.g ]
  call void @_ZN6icu_7813BasicTimeZoneD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #14
  resume { ptr, i32 } %.pn
}

declare void @_ZN6icu_7813BasicTimeZoneC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7817RuleBasedTimeZone9copyRulesEPNS_7UVectorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #14 ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull @uprv_deleteUObject_78, ptr noundef null, i32 noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit unwind label %bb.d

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !28
  %i.g = icmp slt i32 %.pre, 1
  br i1 %i.g, label %.preheader, label %.thread42

.preheader:                                       ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.h = icmp sgt i32 %i.d, 0
  br i1 %i.h, label %.lr.ph, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.e) #14
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.e:                                             ; preds = %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEED2Ev.exit
  %i.j = add nuw nsw i32 %.047, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, %i.d
  br i1 %exitcond.not, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26, label %.lr.ph, !llvm.loop !48

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.047 = phi i32 [ %i.j, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.k = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.047)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(80) %i.k)
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.p = icmp ne ptr %i.o, null
  %i.q = load i32, ptr %i.a, align 4
  %i.r = icmp sgt i32 %i.q, 0
  %or.cond.i24 = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond.i24, label %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 7, ptr %i.a, align 4, !tbaa !28
  br label %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.g, %bb.h
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEED2Ev.exit unwind label %bb.i

_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit
  %i.s = load i32, ptr %i.a, align 4, !tbaa !28
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.e, label %.thread42

bb.i:                                             ; preds = %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit, %.lr.ph, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #14, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.thread42:                                        ; preds = %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEED2Ev.exit, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #14, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26: ; preds = %bb.e, %bb.b, %.preheader, %.thread42
  %.341 = phi ptr [ null, %.thread42 ], [ null, %bb.b ], [ %i.e, %.preheader ], [ %i.e, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.i, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %bb.a, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26
  %.4 = phi ptr [ %.341, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26 ], [ null, %bb.a ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7817RuleBasedTimeZone8completeER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(105) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 11 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca double, align 8                   ; 7 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !28
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.cf

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !24
  %.not172 = icmp eq i8 %i.g, 0
  br i1 %.not172, label %bb.c, label %bb.cf

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 4 uses
  %.not173 = icmp eq ptr %i.i, null
  br i1 %.not173, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !31
  %.not174 = icmp eq i32 %i.k, 2
  br i1 %.not174, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 27, ptr %1, align 4, !tbaa !28
  br label %bb.cf

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not175 = icmp eq ptr %i.m, null
  br i1 %.not175, label %.thread346, label %bb.g

.thread:                                          ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not175253 = icmp eq ptr %i.o, null
  br i1 %.not175253, label %.thread472, label %bb.g

.thread472:                                       ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  br label %bb.bg

bb.g:                                             ; preds = %.thread, %bb.f
  %.ph = phi ptr [ %i.m, %bb.f ], [ %i.o, %.thread ]
  %.ph258 = phi ptr [ %i.l, %bb.f ], [ %i.n, %.thread ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.bf

bb.h:                                             ; preds = %bb.g
  %i.w = zext nneg i32 %i.u to i64                ; 2 uses
  %i.x = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.w) #15 ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %.preheader354

bb.i:                                             ; preds = %bb.h
  store i32 7, ptr %1, align 4, !tbaa !28
  br label %.loopexit356

.preheader354:                                    ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.w, i1 false), !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.u to i64
  %wide.trip.count438 = zext nneg i32 %i.u to i64
  br label %bb.j

bb.j:                                             ; preds = %.preheader354, %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206
  %.0115 = phi double [ %.5150468, %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206 ], [ f0xC384763B62073280, %.preheader354 ] ; 6 uses
  %.0 = phi ptr [ %.5144469, %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206 ], [ %i.s, %.preheader354 ] ; 12 uses
  %i.ag = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.k unwind label %bb.m       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.l unwind label %bb.m       ; 3 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !tbaa !12
  store i16 2, ptr %i.z, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8, !tbaa !12
  store i16 2, ptr %i.aa, align 8, !tbaa !33
  %i.ai = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %.0, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %.lr.ph392 unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph392:                                        ; preds = %bb.l, %bb.ae
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ae ], [ 0, %bb.l ] ; 3 uses
  %.0139390 = phi ptr [ %.1140, %bb.ae ], [ null, %bb.l ] ; 5 uses
  %.0145389 = phi double [ %.1146, %bb.ae ], [ f0x43846A3EDDF8CD80, %bb.l ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !52, !range !53, !noundef !54
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.ae, label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.n:                                             ; preds = %.lr.ph392
  %i.an = load ptr, ptr %.ph258, align 8, !tbaa !25
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i32 noundef %i.ao)
          to label %bb.o unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, double noundef %.0115, i32 noundef %i.ag, i32 noundef %i.ah, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %.not187 = icmp eq i8 %i.at, 0
  br i1 %.not187, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.aj, align 1, !tbaa !52
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.au = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.s unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.t unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  br i1 %i.ay, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = load i16, ptr %i.aa, align 8, !tbaa !33 ; 3 uses
  %i.ba = and i16 %i.az, 1
  %.not.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i, label %bb.v, label %.split

.split:                                           ; preds = %bb.u
  %i.bb = load i16, ptr %i.z, align 8, !tbaa !33
  %i.bc = trunc i16 %i.bb to i1
  br i1 %i.bc, label %bb.x, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bd = icmp slt i16 %i.az, 0
  %i.be = ashr i16 %i.az, 5
  %i.bf = sext i16 %i.be to i32
  %i.bg = load i32, ptr %i.ab, align 4
  %i.bh = select i1 %i.bd, i32 %i.bg, i32 %i.bf   ; 2 uses
  %i.bi = load i16, ptr %i.z, align 8, !tbaa !33  ; 4 uses
  %i.bj = icmp slt i16 %i.bi, 0
  %i.bk = ashr i16 %i.bi, 5
  %i.bl = sext i16 %i.bk to i32
  %i.bm = load i32, ptr %i.ac, align 4
  %i.bn = select i1 %i.bj, i32 %i.bm, i32 %i.bl
  %i.bo = and i16 %i.bi, 1
  %.not9.i = icmp eq i16 %i.bo, 0
  %i.bp = icmp eq i32 %i.bh, %i.bn
  %or.cond.i = and i1 %.not9.i, %i.bp
  br i1 %or.cond.i, label %bb.w, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bq = and i16 %i.bi, 2
  %.not.i.i.i = icmp eq i16 %i.bq, 0
  %i.br = load ptr, ptr %i.ae, align 8
  %i.bs = select i1 %.not.i.i.i, ptr %i.br, ptr %i.ad
  %i.bt = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.bs, i32 noundef %i.bh)
          to label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.w
  %.not = icmp eq i8 %i.bt, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %bb.x

bb.x:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.bu = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ap)
          to label %bb.y unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.bv = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.z unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.aa, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.bx = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ap)
          to label %bb.ab unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.by = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.ac unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.ae, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %bb.v, %.split, %bb.ac, %bb.z, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.ca = load double, ptr %i.a, align 8, !tbaa !35 ; 2 uses
  %i.cb = fcmp olt double %i.ca, %.0145389
  br i1 %i.cb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread
  br label %bb.ae

bb.ae:                                            ; preds = %bb.q, %bb.ad, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, %bb.t, %bb.ac, %.lr.ph392
  %.1146 = phi double [ %.0145389, %.lr.ph392 ], [ %.0145389, %bb.t ], [ %.0145389, %bb.ac ], [ %i.ca, %bb.ad ], [ %.0145389, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread ], [ %.0145389, %bb.q ] ; 6 uses
  %.1140 = phi ptr [ %.0139390, %.lr.ph392 ], [ %.0139390, %bb.t ], [ %.0139390, %bb.ac ], [ %i.ap, %bb.ad ], [ %.0139390, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread ], [ %.0139390, %bb.q ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph392, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.ae
  %i.cc = icmp eq ptr %.1140, null
  br i1 %i.cc, label %.lr.ph395, label %.thread262

bb.af:                                            ; preds = %.lr.ph395
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond439.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count438
  br i1 %exitcond439.not, label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread283, label %.lr.ph395, !llvm.loop !50

.lr.ph395:                                        ; preds = %._crit_edge, %bb.af
  %indvars.iv434 = phi i64 [ %indvars.iv.next435, %bb.af ], [ 0, %._crit_edge ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv434
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !52, !range !53, !noundef !54
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.af, label %.thread262

.thread262:                                       ; preds = %.lr.ph395, %._crit_edge
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %.not179 = icmp eq ptr %i.cg, null
  br i1 %.not179, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread262
  %i.ch = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i32 noundef 0)
          to label %bb.ag unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %.preheader.preheader
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(80) %i.ch, ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.ah unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.cl, label %.preheader.1, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.cn = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i32 noundef 0)
          to label %bb.aj unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef signext i8 %i.cq(ptr noundef nonnull align 8 dereferenceable(80) %i.cn, double noundef %.0115, i32 noundef %i.ag, i32 noundef %i.ah, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ak unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %.not186 = icmp eq i8 %i.cr, 0
  br i1 %.not186, label %.preheader.1, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cs = load double, ptr %i.a, align 8, !tbaa !35 ; 2 uses
  %i.ct = fcmp olt double %i.cs, %.1146
  br i1 %i.ct, label %bb.am, label %.preheader.1

bb.am:                                            ; preds = %bb.al
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.ak, %bb.am, %bb.al, %bb.ah
  %.4149 = phi double [ %.1146, %bb.ah ], [ %i.cs, %bb.am ], [ %.1146, %bb.al ], [ %.1146, %bb.ak ] ; 3 uses
  %.4143 = phi ptr [ %.1140, %bb.ah ], [ %i.cn, %bb.am ], [ %.1140, %bb.al ], [ %.1140, %bb.ak ] ; 2 uses
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.cv = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, i32 noundef 1)
          to label %bb.an unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.an:                                            ; preds = %.preheader.1
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(80) %i.cv, ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.ao unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  br i1 %i.cz, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.db = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.da, i32 noundef 1)
          to label %bb.aq unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.aq:                                            ; preds = %bb.ap
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef signext i8 %i.de(ptr noundef nonnull align 8 dereferenceable(80) %i.db, double noundef %.0115, i32 noundef %i.ag, i32 noundef %i.ah, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ar unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %.not186.1 = icmp ne i8 %i.df, 0
  %i.dg = load double, ptr %i.a, align 8          ; 2 uses
  %i.dh = fcmp olt double %i.dg, %.4149
  %or.cond516 = select i1 %.not186.1, i1 %i.dh, i1 false
  br i1 %or.cond516, label %.loopexit.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %bb.ar, %.thread262
  %.5150 = phi double [ %.1146, %.thread262 ], [ %.4149, %bb.ao ], [ %.4149, %bb.ar ]
  %.5144 = phi ptr [ %.1140, %.thread262 ], [ %.4143, %bb.ao ], [ %.4143, %bb.ar ] ; 2 uses
  %i.di = icmp eq ptr %.5144, null
  br i1 %i.di, label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread283, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.ar, %.loopexit
  %.5144469 = phi ptr [ %.5144, %.loopexit ], [ %i.db, %bb.ar ] ; 2 uses
  %.5150468 = phi double [ %.5150, %.loopexit ], [ %i.dg, %bb.ar ] ; 2 uses
  %i.dj = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %.loopexit.thread
  %i.dl = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #14 ; 6 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @_ZN6icu_78L16deleteTransitionEPv, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit unwind label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.dn = load i32, ptr %1, align 4
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 7, ptr %1, align 4, !tbaa !28
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.at
  %.pre = load i32, ptr %1, align 4, !tbaa !28
  %i.dp = icmp slt i32 %.pre, 1
  br i1 %i.dp, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.ax

bb.aw:                                            ; preds = %bb.at
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.dl) #14
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit

bb.ax:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(40) %i.dl) #14, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  store ptr %i.dl, ptr %i.af, align 8, !tbaa !23
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, %.loopexit.thread
  %i.du = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #14 ; 6 uses
  %i.dv = icmp ne ptr %i.du, null                 ; 2 uses
  %i.dw = load i32, ptr %1, align 4               ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  %or.cond.i205 = select i1 %i.dv, i1 true, i1 %i.dx
  br i1 %or.cond.i205, label %_ZN6icu_7812LocalPointerINS_10TransitionEEC2EPS1_R10UErrorCode.exit, label %.thread471

.thread471:                                       ; preds = %bb.ay
  store i32 7, ptr %1, align 4, !tbaa !28
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread

_ZN6icu_7812LocalPointerINS_10TransitionEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.ay
  %i.dy = icmp slt i32 %i.dw, 1
  br i1 %i.dy, label %bb.az, label %bb.ba

_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.s, %bb.r, %bb.o, %bb.n, %bb.w, %.preheader.preheader, %bb.ag, %bb.ai, %bb.aj, %.preheader.1, %bb.an, %bb.ap, %bb.aq, %bb.l, %bb.az
  %lpad.loopexit.split-lp553 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit

bb.az:                                            ; preds = %_ZN6icu_7812LocalPointerINS_10TransitionEEC2EPS1_R10UErrorCode.exit
  store double %.5150468, ptr %i.du, align 8, !tbaa !38
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %.0, ptr %i.dz, align 8, !tbaa !39
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %.5144469, ptr %i.ea, align 8, !tbaa !40
  %i.eb = load ptr, ptr %i.af, align 8, !tbaa !23
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.eb, ptr noundef nonnull %i.du, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206 unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %_ZN6icu_7812LocalPointerINS_10TransitionEEC2EPS1_R10UErrorCode.exit
  br i1 %i.dv, label %bb.bb, label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.du) #14
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread

_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread: ; preds = %bb.av, %bb.au, %.thread471, %bb.ba, %bb.bb, %bb.ax
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit356

_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread283: ; preds = %.loopexit, %bb.af
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit356

_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206: ; preds = %bb.az
  %i.ec = load i32, ptr %1, align 4, !tbaa !28
  %i.ed = icmp slt i32 %i.ec, 1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
end_hunk_0
