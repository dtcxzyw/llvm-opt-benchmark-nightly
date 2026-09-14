Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/regexcmp?download=true
inline.NumInlined: 589
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7812RegexCompile13scanPosixPropEv:bb.a
  %i.aj = load i64, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %1, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 2, ptr %i.ak, align 8, !tbaa !11
  invoke void @_ZN6icu_7812RegexCompile8nextCharERNS0_16RegexPatternCharE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.ai)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.ai, align 8, !tbaa !59 ; 2 uses
  %i.am = icmp eq i32 %i.al, 94
  br i1 %i.am, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6icu_7812RegexCompile8nextCharERNS0_16RegexPatternCharE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.ai)
          to label %._crit_edge unwind label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre.pre = load i32, ptr %i.ai, align 8, !tbaa !59
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.pre = phi i32 [ %.pre.pre, %._crit_edge ], [ %i.al, %bb.f ]
  %.023 = phi i8 [ 1, %._crit_edge ], [ 0, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.ap = phi i32 [ %i.as, %bb.m ], [ %.pre, %bb.i ]
  %i.aq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.ap)
          to label %bb.k unwind label %.loopexit  ; 0 uses

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6icu_7812RegexCompile8nextCharERNS0_16RegexPatternCharE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.ai)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ar = load i8, ptr %i.ao, align 4, !tbaa !58
  %.not30 = icmp eq i8 %i.ar, 0
  br i1 %.not30, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.ai, align 8, !tbaa !59 ; 2 uses
  switch i32 %i.as, label %bb.j [
    i32 -1, label %.critedge
    i32 58, label %bb.n
  ]

.loopexit:                                        ; preds = %bb.j, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.n, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6icu_7812RegexCompile8nextCharERNS0_16RegexPatternCharE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.ai)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.at = load i32, ptr %i.ai, align 8, !tbaa !59
  %.not = icmp eq i32 %i.at, 93
  br i1 %.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.au = invoke noundef ptr @_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %.023)
          to label %bb.v unwind label %.loopexit.split-lp

.critedge:                                        ; preds = %bb.l, %bb.m, %bb.o
  store i64 %i.f, ptr %i.e, align 8, !tbaa !29
  store i8 %i.z, ptr %i.y, align 8, !tbaa !34
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !35
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !46
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !91
  store <2 x i32> %i.ah, ptr %i.ag, align 8, !tbaa !86
  store i64 %i.aj, ptr %i.ai, align 8
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !78
  %i.ba = sub nsw i64 %i.x, %i.az                 ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  br i1 %i.bb, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.critedge
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !77
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %i.ba, %i.be
  br i1 %i.bf, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !83
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.ba
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !85
  %i.bk = icmp ult i16 %i.bj, -9216
  br i1 %i.bk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bl = trunc nuw nsw i64 %i.ba to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !76
  br label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q, %.critedge
  invoke void @utext_setNativeIndex_78(ptr noundef nonnull %i.ax, i64 noundef %i.x)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.p
  %.024 = phi ptr [ %i.au, %bb.p ], [ null, %bb.t ], [ null, %bb.s ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.x

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.u, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.bn, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  resume { ptr, i32 } %.pn.pn

bb.x:                                             ; preds = %bb.a, %bb.v
  %.025 = phi ptr [ %.024, %bb.v ], [ null, %bb.a ]
  ret ptr %.025
}

