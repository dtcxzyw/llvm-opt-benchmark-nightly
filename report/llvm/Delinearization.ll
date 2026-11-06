Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Delinearization?download=true
inline.NumInlined: 1432
inline.NumDeleted: 730
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt16__introsort_loopISt16reverse_iteratorIPmElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_:bb.a

bb.p:                                             ; preds = %bb.o
  %i.ct = icmp ult ptr %storemerge.i.i, %.sroa.04.1.i
  br i1 %i.ct, label %bb.q, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds i8, ptr %.sroa.04.1.i, i64 -8 ; 2 uses
  store i64 %i.cr, ptr %i.cu, align 8, !tbaa !66, !noalias !284
  store i64 %i.cq, ptr %.pn.i.i, align 8, !tbaa !66, !noalias !284
  br label %_ZSt22__move_median_to_firstISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_S6_T0_.exit.i, !llvm.loop !282

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit: ; preds = %bb.p
  store ptr %.sroa.04.1.i, ptr %6, align 8, !tbaa !65
  store ptr %i.bp, ptr %7, align 8, !tbaa !65
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIPmElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %7, i64 noundef %i.br)
  %i.cv = ptrtoint ptr %.sroa.04.1.i to i64       ; 2 uses
  store i64 %i.cv, ptr %1, align 8
  %i.cw = load ptr, ptr %0, align 8, !tbaa !65    ; 3 uses
  %i.cx = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cy = sub i64 %i.cx, %i.cv
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 16
  br i1 %i.da, label %.lr.ph, label %.loopexit, !llvm.loop !274

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !65     ; 6 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp sgt i64 %i.e, 128
  br i1 %i.f, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %.ptr23 = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 3 uses
  %.pre16.i = load i64, ptr %.ptr23, align 8, !tbaa !66
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = phi i64 [ %.pre16.i, %.lr.ph.i ], [ %i.s, %bb.d ]
  %.sroa.07.015.i.idx = phi i64 [ -8, %.lr.ph.i ], [ %.sroa.07.015.i.add, %bb.d ] ; 3 uses
  %.sroa.07.015.i.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.sroa.07.015.i.idx ; 4 uses
  %.sroa.07.015.i.add = add nsw i64 %.sroa.07.015.i.idx, -8 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.sroa.07.015.i.add ; 2 uses
  %i.h = load i64, ptr %.ptr, align 8, !tbaa !66  ; 6 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %_ZSt13move_backwardISt16reverse_iteratorIPmES2_ET0_T_S4_S3_.exit.i, label %bb.c

