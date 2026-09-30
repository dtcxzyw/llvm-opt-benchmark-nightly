Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rtcore_builder?download=true
inline.NumInlined: 3237
inline.NumDeleted: 617
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_ZSt16__introsort_loopIPN6embree4sse216BVHBuilderMorton9BuildPrimElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_:bb.a
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
  %i.u = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.t), !inline_history !254
  %i.v = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.q ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8
  store i64 %i.y, ptr %i.x, align 8
  %i.z = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

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
  %i.aj = load i64, ptr %i.ah, align 8
  store i64 %i.aj, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %5, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %5, align 8
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01316.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ag, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01316.i.i.i.i.i = phi i64 [ %.017.i.i910.i.i.i, %bb.e ], [ %.01316.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.017.in.i.i.i.i.i = add nsw i64 %.01316.i.i.i.i.i, -1
  %.017.i.i910.i.i.i = lshr i64 %.017.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i910.i.i.i ; 2 uses
  %i.al = call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %5), !inline_history !255
  br i1 %i.al, label %bb.e, label %.critedge.loopexit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.01316.i.i.i.i.i
  %i.an = load i64, ptr %i.ak, align 8
  store i64 %i.an, ptr %i.am, align 8
  %.not11.i.i.i = icmp eq i64 %.017.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.013.lcssa.ph.i.i.i.i.i = phi i64 [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %.pre.i.i.i.i.i = load i64, ptr %5, align 8
  br label %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i

_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %.sroa.02.0.copyload.i.i.i, %bb.d ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.013.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.ao, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aq = icmp sgt i64 %i.k, 8
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit, !llvm.loop !256

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %.02129 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.ar = phi i64 [ %i.bo, %bb.b ], [ %i.c, %.lr.ph ]
  %i.as = add nsw i64 %.0152030, -1               ; 3 uses
  %i.at = lshr i64 %i.ar, 4
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at ; 7 uses
  %i.av = getelementptr inbounds i8, ptr %.02129, i64 -8 ; 8 uses
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.au), !inline_history !257
  br i1 %i.aw, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.ax = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.av), !inline_history !257
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %i.ay = load i64, ptr %i.au, align 8
  store i64 %i.ay, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.au, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.az = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.av), !inline_history !257
  %.sroa.0.0.copyload.i.i22.i.i = load i64, ptr %0, align 8 ; 2 uses
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.av, align 8
  store i64 %i.ba, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.av, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bb = load i64, ptr %i.e, align 8
  store i64 %i.bb, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.bc = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.av), !inline_history !257
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load <2 x i64>, ptr %0, align 8
  %i.be = shufflevector <2 x i64> %i.bd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.be, ptr %0, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bf = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.av), !inline_history !257
  %.sroa.0.0.copyload.i.i25.i.i = load i64, ptr %0, align 8 ; 2 uses
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = load i64, ptr %i.av, align 8
  store i64 %i.bg, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.av, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bh = load i64, ptr %i.au, align 8
  store i64 %i.bh, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i25.i.i, ptr %i.au, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i

_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02129, %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bj, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i ], [ %i.bj, %bb.p ] ; 9 uses
  %i.bi = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !258
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bi, label %bb.p, label %.preheader.i.i, !llvm.loop !259

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.bk = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %.114.i.i), !inline_history !258
  br i1 %i.bk, label %.preheader.i.i, label %bb.q, !llvm.loop !260

bb.q:                                             ; preds = %.preheader.i.i
  %i.bl = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bl, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i12.i = load i64, ptr %.1.i.i, align 8
  %i.bm = load i64, ptr %.114.i.i, align 8
  store i64 %i.bm, ptr %.1.i.i, align 8
  store i64 %.sroa.0.0.copyload.i.i.i12.i, ptr %.114.i.i, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !261

_ZSt27__unguarded_partition_pivotIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPN6embree4sse216BVHBuilderMorton9BuildPrimElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.as, ptr %3)
  %i.bn = ptrtoint ptr %.1.i.i to i64
  %i.bo = sub i64 %i.bn, %i.a                     ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 128
  br i1 %i.bp, label %bb.b, label %_ZSt14__partial_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit, !llvm.loop !253

_ZSt14__partial_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit, %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"struct.embree::sse2::BVHBuilderMorton::BuildPrim", align 8 ; 11 uses
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

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.aj, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load i64, ptr %i.o, align 8 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.u), !inline_history !262
  %i.w = or disjoint i64 %i.q, 1
  %spec.select.i.us = select i1 %i.v, i64 %i.w, i64 %i.r ; 6 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.us
  %i.z = load i64, ptr %i.x, align 8
  store i64 %i.z, ptr %i.y, align 8
  %i.aa = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.aa, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !8

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload.us, ptr %3, align 8
  %i.ab = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.ab, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01316.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us ; 2 uses
  %i.ad = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !263
  br i1 %i.ad, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  %i.af = load i64, ptr %i.ac, align 8
  store i64 %i.af, ptr %i.ae, align 8
  %i.ag = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.ag, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !9

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.013.lcssa.ph.i.i.us = phi i64 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %.pre.i.i.us = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us

