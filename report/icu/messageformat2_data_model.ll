inline.NumInlined: 1314
inline.NumDeleted: 800
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6icu_788message210data_model4swapERNS1_7BindingES3_:bb.a

bb.h:                                             ; preds = %_ZN6icu_788message210data_model4swapERNS1_10ExpressionES3_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.c, ptr %i.at, align 8, !tbaa !129
  br label %_ZN6icu_788message210data_model7Binding16updateAnnotationEv.exit

_ZN6icu_788message210data_model7Binding16updateAnnotationEv.exit: ; preds = %bb.h, %_ZN6icu_788message210data_model4swapERNS1_10ExpressionES3_.exit
  %i.au = load i8, ptr %i.h, align 8, !tbaa !95, !range !19, !noundef !20
  %.not4.i.i8 = icmp eq i8 %i.au, 0
  br i1 %.not4.i.i8, label %_ZN6icu_788message210data_model7Binding16updateAnnotationEv.exit9, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_788message210data_model7Binding16updateAnnotationEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.d, ptr %i.av, align 8, !tbaa !129
  br label %_ZN6icu_788message210data_model7Binding16updateAnnotationEv.exit9

_ZN6icu_788message210data_model7Binding16updateAnnotationEv.exit9: ; preds = %bb.i, %_ZN6icu_788message210data_model7Binding16updateAnnotationEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7BindingD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7BindingE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_788message210data_model10ExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7BindingD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(56) ptr @_ZN6icu_788message210data_model7VariantaSES2_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(56) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !40
  %i.d = load i32, ptr %i.b, align 8, !tbaa !40
  store i32 %i.d, ptr %i.a, align 8, !tbaa !40
  store i32 %i.c, ptr %i.b, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !8
  store ptr %i.h, ptr %i.e, align 8, !tbaa !8
  store ptr %i.g, ptr %i.f, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load i8, ptr %i.i, align 8, !tbaa !42, !range !19, !noundef !20
  %i.l = load i8, ptr %i.j, align 8, !tbaa !42, !range !19, !noundef !20
  store i8 %i.l, ptr %i.i, align 8, !tbaa !42
  store i8 %i.k, ptr %i.j, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !40
  %i.p = load i32, ptr %i.n, align 4, !tbaa !40
  store i32 %i.p, ptr %i.m, align 4, !tbaa !40
  store i32 %i.o, ptr %i.n, align 4, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !113
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !113
  store ptr %i.t, ptr %i.q, align 8, !tbaa !113
  store ptr %i.s, ptr %i.r, align 8, !tbaa !113
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model7VariantC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6icu_788message210data_model12SelectorKeysC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model12SelectorKeysD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7VariantD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_788message210data_model12SelectorKeysD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.b) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7VariantD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(44) ptr @_ZN6icu_788message210data_model7MatcheraSES2_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(44) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !130, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 8, !tbaa !130
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 8, !tbaa !130, !range !19, !noundef !20
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !130
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !138
  store ptr %i.j, ptr %i.g, align 8, !tbaa !138
  store ptr %i.i, ptr %i.h, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !40
  %i.n = load i32, ptr %i.l, align 8, !tbaa !40
  store i32 %i.n, ptr %i.k, align 8, !tbaa !40
  store i32 %i.m, ptr %i.l, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !139
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !139
  store ptr %i.r, ptr %i.o, align 8, !tbaa !139
  store ptr %i.q, ptr %i.p, align 8, !tbaa !139
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = load i32, ptr %i.s, align 8, !tbaa !40
  %i.v = load i32, ptr %i.t, align 8, !tbaa !40
  store i32 %i.v, ptr %i.s, align 8, !tbaa !40
  store i32 %i.u, ptr %i.t, align 8, !tbaa !40
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model7MatcherC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(44) initializes((0, 9), (16, 28), (32, 44)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7MatcherE, i64 16), ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !130
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !140  ; 6 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !141
  store i32 %i.j, ptr %i.f, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138
  %i.m = sext i32 %i.h to i64                     ; 2 uses
  %i.n = icmp slt i32 %i.h, 0
  %i.o = shl nsw i64 %i.m, 6                      ; 2 uses
  %i.p = or disjoint i64 %i.o, 8
  %i.q = select i1 %i.n, i64 -1, i64 %i.p
  %i.r = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.q) #18 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.m, ptr %i.r, align 8
  %.ptr26.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = icmp eq i32 %i.h, 0
  br i1 %i.t, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.u = add nsw i64 %i.o, -64                    ; 2 uses
  %i.v = lshr exact i64 %i.u, 6
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.u, 192
  br i1 %i.x, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.w, 576460752303423484
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.idx.i = phi i64 [ 8, %.preheader.i.preheader.new ], [ %.add.i.3, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store i16 2, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.1, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store i16 2, ptr %i.aa, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.2, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  store i16 2, ptr %i.ac, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.3, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  store i16 2, ptr %i.ae, align 8, !tbaa !21
  %.add.i.3 = add nuw nsw i64 %.idx.i, 256        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit32.i.unr-lcssa, label %.preheader.i

.loopexit32.i.unr-lcssa:                          ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit32.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit32.i.unr-lcssa, %.preheader.i.preheader
  %.idx.i.epil.init = phi i64 [ 8, %.preheader.i.preheader ], [ %.add.i.3, %.loopexit32.i.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.idx.i.epil = phi i64 [ %.add.i.epil, %.preheader.i.epil ], [ %.idx.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %.ptr.ptr.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.epil, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 8
  store i16 2, ptr %i.af, align 8, !tbaa !21
  %.add.i.epil = add nuw nsw i64 %.idx.i.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit32.i, label %.preheader.i.epil, !llvm.loop !142

.loopexit32.i:                                    ; preds = %.preheader.i.epil, %.loopexit32.i.unr-lcssa
  %2 = icmp sgt i32 %i.h, 0
  br i1 %2, label %.lr.ph.preheader.i, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit32.i
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  store i32 7, ptr %i.a, align 4, !tbaa !26
  br label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %.ptr26.i, i64 %indvars.iv.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, label %.lr.ph.i, !llvm.loop !143

_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit: ; preds = %.noexc, %bb.c, %.loopexit32.i, %bb.b
  %.019.i = phi ptr [ %.ptr26.i, %bb.b ], [ null, %bb.c ], [ %.ptr26.i, %.loopexit32.i ], [ %.ptr26.i, %.noexc ]
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !138 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.d
  %.idx.i10 = shl nsw i64 %i.am, 6
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %.idx.i10
  br label %.preheader.i11

.preheader.i11:                                   ; preds = %.preheader.i11, %.preheader.preheader.i
  %i.ap = phi ptr [ %i.aq, %.preheader.i11 ], [ %i.ao, %.preheader.preheader.i ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aq) #18
  %i.ar = icmp eq ptr %i.aq, %i.aj
  br i1 %i.ar, label %.loopexit.i, label %.preheader.i11

.loopexit.i:                                      ; preds = %.preheader.i11, %bb.d
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.al) #18
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit

_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit: ; preds = %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, %.loopexit.i
  store ptr %.019.i, ptr %i.c, align 8, !tbaa !138
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !139
  %i.au = load i32, ptr %i.f, align 8, !tbaa !141
  %i.av = invoke fastcc noundef ptr @_ZN6icu_788message2L9copyArrayINS0_10data_model7VariantEEEPT_PKS4_iR10UErrorCode(ptr noundef %i.at, i32 noundef %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !139 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit.i15, label %.preheader.preheader.i12

.preheader.preheader.i12:                         ; preds = %bb.f
  %.idx.i13 = mul nsw i64 %i.az, 56
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %.idx.i13
  br label %.preheader.i14

.preheader.i14:                                   ; preds = %.preheader.i14, %.preheader.preheader.i12
  %i.bc = phi ptr [ %i.bd, %.preheader.i14 ], [ %i.bb, %.preheader.preheader.i12 ]
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -56 ; 3 uses
  tail call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bd) #18
  %i.be = icmp eq ptr %i.bd, %i.aw
  br i1 %i.be, label %.loopexit.i15, label %.preheader.i14

.loopexit.i15:                                    ; preds = %.preheader.i14, %bb.f
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ay) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit: ; preds = %bb.e, %.loopexit.i15
  store ptr %i.av, ptr %i.e, align 8, !tbaa !139
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !26
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit
  store i8 1, ptr %i.b, align 8, !tbaa !130
  br label %bb.i

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  tail call void @_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #18
  tail call void @_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %lpad.phi

bb.i:                                             ; preds = %bb.g, %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN6icu_788message2L9copyArrayINS0_10data_model7VariantEEEPT_PKS4_iR10UErrorCode(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::Variant", align 8 ; 7 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !26
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.c, i64 56) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 8) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = or i1 %i.e, %i.h
  %i.j = extractvalue { i64, i1 } %i.g, 0
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.k) #18 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %i.l, align 8
  %.ptr26 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.o = add nsw i64 %i.f, -56                    ; 2 uses
  %i.p = udiv i64 %i.o, 56                        ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = icmp ult i64 %i.o, 56
  br i1 %i.r, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.q, 1152921504606846974
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.idx = phi i64 [ 8, %.preheader.preheader.new ], [ %.add.1, %.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model12SelectorKeysE, i64 16)>, ptr %.ptr.ptr, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 16
  store ptr null, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 24
  store i32 0, ptr %i.t, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.u, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 40
  store i8 0, ptr %i.v, align 8, !tbaa !107
  %i.w = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 44
  store i32 0, ptr %i.w, align 4, !tbaa !112
  %i.x = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 48
  store ptr null, ptr %i.x, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 7 uses
  %.ptr.ptr.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model12SelectorKeysE, i64 16)>, ptr %.ptr.ptr.1, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store ptr null, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store i32 0, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  store i8 0, ptr %i.ac, align 8, !tbaa !107
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  store i32 0, ptr %i.ad, align 4, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store ptr null, ptr %i.ae, align 8, !tbaa !113
  %.add.1 = add nuw nsw i64 %.idx, 112            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit32.unr-lcssa, label %.preheader

