Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/alphaindex?download=true
inline.NumInlined: 330
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7815AlphabeticIndex17addIndexExemplarsERKNS_6LocaleER10UErrorCode:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN6icu_7818UnicodeSetIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.bc

bb.bc:                                            ; preds = %bb.i, %bb.e, %bb.bb
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.bc
  %.not.i41 = icmp eq ptr %i.b, null
  br i1 %.not.i41, label %_ZN6icu_788internal16LocalOpenPointerI11ULocaleDataXadL_Z17ulocdata_close_78EEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @ulocdata_close_78(ptr noundef nonnull %i.b)
          to label %_ZN6icu_788internal16LocalOpenPointerI11ULocaleDataXadL_Z17ulocdata_close_78EEED2Ev.exit unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #17
  unreachable

_ZN6icu_788internal16LocalOpenPointerI11ULocaleDataXadL_Z17ulocdata_close_78EEED2Ev.exit: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.bg:                                            ; preds = %bb.ba, %bb.az
  %.pn30 = phi { ptr, i32 } [ %i.bb, %bb.ba ], [ %i.ba, %bb.az ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN6icu_7818UnicodeSetIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ay
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30, %bb.bg ], [ %i.az, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.ap, %bb.g
  %.pn34 = phi { ptr, i32 } [ %i.l, %bb.g ], [ %.pn30.pn.pn, %bb.bh ], [ %.pn27, %bb.ap ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %4) #16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.f
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.bi ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN6icu_788internal16LocalOpenPointerI11ULocaleDataXadL_Z17ulocdata_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7815AlphabeticIndex19buildImmutableIndexER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !43
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = invoke noundef ptr @_ZNK6icu_7817RuleBasedCollator5cloneEv(ptr noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %bb.c unwind label %bb.d       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %.not31 = icmp eq ptr %i.f, null                ; 2 uses
  %or.cond = or i1 %.not, %.not31
  br i1 %or.cond, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq ptr %i.c, null
  br i1 %i.h, label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #16, !inline_history !58
  br label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit

_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #16 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit.thread

.thread:                                          ; preds = %bb.f
  store i32 7, ptr %1, align 4, !tbaa !43
  br label %bb.h

_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit.thread: ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7815AlphabeticIndex14ImmutableIndexE, i64 16), ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.c, ptr %i.n, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.f, ptr %i.o, align 8, !tbaa !20
  br label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit13

bb.g:                                             ; preds = %bb.c
  store i32 7, ptr %1, align 4, !tbaa !43
  br i1 %.not31, label %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  tail call void @_ZN6icu_7817RuleBasedCollatorD1Ev(ptr noundef nonnull align 8 dead_on_return(85) dereferenceable(88) %i.f) #16
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #16
  br label %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit: ; preds = %bb.g, %bb.h
  br i1 %.not, label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit13, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #16, !inline_history !58
  br label %_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit13

_ZN6icu_7812LocalPointerINS_10BucketListEED2Ev.exit13: ; preds = %bb.i, %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit, %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit.thread, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.l, %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit.thread ], [ null, %_ZN6icu_7812LocalPointerINS_17RuleBasedCollatorEED2Ev.exit ], [ null, %bb.i ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.icu_78::UVector", align 8   ; 10 uses
  %3 = alloca %"class.icu_78::UVector64", align 8 ; 12 uses
  %i.f = alloca [26 x ptr], align 16              ; 31 uses
  %i.g = alloca [26 x ptr], align 16              ; 31 uses
  %4 = alloca %"class.icu_78::LocalPointer.7", align 8 ; 25 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.h = invoke noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6icu_7815AlphabeticIndex10initLabelsERNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 4, !tbaa !43
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.ew

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZN6icu_789UVector64C1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = invoke noundef i32 @_ZNK6icu_7817RuleBasedCollator12getAttributeE13UColAttributeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.m, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i32 %i.n, 20
  br i1 %i.o, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.q = invoke noundef i32 @_ZNK6icu_7817RuleBasedCollator14getVariableTopER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.k:                                             ; preds = %bb.g, %bb.h
  %.0194 = phi i32 [ %i.q, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.f, i8 0, i64 208, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.g, i8 0, i64 208, i1 false)
  %i.t = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #16 ; 41 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.v = load i32, ptr %1, align 4
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit352, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 7, ptr %1, align 4, !tbaa !43
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit352

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.l
  %.pre = load i32, ptr %1, align 4, !tbaa !43
  %i.x = icmp slt i32 %.pre, 1
  br i1 %i.x, label %bb.p, label %.thread689

bb.o:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.t) #16
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit353

.thread470:                                       ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.p:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.aa = invoke noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %bb.q unwind label %.thread470 ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ab = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #16 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.af(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.s unwind label %.thread474

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke void @_ZN6icu_7815AlphabeticIndex6BucketC1ERKNS_13UnicodeStringES4_25UAlphabeticIndexLabelType(ptr noundef nonnull align 8 dereferenceable(168) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i32 noundef 1)
          to label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit unwind label %.thread474

bb.t:                                             ; preds = %bb.q
  %i.ai = load i32, ptr %1, align 4
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.thread697, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 7, ptr %1, align 4, !tbaa !43
  br label %.thread697

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit: ; preds = %bb.s
  store ptr %i.ab, ptr %4, align 8, !tbaa !59
  %.pre606 = load i32, ptr %1, align 4, !tbaa !43
  %i.ak = icmp slt i32 %.pre606, 1
  br i1 %i.ak, label %bb.w, label %.thread678

