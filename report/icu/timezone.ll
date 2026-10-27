Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/timezone?download=true
inline.NumInlined: 303
inline.NumDeleted: 78
begin_hunk_0_@_ZN6icu_788TimeZone12getWindowsIDERKNS_13UnicodeStringERS1_R10UErrorCode:bb.a
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %thread-pre-split, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.al

.loopexit.split-lp115.loopexit.split-lp:          ; preds = %.loopexit.split-lp115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %.pn96.pn = phi { ptr, i32 } [ %.pn.pn, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp222, %.loopexit.split-lp115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp ]
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp115.loopexit.split-lp, %bb.i
  %.pn96.pn.pn = phi { ptr, i32 } [ %.pn96.pn, %.loopexit.split-lp115.loopexit.split-lp ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.am

bb.al:                                            ; preds = %bb.d, %bb.e, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.f
  %.pn96.pn.pn.pn = phi { ptr, i32 } [ %.pn96.pn.pn, %bb.ak ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn96.pn.pn.pn

bb.an:                                            ; preds = %bb.a, %bb.al
  ret ptr %1
}

declare signext i8 @ures_hasNext_78(ptr noundef) local_unnamed_addr #2

declare ptr @ures_getNextResource_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ures_getString_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @u_strchr_78(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @ures_getKey_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ures_close_78(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788TimeZone17getIDForWindowsIDERKNS_13UnicodeStringEPKcRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = and i16 %i.e, 1
  %.not.i = icmp eq i16 %i.f, 0
  %i.g = and i16 %i.e, 30
  %storemerge.i = select i1 %.not.i, i16 %i.g, i16 2
  store i16 %storemerge.i, ptr %i.d, align 8, !tbaa !17
  %i.h = load i32, ptr %3, align 4, !tbaa !20
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @ures_openDirect_78(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) ; 10 uses
  %i.k = tail call ptr @ures_getByKey_78(ptr noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef %i.j, ptr noundef nonnull %3) ; 0 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !20
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ures_close_78(ptr noundef %i.j)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i16, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = ashr i16 %i.o, 5
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = select i1 %i.p, i32 %i.t, i32 %i.r
  %i.v = call noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.u, ptr noundef nonnull %i.b, i32 noundef 127, i32 noundef 0) ; 3 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = icmp sgt i32 %i.v, 127
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @ures_close_78(ptr noundef %i.j)
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !17
  %i.aa = call ptr @ures_getByKey_78(ptr noundef %i.j, ptr noundef nonnull %i.b, ptr noundef %i.j, ptr noundef nonnull %i.a) ; 0 uses
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !20
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ures_close_78(ptr noundef %i.j)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %.not48 = icmp eq ptr %1, null
  br i1 %.not48, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call ptr @ures_getStringByKey_78(ptr noundef %i.j, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) ; 4 uses
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !20
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call ptr @u_strchr_78(ptr noundef %i.ad, i16 noundef zeroext 32) ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.ad, i32 noundef -1) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ad to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 1
  %i.an = trunc i64 %i.am to i32
  %i.ao = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.ad, i32 noundef %i.an) ; 0 uses
  br label %bb.n

.critedge:                                        ; preds = %bb.i, %bb.h
  %i.ap = call ptr @ures_getStringByKey_78(ptr noundef %i.j, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.c, ptr noundef nonnull %3)
  %i.aq = load i32, ptr %3, align 4, !tbaa !20
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.as = load i32, ptr %i.c, align 4, !tbaa !21
  %i.at = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.ap, i32 noundef %i.as) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %.critedge, %bb.m
  call void @ures_close_78(ptr noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.o, %bb.a
  ret ptr %2
}

declare ptr @ures_getStringByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6icu_7813TZEnumeration5cloneEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 144) #19 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6icu_7813TZEnumerationC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %i.a)
          to label %.noexc unwind label %bb.i, !inline_history !63

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813TZEnumerationE, i64 16), ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 140 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.l) #21
          to label %bb.d unwind label %bb.f, !inline_history !63 ; 4 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %i.d, align 8, !tbaa !31
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  store i32 %i.n, ptr %i.e, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.o, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33
  store i32 %i.s, ptr %i.f, align 4, !tbaa !33
  store ptr %i.m, ptr %i.c, align 8, !tbaa !34
  br label %_ZN6icu_7813TZEnumerationC2ERKS0_.exit

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(144) %i.a) #19, !inline_history !63
  br label %.body

