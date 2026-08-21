inline.NumInlined: 358
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK6icu_7825RelativeDateTimeCacheData21getAbsoluteUnitStringEi17UDateAbsoluteUnit14UDateDirection:bb.a
bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %i.j, %bb.c ]
  %i.e = sext i32 %.0 to i64                      ; 2 uses
  %gep15 = getelementptr [5760 x i8], ptr %invariant.gep14, i64 %i.e ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %gep15, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !25
  %i.h = icmp ugt i16 %i.g, 31
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26   ; 2 uses
  %.not12 = icmp eq i32 %i.j, -1
  br i1 %.not12, label %bb.d, label %bb.b, !llvm.loop !27

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 23064
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.010 = phi ptr [ %i.k, %bb.d ], [ %gep15, %bb.b ]
  ret ptr %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6icu_7825RelativeDateTimeCacheData24getRelativeUnitFormatterEi17UDateRelativeUnitii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23152) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ult i32 %2, 7
  br i1 %i.a, label %switch.lookup, label %_ZNK6icu_7825RelativeDateTimeCacheData32getRelativeDateTimeUnitFormatterEi21URelativeDateTimeUnitii.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK6icu_7825RelativeDateTimeFormatter10formatImplEd14UDateDirection17UDateRelativeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17304
  %invariant.gep.i = getelementptr [128 x i8], ptr %i.c, i64 %switch.ext
  %i.d = sext i32 %3 to i64
  %invariant.gep30.i = getelementptr [64 x i8], ptr %invariant.gep.i, i64 %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 23128
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %switch.lookup
  %.015.i = phi i32 [ %4, %switch.lookup ], [ 5, %bb.e ] ; 2 uses
  %i.f = sext i32 %.015.i to i64
  %invariant.gep32.i = getelementptr [8 x i8], ptr %invariant.gep30.i, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.014.i = phi i32 [ %1, %bb.b ], [ %i.j, %bb.d ]
  %i.g = sext i32 %.014.i to i64                  ; 2 uses
  %gep.i = getelementptr [1920 x i8], ptr %invariant.gep32.i, i64 %i.g
  %i.h = load ptr, ptr %gep.i, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %_ZNK6icu_7825RelativeDateTimeCacheData32getRelativeDateTimeUnitFormatterEi21URelativeDateTimeUnitii.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.j = load i32, ptr %i.i, align 4, !tbaa !26   ; 2 uses
  %.not20.i = icmp eq i32 %i.j, -1
  br i1 %.not20.i, label %bb.e, label %bb.c, !llvm.loop !28

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %.015.i, 5
  br i1 %i.k, label %_ZNK6icu_7825RelativeDateTimeCacheData32getRelativeDateTimeUnitFormatterEi21URelativeDateTimeUnitii.exit, label %bb.b

_ZNK6icu_7825RelativeDateTimeCacheData32getRelativeDateTimeUnitFormatterEi21URelativeDateTimeUnitii.exit: ; preds = %bb.e, %bb.c, %bb.a
  %.06 = phi ptr [ null, %bb.a ], [ %i.h, %bb.c ], [ null, %bb.e ]
  ret ptr %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6icu_7825RelativeDateTimeCacheData32getRelativeDateTimeUnitFormatterEi21URelativeDateTimeUnitii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23152) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17304
  %i.b = zext i32 %2 to i64
  %invariant.gep = getelementptr [128 x i8], ptr %i.a, i64 %i.b
  %i.c = sext i32 %3 to i64
  %invariant.gep30 = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 23128
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.015 = phi i32 [ %4, %bb.a ], [ 5, %bb.e ]     ; 2 uses
  %i.e = sext i32 %.015 to i64
  %invariant.gep32 = getelementptr [8 x i8], ptr %invariant.gep30, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.014 = phi i32 [ %1, %bb.b ], [ %i.i, %bb.d ]
  %i.f = sext i32 %.014 to i64                    ; 2 uses
  %gep = getelementptr [1920 x i8], ptr %invariant.gep32, i64 %i.f
  %i.g = load ptr, ptr %gep, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 2 uses
  %.not20 = icmp eq i32 %i.i, -1
  br i1 %.not20, label %bb.e, label %bb.c, !llvm.loop !28

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %.015, 5
  br i1 %i.j, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.e, %bb.c
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7814LocaleCacheKeyINS_25RelativeDateTimeCacheDataEE12createObjectEPKvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %i.b = alloca [33 x i8], align 16               ; 9 uses
  %4 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 15 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %13 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 7 uses
  %14 = alloca %"class.icu_78::Locale", align 8   ; 7 uses
  %15 = alloca %"class.icu_78::DateFormatSymbols", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %16 = alloca %"struct.icu_78::(anonymous namespace)::RelDateTimeFmtDataSink", align 8 ; 10 uses
  %17 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 6 uses
  %18 = alloca %"class.icu_78::UnicodeString", align 8 ; 16 uses
  %19 = alloca %"class.icu_78::Locale", align 8   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.f = tail call ptr @ures_open_78(ptr noundef null, ptr noundef %i.e, ptr noundef nonnull %2) ; 5 uses
  store ptr %i.f, ptr %17, align 8, !tbaa !29
  %i.g = load i32, ptr %2, align 4, !tbaa !32
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %_ZN6icu_7812LocalPointerINS_25RelativeDateTimeCacheDataEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 23152) #16 ; 44 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread58, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7825RelativeDateTimeCacheDataE, i64 16), ptr %i.i, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.idx.i = phi i64 [ 24, %bb.c ], [ %.add.i.5, %bb.d ] ; 7 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store i16 2, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.1, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i16 2, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.2, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i16 2, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.3, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  store i16 2, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.4, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  store i16 2, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.5, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 328
  store i16 2, ptr %i.v, align 8, !tbaa !25
  %.add.i.5 = add nuw nsw i64 %.idx.i, 384        ; 2 uses
  %i.w = icmp samesign eq i64 %.add.i.5, 17304
  br i1 %i.w, label %bb.e, label %bb.d