.thread474:                                       ; preds = %bb.r, %bb.s
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ab) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.et

bb.v:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.w:                                             ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit
  store ptr null, ptr %4, align 8, !tbaa !59
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.an = load i32, ptr %1, align 4, !tbaa !43
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.y, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i16 2, ptr %i.ap, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !21
  %.not265550 = icmp sgt i32 %i.as, 0
  br i1 %.not265550, label %.lr.ph, label %.thread452.thread

.lr.ph:                                           ; preds = %bb.y
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %.thread428
  %.0197555 = phi i8 [ 0, %.lr.ph ], [ %.4201.ph, %.thread428 ] ; 4 uses
  %.0211554 = phi i8 [ 0, %.lr.ph ], [ %.1212, %.thread428 ] ; 6 uses
  %.0216553 = phi i32 [ 0, %.lr.ph ], [ %i.jl, %.thread428 ] ; 2 uses
  %.0217552 = phi ptr [ %i.aq, %.lr.ph ], [ %.1218, %.thread428 ] ; 3 uses
  %.0221551 = phi i32 [ -1, %.lr.ph ], [ %.2223, %.thread428 ] ; 2 uses
  %i.ay = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %.0216553)
          to label %_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit unwind label %bb.ad ; 23 uses

_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit: ; preds = %bb.z
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.ba = invoke noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.az, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %.0217552, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %.preheader482.preheader, label %.critedge292

.preheader482.preheader:                          ; preds = %bb.aa
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.bd = add nsw i32 %.0221551, 1                ; 3 uses
  %i.be = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i32 noundef %i.bd)
          to label %_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit301.peel unwind label %.loopexit483.loopexit.split-lp ; 2 uses

_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit301.peel: ; preds = %.preheader482.preheader
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.bg = invoke noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.ab unwind label %.loopexit483.loopexit.split-lp

bb.ab:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit301.peel
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %.critedge292, label %.preheader482

.preheader482:                                    ; preds = %bb.ab, %bb.ac
  %.1222 = phi i32 [ %i.bj, %bb.ac ], [ %i.bd, %bb.ab ]
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.bj = add nsw i32 %.1222, 1                   ; 4 uses
  %i.bk = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i32 noundef %i.bj)
          to label %_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit301 unwind label %.loopexit483.loopexit ; 3 uses

_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit301: ; preds = %.preheader482
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.bm = invoke noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.ac unwind label %.loopexit483.loopexit

bb.ac:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit301
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit605, label %.preheader482, !llvm.loop !61

bb.ad:                                            ; preds = %bb.z, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit309, %_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.loopexit483.loopexit:                            ; preds = %.preheader482, %_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit301
  %lpad.loopexit603 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.loopexit483.loopexit.split-lp:                   ; preds = %.preheader482.preheader, %_ZN6icu_7812_GLOBAL__N_19getStringERKNS_7UVectorEi.exit301.peel
  %lpad.loopexit.split-lp604 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.loopexit.split-lp484:                            ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit
  %lpad.loopexit.split-lp486 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.loopexit605:                                     ; preds = %bb.ac
  %i.bp = load i32, ptr %i.au, align 8, !tbaa !21
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.ae, label %.critedge292

bb.ae:                                            ; preds = %.loopexit605
  %i.br = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 168) #16 ; 6 uses
  %i.bs = icmp eq ptr %i.br, null                 ; 2 uses
  br i1 %i.bs, label %.thread395, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %0, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.ag unwind label %bb.ao

end_hunk_0
begin_hunk_1_@_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode:bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br label %.body

bb.ar:                                            ; preds = %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !42 ; 3 uses
  %i.ct = icmp slt i16 %i.cs, 0
  %i.cu = ashr i16 %i.cs, 5
  %i.cv = sext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 12 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = select i1 %i.ct, i32 %i.cx, i32 %i.cv
  %i.cz = icmp ugt i32 %i.cy, 1
  br i1 %i.cz, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.ar
  %i.da = and i16 %i.cs, 2
  %.not.i.i.i.i = icmp eq i16 %i.da, 0
  %i.db = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = select i1 %.not.i.i.i.i, ptr %i.dd, ptr %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !46 ; 4 uses
  %i.dh = add i16 %i.dg, -10241
  %or.cond.i302 = icmp ult i16 %i.dh, 255
  br i1 %or.cond.i302, label %bb.as, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i

bb.as:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.di = trunc i16 %i.dg to i8                   ; 3 uses
  %i.dj = urem i8 %i.di, 10
  %i.dk = udiv i8 %i.di, 10
  %i.dl = or disjoint i8 %i.dj, 48
  %i.dm = zext nneg i8 %i.dl to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.dm, ptr %i.e, align 2, !tbaa !46
  invoke void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %.noexc unwind label %bb.bd

.noexc:                                           ; preds = %bb.as
  %i.dn = load i16, ptr %i.ap, align 8, !tbaa !42 ; 2 uses
  %i.do = icmp slt i16 %i.dn, 0
  %i.dp = ashr i16 %i.dn, 5
  %i.dq = sext i16 %i.dp to i32
  %i.dr = load i32, ptr %i.av, align 4
  %i.ds = select i1 %i.do, i32 %i.dr, i32 %i.dq
  %i.dt = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.ds, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1)
          to label %.noexc303 unwind label %bb.bd ; 0 uses

