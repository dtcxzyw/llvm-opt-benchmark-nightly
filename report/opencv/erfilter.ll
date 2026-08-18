inline.NumInlined: 6540
inline.NumDeleted: 1902
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK2cv4text13dissimilarity9cityblockEll:bb.a
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
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
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
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = udiv exact i64 %i.c, 24
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIPN2cv4text4nodeElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.c, 168
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.018.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %.018.i)
  %i.g = shl nuw nsw i64 %.018.i, 1
  tail call void @_ZSt17__merge_sort_loopIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.e, ptr noundef %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.018.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit, !llvm.loop !817

_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 4 uses
  %i.l = udiv exact i64 %i.k, 24
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIPN2cv4text4nodeElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_(ptr noundef %1, ptr noundef %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.k, 168
  br i1 %i.n, label %.lr.ph.i14, label %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit16

.lr.ph.i14:                                       ; preds = %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit, %.lr.ph.i14
  %.018.i15 = phi i64 [ %i.p, %.lr.ph.i14 ], [ 7, %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.018.i15)
  %i.o = shl nuw nsw i64 %.018.i15, 1
  tail call void @_ZSt17__merge_sort_loopIPN2cv4text4nodeES3_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.m, ptr noundef %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.018.i15, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i14, label %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit16, !llvm.loop !817

_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit16: ; preds = %.lr.ph.i14, %_ZSt24__merge_sort_with_bufferIPN2cv4text4nodeES3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_.exit
  %i.r = sdiv exact i64 %i.c, 24
  %i.s = sdiv exact i64 %i.k, 24
  tail call void @_ZSt16__merge_adaptiveIPN2cv4text4nodeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_S8_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.r, i64 noundef %i.s, ptr noundef %3)
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
  %3 = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 48
  %.neg24.i = udiv exact i64 %i.l, 24
  %.neg24.neg.i = sub nsw i64 0, %.neg24.i
  %4 = getelementptr inbounds [24 x i8], ptr %3, i64 %.neg24.neg.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 24
  br i1 %i.n, label %bb.g, label %_ZSt13move_backwardIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !818
  br label %_ZSt13move_backwardIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit.i

_ZSt13move_backwardIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !818
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %.sroa.0.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %.019.i, align 8
  %.sroa.26.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %.sroa.26.0.copyload.i12.i.i = load double, ptr %.sroa.26.0..sroa_idx.i11.i.i, align 8, !tbaa !116 ; 2 uses
  %i.p = fcmp olt double %.sroa.2.0.copyload.i.i, %.sroa.26.0.copyload.i12.i.i
  %i.q = fcmp uno double %.sroa.26.0.copyload.i12.i.i, 0.000000e+00
  %i.r = and i1 %i.g, %i.q
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN2cv4text4nodeEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.0913.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.019.i, %bb.h ] ; 3 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.0913.i.i, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0913.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false), !tbaa.struct !818
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.0913.i.i, i64 -32
  %.sroa.26.0.copyload.i.i.i = load double, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8, !tbaa !116 ; 2 uses
  %i.t = fcmp olt double %.sroa.2.0.copyload.i.i, %.sroa.26.0.copyload.i.i.i
  %i.u = fcmp uno double %.sroa.26.0.copyload.i.i.i, 0.000000e+00
  %i.v = and i1 %i.g, %i.u
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPN2cv4text4nodeEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !819

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
  %i.x = udiv exact i64 %i.c, 24
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.y ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIPN2cv4text4nodeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef %0, ptr noundef %i.z)
  tail call void @_ZSt21__inplace_stable_sortIPN2cv4text4nodeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_(ptr noundef %i.z, ptr noundef %1)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.a, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 24
  tail call void @_ZSt22__merge_without_bufferIPN2cv4text4nodeElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_S8_T1_(ptr noundef %0, ptr noundef %i.z, ptr noundef %1, i64 noundef %i.y, i64 noundef %i.ac)
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.01922.i, i64 24, i1 false), !tbaa.struct !818
  %i.o = getelementptr inbounds nuw i8, ptr %.01922.i, i64 24
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.024.i, ptr noundef nonnull align 8 dereferenceable(24) %.01823.i, i64 24, i1 false), !tbaa.struct !818
  %i.p = getelementptr inbounds nuw i8, ptr %.01823.i, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.120.i = phi ptr [ %i.o, %bb.f ], [ %.01922.i, %bb.g ] ; 2 uses
  %.1.i = phi ptr [ %.01823.i, %bb.f ], [ %i.p, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.024.i, i64 24 ; 2 uses
  %i.r = icmp ne ptr %.1.i, %i.f                  ; 2 uses
  %i.s = icmp ne ptr %.120.i, %2
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !821

._crit_edge.i:                                    ; preds = %bb.h, %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit
  %.018.lcssa.i = phi ptr [ %5, %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit ], [ %.1.i, %bb.h ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit ], [ %i.q, %bb.h ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.g, %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit ], [ %i.r, %bb.h ]
  br i1 %.lcssa.i, label %bb.i, label %_ZSt21__move_merge_adaptiveIPN2cv4text4nodeES3_S3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_S8_T1_T2_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = ptrtoint ptr %.018.lcssa.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 24
  br i1 %i.x, label %bb.j, label %bb.k, !prof !130

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i, ptr align 8 %.018.lcssa.i, i64 %i.w, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPN2cv4text4nodeES3_S3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_S8_T1_T2_.exit

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq i64 %i.w, 24
  br i1 %i.y, label %bb.l, label %_ZSt21__move_merge_adaptiveIPN2cv4text4nodeES3_S3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_S8_T1_T2_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %.018.lcssa.i, i64 24, i1 false), !tbaa.struct !818
  br label %_ZSt21__move_merge_adaptiveIPN2cv4text4nodeES3_S3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_S8_T1_T2_.exit

