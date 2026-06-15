inline.NumInlined: 6020
inline.NumDeleted: 2067
begin_hunk_0_@_ZN5folly3gen6detail10byLineImplENS_4FileEcb:bb.a
  %i.c = load i64, ptr %6, align 8, !tbaa !208, !noalias !2818 ; 2 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !208, !alias.scope !2818
  store ptr null, ptr %6, align 8, !tbaa !208, !noalias !2818
  %.cast.i = inttoptr i64 %i.c to ptr             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.cast.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !221
  %i.f = getelementptr inbounds nuw i8, ptr %.cast.i, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !209
  store i64 0, ptr %.cast.i, align 8, !tbaa !210
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  invoke void @_ZN5folly3genorINS_5RangeIPKhEENS0_6detail10FileReaderENS6_3MapINS0_4CastINS2_IPKcEEEEEEEEDTcldtcldtfp0_4selfE7composeclsr3stdE4movecldtfp_4selfEEEEONS0_7GenImplIT_T0_EERKNS0_8OperatorIT1_EE(ptr dead_on_unwind nonnull writable sret(%"class.folly::gen::detail::Map<folly::gen::Cast<folly::Range<const char *>>>::Generator.11") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0.extract.trunc = zext i1 %3 to i8
  call void @llvm.experimental.noalias.scope.decl(metadata !2821)
  call void @llvm.experimental.noalias.scope.decl(metadata !2824)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2821
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(17) %7) #36, !noalias !2827
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !208, !noalias !2827
  store i64 %i.i, ptr %i.g, align 8, !tbaa !208, !noalias !2827
  store ptr null, ptr %i.h, align 8, !tbaa !208, !noalias !2827
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull align 8 dereferenceable(17) %4) #36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.g, align 8, !tbaa !208, !noalias !2827
  store i64 %i.k, ptr %i.j, align 8, !tbaa !208, !alias.scope !2827
  store ptr null, ptr %i.g, align 8, !tbaa !208, !noalias !2827
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %2, ptr %i.l, align 8, !tbaa !182, !alias.scope !2827
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.5.0.extract.trunc, ptr %i.m, align 1, !tbaa !218, !alias.scope !2827
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(5) dereferenceable(17) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !2821
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !208  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN5folly3gen6detail3MapINS0_4CastINS_5RangeIPKcEEEEE9GeneratorINS4_IPKhEENS1_10FileReaderEOS7_ED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i: ; preds = %bb.d
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.n) #36
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.n) #36
  br label %_ZN5folly3gen6detail3MapINS0_4CastINS_5RangeIPKcEEEEE9GeneratorINS4_IPKhEENS1_10FileReaderEOS7_ED2Ev.exit

_ZN5folly3gen6detail3MapINS0_4CastINS_5RangeIPKcEEEEE9GeneratorINS4_IPKhEENS1_10FileReaderEOS7_ED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(5) dereferenceable(17) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !208  ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5folly3gen6detail10FileReaderD2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i: ; preds = %_ZN5folly3gen6detail3MapINS0_4CastINS_5RangeIPKcEEEEE9GeneratorINS4_IPKhEENS1_10FileReaderEOS7_ED2Ev.exit
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.o) #36
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.o) #36
  br label %_ZN5folly3gen6detail10FileReaderD2Ev.exit