.noexc303:                                        ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.du = icmp samesign ugt i16 %i.dg, 10249
  br i1 %i.du, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.noexc303
  %i.dv = urem i8 %i.dk, 10
  %i.dw = or disjoint i8 %i.dv, 48
  %i.dx = zext nneg i8 %i.dw to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.dx, ptr %i.d, align 2, !tbaa !46
  %i.dy = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1)
          to label %.noexc304 unwind label %bb.bd ; 0 uses

.noexc304:                                        ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dz = icmp samesign ugt i16 %i.dg, 10339
  br i1 %i.dz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.noexc304
  %i.ea = udiv i8 %i.di, 100
  %i.eb = or disjoint i8 %i.ea, 48
  %i.ec = zext nneg i8 %i.eb to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.ec, ptr %i.c, align 2, !tbaa !46
  %i.ed = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1)
          to label %.noexc305 unwind label %bb.bd ; 0 uses

.noexc305:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.av

bb.av:                                            ; preds = %.noexc305, %.noexc304, %.noexc303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 21123, ptr %i.b, align 2, !tbaa !46
  %i.ee = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %.noexc306 unwind label %bb.bd

.noexc306:                                        ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN6icu_7812_GLOBAL__N_18fixLabelERKNS_13UnicodeStringERS1_.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %bb.ar
  invoke void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %.noexc307 unwind label %bb.bd

.noexc307:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %.pre.i.i = load i16, ptr %i.cr, align 8, !tbaa !42 ; 2 uses
  %i.ef = icmp slt i16 %.pre.i.i, 0
  %i.eg = ashr i16 %.pre.i.i, 5
  %i.eh = sext i16 %i.eg to i32
  %i.ei = load i32, ptr %i.cw, align 4
  %i.ej = select i1 %i.ef, i32 %i.ei, i32 %i.eh   ; 2 uses
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.ej, i32 1) ; 2 uses
  %i.ek = load i16, ptr %i.ap, align 8, !tbaa !42 ; 2 uses
  %i.el = icmp slt i16 %i.ek, 0
  %i.em = ashr i16 %i.ek, 5
  %i.en = sext i16 %i.em to i32
  %i.eo = load i32, ptr %i.av, align 4
  %i.ep = select i1 %i.el, i32 %i.eo, i32 %i.en
  %i.eq = sub nsw i32 %i.ej, %spec.select.i.i
  %i.er = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i32 noundef %spec.select.i.i, i32 noundef %i.eq)
          to label %_ZN6icu_7812_GLOBAL__N_18fixLabelERKNS_13UnicodeStringERS1_.exit unwind label %bb.bd

_ZN6icu_7812_GLOBAL__N_18fixLabelERKNS_13UnicodeStringERS1_.exit: ; preds = %.noexc306, %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit.i, %.noexc307
  %.1.i = phi ptr [ %i.ay, %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit.i ], [ %i.ee, %.noexc306 ], [ %i.er, %.noexc307 ]
  invoke void @_ZN6icu_7815AlphabeticIndex6BucketC1ERKNS_13UnicodeStringES4_25UAlphabeticIndexLabelType(ptr noundef nonnull align 8 dereferenceable(168) %i.cn, ptr noundef nonnull align 8 dereferenceable(64) %.1.i, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i32 noundef 0)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_18fixLabelERKNS_13UnicodeStringERS1_.exit
  %i.es = load i32, ptr %1, align 4, !tbaa !43
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.bb, label %bb.ax

.thread397:                                       ; preds = %.critedge292
  %i.eu = load i32, ptr %1, align 4, !tbaa !43
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit309, label %bb.ax

bb.ax:                                            ; preds = %.thread397, %bb.aw
  %i.ew = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(168) %i.ew) #16, !inline_history !63
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr %i.cn, ptr %4, align 8, !tbaa !59
  br i1 %i.co, label %bb.ba, label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit309

bb.ba:                                            ; preds = %bb.az
  store i32 7, ptr %1, align 4, !tbaa !43
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit309

bb.bb:                                            ; preds = %bb.aw
  %i.fb = load ptr, ptr %i.cn, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(168) %i.cn) #16, !inline_history !63
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit309

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit309: ; preds = %.thread397, %bb.az, %bb.ba, %bb.bb
  %i.fe = load ptr, ptr %4, align 8, !tbaa !59
  store ptr null, ptr %4, align 8, !tbaa !59
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef %i.fe, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.bc unwind label %bb.ad

bb.bc:                                            ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEE29adoptInsteadAndCheckErrorCodeEPS2_R10UErrorCode.exit309
  %i.ff = load i32, ptr %1, align 4, !tbaa !43
  %i.fg = icmp slt i32 %i.ff, 1
  br i1 %i.fg, label %bb.be, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.bd:                                            ; preds = %.noexc307, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i, %bb.av, %bb.au, %bb.at, %.noexc, %bb.as, %_ZN6icu_7812_GLOBAL__N_18fixLabelERKNS_13UnicodeStringERS1_.exit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aq, %bb.bd
  %eh.lpad-body = phi { ptr, i32 } [ %i.fh, %bb.bd ], [ %i.cq, %bb.aq ]
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.cn) #16
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