declare noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8foldCaseEj(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

declare signext i8 @u_hasBinaryProperty_78(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_789UVector6415insertElementAtEliR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7812RegexCompile14maxMatchLengthEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UVector32", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !51
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.e = add i32 %2, 1                            ; 3 uses
  call void @_ZN6icu_789UVector32C1EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  invoke void @_ZN6icu_789UVector327setSizeEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.e)
          to label %.preheader139 unwind label %.loopexit.split-lp

.preheader139:                                    ; preds = %bb.b
  %.not95140 = icmp sgt i32 %1, %2
  br i1 %.not95140, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread, label %.lr.ph

.lr.ph152:                                        ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.d

.lr.ph:                                           ; preds = %.preheader139, %bb.c
  %.077141 = phi i32 [ %i.i, %bb.c ], [ %1, %.preheader139 ] ; 3 uses
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i32 noundef %.077141)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.i = add i32 %.077141, 1
  %exitcond.not = icmp eq i32 %.077141, %2
  br i1 %exitcond.not, label %.lr.ph152, label %.lr.ph, !llvm.loop !154

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %.lr.ph152, %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131
  %.1151 = phi i32 [ %1, %.lr.ph152 ], [ %i.ej, %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131 ] ; 56 uses
  %.080150 = phi i32 [ 0, %.lr.ph152 ], [ %.7134, %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131 ] ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66   ; 7 uses
  %i.m = icmp sgt i32 %.1151, -1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i32, ptr %i.n, align 8              ; 6 uses
  %i.p = icmp slt i32 %.1151, %i.o
  %or.cond.i = select i1 %i.m, i1 %i.p, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZNK6icu_789UVector6410elementAtiEi.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90
  %i.s = zext nneg i32 %.1151 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !91
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit

_ZNK6icu_789UVector6410elementAtiEi.exit:         ; preds = %bb.d, %bb.e
  %i.v = phi i64 [ %i.u, %bb.e ], [ 0, %bb.d ]    ; 5 uses
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = load i32, ptr %i.g, align 8              ; 4 uses
  %i.y = icmp sgt i32 %i.x, %.1151
  %or.cond.i99 = select i1 %i.m, i1 %i.y, i1 false
  br i1 %or.cond.i99, label %_ZNK6icu_789UVector3210elementAtiEi.exit, label %_ZNK6icu_789UVector3210elementAtiEi.exit.thread

_ZNK6icu_789UVector3210elementAtiEi.exit:         ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.aa = zext nneg i32 %.1151 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !86
  %spec.select197 = call i32 @llvm.smax.i32(i32 %i.ac, i32 %.080150)
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit101

_ZNK6icu_789UVector3210elementAtiEi.exit.thread:  ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %spec.select = call i32 @llvm.smax.i32(i32 %.080150, i32 0)
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit101

_ZNK6icu_789UVector3210elementAtiEi.exit101:      ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit, %_ZNK6icu_789UVector3210elementAtiEi.exit.thread
  %.181 = phi i32 [ %spec.select, %_ZNK6icu_789UVector3210elementAtiEi.exit.thread ], [ %spec.select197, %_ZNK6icu_789UVector3210elementAtiEi.exit ] ; 46 uses
  %i.ad = lshr i64 %i.v, 24
  %trunc = trunc i64 %i.ad to i8
  switch i8 %trunc, label %bb.ag [
    i8 0, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 2, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 5, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 7, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 8, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 9, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 16, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 53, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 17, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 20, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 23, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 24, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 42, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 54, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 55, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 31, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 35, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 43, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 30, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 32, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 33, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 46, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 45, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 47, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 48, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 34, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread
    i8 41, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread
    i8 19, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread
    i8 10, label %bb.f
    i8 49, label %bb.f
    i8 11, label %bb.f
    i8 22, label %bb.f
    i8 56, label %bb.f
    i8 57, label %bb.f
    i8 58, label %bb.f
    i8 39, label %bb.f
    i8 21, label %bb.f
    i8 12, label %bb.f
    i8 27, label %bb.f
    i8 3, label %bb.g
    i8 13, label %bb.i
    i8 36, label %bb.i
    i8 15, label %bb.i
    i8 18, label %bb.i
    i8 1, label %bb.n
    i8 6, label %bb.p
    i8 4, label %bb.u
    i8 40, label %bb.w
    i8 25, label %bb.y
    i8 26, label %bb.y
    i8 28, label %bb.ad
    i8 29, label %bb.ad
    i8 50, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread
    i8 52, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread
    i8 51, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread
    i8 37, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 38, label %_ZNK6icu_789UVector3210elementAtiEi.exit107
    i8 44, label %.preheader
  ]