bb.m:                                             ; preds = %bb.a
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 7 uses
  %i.ac = icmp sgt i64 %i.ab, 24
  br i1 %i.ac, label %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit17.thread, label %bb.n, !prof !130

bb.n:                                             ; preds = %bb.m
  %i.ad = icmp eq i64 %i.ab, 24
  br i1 %i.ad, label %bb.o, label %_ZSt4moveIPN2cv4text4nodeES3_ET0_T_S5_S4_.exit17
end_hunk_0
begin_hunk_1_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_T0_SG_T1_T2_:bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.af, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.ah, ptr %.sroa.5.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_SF_SF_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"class.cv::Vec.138", align 8       ; 5 uses
  %6 = alloca %"class.cv::Vec.138", align 8       ; 5 uses
  %7 = alloca %"class.cv::Vec.138", align 8       ; 5 uses
  %8 = alloca %"class.cv::Vec.138", align 8       ; 5 uses
  %9 = alloca %"class.cv::Vec.138", align 8       ; 5 uses
  %10 = alloca %"class.cv::Vec.138", align 8      ; 5 uses
  %11 = alloca %"class.cv::Vec.138", align 8      ; 5 uses
  %12 = alloca %"class.cv::Vec.138", align 8      ; 5 uses
  %13 = alloca %"class.cv::Vec.138", align 8      ; 5 uses
  %14 = alloca %"class.cv::Vec.138", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !25
  store <2 x i32> %i.b, ptr %13, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.d, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load <2 x i32>, ptr %2, align 4, !tbaa !25
  store <2 x i32> %i.g, ptr %14, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !25
  %i.k = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %13, ptr noundef nonnull align 4 dead_on_return %14), !inline_history !972
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.n = load <2 x i32>, ptr %2, align 4, !tbaa !25
  store <2 x i32> %i.n, ptr %11, align 8, !tbaa !25
  %i.o = load i32, ptr %i.h, align 4, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = load <2 x i32>, ptr %3, align 4, !tbaa !25
  store <2 x i32> %i.q, ptr %12, align 8, !tbaa !25
  %i.r = load i32, ptr %i.m, align 4, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %i.r, ptr %i.s, align 8, !tbaa !25
  %i.t = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %11, ptr noundef nonnull align 4 dead_on_return %12), !inline_history !972
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25
  %i.w = load <2 x i32>, ptr %0, align 4, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  store <2 x i32> %i.w, ptr %2, align 4
  store i32 %i.v, ptr %i.h, align 4
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.x = load <2 x i32>, ptr %1, align 4, !tbaa !25
  store <2 x i32> %i.x, ptr %9, align 8, !tbaa !25
  %i.y = load i32, ptr %i.c, align 4, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !25
  %i.aa = load <2 x i32>, ptr %3, align 4, !tbaa !25
  store <2 x i32> %i.aa, ptr %10, align 8, !tbaa !25
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !25
  %i.ad = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %9, ptr noundef nonnull align 4 dead_on_return %10), !inline_history !972
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ae = load i32, ptr %0, align 4, !tbaa !25    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !25 ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  store i32 %i.ae, ptr %3, align 4
  store i32 %i.ag, ptr %i.l, align 4
  store i32 %i.ai, ptr %i.m, align 4
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  store i32 %i.ae, ptr %1, align 4
  store i32 %i.ag, ptr %i.a, align 4
  store i32 %i.ai, ptr %i.c, align 4
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.aj = load <2 x i32>, ptr %1, align 4, !tbaa !25
  store <2 x i32> %i.aj, ptr %7, align 8, !tbaa !25
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !25
  %i.am = load <2 x i32>, ptr %3, align 4, !tbaa !25
  store <2 x i32> %i.am, ptr %8, align 8, !tbaa !25
  %i.an = load i32, ptr %i.m, align 4, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !25
  %i.ap = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %7, ptr noundef nonnull align 4 dead_on_return %8), !inline_history !972
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.as = load <2 x i32>, ptr %0, align 4, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  store <2 x i32> %i.as, ptr %1, align 4
  store i32 %i.ar, ptr %i.c, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.at = load <2 x i32>, ptr %2, align 4, !tbaa !25
  store <2 x i32> %i.at, ptr %5, align 8, !tbaa !25
  %i.au = load i32, ptr %i.h, align 4, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.au, ptr %i.av, align 8, !tbaa !25
  %i.aw = load <2 x i32>, ptr %3, align 4, !tbaa !25
  store <2 x i32> %i.aw, ptr %6, align 8, !tbaa !25
  %i.ax = load i32, ptr %i.m, align 4, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !25
  %i.az = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %5, ptr noundef nonnull align 4 dead_on_return %6), !inline_history !972
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ba = load i32, ptr %0, align 4, !tbaa !25    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !25 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25 ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  store i32 %i.ba, ptr %3, align 4
  store i32 %i.bc, ptr %i.l, align 4
  store i32 %i.be, ptr %i.m, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  store i32 %i.ba, ptr %2, align 4
  store i32 %i.bc, ptr %i.f, align 4
  store i32 %i.be, ptr %i.h, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.cv::Vec.138", align 4       ; 10 uses
  %4 = alloca %"class.cv::Vec.138", align 8       ; 10 uses
  %5 = alloca %"class.cv::Vec.138", align 8       ; 5 uses
  %6 = alloca %"class.cv::Vec.138", align 8       ; 5 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.010.020 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.010.020, %1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.e ] ; 2 uses
  %.sroa.010.023 = phi ptr [ %.sroa.010.020, %.lr.ph ], [ %.sroa.010.0, %bb.e ] ; 8 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.sroa.010.023, %bb.e ] ; 6 uses
  %7 = mul i64 %indvar, 12                        ; 2 uses
  %i.k = add i64 %7, 12
  %8 = udiv i64 %i.k, 12                          ; 2 uses
  %9 = icmp ult i64 %7, -12                       ; 2 uses
  %umin.neg = sext i1 %9 to i64
  %i.l = select i1 %9, i64 12, i64 0
  %.neg = mul i64 %8, -12
  %10 = add i64 %.neg, %i.l                       ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.010.023, i64 %10
  %scevgep25.a = getelementptr i8, ptr %.pn22, i64 %10
  %11 = add nuw nsw i64 %8, 1
  %i.m = add nsw i64 %11, %umin.neg
  %12 = mul nuw i64 %i.m, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.n = getelementptr inbounds nuw i8, ptr %.pn22, i64 16
  %i.o = load <2 x i32>, ptr %.sroa.010.023, align 4, !tbaa !25
  store <2 x i32> %i.o, ptr %5, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %.pn22, i64 20 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !25
  store i32 %i.q, ptr %i.b, align 8, !tbaa !25
  %i.r = load <2 x i32>, ptr %0, align 4, !tbaa !25
  store <2 x i32> %i.r, ptr %6, align 8, !tbaa !25
  %i.s = load i32, ptr %i.d, align 4, !tbaa !25
  store i32 %i.s, ptr %i.e, align 8, !tbaa !25
  %i.t = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dead_on_return %5, ptr noundef nonnull align 4 dead_on_return %6), !inline_history !972
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.u = load i32, ptr %.sroa.010.023, align 4, !tbaa !25 ; 4 uses
  %i.v = load i32, ptr %i.n, align 4, !tbaa !25   ; 4 uses
  %i.w = load i32, ptr %i.p, align 4, !tbaa !25   ; 4 uses
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %.sroa.010.023 to i64
  %i.y = sub i64 %i.x, %i.j
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep25.a, i64 %12, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.c
  store i32 %i.u, ptr %0, align 4
  store i32 %i.v, ptr %i.c, align 4
  store i32 %i.w, ptr %i.d, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %i.u, ptr %3, align 4, !tbaa !25
  store i32 %i.v, ptr %i.f, align 4, !tbaa !25
  store i32 %i.w, ptr %i.g, align 4, !tbaa !25
  %i.aa = load <2 x i32>, ptr %.pn22, align 4, !tbaa !25
  store <2 x i32> %i.aa, ptr %4, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn22, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !25
  store i32 %i.ac, ptr %i.i, align 8, !tbaa !25
  %i.ad = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dead_on_return %3, ptr noundef nonnull align 4 dead_on_return %4), !inline_history !976
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.ad, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.010.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn22, %bb.d ] ; 6 uses
  %.sroa.05.09.i = phi ptr [ %.sroa.0.010.i, %.lr.ph.i ], [ %.sroa.010.023, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.09.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.010.i, i64 12, i1 false)
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %i.u, ptr %3, align 4, !tbaa !25
  store i32 %i.v, ptr %i.f, align 4, !tbaa !25
  store i32 %i.w, ptr %i.g, align 4, !tbaa !25
  %i.ae = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !25
  store i32 %i.ae, ptr %4, align 8, !tbaa !25
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25
  store i32 %i.ag, ptr %i.h, align 4, !tbaa !25
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !25
  store i32 %i.ai, ptr %i.i, align 8, !tbaa !25
  %i.aj = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dead_on_return %3, ptr noundef nonnull align 4 dead_on_return %4), !inline_history !976
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.aj, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit, !llvm.loop !970

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit: ; preds = %.lr.ph.i, %bb.d
  %.sroa.05.0.lcssa.i = phi ptr [ %.sroa.010.023, %bb.d ], [ %.sroa.0.010.i, %.lr.ph.i ] ; 3 uses
  store i32 %i.u, ptr %.sroa.05.0.lcssa.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 4
  store i32 %i.v, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 8
  store i32 %i.w, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit
  %.sroa.010.0 = getelementptr inbounds nuw i8, ptr %.sroa.010.023, i64 12 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !977

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !349  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !351    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #35
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 208
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(208) %2) #34
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #34
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #34
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !978

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i19) #34
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i19) #34
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 208 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !978

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !355
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #33
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !351
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !349
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !709  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !527    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !793
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN2cv4text6ERStatESaIS3_EEmS5_ET_S7_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorIN2cv4text6ERStatESaIS3_EEmS5_ET_S7_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !709
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #35
  unreachable

_ZNKSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !103, !alias.scope !982, !noalias !979
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !103, !alias.scope !979, !noalias !982
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !108, !alias.scope !982, !noalias !979
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !108, !alias.scope !979, !noalias !982
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !982, !noalias !979
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !984

_ZNSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6vectorIN2cv4text6ERStatESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !793
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv4text6ERStatESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37

_ZNSt12_Vector_baseISt6vectorIN2cv4text6ERStatESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37: ; preds = %_ZNSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !527
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !709
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !793
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIN2cv4text6ERStatESaIS3_EEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIN2cv4text6ERStatESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !161    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #35
  unreachable

_ZNKSt6vectorIS_IN2cv6Point_IiEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
end_hunk_1