bb.be:                                            ; preds = %bb.bc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.fj = load i16, ptr %i.fi, align 8, !tbaa !42 ; 3 uses
  %i.fk = icmp slt i16 %i.fj, 0
  %i.fl = ashr i16 %i.fj, 5
  %i.fm = sext i16 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ay, i64 12 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = select i1 %i.fk, i32 %i.fo, i32 %i.fm
  switch i32 %i.fp, label %.thread408 [
    i32 1, label %bb.bf
    i32 2, label %bb.bi
  ]

bb.bf:                                            ; preds = %bb.be
  %i.fq = and i16 %i.fj, 2
  %.not.i.i.i = icmp eq i16 %i.fq, 0
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = select i1 %.not.i.i.i, ptr %i.ft, ptr %i.fr
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !46 ; 2 uses
  %i.fw = add i16 %i.fv, -65
  %or.cond = icmp ult i16 %i.fw, 26
  br i1 %or.cond, label %bb.bg, label %.thread408

bb.bg:                                            ; preds = %bb.bf
  %i.fx = load i32, ptr %i.au, align 8, !tbaa !21
  %i.fy = add nsw i32 %i.fx, -1
  %i.fz = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i32 noundef %i.fy)
          to label %_ZNK6icu_787UVector11lastElementEv.exit unwind label %bb.bh

_ZNK6icu_787UVector11lastElementEv.exit:          ; preds = %bb.bg
  %7 = shl nuw nsw i16 %i.fv, 3
  %8 = zext nneg i16 %7 to i64
  %i.ga = add nuw nsw i64 %8, 34359737848
  %i.gb = and i64 %i.ga, 34359738360
  %.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gb
  store ptr %i.fz, ptr %.0..0..sroa_idx, align 8, !tbaa !65
  br label %.thread408

bb.bh:                                            ; preds = %bb.bl, %bb.bg
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

bb.bi:                                            ; preds = %bb.be
  %i.gd = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1)
          to label %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit unwind label %bb.bm

_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit: ; preds = %bb.bi
  %.not250 = icmp eq i8 %i.gd, 0
  br i1 %.not250, label %.thread410, label %bb.bj

.thread410:                                       ; preds = %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br label %.thread408

bb.bj:                                            ; preds = %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit
  %i.ge = load i16, ptr %i.fi, align 8, !tbaa !42 ; 3 uses
  %i.gf = icmp slt i16 %i.ge, 0
  %i.gg = ashr i16 %i.ge, 5
  %i.gh = sext i16 %i.gg to i32
  %i.gi = load i32, ptr %i.fn, align 4
  %i.gj = select i1 %i.gf, i32 %i.gi, i32 %i.gh
  %i.gk = icmp ugt i32 %i.gj, 1
  br i1 %i.gk, label %bb.bk, label %.thread

.thread:                                          ; preds = %bb.bj
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br label %.thread408

bb.bk:                                            ; preds = %bb.bj
  %i.gl = and i16 %i.ge, 2
  %.not.i.i.i313 = icmp eq i16 %i.gl, 0
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = select i1 %.not.i.i.i313, ptr %i.go, ptr %i.gm
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !46 ; 2 uses
  %i.gs = add i16 %i.gr, -65
  %spec.select = icmp ult i16 %i.gs, 26
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br i1 %spec.select, label %bb.bl, label %.thread408

bb.bl:                                            ; preds = %bb.bk
  %i.gt = load i32, ptr %i.au, align 8, !tbaa !21
  %i.gu = add nsw i32 %i.gt, -1
  %i.gv = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i32 noundef %i.gu)
          to label %_ZNK6icu_787UVector11lastElementEv.exit316 unwind label %bb.bh

_ZNK6icu_787UVector11lastElementEv.exit316:       ; preds = %bb.bl
  %i.gw = zext nneg i16 %i.gr to i64
  %i.gx = getelementptr [8 x i8], ptr %i.g, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 -520
  store ptr %i.gv, ptr %i.gy, align 8, !tbaa !65
  br label %.thread408

bb.bm:                                            ; preds = %bb.bi
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.thread408:                                       ; preds = %.thread, %bb.be, %bb.bf, %.thread410, %bb.bk, %_ZNK6icu_787UVector11lastElementEv.exit316, %_ZNK6icu_787UVector11lastElementEv.exit
  %.1212 = phi i8 [ %.0211554, %_ZNK6icu_787UVector11lastElementEv.exit ], [ 1, %_ZNK6icu_787UVector11lastElementEv.exit316 ], [ %.0211554, %bb.bk ], [ %.0211554, %.thread410 ], [ %.0211554, %bb.bf ], [ %.0211554, %bb.be ], [ %.0211554, %.thread ] ; 2 uses
  %i.ha = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE, i32 noundef 0, i32 noundef 1)
          to label %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit318 unwind label %bb.bt

_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit318: ; preds = %.thread408
  %.not251 = icmp eq i8 %i.ha, 0
  br i1 %.not251, label %bb.bn, label %.critedge

bb.bn:                                            ; preds = %_ZNK6icu_7813UnicodeString10startsWithENS_14ConstChar16PtrEi.exit318
  %i.hb = load ptr, ptr %i.l, align 8, !tbaa !49
  invoke void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc319 unwind label %bb.bt

