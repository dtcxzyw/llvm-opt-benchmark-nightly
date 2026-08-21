inline.NumInlined: 868
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_786Locale7PayloadaSEOS1_:bb.a
  %i.a = load i8, ptr %1, align 8, !tbaa !19
  switch i8 %i.a, label %bb.e [
    i8 0, label %_ZN6icu_786Locale7Payload4moveEOS1_.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !20
  br label %_ZN6icu_786Locale7Payload4moveEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !24
  store i8 2, ptr %0, align 8, !tbaa !41
  store i8 0, ptr %1, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, ptr noundef nonnull align 1 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) %i.h, i64 6, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.k = load i32, ptr %i.j, align 1
  store i32 %i.k, ptr %i.i, align 1
  br label %_ZN6icu_786Locale7Payload4moveEOS1_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @abort() #26
  unreachable

_ZN6icu_786Locale7Payload4moveEOS1_.exit:         ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN6icu_786Locale7Payload3getINS0_4NestEEEPT_v(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !19
  %i.b = icmp eq i8 %i.a, 1
  %. = select i1 %i.b, ptr %0, ptr null
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN6icu_786Locale7Payload3getINS0_4HeapEEEPT_v(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !19
  %i.b = icmp eq i8 %i.a, 2
  %. = select i1 %i.b, ptr %0, ptr null
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN6icu_786Locale16getStaticClassIDEv() local_unnamed_addr #12 align 2 {
bb.a:
  ret ptr @_ZZN6icu_786Locale16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_786Locale17getDynamicClassIDEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  ret ptr @_ZZN6icu_786Locale16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_786LocaleD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786LocaleE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_786Locale7PayloadD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #25
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_786LocaleD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786LocaleC2Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 9)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786LocaleE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !19
  %i.b = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale4initEPKca(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null, i8 noundef signext 0)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_786Locale7PayloadD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #25
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_786LocaleC2ENS0_11ELocaleTypeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, i8 zeroext %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786LocaleE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786LocaleC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 9)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 19 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786LocaleE, i64 16), ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !19
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %i.d = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.c, %i.d
  %i.e = icmp eq ptr %3, null                     ; 2 uses
  %or.cond3 = and i1 %or.cond, %i.e
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale4initEPKca(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef null, i8 noundef signext 0)
          to label %bb.af unwind label %bb.c      ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !8
  br i1 %i.c, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %or.cond5 = icmp ugt i32 %i.i, 357913941
  br i1 %or.cond5, label %bb.ae, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.055 = phi i32 [ %i.i, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 13 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 40, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i8 0, ptr %i.l, align 4, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 0, ptr %i.m, align 8, !tbaa !43
  store i8 0, ptr %i.j, align 1, !tbaa !19
  %i.n = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %1, i32 noundef %.055, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(60) %5) #25
  br label %.body

_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit:  ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %or.cond7 = icmp ugt i32 %i.q, 357913941
  br i1 %or.cond7, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit
  %.054 = phi i32 [ %i.q, %bb.h ], [ 0, %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit ] ; 2 uses
  br i1 %i.e, label %.critedge, label %.preheader83

.preheader83:                                     ; preds = %bb.i, %.preheader83
  %.060 = phi ptr [ %i.t, %.preheader83 ], [ %3, %bb.i ] ; 7 uses
  %i.r = load i8, ptr %.060, align 1, !tbaa !19
  %i.s = icmp eq i8 %i.r, 95
  %i.t = getelementptr inbounds nuw i8, ptr %.060, i64 1
  br i1 %i.s, label %.preheader83, label %bb.j, !llvm.loop !45