_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.ah = phi i64 [ %.sroa.02.0.copyload.us, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %.sroa.02.0.copyload.us, %._crit_edge.i.us.thread ]
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.015.us, %._crit_edge.i.us.thread ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.ah, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.015.us, 0
  %i.aj = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !264

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit
  %.015 = phi i64 [ %i.bh, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i64, ptr %i.ak, align 8 ; 2 uses
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
  %i.ar = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.aq), !inline_history !262
  %i.as = or disjoint i64 %i.am, 1
  %spec.select.i = select i1 %i.ar, i64 %i.as, i64 %i.an ; 4 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i
  %i.av = load i64, ptr %i.at, align 8
  store i64 %i.av, ptr %i.au, align 8
  %i.aw = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ax = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ay = load i64, ptr %i.m, align 8
  store i64 %i.ay, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %4, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.02.0.copyload, ptr %3, align 8
  %i.az = icmp sgt i64 %.1.i, %.015
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %i.bb = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !263
  br i1 %i.bb, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  %i.bd = load i64, ptr %i.ba, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.be, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !9

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.013.lcssa.ph.i.i = phi i64 [ %.01316.i.i, %.lr.ph.i.i ], [ %.017.i.i, %bb.f ]
  %.pre.i.i = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit

_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bf = phi i64 [ %.sroa.02.0.copyload, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.013.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.bf, ptr %i.bg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.015, 0
  %i.bh = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !264

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_T0_SE_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree17ParallelRadixSortINS_4sse216BVHBuilderMorton9BuildPrimEjE17tbbRadixIterationEjbPKS3_PS3_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noalias noundef %3, ptr noalias noundef %4, i64 noundef %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %7 = alloca %class.anon.89, align 8             ; 5 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %9 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %10 = alloca %class.anon.86, align 8            ; 5 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %12 = alloca %class.anon.84, align 8            ; 9 uses
  %13 = alloca %class.anon.85, align 8            ; 9 uses
  store i32 %1, ptr %i.a, align 4
  store ptr %3, ptr %i.b, align 8
  store ptr %4, ptr %i.c, align 8
  store i64 %5, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
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
  br i1 %.not.i, label %_ZN6embree12parallel_forImZNS_17ParallelRadixSortINS_4sse216BVHBuilderMorton9BuildPrimEjE17tbbRadixIterationEjbPKS4_PS4_mEUlmE_EEvT_RKT0_.exit.thread, label %bb.b

_ZN6embree12parallel_forImZNS_17ParallelRadixSortINS_4sse216BVHBuilderMorton9BuildPrimEjE17tbbRadixIterationEjbPKS4_PS4_mEUlmE_EEvT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %_ZN6embree12parallel_forImZNS_17ParallelRadixSortINS_4sse216BVHBuilderMorton9BuildPrimEjE17tbbRadixIterationEjbPKS4_PS4_mEUlmE0_EEvT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr null, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr %12, ptr %10, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_17ParallelRadixSortINS_4sse216BVHBuilderMorton9BuildPrimEjE17tbbRadixIterationEjbPKS6_PS6_mEUlmE_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSC_SC_SC_SF_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %5, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.f
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIPN6embree4sse216BVHBuilderMorton9BuildPrimElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_T1_:bb.a
bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i ], [ %i.bq, %bb.p ] ; 9 uses
  %i.bo = load i32, ptr %.1.i.i, align 8
  %i.bp = icmp ult i32 %i.bo, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.p, label %.preheader.i.i, !llvm.loop !385

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.br = load i32, ptr %.114.i.i, align 8
  %i.bs = icmp ult i32 %i.bn, %i.br
  br i1 %i.bs, label %.preheader.i.i, label %bb.q, !llvm.loop !386

bb.q:                                             ; preds = %.preheader.i.i
  %i.bt = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bt, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEET_S8_S8_T0_.exit

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i10.i = load i64, ptr %.1.i.i, align 8
  %i.bu = load i64, ptr %.114.i.i, align 8
  store i64 %i.bu, ptr %.1.i.i, align 8
  store i64 %.sroa.0.0.copyload.i.i.i10.i, ptr %.114.i.i, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i, !llvm.loop !387

_ZSt27__unguarded_partition_pivotIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEET_S8_S8_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPN6embree4sse216BVHBuilderMorton9BuildPrimElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.01832, i64 noundef %i.au)
  %i.bv = ptrtoint ptr %.1.i.i to i64
  %i.bw = sub i64 %i.bv, %i.a                     ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 128
  br i1 %i.bx, label %bb.b, label %_ZSt14__partial_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_T0_.exit, !llvm.loop !383

_ZSt14__partial_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEET_S8_S8_T0_.exit, %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 5 uses
  %i.e = load i32, ptr %.020.i.ptr, align 8
  %i.f = load i32, ptr %0, align 8
  %i.g = icmp ult i32 %i.e, %i.f
  %.sroa.0.0.copyload.i = load i64, ptr %.020.i.ptr, align 8 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !51

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  %i.j = load i64, ptr %0, align 8
  store i64 %i.j, ptr %i.i, align 8
  br label %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i

bb.g:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %i.k = load i32, ptr %.pn19.i, align 8
  %i.l = icmp ugt i32 %i.k, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.l, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  %i.m = load i64, ptr %.013.i.i, align 8
  store i64 %i.m, ptr %.0912.i.i, align 8
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.n = load i32, ptr %.0.i.i, align 8
  %i.o = icmp ugt i32 %i.n, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i, !llvm.loop !388

_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i64 %.sroa.0.0.copyload.i, ptr %.sink.i, align 8
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %bb.c, !llvm.loop !389

