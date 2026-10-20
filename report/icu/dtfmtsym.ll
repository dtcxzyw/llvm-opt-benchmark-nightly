Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/dtfmtsym?download=true
inline.NumInlined: 665
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 120
begin_hunk_0_@_ZN6icu_7820loadDayPeriodStringsERNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringERiR10UErrorCode:bb.a
  %i.e = invoke noundef ptr @uhash_get_78(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  store i32 10, ptr %1, align 4, !tbaa !25
  %i.f = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef 648) #18 ; 22 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit
  store i64 10, ptr %i.f, align 8
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i16 2, ptr %i.h, align 8, !tbaa !24
  %.ptr.ptr.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.1, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i16 2, ptr %i.i, align 8, !tbaa !24
  %.ptr.ptr.2 = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.2, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i16 2, ptr %i.j, align 8, !tbaa !24
  %.ptr.ptr.3 = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.3, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i16 2, ptr %i.k, align 8, !tbaa !24
  %.ptr.ptr.4 = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.4, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  store i16 2, ptr %i.l, align 8, !tbaa !24
  %.ptr.ptr.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.5, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 336
  store i16 2, ptr %i.m, align 8, !tbaa !24
  %.ptr.ptr.6 = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.6, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  store i16 2, ptr %i.n, align 8, !tbaa !24
  %.ptr.ptr.7 = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.7, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  store i16 2, ptr %i.o, align 8, !tbaa !24
  %.ptr.ptr.8 = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.8, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 528
  store i16 2, ptr %i.p, align 8, !tbaa !24
  %.ptr.ptr.9 = getelementptr inbounds nuw i8, ptr %i.f, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.9, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 592
  store i16 2, ptr %i.q, align 8, !tbaa !24
  %.not51 = icmp eq ptr %i.e, null
  %i.r = load i32, ptr %1, align 4, !tbaa !25
  %i.s = icmp sgt i32 %i.r, 0                     ; 2 uses
  br i1 %.not51, label %.preheader, label %.preheader2

bb.d:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit
  store i32 7, ptr %2, align 4, !tbaa !15
  br label %.loopexit

.preheader2:                                      ; preds = %bb.c
  br i1 %i.s, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.c
  br i1 %i.s, label %.lr.ph6, label %.loopexit

.lr.ph:                                           ; preds = %.preheader2, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_78L13dayPeriodKeysE, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  invoke void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.u, i32 noundef -1, i32 noundef 0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.w = invoke noundef ptr @uhash_get_78(ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit56 unwind label %bb.h ; 2 uses

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit56: ; preds = %bb.e
  %.not52 = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %.ptr.ptr, i64 %indvars.iv ; 2 uses
  br i1 %.not52, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit56
  %i.y = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %bb.j unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %.lr.ph
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.i, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #18
  br label %bb.k

bb.i:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit56
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.x)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !25
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %.loopexit, !llvm.loop !271

bb.k:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.loopexit.split-lp

