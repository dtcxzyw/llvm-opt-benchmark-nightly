inline.NumInlined: 11767
inline.NumDeleted: 5033
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE10TryNextRunERmS4_:bb.a
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 48
  %.not6 = icmp ult i64 %i.i, %i.p
  br i1 %.not6, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef 0)
          to label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit unwind label %bb.e ; 2 uses

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !356
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !353
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !827
  %i.aa = shl i64 %i.z, 5                         ; 3 uses
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !827
  %i.ab = add i64 %i.aa, -1
  %i.ac = add i64 %i.ab, %i.x
  %i.ad = udiv i64 %i.ac, %i.aa                   ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !828
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ae, align 8, !tbaa !817
  store atomic i64 0, ptr %i.c seq_cst, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  resume { ptr, i32 } %i.af

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit
  %i.ah = phi i64 [ %i.f, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge ], [ %i.ad, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit ]
  %i.ai = phi i64 [ %.pre, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge ], [ 0, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11LowestLevelEv.exit ]
  %.not7 = icmp ult i64 %i.ai, %i.ah
  br i1 %.not7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load atomic i64, ptr %i.ak seq_cst, align 8
  store i64 %i.al, ptr %1, align 8, !tbaa !252
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !817 ; 2 uses
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !817
  store i64 %i.am, ptr %2, align 8, !tbaa !252
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.g
  %.0 = phi i1 [ true, %bb.g ], [ false, %bb.c ], [ false, %bb.f ]
  %i.ao = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE8BuildRunEmm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 13 uses
  %i.d = alloca i64, align 8                      ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::array.1292", align 8  ; 8 uses
  %6 = alloca %"struct.std::array.1273", align 8  ; 11 uses
  %7 = alloca %"struct.std::array.1273", align 8  ; 6 uses
  %8 = alloca %"struct.std::array.1292", align 8  ; 7 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) ; 3 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = add i64 %1, -1
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !356
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !353
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp ugt i64 %1, 1
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = add i64 %1, -1                           ; 2 uses
  %i.u = add i64 %1, -2
  %xtraiter = and i64 %i.t, 7                     ; 3 uses
  %i.v = icmp ult i64 %i.u, 7
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.t, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.w = shl i64 %.050134, 35
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050134.epil.init = phi i64 [ 32, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod198 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.050134.epil = phi i64 [ %i.x, %.lr.ph.epil ], [ %.050134.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = shl i64 %.050134.epil, 5                 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !2043

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.050.lcssa = phi i64 [ 32, %bb.a ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.x, %.lr.ph.epil ] ; 2 uses
  %.046.lcssa = phi i64 [ 1, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %.050134.epil, %.lr.ph.epil ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %6, i8 0, i64 512, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %7, i8 0, i64 512, i1 false)
  %i.y = mul i64 %.050.lcssa, %2                  ; 2 uses
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050134 = phi i64 [ 32, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.z = shl i64 %.050134, 40                     ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2044

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %8, i8 0, i64 496, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %5, i8 0, i64 496, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 240
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i, %bb.b
  %.075.i = phi i64 [ 0, %bb.b ], [ %i.as, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i ] ; 5 uses
  %.idx.i = shl nuw nsw i64 %.075.i, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 %.idx.i ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !252 ; 5 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !252 ; 5 uses
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i, label %bb.d

._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i: ; preds = %bb.c
  %.phi.trans.insert78.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.pre79.i = load i64, ptr %.phi.trans.insert78.i, align 8, !tbaa !636
  br label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp ult i64 %i.af, %i.ae
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !636 ; 2 uses
  br i1 %i.ah, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !636 ; 2 uses
  %i.ak = icmp ult i64 %.pre.i, %i.aj
  br i1 %i.ak, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i: ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i, %bb.d
  br label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i: ; preds = %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i
  %.sink185 = phi i64 [ %i.ae, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i ], [ %i.af, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i ], [ %i.af, %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i ]
  %.pre.i.sink = phi i64 [ %.pre.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i ], [ %i.aj, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i ], [ %.pre79.i, %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i ]
  %.sink = phi i64 [ %i.af, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i ], [ %i.ae, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i ], [ %i.ae, %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i ]
  %.sink.i = phi i64 [ 24, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread69.i ], [ 8, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.i ], [ 8, %._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread_crit_edge.i ]
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.075.i ; 2 uses
  store i64 %.sink185, ptr %i.al, align 8, !tbaa !634
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.pre.i.sink, ptr %i.am, align 8, !tbaa !636
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.075.i
  store i64 %.sink, ptr %i.an, align 8, !tbaa !634
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.075.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sink.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !636
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !636
  %i.as = add nuw nsw i64 %.075.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, 16
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.c, !llvm.loop !2045

.preheader.i:                                     ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i
  %i.at = phi i64 [ %i.bg, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i ], [ 14, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit.thread.i ] ; 5 uses
  %.idx97.i = shl i64 %i.at, 5
  %i.au = getelementptr i8, ptr %5, i64 %.idx97.i ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = getelementptr i8, ptr %i.au, i64 32
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !252 ; 5 uses
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !252 ; 5 uses
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i, label %bb.e

.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i: ; preds = %.preheader.i
  %.phi.trans.insert84.i = getelementptr i8, ptr %i.au, i64 40
  %.pre85.i = load i64, ptr %.phi.trans.insert84.i, align 8, !tbaa !636
  %.phi.trans.insert86.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.pre87.i = load i64, ptr %.phi.trans.insert86.i, align 8, !tbaa !636
  br label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i

bb.e:                                             ; preds = %.preheader.i
  %i.ba = icmp uge i64 %i.ay, %i.ax
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.pre81.i = load i64, ptr %.phi.trans.insert80.i, align 8, !tbaa !636 ; 3 uses
  %.phi.trans.insert82.i = getelementptr i8, ptr %i.au, i64 40
  %.pre83.i = load i64, ptr %.phi.trans.insert82.i, align 8, !tbaa !636 ; 3 uses
  %i.bb = icmp ult i64 %.pre81.i, %.pre83.i
  %or.cond.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i: ; preds = %bb.e
  br label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i: ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i, %bb.e, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i
  %.sink107.i = phi i64 [ %i.ax, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i ], [ %i.ay, %bb.e ], [ %i.ay, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i ]
  %.pre81.sink.i = phi i64 [ %.pre81.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i ], [ %.pre83.i, %bb.e ], [ %.pre85.i, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i ]
  %.sink103.i = phi i64 [ %i.ay, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i ], [ %i.ax, %bb.e ], [ %i.ax, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i ]
  %.pre83.sink.i = phi i64 [ %.pre83.i, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread72.i ], [ %.pre81.i, %bb.e ], [ %.pre87.i, %.preheader._ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread_crit_edge.i ]
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.at ; 2 uses
  store i64 %.sink107.i, ptr %i.bc, align 8, !tbaa !634
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %.pre81.sink.i, ptr %i.bd, align 8, !tbaa !636
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.at ; 2 uses
  store i64 %.sink103.i, ptr %i.be, align 8, !tbaa !634
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.pre83.sink.i, ptr %i.bf, align 8, !tbaa !636
  %i.bg = add nsw i64 %i.at, -1
  %.not65.i = icmp eq i64 %i.at, 0
  br i1 %.not65.i, label %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE10StartGamesERSt5arrayISt4pairImmELm31EERKS4_IS6_Lm32EERKS6_.exit, label %.preheader.i, !llvm.loop !2046

_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE10StartGamesERSt5arrayISt4pairImmELm31EERKS4_IS6_Lm32EERKS6_.exit: ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE15CompareElementsclERKSt4pairImmES8_.exit67.thread.i
  %i.bh = shl i64 %2, 5
  %i.bi = lshr exact i64 %.050.lcssa, 5
  %i.bj = add nuw nsw i64 %i.bi, 2
  %i.bk = mul i64 %i.bh, %i.bj                    ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %5, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.bl = icmp ne i64 %.sroa.0.0.copyload.i, -1
  %i.bm = icmp ne i64 %.sroa.2.0.copyload.i, -1
  %.not3.i139 = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %.not3.i139, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE10StartGamesERSt5arrayISt4pairImmELm31EERKS4_IS6_Lm32EERKS6_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge, %bb.i
  %storemerge136 = phi i64 [ 0, %._crit_edge ], [ %i.ca, %bb.i ] ; 6 uses
  %i.bo = mul i64 %storemerge136, %.046.lcssa
  %i.bp = add i64 %i.bo, %i.y                     ; 3 uses
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.r) ; 2 uses
  %i.br = add i64 %i.bp, %.046.lcssa
  %i.bs = tail call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %i.r) ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %storemerge136 ; 2 uses
  store i64 %i.bq, ptr %i.bt, align 8, !tbaa !634
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !636
  %.not = icmp eq i64 %i.bq, %i.bs
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.bp)
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !252
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %storemerge136 ; 2 uses
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !634
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %storemerge136, ptr %i.by, align 8, !tbaa !636
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %storemerge136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 -1, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ca = add nuw nsw i64 %storemerge136, 1       ; 2 uses
  %exitcond154.not = icmp eq i64 %i.ca, 32
  br i1 %exitcond154.not, label %bb.b, label %bb.f, !llvm.loop !2047

