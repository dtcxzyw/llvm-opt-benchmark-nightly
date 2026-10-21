Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/timezone?download=true
inline.NumInlined: 303
inline.NumDeleted: 78
begin_hunk_0_@_ZN6icu_788TimeZone15getEquivalentIDERKNS_13UnicodeStringEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #19
  resume { ptr, i32 } %.pn34.pn.pn
}

declare ptr @ures_getStringByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_788TimeZone6findIDERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.b = call ptr @ures_openDirect_78(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = call ptr @ures_getByKey_78(ptr noundef %i.b, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef nonnull %i.a) ; 3 uses
  %i.d = call fastcc noundef i32 @_ZN6icu_78L17findInStringArrayEP15UResourceBundleRKNS_13UnicodeStringER10UErrorCode(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.e = call ptr @ures_getStringByIndex_78(ptr noundef %i.c, i32 noundef %i.d, ptr noundef null, ptr noundef nonnull %i.a)
  %i.f = load i32, ptr %i.a, align 4, !tbaa !20
  %i.g = icmp slt i32 %i.f, 1
  %spec.select = select i1 %i.g, ptr %i.e, ptr null
  call void @ures_close_78(ptr noundef %i.c)
  call void @ures_close_78(ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %spec.select
}

declare ptr @ures_openDirect_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -1, 1073741824) i32 @_ZN6icu_78L17findInStringArrayEP15UResourceBundleRKNS_13UnicodeStringER10UErrorCode(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i16 2, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = invoke i32 @ures_getSize_78(ptr noundef %0)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !20
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = icmp slt i32 %i.c, 1
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %.029 = phi i32 [ %.029., %_ZNK6icu_7813UnicodeString7compareERKS0_.exit ], [ 0, %.preheader ] ; 2 uses
  %.027 = phi i32 [ %..027, %_ZNK6icu_7813UnicodeString7compareERKS0_.exit ], [ %i.c, %.preheader ] ; 2 uses
  %.023 = phi i32 [ %i.m, %_ZNK6icu_7813UnicodeString7compareERKS0_.exit ], [ 2147483647, %.preheader ]
  %i.l = add nuw nsw i32 %.027, %.029
  %i.m = lshr i32 %i.l, 1                         ; 6 uses
  %i.n = icmp eq i32 %.023, %i.m
  br i1 %i.n, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = invoke ptr @ures_getStringByIndex_78(ptr noundef %0, i32 noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %2)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %2, align 4, !tbaa !20
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %4, align 8, !tbaa !13
  %i.r = load i32, ptr %i.a, align 4, !tbaa !21
  %i.s = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext 1, ptr noundef nonnull align 8 %4, i32 noundef %i.r)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %4, align 8, !tbaa !13
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.t) #19, !srcloc !14
  %i.u = load i16, ptr %i.g, align 8, !tbaa !17   ; 3 uses
  %i.v = load i16, ptr %i.b, align 8, !tbaa !17   ; 4 uses
  %i.w = and i16 %i.v, 1
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = trunc i16 %i.u to i8
  %i.y = and i8 %i.x, 1
  %i.z = xor i8 %i.y, 1
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