.loopexit32.unr-lcssa:                            ; preds = %.preheader
  %i.af = and i64 %i.p, 1
  %lcmp.mod.not.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not.not, label %.preheader.epil.preheader, label %.loopexit32

.preheader.epil.preheader:                        ; preds = %.loopexit32.unr-lcssa, %.preheader.preheader
  %.idx.epil.init = phi i64 [ 8, %.preheader.preheader ], [ %.add.1, %.loopexit32.unr-lcssa ]
  %lcmp.mod36 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %.ptr.ptr.epil = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.epil.init ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model12SelectorKeysE, i64 16)>, ptr %.ptr.ptr.epil, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 16
  store ptr null, ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.ai, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 40
  store i8 0, ptr %i.aj, align 8, !tbaa !107
  %i.ak = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 44
  store i32 0, ptr %i.ak, align 4, !tbaa !112
  %i.al = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 48
  store ptr null, ptr %i.al, align 8, !tbaa !113
  br label %.loopexit32

.loopexit32:                                      ; preds = %.loopexit32.unr-lcssa, %.preheader.epil.preheader
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.loopexit32
end_hunk_0
begin_hunk_1_@_ZN6icu_788message210data_model11MFDataModel7Builder10addVariantEONS1_12SelectorKeysEONS1_7PatternER10UErrorCode:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr %4, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  invoke void @_ZN6icu_788message210data_model12SelectorKeysC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6icu_788message210data_model7VariantC2ERKNS1_12SelectorKeysEONS1_7PatternE.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6icu_788message210data_model12SelectorKeysD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %4) #18
  br label %.body