.thread58:                                        ; preds = %bb.b
  store i32 7, ptr %2, align 4, !tbaa !32
  br label %_ZN6icu_7812LocalPointerINS_25RelativeDateTimeCacheDataEED2Ev.exitthread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 23064
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.x, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 23072
  store i16 2, ptr %i.y, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 23144 ; 3 uses
  store ptr null, ptr %i.z, align 8, !tbaa !10
  %scevgep48.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17304
  %20 = getelementptr inbounds nuw i8, ptr %i.i, i64 23128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5760) %scevgep48.i, i8 0, i64 5760, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSinkE, i64 16), ptr %16, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.i, ptr %i.aa, align 8, !tbaa !34
  store i32 -1, ptr %20, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 23132
  store i32 -1, ptr %i.ab, align 4, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 23136
  store i32 -1, ptr %i.ac, align 8, !tbaa !26
  invoke void @ures_getAllItemsWithFallback_78(ptr noundef %i.f, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %2, align 4, !tbaa !32
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %.thread46

.thread46:                                        ; preds = %bb.f
  call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %.thread52

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  invoke void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef %i.e, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  invoke void @_ZN6icu_7817DateFormatSymbolsC1ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(872) %15, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc.i
  %i.ag = load i32, ptr %2, align 4, !tbaa !32
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %.preheader24.preheader.i.i, label %bb.m

.preheader24.preheader.i.i:                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ai = invoke noundef ptr @_ZNK6icu_7817DateFormatSymbols11getWeekdaysERiNS0_13DtContextTypeENS0_11DtWidthTypeE(ptr noundef nonnull align 8 dereferenceable(872) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, i32 noundef 1)
          to label %.preheader.i.i.preheader unwind label %bb.k ; 7 uses

bb.j:                                             ; preds = %.noexc.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 728
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.am = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.al)
          to label %.preheader.i.i.1 unwind label %.loopexit31.i.i, !llvm.loop !36 ; 0 uses

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 1112
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %i.ap = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.ao)
          to label %.preheader.i.i.2 unwind label %.loopexit31.i.i, !llvm.loop !36 ; 0 uses

.preheader.i.i.2:                                 ; preds = %.preheader.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 1496
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 256
  %i.as = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %i.ar)
          to label %.preheader.i.i.3 unwind label %.loopexit31.i.i, !llvm.loop !36 ; 0 uses

.preheader.i.i.3:                                 ; preds = %.preheader.i.i.2
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 1880
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 320
  %i.av = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.au)
          to label %.preheader.i.i.4 unwind label %.loopexit31.i.i, !llvm.loop !36 ; 0 uses

.preheader.i.i.4:                                 ; preds = %.preheader.i.i.3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 2264
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 384
  %i.ay = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %i.ax)
          to label %.preheader.i.i.5 unwind label %.loopexit31.i.i, !llvm.loop !36 ; 0 uses

.preheader.i.i.5:                                 ; preds = %.preheader.i.i.4
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 2648
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 448
  %i.bb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %.preheader.i.i.6 unwind label %.loopexit31.i.i, !llvm.loop !36 ; 0 uses

.preheader.i.i.6:                                 ; preds = %.preheader.i.i.5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.bc = invoke noundef ptr @_ZNK6icu_7817DateFormatSymbols11getWeekdaysERiNS0_13DtContextTypeENS0_11DtWidthTypeE(ptr noundef nonnull align 8 dereferenceable(872) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, i32 noundef 3)
          to label %.preheader.1.i.i.preheader unwind label %bb.k ; 7 uses

.preheader.1.i.i:                                 ; preds = %.preheader.1.i.i.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 6488
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.bf = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.be)
          to label %.preheader.1.i.i.1 unwind label %.loopexit.split-lp.loopexit.i.i, !llvm.loop !36 ; 0 uses