_ZSt13move_backwardISt16reverse_iteratorIPmES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.07.015.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.ptr, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.07.015.i.ptr, i64 %gepdiff, i1 false), !tbaa !66, !noalias !308
  store i64 %i.h, ptr %.ptr23, align 8, !tbaa !66
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %.sroa.07.015.i.ptr, align 8, !tbaa !66 ; 2 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.l = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i ], [ %.sroa.07.015.i.ptr, %bb.c ] ; 2 uses
  %i.m = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.j, %bb.c ]
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !66
  %i.o = load i64, ptr %.sroa.01.0.i.i, align 8, !tbaa !66 ; 2 uses
  %i.p = icmp ult i64 %i.h, %i.o
  br i1 %i.p, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !295

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %i.q = phi ptr [ %.sroa.07.015.i.ptr, %bb.c ], [ %.sroa.01.0.i.i, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  store i64 %i.h, ptr %i.r, align 8, !tbaa !66
  %.pre.i = load i64, ptr %.ptr23, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardISt16reverse_iteratorIPmES2_ET0_T_S4_S3_.exit.i
  %i.s = phi i64 [ %i.h, %_ZSt13move_backwardISt16reverse_iteratorIPmES2_ET0_T_S4_S3_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.not.i = icmp eq i64 %.sroa.07.015.i.add, -128
  br i1 %.not.i, label %_ZSt16__insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %bb.b, !llvm.loop !296

_ZSt16__insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 -128 ; 2 uses
  %.not4.i = icmp eq ptr %i.t, %i.b
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i2
  %.sroa.01.05.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i2 ], [ %i.t, %_ZSt16__insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit ] ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.01.05.i, i64 -8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !66   ; 3 uses
  %i.w = load i64, ptr %.sroa.01.05.i, align 8, !tbaa !66 ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.i4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i2

.lr.ph.i.i4:                                      ; preds = %.lr.ph.i1, %.lr.ph.i.i4
  %i.y = phi ptr [ %.sroa.01.0.i.i5, %.lr.ph.i.i4 ], [ %.sroa.01.05.i, %.lr.ph.i1 ] ; 2 uses
  %i.z = phi i64 [ %i.ab, %.lr.ph.i.i4 ], [ %i.w, %.lr.ph.i1 ]
  %.sroa.01.0.i.i5 = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !66
  %i.ab = load i64, ptr %.sroa.01.0.i.i5, align 8, !tbaa !66 ; 2 uses
  %i.ac = icmp ult i64 %i.v, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i4, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i2, !llvm.loop !295

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i2: ; preds = %.lr.ph.i.i4, %.lr.ph.i1
  %i.ad = phi ptr [ %.sroa.01.05.i, %.lr.ph.i1 ], [ %.sroa.01.0.i.i5, %.lr.ph.i.i4 ]
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  store i64 %i.v, ptr %i.ae, align 8, !tbaa !66
  %.not.i3 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i3, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i1, !llvm.loop !297

bb.e:                                             ; preds = %bb.a
  %i.af = icmp eq ptr %i.a, %i.b
  br i1 %i.af, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %.not14.i6 = icmp eq ptr %i.ag, %i.b
  br i1 %.not14.i6, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.f
  %.pre16.i8 = load i64, ptr %i.ag, align 8, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i7
  %i.ah = phi i64 [ %.pre16.i8, %.lr.ph.i7 ], [ %i.ax, %bb.j ]
  %.sroa.07.015.i9 = phi ptr [ %i.ag, %.lr.ph.i7 ], [ %i.ai, %bb.j ] ; 6 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.07.015.i9, i64 -8 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !66 ; 6 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = ptrtoint ptr %.sroa.07.015.i9 to i64
  %i.am = sub i64 %i.c, %i.al                     ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.preheader.i16, label %_ZSt13move_backwardISt16reverse_iteratorIPmES2_ET0_T_S4_S3_.exit.i15

.lr.ph.i.i.i.i.i.preheader.i16:                   ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %.sroa.07.015.i9, i64 %i.am, i1 false), !tbaa !66, !noalias !309
  br label %_ZSt13move_backwardISt16reverse_iteratorIPmES2_ET0_T_S4_S3_.exit.i15

_ZSt13move_backwardISt16reverse_iteratorIPmES2_ET0_T_S4_S3_.exit.i15: ; preds = %.lr.ph.i.i.i.i.i.preheader.i16, %bb.h
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !66
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %.sroa.07.015.i9, align 8, !tbaa !66 ; 2 uses
  %i.ap = icmp ult i64 %i.aj, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10