_ZN6icu_788message210data_model7VariantC2ERKNS1_12SelectorKeysEONS1_7PatternE.exit: ; preds = %bb.c
  %i.e = load i32, ptr %3, align 4, !tbaa !26
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.g, label %_ZN6icu_788message26createINS0_10data_model7VariantEEEPT_OS4_R10UErrorCode.exit

bb.g:                                             ; preds = %_ZN6icu_788message210data_model7VariantC2ERKNS1_12SelectorKeysEONS1_7PatternE.exit
  %i.g = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 56) #18 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6icu_788message210data_model7VariantC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %_ZN6icu_788message26createINS0_10data_model7VariantEEEPT_OS4_R10UErrorCode.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 7, ptr %3, align 4, !tbaa !26
  br label %_ZN6icu_788message26createINS0_10data_model7VariantEEEPT_OS4_R10UErrorCode.exit

bb.j:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.g) #18
  br label %.body

_ZN6icu_788message26createINS0_10data_model7VariantEEEPT_OS4_R10UErrorCode.exit: ; preds = %bb.i, %bb.h, %_ZN6icu_788message210data_model7VariantC2ERKNS1_12SelectorKeysEONS1_7PatternE.exit
  %.0.i = phi ptr [ null, %_ZN6icu_788message210data_model7VariantC2ERKNS1_12SelectorKeysEONS1_7PatternE.exit ], [ null, %bb.i ], [ %i.g, %bb.h ]
  call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.j = load i32, ptr %3, align 4, !tbaa !26
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN6icu_788message26createINS0_10data_model7VariantEEEPT_OS4_R10UErrorCode.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k, %_ZN6icu_788message26createINS0_10data_model7VariantEEEPT_OS4_R10UErrorCode.exit
  ret ptr %0

bb.m:                                             ; preds = %bb.k, %bb.a
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %i.n, %bb.m ], [ %i.i, %bb.j ]
  %i.o = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.o) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder10setPatternEONS1_7PatternE(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(64) initializes((8, 10)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 5 uses
  call void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !42, !range !19, !noundef !20
  %i.d = load i8, ptr %i.b, align 8, !tbaa !42, !range !19, !noundef !20
  store i8 %i.d, ptr %i.a, align 8, !tbaa !42
  store i8 %i.c, ptr %i.b, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !40
  %i.h = load i32, ptr %i.f, align 4, !tbaa !40
  store i32 %i.h, ptr %i.e, align 4, !tbaa !40
  store i32 %i.g, ptr %i.f, align 4, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !113
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !113
  store ptr %i.l, ptr %i.i, align 8, !tbaa !113
  store ptr %i.k, ptr %i.j, align 8, !tbaa !113
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.m, align 8, !tbaa !150
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.n, align 1, !tbaa !152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !155  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.p)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

declare void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model11MFDataModelC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(108) initializes((0, 17), (20, 33)) %0, ptr noundef nonnull align 8 dereferenceable(108) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Binding", align 8 ; 6 uses
  %3 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %"class.icu_78::LocalArray.56", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::LocalArray.58", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::message2::data_model::Matcher", align 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model11MFDataModelE, i64 16), ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.c, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i8 0, ptr %i.f, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %3, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.h, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !113
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !145
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store ptr null, ptr %i.l, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i8, ptr %i.n, align 8, !tbaa !145   ; 2 uses
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEEaSIRKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S4_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS5_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread87 unwind label %.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEED2Ev.exit