.sink.split.i.i.i:                                ; preds = %bb.g
  %i.aa = icmp slt i16 %i.v, 0
  %i.ab = load i32, ptr %i.h, align 4
  %i.ac = ashr i16 %i.v, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = select i1 %i.aa, i32 %i.ab, i32 %i.ad   ; 2 uses
  %i.af = icmp slt i16 %i.u, 0
  %i.ag = load i32, ptr %i.i, align 4
  %i.ah = ashr i16 %i.u, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = select i1 %i.af, i32 %i.ag, i32 %i.ai
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.ae, i32 0)
  %.010.i.i = call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.ak = and i16 %i.v, 2
  %.not.i.i.i = icmp eq i16 %i.ak, 0
  %i.al = load ptr, ptr %i.k, align 8
  %i.am = select i1 %.not.i.i.i, ptr %i.al, ptr %i.j
  %i.an = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.aj, ptr noundef %i.am, i32 noundef %spec.select.i.i, i32 noundef %.010.i.i)
          to label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6icu_7813UnicodeString7compareERKS0_.exit:    ; preds = %bb.h, %.sink.split.i.i.i
  %.0.i.i = phi i8 [ %i.z, %bb.h ], [ %i.an, %.sink.split.i.i.i ] ; 2 uses
  %.not40 = icmp eq i8 %.0.i.i, 0
  %i.ao = icmp slt i8 %.0.i.i, 0                  ; 2 uses
  %.029. = select i1 %i.ao, i32 %.029, i32 %i.m
  %..027 = select i1 %i.ao, i32 %i.m, i32 %.027
  br i1 %.not40, label %.loopexit, label %bb.c, !llvm.loop !53

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8, !tbaa !13
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.aq) #19, !srcloc !14
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.sink.split.i.i.i, %bb.d, %bb.a
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.c, %bb.e, %_ZNK6icu_7813UnicodeString7compareERKS0_.exit, %bb.b
  %.234 = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.e ], [ %i.m, %_ZNK6icu_7813UnicodeString7compareERKS0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.234

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %lpad.loopexit.split-lp44, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_788TimeZone16dereferOlsonLinkERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.b = call ptr @ures_openDirect_78(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) ; 8 uses
  %i.c = call ptr @ures_getByKey_78(ptr noundef %i.b, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef nonnull %i.a) ; 4 uses
  %i.d = call fastcc noundef i32 @_ZN6icu_78L17findInStringArrayEP15UResourceBundleRKNS_13UnicodeStringER10UErrorCode(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %i.e = call ptr @ures_getStringByIndex_78(ptr noundef %i.c, i32 noundef %i.d, ptr noundef null, ptr noundef nonnull %i.a) ; 3 uses
  %i.f = call ptr @ures_getByKey_78(ptr noundef %i.b, ptr noundef nonnull @.str.5, ptr noundef %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %i.g = call ptr @ures_getByIndex_78(ptr noundef %i.b, i32 noundef %i.d, ptr noundef %i.b, ptr noundef nonnull %i.a) ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !20
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @ures_getType_78(ptr noundef %i.b)
  %i.k = icmp eq i32 %i.j, 7
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @ures_getInt_78(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.m = call ptr @ures_getStringByIndex_78(ptr noundef %i.c, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.a)
  %i.n = load i32, ptr %i.a, align 4, !tbaa !20
  %i.o = icmp sgt i32 %i.n, 0
  %spec.select = select i1 %i.o, ptr %i.e, ptr %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi ptr [ %spec.select, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  call void @ures_close_78(ptr noundef %i.c)
  call void @ures_close_78(ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.1
}

declare ptr @ures_getByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ures_getType_78(ptr noundef) local_unnamed_addr #2

declare i32 @ures_getInt_78(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_788TimeZone9getRegionERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %1 = call noundef ptr @_ZN6icu_788TimeZone9getRegionERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_788TimeZone9getRegionERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !20
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ures_openDirect_78(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) ; 3 uses
  %i.d = tail call ptr @ures_getByKey_78(ptr noundef %i.c, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef nonnull %1) ; 4 uses
  %i.e = tail call fastcc noundef i32 @_ZN6icu_78L17findInStringArrayEP15UResourceBundleRKNS_13UnicodeStringER10UErrorCode(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.f = tail call ptr @ures_getByKey_78(ptr noundef %i.c, ptr noundef nonnull @.str.6, ptr noundef %i.d, ptr noundef nonnull %1) ; 0 uses
  %i.g = tail call ptr @ures_getStringByIndex_78(ptr noundef %i.d, i32 noundef %i.e, ptr noundef null, ptr noundef nonnull %1)
  %i.h = load i32, ptr %1, align 4, !tbaa !20
  %i.i = icmp sgt i32 %i.h, 0
  %spec.select = select i1 %i.i, ptr null, ptr %i.g
  tail call void @ures_close_78(ptr noundef %i.d)
  tail call void @ures_close_78(ptr noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.018 = phi ptr [ %spec.select, %bb.b ], [ null, %bb.a ]
  ret ptr %.018
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_788TimeZone9getRegionERKNS_13UnicodeStringEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef initializes((0, 1)) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store i8 0, ptr %1, align 1, !tbaa !17
  %i.b = load i32, ptr %3, align 4, !tbaa !20
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h
  %i.l = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 0, i32 noundef %i.k, ptr noundef nonnull @_ZL15UNKNOWN_ZONE_ID, i32 noundef 0, i32 noundef 11)
          to label %_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi.exit unwind label %4

_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi.exit: ; preds = %bb.b
  %.not25 = icmp eq i8 %i.l, 0
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZL15UNKNOWN_ZONE_ID) #19, !srcloc !14
  br i1 %.not25, label %.thread, label %bb.c

4:                                                ; preds = %bb.b
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZL15UNKNOWN_ZONE_ID) #19, !srcloc !14
  resume { ptr, i32 } %5

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %6 = call noundef ptr @_ZN6icu_788TimeZone9getRegionERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.m = icmp eq ptr %6, null
  br i1 %i.m, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZNK6icu_7813UnicodeString7compareENS_14ConstChar16PtrEi.exit, %bb.c
  store i32 1, ptr %3, align 4, !tbaa !20
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @u_strlen_78(ptr noundef nonnull %6) ; 4 uses
  %i.o = call i32 @uprv_min_78(i32 noundef %i.n, i32 noundef %2)
  call void @u_UCharsToChars_78(ptr noundef nonnull %6, ptr noundef nonnull %1, i32 noundef %i.o)
  %i.p = icmp slt i32 %2, %i.n
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 15, ptr %3, align 4, !tbaa !20
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = call i32 @u_terminateChars_78(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.n, ptr noundef nonnull %3)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.e, %bb.f, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %.thread ], [ %i.n, %bb.e ], [ %i.q, %bb.f ]
  ret i32 %.1
}

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

declare void @u_UCharsToChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uprv_min_78(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @u_terminateChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788TimeZone14getDisplayNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788TimeZone14getDisplayNameEaNS0_12EDisplayTypeERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 noundef signext 0, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788TimeZone14getDisplayNameEaNS0_12EDisplayTypeERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 noundef signext %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull returned align 8 dereferenceable(64) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.c = tail call noundef double @_ZN6icu_788Calendar6getNowEv() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !58
  %i.d = icmp eq i32 %2, 3
  switch i32 %2, label %bb.q [
    i32 8, label %bb.b
    i32 4, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = call noundef ptr @_ZN6icu_7814TimeZoneFormat14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 11 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !20
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.p

_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit: ; preds = %.invoke, %bb.o, %bb.n, %bb.l, %bb.j, %bb.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit102.sink.split

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %bb.f [
    i32 8, label %.invoke
    i32 4, label %bb.d
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %.invoke

bb.e:                                             ; preds = %bb.c
  br label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.d, %bb.e
  %i.i = phi i32 [ 2, %bb.e ], [ 1, %bb.d ], [ 0, %bb.c ]
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(904) %i.e, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(72) %0, double noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.b)
          to label %bb.g unwind label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit ; 0 uses

bb.f:                                             ; preds = %bb.c
  call void @abort() #20
  unreachable

bb.g:                                             ; preds = %.invoke
  %i.n = icmp ne i8 %1, 0                         ; 2 uses
  %i.o = load i32, ptr %i.b, align 4              ; 2 uses
  %i.p = icmp eq i32 %i.o, 1
  %or.cond7 = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i32 %i.o, 2
  %or.cond9.not = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond9.not, label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit99.thread129, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.j unwind label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.k unwind label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i32 %i.y, %i.u
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.m unwind label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = phi i32 [ %i.z, %bb.k ], [ %i.ad, %bb.l ] ; 2 uses
  br i1 %i.d, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814TimeZoneFormat29formatOffsetShortLocalizedGMTEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(904) %i.e, i32 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit99.thread129 unwind label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit ; 0 uses

bb.o:                                             ; preds = %bb.m
  %i.ag = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814TimeZoneFormat24formatOffsetLocalizedGMTEiRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(904) %i.e, i32 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit99.thread129 unwind label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit ; 0 uses

bb.p:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !17 ; 2 uses
  %i.aj = and i16 %i.ai, 1
  %.not.i = icmp eq i16 %i.aj, 0
  %i.ak = and i16 %i.ai, 30
  %storemerge.i = select i1 %.not.i, i16 %i.ak, i16 2
  store i16 %storemerge.i, ptr %i.ah, align 8, !tbaa !17
  %i.al = icmp eq ptr %i.e, null
  br i1 %i.al, label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit99.thread, label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit99

_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit99: ; preds = %bb.p
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(904) %i.e) #19, !inline_history !54
  br label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit99.thread

bb.q:                                             ; preds = %bb.a
  %i.ap = add i32 %2, -5
  %or.cond11 = icmp ult i32 %i.ap, 2
  br i1 %or.cond11, label %bb.r, label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.aq = call noundef ptr @_ZN6icu_7814TimeZoneFormat14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 10 uses
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !20
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %bb.t, label %bb.ad

.thread131:                                       ; preds = %bb.ac, %bb.ab
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit102.sink.split

bb.s:                                             ; preds = %bb.z, %bb.x, %bb.w, %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = icmp eq ptr %i.aq, null
  br i1 %i.at, label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit102, label %_ZN6icu_7812LocalPointerINS_14TimeZoneFormatEED2Ev.exit102.sink.split

bb.t:                                             ; preds = %bb.r
  %.not93 = icmp eq i8 %1, 0
  br i1 %.not93, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr %0, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef signext i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.v unwind label %bb.s

bb.v:                                             ; preds = %bb.u
  %.not94 = icmp eq i8 %i.ax, 0
  br i1 %.not94, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %0, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.x unwind label %bb.s

bb.x:                                             ; preds = %bb.w
  %i.bc = load ptr, ptr %0, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
end_hunk_0
