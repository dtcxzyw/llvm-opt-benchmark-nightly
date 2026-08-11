inline.NumInlined: 6540
inline.NumDeleted: 1902
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK2cv4text14cluster_result4sqrtEd:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv4text14cluster_result4sqrtEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK2cv4text14cluster_result4sqrtEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.04.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.v, %_ZNK2cv4text14cluster_result4sqrtEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.04.i.epil = phi i64 [ %.04.i.epil.init, %.epil.preheader ], [ %i.aa, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.04.i.epil
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !416
  %i.z = tail call double @sqrt(double noundef %i.y) #34
  store double %i.z, ptr %i.x, align 8, !tbaa !416
  %i.aa = add nuw nsw i64 %.04.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv4text14cluster_result4sqrtEv.exit, label %bb.c, !llvm.loop !814

_ZNK2cv4text14cluster_result4sqrtEv.exit:         ; preds = %_ZNK2cv4text14cluster_result4sqrtEv.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef double @_ZNK2cv4text13dissimilarity9cityblockEll(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !400  ; 7 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !394    ; 2 uses
  %i.e = mul nsw i64 %i.b, %1
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = mul nsw i64 %i.b, %2
  %i.h = getelementptr [8 x i8], ptr %i.d, i64 %i.g ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.i = icmp eq i64 %i.b, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775806
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.010.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.089.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %.010.epil.init
  %i.k = load double, ptr %i.j, align 8, !tbaa !116
  %i.l = getelementptr [8 x i8], ptr %i.h, i64 %.010.epil.init
  %i.m = load double, ptr %i.l, align 8, !tbaa !116
  %i.n = fsub double %i.k, %i.m
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fadd double %.089.epil.init, %i.o
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.08.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %.epil.preheader ]
  ret double %.08.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.010 = phi i64 [ 0, %.lr.ph.new ], [ %i.af, %bb.b ] ; 4 uses
  %.089 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.ae, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr [8 x i8], ptr %i.f, i64 %.010
  %i.r = load double, ptr %i.q, align 8, !tbaa !116
  %i.s = getelementptr [8 x i8], ptr %i.h, i64 %.010
  %i.t = load double, ptr %i.s, align 8, !tbaa !116
  %i.u = fsub double %i.r, %i.t
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fadd double %.089, %i.v
  %i.x = or disjoint i64 %.010, 1                 ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.f, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !116
  %i.aa = getelementptr [8 x i8], ptr %i.h, i64 %i.x
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !116
  %i.ac = fsub double %i.z, %i.ab
  %i.ad = tail call double @llvm.fabs.f64(double %i.ac)
  %i.ae = fadd double %i.w, %i.ad                 ; 3 uses
  %i.af = add nuw nsw i64 %.010, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !815
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4text18doubly_linked_listD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !404  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2cv4text14auto_array_ptrIlED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #33
  br label %_ZN2cv4text14auto_array_ptrIlED2Ev.exit

_ZN2cv4text14auto_array_ptrIlED2Ev.exit:          ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !404  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2cv4text14auto_array_ptrIlED2Ev.exit1, label %bb.c

bb.c:                                             ; preds = %_ZN2cv4text14auto_array_ptrIlED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #33
  br label %_ZN2cv4text14auto_array_ptrIlED2Ev.exit1

_ZN2cv4text14auto_array_ptrIlED2Ev.exit1:         ; preds = %_ZN2cv4text14auto_array_ptrIlED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__stable_sortIPN2cv4text4nodeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIPN2cv4text4nodeES2_EC2ES3_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 24
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #37 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIPN2cv4text4nodeES2_EC2ES3_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIPN2cv4text4nodeES2_EC2ES3_l.exit, label %.lr.ph.i.i, !llvm.loop !816

_ZNSt17_Temporary_bufferIPN2cv4text4nodeES2_EC2ES3_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !130

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIPN2cv4text4nodeES2_EC2ES3_l.exit
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_T1_(ptr noundef %0, ptr noundef %i.o, ptr noundef %1, ptr noundef %.sroa.12.0)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.q) #34
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIPN2cv4text4nodeES2_EC2ES3_l.exit
  %i.r = icmp eq ptr %.sroa.12.0, null
  br i1 %i.r, label %bb.f, label %bb.g, !prof !40

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIPN2cv4text4nodeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef %0, ptr noundef %1)
          to label %bb.h unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.s = mul i64 %.sroa.5.0, 24
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.s) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__stable_sort_adaptiveIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %4 = sdiv exact i64 %i.c, 24                    ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIPN2cv4text4nodeElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef 7)
  %i.e = icmp sgt i64 %i.c, 168
  br i1 %i.e, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.018.i = phi i64 [ %i.g, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %.018.i)
  %i.f = shl nuw nsw i64 %.018.i, 1
  tail call void @_ZSt17__merge_sort_loopIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef %i.f)
  %i.g = shl nsw i64 %.018.i, 2                   ; 2 uses
  %i.h = icmp slt i64 %i.g, %4
  br i1 %i.h, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit, !llvm.loop !817