.preheader.1.i.i.1:                               ; preds = %.preheader.1.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 6872
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 192
  %i.bi = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %i.bh)
          to label %.preheader.1.i.i.2 unwind label %.loopexit.split-lp.loopexit.i.i, !llvm.loop !36 ; 0 uses

.preheader.1.i.i.2:                               ; preds = %.preheader.1.i.i.1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 7256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  %i.bl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 8 dereferenceable(64) %i.bk)
          to label %.preheader.1.i.i.3 unwind label %.loopexit.split-lp.loopexit.i.i, !llvm.loop !36 ; 0 uses

.preheader.1.i.i.3:                               ; preds = %.preheader.1.i.i.2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 7640
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 320
  %i.bo = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %i.bn)
          to label %.preheader.1.i.i.4 unwind label %.loopexit.split-lp.loopexit.i.i, !llvm.loop !36 ; 0 uses

.preheader.1.i.i.4:                               ; preds = %.preheader.1.i.i.3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 8024
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 384
  %i.br = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 8 dereferenceable(64) %i.bq)
          to label %.preheader.1.i.i.5 unwind label %.loopexit.split-lp.loopexit.i.i, !llvm.loop !36 ; 0 uses

.preheader.1.i.i.5:                               ; preds = %.preheader.1.i.i.4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 8408
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 448
  %i.bu = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 dereferenceable(64) %i.bt)
          to label %.preheader.1.i.i.6 unwind label %.loopexit.split-lp.loopexit.i.i, !llvm.loop !36 ; 0 uses

.preheader.1.i.i.6:                               ; preds = %.preheader.1.i.i.5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.bv = invoke noundef ptr @_ZNK6icu_7817DateFormatSymbols11getWeekdaysERiNS0_13DtContextTypeENS0_11DtWidthTypeE(ptr noundef nonnull align 8 dereferenceable(872) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 1, i32 noundef 2)
          to label %.preheader.2.i.i.preheader unwind label %bb.k ; 7 uses

.preheader.1.i.i.preheader:                       ; preds = %.preheader.i.i.6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 6104
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.by = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %i.bx)
          to label %.preheader.1.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !llvm.loop !36 ; 0 uses

.preheader.2.i.i:                                 ; preds = %.preheader.2.i.i.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 12248
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.cb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, ptr noundef nonnull align 8 dereferenceable(64) %i.ca)
          to label %.preheader.2.i.i.1 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !llvm.loop !36 ; 0 uses

.preheader.2.i.i.1:                               ; preds = %.preheader.2.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 12632
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 192
  %i.ce = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %i.cd)
          to label %.preheader.2.i.i.2 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !llvm.loop !36 ; 0 uses

.preheader.2.i.i.2:                               ; preds = %.preheader.2.i.i.1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 13016
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 256
  %i.ch = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %i.cg)
          to label %.preheader.2.i.i.3 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !llvm.loop !36 ; 0 uses

.preheader.2.i.i.3:                               ; preds = %.preheader.2.i.i.2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 13400
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 320
  %i.ck = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ci, ptr noundef nonnull align 8 dereferenceable(64) %i.cj)
          to label %.preheader.2.i.i.4 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !llvm.loop !36 ; 0 uses

.preheader.2.i.i.4:                               ; preds = %.preheader.2.i.i.3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 13784
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 384
  %i.cn = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cl, ptr noundef nonnull align 8 dereferenceable(64) %i.cm)
          to label %.preheader.2.i.i.5 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !llvm.loop !36 ; 0 uses

.preheader.2.i.i.5:                               ; preds = %.preheader.2.i.i.4
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 14168
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 448
  %i.cq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull align 8 dereferenceable(64) %i.cp)
          to label %.preheader.2.i.i.6 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !llvm.loop !36 ; 0 uses

.preheader.2.i.i.6:                               ; preds = %.preheader.2.i.i.5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.m

.preheader.2.i.i.preheader:                       ; preds = %.preheader.1.i.i.6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 11864
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.ct = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cr, ptr noundef nonnull align 8 dereferenceable(64) %i.cs)
          to label %.preheader.2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !llvm.loop !36 ; 0 uses

bb.k:                                             ; preds = %.preheader.1.i.i.6, %.preheader.i.i.6, %.preheader24.preheader.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.preheader.i.i.preheader:                         ; preds = %.preheader24.preheader.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.cx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cv, ptr noundef nonnull align 8 dereferenceable(64) %i.cw)
          to label %.preheader.i.i unwind label %.loopexit31.i.i, !llvm.loop !36 ; 0 uses

.loopexit31.i.i:                                  ; preds = %.preheader.i.i.5, %.preheader.i.i.4, %.preheader.i.i.3, %.preheader.i.i.2, %.preheader.i.i.1, %.preheader.i.i, %.preheader.i.i.preheader
end_hunk_0
