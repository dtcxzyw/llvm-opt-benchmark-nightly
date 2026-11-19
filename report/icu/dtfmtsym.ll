Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/dtfmtsym?download=true
inline.NumInlined: 665
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 120
begin_hunk_0_@_ZN6icu_7817DateFormatSymbols14setAmPmStringsEPKNS_13UnicodeStringEiNS0_13DtContextTypeENS0_11DtWidthTypeE:bb.a
  %i.n = shl nsw i64 %i.l, 6                      ; 2 uses
  %i.o = or disjoint i64 %i.n, 8
  %i.p = select i1 %i.m, i64 -1, i64 %i.o
  %i.q = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.p) #18 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN6icu_78L21newUnicodeStringArrayEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.l, ptr %i.q, align 8
  %i.s = add nsw i64 %i.n, -64                    ; 2 uses
  %i.t = lshr exact i64 %i.s, 6
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.v = icmp ult i64 %i.s, 192
  br i1 %i.v, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %i.u, 576460752303423484
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.new
  %.idx.i = phi i64 [ 8, %.new ], [ %.add.i.3, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.h ]
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store i16 2, ptr %i.w, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.1, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store i16 2, ptr %i.y, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.2, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  store i16 2, ptr %i.aa, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.3, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  store i16 2, ptr %i.ac, align 8, !tbaa !24
  %.add.i.3 = add nuw nsw i64 %.idx.i, 256        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.i.unr-lcssa, label %bb.h

.loopexit.loopexit.i.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.i.unr-lcssa, %bb.g
  %.idx.i.epil.init = phi i64 [ 8, %bb.g ], [ %.add.i.3, %.loopexit.loopexit.i.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.idx.i.epil = phi i64 [ %.idx.i.epil.init, %.epil.preheader ], [ %.add.i.epil, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %.ptr.ptr.i.epil = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.epil, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 8
  store i16 2, ptr %i.ad, align 8, !tbaa !24
  %.add.i.epil = add nuw nsw i64 %.idx.i.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit.i, label %bb.i, !llvm.loop !268

.loopexit.loopexit.i:                             ; preds = %bb.i, %.loopexit.loopexit.i.unr-lcssa
  %.ptr11.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %_ZN6icu_78L21newUnicodeStringArrayEm.exit

_ZN6icu_78L21newUnicodeStringArrayEm.exit:        ; preds = %bb.f, %.loopexit.loopexit.i
  %i.ae = phi ptr [ null, %bb.f ], [ %.ptr11.i, %.loopexit.loopexit.i ] ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !131
  %i.af = icmp sgt i32 %2, 0
  br i1 %i.af, label %.lr.ph.i, label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEPS0_i.exit

.lr.ph.i:                                         ; preds = %_ZN6icu_78L21newUnicodeStringArrayEm.exit, %.lr.ph.i
  %.06.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %2, %_ZN6icu_78L21newUnicodeStringArrayEm.exit ] ; 2 uses
  %.025.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.ae, %_ZN6icu_78L21newUnicodeStringArrayEm.exit ] ; 2 uses
  %.034.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %1, %_ZN6icu_78L21newUnicodeStringArrayEm.exit ] ; 2 uses
  %i.ag = add nsw i32 %.06.i, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %.034.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.025.i, i64 64
  %i.aj = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %.025.i, ptr noundef nonnull align 8 dereferenceable(64) %.034.i) ; 0 uses
  %i.ak = icmp samesign ugt i32 %.06.i, 1
  br i1 %i.ak, label %.lr.ph.i, label %_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEPS0_i.exit, !llvm.loop !1

_ZL14uprv_arrayCopyPKN6icu_7813UnicodeStringEPS0_i.exit: ; preds = %.lr.ph.i, %_ZN6icu_78L21newUnicodeStringArrayEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i32 %2, ptr %i.al, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7817DateFormatSymbols22setTimeSeparatorStringERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7817DateFormatSymbols14getZoneStringsERiS1_(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZZNK6icu_7817DateFormatSymbols14getZoneStringsERiS1_E4LOCK)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7817DateFormatSymbols20initZoneStringsArrayEv(ptr noundef nonnull align 8 dereferenceable(872) %0)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !142
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.h = load i32, ptr %i.g, align 8, !tbaa !141
  store i32 %i.h, ptr %1, align 4, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.j = load i32, ptr %i.i, align 4, !tbaa !140
  store i32 %i.j, ptr %2, align 4, !tbaa !25
  tail call void @umtx_unlock_78(ptr noundef nonnull @_ZZNK6icu_7817DateFormatSymbols14getZoneStringsERiS1_E4LOCK)
  ret ptr %.0
}