.lr.ph.i.i13:                                     ; preds = %bb.i, %.lr.ph.i.i13
  %i.aq = phi ptr [ %.sroa.01.0.i.i14, %.lr.ph.i.i13 ], [ %.sroa.07.015.i9, %bb.i ] ; 2 uses
  %i.ar = phi i64 [ %i.at, %.lr.ph.i.i13 ], [ %i.ao, %bb.i ]
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !66
  %i.at = load i64, ptr %.sroa.01.0.i.i14, align 8, !tbaa !66 ; 2 uses
  %i.au = icmp ult i64 %i.aj, %i.at
  br i1 %i.au, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10, !llvm.loop !295

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10: ; preds = %.lr.ph.i.i13, %bb.i
  %i.av = phi ptr [ %.sroa.07.015.i9, %bb.i ], [ %.sroa.01.0.i.i14, %.lr.ph.i.i13 ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  store i64 %i.aj, ptr %i.aw, align 8, !tbaa !66
  %.pre.i11 = load i64, ptr %i.ag, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10, %_ZSt13move_backwardISt16reverse_iteratorIPmES2_ET0_T_S4_S3_.exit.i15
  %i.ax = phi i64 [ %i.aj, %_ZSt13move_backwardISt16reverse_iteratorIPmES2_ET0_T_S4_S3_.exit.i15 ], [ %.pre.i11, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i10 ]
  %.not.i12 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i12, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit, label %bb.g, !llvm.loop !296

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIPmEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i2, %bb.f, %bb.e, %_ZSt16__insertion_sortISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__heap_selectISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !65
  store ptr %i.a, ptr %4, align 8, !tbaa !65
  %i.b = load ptr, ptr %1, align 8, !tbaa !65
  store ptr %i.b, ptr %5, align 8, !tbaa !65
  call void @_ZSt11__make_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.c = load ptr, ptr %1, align 8, !tbaa !65     ; 6 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !65     ; 5 uses
  %i.e = icmp ult ptr %i.d, %i.c
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !65     ; 13 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub i64 %i.h, %i.i
  %.fr = freeze i64 %i.j                          ; 2 uses
  %i.k = ashr i64 %.fr, 3                         ; 4 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1
  %i.n = icmp sgt i64 %i.k, 2
  %i.o = and i64 %.fr, 8
  %i.p = icmp eq i64 %i.o, 0                      ; 2 uses
  %i.q = add nsw i64 %i.k, -2                     ; 3 uses
  %i.r = ashr exact i64 %i.q, 1                   ; 2 uses
  br i1 %i.n, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.s = or disjoint i64 %i.q, 1
  %i.t = sub nsw i64 1, %i.k
  %i.u = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = sub nsw i64 0, %i.r
  %i.x = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.sroa.05.09.us = phi ptr [ %i.z, %bb.d ], [ %i.c, %.lr.ph.split.us.preheader ]
  %i.z = getelementptr inbounds i8, ptr %.sroa.05.09.us, i64 -8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !66  ; 3 uses
  %i.ab = load i64, ptr %i.g, align 8, !tbaa !66  ; 2 uses
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !66
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.030.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.ad = shl i64 %.030.i.i.us, 1                 ; 4 uses
  %i.ae = add i64 %i.ad, 2
  %i.af = sub nuw nsw i64 -2, %i.ad
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.af
  %i.ah = or disjoint i64 %i.ad, 1
  %i.ai = xor i64 %i.ad, -1
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !66
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !66
  %i.ao = icmp ult i64 %i.al, %i.an
  %spec.select.i.i.us = select i1 %i.ao, i64 %i.ah, i64 %i.ae ; 6 uses
  %i.ap = sub i64 0, %spec.select.i.i.us
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !66
  %i.at = sub i64 0, %.030.i.i.us
  %i.au = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  store i64 %i.as, ptr %i.av, align 8, !tbaa !66
  %i.aw = icmp slt i64 %spec.select.i.i.us, %i.m
  br i1 %i.aw, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !0

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ax = load i64, ptr %i.v, align 8, !tbaa !66
  store i64 %i.ax, ptr %i.y, align 8, !tbaa !66
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.0916.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.s, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.0916.i.i.i.us = phi i64 [ %.017.i.i34.i.us, %bb.c ], [ %.0916.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.0916.i.i.i.us, -1
  %.017.i.i34.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.ay = sub nsw i64 0, %.017.i.i34.i.us
  %i.az = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.aa
  br i1 %i.bc, label %bb.c, label %_ZSt10__pop_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.bd = sub nsw i64 0, %.0916.i.i.i.us
  %i.be = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !66
  %.not5.i.us = icmp eq i64 %.017.i.i34.i.us, 0
  br i1 %.not5.i.us, label %_ZSt10__pop_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !1

_ZSt10__pop_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.09.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.0916.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.bg = sub nsw i64 0, %.09.lcssa.i.i.i.us
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8
  store i64 %i.aa, ptr %i.bi, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.us, %.lr.ph.split.us
  %i.bj = icmp ult ptr %i.d, %i.z
  br i1 %i.bj, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !310

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.bk = icmp eq i64 %spec.select.i.i.us, %i.r
  %or.cond = select i1 %i.p, i1 %i.bk, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bl = getelementptr inbounds i8, ptr %i.f, i64 -16
  br i1 %i.p, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bm = icmp eq i64 %i.q, 0
  %.pre31 = load i64, ptr %i.g, align 8, !tbaa !66 ; 2 uses
  br i1 %i.bm, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.bn = phi i64 [ %i.bt, %bb.e ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.05.09.us10.us = phi ptr [ %i.bo, %bb.e ], [ %i.c, %.lr.ph.split.split.us ]
  %i.bo = getelementptr inbounds i8, ptr %.sroa.05.09.us10.us, i64 -8 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !66 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %_ZSt10__pop_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.loopexit.us18.us, label %bb.e

_ZSt10__pop_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.loopexit.us18.us: ; preds = %.lr.ph.split.split.us.split.us
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !66
  %6 = load i64, ptr %i.bl, align 8, !tbaa !66    ; 2 uses
  store i64 %6, ptr %i.g, align 8, !tbaa !66
  %7 = icmp uge i64 %6, %i.bp
  %spec.select = sext i1 %7 to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.f, i64 %spec.select
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  store i64 %i.bp, ptr %i.bs, align 8, !tbaa !66
  %.pre30 = load i64, ptr %i.g, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %_ZSt10__pop_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.loopexit.us18.us, %.lr.ph.split.split.us.split.us
  %i.bt = phi i64 [ %.pre30, %_ZSt10__pop_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.loopexit.us18.us ], [ %i.bn, %.lr.ph.split.split.us.split.us ]
  %i.bu = icmp ult ptr %i.d, %i.bo
  br i1 %i.bu, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !310

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.bv = phi i64 [ %i.bz, %bb.f ], [ %.pre31, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.05.09.us10 = phi ptr [ %i.bw, %bb.f ], [ %i.c, %.lr.ph.split.split.us ]
  %i.bw = getelementptr inbounds i8, ptr %.sroa.05.09.us10, i64 -8 ; 4 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !66 ; 3 uses
  %i.by = icmp ult i64 %i.bx, %i.bv
  br i1 %i.by, label %._crit_edge.i.i.us11, label %bb.f

._crit_edge.i.i.us11:                             ; preds = %.lr.ph.split.split.us.split
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !66
  store i64 %i.bx, ptr %i.g, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us11, %.lr.ph.split.split.us.split
  %i.bz = phi i64 [ %i.bx, %._crit_edge.i.i.us11 ], [ %i.bv, %.lr.ph.split.split.us.split ]
  %i.ca = icmp ult ptr %i.d, %i.bw
  br i1 %i.ca, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !310

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.pre = load i64, ptr %i.g, align 8, !tbaa !66
  br label %bb.g

._crit_edge:                                      ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph.split.split, %bb.h
  %i.cb = phi i64 [ %.pre, %.lr.ph.split.split ], [ %i.cf, %bb.h ] ; 3 uses
  %.sroa.05.09 = phi ptr [ %i.c, %.lr.ph.split.split ], [ %i.cc, %bb.h ]
  %i.cc = getelementptr inbounds i8, ptr %.sroa.05.09, i64 -8 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !66 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %i.cb
  br i1 %i.ce, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !66
  store i64 %i.cd, ptr %i.g, align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.cf = phi i64 [ %i.cb, %bb.g ], [ %i.cd, %._crit_edge.i.i ]
  %i.cg = icmp ult ptr %i.d, %i.cc
  br i1 %i.cg, label %bb.g, label %._crit_edge, !llvm.loop !310
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt11__make_heapISt16reverse_iteratorIPmEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr nofree noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 19 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !65
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %.fr = freeze i64 %i.e                          ; 2 uses
  %i.f = ashr exact i64 %.fr, 3                   ; 4 uses
  %i.g = icmp slt i64 %i.f, 2
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -2                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = add nsw i64 %i.f, -1
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = and i64 %.fr, 8
  %i.m = icmp eq i64 %i.l, 0
  %i.n = lshr exact i64 %i.h, 1                   ; 2 uses
  br i1 %i.m, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.o = or disjoint i64 %i.h, 1
  %i.p = sub nsw i64 1, %i.f
  %i.q = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = sub nsw i64 0, %i.n
  %i.t = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapISt16reverse_iteratorIPmElmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.bh, %_ZSt13__adjust_heapISt16reverse_iteratorIPmElmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.us ], [ %i.i, %bb.b ] ; 8 uses
  %i.v = sub i64 0, %.08.us
  %i.w = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !66   ; 2 uses
  %i.z = icmp slt i64 %.08.us, %i.k
  br i1 %i.z, label %.lr.ph.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIPmElmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.030.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.aa = shl i64 %.030.i.us, 1                   ; 4 uses
  %i.ab = add i64 %i.aa, 2
  %i.ac = sub nuw nsw i64 -2, %i.aa
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ac
  %i.ae = or disjoint i64 %i.aa, 1
  %i.af = xor i64 %i.aa, -1
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !66
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !66
  %i.al = icmp ult i64 %i.ai, %i.ak
  %spec.select.i.us = select i1 %i.al, i64 %i.ae, i64 %i.ab ; 6 uses
  %i.am = sub i64 0, %spec.select.i.us
  %i.an = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !66
  %i.aq = sub i64 0, %.030.i.us
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  store i64 %i.ap, ptr %i.as, align 8, !tbaa !66
  %i.at = icmp slt i64 %spec.select.i.us, %i.k
  br i1 %i.at, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !0

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.au = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.au, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIPmElmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.0916.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.0916.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.av = sub nsw i64 0, %.017.i.i.us
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !66 ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.y
  br i1 %i.az, label %bb.c, label %_ZSt13__adjust_heapISt16reverse_iteratorIPmElmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ba = sub nsw i64 0, %.0916.i.i.us
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  store i64 %i.ay, ptr %i.bc, align 8, !tbaa !66
  %i.bd = icmp sgt i64 %.017.i.i.us, %.08.us
  br i1 %i.bd, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIPmElmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.us, !llvm.loop !1

_ZSt13__adjust_heapISt16reverse_iteratorIPmElmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.09.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.0916.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %i.be = sub nsw i64 0, %.09.lcssa.i.i.us
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  store i64 %i.y, ptr %i.bg, align 8, !tbaa !66
  %.not.us = icmp eq i64 %.08.us, 0
  %i.bh = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !311

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapISt16reverse_iteratorIPmElmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit
  %.08 = phi i64 [ %i.cw, %_ZSt13__adjust_heapISt16reverse_iteratorIPmElmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit ], [ %i.i, %.split.preheader ] ; 8 uses
  %i.bi = sub i64 0, %.08
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !66 ; 2 uses
  %i.bm = icmp slt i64 %.08, %i.k
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.030.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.bn = shl i64 %.030.i, 1                      ; 4 uses
  %i.bo = add i64 %i.bn, 2
  %i.bp = sub nuw nsw i64 -2, %i.bn
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = or disjoint i64 %i.bn, 1
  %i.bs = xor i64 %i.bn, -1
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !66
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !66
  %i.by = icmp ult i64 %i.bv, %i.bx
  %spec.select.i = select i1 %i.by, i64 %i.br, i64 %i.bo ; 4 uses
  %i.bz = sub i64 0, %spec.select.i
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !66
  %i.cd = sub i64 0, %.030.i
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  store i64 %i.cc, ptr %i.cf, align 8, !tbaa !66
  %i.cg = icmp slt i64 %spec.select.i, %i.k
  br i1 %i.cg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ch = icmp eq i64 %.0.lcssa.i, %i.n
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ci = load i64, ptr %i.r, align 8, !tbaa !66
  store i64 %i.ci, ptr %i.u, align 8, !tbaa !66
  br label %bb.e

end_hunk_0