.noexc319:                                        ; preds = %bb.bn
  invoke void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.hb, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.noexc320 unwind label %bb.bt

.noexc320:                                        ; preds = %.noexc319
  %i.hc = load i32, ptr %1, align 4, !tbaa !43
  %i.hd = icmp slt i32 %i.hc, 1
  br i1 %i.hd, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %.noexc320
  %i.he = load i32, ptr %i.aw, align 8, !tbaa !66 ; 2 uses
  %.not2526.i = icmp sgt i32 %i.he, 0
  br i1 %.not2526.i, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i, label %.critedge

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i: ; preds = %.preheader.i
  %i.hf = load ptr, ptr %i.ax, align 8, !tbaa !69
  %wide.trip.count.i = zext nneg i32 %i.he to i64
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit.i

_ZNK6icu_789UVector6410elementAtiEi.exit.i:       ; preds = %bb.bp, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %bb.bp ] ; 2 uses
  %.01927.i = phi i8 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph.i ], [ %.2.i, %bb.bp ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !70
  %i.hi = lshr i64 %i.hh, 32
  %i.hj = trunc nuw i64 %i.hi to i32
  %i.hk = icmp ult i32 %.0194, %i.hj
  br i1 %i.hk, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.not24.i = icmp eq i8 %.01927.i, 0
  br i1 %.not24.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %_ZNK6icu_789UVector6410elementAtiEi.exit.i
  %.2.i = phi i8 [ %.01927.i, %_ZNK6icu_789UVector6410elementAtiEi.exit.i ], [ 1, %bb.bo ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %_ZNK6icu_789UVector6410elementAtiEi.exit.i, !llvm.loop !72

bb.bq:                                            ; preds = %bb.bo
  %i.hl = load i16, ptr %i.fi, align 8, !tbaa !42 ; 3 uses
  %i.hm = icmp slt i16 %i.hl, 0
  %i.hn = ashr i16 %i.hl, 5
  %i.ho = sext i16 %i.hn to i32
  %i.hp = load i32, ptr %i.fn, align 4
  %i.hq = select i1 %i.hm, i32 %i.hp, i32 %i.ho   ; 2 uses
  %.not = icmp eq i32 %i.hq, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit323.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit323

_ZNK6icu_7813UnicodeString6charAtEi.exit323.thread: ; preds = %bb.bq
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br label %.thread428

_ZNK6icu_7813UnicodeString6charAtEi.exit323:      ; preds = %bb.bq
  %i.hr = and i16 %i.hl, 2
  %.not.i.i.i322 = icmp eq i16 %i.hr, 0
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = select i1 %.not.i.i.i322, ptr %i.hu, ptr %i.hs
  %i.hw = sext i32 %i.hq to i64
  %i.hx = getelementptr [2 x i8], ptr %i.hv, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !46
  %.not253 = icmp eq i16 %i.hz, -1
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br i1 %.not253, label %.thread428, label %bb.br

bb.br:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit323
  %i.ia = load i32, ptr %i.au, align 8, !tbaa !21
  %i.ib = add nsw i32 %i.ia, -2
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit339, %bb.br
  %.0207 = phi i32 [ %i.ib, %bb.br ], [ %i.ji, %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit339 ] ; 2 uses
  %i.ic = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i32 noundef %.0207)
          to label %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit unwind label %.loopexit480 ; 4 uses

_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit: ; preds = %bb.bs
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 136
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !73
  %.not254 = icmp eq i32 %i.ie, 0
  br i1 %.not254, label %bb.bu, label %.thread428

bb.bt:                                            ; preds = %.noexc319, %bb.bn, %.thread408
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_7812_GLOBAL__N_14BASEE) #16, !srcloc !64
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.loopexit480:                                     ; preds = %bb.bs, %bb.bv, %.noexc337
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

.loopexit.split-lp:                               ; preds = %bb.ch
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

bb.bu:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 144
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !27
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.bv, label %_ZN6icu_7812_GLOBAL__N_125hasMultiplePrimaryWeightsERKNS_17RuleBasedCollatorEjRKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode.exit339

bb.bv:                                            ; preds = %bb.bu
  %i.ij = load ptr, ptr %i.l, align 8, !tbaa !49
  invoke void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc337 unwind label %.loopexit480

.noexc337:                                        ; preds = %bb.bv
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 72
  invoke void @_ZNK6icu_7817RuleBasedCollator14internalGetCEsERKNS_13UnicodeStringERNS_9UVector64ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.ij, ptr noundef nonnull align 8 dereferenceable(64) %i.ik, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.noexc338 unwind label %.loopexit480

.noexc338:                                        ; preds = %.noexc337
  %i.il = load i32, ptr %1, align 4, !tbaa !43
  %i.im = icmp slt i32 %i.il, 1
  br i1 %i.im, label %.preheader.i326, label %.loopexit479
end_hunk_1
begin_hunk_2_@_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode:bb.a
  %.not278 = icmp eq ptr %i.rp, null
  br i1 %.not278, label %bb.eb, label %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343, !llvm.loop !76

bb.dz:                                            ; preds = %bb.dy
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

bb.ea:                                            ; preds = %.lr.ph563
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

bb.eb:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit345
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rn, i64 136
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !73
  %i.ru = icmp eq i32 %i.rt, 2
  br i1 %i.ru, label %bb.ec, label %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343

