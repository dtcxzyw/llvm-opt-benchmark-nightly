Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_sah_spatial?download=true
inline.NumInlined: 6054
inline.NumDeleted: 749
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 205
begin_hunk_0_@_ZSt16__introsort_loopIPN6embree4sse212PresplitItemElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.r, ptr noundef nonnull align 4 dereferenceable(8) %i.t), !inline_history !282
  %i.v = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.q ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.i.i.i
  %i.y = load i64, ptr %i.w, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !20

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.aa = and i64 %i.k, 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = add nsw i64 %i.l, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ad
  br i1 %i.ae, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.af = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 4
  store i64 %i.aj, ptr %i.ai, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %5, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %5, align 8
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01316.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ag, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.e ], [ %.01316.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i910.i.i.i ; 2 uses
  %i.al = call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.ak, ptr noundef nonnull align 4 dereferenceable(8) %5), !inline_history !283
  br i1 %i.al, label %bb.e, label %.critedge.loopexit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.01316.i.i.i.i.i
  %i.an = load i64, ptr %i.ak, align 4
  store i64 %i.an, ptr %i.am, align 4
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %.pre.i.i.i.i.i = load i64, ptr %5, align 8
  br label %_ZSt10__pop_heapIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i

_ZSt10__pop_heapIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %.sroa.02.0.copyload.i.i.i, %bb.d ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ao, ptr %i.ap, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aq = icmp sgt i64 %i.k, 8
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_.exit, !llvm.loop !284

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %.02129 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.ar = phi i64 [ %i.bs, %bb.b ], [ %i.c, %.lr.ph ]
  %i.as = add nsw i64 %.0152030, -1               ; 3 uses
  %i.at = lshr i64 %i.ar, 4
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at ; 7 uses
  %i.av = getelementptr inbounds i8, ptr %.02129, i64 -8 ; 8 uses
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.au), !inline_history !285
  br i1 %i.aw, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.ax = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.au, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !285
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %0, align 4
  %i.az = load i64, ptr %i.au, align 4
  store i64 %i.az, ptr %0, align 4
  store i64 %i.ay, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.ba = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !285
  %i.bb = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.av, align 4
  store i64 %i.bc, ptr %0, align 4
  store i64 %i.bb, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bd = load i64, ptr %i.e, align 4
  store i64 %i.bd, ptr %0, align 4
  store i64 %i.bb, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.be = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !285
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load <2 x i64>, ptr %0, align 4
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bg, ptr %0, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.au, ptr noundef nonnull align 4 dereferenceable(8) %i.av), !inline_history !285
  %i.bi = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = load i64, ptr %i.av, align 4
  store i64 %i.bj, ptr %0, align 4
  store i64 %i.bi, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bk = load i64, ptr %i.au, align 4
  store i64 %i.bk, ptr %0, align 4
  store i64 %i.bi, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02129, %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.bm, %bb.p ] ; 9 uses
  %i.bl = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(8) %0), !inline_history !286
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !287

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.bn = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %.114.i.i), !inline_history !286
  br i1 %i.bn, label %.preheader.i.i, label %bb.q, !llvm.loop !288

bb.q:                                             ; preds = %.preheader.i.i
  %i.bo = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bo, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = load i64, ptr %.1.i.i, align 4
  %i.bq = load i64, ptr %.114.i.i, align 4
  store i64 %i.bq, ptr %.1.i.i, align 4
  store i64 %i.bp, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !289

_ZSt27__unguarded_partition_pivotIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPN6embree4sse212PresplitItemElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.as, ptr %3)
  %i.br = ptrtoint ptr %.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 128
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_.exit, !llvm.loop !281

_ZSt14__partial_sortIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6embree4sse212PresplitItemEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_SC_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.embree::sse2::PresplitItem", align 8 ; 11 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %4 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.aj, %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load i64, ptr %i.o, align 4 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %i.u), !inline_history !290
  %i.w = or disjoint i64 %i.q, 1
  %spec.select.i.us = select i1 %i.v, i64 %i.w, i64 %i.r ; 6 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.us
  %i.z = load i64, ptr %i.x, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.aa, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !20

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload.us, ptr %3, align 8
  %i.ab = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.ab, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01316.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us ; 2 uses
  %i.ad = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 4 dereferenceable(8) %i.ac, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !291
  br i1 %i.ad, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  %i.af = load i64, ptr %i.ac, align 4
  store i64 %i.af, ptr %i.ae, align 4
  %i.ag = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.ag, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !21

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.013.lcssa.ph.i.i.us = phi i64 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %.pre.i.i.us = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.us