_ZN5folly3gen6detail10FileReaderD2Ev.exit:        ; preds = %_ZN5folly3gen6detail3MapINS0_4CastINS_5RangeIPKcEEEEE9GeneratorINS4_IPKhEENS1_10FileReaderEOS7_ED2Ev.exit, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(5) dereferenceable(16) %8) #36
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  ret void

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @_ZN5folly3gen6detail10FileReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #36
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.a, %bb.b ]
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3genorINS_5RangeIPKhEENS0_6detail10FileReaderENS6_3MapINS0_4CastINS2_IPKcEEEEEEEEDTcldtcldtfp0_4selfE7composeclsr3stdE4movecldtfp_4selfEEEEONS0_7GenImplIT_T0_EERKNS0_8OperatorIT1_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::gen::detail::Map<folly::gen::Cast<folly::Range<const char *>>>::Generator.11") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::gen::detail::FileReader", align 8 ; 6 uses
  %4 = alloca %"class.folly::gen::detail::FileReader", align 8 ; 4 uses
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !208
  store i64 %i.c, ptr %i.a, align 8, !tbaa !208
  store ptr null, ptr %i.b, align 8, !tbaa !208
  call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #36, !noalias !2828
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !208, !noalias !2828
  store i64 %i.e, ptr %i.d, align 8, !tbaa !208, !noalias !2828
  store ptr null, ptr %i.a, align 8, !tbaa !208, !noalias !2828
  call void @_ZN5folly4FileC1EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) #36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.d, align 8, !tbaa !208, !noalias !2828
  store i64 %i.g, ptr %i.f, align 8, !tbaa !208, !alias.scope !2828
  store ptr null, ptr %i.d, align 8, !tbaa !208, !noalias !2828
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(5) dereferenceable(16) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !208  ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5folly3gen6detail10FileReaderD2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i: ; preds = %bb.a
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #36
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.h) #36
  br label %_ZN5folly3gen6detail10FileReaderD2Ev.exit

_ZN5folly3gen6detail10FileReaderD2Ev.exit:        ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i
  call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(5) dereferenceable(16) %4) #36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3gen6detail10FileReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #36
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.b) #36
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  tail call void @_ZN5folly4FileD1Ev(ptr noundef nonnull align 4 dead_on_return(5) dereferenceable(5) %0) #36
  ret void
}

declare void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufdlEPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5folly15getHugePageSizeEm(i64 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly16getHugePageSizesEvE5sizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly16getHugePageSizesEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16getHugePageSizesEvE5sizes) #36
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly16getHugePageSizesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN5folly12_GLOBAL__N_117readHugePageSizesEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN5folly12HugePageSizeESaIS1_EED2Ev, ptr nonnull @_ZZN5folly16getHugePageSizesEvE5sizes, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16getHugePageSizesEvE5sizes) #36
  br label %_ZN5folly16getHugePageSizesEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly16getHugePageSizesEvE5sizes) #36
  resume { ptr, i32 } %i.e

_ZN5folly16getHugePageSizesEv.exit:               ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr @_ZZN5folly16getHugePageSizesEvE5sizes, align 8, !tbaa !160 ; 3 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16getHugePageSizesEvE5sizes, i64 8), align 8, !tbaa !160 ; 3 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly16getHugePageSizesEv.exit
  %i.i = icmp eq i64 %0, 0
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.sroa.014.022.us = phi ptr [ %i.m, %bb.f ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.014.022.us, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.022.us, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %select.unfold, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.sroa.014.022 = phi ptr [ %i.t, %bb.h ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.022, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.r = load i64, ptr %.sroa.014.022, align 8
  %i.s = icmp eq i64 %0, %i.r
  br i1 %i.s, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.022, i64 48 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %select.unfold, label %.lr.ph.split

select.unfold:                                    ; preds = %bb.g, %bb.h, %.lr.ph.split.us, %bb.f, %_ZN5folly16getHugePageSizesEv.exit
  %i.v = phi ptr [ null, %bb.f ], [ null, %_ZN5folly16getHugePageSizesEv.exit ], [ %.sroa.014.022.us, %.lr.ph.split.us ], [ null, %bb.h ], [ %.sroa.014.022, %bb.g ]
  ret ptr %i.v
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5folly24getHugePageSizeForDeviceEm(i64 noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly16getHugePageSizesEvE5sizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly16getHugePageSizesEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly16getHugePageSizesEvE5sizes) #36
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly16getHugePageSizesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN5folly12_GLOBAL__N_117readHugePageSizesEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIN5folly12HugePageSizeESaIS1_EED2Ev, ptr nonnull @_ZZN5folly16getHugePageSizesEvE5sizes, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly16getHugePageSizesEvE5sizes) #36
  br label %_ZN5folly16getHugePageSizesEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly16getHugePageSizesEvE5sizes) #36
  resume { ptr, i32 } %i.e