bb.g:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 8, !tbaa !35
  store i32 0, ptr %i.f, align 4, !tbaa !33
  store ptr null, ptr %i.c, align 8, !tbaa !34
  br label %_ZN6icu_7813TZEnumerationC2ERKS0_.exit

bb.h:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  store ptr %i.v, ptr %i.c, align 8, !tbaa !34
  store ptr null, ptr %i.d, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load <2 x i32>, ptr %i.w, align 8, !tbaa !21
  store <2 x i32> %i.x, ptr %i.e, align 8, !tbaa !21
  br label %_ZN6icu_7813TZEnumerationC2ERKS0_.exit

_ZN6icu_7813TZEnumerationC2ERKS0_.exit:           ; preds = %bb.h, %bb.g, %bb.e, %bb.a
  ret ptr %i.a

bb.i:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.t, %bb.f ]
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK6icu_7813TZEnumeration5countER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8
  %.inv = icmp sgt i32 %i.a, 0
  %i.d = select i1 %.inv, i32 0, i32 %i.c
  ret i32 %i.d
}

declare noundef ptr @_ZN6icu_7817StringEnumeration4nextEPiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef ptr @_ZN6icu_7817StringEnumeration5unextEPiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6icu_7813TZEnumeration5snextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !20
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = tail call noundef signext i8 @_ZN6icu_7813TZEnumeration5getIDEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !33
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.e, align 4, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7813TZEnumeration5resetER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.a, align 4, !tbaa !33
  ret void
}

declare noundef zeroext i1 @_ZNK6icu_7817StringEnumerationeqERKS0_(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK6icu_7817StringEnumerationneERKS0_(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

declare noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN6icu_7812_GLOBAL__N_120createSystemTimeZoneERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::StackUResourceBundle", align 8 ; 8 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !20
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN6icu_7820StackUResourceBundleC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %2)
  %i.c = invoke fastcc noundef ptr @_ZN6icu_78L17openOlsonResourceERKNS_13UnicodeStringER15UResourceBundleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 4, !tbaa !20
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 224) #19 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6icu_7813OlsonTimeZoneC1EPK15UResourceBundleS3_RKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  store i32 7, ptr %1, align 4, !tbaa !20
  br label %bb.i

bb.g:                                             ; preds = %bb.i, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #19
  br label %bb.n

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.019 = phi ptr [ null, %bb.f ], [ null, %bb.c ], [ %i.f, %bb.e ] ; 4 uses
  invoke void @ures_close_78(ptr noundef %i.c)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.j = load i32, ptr %1, align 4, !tbaa !20
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = icmp eq ptr %.019, null
  br i1 %i.l, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = load ptr, ptr %.019, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(72) %.019) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.1 = phi ptr [ %.019, %bb.j ], [ null, %bb.l ], [ null, %bb.k ]
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.o

bb.n:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.i, %bb.h ]
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.a, %bb.m
  %.0 = phi ptr [ %.1, %bb.m ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZN6icu_7813OlsonTimeZoneC1EPK15UResourceBundleS3_RKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare void @umtx_lock_78(ptr noundef) local_unnamed_addr #2

declare void @umtx_unlock_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6icu_7813TZEnumeration6getMapE19USystemTimeZoneTypeRiR10UErrorCode(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !21
  %i.a = load i32, ptr %2, align 4, !tbaa !20
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %bb.r [
    i32 0, label %bb.c
    i32 1, label %bb.h
    i32 2, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load atomic i32, ptr @_ZL20gSystemZonesInitOnce acquire, align 4
  %.not11.i = icmp eq i32 %i.c, 2
  br i1 %.not11.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL20gSystemZonesInitOnce)
  %.not12.i = icmp eq i8 %i.d, 0
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN6icu_78L7initMapE19USystemTimeZoneTypeR10UErrorCode(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2), !inline_history !1
end_hunk_0