_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.ah = phi i64 [ %.sroa.02.0.copyload.us, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %.sroa.02.0.copyload.us, %._crit_edge.i.us.thread ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.015.us, %._crit_edge.i.us.thread ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.ah, ptr %i.ai, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.015.us, 0
  %i.aj = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !292

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit
  %.015 = phi i64 [ %i.bh, %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i64, ptr %i.ak, align 4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %i.al = icmp slt i64 %.015, %i.i
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.am = shl i64 %.031.i, 1                      ; 3 uses
  %i.an = add i64 %i.am, 2                        ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = getelementptr [8 x i8], ptr %0, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(8) %i.aq), !inline_history !290
  %i.as = or disjoint i64 %i.am, 1
  %spec.select.i = select i1 %i.ar, i64 %i.as, i64 %i.an ; 4 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i
  %i.av = load i64, ptr %i.at, align 4
  store i64 %i.av, ptr %i.au, align 4
  %i.aw = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ax = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ay = load i64, ptr %i.m, align 4
  store i64 %i.ay, ptr %i.n, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %4, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload, ptr %3, align 8
  %i.az = icmp sgt i64 %.1.i, %.015
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.bb = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 4 dereferenceable(8) %i.ba, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !291
  br i1 %i.bb, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  %i.bd = load i64, ptr %i.ba, align 4
  store i64 %i.bd, ptr %i.bc, align 4
  %i.be = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.be, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !21

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
  %.pre.i.i = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit

_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bf = phi i64 [ %.sroa.02.0.copyload, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bf, ptr %i.bg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.015, 0
  %i.bh = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !292

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN6embree4sse212PresplitItemElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS2_S8_EEEEvT_T0_SD_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree17ParallelRadixSortINS_4sse212PresplitItemEjE17tbbRadixIterationEjbPKS2_PS2_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noalias noundef %3, ptr noalias noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %7 = alloca %class.anon.175, align 8            ; 5 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %9 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %10 = alloca %class.anon.172, align 8           ; 5 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %12 = alloca %class.anon.170, align 8           ; 9 uses
  %13 = alloca %class.anon.171, align 8           ; 9 uses
  store i32 %1, ptr %i.a, align 4
  store ptr %3, ptr %i.b, align 8
  store ptr %4, ptr %i.c, align 8
  store i64 %5, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %0, ptr %12, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.d, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %_ZN6embree12parallel_forImZNS_17ParallelRadixSortINS_4sse212PresplitItemEjE17tbbRadixIterationEjbPKS3_PS3_mEUlmE_EEvT_RKT0_.exit.thread, label %bb.b

_ZN6embree12parallel_forImZNS_17ParallelRadixSortINS_4sse212PresplitItemEjE17tbbRadixIterationEjbPKS3_PS3_mEUlmE_EEvT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN6embree12parallel_forImZNS_17ParallelRadixSortINS_4sse212PresplitItemEjE17tbbRadixIterationEjbPKS3_PS3_mEUlmE0_EEvT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr null, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %12, ptr %10, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_17ParallelRadixSortINS_4sse212PresplitItemEjE17tbbRadixIterationEjbPKS5_PS5_mEUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSB_SB_SB_SE_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %5, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZZN6embree24parallel_reduce_internalImNS_4sse214SpatialBinInfoILm16ENS_7PrimRefEEEZNS1_24HeuristicArraySpatialSAHINS1_23TriangleSplitterFactoryES3_Lm32ELm16EE21parallel_spatial_findERKNS1_16PrimInfoExtRangeEmEUlRKNS_5rangeImEEE_ZNS7_21parallel_spatial_findESA_mEUlRKS4_SH_E_EET0_T_SK_SK_SK_RKSJ_RKT1_RKT2_ENKUlmE_clEm:bb.a
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 1376
  %i.jw = load <4 x float>, ptr %i.jv, align 32
  store <4 x float> %i.jw, ptr %i.ju, align 16
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 1392
  %i.jy = getelementptr inbounds nuw i8, ptr %i.x, i64 1392
  %i.jz = load <4 x float>, ptr %i.jx, align 16
  store <4 x float> %i.jz, ptr %i.jy, align 16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.x, i64 1408
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 1408
  %i.kc = load <4 x float>, ptr %i.kb, align 64
  store <4 x float> %i.kc, ptr %i.ka, align 16
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 1424
  %i.ke = getelementptr inbounds nuw i8, ptr %i.x, i64 1424
  %i.kf = load <4 x float>, ptr %i.kd, align 16
  store <4 x float> %i.kf, ptr %i.ke, align 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.x, i64 1440
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 1440
  %i.ki = load <4 x float>, ptr %i.kh, align 32
  store <4 x float> %i.ki, ptr %i.kg, align 16
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 1456
  %i.kk = getelementptr inbounds nuw i8, ptr %i.x, i64 1456
  %i.kl = load <4 x float>, ptr %i.kj, align 16
  store <4 x float> %i.kl, ptr %i.kk, align 16
  %i.km = getelementptr inbounds nuw i8, ptr %i.x, i64 1472
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 1472
  %i.ko = load <4 x float>, ptr %i.kn, align 64
  store <4 x float> %i.ko, ptr %i.km, align 16
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 1488
  %i.kq = getelementptr inbounds nuw i8, ptr %i.x, i64 1488
  %i.kr = load <4 x float>, ptr %i.kp, align 16
  store <4 x float> %i.kr, ptr %i.kq, align 16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.x, i64 1504
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 1504
  %i.ku = load <4 x float>, ptr %i.kt, align 32
  store <4 x float> %i.ku, ptr %i.ks, align 16
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 1520
  %i.kw = getelementptr inbounds nuw i8, ptr %i.x, i64 1520
  %i.kx = load <4 x float>, ptr %i.kv, align 16
  store <4 x float> %i.kx, ptr %i.kw, align 16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.x, i64 1536
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.la = load <2 x i64>, ptr %i.kz, align 64
  store <2 x i64> %i.la, ptr %i.ky, align 16
  %i.lb = getelementptr inbounds nuw i8, ptr %i.x, i64 1552
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 1552
  %i.ld = load <2 x i64>, ptr %i.lc, align 16
  store <2 x i64> %i.ld, ptr %i.lb, align 16
  %i.le = getelementptr inbounds nuw i8, ptr %i.x, i64 1568
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 1568
  %i.lg = load <2 x i64>, ptr %i.lf, align 32
  store <2 x i64> %i.lg, ptr %i.le, align 16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.x, i64 1584
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 1584
  %i.lj = load <2 x i64>, ptr %i.li, align 16
  store <2 x i64> %i.lj, ptr %i.lh, align 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.x, i64 1600
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 1600
  %i.lm = load <2 x i64>, ptr %i.ll, align 64
  store <2 x i64> %i.lm, ptr %i.lk, align 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.x, i64 1616
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 1616
  %i.lp = load <2 x i64>, ptr %i.lo, align 16
  store <2 x i64> %i.lp, ptr %i.ln, align 16
  %i.lq = getelementptr inbounds nuw i8, ptr %i.x, i64 1632
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 1632
  %i.ls = load <2 x i64>, ptr %i.lr, align 32
  store <2 x i64> %i.ls, ptr %i.lq, align 16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.x, i64 1648
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 1648
  %i.lv = load <2 x i64>, ptr %i.lu, align 16
  store <2 x i64> %i.lv, ptr %i.lt, align 16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.x, i64 1664
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 1664
  %i.ly = load <2 x i64>, ptr %i.lx, align 64
  store <2 x i64> %i.ly, ptr %i.lw, align 16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.x, i64 1680
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 1680
  %i.mb = load <2 x i64>, ptr %i.ma, align 16
  store <2 x i64> %i.mb, ptr %i.lz, align 16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.x, i64 1696
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 1696
  %i.me = load <2 x i64>, ptr %i.md, align 32
  store <2 x i64> %i.me, ptr %i.mc, align 16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.x, i64 1712
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 1712
  %i.mh = load <2 x i64>, ptr %i.mg, align 16
  store <2 x i64> %i.mh, ptr %i.mf, align 16
  %i.mi = getelementptr inbounds nuw i8, ptr %i.x, i64 1728
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 1728
  %i.mk = load <2 x i64>, ptr %i.mj, align 64
  store <2 x i64> %i.mk, ptr %i.mi, align 16
  %i.ml = getelementptr inbounds nuw i8, ptr %i.x, i64 1744
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 1744
  %i.mn = load <2 x i64>, ptr %i.mm, align 16
  store <2 x i64> %i.mn, ptr %i.ml, align 16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.x, i64 1760
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 1760
  %i.mq = load <2 x i64>, ptr %i.mp, align 32
  store <2 x i64> %i.mq, ptr %i.mo, align 16
  %i.mr = getelementptr inbounds nuw i8, ptr %i.x, i64 1776
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 1776
  %i.mt = load <2 x i64>, ptr %i.ms, align 16
  store <2 x i64> %i.mt, ptr %i.mr, align 16
  %i.mu = getelementptr inbounds nuw i8, ptr %i.x, i64 1792
  %i.mv = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.mw = load <2 x i64>, ptr %i.mv, align 64
  store <2 x i64> %i.mw, ptr %i.mu, align 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.x, i64 1808
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 1808
  %i.mz = load <2 x i64>, ptr %i.my, align 16
  store <2 x i64> %i.mz, ptr %i.mx, align 16
  %i.na = getelementptr inbounds nuw i8, ptr %i.x, i64 1824
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 1824
  %i.nc = load <2 x i64>, ptr %i.nb, align 32
  store <2 x i64> %i.nc, ptr %i.na, align 16
  %i.nd = getelementptr inbounds nuw i8, ptr %i.x, i64 1840
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 1840
  %i.nf = load <2 x i64>, ptr %i.ne, align 16
  store <2 x i64> %i.nf, ptr %i.nd, align 16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.x, i64 1856
  %i.nh = getelementptr inbounds nuw i8, ptr %2, i64 1856
  %i.ni = load <2 x i64>, ptr %i.nh, align 64
  store <2 x i64> %i.ni, ptr %i.ng, align 16
  %i.nj = getelementptr inbounds nuw i8, ptr %i.x, i64 1872
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 1872
  %i.nl = load <2 x i64>, ptr %i.nk, align 16
  store <2 x i64> %i.nl, ptr %i.nj, align 16
  %i.nm = getelementptr inbounds nuw i8, ptr %i.x, i64 1888
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 1888
  %i.no = load <2 x i64>, ptr %i.nn, align 32
  store <2 x i64> %i.no, ptr %i.nm, align 16
  %i.np = getelementptr inbounds nuw i8, ptr %i.x, i64 1904
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 1904
  %i.nr = load <2 x i64>, ptr %i.nq, align 16
  store <2 x i64> %i.nr, ptr %i.np, align 16
  %i.ns = getelementptr inbounds nuw i8, ptr %i.x, i64 1920
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 1920
  %i.nu = load <2 x i64>, ptr %i.nt, align 64
  store <2 x i64> %i.nu, ptr %i.ns, align 16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.x, i64 1936
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 1936
  %i.nx = load <2 x i64>, ptr %i.nw, align 16
  store <2 x i64> %i.nx, ptr %i.nv, align 16
  %i.ny = getelementptr inbounds nuw i8, ptr %i.x, i64 1952
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 1952
  %i.oa = load <2 x i64>, ptr %i.nz, align 32
  store <2 x i64> %i.oa, ptr %i.ny, align 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.x, i64 1968
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 1968
  %i.od = load <2 x i64>, ptr %i.oc, align 16
  store <2 x i64> %i.od, ptr %i.ob, align 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.x, i64 1984
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 1984
  %i.og = load <2 x i64>, ptr %i.of, align 64
  store <2 x i64> %i.og, ptr %i.oe, align 16
  %i.oh = getelementptr inbounds nuw i8, ptr %i.x, i64 2000
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 2000
  %i.oj = load <2 x i64>, ptr %i.oi, align 16
  store <2 x i64> %i.oj, ptr %i.oh, align 16
  %i.ok = getelementptr inbounds nuw i8, ptr %i.x, i64 2016
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 2016
  %i.om = load <2 x i64>, ptr %i.ol, align 32
  store <2 x i64> %i.om, ptr %i.ok, align 16
  %i.on = getelementptr inbounds nuw i8, ptr %i.x, i64 2032
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 2032
  %i.op = load <2 x i64>, ptr %i.oo, align 16
  store <2 x i64> %i.op, ptr %i.on, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6embree7PrimRefElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 512
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_.exit
  %i.m = icmp eq i64 %i.fk, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph44, !llvm.loop !1230

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa40 = phi i64 [ %i.c, %.lr.ph ], [ %i.iu, %bb.b ] ; 2 uses
  %.021.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.n = lshr exact i64 %.lcssa40, 5              ; 2 uses
  %i.o = add nsw i64 %i.n, -2                     ; 2 uses
  %i.p = lshr i64 %i.o, 1                         ; 3 uses
  %i.q = add nsw i64 %i.n, -1
  %i.r = lshr i64 %i.q, 1                         ; 2 uses
  %i.s = and i64 %.lcssa40, 32
  %i.t = icmp eq i64 %i.s, 0
  %3 = or disjoint i64 %i.o, 1                    ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %3 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.p, %._crit_edge ], [ %i.ci, %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i ] ; 8 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.012.i.i ; 2 uses
  %i.z = load <4 x float>, ptr %i.y, align 16     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load <4 x float>, ptr %i.aa, align 16   ; 2 uses
  %i.ac = icmp slt i64 %.012.i.i, %i.r
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.ad = shl i64 %.030.i.i.i, 1                  ; 3 uses
  %i.ae = add i64 %i.ad, 2                        ; 2 uses
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr [32 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw i64 %i.aj, 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an
  %i.ap = getelementptr i8, ptr %i.ag, i64 60
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw i64 %i.ar, 32
  %i.at = getelementptr i8, ptr %i.ag, i64 44
  %i.au = load i32, ptr %i.at, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = or disjoint i64 %i.as, %i.av
  %i.ax = icmp ult i64 %i.ao, %i.aw
  %i.ay = or disjoint i64 %i.ad, 1
  %spec.select.i.i.i = select i1 %i.ax, i64 %i.ay, i64 %i.ae ; 4 uses
  %i.az = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i ; 2 uses
  %i.ba = getelementptr inbounds [32 x i8], ptr %0, i64 %.030.i.i.i ; 2 uses
  %i.bb = load <4 x float>, ptr %i.az, align 16
  store <4 x float> %i.bb, ptr %i.ba, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load <4 x float>, ptr %i.bd, align 16
  store <4 x float> %i.be, ptr %i.bc, align 16
  %i.bf = icmp slt i64 %spec.select.i.i.i, %i.r
  br i1 %i.bf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1231

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bg = icmp eq i64 %.0.lcssa.i.i.i, %i.p
  %or.cond.i.i = select i1 %i.t, i1 %i.bg, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.bh, ptr %i.v, align 16
  %i.bi = load <4 x float>, ptr %i.x, align 16
  store <4 x float> %i.bi, ptr %i.w, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.127.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bj = icmp sgt i64 %.127.i.i.i, %.012.i.i
  br i1 %i.bj, label %.lr.ph.i.preheader.i.i.i, label %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.e
  %bc.i.i.i = bitcast <4 x float> %i.ab to <4 x i32>
  %i.bk = extractelement <4 x i32> %bc.i.i.i, i64 3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw i64 %i.bl, 32
  %bc29.i.i.i = bitcast <4 x float> %i.z to <4 x i32>
  %i.bn = extractelement <4 x i32> %bc29.i.i.i, i64 3
  %i.bo = zext i32 %i.bn to i64
  %i.bp = or disjoint i64 %i.bm, %i.bo
  br label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %bb.f, %.lr.ph.i.preheader.i.i.i
  %.01316.i.i.i.i = phi i64 [ %.017.i.i.i.i, %bb.f ], [ %.127.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %.017.in.i.i.i.i = add nsw i64 %.01316.i.i.i.i, -1
  %.017.i.i.i.i = sdiv i64 %.017.in.i.i.i.i, 2    ; 4 uses
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.017.i.i.i.i ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw i64 %i.bt, 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = or disjoint i64 %i.bu, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.bp
  br i1 %i.bz, label %bb.f, label %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i13
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.01316.i.i.i.i ; 2 uses
  %i.cb = load <4 x float>, ptr %i.bq, align 16
  store <4 x float> %i.cb, ptr %i.ca, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ce = load <4 x float>, ptr %i.cd, align 16
  store <4 x float> %i.ce, ptr %i.cc, align 16
  %i.cf = icmp sgt i64 %.017.i.i.i.i, %.012.i.i
  br i1 %i.cf, label %.lr.ph.i.i.i.i13, label %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i, !llvm.loop !1232

_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i13, %bb.e
  %.013.lcssa.i.i.i.i = phi i64 [ %.127.i.i.i, %bb.e ], [ %.017.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i13 ]
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i ; 2 uses
  store <4 x float> %i.z, ptr %i.cg, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <4 x float> %i.ab, ptr %i.ch, align 16
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.ci = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !1233

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i, %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.cj, %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i ], [ %.021.lcssa, %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.07.i.i, i64 -32 ; 4 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 16   ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.07.i.i, i64 -16 ; 2 uses
  %i.cm = load <4 x float>, ptr %i.cl, align 16   ; 2 uses
  %i.cn = load <4 x float>, ptr %0, align 16
  store <4 x float> %i.cn, ptr %i.cj, align 16
  %i.co = load <4 x float>, ptr %i.h, align 16
  store <4 x float> %i.co, ptr %i.cl, align 16
  %i.cp = ptrtoint ptr %i.cj to i64
  %i.cq = sub i64 %i.cp, %i.a                     ; 3 uses
  %i.cr = ashr exact i64 %i.cq, 5                 ; 3 uses
  %i.cs = add nsw i64 %i.cr, -1
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = icmp sgt i64 %i.cr, 2
  br i1 %i.cu, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.cv = shl i64 %.030.i.i.i.i, 1                ; 3 uses
  %i.cw = add i64 %i.cv, 2                        ; 2 uses
  %i.cx = getelementptr inbounds [32 x i8], ptr %0, i64 %i.cw ; 2 uses
  %i.cy = getelementptr [32 x i8], ptr %0, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = shl nuw i64 %i.db, 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = zext i32 %i.de to i64
  %i.dg = or disjoint i64 %i.dc, %i.df
  %i.dh = getelementptr i8, ptr %i.cy, i64 60
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw i64 %i.dj, 32
  %i.dl = getelementptr i8, ptr %i.cy, i64 44
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = zext i32 %i.dm to i64
  %i.do = or disjoint i64 %i.dk, %i.dn
  %i.dp = icmp ult i64 %i.dg, %i.do
  %i.dq = or disjoint i64 %i.cv, 1
  %spec.select.i.i.i.i = select i1 %i.dp, i64 %i.dq, i64 %i.cw ; 4 uses
  %i.dr = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds [32 x i8], ptr %0, i64 %.030.i.i.i.i ; 2 uses
  %i.dt = load <4 x float>, ptr %i.dr, align 16
  store <4 x float> %i.dt, ptr %i.ds, align 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load <4 x float>, ptr %i.dv, align 16
  store <4 x float> %i.dw, ptr %i.du, align 16
  %i.dx = icmp slt i64 %spec.select.i.i.i.i, %i.ct
  br i1 %i.dx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1231

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.dy = and i64 %i.cq, 32
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ea = add nsw i64 %i.cr, -2
  %i.eb = ashr exact i64 %i.ea, 1
  %i.ec = icmp eq i64 %.0.lcssa.i.i.i.i, %i.eb
  br i1 %i.ec, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ed = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ee = or disjoint i64 %i.ed, 1                ; 2 uses
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i ; 2 uses
  %i.eh = load <4 x float>, ptr %i.ef, align 16
  store <4 x float> %i.eh, ptr %i.eg, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = load <4 x float>, ptr %i.ej, align 16
  store <4 x float> %i.ek, ptr %i.ei, align 16
  br label %.lr.ph.i.preheader.i.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.127.i8.i.i.i = phi i64 [ %i.ee, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.h ]
  %bc.i.i.i.i = bitcast <4 x float> %i.cm to <4 x i32>
  %i.el = extractelement <4 x i32> %bc.i.i.i.i, i64 3
  %i.em = zext i32 %i.el to i64
  %i.en = shl nuw i64 %i.em, 32
  %bc29.i.i.i.i = bitcast <4 x float> %i.ck to <4 x i32>
  %i.eo = extractelement <4 x i32> %bc29.i.i.i.i, i64 3
  %i.ep = zext i32 %i.eo to i64
  %i.eq = or disjoint i64 %i.en, %i.ep
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i.i
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.i ], [ %.127.i8.i.i.i, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.017.i.i910.i.i.i ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = zext i32 %i.et to i64
  %i.ev = shl nuw i64 %i.eu, 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = zext i32 %i.ex to i64
  %i.ez = or disjoint i64 %i.ev, %i.ey
  %i.fa = icmp ult i64 %i.ez, %i.eq
  br i1 %i.fa, label %bb.i, label %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fb = getelementptr inbounds [32 x i8], ptr %0, i64 %.01316.i.i.i.i.i ; 2 uses
  %i.fc = load <4 x float>, ptr %i.er, align 16
  store <4 x float> %i.fc, ptr %i.fb, align 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ff = load <4 x float>, ptr %i.fe, align 16
  store <4 x float> %i.ff, ptr %i.fd, align 16
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1232

_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.fg = getelementptr inbounds [32 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i ; 2 uses
  store <4 x float> %i.ck, ptr %i.fg, align 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x float> %i.cm, ptr %i.fh, align 16
  %i.fi = icmp sgt i64 %i.cq, 32
  br i1 %i.fi, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_.exit, !llvm.loop !1234

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %.0122043 = phi i64 [ %i.fk, %bb.b ], [ %2, %.lr.ph ]
  %.02142 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 7 uses
  %i.fj = phi i64 [ %i.iu, %bb.b ], [ %i.c, %.lr.ph ]
  %i.fk = add nsw i64 %.0122043, -1               ; 3 uses
  %i.fl = lshr i64 %i.fj, 6
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.fl ; 8 uses
  %i.fn = getelementptr inbounds i8, ptr %.02142, i64 -32 ; 4 uses
  %i.fo = load i32, ptr %i.f, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = shl nuw i64 %i.fp, 32
  %i.fr = load i32, ptr %i.g, align 4
  %i.fs = zext i32 %i.fr to i64
  %i.ft = or disjoint i64 %i.fq, %i.fs            ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 28
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = zext i32 %i.fv to i64
  %i.fx = shl nuw i64 %i.fw, 32
end_hunk_1
begin_hunk_2_@_ZSt11__sort_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_RT0_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(9) %i.j, i64 9, i1 false)
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -96 ; 2 uses
  %i.l = load <4 x float>, ptr %i.k, align 16
  %i.m = getelementptr inbounds i8, ptr %.07, i64 -80 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16
  %i.o = getelementptr inbounds i8, ptr %.07, i64 -64 ; 2 uses
  %i.p = load <4 x float>, ptr %i.o, align 16
  %i.q = getelementptr inbounds i8, ptr %.07, i64 -48 ; 2 uses
  %i.r = load <4 x float>, ptr %i.q, align 16
  %i.s = getelementptr inbounds i8, ptr %.07, i64 -32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 16             ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -24 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8
  %i.w = load i64, ptr %i.u, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.j, ptr noundef nonnull align 16 dereferenceable(112) %0, i64 9, i1 false)
  %i.x = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.x, ptr %i.k, align 16
  %i.y = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.y, ptr %i.m, align 16
  %i.z = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.z, ptr %i.o, align 16
  %i.aa = load <4 x float>, ptr %i.h, align 16
  store <4 x float> %i.aa, ptr %i.q, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.s, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ab = ptrtoint ptr %i.j to i64
  %i.ac = sub i64 %i.ab, %i.a                     ; 3 uses
  %i.ad = sdiv exact i64 %i.ac, 112               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.ae = add nsw i64 %i.ad, -1
  %i.af = sdiv i64 %i.ae, 2
  %i.ag = icmp sgt i64 %i.ac, 224
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.029.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ah = shl i64 %.029.i.i, 1                    ; 3 uses
  %i.ai = add i64 %i.ah, 2                        ; 2 uses
  %i.aj = getelementptr inbounds [112 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = getelementptr [112 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = load i64, ptr %i.al, align 8
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr i8, ptr %i.ak, i64 192
  %i.ar = getelementptr i8, ptr %i.ak, i64 200
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.aq, align 8
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ugt i64 %i.ap, %i.au
  %i.aw = or disjoint i64 %i.ah, 1
  %spec.select.i.i = select i1 %i.av, i64 %i.aw, i64 %i.ai ; 4 uses
  %i.ax = getelementptr inbounds [112 x i8], ptr %0, i64 %spec.select.i.i ; 6 uses
  %i.ay = getelementptr inbounds [112 x i8], ptr %0, i64 %.029.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ay, ptr noundef nonnull align 16 dereferenceable(112) %i.ax, i64 9, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load <4 x float>, ptr %i.ba, align 16
  store <4 x float> %i.bb, ptr %i.az, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = load <4 x float>, ptr %i.bc, align 16
  store <4 x float> %i.be, ptr %i.bd, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bh = load <4 x float>, ptr %i.bg, align 16
  store <4 x float> %i.bh, ptr %i.bf, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bk = load <4 x float>, ptr %i.bi, align 16
  store <4 x float> %i.bk, ptr %i.bj, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bl, ptr noundef nonnull align 16 dereferenceable(24) %i.bm, i64 24, i1 false)
  %i.bn = icmp slt i64 %spec.select.i.i, %i.af
  br i1 %i.bn, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !45

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.bo = and i64 %i.ad, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.bq = add nsw i64 %i.ad, -2
  %i.br = ashr exact i64 %i.bq, 1
  %i.bs = icmp eq i64 %.0.lcssa.i.i, %i.br
  br i1 %i.bs, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.bt = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bu = or disjoint i64 %i.bt, 1                ; 2 uses
  %i.bv = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.bu ; 6 uses
  %i.bw = getelementptr inbounds [112 x i8], ptr %0, i64 %.0.lcssa.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bw, ptr noundef nonnull align 16 dereferenceable(112) %i.bv, i64 9, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load <4 x float>, ptr %i.by, align 16
  store <4 x float> %i.bz, ptr %i.bx, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cc = load <4 x float>, ptr %i.ca, align 16
  store <4 x float> %i.cc, ptr %i.cb, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.cf = load <4 x float>, ptr %i.ce, align 16
  store <4 x float> %i.cf, ptr %i.cd, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ci = load <4 x float>, ptr %i.cg, align 16
  store <4 x float> %i.ci, ptr %i.ch, align 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cj, ptr noundef nonnull align 16 dereferenceable(24) %i.ck, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.07.i, i64 9, i1 false)
  br label %.lr.ph.i.preheader.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.07.i, i64 9, i1 false)
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_SJ_RT0_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d, %.thread.i
  %.127.i15.i = phi i64 [ %i.bu, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.cl = sub i64 %i.w, %i.t
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.preheader.i.i
  %.01316.i.i.i = phi i64 [ %.017.i.i1617.i, %bb.e ], [ %.127.i15.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i1617.i = lshr i64 %.017.in.i.i.i, 1    ; 3 uses
  %i.cm = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.017.i.i1617.i ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 88
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = load i64, ptr %i.cn, align 8
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp ugt i64 %i.cr, %i.cl
  br i1 %i.cs, label %bb.e, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_SJ_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ct = getelementptr inbounds [112 x i8], ptr %0, i64 %.01316.i.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ct, ptr noundef nonnull align 16 dereferenceable(112) %i.cm, i64 9, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cw = load <4 x float>, ptr %i.cv, align 16
  store <4 x float> %i.cw, ptr %i.cu, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cz = load <4 x float>, ptr %i.cx, align 16
  store <4 x float> %i.cz, ptr %i.cy, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.dc = load <4 x float>, ptr %i.db, align 16
  store <4 x float> %i.dc, ptr %i.da, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.df = load <4 x float>, ptr %i.dd, align 16
  store <4 x float> %i.df, ptr %i.de, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dg, ptr noundef nonnull align 16 dereferenceable(24) %i.cn, i64 24, i1 false)
  %.not18.i = icmp eq i64 %.017.i.i1617.i, 0
  br i1 %.not18.i, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_SJ_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !46

_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_SJ_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.01316.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.dh = getelementptr inbounds [112 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.dh, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, i64 9, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x float> %i.l, ptr %i.di, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store <4 x float> %i.n, ptr %i.dj, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store <4 x float> %i.p, ptr %i.dk, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  store <4 x float> %i.r, ptr %i.dl, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  store i64 %i.t, ptr %i.dm, align 16
  %.sroa.13.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  store <2 x i64> %i.v, ptr %.sroa.13.80..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  %i.dn = icmp sgt i64 %i.ac, 112
  br i1 %i.dn, label %bb.b, label %._crit_edge, !llvm.loop !1735

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_SJ_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0 = alloca [9 x i8], align 16            ; 2 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 224
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 112                 ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %3 ; 6 uses
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %i.l ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_T0_SK_T1_T2_.exit, %bb.b
  %.013 = phi i64 [ %i.g, %bb.b ], [ %i.dd, %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_T0_SK_T1_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.013 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load <4 x float>, ptr %i.z, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load <4 x float>, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ae = load <4 x float>, ptr %i.ad, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ag = load <4 x float>, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ai = load i64, ptr %i.ah, align 16           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 88 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.aj, align 8
  %i.al = load i64, ptr %i.aj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(9) %i.y, i64 9, i1 false)
  %i.am = icmp slt i64 %.013, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %bb.c ] ; 2 uses
  %i.an = shl i64 %.029.i, 1                      ; 3 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds [112 x i8], ptr %0, i64 %i.ao ; 2 uses
  %i.aq = getelementptr [112 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.at = load i64, ptr %i.as, align 8
  %i.au = load i64, ptr %i.ar, align 8
  %i.av = sub i64 %i.at, %i.au
  %i.aw = getelementptr i8, ptr %i.aq, i64 192
  %i.ax = getelementptr i8, ptr %i.aq, i64 200
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = load i64, ptr %i.aw, align 8
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ugt i64 %i.av, %i.ba
  %i.bc = or disjoint i64 %i.an, 1
  %spec.select.i = select i1 %i.bb, i64 %i.bc, i64 %i.ao ; 4 uses
  %i.bd = getelementptr inbounds [112 x i8], ptr %0, i64 %spec.select.i ; 6 uses
  %i.be = getelementptr inbounds [112 x i8], ptr %0, i64 %.029.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.be, ptr noundef nonnull align 16 dereferenceable(112) %i.bd, i64 9, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load <4 x float>, ptr %i.bg, align 16
  store <4 x float> %i.bh, ptr %i.bf, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bk = load <4 x float>, ptr %i.bi, align 16
  store <4 x float> %i.bk, ptr %i.bj, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bn = load <4 x float>, ptr %i.bm, align 16
  store <4 x float> %i.bn, ptr %i.bl, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bq = load <4 x float>, ptr %i.bo, align 16
  store <4 x float> %i.bq, ptr %i.bp, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.br, ptr noundef nonnull align 16 dereferenceable(24) %i.bs, i64 24, i1 false)
  %i.bt = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.013, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bu = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.bu, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.n, ptr noundef nonnull align 16 dereferenceable(112) %i.m, i64 9, i1 false)
  %i.bv = load <4 x float>, ptr %i.p, align 16
  store <4 x float> %i.bv, ptr %i.o, align 16
  %i.bw = load <4 x float>, ptr %i.q, align 16
  store <4 x float> %i.bw, ptr %i.r, align 16
  %i.bx = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.bx, ptr %i.s, align 16
  %i.by = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.by, ptr %i.v, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.w, ptr noundef nonnull align 16 dereferenceable(24) %i.x, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.127.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bz = icmp sgt i64 %.127.i, %.013
  br i1 %i.bz, label %.lr.ph.i.preheader.i, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_T0_SK_T1_T2_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.ca = sub i64 %i.al, %i.ai
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.127.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.cb = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.017.i.i ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = load i64, ptr %i.cc, align 8
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ugt i64 %i.cg, %i.ca
  br i1 %i.ch, label %bb.f, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_T0_SK_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ci = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.01316.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ci, ptr noundef nonnull align 16 dereferenceable(112) %i.cb, i64 9, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cl = load <4 x float>, ptr %i.ck, align 16
  store <4 x float> %i.cl, ptr %i.cj, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.co = load <4 x float>, ptr %i.cm, align 16
  store <4 x float> %i.co, ptr %i.cn, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cr = load <4 x float>, ptr %i.cq, align 16
  store <4 x float> %i.cr, ptr %i.cp, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cu = load <4 x float>, ptr %i.cs, align 16
  store <4 x float> %i.cu, ptr %i.ct, align 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cv, ptr noundef nonnull align 16 dereferenceable(24) %i.cc, i64 24, i1 false)
  %i.cw = icmp sgt i64 %.017.i.i, %.013
  br i1 %i.cw, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_T0_SK_T1_T2_.exit, !llvm.loop !46

_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_T0_SK_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.127.i, %bb.e ], [ %.017.i.i, %bb.f ], [ %.01316.i.i, %.lr.ph.i.i ]
  %i.cx = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.013.lcssa.i.i ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.cx, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0, i64 9, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <4 x float> %i.aa, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store <4 x float> %i.ac, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  store <4 x float> %i.ae, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  store <4 x float> %i.ag, ptr %i.db, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  store i64 %i.ai, ptr %i.dc, align 16
  %.sroa.13.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  store <2 x i64> %i.ak, ptr %.sroa.13.80..sroa_idx.i, align 8
  %.not = icmp eq i64 %.013, 0
  %i.dd = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1736

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_T0_SK_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_SJ_SJ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.i.i34 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i31 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i28 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i25 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i22 = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %.sroa.0.i.i = alloca { i64, i8, [7 x i8] }, align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load i64, ptr %i.a, align 8
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i64, ptr %i.f, align 8
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp ugt i64 %i.e, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.n = load i64, ptr %i.m, align 8
  %i.o = load i64, ptr %i.l, align 8
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.j, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
end_hunk_2
