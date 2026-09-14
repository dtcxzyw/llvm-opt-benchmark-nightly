Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rbtz?download=true
inline.NumInlined: 146
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7817RuleBasedTimeZoneC2ERKS0_:bb.a
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
  br i1 %i.b, label %bb.k, label %bb.b

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
          to label %bb.f unwind label %.thread    ; 2 uses

.thread:                                          ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(80) %i.k)
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = icmp ne ptr %i.p, null
  %i.r = load i32, ptr %i.a, align 4
  %i.s = icmp sgt i32 %i.r, 0
  %or.cond.i24 = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond.i24, label %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 7, ptr %i.a, align 4, !tbaa !28
  br label %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.g, %bb.h
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEED2Ev.exit unwind label %.thread34

_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit
  %i.t = load i32, ptr %i.a, align 4, !tbaa !28
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.e, label %.thread42

.thread34:                                        ; preds = %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEEC2EPS1_R10UErrorCode.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread, %.thread34
  %.pn36 = phi { ptr, i32 } [ %i.v, %.thread34 ], [ %i.w, %bb.i ], [ %i.l, %.thread ]
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #14, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

.thread42:                                        ; preds = %_ZN6icu_7812LocalPointerINS_12TimeZoneRuleEED2Ev.exit, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #14, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26: ; preds = %bb.e, %bb.b, %.preheader, %.thread42
  %.341 = phi ptr [ null, %.thread42 ], [ null, %bb.b ], [ %i.e, %.preheader ], [ %i.e, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.j, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn36, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.a, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit26
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
  br i1 %i.e, label %bb.b, label %bb.ci

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !24
  %.not172 = icmp eq i8 %i.g, 0
  br i1 %.not172, label %bb.c, label %bb.ci

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
  br label %bb.ci

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not175 = icmp eq ptr %i.m, null
  br i1 %.not175, label %.thread346, label %bb.g

.thread:                                          ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not175253 = icmp eq ptr %i.o, null
  br i1 %.not175253, label %.thread477, label %bb.g

.thread477:                                       ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  br label %bb.bj

bb.g:                                             ; preds = %.thread, %bb.f
  %.ph = phi ptr [ %i.m, %bb.f ], [ %i.o, %.thread ]
  %.ph258 = phi ptr [ %i.l, %bb.f ], [ %i.n, %.thread ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.bi

bb.h:                                             ; preds = %bb.g
  %i.w = zext nneg i32 %i.u to i64                ; 2 uses
  %i.x = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.w) #15 ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %.preheader352

bb.i:                                             ; preds = %bb.h
  store i32 7, ptr %1, align 4, !tbaa !28
  br label %.loopexit354

.preheader352:                                    ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.w, i1 false), !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.u to i64
  %wide.trip.count443 = zext nneg i32 %i.u to i64
  br label %bb.j

bb.j:                                             ; preds = %.preheader352, %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206
  %.0115 = phi double [ %.5150473, %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206 ], [ f0xC384763B62073280, %.preheader352 ] ; 6 uses
  %.0 = phi ptr [ %.5144474, %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206 ], [ %i.s, %.preheader352 ] ; 12 uses
  %i.ag = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.k unwind label %bb.m       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ah = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.l unwind label %bb.n       ; 3 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !tbaa !12
  store i16 2, ptr %i.z, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8, !tbaa !12
  store i16 2, ptr %i.aa, align 8, !tbaa !33
  %i.ai = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %.0, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %.lr.ph395 unwind label %.loopexit.split-lp ; 0 uses

.lr.ph395:                                        ; preds = %bb.l, %bb.af
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ 0, %bb.l ] ; 3 uses
  %.0139393 = phi ptr [ %.1140, %bb.af ], [ null, %bb.l ] ; 5 uses
  %.0145392 = phi double [ %.1146, %bb.af ], [ f0x43846A3EDDF8CD80, %bb.l ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !52, !range !53, !noundef !54
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.af, label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.n:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit351:                                     ; preds = %bb.o, %bb.p, %bb.s, %bb.t, %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.o:                                             ; preds = %.lr.ph395
  %i.ao = load ptr, ptr %.ph258, align 8, !tbaa !25
  %i.ap = trunc nuw nsw i64 %indvars.iv to i32
  %i.aq = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i32 noundef %i.ap)
          to label %bb.p unwind label %.loopexit351 ; 8 uses