.lr.ph6:                                          ; preds = %.preheader, %bb.l
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %bb.l ], [ 0, %.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %.ptr.ptr, i64 %indvars.iv10
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph6
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1 ; 2 uses
  %i.af = load i32, ptr %1, align 4, !tbaa !25
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next11, %i.ag
  br i1 %i.ah, label %.lr.ph6, label %.loopexit, !llvm.loop !272

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph6, %bb.b
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.j, %bb.l, %.preheader2, %.preheader, %bb.d
  %.033 = phi ptr [ null, %bb.d ], [ %.ptr.ptr, %.preheader ], [ %.ptr.ptr, %.preheader2 ], [ %.ptr.ptr, %bb.l ], [ %.ptr.ptr, %bb.j ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.m

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn.pn.pn

bb.m:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi ptr [ %.033, %.loopexit ], [ null, %bb.a ]
  ret ptr %.1
}

declare ptr @ures_getLocaleByType_78(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef ptr @_ZN6icu_788EraRules14createInstanceEPKcaR10UErrorCode(ptr noundef, i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_78L8initErasEPPNS_13UnicodeStringERiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringEPK15UResourceBundlePKciR10UErrorCode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %2, ptr %.0.val, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %8 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 6 uses
  %i.b = alloca [12 x i8], align 1                ; 10 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %10 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.d = load i32, ptr %6, align 4, !tbaa !15
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %.0.val, i32 noundef -1, i32 noundef 0)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = invoke noundef ptr @uhash_get_78(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit unwind label %bb.g ; 3 uses

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %.not53 = icmp eq ptr %i.h, null
  br i1 %.not53, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.i = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.h       ; 7 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %8, align 8, !tbaa !121
  %i.j = load i32, ptr %i.a, align 4, !tbaa !15
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = add i32 %5, 1                            ; 4 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = icmp slt i32 %5, -1
  %i.o = shl nsw i64 %i.m, 6                      ; 2 uses
  %i.p = or disjoint i64 %i.o, 8
  %i.q = select i1 %i.n, i64 -1, i64 %i.p
  %i.r = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.q) #18 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.m, ptr %i.r, align 8
  %.ptr56 = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = icmp eq i32 %i.l, 0
  br i1 %i.t, label %.loopexit2.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %i.u = add nsw i64 %i.o, -64                    ; 2 uses
  %i.v = lshr exact i64 %i.u, 6
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.u, 192
  br i1 %i.x, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.w, 576460752303423484
  br label %.preheader

.loopexit2.thread:                                ; preds = %bb.e
  store ptr %.ptr56, ptr %0, align 8, !tbaa !131
  store i32 %i.l, ptr %1, align 4, !tbaa !25
  br label %.loopexit

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.idx = phi i64 [ 8, %.preheader.preheader.new ], [ %.add.3, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  store i16 2, ptr %i.y, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 2 uses
  %.ptr.ptr.1 = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.1, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store i16 2, ptr %i.aa, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 2 uses
  %.ptr.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.2, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  store i16 2, ptr %i.ac, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 2 uses
  %.ptr.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.3, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  store i16 2, ptr %i.ae, align 8, !tbaa !24
  %.add.3 = add nuw nsw i64 %.idx, 256            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit2.unr-lcssa, label %.preheader

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !131
  store i32 7, ptr %6, align 4, !tbaa !15
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit2.unr-lcssa:                             ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit2, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit2.unr-lcssa, %.preheader.preheader
  %.idx.epil.init = phi i64 [ 8, %.preheader.preheader ], [ %.add.3, %.loopexit2.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod43)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.idx.epil = phi i64 [ %.add.epil, %.preheader.epil ], [ %.idx.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %.ptr.ptr.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.epil, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 8
  store i16 2, ptr %i.ah, align 8, !tbaa !24
  %.add.epil = add nuw nsw i64 %.idx.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit2, label %.preheader.epil, !llvm.loop !273

.loopexit2:                                       ; preds = %.preheader.epil, %.loopexit2.unr-lcssa
  store ptr %.ptr56, ptr %0, align 8, !tbaa !131
  store i32 %i.l, ptr %1, align 4, !tbaa !25
  %.not623 = icmp slt i32 %5, 0
  br i1 %.not623, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit2
  %.not641 = icmp eq ptr %i.i, null
  %.not64 = select i1 %i.k, i1 true, i1 %.not641
  %.not64.fr = freeze i1 %.not64
  br i1 %.not64.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %bb.m ], [ 0, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ai = trunc nuw nsw i64 %indvars.iv19 to i32
  %i.aj = invoke i32 @T_CString_integerToString_78(ptr noundef nonnull %i.b, i32 noundef %i.ai, i32 noundef 10)
          to label %bb.i unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.b, i32 noundef %i.aj, i32 noundef 0)
          to label %bb.j unwind label %.split6.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.al = invoke noundef ptr @uhash_get_78(ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.k unwind label %.split9.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %0, align 8, !tbaa !131
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %indvars.iv19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !24 ; 2 uses
  %i.aq = and i16 %i.ap, 1
  %.not.i.us = icmp eq i16 %i.aq, 0
  %i.ar = and i16 %i.ap, 30
  %storemerge.i.us = select i1 %.not.i.us, i16 %i.ar, i16 2
  store i16 %storemerge.i.us, ptr %i.ao, align 8, !tbaa !24
  %.not63.us = icmp eq ptr %i.al, null
  br i1 %.not63.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %0, align 8, !tbaa !131
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %indvars.iv19
  %i.au = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.al)
          to label %bb.m unwind label %.split9.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %12 = trunc nuw i64 %indvars.iv.next20 to i32
  %.not62.us = icmp slt i32 %5, %12
  br i1 %.not62.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !274

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 0, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = invoke i32 @T_CString_integerToString_78(ptr noundef nonnull %i.b, i32 noundef %i.av, i32 noundef 10)
          to label %bb.n unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.b, i32 noundef %i.aw, i32 noundef 0)
          to label %bb.o unwind label %.split6.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.ay = invoke noundef ptr @uhash_get_78(ptr noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.p unwind label %.split9.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr %0, align 8, !tbaa !131
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !24 ; 2 uses
  %i.bd = and i16 %i.bc, 1
  %.not.i = icmp eq i16 %i.bd, 0
  %i.be = and i16 %i.bc, 30
  %storemerge.i = select i1 %.not.i, i16 %i.be, i16 2
  store i16 %storemerge.i, ptr %i.bb, align 8, !tbaa !24
  %.not63 = icmp eq ptr %i.ay, null
  br i1 %.not63, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load ptr, ptr %0, align 8, !tbaa !131
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %i.ay)
          to label %bb.ag unwind label %.split9.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.split.us, %.lr.ph.split
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split6.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.n
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.split6

.split9.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.l, %bb.q, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split9

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.bi = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %i.a)
          to label %bb.s unwind label %bb.x       ; 4 uses

bb.s:                                             ; preds = %bb.r
  store ptr %i.bi, ptr %10, align 8, !tbaa !121
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !15
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.bl = invoke ptr @ures_getString_78(ptr noundef %i.bi, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !15
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %0, align 8, !tbaa !131
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.bo, i64 %indvars.iv
  store ptr %i.bl, ptr %11, align 8, !tbaa !128
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !25
  %i.br = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 noundef signext 0, ptr noundef nonnull align 8 %11, i32 noundef %i.bq)
          to label %bb.w unwind label %bb.z       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %11, align 8, !tbaa !128
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bs) #18, !srcloc !129
  %.pr.pre = load ptr, ptr %10, align 8, !tbaa !121
  br label %bb.aa