_ZSt16__insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit: ; preds = %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.p, %1
  br i1 %.not5.i, label %_ZSt26__unguarded_insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, %_ZSt25__unguarded_linear_insertIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.06.i = phi ptr [ %i.w, %_ZSt25__unguarded_linear_insertIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.p, %_ZSt16__insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit ] ; 5 uses
  %i.q = load i64, ptr %.06.i, align 8            ; 2 uses
  %.sroa.0.0.extract.trunc.i.i8 = trunc i64 %i.q to i32 ; 2 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.06.i, i64 -8 ; 2 uses
  %i.r = load i32, ptr %.011.i.i, align 8
  %i.s = icmp ugt i32 %i.r, %.sroa.0.0.extract.trunc.i.i8
  br i1 %i.s, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i10
  %.013.i.i11 = phi ptr [ %.0.i.i13, %.lr.ph.i.i10 ], [ %.011.i.i, %.lr.ph.i ] ; 4 uses
  %.0912.i.i12 = phi ptr [ %.013.i.i11, %.lr.ph.i.i10 ], [ %.06.i, %.lr.ph.i ]
  %i.t = load i64, ptr %.013.i.i11, align 8
  store i64 %i.t, ptr %.0912.i.i12, align 8
  %.0.i.i13 = getelementptr inbounds i8, ptr %.013.i.i11, i64 -8 ; 2 uses
  %i.u = load i32, ptr %.0.i.i13, align 8
  %i.v = icmp ugt i32 %i.u, %.sroa.0.0.extract.trunc.i.i8
  br i1 %i.v, label %.lr.ph.i.i10, label %_ZSt25__unguarded_linear_insertIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !388

_ZSt25__unguarded_linear_insertIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i10, %.lr.ph.i
  %.09.lcssa.i.i = phi ptr [ %.06.i, %.lr.ph.i ], [ %.013.i.i11, %.lr.ph.i.i10 ]
  store i64 %i.q, ptr %.09.lcssa.i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %i.w, %1
  br i1 %.not.i9, label %_ZSt26__unguarded_insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i, !llvm.loop !390

bb.h:                                             ; preds = %bb.a
  %i.x = icmp eq ptr %0, %1
  %.017.i14 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i14, %1
  %or.cond = select i1 %i.x, i1 true, i1 %.not18.i
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.h, %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20
  %.020.i16 = phi ptr [ %.0.i22, %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20 ], [ %.017.i14, %bb.h ] ; 7 uses
  %.pn19.i17 = phi ptr [ %.020.i16, %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20 ], [ %0, %bb.h ] ; 4 uses
  %i.y = load i32, ptr %.020.i16, align 8
  %i.z = load i32, ptr %0, align 8
  %i.aa = icmp ult i32 %i.y, %i.z
  %.sroa.0.0.copyload.i18 = load i64, ptr %.020.i16, align 8 ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i15
  %i.ab = ptrtoint ptr %.020.i16 to i64
  %i.ac = sub i64 %i.ab, %i.b                     ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 1
  br i1 %i.ae, label %bb.j, label %bb.k, !prof !51

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 16
  %i.ag = sub nsw i64 0, %i.ad
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ac, i1 false)
  br label %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20

bb.k:                                             ; preds = %bb.i
  %i.ai = icmp eq i64 %i.ac, 8
  br i1 %i.ai, label %bb.l, label %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn19.i17, i64 8
  %i.ak = load i64, ptr %0, align 8
  store i64 %i.ak, ptr %i.aj, align 8
  br label %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20

bb.m:                                             ; preds = %.lr.ph.i15
  %.sroa.0.0.extract.trunc.i.i19 = trunc i64 %.sroa.0.0.copyload.i18 to i32 ; 2 uses
  %i.al = load i32, ptr %.pn19.i17, align 8
  %i.am = icmp ugt i32 %i.al, %.sroa.0.0.extract.trunc.i.i19
  br i1 %i.am, label %.lr.ph.i.i24, label %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20

.lr.ph.i.i24:                                     ; preds = %bb.m, %.lr.ph.i.i24
  %.013.i.i25 = phi ptr [ %.0.i.i27, %.lr.ph.i.i24 ], [ %.pn19.i17, %bb.m ] ; 4 uses
  %.0912.i.i26 = phi ptr [ %.013.i.i25, %.lr.ph.i.i24 ], [ %.020.i16, %bb.m ]
  %i.an = load i64, ptr %.013.i.i25, align 8
  store i64 %i.an, ptr %.0912.i.i26, align 8
  %.0.i.i27 = getelementptr inbounds i8, ptr %.013.i.i25, i64 -8 ; 2 uses
  %i.ao = load i32, ptr %.0.i.i27, align 8
  %i.ap = icmp ugt i32 %i.ao, %.sroa.0.0.extract.trunc.i.i19
  br i1 %i.ap, label %.lr.ph.i.i24, label %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20, !llvm.loop !388

_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20: ; preds = %.lr.ph.i.i24, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i21 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.020.i16, %bb.m ], [ %.013.i.i25, %.lr.ph.i.i24 ]
  store i64 %.sroa.0.0.copyload.i18, ptr %.sink.i21, align 8
  %.0.i22 = getelementptr inbounds nuw i8, ptr %.020.i16, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %.0.i22, %1
  br i1 %.not.i23, label %_ZSt26__unguarded_insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit, label %.lr.ph.i15, !llvm.loop !389