.loopexit:                                        ; preds = %.lr.ph.i57
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !139
  %.not.i = icmp eq i8 %i.o, 0                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i32, ptr %i.x, align 8
  %i.z = select i1 %.not.i, i32 %i.y, i32 0       ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = select i1 %.not.i, i32 %i.ab, i32 0     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ad = sext i32 %i.z to i64                    ; 2 uses
  %i.ae = icmp slt i32 %i.z, 0
  %i.af = shl nsw i64 %i.ad, 6                    ; 2 uses
  %i.ag = or disjoint i64 %i.af, 8
  %i.ah = select i1 %i.ae, i64 -1, i64 %i.ag
  %i.ai = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.ah) #18 ; 8 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.ad, ptr %i.ai, align 8
  %.ptr26.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = icmp eq i32 %i.z, 0
  br i1 %i.ak, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.f
  %i.al = add nsw i64 %i.af, -64                  ; 2 uses
  %i.am = lshr exact i64 %i.al, 6
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %xtraiter = and i64 %i.an, 3                    ; 3 uses
  %i.ao = icmp ult i64 %i.al, 192
  br i1 %i.ao, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.an, 576460752303423484
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.idx.i = phi i64 [ 8, %.preheader.i.preheader.new ], [ %.add.i.3, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store i16 2, ptr %i.ap, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.1, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  store i16 2, ptr %i.ar, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.2, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  store i16 2, ptr %i.at, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.3, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  store i16 2, ptr %i.av, align 8, !tbaa !21
  %.add.i.3 = add nuw nsw i64 %.idx.i, 256        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit32.i.unr-lcssa, label %.preheader.i

.loopexit32.i.unr-lcssa:                          ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit32.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit32.i.unr-lcssa, %.preheader.i.preheader
  %.idx.i.epil.init = phi i64 [ 8, %.preheader.i.preheader ], [ %.add.i.3, %.loopexit32.i.unr-lcssa ]
  %lcmp.mod102 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.idx.i.epil = phi i64 [ %.add.i.epil, %.preheader.i.epil ], [ %.idx.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %.ptr.ptr.i.epil = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.epil, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 8
  store i16 2, ptr %i.aw, align 8, !tbaa !21
  %.add.i.epil = add nuw nsw i64 %.idx.i.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit32.i, label %.preheader.i.epil, !llvm.loop !167

.loopexit32.i:                                    ; preds = %.preheader.i.epil, %.loopexit32.i.unr-lcssa
  %7 = icmp sgt i32 %i.z, 0
  br i1 %7, label %.lr.ph.preheader.i, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread

.lr.ph.preheader.i:                               ; preds = %.loopexit32.i
  %wide.trip.count.i = zext nneg i32 %i.z to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %.ptr26.i, i64 %indvars.iv.i
  %i.az = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.ax)
          to label %.noexc unwind label %bb.g     ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread, label %.lr.ph.i, !llvm.loop !143

_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread: ; preds = %.noexc, %.loopexit32.i, %bb.f
  store ptr %.ptr26.i, ptr %4, align 8, !tbaa !138
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit: ; preds = %bb.e
  store ptr null, ptr %4, align 8, !tbaa !138
  store i32 7, ptr %i.a, align 4
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread
  %i.ba = phi ptr [ null, %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit ], [ %.ptr26.i, %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bb = invoke fastcc noundef ptr @_ZN6icu_788message2L9copyArrayINS0_10data_model7VariantEEEPT_PKS4_iR10UErrorCode(ptr noundef %i.w, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit unwind label %bb.h ; 6 uses

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit: ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.bc = icmp ne ptr %i.bb, null
  %i.bd = load i32, ptr %i.a, align 4             ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %or.cond.i40 = select i1 %i.bc, i1 true, i1 %i.be
  %spec.store.select68 = select i1 %or.cond.i40, i32 %i.bd, i32 7 ; 2 uses
  store i32 %spec.store.select68, ptr %i.a, align 4
  %i.bf = icmp slt i32 %spec.store.select68, 1
  br i1 %i.bf, label %bb.i, label %bb.k

bb.g:                                             ; preds = %.lr.ph.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %5, align 8, !tbaa !139
  invoke void @_ZN6icu_788message210data_model7MatcherC1EPNS_13UnicodeStringEiPNS1_7VariantEi(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr noundef %i.ba, i32 noundef %i.z, ptr noundef %i.bb, i32 noundef %i.ac)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull align 8 dereferenceable(44) %6)
          to label %bb.s unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit
  store i8 1, ptr %i.f, align 8, !tbaa !157
  %i.bj = icmp eq ptr %i.bb, null
  br i1 %i.bj, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds i8, ptr %i.bb, i64 -8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.l
  %.idx.i41 = mul nsw i64 %i.bl, 56
  %i.bn = getelementptr inbounds i8, ptr %i.bb, i64 %.idx.i41
  br label %.preheader.i42

.preheader.i42:                                   ; preds = %.preheader.i42, %.preheader.preheader.i
  %i.bo = phi ptr [ %i.bp, %.preheader.i42 ], [ %i.bn, %.preheader.preheader.i ]
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -56 ; 3 uses
  call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bp) #18
  %i.bq = icmp eq ptr %i.bp, %i.bb
  br i1 %i.bq, label %.loopexit.i, label %.preheader.i42

.loopexit.i:                                      ; preds = %.preheader.i42, %bb.l
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.bk) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit: ; preds = %bb.k, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.br = icmp eq ptr %i.ba, null
  br i1 %i.br, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit
  %i.bs = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.loopexit.i46, label %.preheader.preheader.i43

.preheader.preheader.i43:                         ; preds = %bb.m
  %.idx.i44 = shl nsw i64 %i.bt, 6
  %i.bv = getelementptr inbounds i8, ptr %i.ba, i64 %.idx.i44
  br label %.preheader.i45

.preheader.i45:                                   ; preds = %.preheader.i45, %.preheader.preheader.i43
  %i.bw = phi ptr [ %i.bx, %.preheader.i45 ], [ %i.bv, %.preheader.preheader.i43 ]
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -64 ; 3 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bx) #18
  %i.by = icmp eq ptr %i.bx, %i.ba
  br i1 %i.by, label %.loopexit.i46, label %.preheader.i45

