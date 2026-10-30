Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/sparse_set?download=true
inline.NumInlined: 24964
inline.NumDeleted: 2514
loop-unroll.NumCompletelyUnrolled: 152
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_T1_:bb.a
  %.not.i.i = icmp ult ptr %storemerge.i.i, %.sroa.07.1.i
  br i1 %.not.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEET_SG_SG_T0_.exit

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds i8, ptr %.sroa.07.1.i, i64 -4 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !148, !noalias !2918
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !148, !noalias !2918
  store i32 %i.cw, ptr %.pn.i.i, align 4, !tbaa !148, !noalias !2918
  br label %_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_SG_T0_.exit.i, !llvm.loop !2916

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEET_SG_SG_T0_.exit: ; preds = %bb.p
  %i.cx = ptrtoint ptr %.sroa.07.1.i to i64       ; 5 uses
  store i64 %i.cx, ptr %6, align 8, !tbaa !144
  store i64 %i.bo, ptr %7, align 8, !tbaa !144
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, i64 noundef %i.bp)
  store i64 %i.cx, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cy = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cz = sub i64 %i.cy, %i.cx
  %i.da = icmp sgt i64 %i.cz, 64
  br i1 %i.da, label %.lr.ph, label %.loopexit, !llvm.loop !2908

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEET_SG_SG_T0_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr49 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 3 uses
  %.pre15.i = load i32, ptr %.ptr49, align 4, !tbaa !148
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.f = phi i32 [ %.pre15.i, %.lr.ph.i ], [ %i.p, %bb.d ]
  %.sroa.09.014.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.09.014.i.add, %bb.d ] ; 3 uses
  %.sroa.09.014.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.09.014.i.idx ; 4 uses
  %.sroa.09.014.i.add = add nsw i64 %.sroa.09.014.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.09.014.i.add ; 2 uses
  %i.g = load i32, ptr %.ptr, align 4, !tbaa !148 ; 6 uses
  %i.h = icmp ult i32 %i.g, %i.f
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.09.014.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.09.014.i.ptr, i64 %gepdiff, i1 false), !tbaa !148, !noalias !2942
  store i32 %i.g, ptr %.ptr49, align 4, !tbaa !148
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %.sroa.09.014.i.ptr, align 4, !tbaa !148 ; 2 uses
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.i, %bb.c ]
  %.pn6.i.i = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i ], [ %.sroa.09.014.i.ptr, %bb.c ] ; 2 uses
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i, i64 4 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.pn6.i.i, i64 -4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !148
  %i.m = load i32, ptr %.sroa.01.0.i.i, align 4, !tbaa !148 ; 2 uses
  %i.n = icmp ult i32 %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i, !llvm.loop !2929

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.pre-phi.i.i = phi ptr [ %.sroa.09.014.i.ptr, %bb.c ], [ %.sroa.01.0.i.i, %.lr.ph.i.i ]
  %i.o = getelementptr inbounds i8, ptr %.pre-phi.i.i, i64 -4
  store i32 %i.g, ptr %i.o, align 4, !tbaa !148
  %.pre.i = load i32, ptr %.ptr49, align 4, !tbaa !148
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.p = phi i32 [ %i.g, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i ]
  %i.q = icmp eq i64 %.sroa.09.014.i.add, -64
  br i1 %i.q, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %bb.b, !llvm.loop !2930

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit: ; preds = %bb.d
  %i.r = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.r, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8
  %.sroa.02.03.i = phi ptr [ %i.s, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8 ], [ %i.e, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit ] ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.02.03.i, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !148  ; 3 uses
  %i.u = load i32, ptr %.sroa.02.03.i, align 4, !tbaa !148 ; 2 uses
  %i.v = icmp ult i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i7, %.lr.ph.i.i10
  %i.w = phi i32 [ %i.y, %.lr.ph.i.i10 ], [ %i.u, %.lr.ph.i7 ]
  %.pn6.i.i11 = phi ptr [ %.sroa.01.0.i.i12, %.lr.ph.i.i10 ], [ %.sroa.02.03.i, %.lr.ph.i7 ] ; 2 uses
  %.sroa.01.0.i.i12 = getelementptr inbounds nuw i8, ptr %.pn6.i.i11, i64 4 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.pn6.i.i11, i64 -4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !148
  %i.y = load i32, ptr %.sroa.01.0.i.i12, align 4, !tbaa !148 ; 2 uses
  %i.z = icmp ult i32 %i.t, %i.y
  br i1 %i.z, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8, !llvm.loop !2929

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8: ; preds = %.lr.ph.i.i10, %.lr.ph.i7
  %.pre-phi.i.i9 = phi ptr [ %.sroa.02.03.i, %.lr.ph.i7 ], [ %.sroa.01.0.i.i12, %.lr.ph.i.i10 ]
  %i.aa = getelementptr inbounds i8, ptr %.pre-phi.i.i9, i64 -4
  store i32 %i.t, ptr %i.aa, align 4, !tbaa !148
  %i.ab = icmp eq ptr %i.s, %.sroa.0.0.copyload.i2.i
  br i1 %i.ab, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %.lr.ph.i7, !llvm.loop !2931