bb.j:                                             ; preds = %.preheader83
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.060) #27 ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %or.cond9 = icmp ugt i32 %i.v, 357913941
  br i1 %or.cond9, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.w = icmp samesign ugt i32 %i.v, 1
  br i1 %i.w, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %8 = and i64 %i.u, 536870911
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %8, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.x = getelementptr i8, ptr %.060, i64 %indvars.iv
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  %i.aa = icmp eq i8 %i.z, 95
  br i1 %i.aa, label %bb.k, label %.critedge.loopexit.split.loop.exit

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ab = icmp sgt i64 %indvars.iv, 2
  br i1 %i.ab, label %.lr.ph, label %.critedge, !llvm.loop !47

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %.critedge.loopexit.split.loop.exit, %.preheader, %bb.i
  %.161 = phi ptr [ null, %bb.i ], [ %.060, %.preheader ], [ %.060, %.critedge.loopexit.split.loop.exit ], [ %.060, %bb.k ]
  %.1 = phi i32 [ 0, %bb.i ], [ %i.v, %.preheader ], [ %9, %.critedge.loopexit.split.loop.exit ], [ 1, %bb.k ] ; 3 uses
  %.not73 = icmp eq ptr %4, null
  br i1 %.not73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #27
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %or.cond11 = icmp ugt i32 %i.ad, 357913941
  br i1 %or.cond11, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.0 = phi i32 [ %i.ad, %bb.l ], [ 0, %.critedge ]
  %.not74 = icmp eq i32 %.1, 0                    ; 2 uses
  %.not75 = icmp eq i32 %.054, 0
  %i.ae = or i32 %.1, %.054
  %or.cond13.not = icmp eq i32 %i.ae, 0
  br i1 %or.cond13.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %.invoke, %bb.z, %bb.r, %bb.aa, %bb.y, %bb.w, %bb.t, %bb.s, %bb.q, %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #25
  br label %.body

bb.p:                                             ; preds = %bb.n, %bb.m
  br i1 %.not75, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef %2)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.ah = load ptr, ptr %6, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %i.ah, i32 noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit unwind label %bb.o ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.r, %bb.p
  br i1 %.not74, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.am = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.al, ptr noundef %.161, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.u unwind label %bb.o       ; 0 uses

bb.u:                                             ; preds = %bb.t, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit
  %.not76 = icmp eq i32 %.0, 0
  br i1 %.not76, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit82, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 61) #27
  %.not77 = icmp eq ptr %i.an, null
  br i1 %.not77, label %bb.w, label %.invoke

bb.w:                                             ; preds = %bb.v
  %i.ao = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.x unwind label %bb.o       ; 0 uses

bb.x:                                             ; preds = %bb.w
  br i1 %.not74, label %.invoke, label %bb.y

.invoke:                                          ; preds = %bb.x, %bb.v
  %i.ap = phi i8 [ 64, %bb.v ], [ 95, %bb.x ]
  %i.aq = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, i8 noundef signext %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.y unwind label %bb.o       ; 0 uses

bb.y:                                             ; preds = %.invoke, %bb.x
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull %4)
          to label %bb.z unwind label %bb.o

bb.z:                                             ; preds = %bb.y
  %i.ar = load ptr, ptr %7, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %i.ar, i32 noundef %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit82 unwind label %bb.o ; 0 uses

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit82: ; preds = %bb.z, %bb.u
  %i.av = load i32, ptr %i.a, align 4, !tbaa !8
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit82
  %i.ax = load ptr, ptr %5, align 8, !tbaa !15
  %i.ay = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale4initEPKca(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.ax, i8 noundef signext 0)
          to label %bb.ab unwind label %bb.o      ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit82, %bb.l, %bb.j, %bb.h
  %i.az = load i8, ptr %i.l, align 4, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ba = load ptr, ptr %5, align 8, !tbaa !15
  invoke void @uprv_free_78(ptr noundef %i.ba)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #26
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.e, %_ZN6icu_7810CharStringD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.af

.body:                                            ; preds = %bb.g, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.o ], [ %i.o, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.b
  ret void

bb.ag:                                            ; preds = %.body, %bb.c
  %.pn80 = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn, %.body ]
  call void @_ZN6icu_786Locale7PayloadD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #25
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %.pn80
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.b, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.d, align 8, !tbaa !43
  store i8 0, ptr %i.a, align 1, !tbaa !19
  %i.e = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(53) %0) #25
  resume { ptr, i32 } %i.f
}

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786LocaleC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786LocaleE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6icu_786Locale7PayloadC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_786LocaleC2EOS0_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786LocaleE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_786Locale7PayloadC1EOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #25
  ret void
}
end_hunk_0