bb.x:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.y:                                             ; preds = %bb.t
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %11, align 8, !tbaa !128
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bw) #18, !srcloc !129
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w, %bb.u
  %.pr = phi ptr [ %.pr.pre, %bb.w ], [ %i.bi, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.z ], [ %i.bu, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #18
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa, %bb.s
  %i.bx = phi ptr [ %.pr, %bb.aa ], [ %i.bi, %bb.s ] ; 2 uses
  %.not.i77 = icmp eq ptr %i.bx, null
  br i1 %.not.i77, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @ures_close_78(ptr noundef nonnull %i.bx)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #20
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.bt, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.split9

bb.ag:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.q
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %13 = trunc nuw i64 %indvars.iv.next to i32
  %.not62 = icmp slt i32 %5, %13
  br i1 %.not62, label %.loopexit.loopexit17, label %.lr.ph.split, !llvm.loop !274

.split9:                                          ; preds = %.split9.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af
  %.pn69 = phi { ptr, i32 } [ %.pn.pn, %bb.af ], [ %lpad.loopexit.split-lp, %.split9.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #18
  br label %.split6

.split6:                                          ; preds = %.split6.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split9
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %.split9 ], [ %lpad.loopexit.split-lp39, %.split6.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.split

.split:                                           ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split6
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %.split6 ], [ %lpad.loopexit.split-lp37, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  br label %bb.aj

.loopexit.loopexit17:                             ; preds = %bb.ag
  %.pre = load ptr, ptr %8, align 8, !tbaa !121
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.loopexit2.thread, %.loopexit.loopexit17, %.loopexit2, %bb.f
  %i.ca = phi ptr [ %.pre, %.loopexit.loopexit17 ], [ %i.i, %.loopexit2.thread ], [ %i.i, %.loopexit2 ], [ %i.i, %bb.f ], [ %i.i, %bb.m ] ; 2 uses
  %.not.i78 = icmp eq ptr %i.ca, null
  br i1 %.not.i78, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  invoke void @ures_close_78(ptr noundef nonnull %i.ca)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #20
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79: ; preds = %.loopexit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.al

bb.aj:                                            ; preds = %.split, %bb.h
  %.pn69.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %.split ], [ %i.ag, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.am

bb.ak:                                            ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit
  store i32 2, ptr %6, align 4, !tbaa !15
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.an

bb.am:                                            ; preds = %bb.aj, %bb.g
  %.pn69.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn.pn.pn, %bb.aj ], [ %i.af, %bb.g ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn69.pn.pn.pn.pn.pn

bb.an:                                            ; preds = %bb.al, %bb.a
  ret void
}

declare noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_78L9initFieldEPPNS_13UnicodeStringERiRNS_12_GLOBAL__N_116CalendarDataSinkERNS_10CharStringEiR10UErrorCode(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %2, ptr %.0.val, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !15
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %.0.val, i32 noundef -1, i32 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = invoke noundef ptr @uhash_get_78(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %.not34 = icmp eq ptr %i.e, null
  br i1 %.not34, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = invoke noundef i32 @uhash_geti_78(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNK6icu_789Hashtable4getiERKNS_13UnicodeStringE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNK6icu_789Hashtable4getiERKNS_13UnicodeStringE.exit: ; preds = %bb.c
  %i.i = add i32 %i.h, 1                          ; 3 uses
  store i32 %i.i, ptr %1, align 4, !tbaa !25
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp slt i32 %i.h, -1
  %i.l = shl nsw i64 %i.j, 6                      ; 2 uses
  %i.m = or disjoint i64 %i.l, 8
  %i.n = select i1 %i.k, i64 -1, i64 %i.m
  %i.o = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.n) #18 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_789Hashtable4getiERKNS_13UnicodeStringE.exit
  store i64 %i.j, ptr %i.o, align 8
  %.ptr36 = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = icmp eq i32 %i.i, 0
  br i1 %i.q, label %.thread2, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.r = add nsw i64 %i.l, -64                    ; 2 uses
  %i.s = lshr exact i64 %i.r, 6
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.u = icmp ult i64 %i.r, 192
  br i1 %i.u, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.t, 576460752303423484
  br label %.preheader

.thread2:                                         ; preds = %bb.d
  store ptr %.ptr36, ptr %0, align 8, !tbaa !131
  br label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.idx = phi i64 [ 8, %.preheader.preheader.new ], [ %.add.3, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  store i16 2, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 2 uses
  %.ptr.ptr.1 = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.1, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store i16 2, ptr %i.x, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 2 uses
  %.ptr.ptr.2 = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.2, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  store i16 2, ptr %i.z, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 2 uses
  %.ptr.ptr.3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.3, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  store i16 2, ptr %i.ab, align 8, !tbaa !24
  %.add.3 = add nuw nsw i64 %.idx, 256            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader

bb.e:                                             ; preds = %_ZNK6icu_789Hashtable4getiERKNS_13UnicodeStringE.exit
  store ptr null, ptr %0, align 8, !tbaa !131
  store i32 7, ptr %3, align 4, !tbaa !15
  br label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.c, %bb.b
  %lpad.loopexit.split-lp1 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %lpad.loopexit.split-lp1

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.idx.epil.init = phi i64 [ 8, %.preheader.preheader ], [ %.add.3, %.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.idx.epil = phi i64 [ %.add.epil, %.preheader.epil ], [ %.idx.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %.ptr.ptr.epil = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.epil, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 8
  store i16 2, ptr %i.ac, align 8, !tbaa !24
  %.add.epil = add nuw nsw i64 %.idx.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !275

.epilog-lcssa:                                    ; preds = %.preheader.epil, %.unr-lcssa
  store ptr %.ptr36, ptr %0, align 8, !tbaa !131
  %i.ad = icmp sgt i32 %i.h, 0
  br i1 %i.ad, label %.lr.ph.i.i, label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEiPS0_ii.exit

.lr.ph.i.i:                                       ; preds = %.epilog-lcssa, %.noexc
  %.06.i.i = phi i32 [ %i.ag, %.noexc ], [ %i.h, %.epilog-lcssa ] ; 2 uses
  %.025.i.pn.i = phi ptr [ %.025.i.i, %.noexc ], [ %.ptr36, %.epilog-lcssa ]
  %.034.i.i = phi ptr [ %i.af, %.noexc ], [ %i.e, %.epilog-lcssa ] ; 2 uses
  %.025.i.i = getelementptr inbounds nuw i8, ptr %.025.i.pn.i, i64 64 ; 2 uses
end_hunk_0