_ZN5folly16getHugePageSizesEv.exit:               ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr @_ZZN5folly16getHugePageSizesEvE5sizes, align 8, !tbaa !160 ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly16getHugePageSizesEvE5sizes, i64 8), align 8, !tbaa !160 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly16getHugePageSizesEv.exit, %bb.f
  %.sroa.010.017 = phi ptr [ %i.i, %bb.f ], [ %i.f, %_ZN5folly16getHugePageSizesEv.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp ne i64 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 40
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %0, %i.o
  %.not16 = select i1 %i.m, i1 %i.p, i1 false
  br i1 %.not16, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %_ZN5folly16getHugePageSizesEv.exit
  %i.q = phi ptr [ null, %_ZN5folly16getHugePageSizesEv.exit ], [ %.sroa.010.017, %.lr.ph ], [ null, %bb.f ]
  ret ptr %i.q
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #32

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #30 = { mustprogress noinline uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { noreturn }
attributes #36 = { nounwind }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn nounwind }
attributes #39 = { builtin nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { allocsize(0) }
attributes #43 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!17, !13, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !18, i64 8, !9, i64 16}
!18 = !{!"long", !9, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{!17, !18, i64 8}
!21 = !{!"branch_weights", i32 1, i32 1048575}
!22 = !{!23, !32, i64 76}
!23 = !{!"_ZTSN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEE", !24, i64 0, !29, i64 24, !30, i64 32, !33, i64 56, !8, i64 72, !32, i64 76}
!24 = !{!"_ZTSSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE", !14, i64 0}
!29 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !13, i64 0}
!30 = !{!"_ZTSN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE", !31, i64 0, !32, i64 16}
!31 = !{!"_ZTSSt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_E", !29, i64 0, !29, i64 8}
!32 = !{!"bool", !9, i64 0}
!33 = !{!"_ZTSSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEE", !34, i64 0}
!34 = !{!"_ZTSSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !36, i64 8}
!35 = !{!"p1 _ZTSN5boost13re_detail_50020named_subexpressionsE", !14, i64 0}
!36 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSN5boost10filesystem11file_statusE", !40, i64 0, !41, i64 4}
!40 = !{!"_ZTSN5boost10filesystem9file_typeE", !9, i64 0}
!41 = !{!"_ZTSN5boost10filesystem5permsE", !9, i64 0}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSN5boost13intrusive_ptrINS_10filesystem6detail11dir_itr_impEEE", !44, i64 0}
!44 = !{!"p1 _ZTSN5boost10filesystem6detail11dir_itr_impE", !14, i64 0}
!45 = !{!46, !14, i64 56}
!46 = !{!"_ZTSN5boost10filesystem6detail11dir_itr_impE", !47, i64 0, !49, i64 8, !14, i64 56}
!47 = !{!"_ZTSN5boost12sp_adl_block21intrusive_ref_counterINS_10filesystem6detail11dir_itr_impENS0_19thread_safe_counterEEE", !48, i64 0}
!48 = !{!"_ZTSN5boost6detail12atomic_countE", !8, i64 0}
!49 = !{!"_ZTSN5boost10filesystem15directory_entryE", !50, i64 0, !39, i64 32, !39, i64 40}
!50 = !{!"_ZTSN5boost10filesystem4pathE", !17, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!27, !28, i64 8}
!54 = !{!27, !28, i64 0}
!55 = !{!30, !32, i64 16}
!56 = !{!13, !13, i64 0}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN5folly6detail11parseToWrapImEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueES9_E4typeES6_S8_: argument 0"}
!59 = distinct !{!59, !"_ZN5folly6detail11parseToWrapImEENSt9enable_ifIXntsr3std7is_voidIDTcl7parseTotlNS_5RangeIPKcEEEclsr3stdE7declvalIRT_EEEEEE5valueES9_E4typeES6_S8_"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN5folly7parseToImEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_: argument 0"}
!62 = distinct !{!62, !"_ZN5folly7parseToImEENSt9enable_ifIX15is_arithmetic_vIT_EENS_8ExpectedINS_5RangeIPKcEENS_14ConversionCodeEEEE4typeES7_RS2_"}
!63 = !{!61, !58}
end_hunk_0
