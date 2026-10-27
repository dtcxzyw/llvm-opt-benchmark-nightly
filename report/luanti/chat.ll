Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/chat?download=true
inline.NumInlined: 1363
inline.NumDeleted: 545
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10ChatBuffer5clearEv:bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !55
  br label %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #28
  unreachable

_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit:      ; preds = %bb.a, %_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.h, %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit ] ; 2 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %.05.i.i.i.i) #26
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !51
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit: ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.l, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.m, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK10ChatBuffer12getLineCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 168
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(168) ptr @_ZNK10ChatBuffer7getLineEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw [168 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10ChatBuffer4stepEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0, float noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load float, ptr %.sroa.05.09, align 8, !tbaa !68
  %i.f = fadd nsz float %1, %i.e
  store float %i.f, ptr %.sroa.05.09, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10ChatBuffer14scrollAbsoluteEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) initializes((40, 44)) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 3 uses
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  %.not.i = icmp slt i32 %i.k, %i.i
  %or.cond.i = or i1 %i.l, %.not.i
  %i.m = sub nsw i32 %i.i, %i.k                   ; 2 uses
  %.0.i = select i1 %or.cond.i, i32 0, i32 %i.m
  %.0.i7 = select i1 %i.l, i32 0, i32 %i.m
  %spec.select = tail call i32 @llvm.smax.i32(i32 %1, i32 %.0.i)
  %storemerge6 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %.0.i7)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %storemerge6, ptr %i.n, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ChatBuffer11deleteByAgeEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 168
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %.06 = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.j = getelementptr inbounds nuw [168 x i8], ptr %i.d, i64 %i.i
  %i.k = load float, ptr %i.j, align 8, !tbaa !68
  %i.l = fcmp nsz ogt float %i.k, %1
  br i1 %i.l, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.m = add i32 %.06, 1                          ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = icmp ugt i64 %i.h, %i.n
  br i1 %i.o, label %.lr.ph, label %.critedge, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %bb.b ], [ %.06, %.lr.ph ]
  tail call void @_ZN10ChatBuffer12deleteOldestEj(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %.0.lcssa)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK10ChatBuffer7getRowsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ChatBuffer8reformatEjj(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp eq i32 %2, 0
  %or.cond = or i1 %i.a, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %.05.i.i.i.i) #26
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.g, ptr %i.h, align 8, !tbaa !51
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.c, align 8, !tbaa !71
  %.not = icmp eq i32 %1, %i.k                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %.not29 = icmp eq i32 %2, %i.m
  %or.cond32 = select i1 %.not, i1 %.not29, i1 false
  br i1 %or.cond32, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !70   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51   ; 3 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !50   ; 9 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 5
  %i.x = icmp eq i32 %i.m, 0
  %i.y = trunc i64 %i.w to i32
  %i.z = sub nsw i32 %i.y, %i.m
  %.0.i = select i1 %i.x, i32 0, i32 %i.z
  %i.aa = icmp ne i32 %i.o, %.0.i                 ; 2 uses
  %i.ab = icmp sgt i32 %i.o, 0
  %or.cond49 = and i1 %i.aa, %i.ab
  br i1 %or.cond49, label %.lr.ph.preheader, label %.loopexit41

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ac = icmp ult i32 %i.o, 4
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.02342 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.3, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !81, !range !49, !noundef !92
  %i.ag = zext nneg i8 %i.af to i32
  %spec.select = add i32 %.02342, %i.ag
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !81, !range !49, !noundef !92
  %i.ak = zext nneg i8 %i.aj to i32
  %spec.select.1 = add i32 %spec.select, %i.ak
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load i8, ptr %i.am, align 8, !tbaa !81, !range !49, !noundef !92
  %i.ao = zext nneg i8 %i.an to i32
  %spec.select.2 = add i32 %spec.select.1, %i.ao
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !81, !range !49, !noundef !92
  %i.as = zext nneg i8 %i.ar to i32
  %spec.select.3 = add i32 %spec.select.2, %i.as  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit41.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !139

.loopexit41.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit41, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit41.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit41.loopexit.unr-lcssa ]
  %.02342.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.3, %.loopexit41.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.02342.epil = phi i32 [ %.02342.epil.init, %.lr.ph.epil.preheader ], [ %spec.select.epil, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv.epil
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i8, ptr %i.au, align 8, !tbaa !81, !range !49, !noundef !92
  %i.aw = zext nneg i8 %i.av to i32
  %spec.select.epil = add i32 %.02342.epil, %i.aw ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit41, label %.lr.ph.epil, !llvm.loop !140

.loopexit41:                                      ; preds = %.loopexit41.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  %.225 = phi i32 [ 0, %bb.d ], [ %spec.select.3, %.loopexit41.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ]
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.loopexit41
  %.not.i.i33 = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i33, label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38, label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i34
  %.05.i.i.i.i35 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i34 ], [ %i.s, %bb.e ] ; 2 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %.05.i.i.i.i35) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i35, i64 32 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.ax, %i.r
  br i1 %.not.i.i.i.i36, label %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i37, label %.lr.ph.i.i.i.i34, !llvm.loop !0