.loopexit.i46:                                    ; preds = %.preheader.i45, %bb.m
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.bs) #18
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread: ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit, %.loopexit.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.thread93

bb.n:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %6) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn28 = phi { ptr, i32 } [ %i.ca, %bb.o ], [ %i.bz, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.p ], [ %i.bh, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.g
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.q ], [ %i.bg, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

bb.s:                                             ; preds = %bb.j
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !26 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !166 ; 3 uses
  store i32 %i.cc, ptr %i.m, align 8, !tbaa !166
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.t, label %bb.z

.thread87:                                        ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !166 ; 3 uses
  store i32 %i.cf, ptr %i.m, align 8, !tbaa !166
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.thread90, label %.thread93

.thread90:                                        ; preds = %.thread87
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cl = icmp slt i32 %.pre.pre, 1
  br i1 %i.cl, label %bb.u, label %.loopexit69

bb.u:                                             ; preds = %.thread90, %bb.t
  %i.cm = phi ptr [ %i.ci, %.thread90 ], [ %i.ck, %bb.t ]
  %.pre8992 = phi i32 [ 0, %.thread90 ], [ %.pre.pre, %bb.t ]
  %i.cn = phi i32 [ %i.cf, %.thread90 ], [ %i.cc, %bb.t ]
  %i.co = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.cp = mul nuw nsw i64 %i.co, 344              ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, 8
  %i.cr = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.cq) #18 ; 6 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.loopexit69, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.co, ptr %i.cr, align 8
  %.ptr26.i49 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.x
  %.idx.i50 = phi i64 [ %.add.i54, %bb.x ], [ 8, %bb.v ] ; 5 uses
  %.ptr.ptr.i51 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i50 ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7BindingE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %.ptr.ptr.i51, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i51, i64 16
  store i16 2, ptr %i.ct, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i51, i64 72
  invoke void @_ZN6icu_788message210data_model10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.cu)
          to label %bb.x unwind label %.body.i

.body.i:                                          ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i51, i64 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cw) #18
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(344) %.ptr.ptr.i51) #18
  %i.cx = icmp eq i64 %.idx.i50, 8
  br i1 %i.cx, label %.loopexit32.i53, label %.preheader.i52

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i51, i64 328
end_hunk_1
begin_hunk_2_@_ZN6icu_788message210data_model11MFDataModelC2ERKNS2_7BuilderER10UErrorCode:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !166
  %i.m = load i32, ptr %2, align 4, !tbaa !26
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !150, !range !19, !noundef !20
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i8, ptr %i.j, align 8, !tbaa !145
  %.not.i.i.i.i = icmp eq i8 %i.s, -1
  br i1 %.not.i.i.i.i, label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, label %bb.e, !prof !47

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.f) #18, !inline_history !177
  store i8 -1, ptr %i.j, align 8, !tbaa !145
  br label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i

_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i: ; preds = %bb.e, %bb.d
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceIS4_JRKS4_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISA_EERSA_E4typeEDpOSB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceIS4_JRKS4_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISA_EERSA_E4typeEDpOSB_.exit: ; preds = %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i
  store i8 1, ptr %i.j, align 8, !tbaa !145
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !155  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !36  ; 4 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ae, i64 56) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0       ; 2 uses
  %i.ai = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ah, i64 8) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = or i1 %i.ag, %i.aj
  %i.al = extractvalue { i64, i1 } %i.ai, 0
  %i.am = select i1 %i.ak, i64 -1, i64 %i.al
  %i.an = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.am) #18 ; 9 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.ae, ptr %i.an, align 8
  %.ptr27.i.ptr = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = icmp eq i32 %i.ad, 0
  br i1 %i.ap, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit, label %.preheader96.preheader

.preheader96.preheader:                           ; preds = %bb.g
  %i.aq = add nsw i64 %i.ah, -56                  ; 2 uses
  %i.ar = udiv i64 %i.aq, 56                      ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %i.at = icmp ult i64 %i.aq, 56
  br i1 %i.at, label %.preheader96.epil.preheader, label %.preheader96.preheader.new

.preheader96.preheader.new:                       ; preds = %.preheader96.preheader
  %unroll_iter = and i64 %i.as, 1152921504606846974
  br label %.preheader96

.preheader96:                                     ; preds = %.preheader96, %.preheader96.preheader.new
  %.idx.i = phi i64 [ 8, %.preheader96.preheader.new ], [ %.add.i.1, %.preheader96 ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader96.preheader.new ], [ %niter.next.1, %.preheader96 ]
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model12SelectorKeysE, i64 16)>, ptr %.ptr.ptr.i, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 16
  store ptr null, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 24
  store i32 0, ptr %i.av, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.aw, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 40
  store i8 0, ptr %i.ax, align 8, !tbaa !107
  %i.ay = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 44
  store i32 0, ptr %i.ay, align 4, !tbaa !112
  %i.az = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 48
  store ptr null, ptr %i.az, align 8, !tbaa !113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i ; 7 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model12SelectorKeysE, i64 16)>, ptr %.ptr.ptr.i.1, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store ptr null, ptr %i.bb, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store i32 0, ptr %i.bc, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.bd, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  store i8 0, ptr %i.be, align 8, !tbaa !107
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 100
  store i32 0, ptr %i.bf, align 4, !tbaa !112
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  store ptr null, ptr %i.bg, align 8, !tbaa !113
  %.add.i.1 = add nuw nsw i64 %.idx.i, 112        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit33.i.unr-lcssa, label %.preheader96