bb.e:                                             ; preds = %bb.a
  %i.ac = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.ac, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, %.sroa.0.0.copyload.i2.i
  br i1 %i.ae, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.f
  %.pre15.i16 = load i32, ptr %i.ad, align 4, !tbaa !148
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i15
  %i.af = phi i32 [ %.pre15.i16, %.lr.ph.i15 ], [ %i.at, %bb.j ]
  %.sroa.09.014.i17 = phi ptr [ %i.ad, %.lr.ph.i15 ], [ %i.ag, %bb.j ] ; 6 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.09.014.i17, i64 -4 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !148 ; 6 uses
  %i.ai = icmp ult i32 %i.ah, %i.af
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = ptrtoint ptr %.sroa.09.014.i17 to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.preheader.i25, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24

.lr.ph.i.i.i.i.i.preheader.i25:                   ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr nonnull align 4 %.sroa.09.014.i17, i64 %i.ak, i1 false), !tbaa !148, !noalias !2943
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24: ; preds = %.lr.ph.i.i.i.i.i.preheader.i25, %bb.h
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !148
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = load i32, ptr %.sroa.09.014.i17, align 4, !tbaa !148 ; 2 uses
  %i.an = icmp ult i32 %i.ah, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18

.lr.ph.i.i21:                                     ; preds = %bb.i, %.lr.ph.i.i21
  %i.ao = phi i32 [ %i.aq, %.lr.ph.i.i21 ], [ %i.am, %bb.i ]
  %.pn6.i.i22 = phi ptr [ %.sroa.01.0.i.i23, %.lr.ph.i.i21 ], [ %.sroa.09.014.i17, %bb.i ] ; 2 uses
  %.sroa.01.0.i.i23 = getelementptr inbounds nuw i8, ptr %.pn6.i.i22, i64 4 ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.pn6.i.i22, i64 -4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !148
  %i.aq = load i32, ptr %.sroa.01.0.i.i23, align 4, !tbaa !148 ; 2 uses
  %i.ar = icmp ult i32 %i.ah, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18, !llvm.loop !2929

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18: ; preds = %.lr.ph.i.i21, %bb.i
  %.pre-phi.i.i19 = phi ptr [ %.sroa.09.014.i17, %bb.i ], [ %.sroa.01.0.i.i23, %.lr.ph.i.i21 ]
  %i.as = getelementptr inbounds i8, ptr %.pre-phi.i.i19, i64 -4
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !148
  %.pre.i20 = load i32, ptr %i.ad, align 4, !tbaa !148
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24
  %i.at = phi i32 [ %i.ah, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24 ], [ %.pre.i20, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18 ]
  %i.au = icmp eq ptr %i.ag, %.sroa.0.0.copyload.i2.i
  br i1 %i.au, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %bb.g, !llvm.loop !2930

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8, %bb.f, %bb.e, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_T0_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %4 = alloca %"class.std::reverse_iterator.225", align 8 ; 2 uses
  %5 = alloca %"class.std::reverse_iterator.225", align 8 ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !144
  store i64 %i.a, ptr %4, align 8, !tbaa !144
  %i.b = load i64, ptr %1, align 8, !tbaa !144
  store i64 %i.b, ptr %5, align 8, !tbaa !144
  call void @_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_RT0_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.c = load i64, ptr %1, align 8, !tbaa !144    ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !144 ; 5 uses
  %.not8 = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.d
  br i1 %.not8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !144    ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 12 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 7 uses
  %i.h = sub i64 %i.e, %i.c
  %.fr = freeze i64 %i.h                          ; 2 uses
  %i.i = ashr i64 %.fr, 2                         ; 4 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = icmp sgt i64 %i.i, 2
  %i.m = and i64 %.fr, 4
  %i.n = icmp eq i64 %i.m, 0                      ; 2 uses
  %i.o = add nsw i64 %i.i, -2                     ; 3 uses
  %i.p = ashr exact i64 %i.o, 1                   ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.q = or disjoint i64 %i.o, 1
  %i.r = sub nsw i64 1, %i.i
  %i.s = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = sub nsw i64 0, %i.p
  %i.v = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.sroa.06.09.us = phi ptr [ %i.x, %bb.d ], [ %i.d, %.lr.ph.split.us.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.sroa.06.09.us, i64 -4 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !148  ; 3 uses
  %i.z = load i32, ptr %i.g, align 4, !tbaa !148  ; 2 uses
  %i.aa = icmp ult i32 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i32 %i.z, ptr %i.x, align 4, !tbaa !148
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.030.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.ab = shl i64 %.030.i.i.us, 1                 ; 4 uses
  %i.ac = add i64 %i.ab, 2
  %i.ad = sub nuw nsw i64 -2, %i.ab
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ad
  %i.af = or disjoint i64 %i.ab, 1
  %i.ag = xor i64 %i.ab, -1
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !148
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !148
  %i.am = icmp ult i32 %i.ak, %i.al
  %spec.select.i.i.us = select i1 %i.am, i64 %i.af, i64 %i.ac ; 6 uses
  %i.an = sub i64 0, %spec.select.i.i.us
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !148
  %i.ar = sub i64 0, %.030.i.i.us
  %i.as = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !148
  %i.au = icmp slt i64 %spec.select.i.i.us, %i.k
  br i1 %i.au, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !43

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.av = load i32, ptr %i.t, align 4, !tbaa !148
  store i32 %i.av, ptr %i.w, align 4, !tbaa !148
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.0916.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.q, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.0916.i.i.i.us = phi i64 [ %.017.i.i23.i.us, %bb.c ], [ %.0916.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.0916.i.i.i.us, -1
  %.017.i.i23.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.aw = sub nsw i64 0, %.017.i.i23.i.us
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !148 ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.y
  br i1 %i.ba, label %bb.c, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.bb = sub nsw i64 0, %.0916.i.i.i.us
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.az, ptr %i.bd, align 4, !tbaa !148
  %.not4.i.us = icmp eq i64 %.017.i.i23.i.us, 0
  br i1 %.not4.i.us, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !44

_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.09.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.0916.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.be = sub nsw i64 0, %.09.lcssa.i.i.i.us
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.y, ptr %i.bg, align 4, !tbaa !148
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us, %.lr.ph.split.us
  %.not.us = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.x
  br i1 %.not.us, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !2944

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.bh = icmp eq i64 %spec.select.i.i.us, %i.p
  %or.cond = select i1 %i.n, i1 %i.bh, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bi = getelementptr inbounds i8, ptr %i.f, i64 -8
  br i1 %i.n, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bj = icmp eq i64 %i.o, 0
  %.pre32 = load i32, ptr %i.g, align 4, !tbaa !148 ; 2 uses
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.bk = phi i32 [ %i.bq, %bb.e ], [ %.pre32, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.06.09.us10.us = phi ptr [ %i.bl, %bb.e ], [ %i.d, %.lr.ph.split.split.us ]
  %i.bl = getelementptr inbounds i8, ptr %.sroa.06.09.us10.us, i64 -4 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !148 ; 3 uses
  %i.bn = icmp ult i32 %i.bm, %i.bk
  br i1 %i.bn, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.loopexit.us18.us, label %bb.e

_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.loopexit.us18.us: ; preds = %.lr.ph.split.split.us.split.us
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !148
  %6 = load i32, ptr %i.bi, align 4, !tbaa !148   ; 2 uses
  store i32 %6, ptr %i.g, align 4, !tbaa !148
  %7 = icmp uge i32 %6, %i.bm
  %spec.select = sext i1 %7 to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.f, i64 %spec.select
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !148
  %.pre31 = load i32, ptr %i.g, align 4, !tbaa !148
  br label %bb.e

bb.e:                                             ; preds = %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.loopexit.us18.us, %.lr.ph.split.split.us.split.us
  %i.bq = phi i32 [ %.pre31, %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.loopexit.us18.us ], [ %i.bk, %.lr.ph.split.split.us.split.us ]
  %.not.us22.us = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.bl
  br i1 %.not.us22.us, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !2944

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.br = phi i32 [ %i.bv, %bb.f ], [ %.pre32, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.06.09.us10 = phi ptr [ %i.bs, %bb.f ], [ %i.d, %.lr.ph.split.split.us ]
  %i.bs = getelementptr inbounds i8, ptr %.sroa.06.09.us10, i64 -4 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !148 ; 3 uses
  %i.bu = icmp ult i32 %i.bt, %i.br
  br i1 %i.bu, label %._crit_edge.i.i.us11, label %bb.f

._crit_edge.i.i.us11:                             ; preds = %.lr.ph.split.split.us.split
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !148
  store i32 %i.bt, ptr %i.g, align 4, !tbaa !148
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us11, %.lr.ph.split.split.us.split
  %i.bv = phi i32 [ %i.bt, %._crit_edge.i.i.us11 ], [ %i.br, %.lr.ph.split.split.us.split ]
  %.not.us22 = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.bs
  br i1 %.not.us22, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !2944

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.pre = load i32, ptr %i.g, align 4, !tbaa !148
  br label %bb.g

._crit_edge:                                      ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph.split.split, %bb.h
  %i.bw = phi i32 [ %.pre, %.lr.ph.split.split ], [ %i.ca, %bb.h ] ; 3 uses
  %.sroa.06.09 = phi ptr [ %i.d, %.lr.ph.split.split ], [ %i.bx, %bb.h ]
  %i.bx = getelementptr inbounds i8, ptr %.sroa.06.09, i64 -4 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !148 ; 3 uses
  %i.bz = icmp ult i32 %i.by, %i.bw
  br i1 %i.bz, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !148
  store i32 %i.by, ptr %i.g, align 4, !tbaa !148
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.ca = phi i32 [ %i.bw, %bb.g ], [ %i.by, %._crit_edge.i.i ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.bx
  br i1 %.not, label %bb.g, label %._crit_edge, !llvm.loop !2944
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_RT0_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 19 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !144
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1
  %i.n = sub nsw i64 1, %i.d
  %i.o = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = sub nsw i64 0, %i.l
  %i.r = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.bf, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.t = sub i64 0, %.08.us
  %i.u = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !148  ; 2 uses
  %i.x = icmp slt i64 %.08.us, %i.i
  br i1 %i.x, label %.lr.ph.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.030.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.y = shl i64 %.030.i.us, 1                    ; 4 uses
  %i.z = add i64 %i.y, 2
  %i.aa = sub nuw nsw i64 -2, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.aa
  %i.ac = or disjoint i64 %i.y, 1
  %i.ad = xor i64 %i.y, -1
  %i.ae = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !148
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !148
  %i.aj = icmp ult i32 %i.ah, %i.ai
  %spec.select.i.us = select i1 %i.aj, i64 %i.ac, i64 %i.z ; 6 uses
  %i.ak = sub i64 0, %spec.select.i.us
  %i.al = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !148
  %i.ao = sub i64 0, %.030.i.us
  %i.ap = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !148
  %i.ar = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ar, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !43

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.as = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.as, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.0916.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.0916.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.at = sub nsw i64 0, %.017.i.i.us
  %i.au = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !148 ; 2 uses
  %i.ax = icmp ult i32 %i.aw, %i.w
  br i1 %i.ax, label %bb.c, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ay = sub nsw i64 0, %.0916.i.i.us
  %i.az = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4
  store i32 %i.aw, ptr %i.ba, align 4, !tbaa !148
  %i.bb = icmp sgt i64 %.017.i.i.us, %.08.us
  br i1 %i.bb, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us, !llvm.loop !44

_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.09.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.0916.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %i.bc = sub nsw i64 0, %.09.lcssa.i.i.us
  %i.bd = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  store i32 %i.w, ptr %i.be, align 4, !tbaa !148
  %.not.us = icmp eq i64 %.08.us, 0
  %i.bf = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !2945

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit
  %.08 = phi i64 [ %i.cu, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.bg = sub i64 0, %.08
  %i.bh = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !148 ; 2 uses
  %i.bk = icmp slt i64 %.08, %i.i
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.030.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.bl = shl i64 %.030.i, 1                      ; 4 uses
  %i.bm = add i64 %i.bl, 2
  %i.bn = sub nuw nsw i64 -2, %i.bl
  %i.bo = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bn
  %i.bp = or disjoint i64 %i.bl, 1
  %i.bq = xor i64 %i.bl, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !148
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !148
  %i.bw = icmp ult i32 %i.bu, %i.bv
  %spec.select.i = select i1 %i.bw, i64 %i.bp, i64 %i.bm ; 4 uses
  %i.bx = sub i64 0, %spec.select.i
  %i.by = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !148
  %i.cb = sub i64 0, %.030.i
  %i.cc = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !148
  %i.ce = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.cf = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.cf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.cg = load i32, ptr %i.p, align 4, !tbaa !148
  store i32 %i.cg, ptr %i.s, align 4, !tbaa !148
  br label %bb.e

end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_T1_:bb.a
  %.not.i.i = icmp ult ptr %storemerge.i.i, %.sroa.07.1.i
  br i1 %.not.i.i, label %bb.q, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEET_SG_SG_T0_.exit

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds i8, ptr %.sroa.07.1.i, i64 -4 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !180, !noalias !2961
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !180, !noalias !2961
  store i32 %i.cw, ptr %.pn.i.i, align 4, !tbaa !180, !noalias !2961
  br label %_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_SG_T0_.exit.i, !llvm.loop !2959

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEET_SG_SG_T0_.exit: ; preds = %bb.p
  %i.cx = ptrtoint ptr %.sroa.07.1.i to i64       ; 5 uses
  store i64 %i.cx, ptr %6, align 8, !tbaa !144
  store i64 %i.bo, ptr %7, align 8, !tbaa !144
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, i64 noundef %i.bp)
  store i64 %i.cx, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cy = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cz = sub i64 %i.cy, %i.cx
  %i.da = icmp sgt i64 %i.cz, 64
  br i1 %i.da, label %.lr.ph, label %.loopexit, !llvm.loop !2951

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEET_SG_SG_T0_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr49 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 3 uses
  %.pre15.i = load i32, ptr %.ptr49, align 4, !tbaa !180
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.f = phi i32 [ %.pre15.i, %.lr.ph.i ], [ %i.p, %bb.d ]
  %.sroa.09.014.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.09.014.i.add, %bb.d ] ; 3 uses
  %.sroa.09.014.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.09.014.i.idx ; 4 uses
  %.sroa.09.014.i.add = add nsw i64 %.sroa.09.014.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.09.014.i.add ; 2 uses
  %i.g = load i32, ptr %.ptr, align 4, !tbaa !180 ; 6 uses
  %i.h = icmp ult i32 %i.g, %i.f
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.09.014.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.09.014.i.ptr, i64 %gepdiff, i1 false), !tbaa !180, !noalias !2985
  store i32 %i.g, ptr %.ptr49, align 4, !tbaa !180
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %.sroa.09.014.i.ptr, align 4, !tbaa !180 ; 2 uses
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.i, %bb.c ]
  %.pn6.i.i = phi ptr [ %.sroa.01.0.i.i, %.lr.ph.i.i ], [ %.sroa.09.014.i.ptr, %bb.c ] ; 2 uses
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %.pn6.i.i, i64 4 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.pn6.i.i, i64 -4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !180
  %i.m = load i32, ptr %.sroa.01.0.i.i, align 4, !tbaa !180 ; 2 uses
  %i.n = icmp ult i32 %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i, !llvm.loop !2972

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.pre-phi.i.i = phi ptr [ %.sroa.09.014.i.ptr, %bb.c ], [ %.sroa.01.0.i.i, %.lr.ph.i.i ]
  %i.o = getelementptr inbounds i8, ptr %.pre-phi.i.i, i64 -4
  store i32 %i.g, ptr %i.o, align 4, !tbaa !180
  %.pre.i = load i32, ptr %.ptr49, align 4, !tbaa !180
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.p = phi i32 [ %i.g, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i ]
  %i.q = icmp eq i64 %.sroa.09.014.i.add, -64
  br i1 %i.q, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %bb.b, !llvm.loop !2973

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit: ; preds = %bb.d
  %i.r = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.r, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8
  %.sroa.02.03.i = phi ptr [ %i.s, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8 ], [ %i.e, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit ] ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.02.03.i, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !180  ; 3 uses
  %i.u = load i32, ptr %.sroa.02.03.i, align 4, !tbaa !180 ; 2 uses
  %i.v = icmp ult i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i7, %.lr.ph.i.i10
  %i.w = phi i32 [ %i.y, %.lr.ph.i.i10 ], [ %i.u, %.lr.ph.i7 ]
  %.pn6.i.i11 = phi ptr [ %.sroa.01.0.i.i12, %.lr.ph.i.i10 ], [ %.sroa.02.03.i, %.lr.ph.i7 ] ; 2 uses
  %.sroa.01.0.i.i12 = getelementptr inbounds nuw i8, ptr %.pn6.i.i11, i64 4 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.pn6.i.i11, i64 -4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !180
  %i.y = load i32, ptr %.sroa.01.0.i.i12, align 4, !tbaa !180 ; 2 uses
  %i.z = icmp ult i32 %i.t, %i.y
  br i1 %i.z, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8, !llvm.loop !2972

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8: ; preds = %.lr.ph.i.i10, %.lr.ph.i7
  %.pre-phi.i.i9 = phi ptr [ %.sroa.02.03.i, %.lr.ph.i7 ], [ %.sroa.01.0.i.i12, %.lr.ph.i.i10 ]
  %i.aa = getelementptr inbounds i8, ptr %.pre-phi.i.i9, i64 -4
  store i32 %i.t, ptr %i.aa, align 4, !tbaa !180
  %i.ab = icmp eq ptr %i.s, %.sroa.0.0.copyload.i2.i
  br i1 %i.ab, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %.lr.ph.i7, !llvm.loop !2974

bb.e:                                             ; preds = %bb.a
  %i.ac = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.ac, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, %.sroa.0.0.copyload.i2.i
  br i1 %i.ae, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.f
  %.pre15.i16 = load i32, ptr %i.ad, align 4, !tbaa !180
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.lr.ph.i15
  %i.af = phi i32 [ %.pre15.i16, %.lr.ph.i15 ], [ %i.at, %bb.j ]
  %.sroa.09.014.i17 = phi ptr [ %i.ad, %.lr.ph.i15 ], [ %i.ag, %bb.j ] ; 6 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.09.014.i17, i64 -4 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !180 ; 6 uses
  %i.ai = icmp ult i32 %i.ah, %i.af
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = ptrtoint ptr %.sroa.09.014.i17 to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.preheader.i25, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24

.lr.ph.i.i.i.i.i.preheader.i25:                   ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr nonnull align 4 %.sroa.09.014.i17, i64 %i.ak, i1 false), !tbaa !180, !noalias !2986
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24: ; preds = %.lr.ph.i.i.i.i.i.preheader.i25, %bb.h
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !180
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = load i32, ptr %.sroa.09.014.i17, align 4, !tbaa !180 ; 2 uses
  %i.an = icmp ult i32 %i.ah, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18

.lr.ph.i.i21:                                     ; preds = %bb.i, %.lr.ph.i.i21
  %i.ao = phi i32 [ %i.aq, %.lr.ph.i.i21 ], [ %i.am, %bb.i ]
  %.pn6.i.i22 = phi ptr [ %.sroa.01.0.i.i23, %.lr.ph.i.i21 ], [ %.sroa.09.014.i17, %bb.i ] ; 2 uses
  %.sroa.01.0.i.i23 = getelementptr inbounds nuw i8, ptr %.pn6.i.i22, i64 4 ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.pn6.i.i22, i64 -4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !180
  %i.aq = load i32, ptr %.sroa.01.0.i.i23, align 4, !tbaa !180 ; 2 uses
  %i.ar = icmp ult i32 %i.ah, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i21, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18, !llvm.loop !2972

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18: ; preds = %.lr.ph.i.i21, %bb.i
  %.pre-phi.i.i19 = phi ptr [ %.sroa.09.014.i17, %bb.i ], [ %.sroa.01.0.i.i23, %.lr.ph.i.i21 ]
  %i.as = getelementptr inbounds i8, ptr %.pre-phi.i.i19, i64 -4
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !180
  %.pre.i20 = load i32, ptr %i.ad, align 4, !tbaa !180
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24
  %i.at = phi i32 [ %i.ah, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i24 ], [ %.pre.i20, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i18 ]
  %i.au = icmp eq ptr %i.ag, %.sroa.0.0.copyload.i2.i
  br i1 %i.au, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit, label %bb.g, !llvm.loop !2973

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i8, %bb.f, %bb.e, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_T0_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %4 = alloca %"class.std::reverse_iterator.231", align 8 ; 2 uses
  %5 = alloca %"class.std::reverse_iterator.231", align 8 ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !144
  store i64 %i.a, ptr %4, align 8, !tbaa !144
  %i.b = load i64, ptr %1, align 8, !tbaa !144
  store i64 %i.b, ptr %5, align 8, !tbaa !144
  call void @_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_RT0_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.c = load i64, ptr %1, align 8, !tbaa !144    ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !144 ; 5 uses
  %.not8 = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.d
  br i1 %.not8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !144    ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 12 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 7 uses
  %i.h = sub i64 %i.e, %i.c
  %.fr = freeze i64 %i.h                          ; 2 uses
  %i.i = ashr i64 %.fr, 2                         ; 4 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = icmp sgt i64 %i.i, 2
  %i.m = and i64 %.fr, 4
  %i.n = icmp eq i64 %i.m, 0                      ; 2 uses
  %i.o = add nsw i64 %i.i, -2                     ; 3 uses
  %i.p = ashr exact i64 %i.o, 1                   ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.q = or disjoint i64 %i.o, 1
  %i.r = sub nsw i64 1, %i.i
  %i.s = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = sub nsw i64 0, %i.p
  %i.v = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.sroa.06.09.us = phi ptr [ %i.x, %bb.d ], [ %i.d, %.lr.ph.split.us.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.sroa.06.09.us, i64 -4 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !180  ; 3 uses
  %i.z = load i32, ptr %i.g, align 4, !tbaa !180  ; 2 uses
  %i.aa = icmp ult i32 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i32 %i.z, ptr %i.x, align 4, !tbaa !180
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.030.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.ab = shl i64 %.030.i.i.us, 1                 ; 4 uses
  %i.ac = add i64 %i.ab, 2
  %i.ad = sub nuw nsw i64 -2, %i.ab
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ad
  %i.af = or disjoint i64 %i.ab, 1
  %i.ag = xor i64 %i.ab, -1
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !180
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !180
  %i.am = icmp ult i32 %i.ak, %i.al
  %spec.select.i.i.us = select i1 %i.am, i64 %i.af, i64 %i.ac ; 6 uses
  %i.an = sub i64 0, %spec.select.i.i.us
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !180
  %i.ar = sub i64 0, %.030.i.i.us
  %i.as = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !180
  %i.au = icmp slt i64 %spec.select.i.i.us, %i.k
  br i1 %i.au, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !46

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.av = load i32, ptr %i.t, align 4, !tbaa !180
  store i32 %i.av, ptr %i.w, align 4, !tbaa !180
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.0916.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.q, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.0916.i.i.i.us = phi i64 [ %.017.i.i23.i.us, %bb.c ], [ %.0916.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.0916.i.i.i.us, -1
  %.017.i.i23.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.aw = sub nsw i64 0, %.017.i.i23.i.us
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !180 ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.y
  br i1 %i.ba, label %bb.c, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.bb = sub nsw i64 0, %.0916.i.i.i.us
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  store i32 %i.az, ptr %i.bd, align 4, !tbaa !180
  %.not4.i.us = icmp eq i64 %.017.i.i23.i.us, 0
  br i1 %.not4.i.us, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !47

_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.09.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.0916.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.be = sub nsw i64 0, %.09.lcssa.i.i.i.us
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.y, ptr %i.bg, align 4, !tbaa !180
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.us, %.lr.ph.split.us
  %.not.us = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.x
  br i1 %.not.us, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !2987

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.bh = icmp eq i64 %spec.select.i.i.us, %i.p
  %or.cond = select i1 %i.n, i1 %i.bh, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bi = getelementptr inbounds i8, ptr %i.f, i64 -8
  br i1 %i.n, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bj = icmp eq i64 %i.o, 0
  %.pre32 = load i32, ptr %i.g, align 4, !tbaa !180 ; 2 uses
  br i1 %i.bj, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.bk = phi i32 [ %i.bq, %bb.e ], [ %.pre32, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.06.09.us10.us = phi ptr [ %i.bl, %bb.e ], [ %i.d, %.lr.ph.split.split.us ]
  %i.bl = getelementptr inbounds i8, ptr %.sroa.06.09.us10.us, i64 -4 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !180 ; 3 uses
  %i.bn = icmp ult i32 %i.bm, %i.bk
  br i1 %i.bn, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.loopexit.us18.us, label %bb.e

_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.loopexit.us18.us: ; preds = %.lr.ph.split.split.us.split.us
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !180
  %6 = load i32, ptr %i.bi, align 4, !tbaa !180   ; 2 uses
  store i32 %6, ptr %i.g, align 4, !tbaa !180
  %7 = icmp uge i32 %6, %i.bm
  %spec.select = sext i1 %7 to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.f, i64 %spec.select
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !180
  %.pre31 = load i32, ptr %i.g, align 4, !tbaa !180
  br label %bb.e

bb.e:                                             ; preds = %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.loopexit.us18.us, %.lr.ph.split.split.us.split.us
  %i.bq = phi i32 [ %.pre31, %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_SG_RT0_.exit.loopexit.us18.us ], [ %i.bk, %.lr.ph.split.split.us.split.us ]
  %.not.us22.us = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.bl
  br i1 %.not.us22.us, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !2987

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.br = phi i32 [ %i.bv, %bb.f ], [ %.pre32, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.06.09.us10 = phi ptr [ %i.bs, %bb.f ], [ %i.d, %.lr.ph.split.split.us ]
  %i.bs = getelementptr inbounds i8, ptr %.sroa.06.09.us10, i64 -4 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !180 ; 3 uses
  %i.bu = icmp ult i32 %i.bt, %i.br
  br i1 %i.bu, label %._crit_edge.i.i.us11, label %bb.f

._crit_edge.i.i.us11:                             ; preds = %.lr.ph.split.split.us.split
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !180
  store i32 %i.bt, ptr %i.g, align 4, !tbaa !180
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.us11, %.lr.ph.split.split.us.split
  %i.bv = phi i32 [ %i.bt, %._crit_edge.i.i.us11 ], [ %i.br, %.lr.ph.split.split.us.split ]
  %.not.us22 = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.bs
  br i1 %.not.us22, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !2987

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.pre = load i32, ptr %i.g, align 4, !tbaa !180
  br label %bb.g

._crit_edge:                                      ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph.split.split, %bb.h
  %i.bw = phi i32 [ %.pre, %.lr.ph.split.split ], [ %i.ca, %bb.h ] ; 3 uses
  %.sroa.06.09 = phi ptr [ %i.d, %.lr.ph.split.split ], [ %i.bx, %bb.h ]
  %i.bx = getelementptr inbounds i8, ptr %.sroa.06.09, i64 -4 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !180 ; 3 uses
  %i.bz = icmp ult i32 %i.by, %i.bw
  br i1 %i.bz, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !180
  store i32 %i.by, ptr %i.g, align 4, !tbaa !180
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.ca = phi i32 [ %i.bw, %bb.g ], [ %i.by, %._crit_edge.i.i ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.bx
  br i1 %.not, label %bb.g, label %._crit_edge, !llvm.loop !2987
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_RT0_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 19 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !144
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1
  %i.n = sub nsw i64 1, %i.d
  %i.o = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = sub nsw i64 0, %i.l
  %i.r = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.bf, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.t = sub i64 0, %.08.us
  %i.u = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !180  ; 2 uses
  %i.x = icmp slt i64 %.08.us, %i.i
  br i1 %i.x, label %.lr.ph.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.030.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.y = shl i64 %.030.i.us, 1                    ; 4 uses
  %i.z = add i64 %i.y, 2
  %i.aa = sub nuw nsw i64 -2, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.aa
  %i.ac = or disjoint i64 %i.y, 1
  %i.ad = xor i64 %i.y, -1
  %i.ae = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !180
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !180
  %i.aj = icmp ult i32 %i.ah, %i.ai
  %spec.select.i.us = select i1 %i.aj, i64 %i.ac, i64 %i.z ; 6 uses
  %i.ak = sub i64 0, %spec.select.i.us
  %i.al = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !180
  %i.ao = sub i64 0, %.030.i.us
  %i.ap = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !180
  %i.ar = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ar, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !46

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.as = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.as, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.0916.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.0916.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.at = sub nsw i64 0, %.017.i.i.us
  %i.au = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !180 ; 2 uses
  %i.ax = icmp ult i32 %i.aw, %i.w
  br i1 %i.ax, label %bb.c, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ay = sub nsw i64 0, %.0916.i.i.us
  %i.az = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4
  store i32 %i.aw, ptr %i.ba, align 4, !tbaa !180
  %i.bb = icmp sgt i64 %.017.i.i.us, %.08.us
  br i1 %i.bb, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us, !llvm.loop !47

_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.09.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.0916.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %i.bc = sub nsw i64 0, %.09.lcssa.i.i.us
  %i.bd = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  store i32 %i.w, ptr %i.be, align 4, !tbaa !180
  %.not.us = icmp eq i64 %.08.us, 0
  %i.bf = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !2988

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit
  %.08 = phi i64 [ %i.cu, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN13SparseSetBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SH_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.bg = sub i64 0, %.08
  %i.bh = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !180 ; 2 uses
  %i.bk = icmp slt i64 %.08, %i.i
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.030.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.bl = shl i64 %.030.i, 1                      ; 4 uses
  %i.bm = add i64 %i.bl, 2
  %i.bn = sub nuw nsw i64 -2, %i.bl
  %i.bo = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bn
  %i.bp = or disjoint i64 %i.bl, 1
  %i.bq = xor i64 %i.bl, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !180
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !180
  %i.bw = icmp ult i32 %i.bu, %i.bv
  %spec.select.i = select i1 %i.bw, i64 %i.bp, i64 %i.bm ; 4 uses
  %i.bx = sub i64 0, %spec.select.i
  %i.by = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !180
  %i.cb = sub i64 0, %.030.i
  %i.cc = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !180
  %i.ce = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.cf = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.cf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.cg = load i32, ptr %i.p, align 4, !tbaa !180
  store i32 %i.cg, ptr %i.s, align 4, !tbaa !180
  br label %bb.e

end_hunk_1