bb.p:                                             ; preds = %bb.o
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef signext i8 %i.at(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, double noundef %.0115, i32 noundef %i.ag, i32 noundef %i.ah, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.q unwind label %.loopexit351

bb.q:                                             ; preds = %bb.p
  %.not187 = icmp eq i8 %i.au, 0
  br i1 %.not187, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.aj, align 1, !tbaa !52
  br label %bb.af

bb.s:                                             ; preds = %bb.q
  %i.av = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.t unwind label %.loopexit351 ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.u unwind label %.loopexit351

bb.u:                                             ; preds = %bb.t
  br i1 %i.az, label %bb.af, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = load i16, ptr %i.aa, align 8, !tbaa !33 ; 3 uses
  %i.bb = and i16 %i.ba, 1
  %.not.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i, label %bb.w, label %.split

.split:                                           ; preds = %bb.v
  %i.bc = load i16, ptr %i.z, align 8, !tbaa !33
  %i.bd = trunc i16 %i.bc to i1
  br i1 %i.bd, label %bb.y, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.be = icmp slt i16 %i.ba, 0
  %i.bf = ashr i16 %i.ba, 5
  %i.bg = sext i16 %i.bf to i32
  %i.bh = load i32, ptr %i.ab, align 4
  %i.bi = select i1 %i.be, i32 %i.bh, i32 %i.bg   ; 2 uses
  %i.bj = load i16, ptr %i.z, align 8, !tbaa !33  ; 4 uses
  %i.bk = icmp slt i16 %i.bj, 0
  %i.bl = ashr i16 %i.bj, 5
  %i.bm = sext i16 %i.bl to i32
  %i.bn = load i32, ptr %i.ac, align 4
  %i.bo = select i1 %i.bk, i32 %i.bn, i32 %i.bm
  %i.bp = and i16 %i.bj, 1
  %.not9.i = icmp eq i16 %i.bp, 0
  %i.bq = icmp eq i32 %i.bi, %i.bo
  %or.cond.i = and i1 %.not9.i, %i.bq
  br i1 %or.cond.i, label %bb.x, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.br = and i16 %i.bj, 2
  %.not.i.i.i = icmp eq i16 %i.br, 0
  %i.bs = load ptr, ptr %i.ae, align 8
  %i.bt = select i1 %.not.i.i.i, ptr %i.bs, ptr %i.ad
  %i.bu = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.bt, i32 noundef %i.bi)
          to label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit unwind label %.loopexit351

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.x
  %.not = icmp eq i8 %i.bu, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %bb.y

bb.y:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.bv = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aq)
          to label %bb.z unwind label %.loopexit351

bb.z:                                             ; preds = %bb.y
  %i.bw = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.aa unwind label %.loopexit351

bb.aa:                                            ; preds = %bb.z
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.ab, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.by = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aq)
          to label %bb.ac unwind label %.loopexit351

bb.ac:                                            ; preds = %bb.ab
  %i.bz = invoke noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.ad unwind label %.loopexit351

bb.ad:                                            ; preds = %bb.ac
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.af, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %bb.w, %.split, %bb.ad, %bb.aa, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.cb = load double, ptr %i.a, align 8, !tbaa !35 ; 2 uses
  %i.cc = fcmp olt double %i.cb, %.0145392
  br i1 %i.cc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread
  br label %bb.af

bb.af:                                            ; preds = %bb.r, %bb.ae, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, %bb.u, %bb.ad, %.lr.ph395
  %.1146 = phi double [ %.0145392, %.lr.ph395 ], [ %.0145392, %bb.u ], [ %.0145392, %bb.ad ], [ %i.cb, %bb.ae ], [ %.0145392, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread ], [ %.0145392, %bb.r ] ; 6 uses
  %.1140 = phi ptr [ %.0139393, %.lr.ph395 ], [ %.0139393, %bb.u ], [ %.0139393, %bb.ad ], [ %i.aq, %bb.ae ], [ %.0139393, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread ], [ %.0139393, %bb.r ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph395, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.af
  %i.cd = icmp eq ptr %.1140, null
  br i1 %i.cd, label %.lr.ph398, label %.thread262

bb.ag:                                            ; preds = %.lr.ph398
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count443
  br i1 %exitcond444.not, label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread283, label %.lr.ph398, !llvm.loop !50

.lr.ph398:                                        ; preds = %._crit_edge, %bb.ag
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %bb.ag ], [ 0, %._crit_edge ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv439
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !52, !range !53, !noundef !54
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ag, label %.thread262

.thread262:                                       ; preds = %.lr.ph398, %._crit_edge
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %.not179 = icmp eq ptr %i.ch, null
  br i1 %.not179, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread262
  %i.ci = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, i32 noundef 0)
          to label %bb.ah unwind label %bb.aj     ; 2 uses

bb.ah:                                            ; preds = %.preheader.preheader
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cm, label %.preheader.1, label %bb.ak

bb.aj:                                            ; preds = %bb.as, %bb.ar, %bb.ap, %.preheader.1, %bb.al, %bb.ak, %bb.ah, %.preheader.preheader
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ak:                                            ; preds = %bb.ai
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.cp = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.co, i32 noundef 0)
          to label %bb.al unwind label %bb.aj     ; 3 uses