.loopexit33.i.unr-lcssa:                          ; preds = %.preheader96
  %i.bh = and i64 %i.ar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod.not.not, label %.preheader96.epil.preheader, label %.loopexit33.i

.preheader96.epil.preheader:                      ; preds = %.loopexit33.i.unr-lcssa, %.preheader96.preheader
  %.idx.i.epil.init = phi i64 [ 8, %.preheader96.preheader ], [ %.add.i.1, %.loopexit33.i.unr-lcssa ]
  %lcmp.mod142 = trunc i64 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod142)
  %.ptr.ptr.i.epil = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.epil.init ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model12SelectorKeysE, i64 16)>, ptr %.ptr.ptr.i.epil, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 16
  store ptr null, ptr %i.bi, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 24
  store i32 0, ptr %i.bj, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.bk, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 40
  store i8 0, ptr %i.bl, align 8, !tbaa !107
  %i.bm = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 44
  store i32 0, ptr %i.bm, align 4, !tbaa !112
  %i.bn = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 48
  store ptr null, ptr %i.bn, align 8, !tbaa !113
  br label %.loopexit33.i

.loopexit33.i:                                    ; preds = %.loopexit33.i.unr-lcssa, %.preheader96.epil.preheader
  %i.bo = icmp sgt i32 %i.ad, 0
  br i1 %i.bo, label %.lr.ph.i, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit

.lr.ph.i:                                         ; preds = %.loopexit33.i
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ad to i64
  br label %bb.h

bb.h:                                             ; preds = %.noexc21, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc21 ] ; 3 uses
  %i.bu = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bv = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i32 noundef %i.bu)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN6icu_788message210data_model7VariantC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.bv)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc21:                                         ; preds = %.noexc
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %.ptr27.i.ptr, i64 %indvars.iv.i ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !40
  %i.bz = load i32, ptr %i.bp, align 8, !tbaa !40
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !40
  store i32 %i.by, ptr %i.bp, align 8, !tbaa !40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !8
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !8
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !8
  store ptr %i.cb, ptr %i.bq, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !42, !range !19, !noundef !20
  %i.cf = load i8, ptr %i.br, align 8, !tbaa !42, !range !19, !noundef !20
  store i8 %i.cf, ptr %i.cd, align 8, !tbaa !42
  store i8 %i.ce, ptr %i.br, align 8, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 44 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !40
  %i.ci = load i32, ptr %i.bs, align 4, !tbaa !40
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !40
  store i32 %i.ch, ptr %i.bs, align 4, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !113
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !113
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !113
  store ptr %i.ck, ptr %i.bt, align 8, !tbaa !113
  call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit, label %bb.h, !llvm.loop !178

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit: ; preds = %.noexc21, %bb.g, %.loopexit33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pr = load i32, ptr %2, align 4, !tbaa !26
  %i.cm = icmp slt i32 %.pr, 1
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !154 ; 2 uses
  br i1 %i.cm, label %bb.i, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread126

bb.i:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !36 ; 5 uses
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = icmp slt i32 %i.cp, 0
  %i.cs = shl nsw i64 %i.cq, 6                    ; 2 uses
  %i.ct = or disjoint i64 %i.cs, 8
  %i.cu = select i1 %i.cr, i64 -1, i64 %i.ct
  %i.cv = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.cu) #18 ; 11 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.cq, ptr %i.cv, align 8
  %.ptr27.i23.ptr = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = icmp eq i32 %i.cp, 0
  br i1 %i.cx, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.j
  %i.cy = add nsw i64 %i.cs, -64                  ; 2 uses
  %i.cz = lshr exact i64 %i.cy, 6
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %xtraiter143 = and i64 %i.da, 3                 ; 3 uses
  %i.db = icmp ult i64 %i.cy, 192
  br i1 %i.db, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter146 = and i64 %i.da, 576460752303423484
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.idx.i24 = phi i64 [ 8, %.preheader.i.preheader.new ], [ %.add.i26.3, %.preheader.i ] ; 5 uses
  %niter147 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter147.next.3, %.preheader.i ]
  %.ptr.ptr.i25 = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25, align 8, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i25, i64 8
  store i16 2, ptr %i.dc, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i24 ; 2 uses
  %.ptr.ptr.i25.1 = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25.1, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  store i16 2, ptr %i.de, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i24 ; 2 uses
  %.ptr.ptr.i25.2 = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25.2, align 8, !tbaa !24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 136
  store i16 2, ptr %i.dg, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i24 ; 2 uses
  %.ptr.ptr.i25.3 = getelementptr inbounds nuw i8, ptr %i.dh, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25.3, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 200
  store i16 2, ptr %i.di, align 8, !tbaa !21
  %.add.i26.3 = add nuw nsw i64 %.idx.i24, 256    ; 2 uses
  %niter147.next.3 = add i64 %niter147, 4         ; 2 uses
  %niter147.ncmp.3 = icmp eq i64 %niter147.next.3, %unroll_iter146
  br i1 %niter147.ncmp.3, label %.loopexit33.i27.unr-lcssa, label %.preheader.i