.preheader:                                       ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %.5142 = add nsw i32 %.1151, 1                  ; 2 uses
  %.not97.not143 = icmp slt i32 %.1151, %2
  br i1 %.not97.not143, label %.lr.ph146, label %_ZNK6icu_789UVector3210elementAtiEi.exit107

.lr.ph146:                                        ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %bb.ae

bb.f:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %i.af = icmp ult i32 %.181, 2147483645
  %i.ag = add nuw nsw i32 %.181, 2
  br i1 %i.af, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread

bb.g:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %i.ah = and i32 %.181, -2
  %.not = icmp eq i32 %i.ah, 2147483646
  %i.ai = add nsw i32 %.181, 1
  %.0.i102 = select i1 %.not, i32 2147483647, i32 %i.ai ; 3 uses
  %i.aj = and i32 %i.w, 16777215
  %i.ak = icmp samesign ugt i32 %i.aj, 65536
  br i1 %i.ak, label %bb.h, label %_ZNK6icu_789UVector3210elementAtiEi.exit107

bb.h:                                             ; preds = %bb.g
  %i.al = icmp sgt i32 %.0.i102, 2147483645
  %i.am = add nsw i32 %.0.i102, 1
  br i1 %i.al, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131

bb.i:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %i.an = and i32 %i.w, 16777215                  ; 3 uses
  %i.ao = icmp slt i32 %i.an, %.1151
  br i1 %i.ao, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp sgt i32 %i.x, %i.an
  br i1 %i.ap, label %bb.k, label %_ZNK6icu_789UVector3210elementAtiEi.exit105

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.ar = and i64 %i.v, 16777215
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit105

_ZNK6icu_789UVector3210elementAtiEi.exit105:      ; preds = %bb.j, %bb.k
  %i.au = phi i32 [ %i.at, %bb.k ], [ 0, %bb.j ]
  %i.av = icmp slt i32 %i.au, %.181
  br i1 %i.av, label %bb.l, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131

bb.l:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit105
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %.181, i32 noundef %i.an)
          to label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.n:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %i.ax = add nsw i32 %.1151, 1                   ; 2 uses
  %i.ay = icmp sgt i32 %.1151, -2
  %i.az = icmp sgt i32 %i.x, %i.ax
  %or.cond.i106 = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond.i106, label %bb.o, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131

bb.o:                                             ; preds = %bb.n
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit107

bb.p:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %i.be = and i32 %i.w, 16777215                  ; 3 uses
  %i.bf = icmp sgt i32 %i.be, %.1151
  br i1 %i.bf, label %bb.q, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp sgt i32 %i.x, %i.be
  br i1 %i.bg, label %bb.r, label %_ZNK6icu_789UVector3210elementAtiEi.exit109

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.bi = and i64 %i.v, 16777215
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !86
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit109

_ZNK6icu_789UVector3210elementAtiEi.exit109:      ; preds = %bb.q, %bb.r
  %i.bl = phi i32 [ %i.bk, %bb.r ], [ 0, %bb.q ]
  %i.bm = icmp sgt i32 %.181, %i.bl
  br i1 %i.bm, label %bb.s, label %_ZNK6icu_789UVector3210elementAtiEi.exit107

bb.s:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit109
  invoke void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %.181, i32 noundef %i.be)
          to label %_ZNK6icu_789UVector3210elementAtiEi.exit107 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.u:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %i.bo = add nsw i32 %.1151, 1                   ; 3 uses
  %i.bp = icmp sgt i32 %.1151, -2
  %i.bq = icmp slt i32 %i.bo, %i.o
  %or.cond.i110 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond.i110, label %bb.v, label %_ZNK6icu_789UVector6410elementAtiEi.exit111

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !90
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !91
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit111

_ZNK6icu_789UVector6410elementAtiEi.exit111:      ; preds = %bb.u, %bb.v
  %i.by = phi i32 [ %i.bx, %bb.v ], [ 0, %bb.u ]  ; 2 uses
  %i.bz = sub nsw i32 2147483647, %.181
  %i.ca = icmp samesign ugt i32 %i.bz, %i.by
  %i.cb = add nsw i32 %i.by, %.181
  br i1 %i.ca, label %_ZNK6icu_789UVector3210elementAtiEi.exit107, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread

bb.w:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %i.cc = add nsw i32 %.1151, 1                   ; 3 uses
  %i.cd = icmp sgt i32 %.1151, -2
  %i.ce = icmp slt i32 %i.cc, %i.o
  %or.cond.i113 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i113, label %bb.x, label %_ZNK6icu_789UVector6410elementAtiEi.exit114

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !90
  %i.ch = zext nneg i32 %i.cc to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !91
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit114

_ZNK6icu_789UVector6410elementAtiEi.exit114:      ; preds = %bb.w, %bb.x
  %i.cm = phi i32 [ %i.cl, %bb.x ], [ 0, %bb.w ]  ; 2 uses
  %i.cn = sub nsw i32 2147483647, %.181
  %i.co = icmp samesign ugt i32 %i.cn, %i.cm
  %i.cp = add nsw i32 %i.cm, %.181
  br i1 %i.co, label %_ZNK6icu_789UVector3210elementAtiEi.exit107, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread

bb.y:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %i.cq = add nsw i32 %.1151, 1                   ; 2 uses
  %i.cr = icmp sgt i32 %.1151, -2
  %i.cs = icmp slt i32 %i.cq, %i.o
  %or.cond.i116 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond.i116, label %bb.z, label %_ZNK6icu_789UVector6410elementAtiEi.exit117

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !90
  %i.cv = zext nneg i32 %i.cq to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !91
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = and i32 %i.cy, 16777215
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit117

_ZNK6icu_789UVector6410elementAtiEi.exit117:      ; preds = %bb.y, %bb.z
  %i.da = phi i32 [ %i.cz, %bb.z ], [ 0, %bb.y ]  ; 4 uses
  %i.db = add nsw i32 %.1151, 4                   ; 2 uses
  %i.dc = icmp eq i32 %i.da, %i.db
  br i1 %i.dc, label %_ZNK6icu_789UVector3210elementAtiEi.exit107, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit117
  %i.dd = add nsw i32 %.1151, 3                   ; 2 uses
  %i.de = icmp sgt i32 %.1151, -4
  %i.df = icmp slt i32 %i.dd, %i.o
  %or.cond.i118 = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond.i118, label %_ZNK6icu_789UVector6410elementAtiEi.exit119, label %_ZNK6icu_789UVector6410elementAtiEi.exit119.thread

_ZNK6icu_789UVector6410elementAtiEi.exit119:      ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !90
  %i.di = zext nneg i32 %i.dd to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !91 ; 2 uses
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = icmp eq i64 %i.dl, 4294967295
  br i1 %i.dm, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread, label %_ZNK6icu_789UVector6410elementAtiEi.exit119.thread

_ZNK6icu_789UVector6410elementAtiEi.exit119.thread: ; preds = %bb.aa, %_ZNK6icu_789UVector6410elementAtiEi.exit119
  %i.dn = phi i64 [ %i.dk, %_ZNK6icu_789UVector6410elementAtiEi.exit119 ], [ 0, %bb.aa ]
  %i.do = add nsw i32 %i.da, -1
  %i.dp = invoke noundef i32 @_ZN6icu_7812RegexCompile14maxMatchLengthEii(ptr noundef nonnull align 8 dereferenceable(512) %0, i32 noundef %i.db, i32 noundef %i.do)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit119.thread
  %i.dq = sext i32 %i.dp to i64
  %i.dr = sext i32 %.181 to i64
  %sext = shl i64 %i.dn, 32
  %i.ds = ashr exact i64 %sext, 32
  %i.dt = mul nsw i64 %i.ds, %i.dq
  %i.du = add nsw i64 %i.dt, %i.dr                ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 2147483646
  %i.dw = trunc i64 %i.du to i32
  br i1 %i.dv, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread, label %_ZNK6icu_789UVector3210elementAtiEi.exit107