_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %5 = sdiv exact i64 %i.j, 24                    ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  tail call void @_ZSt22__chunk_insertion_sortIPN2cv4text4nodeElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(ptr noundef %1, ptr noundef %2, i64 noundef 7)
  %i.l = icmp sgt i64 %i.j, 168
  br i1 %i.l, label %.lr.ph.i14, label %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit16

.lr.ph.i14:                                       ; preds = %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit, %.lr.ph.i14
  %.018.i15 = phi i64 [ %i.n, %.lr.ph.i14 ], [ 7, %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.018.i15)
  %i.m = shl nuw nsw i64 %.018.i15, 1
  tail call void @_ZSt17__merge_sort_loopIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.k, ptr noundef %1, i64 noundef %i.m)
  %i.n = shl nsw i64 %.018.i15, 2                 ; 2 uses
  %i.o = icmp slt i64 %i.n, %5
  br i1 %i.o, label %.lr.ph.i14, label %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit16, !llvm.loop !817

_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit16: ; preds = %.lr.ph.i14, %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit
  tail call void @_ZSt16__merge_adaptiveIPN2cv4text4nodeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_S8_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %4, i64 noundef %5, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIPN2cv4text4nodeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.cv::text::node", align 8   ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 360
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %common.ret22, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.016.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %1
  br i1 %.not17.i, label %common.ret22, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.019.i = phi ptr [ %.016.i, %.lr.ph.i ], [ %.0.i, %bb.i ] ; 7 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.019.i, %bb.i ] ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 40
  %.sroa.2.0.copyload.i.i = load double, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !116 ; 5 uses
  %.sroa.26.0.copyload.i.i = load double, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !116 ; 2 uses
  %i.f = fcmp olt double %.sroa.2.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %i.g = fcmp ord double %.sroa.2.0.copyload.i.i, 0.000000e+00 ; 3 uses
  %i.h = fcmp uno double %.sroa.26.0.copyload.i.i, 0.000000e+00
  %i.i = and i1 %i.g, %i.h
  %i.j = or i1 %i.f, %i.i
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.019.i, i64 24, i1 false), !tbaa.struct !818
  %i.k = ptrtoint ptr %.019.i to i64
  %i.l = sub i64 %i.k, %i.b                       ; 4 uses
  %i.m = icmp sgt i64 %i.l, 24
  br i1 %i.m, label %bb.e, label %bb.f, !prof !130

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 48
  %.neg24.i = udiv exact i64 %i.l, 24
  %.neg24.neg.i = sub nsw i64 0, %.neg24.i
  %i.o = getelementptr inbounds [24 x i8], ptr %i.n, i64 %.neg24.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.l, 24
  br i1 %i.p, label %bb.g, label %_ZSt13move_backwardIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !818
  br label %_ZSt13move_backwardIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit.i

_ZSt13move_backwardIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !818
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %.sroa.0.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %.019.i, align 8
  %.sroa.26.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %.sroa.26.0.copyload.i12.i.i = load double, ptr %.sroa.26.0..sroa_idx.i11.i.i, align 8, !tbaa !116 ; 2 uses
  %i.r = fcmp olt double %.sroa.2.0.copyload.i.i, %.sroa.26.0.copyload.i12.i.i
  %i.s = fcmp uno double %.sroa.26.0.copyload.i12.i.i, 0.000000e+00
  %i.t = and i1 %i.g, %i.s
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN2cv4text4nodeEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.0913.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.019.i, %bb.h ] ; 3 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.0913.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0913.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false), !tbaa.struct !818
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.0913.i.i, i64 -32
  %.sroa.26.0.copyload.i.i.i = load double, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.v = fcmp olt double %.sroa.2.0.copyload.i.i, %.sroa.26.0.copyload.i.i.i
  %i.w = fcmp uno double %.sroa.26.0.copyload.i.i.i, 0.000000e+00
  %i.x = and i1 %i.g, %i.w
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN2cv4text4nodeEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !819