.loopexit33.i27.unr-lcssa:                        ; preds = %.preheader.i
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.loopexit33.i27, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit33.i27.unr-lcssa, %.preheader.i.preheader
  %.idx.i24.epil.init = phi i64 [ 8, %.preheader.i.preheader ], [ %.add.i26.3, %.loopexit33.i27.unr-lcssa ]
  %lcmp.mod145 = icmp ne i64 %xtraiter143, 0
  call void @llvm.assume(i1 %lcmp.mod145)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.idx.i24.epil = phi i64 [ %.add.i26.epil, %.preheader.i.epil ], [ %.idx.i24.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %.ptr.ptr.i25.epil = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i24.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25.epil, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i25.epil, i64 8
  store i16 2, ptr %i.dj, align 8, !tbaa !21
  %.add.i26.epil = add nuw nsw i64 %.idx.i24.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter143
  br i1 %epil.iter.cmp.not, label %.loopexit33.i27, label %.preheader.i.epil, !llvm.loop !179

.loopexit33.i27:                                  ; preds = %.preheader.i.epil, %.loopexit33.i27.unr-lcssa
  %7 = icmp sgt i32 %i.cp, 0
  br i1 %7, label %.lr.ph.preheader.i, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit33.i27
  %wide.trip.count.i28 = zext nneg i32 %i.cp to i64
  br label %.lr.ph.i29

bb.k:                                             ; preds = %bb.i
  store i32 7, ptr %2, align 4, !tbaa !26
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread126

.lr.ph.i29:                                       ; preds = %.noexc34, %.lr.ph.preheader.i
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i31, %.noexc34 ] ; 3 uses
  %i.dk = trunc nuw nsw i64 %indvars.iv.i30 to i32
  %i.dl = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, i32 noundef %i.dk)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %.lr.ph.i29
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %.ptr27.i23.ptr, i64 %indvars.iv.i30
  %i.dn = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dm, ptr noundef nonnull align 8 dereferenceable(64) %i.dl)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc34:                                         ; preds = %.noexc33
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %wide.trip.count.i28
  br i1 %exitcond.not.i32, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %.lr.ph.i29, !llvm.loop !180

_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %.noexc34, %bb.j, %.loopexit33.i27
  %.pr77 = load i32, ptr %2, align 4, !tbaa !26
  %i.do = icmp sgt i32 %.pr77, 0
  br i1 %i.do, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN6icu_788message210data_model7MatcherC1EPNS_13UnicodeStringEiPNS1_7VariantEi(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr noundef nonnull %.ptr27.i23.ptr, i32 noundef %i.ac, ptr noundef nonnull %.ptr27.i.ptr, i32 noundef %i.y)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.dp = load i8, ptr %i.j, align 8, !tbaa !145
  %.not.i.i.i.i36 = icmp eq i8 %i.dp, -1
  br i1 %.not.i.i.i.i36, label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i, label %bb.n, !prof !47

bb.n:                                             ; preds = %bb.m
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.f) #18, !inline_history !181
  store i8 -1, ptr %i.j, align 8, !tbaa !145
  br label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i

_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i: ; preds = %bb.n, %bb.m
  invoke void @_ZN6icu_788message210data_model7MatcherC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull align 8 dereferenceable(44) %6)
          to label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  store i8 1, ptr %i.e, align 8, !tbaa !157
  %i.ds = load i64, ptr %i.cv, align 8            ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.o
  %.idx.i38 = shl nsw i64 %i.ds, 6
  %.ptr27.i23.add = or disjoint i64 %.idx.i38, 8
  br label %.preheader.i39

.preheader.i39:                                   ; preds = %.preheader.i39, %.preheader.preheader.i
  %.idx = phi i64 [ %.add, %.preheader.i39 ], [ %.ptr27.i23.add, %.preheader.preheader.i ]
  %.add = add nsw i64 %.idx, -64                  ; 3 uses
  %.ptr132 = getelementptr inbounds i8, ptr %i.cv, i64 %.add
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr132) #18
  %i.du = icmp eq i64 %.add, 8
  br i1 %i.du, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread, label %.preheader.i39

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread: ; preds = %.preheader.i39, %bb.o
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.cv) #18
  br label %bb.p

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread126: ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit, %bb.k
  store i8 1, ptr %i.e, align 8, !tbaa !157
  br label %bb.p

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.f
  store i32 7, ptr %2, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i8 1, ptr %i.e, align 8, !tbaa !157
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit.thread

bb.p:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread126, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread
  %i.dv = load i64, ptr %i.an, align 8            ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.loopexit.i43, label %.preheader.preheader.i40

.preheader.preheader.i40:                         ; preds = %bb.p
  %.idx.i41 = mul nsw i64 %i.dv, 56
  %.ptr27.i.add = add nsw i64 %.idx.i41, 8
  br label %.preheader.i42

.preheader.i42:                                   ; preds = %.preheader.i42, %.preheader.preheader.i40
  %.idx134 = phi i64 [ %.add135, %.preheader.i42 ], [ %.ptr27.i.add, %.preheader.preheader.i40 ]
  %.add135 = add nsw i64 %.idx134, -56            ; 3 uses
  %.ptr136 = getelementptr inbounds i8, ptr %i.an, i64 %.add135
  call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.ptr136) #18
  %i.dx = icmp eq i64 %.add135, 8
  br i1 %i.dx, label %.loopexit.i43, label %.preheader.i42