bb.ac:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit119.thread
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101
  call void @abort() #11
  unreachable

bb.ae:                                            ; preds = %.lr.ph146, %_ZNK6icu_789UVector6410elementAtiEi.exit121.thread
  %.5.in144 = phi i32 [ %.5142, %.lr.ph146 ], [ %.5, %_ZNK6icu_789UVector6410elementAtiEi.exit121.thread ] ; 6 uses
  %i.dy = icmp sgt i32 %.5.in144, -1
  %i.dz = icmp slt i32 %.5.in144, %i.o
  %or.cond.i120 = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i120, label %_ZNK6icu_789UVector6410elementAtiEi.exit121, label %_ZNK6icu_789UVector6410elementAtiEi.exit121.thread

_ZNK6icu_789UVector6410elementAtiEi.exit121:      ; preds = %bb.ae
  %i.ea = load ptr, ptr %i.ae, align 8, !tbaa !90
  %i.eb = zext nneg i32 %.5.in144 to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !91 ; 2 uses
  %i.ee = lshr i64 %i.ed, 24
  %trunc136 = trunc i64 %i.ee to i8
  switch i8 %trunc136, label %_ZNK6icu_789UVector6410elementAtiEi.exit121.thread [
    i8 48, label %bb.af
    i8 38, label %bb.af
  ]

bb.af:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit121, %_ZNK6icu_789UVector6410elementAtiEi.exit121
  %i.ef = xor i64 %i.ed, %i.v
  %i.eg = and i64 %i.ef, 16777215
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_ZNK6icu_789UVector3210elementAtiEi.exit107, label %_ZNK6icu_789UVector6410elementAtiEi.exit121.thread

_ZNK6icu_789UVector6410elementAtiEi.exit121.thread: ; preds = %bb.ae, %bb.af, %_ZNK6icu_789UVector6410elementAtiEi.exit121
  %.5 = add i32 %.5.in144, 1
  %exitcond179.not = icmp eq i32 %.5.in144, %2
  br i1 %exitcond179.not, label %_ZNK6icu_789UVector3210elementAtiEi.exit107, label %bb.ae, !llvm.loop !155

bb.ag:                                            ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit101
  call void @abort() #11
  unreachable

_ZNK6icu_789UVector3210elementAtiEi.exit107:      ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit121.thread, %bb.af, %.preheader, %_ZNK6icu_789UVector6410elementAtiEi.exit114, %_ZNK6icu_789UVector6410elementAtiEi.exit111, %bb.ab, %bb.o, %_ZNK6icu_789UVector6410elementAtiEi.exit117, %bb.s, %_ZNK6icu_789UVector3210elementAtiEi.exit109, %bb.g, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101
  %.7 = phi i32 [ %.181, %_ZNK6icu_789UVector6410elementAtiEi.exit117 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %i.bd, %bb.o ], [ %.0.i102, %bb.g ], [ %i.dw, %bb.ab ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit109 ], [ %.181, %bb.s ], [ %i.cp, %_ZNK6icu_789UVector6410elementAtiEi.exit114 ], [ %.181, %.preheader ], [ %i.cb, %_ZNK6icu_789UVector6410elementAtiEi.exit111 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.181, %bb.af ], [ %.181, %_ZNK6icu_789UVector6410elementAtiEi.exit121.thread ] ; 2 uses
  %.6 = phi i32 [ %i.da, %_ZNK6icu_789UVector6410elementAtiEi.exit117 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %bb.o ], [ %.1151, %bb.g ], [ %i.da, %bb.ab ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit109 ], [ %.1151, %bb.s ], [ %i.cc, %_ZNK6icu_789UVector6410elementAtiEi.exit114 ], [ %.5142, %.preheader ], [ %i.bo, %_ZNK6icu_789UVector6410elementAtiEi.exit111 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %i.e, %_ZNK6icu_789UVector6410elementAtiEi.exit121.thread ], [ %.5.in144, %bb.af ]
  %i.ei = icmp eq i32 %.7, 2147483647
  br i1 %i.ei, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131

