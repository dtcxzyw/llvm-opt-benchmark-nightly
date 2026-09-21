Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/erfilter?download=true
inline.NumInlined: 6540
inline.NumDeleted: 1902
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_T0_SG_T1_T2_:bb.a

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
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !67
  store <2 x i32> %i.b, ptr %13, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.d, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load <2 x i32>, ptr %2, align 4, !tbaa !67
  store <2 x i32> %i.g, ptr %14, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !67
  %i.k = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %13, ptr noundef nonnull align 4 dead_on_return %14), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.n = load <2 x i32>, ptr %2, align 4, !tbaa !67
  store <2 x i32> %i.n, ptr %11, align 8, !tbaa !67
  %i.o = load i32, ptr %i.h, align 4, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !67
  %i.q = load <2 x i32>, ptr %3, align 4, !tbaa !67
  store <2 x i32> %i.q, ptr %12, align 8, !tbaa !67
  %i.r = load i32, ptr %i.m, align 4, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %i.r, ptr %i.s, align 8, !tbaa !67
  %i.t = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %11, ptr noundef nonnull align 4 dead_on_return %12), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !67
  %i.w = load <2 x i32>, ptr %0, align 4, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  store <2 x i32> %i.w, ptr %2, align 4
  store i32 %i.v, ptr %i.h, align 4
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.x = load <2 x i32>, ptr %1, align 4, !tbaa !67
  store <2 x i32> %i.x, ptr %9, align 8, !tbaa !67
  %i.y = load i32, ptr %i.c, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !67
  %i.aa = load <2 x i32>, ptr %3, align 4, !tbaa !67
  store <2 x i32> %i.aa, ptr %10, align 8, !tbaa !67
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !67
  %i.ad = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %9, ptr noundef nonnull align 4 dead_on_return %10), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ae = load i32, ptr %0, align 4, !tbaa !67    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !67 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !67 ; 2 uses
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
  %i.aj = load <2 x i32>, ptr %1, align 4, !tbaa !67
  store <2 x i32> %i.aj, ptr %7, align 8, !tbaa !67
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !67
  %i.am = load <2 x i32>, ptr %3, align 4, !tbaa !67
  store <2 x i32> %i.am, ptr %8, align 8, !tbaa !67
  %i.an = load i32, ptr %i.m, align 4, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !67
  %i.ap = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %7, ptr noundef nonnull align 4 dead_on_return %8), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !67
  %i.as = load <2 x i32>, ptr %0, align 4, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  store <2 x i32> %i.as, ptr %1, align 4
  store i32 %i.ar, ptr %i.c, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.at = load <2 x i32>, ptr %2, align 4, !tbaa !67
  store <2 x i32> %i.at, ptr %5, align 8, !tbaa !67
  %i.au = load i32, ptr %i.h, align 4, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.au, ptr %i.av, align 8, !tbaa !67
  %i.aw = load <2 x i32>, ptr %3, align 4, !tbaa !67
  store <2 x i32> %i.aw, ptr %6, align 8, !tbaa !67
  %i.ax = load i32, ptr %i.m, align 4, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !67
  %i.az = call noundef zeroext i1 %4(ptr noundef nonnull align 4 dead_on_return %5, ptr noundef nonnull align 4 dead_on_return %6), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ba = load i32, ptr %0, align 4, !tbaa !67    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !67 ; 2 uses
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
  %i.k = mul i64 %indvar, 12
  %i.l = add i64 %i.k, 12                         ; 3 uses
  %i.m = udiv exact i64 %i.l, 12
  %7 = icmp ne i64 %i.l, 0                        ; 2 uses
  %umin.neg = sext i1 %7 to i64
  %i.n = select i1 %7, i64 12, i64 0
  %8 = sub i64 %i.n, %i.l                         ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.010.023, i64 %8
  %scevgep25 = getelementptr i8, ptr %.pn22, i64 %8
  %i.o = add nuw nsw i64 %i.m, 1
  %i.p = add nsw i64 %i.o, %umin.neg
  %i.q = mul nuw i64 %i.p, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.r = getelementptr inbounds nuw i8, ptr %.pn22, i64 16
  %i.s = load <2 x i32>, ptr %.sroa.010.023, align 4, !tbaa !67
  store <2 x i32> %i.s, ptr %5, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %.pn22, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !67
  store i32 %i.u, ptr %i.b, align 8, !tbaa !67
  %i.v = load <2 x i32>, ptr %0, align 4, !tbaa !67
  store <2 x i32> %i.v, ptr %6, align 8, !tbaa !67
  %i.w = load i32, ptr %i.d, align 4, !tbaa !67
  store i32 %i.w, ptr %i.e, align 8, !tbaa !67
  %i.x = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dead_on_return %5, ptr noundef nonnull align 4 dead_on_return %6), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.y = load i32, ptr %.sroa.010.023, align 4, !tbaa !67 ; 4 uses
  %i.z = load i32, ptr %i.r, align 4, !tbaa !67   ; 4 uses
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !67  ; 4 uses
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = ptrtoint ptr %.sroa.010.023 to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep25, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.c
  store i32 %i.y, ptr %0, align 4
  store i32 %i.z, ptr %i.c, align 4
  store i32 %i.aa, ptr %i.d, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %i.y, ptr %3, align 4, !tbaa !67
  store i32 %i.z, ptr %i.f, align 4, !tbaa !67
  store i32 %i.aa, ptr %i.g, align 4, !tbaa !67
  %i.ae = load <2 x i32>, ptr %.pn22, align 4, !tbaa !67
  store <2 x i32> %i.ae, ptr %4, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %.pn22, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !67
  store i32 %i.ag, ptr %i.i, align 8, !tbaa !67
  %i.ah = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dead_on_return %3, ptr noundef nonnull align 4 dead_on_return %4), !inline_history !967
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.ah, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.010.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn22, %bb.d ] ; 6 uses
  %.sroa.05.09.i = phi ptr [ %.sroa.0.010.i, %.lr.ph.i ], [ %.sroa.010.023, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.09.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.010.i, i64 12, i1 false)
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 %i.y, ptr %3, align 4, !tbaa !67
  store i32 %i.z, ptr %i.f, align 4, !tbaa !67
  store i32 %i.aa, ptr %i.g, align 4, !tbaa !67
  %i.ai = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !67
  store i32 %i.ai, ptr %4, align 8, !tbaa !67
  %i.aj = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !67
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !67
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.010.i, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !67
  store i32 %i.am, ptr %i.i, align 8, !tbaa !67
  %i.an = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dead_on_return %3, ptr noundef nonnull align 4 dead_on_return %4), !inline_history !967
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.an, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit, !llvm.loop !39

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit: ; preds = %.lr.ph.i, %bb.d
  %.sroa.05.0.lcssa.i = phi ptr [ %.sroa.010.023, %bb.d ], [ %.sroa.0.010.i, %.lr.ph.i ] ; 3 uses
  store i32 %i.y, ptr %.sroa.05.0.lcssa.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 4
  store i32 %i.z, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 8
  store i32 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv3VecIiLi3EEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit
  %.sroa.010.0 = getelementptr inbounds nuw i8, ptr %.sroa.010.023, i64 12 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !968

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !229    ; 5 uses
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
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !41

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
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !41

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !231
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #33
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !229
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !228
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN2cv4text6ERStatESaIS2_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !310    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
end_hunk_0