bb.al:                                            ; preds = %bb.ak
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef signext i8 %i.cs(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, double noundef %.0115, i32 noundef %i.ag, i32 noundef %i.ah, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.am unwind label %bb.aj

bb.am:                                            ; preds = %bb.al
  %.not186 = icmp eq i8 %i.ct, 0
  br i1 %.not186, label %.preheader.1, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cu = load double, ptr %i.a, align 8, !tbaa !35 ; 2 uses
  %i.cv = fcmp olt double %i.cu, %.1146
  br i1 %i.cv, label %bb.ao, label %.preheader.1

bb.ao:                                            ; preds = %bb.an
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.am, %bb.ao, %bb.an, %bb.ai
  %.4149 = phi double [ %.1146, %bb.ai ], [ %i.cu, %bb.ao ], [ %.1146, %bb.an ], [ %.1146, %bb.am ] ; 3 uses
  %.4143 = phi ptr [ %.1140, %bb.ai ], [ %i.cp, %bb.ao ], [ %.1140, %bb.an ], [ %.1140, %bb.am ] ; 2 uses
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.cx = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, i32 noundef 1)
          to label %bb.ap unwind label %bb.aj     ; 2 uses

bb.ap:                                            ; preds = %.preheader.1
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(80) %i.cx, ptr noundef nonnull align 8 dereferenceable(80) %.0)
          to label %bb.aq unwind label %bb.aj

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.db, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dc = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.dd = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, i32 noundef 1)
          to label %bb.as unwind label %bb.aj     ; 3 uses

bb.as:                                            ; preds = %bb.ar
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef signext i8 %i.dg(ptr noundef nonnull align 8 dereferenceable(80) %i.dd, double noundef %.0115, i32 noundef %i.ag, i32 noundef %i.ah, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.at unwind label %bb.aj

bb.at:                                            ; preds = %bb.as
  %.not186.1 = icmp ne i8 %i.dh, 0
  %i.di = load double, ptr %i.a, align 8          ; 2 uses
  %i.dj = fcmp olt double %i.di, %.4149
  %or.cond523 = select i1 %.not186.1, i1 %i.dj, i1 false
  br i1 %or.cond523, label %.loopexit.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.aq, %bb.at, %.thread262
  %.5150 = phi double [ %.1146, %.thread262 ], [ %.4149, %bb.aq ], [ %.4149, %bb.at ]
  %.5144 = phi ptr [ %.1140, %.thread262 ], [ %.4143, %bb.aq ], [ %.4143, %bb.at ] ; 2 uses
  %i.dk = icmp eq ptr %.5144, null
  br i1 %i.dk, label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread283, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.at, %.loopexit
  %.5144474 = phi ptr [ %.5144, %.loopexit ], [ %i.dd, %bb.at ] ; 2 uses
  %.5150473 = phi double [ %.5150, %.loopexit ], [ %i.di, %bb.at ] ; 2 uses
  %i.dl = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %.loopexit.thread
  %i.dn = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #14 ; 6 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, ptr noundef nonnull @_ZN6icu_78L16deleteTransitionEPv, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit unwind label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.dp = load i32, ptr %1, align 4
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 7, ptr %1, align 4, !tbaa !28
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.av
  %.pre = load i32, ptr %1, align 4, !tbaa !28
  %i.dr = icmp slt i32 %.pre, 1
  br i1 %i.dr, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.az

bb.ay:                                            ; preds = %bb.av
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.dn) #14
  br label %bb.be

bb.az:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(40) %i.dn) #14, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  store ptr %i.dn, ptr %i.af, align 8, !tbaa !23
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, %.loopexit.thread
  %i.dw = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #14 ; 7 uses
  %i.dx = icmp ne ptr %i.dw, null
  %i.dy = load i32, ptr %1, align 4               ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  %or.cond.i205 = select i1 %i.dx, i1 true, i1 %i.dz
  br i1 %or.cond.i205, label %_ZN6icu_7812LocalPointerINS_10TransitionEEC2EPS1_R10UErrorCode.exit, label %.thread476

.thread476:                                       ; preds = %bb.ba
  store i32 7, ptr %1, align 4, !tbaa !28
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread

_ZN6icu_7812LocalPointerINS_10TransitionEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.ba
  %i.ea = icmp slt i32 %i.dy, 1
  br i1 %i.ea, label %bb.bb, label %bb.bc

_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit: ; preds = %bb.bb
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %_ZN6icu_7812LocalPointerINS_10TransitionEEC2EPS1_R10UErrorCode.exit
  store double %.5150473, ptr %i.dw, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %.0, ptr %i.ec, align 8, !tbaa !39
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %.5144474, ptr %i.ed, align 8, !tbaa !40
  %i.ee = load ptr, ptr %i.af, align 8, !tbaa !23
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.ee, ptr noundef nonnull %i.dw, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206 unwind label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit

bb.bc:                                            ; preds = %_ZN6icu_7812LocalPointerINS_10TransitionEEC2EPS1_R10UErrorCode.exit
  %i.ef = icmp eq ptr %i.dw, null
  br i1 %i.ef, label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.dw) #14
  br label %_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread

_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread: ; preds = %bb.ax, %bb.aw, %.thread476, %bb.bc, %bb.bd, %bb.az
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit354

_ZN6icu_7812LocalPointerINS_10TransitionEED2Ev.exit206.thread283: ; preds = %.loopexit, %bb.ag
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit354
end_hunk_0