_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131: ; preds = %bb.f, %bb.h, %bb.l, %bb.n, %_ZNK6icu_789UVector3210elementAtiEi.exit105, %_ZNK6icu_789UVector3210elementAtiEi.exit107
  %.6135 = phi i32 [ %.6, %_ZNK6icu_789UVector3210elementAtiEi.exit107 ], [ %.1151, %_ZNK6icu_789UVector3210elementAtiEi.exit105 ], [ %.1151, %bb.n ], [ %.1151, %bb.l ], [ %.1151, %bb.h ], [ %.1151, %bb.f ] ; 2 uses
  %.7134 = phi i32 [ %.7, %_ZNK6icu_789UVector3210elementAtiEi.exit107 ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit105 ], [ 0, %bb.n ], [ 0, %bb.l ], [ %i.am, %bb.h ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ej = add nsw i32 %.6135, 1
  %.not96.not = icmp slt i32 %.6135, %2
  br i1 %.not96.not, label %bb.d, label %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread, !llvm.loop !156

_ZNK6icu_789UVector3210elementAtiEi.exit107.thread: ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131, %_ZNK6icu_789UVector3210elementAtiEi.exit107, %bb.f, %bb.h, %_ZNK6icu_789UVector6410elementAtiEi.exit111, %_ZNK6icu_789UVector6410elementAtiEi.exit114, %bb.p, %_ZNK6icu_789UVector6410elementAtiEi.exit119, %bb.i, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %_ZNK6icu_789UVector3210elementAtiEi.exit101, %bb.ab, %.preheader139
  %.8 = phi i32 [ 0, %.preheader139 ], [ 2147483647, %bb.f ], [ 2147483647, %_ZNK6icu_789UVector3210elementAtiEi.exit107 ], [ 2147483647, %bb.h ], [ 2147483647, %_ZNK6icu_789UVector6410elementAtiEi.exit111 ], [ 2147483647, %_ZNK6icu_789UVector6410elementAtiEi.exit114 ], [ 2147483647, %bb.p ], [ 2147483647, %_ZNK6icu_789UVector6410elementAtiEi.exit119 ], [ 2147483647, %bb.i ], [ 2147483647, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ 2147483647, %bb.ab ], [ 2147483647, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ 2147483647, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ 2147483647, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ 2147483647, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ 2147483647, %_ZNK6icu_789UVector3210elementAtiEi.exit101 ], [ %.7134, %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread131 ]
  call void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.ai

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac, %bb.t, %bb.m
  %.pn = phi { ptr, i32 } [ %i.dx, %bb.ac ], [ %i.aw, %bb.m ], [ %i.bn, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_789UVector32D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %.pn

bb.ai:                                            ; preds = %bb.a, %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread
  %.076 = phi i32 [ %.8, %_ZNK6icu_789UVector3210elementAtiEi.exit107.thread ], [ 0, %bb.a ]
  ret i32 %.076
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet16removeAllStringsEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet4sizeEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet6charAtEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6icu_7810UnicodeSet6freezeEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN6icu_789UVector647setSizeEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812RegexCompile27findCaseInsensitiveStartersEiPNS_10UnicodeSetE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %0, 1114111
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call signext i8 @u_hasBinaryProperty_78(i32 noundef %0, i32 noundef 34)
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @u_foldCase_78(i32 noundef %0, i32 noundef 0) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3setEii(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %i.b, i32 noundef %i.b) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6icu_7812RegexCompile27findCaseInsensitiveStartersEiPNS_10UnicodeSetEE19RECaseFixCodePoints, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !86   ; 2 uses
  %i.f = icmp slt i32 %i.e, %0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.f, label %bb.e, label %bb.f, !llvm.loop !157

bb.f:                                             ; preds = %bb.e
  %.not42 = icmp eq i32 %i.e, %0
  br i1 %.not42, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.g = getelementptr inbounds nuw [2 x i8], ptr @_ZZN6icu_7812RegexCompile27findCaseInsensitiveStartersEiPNS_10UnicodeSetEE15RECaseFixCounts, i64 %indvars.iv
  %i.h = load i16, ptr %i.g, align 2, !tbaa !55
  %i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZZN6icu_7812RegexCompile27findCaseInsensitiveStartersEiPNS_10UnicodeSetEE22RECaseFixStringOffsets, i64 %indvars.iv
  %i.j = load i16, ptr %i.i, align 2, !tbaa !55
  %i.k = sext i16 %i.j to i32
  %i.l = tail call i16 @llvm.smax.i16(i16 %i.h, i16 1)
  %smax = zext nneg i16 %i.l to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.035 = phi i32 [ %i.ac, %bb.h ], [ 0, %.lr.ph.preheader ]
  %.02934 = phi i32 [ %.1, %bb.h ], [ %i.k, %.lr.ph.preheader ] ; 3 uses
  %i.m = add nsw i32 %.02934, 1                   ; 2 uses
  %i.n = sext i32 %.02934 to i64
  %i.o = getelementptr inbounds [2 x i8], ptr @_ZZN6icu_7812RegexCompile27findCaseInsensitiveStartersEiPNS_10UnicodeSetEE13RECaseFixData, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !85
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = and i32 %i.q, 64512
  %i.s = icmp eq i32 %i.r, 55296
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.t = shl nuw nsw i32 %i.q, 10
  %i.u = add nsw i32 %.02934, 2
  %i.v = sext i32 %i.m to i64
  %i.w = getelementptr inbounds [2 x i8], ptr @_ZZN6icu_7812RegexCompile27findCaseInsensitiveStartersEiPNS_10UnicodeSetEE13RECaseFixData, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !85
  %i.y = zext i16 %i.x to i32
  %i.z = add nsw i32 %i.t, -56613888
  %i.aa = add nuw nsw i32 %i.z, %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.1 = phi i32 [ %i.u, %bb.g ], [ %i.m, %.lr.ph ]
  %.028 = phi i32 [ %i.aa, %bb.g ], [ %i.q, %.lr.ph ]
  %i.ab = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %.028) ; 0 uses
  %i.ac = add nuw nsw i32 %.035, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %smax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !158

.loopexit:                                        ; preds = %bb.h, %bb.f
  %i.ad = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9closeOverEi(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef 2) ; 0 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet16removeAllStringsEv(ptr noundef nonnull align 8 dereferenceable(200) %1) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.af = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3setEii(ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %0, i32 noundef %0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  ret void
}

declare i32 @u_foldCase_78(i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3setEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9closeOverEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_789UVector32C1EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare void @_ZN6icu_789UVector327setSizeEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet5clearEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare void @_ZN6icu_7810UnicodeSetC1Eii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @utext_extract_78(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @utext_next32_78(ptr noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZN6icu_7812PatternProps12isWhiteSpaceEi(i32 noundef) local_unnamed_addr #1

declare i32 @u_unescapeAt_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i16 @uregex_ucstr_unescape_charAt_78(i32 noundef, ptr noundef) #1

declare void @utext_setNativeIndex_78(ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i16 @uregex_utext_unescape_charAt_78(i32 noundef, ptr noundef) #1

declare i32 @utext_previous32_78(ptr noundef) local_unnamed_addr #1

declare signext i8 @utext_moveIndex32_78(ptr noundef, i32 noundef) local_unnamed_addr #1

declare signext i8 @uprv_isInvariantUString_78(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @u_charFromName_78(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7812RegexCompile20createSetForPropertyERKNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.icu_78::LocalPointer", align 8 ; 48 uses
  %i.b = alloca i32, align 4                      ; 52 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 21 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %9 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %10 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %11 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %12 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %13 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %14 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %15 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %16 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %17 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %18 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %19 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %20 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %21 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %22 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %23 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %24 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %25 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %26 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %27 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %28 = alloca %"class.icu_78::UnicodeSet", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51
  %i.f = icmp slt i32 %i.e, 1
end_hunk_0
