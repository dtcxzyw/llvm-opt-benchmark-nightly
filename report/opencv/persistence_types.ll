Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/persistence_types?download=true
inline.NumInlined: 558
inline.NumDeleted: 221
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEET_SG_SG_T0_:bb.a
  br label %.lr.ph.i.i.lr.ph.us.i

.lr.ph.i.i.lr.ph.us.i:                            ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit, %bb.o
  %.sroa.017.0.us.i = phi ptr [ %.sroa.017.1.us.us.i, %bb.o ], [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit ]
  %.sroa.020.0.us.i = phi ptr [ %i.bl, %bb.o ], [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %bb.l, %.lr.ph.i.i.lr.ph.us.i
  %.sroa.020.140.us.us.i = phi ptr [ %.sroa.020.0.us.i, %.lr.ph.i.i.lr.ph.us.i ], [ %i.bc, %bb.l ] ; 6 uses
  %i.av = load ptr, ptr %.sroa.020.140.us.us.i, align 8, !tbaa !35 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.us.us.i
  %indvars.iv.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next.i.i.us.us.i, %bb.k ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i.us.us.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !26 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.us.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.us.us.i = icmp eq i32 %i.ay, %i.ba
  br i1 %.not.i.i.us.us.i, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.us.i

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i.i.us.us.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.us.us.i, label %.lr.ph.i.i8.us.us.i.preheader, label %bb.j, !llvm.loop !2

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.us.i: ; preds = %bb.j
  %i.bb = icmp slt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.l, label %.lr.ph.i.i8.us.us.i.preheader

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.us.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.020.140.us.us.i, i64 8
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i8.us.us.i.preheader:                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us.us.i, %bb.k
  br label %.lr.ph.i.i8.us.us.i

.lr.ph.i.i8.us.us.i:                              ; preds = %.lr.ph.i.i8.us.us.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.us.us.i
  %.sroa.017.0.pn.us.us.i = phi ptr [ %.sroa.017.1.us.us.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.us.us.i ], [ %.sroa.017.0.us.i, %.lr.ph.i.i8.us.us.i.preheader ]
  %.sroa.017.1.us.us.i = getelementptr inbounds i8, ptr %.sroa.017.0.pn.us.us.i, i64 -8 ; 5 uses
  %i.bd = load ptr, ptr %.sroa.017.1.us.us.i, align 8, !tbaa !35 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i8.us.us.i
  %indvars.iv.i.i10.us.us.i = phi i64 [ 0, %.lr.ph.i.i8.us.us.i ], [ %indvars.iv.next.i.i13.us.us.i, %bb.n ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i10.us.us.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !26 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.i10.us.us.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !26 ; 2 uses
  %.not.i.i11.us.us.i = icmp eq i32 %i.bg, %i.bi
  br i1 %.not.i.i11.us.us.i, label %bb.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.us.us.i

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i.i13.us.us.i = add nuw nsw i64 %indvars.iv.i.i10.us.us.i, 1 ; 2 uses
  %exitcond.not.i.i14.us.us.i = icmp eq i64 %indvars.iv.next.i.i13.us.us.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i14.us.us.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.thread.us.i, label %bb.m, !llvm.loop !2

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.us.us.i: ; preds = %bb.m
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i8.us.us.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.thread.us.i, !llvm.loop !148

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.thread.us.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.us.us.i, %bb.n
  %i.bk = icmp ult ptr %.sroa.020.140.us.us.i, %.sroa.017.1.us.us.i
  br i1 %i.bk, label %bb.o, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEET_SG_SG_SG_T0_.exit

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.thread.us.i
  store ptr %i.bd, ptr %.sroa.020.140.us.us.i, align 8, !tbaa !35
  store ptr %i.av, ptr %.sroa.017.1.us.us.i, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.020.140.us.us.i, i64 8
  br label %.lr.ph.i.i.lr.ph.us.i, !llvm.loop !149

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.loopexit24.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.loopexit24.i
  %.sroa.017.170.i = phi ptr [ %.sroa.017.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.loopexit24.i ], [ %i.h, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit.thread ] ; 3 uses
  %.sroa.020.069.i = phi ptr [ %i.bo, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.loopexit24.i ], [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit.thread ] ; 3 uses
  %i.bm = load ptr, ptr %.sroa.020.069.i, align 8, !tbaa !35
  %i.bn = load ptr, ptr %.sroa.017.170.i, align 8, !tbaa !35
  store ptr %i.bn, ptr %.sroa.020.069.i, align 8, !tbaa !35
  store ptr %i.bm, ptr %.sroa.017.170.i, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.020.069.i, i64 8 ; 3 uses
  %.sroa.017.1.i = getelementptr inbounds i8, ptr %.sroa.017.170.i, i64 -8 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %.sroa.017.1.i
  br i1 %i.bp, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.loopexit24.i, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEET_SG_SG_SG_T0_.exit, !llvm.loop !149

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEET_SG_SG_SG_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.loopexit24.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.thread.us.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit.thread
  %.us-phi67.i = phi ptr [ %.sroa.020.140.us.us.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit15.thread.us.i ], [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_SG_SG_SG_T0_.exit.thread ], [ %i.bo, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.loopexit24.i ]
  ret ptr %.us-phi67.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterINS2_13SparseNodeCmpEEEEvT_T0_SH_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 3 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %4, 0
  %wide.trip.count.i.i = zext nneg i32 %4 to i64
  br i1 %i.d, label %.lr.ph.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread

.lr.ph.i.i.us:                                    ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.us
  %.046.us = phi i64 [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.us ], [ %1, %.lr.ph ] ; 2 uses
  %i.e = shl i64 %.046.us, 1                      ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 3 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.i.us
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26   ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 2 uses
  %.not.i.i.us = icmp eq i32 %i.o, %i.q
  br i1 %.not.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.us, label %bb.b, !llvm.loop !2

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us: ; preds = %bb.b
  %i.r = icmp slt i32 %i.o, %i.q
  %cond.fr.us = freeze i1 %i.r
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.f ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us
  %i.s = phi ptr [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us ], [ %i.i, %bb.c ]
  %i.t = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.us ], [ %i.f, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store ptr %i.s, ptr %i.u, align 8, !tbaa !35
  %i.v = icmp slt i64 %i.t, %i.b
  br i1 %i.v, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !150

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread
  %.046 = phi i64 [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.w = shl i64 %.046, 1
  %i.x = add i64 %i.w, 2                          ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !35
  %i.ab = icmp slt i64 %i.x, %i.b
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread ] ; 5 uses
  %i.ac = and i64 %2, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ae = add nsw i64 %2, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa, %i.af
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = shl nsw i64 %.0.lcssa, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.ai, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.am = icmp sgt i64 %.1, %1
  br i1 %i.am, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_13SparseNodeCmpEEEEvT_T0_SH_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.an = icmp sgt i32 %4, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count.i.i.i = zext nneg i32 %4 to i64
  br i1 %i.an, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_13SparseNodeCmpEEEEvT_T0_SH_T1_RT2_.exit

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i, %bb.h
  %.025.us.i = phi i64 [ %.0926.us.i, %bb.h ], [ %.1, %.lr.ph.i ] ; 4 uses
  %.0926.us.in.i = add nsw i64 %.025.us.i, -1
  %.0926.us.i = sdiv i64 %.0926.us.in.i, 2        ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0926.us.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  br label %bb.g

bb.g:                                             ; preds = %5, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %5 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.us.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !26 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i.us.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.us.i = icmp eq i32 %i.at, %i.av
  br i1 %.not.i.i.us.i, label %5, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.us.i

5:                                                ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_13SparseNodeCmpEEEEvT_T0_SH_T1_RT2_.exit, label %bb.g, !llvm.loop !2

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.us.i: ; preds = %bb.g
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_13SparseNodeCmpEEEEvT_T0_SH_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.us.i
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %.025.us.i
  store ptr %i.aq, ptr %i.ax, align 8, !tbaa !35
  %i.ay = icmp sgt i64 %.0926.us.i, %1
  br i1 %i.ay, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_13SparseNodeCmpEEEEvT_T0_SH_T1_RT2_.exit, !llvm.loop !151

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN2cv9SparseMat4NodeESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops14_Iter_comp_valINS2_13SparseNodeCmpEEEEvT_T0_SH_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.us.i, %bb.h, %5, %bb.f, %.lr.ph.i
  %.022.i = phi i64 [ %.025.us.i, %5 ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.025.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2cv13SparseNodeCmpEEclINS_17__normal_iteratorIPPKNS2_9SparseMat4NodeESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.us.i ], [ %.0926.us.i, %bb.h ]
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.022.i
  store ptr %3, ptr %i.az, align 8, !tbaa !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8internal14VecReaderProxyINS_8KeyPointELi0EEclERSt6vectorIS2_SaIS2_EEm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %4 = alloca %"class.cv::KeyPoint", align 16     ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = tail call noundef i64 @_ZNK2cv16FileNodeIterator9remainingEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 28                  ; 3 uses
  %i.j = icmp ugt i64 %.sroa.speculated, %i.i
  br i1 %i.j, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit.thread, label %bb.b

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit.thread: ; preds = %bb.a
  %i.k = sub nuw i64 %.sroa.speculated, %i.i
  tail call void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k)
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %.sroa.speculated, %i.i
  br i1 %i.l, label %bb.c, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [28 x i8], ptr %i.e, i64 %.sroa.speculated ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.c
  store ptr %i.m, ptr %i.c, align 8, !tbaa !49
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i
  %.not = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit.thread, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.d ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.q = load ptr, ptr %0, align 8, !tbaa !45
  call void @_ZNK2cv16FileNodeIteratordeEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.q)
  %i.r = load ptr, ptr %1, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw [28 x i8], ptr %i.r, i64 %.09
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %4, align 16, !tbaa !37
  store float 0.000000e+00, ptr %i.n, align 16, !tbaa !52
  store i32 0, ptr %i.o, align 4, !tbaa !53
  store i32 -1, ptr %i.p, align 8, !tbaa !54
  call void @_ZN2cv4readERKNS_8FileNodeERNS_8KeyPointERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(28) %i.s, ptr noundef nonnull align 4 dereferenceable(28) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.t = add nuw i64 %.09, 1                      ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !45
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN2cv16FileNodeIteratorppEv(ptr noundef nonnull align 8 dereferenceable(48) %i.u) ; 0 uses
  %exitcond.not = icmp eq i64 %i.t, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !152
}

declare noundef i64 @_ZNK2cv16FileNodeIterator9remainingEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !48     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 28                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 28                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 329406144173384851
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 329406144173384850, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i.prol, align 4, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24
  store i32 -1, ptr %i.r, align 4, !tbaa !54
  %i.s = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 28 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !153

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i, align 4, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store i32 -1, ptr %i.x, align 4, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.y, align 4, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 44
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i32 0, ptr %i.aa, align 4, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 52
  store i32 -1, ptr %i.ab, align 4, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ac, align 4, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store i32 -1, ptr %i.af, align 4, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 84
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ag, align 4, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 100
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i32 0, ptr %i.ai, align 4, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 108
  store i32 -1, ptr %i.aj, align 4, !tbaa !54
  %i.ak = add i64 %.01012.i.i.i, -4               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !154

_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !49
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #15
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 329406144173384850) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 28
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
end_hunk_0