_ZSt26__unguarded_insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit: ; preds = %_ZSt13move_backwardIPN6embree4sse216BVHBuilderMorton9BuildPrimES4_ET0_T_S6_S5_.exit.i20, %_ZSt25__unguarded_linear_insertIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
bb.a:
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
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.us
  %.sroa.01.0.copyload.us = load i64, ptr %i.o, align 8 ; 2 uses
  %i.p = icmp slt i64 %.013.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.s, align 8
  %i.w = load i32, ptr %i.u, align 8
  %i.x = icmp ult i32 %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.us = select i1 %i.x, i64 %i.y, i64 %i.r ; 6 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.ab = load i64, ptr %i.z, align 8
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !11

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %.sroa.0.0.extract.trunc.i.i.us = trunc i64 %.sroa.01.0.copyload.us to i32
  %i.ad = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp ult i32 %i.af, %.sroa.0.0.extract.trunc.i.i.us
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  %i.ai = load i64, ptr %i.ae, align 8
  store i64 %i.ai, ptr %i.ah, align 8
  %i.aj = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us, !llvm.loop !12

_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %.sroa.01.0.copyload.us, ptr %i.ak, align 8
  %.not.us = icmp eq i64 %.013.us, 0
  %i.al = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !391

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit
  %.013 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013
  %.sroa.01.0.copyload = load i64, ptr %i.am, align 8 ; 2 uses
  %i.an = icmp slt i64 %.013, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.ao = shl i64 %.029.i, 1                      ; 3 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ap
  %i.ar = getelementptr [8 x i8], ptr %0, i64 %i.ao
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.aq, align 8
  %i.au = load i32, ptr %i.as, align 8
  %i.av = icmp ult i32 %i.at, %i.au
  %i.aw = or disjoint i64 %i.ao, 1
  %spec.select.i = select i1 %i.av, i64 %i.aw, i64 %i.ap ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.az = load i64, ptr %i.ax, align 8
  store i64 %i.az, ptr %i.ay, align 8
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load i64, ptr %i.m, align 8
  store i64 %i.bc, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.01.0.copyload to i32
  %i.bd = icmp sgt i64 %.1.i, %.013
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp ult i32 %i.bf, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  %i.bi = load i64, ptr %i.be, align 8
  store i64 %i.bi, ptr %i.bh, align 8
  %i.bj = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit, !llvm.loop !12

_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %.sroa.01.0.copyload, ptr %i.bk, align 8
  %.not = icmp eq i64 %.013, 0
  %i.bl = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !391

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.us, %_ZSt13__adjust_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @"_ZN6embree24parallel_reduce_internalIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTISt4pairIPvS3_ENS_13FastAllocator15CachedAllocatorEZNS4_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS4_17rtcBuildBVHMortonESE_E3$_3ZNS4_17rtcBuildBVHMortonESE_E3$_4ZNS4_17rtcBuildBVHMortonESE_E3$_5ZNS4_17rtcBuildBVHMortonESE_E3$_6ZNS4_17rtcBuildBVHMortonESE_E3$_7E19recreateMortonCodesERKNS_5rangeIjEEEUlSP_E_FKS3_RSR_SS_EEET0_T_SV_SV_SV_RKSU_RKT1_RKT2_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 16 captures(none) %0, i32 noundef range(i32 0, 4194304) %1, i32 noundef %2, i32 noundef %3, <4 x float> nofpclass(nan ninf zero sub norm) %.0.val, <4 x float> nofpclass(nan pinf zero sub norm) %.16.val, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %7 = alloca %"struct.embree::StackArray", align 64 ; 9 uses
  %8 = alloca %class.anon.113, align 8            ; 10 uses
  store i32 %2, ptr %i.b, align 4
  store i32 %3, ptr %i.c, align 4
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call noundef i32 @llvm.umin.i32(i32 %1, i32 %i.e) ; 3 uses
  %i.g = tail call noundef i32 @llvm.umin.i32(i32 %i.f, i32 512) ; 3 uses
  store i32 %i.g, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8200
  store i64 %i.h, ptr %i.i, align 8
  %i.j = icmp samesign ult i32 %i.f, 257
  br i1 %i.j, label %_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = shl nuw nsw i64 %i.h, 5
  %i.l = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.k, i64 noundef 64)
  br label %_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit

_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi ptr [ %i.l, %bb.b ], [ %7, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8192 ; 3 uses
  store ptr %storemerge.i, ptr %i.m, align 64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store ptr %i.b, ptr %8, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i14 = icmp eq i32 %i.f, 0
  br i1 %.not.i14, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  store <4 x float> %.0.val, ptr %0, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.16.val, ptr %i.r, align 16
  br label %bb.m

bb.c:                                             ; preds = %_ZN6embree10StackArrayINS_4BBoxINS_6Vec3faEEELm8192EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8
  %i.s = ptrtoint ptr %8 to i64
  invoke fastcc void @"_ZN6embree13TaskScheduler5spawnIjZNS_12parallel_forIjZNS_24parallel_reduce_internalIjNS_4BBoxINS_6Vec3faEEEZNKS_4sse216BVHBuilderMorton8BuilderTISt4pairIPvS6_ENS_13FastAllocator15CachedAllocatorEZNS7_17rtcBuildBVHMortonEPK17RTCBuildArgumentsE3$_2ZNS7_17rtcBuildBVHMortonESH_E3$_3ZNS7_17rtcBuildBVHMortonESH_E3$_4ZNS7_17rtcBuildBVHMortonESH_E3$_5ZNS7_17rtcBuildBVHMortonESH_E3$_6ZNS7_17rtcBuildBVHMortonESH_E3$_7E19recreateMortonCodesERKNS_5rangeIjEEEUlSS_E_FKS6_RSU_SV_EEET0_T_SY_SY_SY_RKSX_RKT1_RKT2_EUljE_EEvSY_S10_EUlSS_E_EEvSY_SY_SY_S10_PNS0_16TaskGroupContextE"(i32 noundef 0, i32 noundef %i.g, i32 noundef 1, i64 %i.s, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.g

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d
  %i.t = load ptr, ptr %5, align 8                ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.k, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

end_hunk_1
begin_hunk_2_@_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ESA_NS4_10BinMappingILm32EEES6_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNSB_ILb1ESA_SD_S6_EEvSF_SI_mmmSL_EUlRKSA_SS_E_EESE_T_SU_SU_SU_RKSE_SL_RSH_EUlmE_EEvSU_SW_EUlSP_E_EEvSU_SU_SU_SW_PNS0_16TaskGroupContextEENKUlvE_clEv:bb.a
  store <4 x float> %i.al, ptr %i.ak, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ao = load <4 x float>, ptr %i.an, align 32
  store <4 x float> %i.ao, ptr %i.am, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ar = load <4 x float>, ptr %i.ap, align 16
  store <4 x float> %i.ar, ptr %i.aq, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.au = load <4 x float>, ptr %i.at, align 32
  store <4 x float> %i.au, ptr %i.as, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ax = load <4 x float>, ptr %i.av, align 16
  store <4 x float> %i.ax, ptr %i.aw, align 16
  %i.ay = add nuw nsw i64 %.01520.i.i.i, 1        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ay, 32
  br i1 %.not.i.i.i, label %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES8_NS2_10BinMappingILm32EEES4_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS9_ILb1ES8_SB_S4_EEvSD_SG_mmmSJ_EUlRKS8_SQ_E_EESC_T_SS_SS_SS_RKSC_SJ_RSF_EUlmE_EEvSS_SU_ENKUlSN_E_clESN_.exit, label %.preheader18.i.i.i, !llvm.loop !20

_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES8_NS2_10BinMappingILm32EEES4_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS9_ILb1ES8_SB_S4_EEvSD_SG_mmmSJ_EUlRKS8_SQ_E_EESC_T_SS_SS_SS_RKSC_SJ_RSF_EUlmE_EEvSS_SU_ENKUlSN_E_clESN_.exit: ; preds = %.preheader18.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 3072
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.bb = load <2 x i64>, ptr %i.ba, align 64
  store <2 x i64> %i.bb, ptr %i.az, align 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 3088
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.be = load <2 x i64>, ptr %i.bd, align 16
  store <2 x i64> %i.be, ptr %i.bc, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 3104
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 3104
  %i.bh = load <2 x i64>, ptr %i.bg, align 32
  store <2 x i64> %i.bh, ptr %i.bf, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 3120
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.bk = load <2 x i64>, ptr %i.bj, align 16
  store <2 x i64> %i.bk, ptr %i.bi, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 3136
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 3136
  %i.bn = load <2 x i64>, ptr %i.bm, align 64
  store <2 x i64> %i.bn, ptr %i.bl, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 3152
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 3152
  %i.bq = load <2 x i64>, ptr %i.bp, align 16
  store <2 x i64> %i.bq, ptr %i.bo, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 3168
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 3168
  %i.bt = load <2 x i64>, ptr %i.bs, align 32
  store <2 x i64> %i.bt, ptr %i.br, align 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 3184
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.bw = load <2 x i64>, ptr %i.bv, align 16
  store <2 x i64> %i.bw, ptr %i.bu, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 3200
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 3200
  %i.bz = load <2 x i64>, ptr %i.by, align 64
  store <2 x i64> %i.bz, ptr %i.bx, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 3216
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 3216
  %i.cc = load <2 x i64>, ptr %i.cb, align 16
  store <2 x i64> %i.cc, ptr %i.ca, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 3232
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %i.cf = load <2 x i64>, ptr %i.ce, align 32
  store <2 x i64> %i.cf, ptr %i.cd, align 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 3248
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 3248
  %i.ci = load <2 x i64>, ptr %i.ch, align 16
  store <2 x i64> %i.ci, ptr %i.cg, align 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 3264
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 3264
  %i.cl = load <2 x i64>, ptr %i.ck, align 64
  store <2 x i64> %i.cl, ptr %i.cj, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.af, i64 3280
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 3280
  %i.co = load <2 x i64>, ptr %i.cn, align 16
  store <2 x i64> %i.co, ptr %i.cm, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.af, i64 3296
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 3296
  %i.cr = load <2 x i64>, ptr %i.cq, align 32
  store <2 x i64> %i.cr, ptr %i.cp, align 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.af, i64 3312
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 3312
  %i.cu = load <2 x i64>, ptr %i.ct, align 16
  store <2 x i64> %i.cu, ptr %i.cs, align 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 3328
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %i.cx = load <2 x i64>, ptr %i.cw, align 64
  store <2 x i64> %i.cx, ptr %i.cv, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.af, i64 3344
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 3344
  %i.da = load <2 x i64>, ptr %i.cz, align 16
  store <2 x i64> %i.da, ptr %i.cy, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 3360
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %i.dd = load <2 x i64>, ptr %i.dc, align 32
  store <2 x i64> %i.dd, ptr %i.db, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.af, i64 3376
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 3376
  %i.dg = load <2 x i64>, ptr %i.df, align 16
  store <2 x i64> %i.dg, ptr %i.de, align 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 3392
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 3392
  %i.dj = load <2 x i64>, ptr %i.di, align 64
  store <2 x i64> %i.dj, ptr %i.dh, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 3408
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 3408
  %i.dm = load <2 x i64>, ptr %i.dl, align 16
  store <2 x i64> %i.dm, ptr %i.dk, align 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 3424
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 3424
  %i.dp = load <2 x i64>, ptr %i.do, align 32
  store <2 x i64> %i.dp, ptr %i.dn, align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 3440
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 3440
  %i.ds = load <2 x i64>, ptr %i.dr, align 16
  store <2 x i64> %i.ds, ptr %i.dq, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 3456
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 3456
  %i.dv = load <2 x i64>, ptr %i.du, align 64
  store <2 x i64> %i.dv, ptr %i.dt, align 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.af, i64 3472
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 3472
  %i.dy = load <2 x i64>, ptr %i.dx, align 16
  store <2 x i64> %i.dy, ptr %i.dw, align 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.af, i64 3488
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 3488
  %i.eb = load <2 x i64>, ptr %i.ea, align 32
  store <2 x i64> %i.eb, ptr %i.dz, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 3504
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 3504
  %i.ee = load <2 x i64>, ptr %i.ed, align 16
  store <2 x i64> %i.ee, ptr %i.ec, align 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.af, i64 3520
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 3520
  %i.eh = load <2 x i64>, ptr %i.eg, align 64
  store <2 x i64> %i.eh, ptr %i.ef, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.af, i64 3536
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 3536
  %i.ek = load <2 x i64>, ptr %i.ej, align 16
  store <2 x i64> %i.ek, ptr %i.ei, align 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.af, i64 3552
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %i.en = load <2 x i64>, ptr %i.em, align 32
  store <2 x i64> %i.en, ptr %i.el, align 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.af, i64 3568
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 3568
  %i.eq = load <2 x i64>, ptr %i.ep, align 16
  store <2 x i64> %i.eq, ptr %i.eo, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.er = add i64 %i.c, %i.a
  %i.es = lshr i64 %i.er, 1                       ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ESA_NS4_10BinMappingILm32EEES6_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNSB_ILb1ESA_SD_S6_EEvSF_SI_mmmSL_EUlRKSA_SS_E_EESE_T_SU_SU_SU_RKSE_SL_RSH_EUlmE_EEvSU_SW_EUlSP_E_EEvSU_SU_SU_SW_PNS0_16TaskGroupContextE(i64 noundef %i.c, i64 noundef %i.es, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.ev)
  %i.ew = load i64, ptr %0, align 8
  %i.ex = load i64, ptr %i.e, align 8
  %i.ey = load ptr, ptr %i.eu, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ESA_NS4_10BinMappingILm32EEES6_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNSB_ILb1ESA_SD_S6_EEvSF_SI_mmmSL_EUlRKSA_SS_E_EESE_T_SU_SU_SU_RKSE_SL_RSH_EUlmE_EEvSU_SW_EUlSP_E_EEvSU_SU_SU_SW_PNS0_16TaskGroupContextE(i64 noundef %i.es, i64 noundef %i.ew, i64 noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef %i.ey)
  tail call void @_ZN6embree13TaskScheduler4waitEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZZN6embree12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES8_NS2_10BinMappingILm32EEES4_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS9_ILb1ES8_SB_S4_EEvSD_SG_mmmSJ_EUlRKS8_SQ_E_EESC_T_SS_SS_SS_RKSC_SJ_RSF_EUlmE_EEvSS_SU_ENKUlSN_E_clESN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6embree7PrimRefElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat {
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
  br i1 %i.m, label %._crit_edge, label %.lr.ph44, !llvm.loop !963

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
  br i1 %i.bf, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !964

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
  br i1 %i.cf, label %.lr.ph.i.i.i.i13, label %_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i, !llvm.loop !965

_ZSt13__adjust_heapIPN6embree7PrimRefElS1_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S7_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i13, %bb.e
  %.013.lcssa.i.i.i.i = phi i64 [ %.127.i.i.i, %bb.e ], [ %.017.i.i.i.i, %bb.f ], [ %.01316.i.i.i.i, %.lr.ph.i.i.i.i13 ]
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i ; 2 uses
  store <4 x float> %i.z, ptr %i.cg, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <4 x float> %i.ab, ptr %i.ch, align 16
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.ci = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !966

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
  br i1 %i.dx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !964

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
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !965

_ZSt10__pop_heapIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.01316.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.fg = getelementptr inbounds [32 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i ; 2 uses
  store <4 x float> %i.ck, ptr %i.fg, align 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x float> %i.cm, ptr %i.fh, align 16
  %i.fi = icmp sgt i64 %i.cq, 32
  br i1 %i.fi, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_.exit, !llvm.loop !967

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
end_hunk_2
begin_hunk_3_@_ZSt11__sort_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_RT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(9) %i.j, i64 9, i1 false)
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -80 ; 2 uses
  %i.l = load <4 x float>, ptr %i.k, align 16
  %i.m = getelementptr inbounds i8, ptr %.07, i64 -64 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16
  %i.o = getelementptr inbounds i8, ptr %.07, i64 -48 ; 2 uses
  %i.p = load <4 x float>, ptr %i.o, align 16
  %i.q = getelementptr inbounds i8, ptr %.07, i64 -32 ; 2 uses
  %i.r = load <4 x float>, ptr %i.q, align 16
  %i.s = getelementptr inbounds i8, ptr %.07, i64 -16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 16             ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 9, i1 false)
  %i.w = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.w, ptr %i.k, align 16
  %i.x = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.x, ptr %i.m, align 16
  %i.y = load <4 x float>, ptr %i.g, align 16
  store <4 x float> %i.y, ptr %i.o, align 16
  %i.z = load <4 x float>, ptr %i.h, align 16
  store <4 x float> %i.z, ptr %i.q, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.aa = ptrtoint ptr %i.j to i64
  %i.ab = sub i64 %i.aa, %i.a                     ; 3 uses
  %i.ac = sdiv exact i64 %i.ab, 96                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = sdiv i64 %i.ad, 2
  %i.af = icmp sgt i64 %i.ab, 192
  br i1 %i.af, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.029.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ag = shl i64 %.029.i.i, 1                    ; 3 uses
  %i.ah = add i64 %i.ag, 2                        ; 2 uses
  %i.ai = getelementptr inbounds [96 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr [96 x i8], ptr %0, i64 %i.ag ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.am = load i64, ptr %i.al, align 8
  %i.an = load i64, ptr %i.ak, align 8
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %i.aj, i64 176
  %i.aq = getelementptr i8, ptr %i.aj, i64 184
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = load i64, ptr %i.ap, align 8
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ugt i64 %i.ao, %i.at
  %i.av = or disjoint i64 %i.ag, 1
  %spec.select.i.i = select i1 %i.au, i64 %i.av, i64 %i.ah ; 4 uses
  %i.aw = getelementptr inbounds [96 x i8], ptr %0, i64 %spec.select.i.i ; 6 uses
  %i.ax = getelementptr inbounds [96 x i8], ptr %0, i64 %.029.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ax, ptr noundef nonnull align 16 dereferenceable(96) %i.aw, i64 9, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load <4 x float>, ptr %i.az, align 16
  store <4 x float> %i.ba, ptr %i.ay, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bd = load <4 x float>, ptr %i.bb, align 16
  store <4 x float> %i.bd, ptr %i.bc, align 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bg = load <4 x float>, ptr %i.bf, align 16
  store <4 x float> %i.bg, ptr %i.be, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bj = load <4 x float>, ptr %i.bh, align 16
  store <4 x float> %i.bj, ptr %i.bi, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bk, ptr noundef nonnull align 16 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bm = icmp slt i64 %spec.select.i.i, %i.ae
  br i1 %i.bm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !25

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.bn = and i64 %i.ac, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.bp = add nsw i64 %i.ac, -2
  %i.bq = ashr exact i64 %i.bp, 1
  %i.br = icmp eq i64 %.0.lcssa.i.i, %i.bq
  br i1 %i.br, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.bs = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bt ; 6 uses
  %i.bv = getelementptr inbounds [96 x i8], ptr %0, i64 %.0.lcssa.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bv, ptr noundef nonnull align 16 dereferenceable(96) %i.bu, i64 9, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.by = load <4 x float>, ptr %i.bx, align 16
  store <4 x float> %i.by, ptr %i.bw, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.cb = load <4 x float>, ptr %i.bz, align 16
  store <4 x float> %i.cb, ptr %i.ca, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.ce = load <4 x float>, ptr %i.cd, align 16
  store <4 x float> %i.ce, ptr %i.cc, align 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.ch = load <4 x float>, ptr %i.cf, align 16
  store <4 x float> %i.ch, ptr %i.cg, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, ptr noundef nonnull align 16 dereferenceable(16) %i.cj, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.07.i, i64 9, i1 false)
  br label %.lr.ph.i.preheader.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.07.i, i64 9, i1 false)
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d, %.thread.i
  %.127.i14.i = phi i64 [ %i.bt, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.ck = sub i64 %i.v, %i.t
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.preheader.i.i
  %.01316.i.i.i = phi i64 [ %.017.i.i1516.i, %bb.e ], [ %.127.i14.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %.017.in.i.i.i = add nsw i64 %.01316.i.i.i, -1
  %.017.i.i1516.i = lshr i64 %.017.in.i.i.i, 1    ; 3 uses
  %i.cl = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.017.i.i1516.i ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = load i64, ptr %i.cm, align 8
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ugt i64 %i.cq, %i.ck
  br i1 %i.cr, label %bb.e, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds [96 x i8], ptr %0, i64 %.01316.i.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cs, ptr noundef nonnull align 16 dereferenceable(96) %i.cl, i64 9, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cv = load <4 x float>, ptr %i.cu, align 16
  store <4 x float> %i.cv, ptr %i.ct, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cy = load <4 x float>, ptr %i.cw, align 16
  store <4 x float> %i.cy, ptr %i.cx, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.db = load <4 x float>, ptr %i.da, align 16
  store <4 x float> %i.db, ptr %i.cz, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.de = load <4 x float>, ptr %i.dc, align 16
  store <4 x float> %i.de, ptr %i.dd, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.df, ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i64 16, i1 false)
  %.not17.i = icmp eq i64 %.017.i.i1516.i, 0
  br i1 %.not17.i, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !26

_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.01316.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.dg = getelementptr inbounds [96 x i8], ptr %0, i64 %.013.lcssa.i.i.i ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.dg, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, i64 9, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x float> %i.l, ptr %i.dh, align 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store <4 x float> %i.n, ptr %i.di, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  store <4 x float> %i.p, ptr %i.dj, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  store <4 x float> %i.r, ptr %i.dk, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  store i64 %i.t, ptr %i.dl, align 16
  %.sroa.13.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  store i64 %i.v, ptr %.sroa.13.80..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i)
  %i.dm = icmp sgt i64 %i.ab, 96
  br i1 %i.dm, label %bb.b, label %._crit_edge, !llvm.loop !1189

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.0 = alloca [9 x i8], align 16            ; 2 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 192
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 96                  ; 3 uses
  %i.f = add nsw i64 %i.e, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.e, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.e, 1
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %3 ; 6 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.l ; 6 uses
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

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit, %bb.b
  %.013 = phi i64 [ %i.g, %bb.b ], [ %i.dc, %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit ] ; 8 uses
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.013 ; 7 uses
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
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(9) %i.y, i64 9, i1 false)
  %i.al = icmp slt i64 %.013, %i.i
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %bb.c ] ; 2 uses
  %i.am = shl i64 %.029.i, 1                      ; 3 uses
  %i.an = add i64 %i.am, 2                        ; 2 uses
  %i.ao = getelementptr inbounds [96 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr [96 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.aq, align 8
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr i8, ptr %i.ap, i64 176
  %i.aw = getelementptr i8, ptr %i.ap, i64 184
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = load i64, ptr %i.av, align 8
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ugt i64 %i.au, %i.az
  %i.bb = or disjoint i64 %i.am, 1
  %spec.select.i = select i1 %i.ba, i64 %i.bb, i64 %i.an ; 4 uses
  %i.bc = getelementptr inbounds [96 x i8], ptr %0, i64 %spec.select.i ; 6 uses
  %i.bd = getelementptr inbounds [96 x i8], ptr %0, i64 %.029.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bd, ptr noundef nonnull align 16 dereferenceable(96) %i.bc, i64 9, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = load <4 x float>, ptr %i.bf, align 16
  store <4 x float> %i.bg, ptr %i.be, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bj = load <4 x float>, ptr %i.bh, align 16
  store <4 x float> %i.bj, ptr %i.bi, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bm = load <4 x float>, ptr %i.bl, align 16
  store <4 x float> %i.bm, ptr %i.bk, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bp = load <4 x float>, ptr %i.bn, align 16
  store <4 x float> %i.bp, ptr %i.bo, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bq, ptr noundef nonnull align 16 dereferenceable(16) %i.br, i64 16, i1 false)
  %i.bs = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bs, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.013, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bt = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.bt, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.n, ptr noundef nonnull align 16 dereferenceable(96) %i.m, i64 9, i1 false)
  %i.bu = load <4 x float>, ptr %i.p, align 16
  store <4 x float> %i.bu, ptr %i.o, align 16
  %i.bv = load <4 x float>, ptr %i.q, align 16
  store <4 x float> %i.bv, ptr %i.r, align 16
  %i.bw = load <4 x float>, ptr %i.t, align 16
  store <4 x float> %i.bw, ptr %i.s, align 16
  %i.bx = load <4 x float>, ptr %i.u, align 16
  store <4 x float> %i.bx, ptr %i.v, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %i.x, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.127.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.by = icmp sgt i64 %.127.i, %.013
  br i1 %i.by, label %.lr.ph.i.preheader.i, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.bz = sub i64 %i.ak, %i.ai
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.preheader.i
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.127.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.ca = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.017.i.i ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = load i64, ptr %i.cb, align 8
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ugt i64 %i.cf, %i.bz
  br i1 %i.cg, label %bb.f, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ch = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.01316.i.i ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ch, ptr noundef nonnull align 16 dereferenceable(96) %i.ca, i64 9, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ck = load <4 x float>, ptr %i.cj, align 16
  store <4 x float> %i.ck, ptr %i.ci, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cn = load <4 x float>, ptr %i.cl, align 16
  store <4 x float> %i.cn, ptr %i.cm, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cq = load <4 x float>, ptr %i.cp, align 16
  store <4 x float> %i.cq, ptr %i.co, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.ct = load <4 x float>, ptr %i.cr, align 16
  store <4 x float> %i.ct, ptr %i.cs, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cu, ptr noundef nonnull align 16 dereferenceable(16) %i.cb, i64 16, i1 false)
  %i.cv = icmp sgt i64 %.017.i.i, %.013
  br i1 %i.cv, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit, !llvm.loop !26