_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i37: ; preds = %.lr.ph.i.i.i.i34
  store ptr %i.s, ptr %i.q, align 8, !tbaa !51
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38: ; preds = %bb.e, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i37
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !54 ; 2 uses
  %.not50 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not50, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38, %bb.g
  %i.bc = phi ptr [ %i.br, %bb.g ], [ %i.bb, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ]
  %i.bd = phi i64 [ %i.bp, %bb.g ], [ 0, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ]
  %.045 = phi i32 [ %i.bo, %bb.g ], [ 0, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ] ; 2 uses
  %.02244 = phi i32 [ %.1, %bb.g ], [ 0, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ]
  %i.be = icmp eq i32 %.045, %.225
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph46
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = lshr exact i64 %i.bj, 5
  %i.bl = trunc i64 %i.bk to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph46
  %.1 = phi i32 [ %i.bl, %bb.f ], [ %.02244, %.lr.ph46 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [168 x i8], ptr %i.bc, i64 %i.bd
  %i.bn = tail call noundef i32 @_ZNK10ChatBuffer14formatChatLineERK8ChatLinejRSt6vectorI17ChatFormattedLineSaIS4_EE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(168) %i.bm, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 0 uses
  %i.bo = add i32 %.045, 1                        ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !55
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !54 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 168
  %i.bw = icmp ugt i64 %i.bv, %i.bp
  br i1 %i.bw, label %.lr.ph46, label %.loopexit, !llvm.loop !141

.loopexit:                                        ; preds = %bb.g, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38, %.loopexit41
  %.2 = phi i32 [ 0, %.loopexit41 ], [ 0, %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit38 ], [ %.1, %bb.g ]
  store i32 %1, ptr %i.c, align 8, !tbaa !71
  store i32 %2, ptr %i.l, align 4, !tbaa !69
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.by = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 5
  %i.cd = trunc i64 %i.cc to i32                  ; 3 uses
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ce = sub nsw i32 %i.cd, %2
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit.sink.split

bb.i:                                             ; preds = %.loopexit
  %.not.i.i39 = icmp slt i32 %2, %i.cd
  %i.cf = sub nsw i32 %i.cd, %2                   ; 2 uses
  %.0.i.i40 = select i1 %.not.i.i39, i32 0, i32 %i.cf
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.2, i32 %.0.i.i40)
  %storemerge6.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.cf)
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit.sink.split

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit.sink.split: ; preds = %bb.h, %bb.i
  %storemerge6.i.sink = phi i32 [ %storemerge6.i, %bb.i ], [ %i.ce, %bb.h ]
  store i32 %storemerge6.i.sink, ptr %i.n, align 8, !tbaa !70
  br label %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit

_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit: ; preds = %_ZNSt6vectorI17ChatFormattedLineSaIS0_EE5clearEv.exit.sink.split, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10ChatBuffer12scrollBottomEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) initializes((40, 44)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !69   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = trunc i64 %i.h to i32
  %i.m = sub nsw i32 %i.l, %i.j
  %.0.i = select i1 %i.k, i32 0, i32 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.0.i, ptr %i.n, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(25) ptr @_ZNK10ChatBuffer16getFormattedLineEj(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(113) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  %i.c = add nsw i32 %i.b, %1                     ; 3 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 5
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp slt i32 %i.c, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.c to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.o
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN10ChatBuffer6scrollEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(113) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70
  %i.c = add nsw i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 5
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !69   ; 3 uses
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %.not.i.i = icmp slt i32 %i.n, %i.l
  %or.cond.i.i = or i1 %i.o, %.not.i.i
  %i.p = sub nsw i32 %i.l, %i.n                   ; 2 uses
  %.0.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.p
  %.0.i7.i = select i1 %i.o, i32 0, i32 %i.p
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %.0.i.i)
  %storemerge6.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %.0.i7.i)
  store i32 %storemerge6.i, ptr %i.a, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK10ChatBuffer15getTopScrollPosEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  %.not = icmp slt i32 %i.k, %i.i
  %or.cond = or i1 %i.l, %.not
  %i.m = sub nsw i32 %i.i, %i.k
  %.0 = select i1 %or.cond, i32 0, i32 %i.m
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN14EnrichedStringaSESt17basic_string_viewIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14EnrichedStringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(120) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77
  store i32 %i.h, ptr %i.f, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !42
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.n, ptr %i.a, align 8, !tbaa !44
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.p, ptr %i.i, align 8, !tbaa !46
  %i.q = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.q, ptr %i.k, align 8, !tbaa !47
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.b
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.n, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN21ChatFormattedFragmentC2ERKS_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !47
  store i8 %i.s, ptr %i.r, align 1, !tbaa !47
  br label %_ZN21ChatFormattedFragmentC2ERKS_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZN21ChatFormattedFragmentC2ERKS_.exit

bb.e:                                             ; preds = %.noexc.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(120) %i.c) #26
  resume { ptr, i32 } %i.t

_ZN21ChatFormattedFragmentC2ERKS_.exit:           ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.u = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.u, ptr %i.v, align 8, !tbaa !48
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  store ptr %i.z, ptr %i.b, align 8, !tbaa !83
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(120) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN21ChatFormattedFragmentC2ERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
end_hunk_0