bb.ec:                                            ; preds = %bb.eb
  %i.rv = getelementptr inbounds nuw i8, ptr %.0166562, i64 136
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !73
  %.not279 = icmp eq i32 %i.rw, 0
  br i1 %.not279, label %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  store ptr %.0166562, ptr %i.ro, align 8, !tbaa !27
  br label %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343, !llvm.loop !76

_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343: ; preds = %bb.eb, %bb.ec, %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit345, %bb.ed
  %.1167 = phi ptr [ %.0166562, %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit345 ], [ %.0166562, %bb.ed ], [ %i.rn, %bb.ec ], [ %i.rn, %bb.eb ]
  %i.rx = add nsw i32 %i.rm, -1
  %i.ry = icmp sgt i32 %i.rm, 1
  br i1 %i.ry, label %.lr.ph563, label %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343._crit_edge

_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343._crit_edge: ; preds = %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343, %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343.preheader
  %i.rz = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #16 ; 9 uses
  %i.sa = icmp eq ptr %i.rz, null
  br i1 %i.sa, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343._crit_edge
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.rz, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit347 unwind label %bb.eh

bb.ef:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit343._crit_edge
  %i.sb = load i32, ptr %1, align 4
  %i.sc = icmp sgt i32 %i.sb, 0
  br i1 %i.sc, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i32 7, ptr %1, align 4, !tbaa !43
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit347: ; preds = %bb.ee
  %.pre609 = load i32, ptr %1, align 4, !tbaa !43
  %i.sd = icmp slt i32 %.pre609, 1
  br i1 %i.sd, label %.preheader, label %.thread677.a

.preheader:                                       ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit347
  %i.se = load i32, ptr %i.jq, align 8, !tbaa !21
  %i.sf = icmp sgt i32 %i.se, 0
  br i1 %i.sf, label %.lr.ph565, label %._crit_edge.thread

bb.eh:                                            ; preds = %bb.ee
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.rz) #16
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

._crit_edge:                                      ; preds = %bb.ek
  %.pre610 = load i32, ptr %1, align 4, !tbaa !43
  %i.sh = icmp slt i32 %.pre610, 1
  br i1 %i.sh, label %._crit_edge.thread, label %.thread677.a

.lr.ph565:                                        ; preds = %.preheader, %bb.ek
  %.0148564 = phi i32 [ %i.sn, %bb.ek ], [ 0, %.preheader ] ; 2 uses
  %i.si = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i32 noundef %.0148564)
          to label %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit349 unwind label %bb.ej ; 2 uses

_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit349: ; preds = %.lr.ph565
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 144
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !27
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit349
  invoke void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.rz, ptr noundef nonnull %i.si, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.ek unwind label %bb.ej

bb.ej:                                            ; preds = %.lr.ph565, %bb.ei
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.ek:                                            ; preds = %bb.ei, %_ZN6icu_7812_GLOBAL__N_19getBucketERKNS_7UVectorEi.exit349
  %i.sn = add nuw nsw i32 %.0148564, 1            ; 2 uses
  %i.so = load i32, ptr %i.jq, align 8, !tbaa !21
  %i.sp = icmp slt i32 %i.sn, %i.so
  br i1 %i.sp, label %.lr.ph565, label %._crit_edge, !llvm.loop !77

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.sq = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #16 ; 4 uses
  %i.sr = icmp eq ptr %i.sq, null
  br i1 %i.sr, label %bb.em, label %bb.el

bb.el:                                            ; preds = %._crit_edge.thread
  invoke void @_ZN6icu_7810BucketListC2EPNS_7UVectorES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.sq, ptr noundef nonnull %i.t, ptr noundef nonnull %i.rz)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit unwind label %bb.en

bb.em:                                            ; preds = %._crit_edge.thread
  store i32 7, ptr %1, align 4, !tbaa !43
  br label %.thread677.a

bb.en:                                            ; preds = %bb.el
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.sq) #16
  br label %bb.eo