bb.j:                                             ; preds = %.lr.ph144, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit
  %.048143 = phi i64 [ %i.bk, %.lr.ph144 ], [ %.2, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit ] ; 2 uses
  %.049142 = phi i64 [ %i.y, %.lr.ph144 ], [ %i.di, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit ] ; 3 uses
  %.sroa.7.0141 = phi i64 [ %.sroa.2.0.copyload.i, %.lr.ph144 ], [ %.sroa.7.1, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit ] ; 4 uses
  %.sroa.0101.0140 = phi i64 [ %.sroa.0.0.copyload.i, %.lr.ph144 ], [ %.sroa.0101.1, %_ZN6duckdb13MergeSortTreeImmSt4lessImELm32ELm32EE11ReplayGamesERSt5arrayISt4pairImmELm31EEmRKS6_.exit ]
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !667 ; 4 uses
  %i.cc = load ptr, ptr %i.bn, align 8, !tbaa !667
  %i.cd = icmp ne ptr %i.cb, %i.cc
  %i.ce = and i64 %.049142, 31
  %i.cf = icmp eq i64 %i.ce, 0
  %or.cond = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %or.cond, label %.preheader128, label %.loopexit129

.preheader128:                                    ; preds = %bb.j
  %i.cg = ptrtoint ptr %i.cb to i64               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1, %.preheader128
  %.047138 = phi i64 [ 0, %.preheader128 ], [ %i.dh, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1 ] ; 3 uses
  %.1137 = phi i64 [ %.048143, %.preheader128 ], [ %i.df, %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit.1 ] ; 5 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047138
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !634
  %i.cj = load ptr, ptr %i.bn, align 8, !tbaa !356 ; 2 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cg
  %i.cm = ashr exact i64 %i.cl, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.1137, ptr %i.e, align 8, !tbaa !252
  store i64 %i.cm, ptr %i.f, align 8, !tbaa !252
  %.not.i.i.i = icmp ult i64 %.1137, %i.cm
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit, label %.noexc.i, !prof !257

.noexc.i:                                         ; preds = %_ZN6duckdb6vectorImLb1ESaImEEixEm.exit, %bb.k
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.co, ptr %4, align 8, !tbaa !706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 55, ptr %i.b, align 8, !tbaa !252
  %i.cp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cp, ptr %4, align 8, !tbaa !156
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !252 ; 3 uses
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.cp, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !707
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  store i8 0, ptr %i.cs, align 1, !tbaa !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.n unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume.sink.split

bb.m:                                             ; preds = %bb.l, %.noexc
  %.0.i.i.i = phi i1 [ false, %bb.l ], [ true, %.noexc ] ; 2 uses
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cv = load ptr, ptr %4, align 8, !tbaa !156   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.co
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.cv) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.0.i.i.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88
  %.sink187 = phi ptr [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i83 ], [ %i.fs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88 ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87 ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i83 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88 ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink187) #29
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i88 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.l
  unreachable

_ZN6duckdb6vectorImLb1ESaImEEixEm.exit:           ; preds = %bb.k
  %i.cx = add nuw i64 %.1137, 1                   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.1137
  store i64 %i.ci, ptr %i.cy, align 8, !tbaa !252
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.047138
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
end_hunk_0