.loopexit.i43:                                    ; preds = %.preheader.i42, %bb.p
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.an) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit.thread

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit: ; preds = %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i
  store i8 0, ptr %i.j, align 8, !tbaa !145
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit, %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceIS4_JRKS4_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISA_EERSA_E4typeEDpOSB_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !153 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !36 ; 4 uses
  store i32 %i.eb, ptr %i.l, align 8, !tbaa !166
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ed = load i32, ptr %2, align 4, !tbaa !26
  %i.ee = icmp slt i32 %i.ed, 1
  br i1 %i.ee, label %bb.s, label %.loopexit90

bb.s:                                             ; preds = %bb.r
  %i.ef = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.eg = mul nuw nsw i64 %i.ef, 344              ; 2 uses
  %i.eh = add nuw nsw i64 %i.eg, 8
  %i.ei = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.eh) #18 ; 6 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.u, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.s
  store i64 %i.ef, ptr %i.ei, align 8
  %.ptr27.i46 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.t
  %.idx.i47 = phi i64 [ %.add.i51, %bb.t ], [ 8, %.preheader.preheader ] ; 5 uses
  %.ptr.ptr.i48 = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx.i47 ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7BindingE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %.ptr.ptr.i48, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 16
  store i16 2, ptr %i.ek, align 8, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 72
  invoke void @_ZN6icu_788message210data_model10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.el)
          to label %bb.t unwind label %.body.i

.body.i:                                          ; preds = %.preheader
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.en) #18
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(344) %.ptr.ptr.i48) #18
  %i.eo = icmp eq i64 %.idx.i47, 8
  br i1 %i.eo, label %.loopexit33.i50, label %.preheader.i49

bb.t:                                             ; preds = %.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 328
  store i8 1, ptr %i.ep, align 8, !tbaa !121
  %i.eq = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 336
  store ptr null, ptr %i.eq, align 8, !tbaa !129
  %.add.i51 = add nuw nsw i64 %.idx.i47, 344
  %i.er = add nuw nsw i64 %.idx.i47, 336
  %i.es = icmp eq i64 %i.er, %i.eg
  br i1 %i.es, label %.lr.ph.preheader.i52, label %.preheader

.lr.ph.preheader.i52:                             ; preds = %bb.t
  %wide.trip.count.i53 = zext nneg i32 %i.eb to i64
  br label %.lr.ph.i54

bb.u:                                             ; preds = %bb.s
  store i32 7, ptr %2, align 4, !tbaa !26
  br label %.loopexit90

.preheader.i49:                                   ; preds = %.body.i, %.preheader.i49
  %.idx28.i = phi i64 [ %.add29.i, %.preheader.i49 ], [ %.idx.i47, %.body.i ]
  %.add29.i = add nsw i64 %.idx28.i, -344         ; 3 uses
  %.ptr31.i = getelementptr inbounds i8, ptr %i.ei, i64 %.add29.i
  call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %.ptr31.i) #18
  %i.et = icmp eq i64 %.add29.i, 8
  br i1 %i.et, label %.loopexit33.i50, label %.preheader.i49

.loopexit33.i50:                                  ; preds = %.preheader.i49, %.body.i
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ei) #18
  br label %.body

.lr.ph.i54:                                       ; preds = %.noexc59, %.lr.ph.preheader.i52
  %indvars.iv.i55 = phi i64 [ 0, %.lr.ph.preheader.i52 ], [ %indvars.iv.next.i56, %.noexc59 ] ; 3 uses
  %i.eu = trunc nuw nsw i64 %indvars.iv.i55 to i32
  %i.ev = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, i32 noundef %i.eu)
          to label %.noexc58 unwind label %.loopexit

.noexc58:                                         ; preds = %.lr.ph.i54
  invoke void @_ZN6icu_788message210data_model7BindingC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(344) %3, ptr noundef nonnull align 8 dereferenceable(344) %i.ev)
          to label %.noexc59 unwind label %.loopexit

.noexc59:                                         ; preds = %.noexc58
  %i.ew = getelementptr inbounds nuw [344 x i8], ptr %.ptr27.i46, i64 %indvars.iv.i55
  call void @_ZN6icu_788message210data_model4swapERNS1_7BindingES3_(ptr noundef nonnull align 8 dereferenceable(344) %i.ew, ptr noundef nonnull align 8 dereferenceable(344) %3) #18
  call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %3) #18
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i53
  br i1 %exitcond.not.i57, label %.loopexit90, label %.lr.ph.i54, !llvm.loop !182

.loopexit90:                                      ; preds = %.noexc59, %bb.u, %bb.r
  %.020.i45 = phi ptr [ null, %bb.r ], [ null, %bb.u ], [ %.ptr27.i46, %.noexc59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ex = load ptr, ptr %i.k, align 8, !tbaa !147 ; 4 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit, label %bb.v

bb.v:                                             ; preds = %.loopexit90
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 -8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8            ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.loopexit.i63, label %.preheader.preheader.i60

.preheader.preheader.i60:                         ; preds = %bb.v
  %.idx.i61 = mul nsw i64 %i.fa, 344
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 %.idx.i61
  br label %.preheader.i62

.preheader.i62:                                   ; preds = %.preheader.i62, %.preheader.preheader.i60
end_hunk_2