_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.127.i, %bb.e ], [ %.017.i.i, %bb.f ], [ %.01316.i.i, %.lr.ph.i.i ]
  %i.cw = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.013.lcssa.i.i ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.cw, ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0, i64 9, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x float> %i.aa, ptr %i.cx, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store <4 x float> %i.ac, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store <4 x float> %i.ae, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store <4 x float> %i.ag, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  store i64 %i.ai, ptr %i.db, align 16
  %.sroa.13.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  store i64 %i.ak, ptr %.sroa.13.80..sroa_idx.i, align 8
  %.not = icmp eq i64 %.013, 0
  %i.dc = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1190

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElS7_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_T0_SG_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_SF_SF_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.0.i.i30 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i28 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i26 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i24 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i22 = alloca { i64, i8 }, align 16   ; 4 uses
  %.sroa.0.i.i = alloca { i64, i8 }, align 16     ; 4 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(96) %0, i64 9, i1 false)
end_hunk_3
begin_hunk_4_@_ZSt11__sort_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_RT0_:bb.a
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
  br i1 %i.bn, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !43

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
  br i1 %.not18.i, label %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_SJ_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !44

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
  br i1 %i.dn, label %bb.b, label %._crit_edge, !llvm.loop !2405

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_SJ_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
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
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

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
  br i1 %i.cw, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_T0_SK_T1_T2_.exit, !llvm.loop !44

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
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2406

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEElSB_N9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_T0_SK_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_16PrimInfoExtRangeENS1_6Split2INS1_8BinSplitILm32EEENS1_15SpatialBinSplitILm16EEEEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterISB_EEEEvT_SJ_SJ_SJ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat {
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
end_hunk_4