.thread677.a:                                     ; preds = %._crit_edge, %bb.em, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit347
  %i.st = load ptr, ptr %i.rz, align 8, !tbaa !8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(40) %i.rz) #16, !inline_history !78
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.eo:                                            ; preds = %bb.ej, %bb.en
  %.pn273 = phi { ptr, i32 } [ %i.sm, %bb.ej ], [ %i.ss, %bb.en ]
  %i.sw = load ptr, ptr %i.rz, align 8, !tbaa !8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(40) %i.rz) #16, !inline_history !78
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.ci, %.critedge296, %bb.an, %bb.bc, %bb.eg, %bb.ef, %bb.cd, %.critedge294, %bb.el, %.thread677.a, %bb.dv, %bb.cl, %bb.dw, %bb.cs, %bb.cm, %.thread452
  %.sroa.0365.1 = phi ptr [ null, %bb.el ], [ %i.t, %bb.cm ], [ %i.t, %.thread452 ], [ %i.t, %bb.dw ], [ %i.t, %bb.cs ], [ null, %bb.dv ], [ null, %bb.cl ], [ %i.t, %.thread677.a ], [ %i.t, %bb.ef ], [ %i.t, %bb.cd ], [ %i.t, %bb.eg ], [ %i.t, %.critedge294 ], [ %i.t, %bb.bc ], [ %i.t, %bb.an ], [ %i.t, %.critedge296 ], [ %i.t, %bb.ci ]
  %.13 = phi ptr [ %i.sq, %bb.el ], [ null, %bb.cm ], [ null, %.thread452 ], [ null, %bb.dw ], [ null, %bb.cs ], [ %i.re, %bb.dv ], [ %i.jt, %bb.cl ], [ null, %.thread677.a ], [ null, %bb.ef ], [ null, %bb.cd ], [ null, %bb.eg ], [ null, %.critedge294 ], [ null, %bb.bc ], [ null, %bb.an ], [ null, %.critedge296 ], [ null, %bb.ci ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350: ; preds = %.loopexit483.loopexit, %.loopexit483.loopexit.split-lp, %.loopexit480, %.loopexit.split-lp, %.loopexit.split-lp484, %bb.eh, %bb.eo, %bb.dz, %bb.ea, %bb.ad, %.body, %bb.ao, %bb.cg, %bb.bm, %bb.bt, %bb.bh, %bb.ct, %bb.dx, %bb.cn, %bb.cj
  %.pn281 = phi { ptr, i32 } [ %i.jv, %bb.cn ], [ %.pn256, %bb.cg ], [ %i.rg, %bb.dx ], [ %i.jp, %bb.cj ], [ %i.kf, %bb.ct ], [ %i.cm, %bb.ao ], [ %i.bo, %bb.ad ], [ %eh.lpad-body, %.body ], [ %lpad.loopexit.split-lp604, %.loopexit483.loopexit.split-lp ], [ %i.gz, %bb.bm ], [ %i.if, %bb.bt ], [ %i.gc, %bb.bh ], [ %lpad.loopexit.split-lp486, %.loopexit.split-lp484 ], [ %i.rr, %bb.ea ], [ %i.rq, %bb.dz ], [ %i.sg, %bb.eh ], [ %.pn273, %bb.eo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit480 ], [ %lpad.loopexit603, %.loopexit483.loopexit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ep

.thread697:                                       ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.thread689

_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread: ; preds = %bb.x, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit
  %.sroa.0365.2.ph.ph = phi ptr [ %i.t, %bb.x ], [ %.sroa.0365.1, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit ] ; 2 uses
  %.14.ph.ph = phi ptr [ null, %bb.x ], [ %.13, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit ] ; 2 uses
  %.pr.pr = load ptr, ptr %4, align 8, !tbaa !59  ; 2 uses
  %i.sz = icmp eq ptr %.pr.pr, null
  br i1 %i.sz, label %bb.er, label %.thread678

.thread678:                                       ; preds = %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread
  %.14683.a = phi ptr [ %.14.ph.ph, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ null, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit ]
  %.sroa.0365.2681.a = phi ptr [ %.sroa.0365.2.ph.ph, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ %i.t, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit ]
  %i.ta = phi ptr [ %.pr.pr, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ %i.ab, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit ] ; 2 uses
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load ptr, ptr %i.tc, align 8
  call void %i.td(ptr noundef nonnull align 8 dereferenceable(168) %i.ta) #16, !inline_history !79
  br label %bb.er

bb.ep:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350, %bb.v
  %.pn281.pn.pn = phi { ptr, i32 } [ %.pn281, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit350 ], [ %i.am, %bb.v ]
  %i.te = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.tg = load ptr, ptr %i.te, align 8, !tbaa !8
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(168) %i.te) #16, !inline_history !79
  br label %bb.es

bb.er:                                            ; preds = %.thread678, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread
  %.14684 = phi ptr [ %.14.ph.ph, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ %.14683.a, %.thread678 ] ; 2 uses
  %.sroa.0365.2682 = phi ptr [ %.sroa.0365.2.ph.ph, %_ZN6icu_7812LocalPointerINS_15AlphabeticIndex6BucketEEC2EPS2_R10UErrorCode.exit.thread ], [ %.sroa.0365.2681.a, %.thread678 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.tj = icmp eq ptr %.sroa.0365.2682, null
  br i1 %i.tj, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit352, label %.thread689

.thread689:                                       ; preds = %.thread697, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit, %bb.er
  %.15693 = phi ptr [ %.14684, %bb.er ], [ null, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit ], [ null, %.thread697 ]
  %.sroa.0365.3692 = phi ptr [ %.sroa.0365.2682, %bb.er ], [ %i.t, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit ], [ %i.t, %.thread697 ] ; 2 uses
  %i.tk = load ptr, ptr %.sroa.0365.3692, align 8, !tbaa !8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8
  call void %i.tm(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0365.3692) #16, !inline_history !78
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit352

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit352: ; preds = %bb.n, %bb.m, %bb.er, %.thread689
  %.15688 = phi ptr [ %.15693, %.thread689 ], [ %.14684, %bb.er ], [ null, %bb.m ], [ null, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_ZN6icu_789UVector64D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ew

bb.es:                                            ; preds = %bb.ep, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.thread474, %.thread470
  %.pn281.pn.pn.pn.pn472 = phi { ptr, i32 } [ %i.z, %.thread470 ], [ %.pn281.pn.pn, %bb.es ], [ %i.al, %.thread474 ]
  %i.tn = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = load ptr, ptr %i.to, align 8
  call void %i.tp(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #16, !inline_history !78
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit353

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit353: ; preds = %bb.et, %bb.o
  %.pn281.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn281.pn.pn.pn.pn472, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.eu

bb.eu:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit353, %bb.j
  %.pn281.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn.pn, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit353 ], [ %i.s, %bb.j ]
  call void @_ZN6icu_789UVector64D1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #16
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.i
  %.pn281.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn.pn.pn, %bb.eu ], [ %i.r, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ex

bb.ew:                                            ; preds = %bb.c, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit352
  %.16 = phi ptr [ %.15688, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit352 ], [ null, %bb.c ]
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %.16

bb.ex:                                            ; preds = %bb.ev, %bb.d
  %.pn281.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn.pn.pn.pn, %bb.ev ], [ %i.k, %bb.d ]
  call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn281.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZNK6icu_7817RuleBasedCollator5cloneEv(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #4

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7815AlphabeticIndex14getBucketCountER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_7815AlphabeticIndex11initBucketsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.a = load i32, ptr %1, align 4, !tbaa !43
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815AlphabeticIndex11initBucketsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !43
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit66

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %.not56 = icmp eq ptr %i.d, null
  br i1 %.not56, label %bb.c, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit66

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZNK6icu_7815AlphabeticIndex16createBucketListER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  store ptr %i.e, ptr %i.c, align 8, !tbaa !52
  %i.f = load i32, ptr %1, align 4, !tbaa !43
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit66

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit66, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit66, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  tail call void @_ZN6icu_787UVector19sortWithUComparatorEPFiPKvS2_S2_ES2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull @_ZN6icu_78L15recordCompareFnEPKvS1_S1_, ptr noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.r = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i32 noundef 0)
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !21
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i32 noundef 1) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.049 = phi ptr [ %i.z, %bb.g ], [ null, %bb.f ]
  %.040 = phi ptr [ %i.y, %bb.g ], [ null, %bb.f ]
  %.038 = phi i32 [ 2, %bb.g ], [ 1, %bb.f ]
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !34  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !21
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph89, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit66

.lr.ph89:                                         ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph89, %.critedge65
  %i.af = phi ptr [ %i.aa, %.lr.ph89 ], [ %i.bk, %.critedge65 ]
  %.088 = phi ptr [ %i.r, %.lr.ph89 ], [ %.1.lcssa, %.critedge65 ] ; 2 uses
  %.13987 = phi i32 [ %.038, %.lr.ph89 ], [ %.2.lcssa, %.critedge65 ] ; 3 uses
  %.14186 = phi ptr [ %.040, %.lr.ph89 ], [ %.242.lcssa, %.critedge65 ] ; 3 uses
  %.04885 = phi i32 [ 0, %.lr.ph89 ], [ %i.bj, %.critedge65 ] ; 2 uses
  %.15084 = phi ptr [ %.049, %.lr.ph89 ], [ %.251.lcssa, %.critedge65 ] ; 3 uses
  %i.ag = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i32 noundef %.04885) ; 2 uses
  %.not5971 = icmp eq ptr %.15084, null
  br i1 %.not5971, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.aj = tail call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %.15084, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %.lr.ph105, label %.critedge