_ZSt25__unguarded_linear_insertIPN2cv4text4nodeEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.h
  %.09.lcssa.i.i = phi ptr [ %.019.i, %bb.h ], [ %.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store <2 x i64> %.sroa.0.i.i.sroa.0.0.copyload, ptr %.09.lcssa.i.i, align 8
  %.sroa.4.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i, i64 16
  store double %.sroa.2.0.copyload.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i, align 8, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN2cv4text4nodeEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %common.ret22, label %bb.c, !llvm.loop !820

common.ret22:                                     ; preds = %.preheader.i, %bb.b, %bb.i, %bb.j
  ret void

bb.j:                                             ; preds = %bb.a
  %i.z = udiv exact i64 %i.c, 24
  %i.aa = lshr i64 %i.z, 1                        ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.aa ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIPN2cv4text4nodeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef %0, ptr noundef %i.ab)
  tail call void @_ZSt21__inplace_stable_sortIPN2cv4text4nodeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef %i.ab, ptr noundef %1)
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.a, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  tail call void @_ZSt22__merge_without_bufferIPN2cv4text4nodeElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_S8_T1_(ptr noundef %0, ptr noundef %i.ab, ptr noundef %1, i64 noundef %i.aa, i64 noundef %i.ae)
  br label %common.ret22
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [24 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret27:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = sdiv exact i64 %i.j, 24
  tail call void @_ZSt23__merge_adaptive_resizeIPN2cv4text4nodeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_S8_T1_S8_T2_(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret27

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_T1_(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, ptr noundef %2)
  br label %common.ret27
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__merge_adaptiveIPN2cv4text4nodeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_S8_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 24
  br i1 %i.d, label %bb.c, label %bb.d, !prof !130

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 24
  br i1 %i.e, label %bb.e, label %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !818
  br label %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit

_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit:   ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %i.g = icmp ne ptr %1, %0                       ; 2 uses
  %i.h = icmp ne ptr %1, %2
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit, %bb.h
  %.024.i = phi ptr [ %i.q, %bb.h ], [ %0, %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit ] ; 3 uses
  %.01823.i = phi ptr [ %.1.i, %bb.h ], [ %5, %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit ] ; 4 uses
  %.01922.i = phi ptr [ %.120.i, %bb.h ], [ %1, %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit ] ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.01922.i, i64 16
  %.sroa.2.0.copyload.i.i = load double, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !116 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.01823.i, i64 16
  %.sroa.26.0.copyload.i.i = load double, ptr %.sroa.26.0..sroa_idx.i.i, align 8, !tbaa !116 ; 2 uses
  %i.j = fcmp olt double %.sroa.2.0.copyload.i.i, %.sroa.26.0.copyload.i.i
  %i.k = fcmp ord double %.sroa.2.0.copyload.i.i, 0.000000e+00
  %i.l = fcmp uno double %.sroa.26.0.copyload.i.i, 0.000000e+00
  %i.m = and i1 %i.k, %i.l
  %i.n = or i1 %i.j, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrISt5dequeIiSaIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt5dequeIiSaIiEE13emplace_frontIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !244
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 3 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !25
  store i32 %i.f, ptr %i.e, align 4, !tbaa !25
  store ptr %i.e, ptr %i.a, align 8, !tbaa !243
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !199  ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ne ptr %i.i, null
  %.neg.i.i.i = sext i1 %i.p to i64
  %i.q = add nsw i64 %i.o, %.neg.i.i.i
  %i.r = shl nsw i64 %i.q, 7
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !200
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !201
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  %i.z = add nsw i64 %i.r, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !202
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.b to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = add nsw i64 %i.z, %i.af
  %i.ah = icmp eq i64 %i.ag, 2305843009213693951
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #35
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %0, align 8, !tbaa !245
  %i.aj = icmp eq ptr %i.k, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZNSt5dequeIiSaIiEE17_M_push_front_auxIJiEEEvDpOT_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext true)
  br label %_ZNSt5dequeIiSaIiEE17_M_push_front_auxIJiEEEvDpOT_.exit

_ZNSt5dequeIiSaIiEE17_M_push_front_auxIJiEEEvDpOT_.exit: ; preds = %bb.e, %bb.f
  %i.ak = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #32 ; 4 uses
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 2 uses
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !136
  store ptr %i.am, ptr %i.j, align 8, !tbaa !199
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !201
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 512
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !202
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 508 ; 3 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !243
  %i.ap = load i32, ptr %1, align 4, !tbaa !25
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt5dequeIiSaIiEE17_M_push_front_auxIJiEEEvDpOT_.exit, %bb.b
  %i.aq = phi ptr [ %i.ao, %_ZNSt5dequeIiSaIiEE17_M_push_front_auxIJiEEEvDpOT_.exit ], [ %i.e, %bb.b ]
  ret ptr %i.aq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !199
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !201
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !202
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !200
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !516
  %i.ag = load ptr, ptr %0, align 8, !tbaa !245
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #32 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !514
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !136
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.aq = load i32, ptr %1, align 4, !tbaa !25
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !25
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !199
  store ptr %i.am, ptr %i.o, align 8, !tbaa !201
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !202
  store ptr %i.am, ptr %i.a, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.at, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !835

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25   ; 2 uses
  %i.k = load i32, ptr %0, align 4, !tbaa !25
  store i32 %i.k, ptr %i.i, align 4, !tbaa !25
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %4 = sdiv i64 %i.o, 2
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load i32, ptr %i.s, align 4, !tbaa !25
  %i.w = load i32, ptr %i.u, align 4, !tbaa !25
  %i.x = icmp slt i32 %i.v, %i.w
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.t, i64 %i.r ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !25
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !836

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.m, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.n, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !25
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !25
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.j
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !25
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !837

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.aq, align 4, !tbaa !25
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !838

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %i.as = phi i64 [ %i.bs, %bb.b ], [ %i.d, %.lr.ph ]
  %i.at = add nsw i64 %.01841, -1                 ; 3 uses
  %i.au = lshr i64 %i.as, 1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %storemerge1742, i64 -4 ; 3 uses
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !25  ; 5 uses
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !25 ; 5 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !25 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bb = icmp slt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %0, align 4, !tbaa !25
  store i32 %i.ay, ptr %0, align 4, !tbaa !25
  store i32 %i.bc, ptr %i.av, align 4, !tbaa !25
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp slt i32 %i.ax, %i.ba
  %i.be = load i32, ptr %0, align 4, !tbaa !25    ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ba, ptr %0, align 4, !tbaa !25
  store i32 %i.be, ptr %i.aw, align 4, !tbaa !25
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ax, ptr %0, align 4, !tbaa !25
  store i32 %i.be, ptr %i.f, align 4, !tbaa !25
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bf = icmp slt i32 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %0, align 4, !tbaa !25
  store i32 %i.ax, ptr %0, align 4, !tbaa !25
  store i32 %i.bg, ptr %i.f, align 4, !tbaa !25
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp slt i32 %i.ay, %i.ba
  %i.bi = load i32, ptr %0, align 4, !tbaa !25    ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.ba, ptr %0, align 4, !tbaa !25
  store i32 %i.bi, ptr %i.aw, align 4, !tbaa !25
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.ay, ptr %0, align 4, !tbaa !25
  store i32 %i.bi, ptr %i.av, align 4, !tbaa !25
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bj = load i32, ptr %0, align 4, !tbaa !25    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !25 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !839

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.bn = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !25 ; 2 uses
  %i.bo = icmp slt i32 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !840

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bn, ptr %.sroa.010.1.i.i, align 4, !tbaa !25
  store i32 %i.bk, ptr %.sroa.0.1.i.i, align 4, !tbaa !25
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !841

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a
  %i.bs = ashr exact i64 %i.br, 2                 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 16
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !835

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i32, ptr %.sroa.0.018.i.ptr, align 4, !tbaa !25 ; 4 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 4
  br i1 %i.h, label %bb.d, label %bb.e, !prof !130

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !25
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.pn17.i, align 4, !tbaa !25 ; 2 uses
  %i.k = icmp slt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i32 %i.l, ptr %.sroa.04.08.i.i, align 4, !tbaa !25
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !25 ; 2 uses
  %i.n = icmp slt i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !842

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4, !tbaa !25
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !843

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
end_hunk_1