declare void @umtx_lock_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7817DateFormatSymbols20initZoneStringsArrayEv(ptr noundef nonnull align 8 dereferenceable(872) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142
  %.not56 = icmp eq ptr %i.e, null
  br i1 %.not56, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %i.f = call noundef ptr @_ZN6icu_788TimeZone27createTimeZoneIDEnumerationE19USystemTimeZoneTypePKcPKiR10UErrorCode(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(116) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 4 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !15
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.d, label %.thread75

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.j, 3
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = call noalias ptr @uprv_malloc_78(i64 noundef %i.n) #21 ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 7, ptr %i.a, align 4, !tbaa !15
  br label %.thread75

bb.f:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.n, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.r = call noundef ptr @_ZN6icu_7813TimeZoneNames14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.v = load i32, ptr %i.a, align 4, !tbaa !15
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.g, label %.preheader80

bb.g:                                             ; preds = %bb.f
  %i.x = call noundef double @_ZN6icu_788Calendar6getNowEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %1, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 2, ptr %i.y, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.g ] ; 3 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(116) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.j       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %.not59 = icmp ne ptr %i.ac, null
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = icmp slt i32 %i.ad, 1
  %or.cond = select i1 %.not59, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.k, label %.loopexit96

bb.j:                                             ; preds = %bb.l, %_ZN6icu_7813UnicodeString5setToERKS0_.exit, %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.af

bb.k:                                             ; preds = %bb.i
  %i.ag = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef 328) #18 ; 12 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 5, ptr %i.ag, align 8
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i16 2, ptr %i.ai, align 8, !tbaa !24
  %.ptr.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.1, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store i16 2, ptr %i.aj, align 8, !tbaa !24
  %.ptr.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.2, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  store i16 2, ptr %i.ak, align 8, !tbaa !24
  %.ptr.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.3, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  store i16 2, ptr %i.al, align 8, !tbaa !24
  %.ptr.ptr.4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.4, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 272
  store i16 2, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  store ptr %.ptr.ptr, ptr %i.an, align 8, !tbaa !131
  %i.ao = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8copyFromERKS0_a(ptr noundef nonnull align 8 dereferenceable(64) %.ptr.ptr, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i8 noundef signext 0)
          to label %_ZN6icu_7813UnicodeString5setToERKS0_.exit unwind label %bb.j ; 0 uses

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr null, ptr %i.ap, align 8, !tbaa !131
  store i32 7, ptr %i.a, align 4, !tbaa !15
  br label %.loopexit96

_ZN6icu_7813UnicodeString5setToERKS0_.exit:       ; preds = %bb.l
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !131
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull @_ZZN6icu_7817DateFormatSymbols20initZoneStringsArrayEvE5TYPES, i32 noundef 4, double noundef %i.x, ptr noundef nonnull %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %_ZN6icu_7813UnicodeString5setToERKS0_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.h, !llvm.loop !269

.loopexit96:                                      ; preds = %bb.i, %bb.m
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.pre = load i32, ptr %i.a, align 4, !tbaa !15
  %i.av = icmp sgt i32 %.pre, 0
  br i1 %i.av, label %.preheader80, label %bb.q

.preheader80:                                     ; preds = %bb.f, %.loopexit96
  %i.aw = icmp sgt i32 %i.j, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader80
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %.preheader80
  call void @uprv_free_78(ptr noundef nonnull %i.o)
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv88 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next89, %bb.p ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !131 ; 4 uses
  %.not68 = icmp eq ptr %i.ay, null
  br i1 %.not68, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.o
  %.idx69 = shl nsw i64 %i.ba, 6
  %i.bc = getelementptr inbounds i8, ptr %i.ay, i64 %.idx69
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.bd = phi ptr [ %i.be, %.preheader ], [ %i.bc, %.preheader.preheader ]
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -64 ; 3 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.be) #18
  %i.bf = icmp eq ptr %i.be, %i.ay
  br i1 %i.bf, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.o
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.az) #18
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !270