.lr.ph105:                                        ; preds = %.lr.ph, %bb.j
  %.24273104 = phi ptr [ %i.as, %bb.j ], [ %.14186, %.lr.ph ] ; 3 uses
  %.274103 = phi i32 [ %i.ar, %bb.j ], [ %.13987, %.lr.ph ] ; 4 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !21
  %i.aq = icmp slt i32 %.274103, %i.ap
  br i1 %i.aq, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph105
  %i.ar = add nsw i32 %.274103, 1                 ; 2 uses
  %i.as = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i32 noundef %.274103) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.av = tail call noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %.lr.ph105, label %.critedge, !llvm.loop !80

.critedge:                                        ; preds = %bb.j, %.lr.ph105, %.lr.ph, %bb.i
  %.251.lcssa = phi ptr [ null, %bb.i ], [ %.15084, %.lr.ph ], [ null, %.lr.ph105 ], [ %i.at, %bb.j ]
  %.242.lcssa = phi ptr [ %.14186, %bb.i ], [ %.14186, %.lr.ph ], [ %.24273104, %.lr.ph105 ], [ %i.as, %bb.j ]
  %.2.lcssa = phi i32 [ %.13987, %bb.i ], [ %.13987, %.lr.ph ], [ %.274103, %.lr.ph105 ], [ %i.ar, %bb.j ]
  %.1.lcssa = phi ptr [ %.088, %bb.i ], [ %.088, %.lr.ph ], [ %.24273104, %.lr.ph105 ], [ %.24273104, %bb.j ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %.not60 = icmp eq ptr %i.ay, null
  %spec.select = select i1 %.not60, ptr %.1.lcssa, ptr %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 160 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !81 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.k, label %.critedge65

bb.k:                                             ; preds = %.critedge
  %i.bc = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #16 ; 7 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit unwind label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.be = load i32, ptr %1, align 4
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit66, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 7, ptr %1, align 4, !tbaa !43
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit66

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.l
  %.pre = load i32, ptr %1, align 4, !tbaa !43
  %i.bg = icmp slt i32 %.pre, 1
  br i1 %i.bg, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %.critedge63

bb.o:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup
end_hunk_2