bb.q:                                             ; preds = %.loopexit96, %._crit_edge
  %.1 = phi ptr [ null, %._crit_edge ], [ %i.o, %.loopexit96 ]
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #18
  br label %.thread75

.thread75:                                        ; preds = %bb.c, %bb.e, %bb.q
  %.178 = phi ptr [ %.1, %bb.q ], [ null, %bb.c ], [ null, %bb.e ]
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #18
  store ptr %.178, ptr %i.d, align 8, !tbaa !142
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 %i.j, ptr %i.bm, align 8, !tbaa !141
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 5, ptr %i.bn, align 4, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.b, %.thread75
  ret void
}

declare void @umtx_unlock_78(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6icu_788TimeZone27createTimeZoneIDEnumerationE19USystemTimeZoneTypePKcPKiR10UErrorCode(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef ptr @_ZN6icu_7813TimeZoneNames14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef double @_ZN6icu_788Calendar6getNowEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7817DateFormatSymbols14setZoneStringsEPKPKNS_13UnicodeStringEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(872) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6icu_7817DateFormatSymbols18disposeZoneStringsEv(ptr noundef nonnull align 8 dereferenceable(872) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 %2, ptr %i.a, align 8, !tbaa !141
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 %3, ptr %i.b, align 4, !tbaa !140
  tail call void @_ZN6icu_7817DateFormatSymbols17createZoneStringsEPKPKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN6icu_7817DateFormatSymbols16getPatternUCharsEv() local_unnamed_addr #5 align 2 {
bb.a:
  ret ptr @_ZL13gPatternChars
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -128, 128) i32 @_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs(i16 noundef zeroext %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ugt i16 %0, 127
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZL19gLookupPatternChars, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24    ; 2 uses
  %i.e = icmp eq i8 %i.d, -1
  %narrow = select i1 %i.e, i8 38, i8 %i.d
  %i.f = sext i8 %narrow to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 38, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7817DateFormatSymbols14isNumericFieldE16UDateFormatFieldi(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 38
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = shl nuw i64 1, %i.b                      ; 2 uses
  %i.d = and i64 %i.c, 17187585530
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.c, 503840772
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp slt i32 %1, 3
  %i.h = and i1 %i.g, %i.f
  %i.i = zext i1 %i.h to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ %i.i, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7817DateFormatSymbols20isNumericPatternCharEDsi(i16 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp ugt i16 %0, 127
  br i1 %i.a, label %_ZN6icu_7817DateFormatSymbols14isNumericFieldE16UDateFormatFieldi.exit, label %_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs.exit

_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs.exit: ; preds = %bb.a
  %i.b = zext nneg i16 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZL19gLookupPatternChars, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24    ; 2 uses
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN6icu_7817DateFormatSymbols14isNumericFieldE16UDateFormatFieldi.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs.exit
  %i.f = zext nneg i8 %i.d to i64
  %i.g = shl nuw i64 1, %i.f                      ; 2 uses
  %i.h = and i64 %i.g, 17187585530
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN6icu_7817DateFormatSymbols14isNumericFieldE16UDateFormatFieldi.exit

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.g, 503840772
  %i.j = icmp ne i64 %i.i, 0
  %i.k = icmp slt i32 %1, 3
  %i.l = and i1 %i.k, %i.j
  %i.m = zext i1 %i.l to i8
  br label %_ZN6icu_7817DateFormatSymbols14isNumericFieldE16UDateFormatFieldi.exit

_ZN6icu_7817DateFormatSymbols14isNumericFieldE16UDateFormatFieldi.exit: ; preds = %bb.a, %_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs.exit, %bb.b, %bb.c
  %.0.i2 = phi i8 [ 0, %_ZN6icu_7817DateFormatSymbols19getPatternCharIndexEDs.exit ], [ 1, %bb.b ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  ret i8 %.0.i2
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7817DateFormatSymbols20getLocalPatternCharsERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7817DateFormatSymbols20setLocalPatternCharsERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #2 align 2 {
bb.a:
end_hunk_0
