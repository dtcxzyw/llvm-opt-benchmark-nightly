Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZSt16__introsort_loopIN5QListI12QCPDataRangeE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_:bb.a
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.038.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.t
  %i.v = call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %i.s, ptr noundef align 4 dereferenceable(8) %i.u), !inline_history !1646
  %spec.select.i.i.i.i = select i1 %i.v, i64 %i.t, i64 %i.r ; 4 uses
  %i.w = getelementptr [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.x = getelementptr [8 x i8], ptr %0, i64 %.038.i.i.i.i
  %i.y = load i64, ptr %i.w, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !96

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.aa = and i64 %i.l, 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = add nsw i64 %i.m, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ad
  br i1 %i.ae, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.af = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 4
  store i64 %i.aj, ptr %i.ai, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.04.0.copyload.i.i.i, ptr %5, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.04.0.copyload.i.i.i, ptr %5, align 8
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ag, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i89.i.i.i, %bb.e ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i89.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %0, i64 %.0919.i.i89.i.i.i ; 2 uses
  %i.al = call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %i.ak, ptr noundef nonnull align 4 dereferenceable(8) %5), !inline_history !1647
  br i1 %i.al, label %bb.e, label %.critedge.loopexit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr [8 x i8], ptr %0, i64 %.018.i.i.i.i.i
  %i.an = load i64, ptr %i.ak, align 4
  store i64 %i.an, ptr %i.am, align 4
  %.not10.i.i.i = icmp eq i64 %.0919.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %.critedge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.0.lcssa.ph.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %.pre.i.i.i.i.i = load i64, ptr %5, align 8
  br label %_ZSt10__pop_heapIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i

_ZSt10__pop_heapIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %.sroa.04.0.copyload.i.i.i, %bb.d ], [ %.pre.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.0.lcssa.ph.i.i.i.i.i, %.critedge.loopexit.i.i.i.i.i ]
  %i.ap = getelementptr [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.ao, ptr %i.ap, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aq = icmp sgt i64 %i.l, 8
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit, !llvm.loop !1648

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2030 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02129 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %i.ar = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.as = add i64 %.02129, -1                     ; 3 uses
  %i.at = lshr i64 %i.ar, 1
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.at ; 7 uses
  %i.av = getelementptr i8, ptr %storemerge2030, i64 -8 ; 8 uses
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %i.f, ptr noundef align 4 dereferenceable(8) %i.au), !inline_history !1649
  br i1 %i.aw, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.ax = tail call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %i.au, ptr noundef align 4 dereferenceable(8) %i.av), !inline_history !1649
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %0, align 4
  %i.az = load i64, ptr %i.au, align 4
  store i64 %i.az, ptr %0, align 4
  store i64 %i.ay, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.ba = tail call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %i.f, ptr noundef align 4 dereferenceable(8) %i.av), !inline_history !1649
  %i.bb = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.av, align 4
  store i64 %i.bc, ptr %0, align 4
  store i64 %i.bb, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bd = load i64, ptr %i.f, align 4
  store i64 %i.bd, ptr %0, align 4
  store i64 %i.bb, ptr %i.f, align 4
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.be = tail call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %i.f, ptr noundef align 4 dereferenceable(8) %i.av), !inline_history !1649
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load <2 x i64>, ptr %0, align 4
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bg, ptr %0, align 4
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = tail call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %i.au, ptr noundef align 4 dereferenceable(8) %i.av), !inline_history !1649
  %i.bi = load i64, ptr %0, align 4               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = load i64, ptr %i.av, align 4
  store i64 %i.bj, ptr %0, align 4
  store i64 %i.bi, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bk = load i64, ptr %i.au, align 4
  store i64 %i.bk, ptr %0, align 4
  store i64 %i.bi, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.1.i.i, %bb.r ], [ %storemerge2030, %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.bm, %bb.p ] ; 9 uses
  %i.bl = tail call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %.sroa.012.1.i.i, ptr noundef align 4 dereferenceable(8) %0), !inline_history !1650
  %i.bm = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !1651

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.010.0.pn.i.i = phi ptr [ %.sroa.010.1.i.i, %.preheader.i.i ], [ %.sroa.010.0.i.i, %bb.p ]
  %.sroa.010.1.i.i = getelementptr i8, ptr %.sroa.010.0.pn.i.i, i64 -8 ; 6 uses
  %i.bn = tail call noundef zeroext i1 %3(ptr noundef align 4 dereferenceable(8) %0, ptr noundef align 4 dereferenceable(8) %.sroa.010.1.i.i), !inline_history !1650
  br i1 %i.bn, label %.preheader.i.i, label %bb.q, !llvm.loop !1652

bb.q:                                             ; preds = %.preheader.i.i
  %i.bo = icmp ult ptr %.sroa.012.1.i.i, %.sroa.010.1.i.i
  br i1 %i.bo, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.bp = load i64, ptr %.sroa.012.1.i.i, align 4
  %i.bq = load i64, ptr %.sroa.010.1.i.i, align 4
  store i64 %i.bq, ptr %.sroa.012.1.i.i, align 4
  store i64 %i.bp, ptr %.sroa.010.1.i.i, align 4
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !1653

_ZSt27__unguarded_partition_pivotIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN5QListI12QCPDataRangeE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %.sroa.012.1.i.i, ptr %storemerge2030, i64 noundef %i.as, ptr %3)
  %i.br = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 16
  br i1 %i.bu, label %bb.b, label %_ZSt14__partial_sortIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit, !llvm.loop !1645

_ZSt14__partial_sortIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt11__make_heapIN5QListI12QCPDataRangeE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %class.QCPDataRange, align 8        ; 11 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %0, i64 %4
  %i.n = getelementptr [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.us
  %.012.us = phi i64 [ %i.ai, %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr [8 x i8], ptr %0, i64 %.012.us
  %.sroa.03.0.copyload.us = load i64, ptr %i.o, align 4 ; 3 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.p = icmp slt i64 %.012.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %._crit_edge.i.us.thread

._crit_edge.i.us.thread:                          ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.038.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.012.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.038.i.us, 1                    ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.t
  %i.v = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef align 4 dereferenceable(8) %i.s, ptr noundef align 4 dereferenceable(8) %i.u), !inline_history !1654
  %spec.select.i.us = select i1 %i.v, i64 %i.t, i64 %i.r ; 6 uses
  %i.w = getelementptr [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.x = getelementptr [8 x i8], ptr %0, i64 %.038.i.us
  %i.y = load i64, ptr %i.w, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.z, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !96

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload.us, ptr %3, align 8
  %i.aa = icmp sgt i64 %spec.select.i.us, %.012.us
  br i1 %i.aa, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.018.i.i.us = phi i64 [ %.0919.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0919.in.i.i.us = add nsw i64 %.018.i.i.us, -1
  %.0919.i.i.us = sdiv i64 %.0919.in.i.i.us, 2    ; 4 uses
  %i.ab = getelementptr [8 x i8], ptr %0, i64 %.0919.i.i.us ; 2 uses
  %i.ac = call noundef zeroext i1 %.sroa.0.0.copyload.us(ptr noundef align 4 dereferenceable(8) %i.ab, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !1655
  br i1 %i.ac, label %bb.c, label %.critedge.loopexit.i.i.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ad = getelementptr [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ae = load i64, ptr %i.ab, align 4
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = icmp sgt i64 %.0919.i.i.us, %.012.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %.critedge.loopexit.i.i.us, !llvm.loop !97

.critedge.loopexit.i.i.us:                        ; preds = %bb.c, %.lr.ph.i.i.us
  %.0.lcssa.ph.i.i.us = phi i64 [ %.018.i.i.us, %.lr.ph.i.i.us ], [ %.0919.i.i.us, %bb.c ]
  %.pre.i.i.us = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.us

_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.us: ; preds = %._crit_edge.i.us.thread, %.critedge.loopexit.i.i.us, %._crit_edge.i.us
  %i.ag = phi i64 [ %.sroa.03.0.copyload.us, %._crit_edge.i.us ], [ %.pre.i.i.us, %.critedge.loopexit.i.i.us ], [ %.sroa.03.0.copyload.us, %._crit_edge.i.us.thread ]
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.0.lcssa.ph.i.i.us, %.critedge.loopexit.i.i.us ], [ %.012.us, %._crit_edge.i.us.thread ]
  %i.ah = getelementptr [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.ag, ptr %i.ah, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.us = icmp eq i64 %.012.us, 0
  %i.ai = add nsw i64 %.012.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !1656

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit
  %.012 = phi i64 [ %i.bf, %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.aj = getelementptr [8 x i8], ptr %0, i64 %.012
  %.sroa.03.0.copyload = load i64, ptr %i.aj, align 4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %i.ak = icmp slt i64 %.012, %i.i
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.012, %.split ] ; 2 uses
  %i.al = shl i64 %.038.i, 1                      ; 2 uses
  %i.am = add i64 %i.al, 2                        ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %0, i64 %i.am
  %i.ao = or disjoint i64 %i.al, 1                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %0, i64 %i.ao
  %i.aq = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef align 4 dereferenceable(8) %i.an, ptr noundef align 4 dereferenceable(8) %i.ap), !inline_history !1654
  %spec.select.i = select i1 %i.aq, i64 %i.ao, i64 %i.am ; 4 uses
  %i.ar = getelementptr [8 x i8], ptr %0, i64 %spec.select.i
  %i.as = getelementptr [8 x i8], ptr %0, i64 %.038.i
  %i.at = load i64, ptr %i.ar, align 4
  store i64 %i.at, ptr %i.as, align 4
  %i.au = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !96

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.012, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.av = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aw = load i64, ptr %i.m, align 4
  store i64 %i.aw, ptr %i.n, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %4, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.03.0.copyload, ptr %3, align 8
  %i.ax = icmp sgt i64 %.1.i, %.012
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.018.i.i = phi i64 [ %.0919.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0919.in.i.i = add nsw i64 %.018.i.i, -1
  %.0919.i.i = sdiv i64 %.0919.in.i.i, 2          ; 4 uses
  %i.ay = getelementptr [8 x i8], ptr %0, i64 %.0919.i.i ; 2 uses
  %i.az = call noundef zeroext i1 %.sroa.0.0.copyload(ptr noundef align 4 dereferenceable(8) %i.ay, ptr noundef nonnull align 4 dereferenceable(8) %3), !inline_history !1655
  br i1 %i.az, label %bb.f, label %.critedge.loopexit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ba = getelementptr [8 x i8], ptr %0, i64 %.018.i.i
  %i.bb = load i64, ptr %i.ay, align 4
  store i64 %i.bb, ptr %i.ba, align 4
  %i.bc = icmp sgt i64 %.0919.i.i, %.012
  br i1 %i.bc, label %.lr.ph.i.i, label %.critedge.loopexit.i.i, !llvm.loop !97

.critedge.loopexit.i.i:                           ; preds = %bb.f, %.lr.ph.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.018.i.i, %.lr.ph.i.i ], [ %.0919.i.i, %bb.f ]
  %.pre.i.i = load i64, ptr %3, align 8
  br label %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit

_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit: ; preds = %bb.e, %.critedge.loopexit.i.i
  %i.bd = phi i64 [ %.sroa.03.0.copyload, %bb.e ], [ %.pre.i.i, %.critedge.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ]
  %i.be = getelementptr [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %i.bd, ptr %i.be, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not = icmp eq i64 %.012, 0
  %i.bf = add nsw i64 %.012, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !1656

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.us, %_ZSt13__adjust_heapIN5QListI12QCPDataRangeE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #28

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { ptr, i64 } @_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7emplaceIJRKS5_EEENS6_8iteratorEOS1_DpOT_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 4 dereferenceable(4) %1, ptr noundef align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.QHashPrivate::Data<QHashPrivate::Node<QCP::MarginSide, QList<QCPLayoutElement *>>>::InsertionResult", align 8 ; 7 uses
  %4 = alloca %class.QHash, align 8               ; 8 uses
  %i.a = load ptr, ptr %0, align 8                ; 9 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread, label %_ZNK5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE10isDetachedEv.exit

_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  store ptr null, ptr %4, align 8
  br label %bb.j

_ZNK5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE10isDetachedEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %_ZNK5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE10isDetachedEv.exit
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 1
  %.not = icmp ult i64 %i.e, %i.h
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 8                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN5QListIP16QCPLayoutElementEC2ERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = atomicrmw add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN5QListIP16QCPLayoutElementEC2ERKS2_.exit

_ZN5QListIP16QCPLayoutElementEC2ERKS2_.exit:      ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.a, %bb.c ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  call void @_ZN12QHashPrivate4DataINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEE12findOrInsertERKS3_(ptr dead_on_unwind nonnull writable sret(%"struct.QHashPrivate::Data<QHashPrivate::Node<QCP::MarginSide, QList<QCPLayoutElement *>>>::InsertionResult") align 8 %3, ptr noundef align 8 dereferenceable_or_null(40) %i.o, ptr noundef align 4 dereferenceable(4) %1) #51
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !175, !noundef !176
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load ptr, ptr %3, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN16QCPDataContainerI12QCPGraphDataE4sortEv:bb.a
  %i.z = phi ptr [ %i.r, %_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.i.i.i.i3 ], [ %.pre21, %_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.thread.i.i.i.i4 ]
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr [16 x i8], ptr %i.z, i64 %i.ab ; 7 uses
  %.not.i.i = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i.i, label %_ZSt4sortIN5QListI12QCPGraphDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16QCPDataContainerI12QCPGraphDataE3endEv.exit
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 4
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  tail call void @_ZSt16__introsort_loopIN5QListI12QCPGraphDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %i.y, ptr %i.ac, i64 noundef %i.aj, ptr nonnull @_Z18qcpLessThanSortKeyI12QCPGraphDataEbRKT_S3_)
  %i.ak = icmp sgt i64 %i.af, 256
  %.sroa.0.019.i.i = getelementptr i8, ptr %i.y, i64 16 ; 3 uses
  br i1 %i.ak, label %.lr.ph.i.i, label %bb.g

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.al = getelementptr i8, ptr %i.y, i64 256     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.022.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %bb.f ] ; 9 uses
  %.pn21.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.0.022.i.i, %bb.f ] ; 3 uses
  %i.am = load double, ptr %.sroa.0.022.i.i, align 8 ; 4 uses
  %i.an = load double, ptr %i.y, align 8
  %i.ao = fcmp olt double %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load <2 x double>, ptr %.sroa.0.022.i.i, align 8
  %i.ap = ptrtoint ptr %.sroa.0.022.i.i to i64
  %i.aq = sub i64 %i.ap, %i.ae                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 4                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardIN5QListI12QCPGraphDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.d
  %i.at = getelementptr i8, ptr %.pn21.i.i, i64 32
  %i.au = mul nsw i64 %i.ar, -16                  ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.at, i64 %i.au
  %scevgep24.i.i = getelementptr i8, ptr %.sroa.0.022.i.i, i64 %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.i, ptr align 8 %scevgep24.i.i, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIN5QListI12QCPGraphDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i

_ZSt13move_backwardIN5QListI12QCPGraphDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %bb.d
  store <2 x double> %.sroa.0.0.copyload, ptr %i.y, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.6.0..sroa.0.022.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa.0.022.i.i.sroa_idx, align 8
  %i.av = load double, ptr %.pn21.i.i, align 8
  %i.aw = fcmp olt double %i.am, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn21.i.i, %bb.e ] ; 4 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.022.i.i, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.04.08.i.i.i, ptr noundef align 8 dereferenceable(16) %.sroa.0.09.i.i.i, i64 16, i1 false)
  %.sroa.0.0.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i.i, i64 -16 ; 2 uses
  %i.ax = load double, ptr %.sroa.0.0.i.i.i, align 8
  %i.ay = fcmp olt double %i.am, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, !llvm.loop !47

_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.022.i.i, %bb.e ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  store double %i.am, ptr %.sroa.04.0.lcssa.i.i.i, align 8
  %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 8
  store double %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN5QListI12QCPGraphDataE8iteratorES3_ET0_T_S5_S4_.exit.i.i
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.022.i.i, i64 16 ; 2 uses
  %.not.i.i5 = icmp eq ptr %.sroa.0.0.i.i, %i.al
  br i1 %.not.i.i5, label %_ZSt16__insertion_sortIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, label %bb.c, !llvm.loop !48

_ZSt16__insertion_sortIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i: ; preds = %bb.f
  %.not8.i.i = icmp eq ptr %i.al, %i.ac
  br i1 %.not8.i.i, label %_ZSt4sortIN5QListI12QCPGraphDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %_ZSt16__insertion_sortIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i
  %.sroa.0.09.i.i = phi ptr [ %i.bf, %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i ], [ %i.al, %_ZSt16__insertion_sortIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i ] ; 5 uses
  %i.az = load <2 x double>, ptr %.sroa.0.09.i.i, align 8 ; 2 uses
  %.sroa.0.07.i.i.i = getelementptr i8, ptr %.sroa.0.09.i.i, i64 -16 ; 2 uses
  %i.ba = load double, ptr %.sroa.0.07.i.i.i, align 8
  %i.bb = extractelement <2 x double> %i.az, i64 0 ; 2 uses
  %i.bc = fcmp olt double %i.bb, %i.ba
  br i1 %i.bc, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i

.lr.ph.i.i15.i:                                   ; preds = %.lr.ph.i11.i, %.lr.ph.i.i15.i
  %.sroa.0.09.i.i16.i = phi ptr [ %.sroa.0.0.i.i18.i, %.lr.ph.i.i15.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i11.i ] ; 4 uses
  %.sroa.04.08.i.i17.i = phi ptr [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ], [ %.sroa.0.09.i.i, %.lr.ph.i11.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.04.08.i.i17.i, ptr noundef align 8 dereferenceable(16) %.sroa.0.09.i.i16.i, i64 16, i1 false)
  %.sroa.0.0.i.i18.i = getelementptr i8, ptr %.sroa.0.09.i.i16.i, i64 -16 ; 2 uses
  %i.bd = load double, ptr %.sroa.0.0.i.i18.i, align 8
  %i.be = fcmp olt double %i.bb, %i.bd
  br i1 %i.be, label %.lr.ph.i.i15.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, !llvm.loop !47

_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i: ; preds = %.lr.ph.i.i15.i, %.lr.ph.i11.i
  %.sroa.04.0.lcssa.i.i13.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i11.i ], [ %.sroa.0.09.i.i16.i, %.lr.ph.i.i15.i ]
  store <2 x double> %i.az, ptr %.sroa.04.0.lcssa.i.i13.i, align 8
  %i.bf = getelementptr i8, ptr %.sroa.0.09.i.i, i64 16 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.bf, %i.ac
  br i1 %.not.i14.i, label %_ZSt4sortIN5QListI12QCPGraphDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i11.i, !llvm.loop !49

bb.g:                                             ; preds = %bb.b
  %.not20.i21.i = icmp eq ptr %.sroa.0.019.i.i, %i.ac
  br i1 %.not20.i21.i, label %_ZSt4sortIN5QListI12QCPGraphDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %bb.g, %bb.j
  %.sroa.0.022.i23.i = phi ptr [ %.sroa.0.0.i27.i, %bb.j ], [ %.sroa.0.019.i.i, %bb.g ] ; 9 uses
  %.pn21.i24.i = phi ptr [ %.sroa.0.022.i23.i, %bb.j ], [ %i.y, %bb.g ] ; 3 uses
  %i.bg = load double, ptr %.sroa.0.022.i23.i, align 8 ; 4 uses
  %i.bh = load double, ptr %i.y, align 8
  %i.bi = fcmp olt double %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i22.i
  %.sroa.036.0.copyload = load <2 x double>, ptr %.sroa.0.022.i23.i, align 8
  %i.bj = ptrtoint ptr %.sroa.0.022.i23.i to i64
  %i.bk = sub i64 %i.bj, %i.ae                    ; 2 uses
  %i.bl = ashr exact i64 %i.bk, 4                 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.preheader.i34.i, label %_ZSt13move_backwardIN5QListI12QCPGraphDataE8iteratorES3_ET0_T_S5_S4_.exit.i33.i

.lr.ph.i.i.i.i.i.preheader.i34.i:                 ; preds = %bb.h
  %i.bn = getelementptr i8, ptr %.pn21.i24.i, i64 32
  %i.bo = mul nsw i64 %i.bl, -16                  ; 2 uses
  %scevgep.i35.i = getelementptr i8, ptr %i.bn, i64 %i.bo
  %scevgep24.i36.i = getelementptr i8, ptr %.sroa.0.022.i23.i, i64 %i.bo
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i35.i, ptr align 8 %scevgep24.i36.i, i64 %i.bk, i1 false)
  br label %_ZSt13move_backwardIN5QListI12QCPGraphDataE8iteratorES3_ET0_T_S5_S4_.exit.i33.i

_ZSt13move_backwardIN5QListI12QCPGraphDataE8iteratorES3_ET0_T_S5_S4_.exit.i33.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i34.i, %bb.h
  store <2 x double> %.sroa.036.0.copyload, ptr %i.y, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i22.i
  %.sroa.617.0..sroa.0.022.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i23.i, i64 8
  %.sroa.617.0.copyload = load double, ptr %.sroa.617.0..sroa.0.022.i23.i.sroa_idx, align 8
  %i.bp = load double, ptr %.pn21.i24.i, align 8
  %i.bq = fcmp olt double %i.bg, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i25.i

.lr.ph.i.i29.i:                                   ; preds = %bb.i, %.lr.ph.i.i29.i
  %.sroa.0.09.i.i30.i = phi ptr [ %.sroa.0.0.i.i32.i, %.lr.ph.i.i29.i ], [ %.pn21.i24.i, %bb.i ] ; 4 uses
  %.sroa.04.08.i.i31.i = phi ptr [ %.sroa.0.09.i.i30.i, %.lr.ph.i.i29.i ], [ %.sroa.0.022.i23.i, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.04.08.i.i31.i, ptr noundef align 8 dereferenceable(16) %.sroa.0.09.i.i30.i, i64 16, i1 false)
  %.sroa.0.0.i.i32.i = getelementptr i8, ptr %.sroa.0.09.i.i30.i, i64 -16 ; 2 uses
  %i.br = load double, ptr %.sroa.0.0.i.i32.i, align 8
  %i.bs = fcmp olt double %i.bg, %i.br
  br i1 %i.bs, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i25.i, !llvm.loop !47

_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i25.i: ; preds = %.lr.ph.i.i29.i, %bb.i
  %.sroa.04.0.lcssa.i.i26.i = phi ptr [ %.sroa.0.022.i23.i, %bb.i ], [ %.sroa.0.09.i.i30.i, %.lr.ph.i.i29.i ] ; 2 uses
  store double %i.bg, ptr %.sroa.04.0.lcssa.i.i26.i, align 8
  %.sroa.617.0..sroa.04.0.lcssa.i.i26.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i26.i, i64 8
  store double %.sroa.617.0.copyload, ptr %.sroa.617.0..sroa.04.0.lcssa.i.i26.i.sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i25.i, %_ZSt13move_backwardIN5QListI12QCPGraphDataE8iteratorES3_ET0_T_S5_S4_.exit.i33.i
  %.sroa.0.0.i27.i = getelementptr i8, ptr %.sroa.0.022.i23.i, i64 16 ; 2 uses
  %.not.i28.i = icmp eq ptr %.sroa.0.0.i27.i, %i.ac
  br i1 %.not.i28.i, label %_ZSt4sortIN5QListI12QCPGraphDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i22.i, !llvm.loop !48

_ZSt4sortIN5QListI12QCPGraphDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit: ; preds = %bb.j, %_ZSt25__unguarded_linear_insertIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit.i12.i, %bb.g, %_ZSt16__insertion_sortIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit.i, %_ZN16QCPDataContainerI12QCPGraphDataE3endEv.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN5QListI12QCPGraphDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %class.QCPGraphData, align 16       ; 5 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.765", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit
  %i.h = icmp eq i64 %i.al, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph42, !llvm.loop !1871

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa38 = phi i64 [ %i.d, %.lr.ph ], [ %i.ba, %bb.b ] ; 2 uses
  %.lcssa36 = phi i64 [ %i.c, %.lr.ph ], [ %i.az, %bb.b ]
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.i = add nsw i64 %.lcssa38, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %.lcssa38, -1                ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %.lcssa36, 16
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr [16 x i8], ptr %0, i64 %i.k
  %i.p = getelementptr [16 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN5QListI12QCPGraphDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.aj, %_ZSt13__adjust_heapIN5QListI12QCPGraphDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr [16 x i8], ptr %0, i64 %.012.i.i
  %i.r = load <2 x double>, ptr %i.q, align 8
  %i.s = icmp slt i64 %.012.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.039.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.039.i.i.i, 1                   ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr [16 x i8], ptr %0, i64 %i.w
  %i.y = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.v, ptr noundef align 8 dereferenceable(16) %i.x), !inline_history !1872
  %spec.select.i.i.i = select i1 %i.y, i64 %i.w, i64 %i.u ; 4 uses
  %i.z = getelementptr [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.aa = getelementptr [16 x i8], ptr %0, i64 %.039.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.aa, ptr noundef align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.ab = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !116

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ac, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.p, ptr noundef align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x double> %i.r, ptr %4, align 16
  %i.ad = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN5QListI12QCPGraphDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ae = getelementptr [16 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.af = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !1873
  br i1 %i.af, label %bb.f, label %_ZSt13__adjust_heapIN5QListI12QCPGraphDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr [16 x i8], ptr %0, i64 %.018.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ag, ptr noundef align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.ah = icmp sgt i64 %.0919.i.i.i.i, %.012.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN5QListI12QCPGraphDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !117

_ZSt13__adjust_heapIN5QListI12QCPGraphDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ai = getelementptr [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.aj = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit, label %bb.c, !llvm.loop !1874

_ZSt13__heap_selectIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt13__adjust_heapIN5QListI12QCPGraphDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_RT0_(ptr %0, ptr %storemerge21.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2141 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02240 = phi i64 [ %i.al, %bb.b ], [ %2, %.lr.ph ]
  %i.ak = phi i64 [ %i.ba, %bb.b ], [ %i.d, %.lr.ph ]
  %i.al = add i64 %.02240, -1                     ; 3 uses
  %i.am = lshr i64 %i.ak, 1
  %i.an = getelementptr [16 x i8], ptr %0, i64 %i.am ; 7 uses
  %i.ao = getelementptr i8, ptr %storemerge2141, i64 -16 ; 8 uses
  %i.ap = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.f, ptr noundef align 8 dereferenceable(16) %i.an), !inline_history !1875
  br i1 %i.ap, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph42
  %i.aq = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.an, ptr noundef align 8 dereferenceable(16) %i.ao), !inline_history !1875
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  store <2 x double> %.sroa.0.0.copyload, ptr %i.an, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.ar = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.f, ptr noundef align 8 dereferenceable(16) %i.ao), !inline_history !1875
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.051.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  store <2 x double> %.sroa.051.0.copyload, ptr %i.ao, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %.sroa.053.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store <2 x double> %.sroa.053.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph42
  %i.as = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.f, ptr noundef align 8 dereferenceable(16) %i.ao), !inline_history !1875
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.055.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store <2 x double> %.sroa.055.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.at = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.an, ptr noundef align 8 dereferenceable(16) %i.ao), !inline_history !1875
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.057.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  store <2 x double> %.sroa.057.0.copyload, ptr %i.ao, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.059.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  store <2 x double> %.sroa.059.0.copyload, ptr %i.an, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.s
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.1.i.i, %bb.s ], [ %storemerge2141, %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.av, %bb.s ], [ %i.f, %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.av, %bb.q ] ; 9 uses
  %i.au = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef align 8 dereferenceable(16) %0), !inline_history !1876
  %i.av = getelementptr i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.au, label %bb.q, label %.preheader.i.i, !llvm.loop !1877

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.sroa.010.0.pn.i.i = phi ptr [ %.sroa.010.1.i.i, %.preheader.i.i ], [ %.sroa.010.0.i.i, %bb.q ]
  %.sroa.010.1.i.i = getelementptr i8, ptr %.sroa.010.0.pn.i.i, i64 -16 ; 6 uses
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %.sroa.010.1.i.i), !inline_history !1876
  br i1 %i.aw, label %.preheader.i.i, label %bb.r, !llvm.loop !1878

bb.r:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.012.1.i.i, %.sroa.010.1.i.i
  br i1 %i.ax, label %bb.s, label %_ZSt27__unguarded_partition_pivotIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit

bb.s:                                             ; preds = %bb.r
  %.sroa.061.0.copyload = load <2 x double>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false)
  store <2 x double> %.sroa.061.0.copyload, ptr %.sroa.010.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !1879

_ZSt27__unguarded_partition_pivotIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIN5QListI12QCPGraphDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %.sroa.012.1.i.i, ptr %storemerge2141, i64 noundef %i.al, ptr %3)
  %i.ay = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.az = sub i64 %i.ay, %i.a                     ; 2 uses
  %i.ba = ashr exact i64 %i.az, 4                 ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, 16
  br i1 %i.bb, label %bb.b, label %.loopexit, !llvm.loop !1871

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit, %bb.a, %_ZSt13__heap_selectIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt11__sort_heapIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %class.QCPGraphData, align 16       ; 7 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit
  %.sroa.0.06 = phi ptr [ %i.e, %_ZSt10__pop_heapIN5QListI12QCPGraphDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr i8, ptr %.sroa.0.06, i64 -16 ; 4 uses
  %i.f = load <2 x double>, ptr %i.e, align 8     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.e, ptr noundef align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8 ; 2 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = icmp sgt i64 %i.i, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.039.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.039.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr [16 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr [16 x i8], ptr %0, i64 %i.p
  %i.r = call noundef zeroext i1 %.sroa.0.0.copyload.i(ptr noundef align 8 dereferenceable(16) %i.o, ptr noundef align 8 dereferenceable(16) %i.q), !inline_history !1880
  %spec.select.i.i = select i1 %i.r, i64 %i.p, i64 %i.n ; 4 uses
  %i.s = getelementptr [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.t = getelementptr [16 x i8], ptr %0, i64 %.039.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.t, ptr noundef align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.u = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.u, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !116

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.v = and i64 %i.h, 16
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.x = add nsw i64 %i.i, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa.i.i, %i.y
  br i1 %i.z, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.aa = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr [16 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ad, ptr noundef align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x double> %i.f, ptr %3, align 16
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
end_hunk_1
begin_hunk_2_@_ZN17QArrayDataPointerI12QCPCurveDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_:bb.a
  %i.y = mul i64 %i.v, 3
  %i.z = shl i64 %i.m, 1
  %i.aa = icmp slt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nsw i64 0, %i.x
  %.idx.i.i = sub i64 0, %i.t
  %i.ac = getelementptr i8, ptr %i.o, i64 %.idx.i.i ; 3 uses
  %i.ad = icmp eq i64 %i.v, 0
  br i1 %i.ad, label %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i64 %i.r, %i.s
  %i.af = icmp eq ptr %i.o, null
  %or.cond.i.i.i = or i1 %i.ae, %i.af
  %i.ag = icmp eq ptr %i.ac, null
  %or.cond3.i.i.i = or i1 %i.ag, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = mul i64 %i.v, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ac, ptr noundef nonnull align 1 %i.o, i64 noundef %i.ah, i1 noundef false) #51
  br label %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i

_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.not.i21.i = icmp eq ptr %3, null
  br i1 %.not.i21.i, label %_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, label %bb.h

bb.h:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ak = load i64, ptr %i.u, align 8
  %i.al = getelementptr [24 x i8], ptr %i.aj, i64 %i.ak
  %i.am = icmp uge ptr %i.ai, %i.aj
  %i.an = icmp ult ptr %i.ai, %i.al
  %spec.select.i.i.i = and i1 %i.am, %i.an
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr [24 x i8], ptr %i.ai, i64 %i.ab
  store ptr %i.ao, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i.i, %bb.h, %bb.i
  store ptr %i.ac, ptr %i.n, align 8
  br label %bb.j

_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit: ; preds = %bb.c, %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit
  %i.ap = tail call noundef zeroext i1 @_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  br i1 %i.ap, label %bb.j, label %.critedge

.critedge:                                        ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit.i, %bb.d, %bb.a, %_ZNK17QArrayDataPointerI12QCPCurveDataE11needsDetachEv.exit, %_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit
  tail call void @_ZN17QArrayDataPointerI12QCPCurveDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, %_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit, %.critedge, %bb.b, %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN17QArrayDataPointerI12QCPCurveDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit, label %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit.i

_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 24
  %.neg4.i = sdiv exact i64 %i.j, -24
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %.neg3.i = sub i64 %i.c, %i.m
  %i.n = add i64 %.neg3.i, %.neg4.i
  br label %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = phi i64 [ %i.c, %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.n, %_ZNK17QArrayDataPointerI12QCPCurveDataE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.p = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.p, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = mul i64 %i.r, 3
  %i.t = shl i64 %i.o, 1
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPCurveDataE14freeSpaceAtEndEv.exit
  %i.v = icmp ne i32 %1, 1
  %.not18 = icmp slt i64 %.0.i20, %2
  %or.cond19 = or i1 %i.v, %.not18
  br i1 %or.cond19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = mul i64 %i.x, 3
  %i.z = icmp slt i64 %i.y, %i.o
  br i1 %i.z, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = add i64 %2, %i.x
  %i.ab = sub i64 %i.o, %i.aa
  %i.ac = sdiv i64 %i.ab, 2
  %i.ad = tail call noundef i64 @llvm.smax.i64(i64 %i.ac, i64 0)
  %i.ae = add i64 %i.ad, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.af = phi i64 [ %i.r, %bb.b ], [ %i.x, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %i.ag = sub i64 %.0, %.0.i24                    ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.idx.i = mul i64 %i.ag, 24                     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.idx.i ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 16
  %i.al = icmp eq i64 %i.af, 0
  br i1 %i.al, label %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %.idx.i, 0
  %i.an = icmp eq ptr %i.ai, null
  %or.cond.i.i = or i1 %i.an, %i.am
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond3.i.i = or i1 %i.ao, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = mul i64 %i.af, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aj, ptr noundef nonnull align 1 %i.ai, i64 noundef %i.ap, i1 noundef false) #51
  br label %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerI12QCPCurveDataE8relocateExPPKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i
  %i.aq = load ptr, ptr %3, align 8               ; 3 uses
  %i.ar = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.as = load i64, ptr %i.ak, align 8
  %i.at = getelementptr [24 x i8], ptr %i.ar, i64 %i.as
  %i.au = icmp uge ptr %i.aq, %i.ar
  %i.av = icmp ult ptr %i.aq, %i.at
  %spec.select.i.i = and i1 %i.au, %i.av
  br i1 %spec.select.i.i, label %bb.j, label %_ZN17QArrayDataPointerI12QCPCurveDataE8relocateExPPKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr [24 x i8], ptr %i.aq, i64 %i.ag
  store ptr %i.aw, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI12QCPCurveDataE8relocateExPPKS0_.exit

_ZN17QArrayDataPointerI12QCPCurveDataE8relocateExPPKS0_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI12QCPCurveDataxEEvPT_T0_S3_.exit.i, %bb.i, %bb.j
  store ptr %i.aj, ptr %i.ah, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerI12QCPCurveDataE8relocateExPPKS0_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerI12QCPCurveDataE8relocateExPPKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN5QListI12QCPCurveDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %class.QCPCurveData, align 8        ; 5 uses
  %5 = alloca %class.QCPCurveData, align 8        ; 7 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit
  %i.g = icmp eq i64 %i.bo, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42, !llvm.loop !1910

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa38 = phi i64 [ %i.c, %.lr.ph ], [ %i.cc, %bb.b ]
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa38, 24             ; 3 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1                     ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr [24 x i8], ptr %0, i64 %i.k
  %i.p = getelementptr [24 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN5QListI12QCPCurveDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.010.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.ai, %_ZSt13__adjust_heapIN5QListI12QCPCurveDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr [24 x i8], ptr %0, i64 %.010.i.i
  %.sroa.064.0.copyload = load <3 x double>, ptr %i.q, align 8
  %i.r = icmp slt i64 %.010.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.010.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.036.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr [24 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr [24 x i8], ptr %0, i64 %i.v
  %i.x = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %i.u, ptr noundef align 8 dereferenceable(24) %i.w), !inline_history !1911
  %spec.select.i.i.i = select i1 %i.x, i64 %i.v, i64 %i.t ; 4 uses
  %i.y = getelementptr [24 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.z = getelementptr [24 x i8], ptr %0, i64 %.036.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.z, ptr noundef align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.aa = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.aa, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1912

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.010.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ab = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ab, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.p, ptr noundef align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <3 x double> %.sroa.064.0.copyload, ptr %4, align 8
  %i.ac = icmp sgt i64 %.1.i.i.i, %.010.i.i
  br i1 %i.ac, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN5QListI12QCPCurveDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ad = getelementptr [24 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ae = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !1913
  br i1 %i.ae, label %bb.f, label %_ZSt13__adjust_heapIN5QListI12QCPCurveDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.af = getelementptr [24 x i8], ptr %0, i64 %.018.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.af, ptr noundef align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ag = icmp sgt i64 %.0919.i.i.i.i, %.010.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN5QListI12QCPCurveDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !1914

_ZSt13__adjust_heapIN5QListI12QCPCurveDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.ah = getelementptr [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.ai = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !1915

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN5QListI12QCPCurveDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.aj, %_ZSt10__pop_heapIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge24.lcssa, %_ZSt13__adjust_heapIN5QListI12QCPCurveDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i ]
  %i.aj = getelementptr i8, ptr %.sroa.0.06.i.i, i64 -24 ; 4 uses
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.aj, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.aj, ptr noundef align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.a                     ; 3 uses
  %i.am = sdiv exact i64 %i.al, 24                ; 3 uses
  %i.an = add nsw i64 %i.am, -1
  %i.ao = sdiv i64 %i.an, 2
  %i.ap = icmp sgt i64 %i.al, 48
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.aq = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr [24 x i8], ptr %0, i64 %i.ar
  %i.at = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.au = getelementptr [24 x i8], ptr %0, i64 %i.at
  %i.av = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %i.as, ptr noundef align 8 dereferenceable(24) %i.au), !inline_history !1916
  %spec.select.i.i.i.i = select i1 %i.av, i64 %i.at, i64 %i.ar ; 4 uses
  %i.aw = getelementptr [24 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ax = getelementptr [24 x i8], ptr %0, i64 %.036.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.ax, ptr noundef align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.ay = icmp slt i64 %spec.select.i.i.i.i, %i.ao
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1912

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.az = and i64 %i.am, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bb = add nsw i64 %i.am, -2
  %i.bc = ashr exact i64 %i.bb, 1
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bc
  br i1 %i.bd, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.be = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bf = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bg = getelementptr [24 x i8], ptr %0, i64 %i.bf
  %i.bh = getelementptr [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.bh, ptr noundef align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <3 x double> %.sroa.0.0.copyload, ptr %5, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <3 x double> %.sroa.0.0.copyload, ptr %5, align 8
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bf, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i67.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i67.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bi = getelementptr [24 x i8], ptr %0, i64 %.0919.i.i67.i.i.i ; 2 uses
  %i.bj = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %5), !inline_history !1917
  br i1 %i.bj, label %bb.i, label %_ZSt10__pop_heapIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bk = getelementptr [24 x i8], ptr %0, i64 %.018.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.bk, ptr noundef align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  %.not8.i.i.i = icmp eq i64 %.0919.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1914

_ZSt10__pop_heapIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bl = getelementptr [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bm = icmp sgt i64 %i.al, 24
  br i1 %i.bm, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit, !llvm.loop !1918

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2441 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02540 = phi i64 [ %i.bo, %bb.b ], [ %2, %.lr.ph ]
  %i.bn = phi i64 [ %i.cc, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bo = add i64 %.02540, -1                     ; 3 uses
  %i.bp = udiv i64 %i.bn, 48
  %i.bq = getelementptr [24 x i8], ptr %0, i64 %i.bp ; 7 uses
  %i.br = getelementptr i8, ptr %storemerge2441, i64 -24 ; 8 uses
  %i.bs = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %i.e, ptr noundef align 8 dereferenceable(24) %i.bq), !inline_history !1919
  br i1 %i.bs, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.bt = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %i.bq, ptr noundef align 8 dereferenceable(24) %i.br), !inline_history !1919
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.050.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %0, ptr noundef align 8 dereferenceable(24) %i.bq, i64 24, i1 false)
  store <3 x double> %.sroa.050.0.copyload, ptr %i.bq, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.bu = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %i.e, ptr noundef align 8 dereferenceable(24) %i.br), !inline_history !1919
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.052.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %0, ptr noundef align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  store <3 x double> %.sroa.052.0.copyload, ptr %i.br, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %.sroa.054.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %0, ptr noundef align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store <3 x double> %.sroa.054.0.copyload, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph42
  %i.bv = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %i.e, ptr noundef align 8 dereferenceable(24) %i.br), !inline_history !1919
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.056.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %0, ptr noundef align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store <3 x double> %.sroa.056.0.copyload, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.bw = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %i.bq, ptr noundef align 8 dereferenceable(24) %i.br), !inline_history !1919
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.058.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %0, ptr noundef align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  store <3 x double> %.sroa.058.0.copyload, ptr %i.br, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %.sroa.060.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %0, ptr noundef align 8 dereferenceable(24) %i.bq, i64 24, i1 false)
  store <3 x double> %.sroa.060.0.copyload, ptr %i.bq, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.1.i.i, %bb.v ], [ %storemerge2441, %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.by, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.by, %bb.t ] ; 9 uses
  %i.bx = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef align 8 dereferenceable(24) %0), !inline_history !1920
  %i.by = getelementptr i8, ptr %.sroa.012.1.i.i, i64 24 ; 2 uses
  br i1 %i.bx, label %bb.t, label %.preheader.i.i, !llvm.loop !1921

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.010.0.pn.i.i = phi ptr [ %.sroa.010.1.i.i, %.preheader.i.i ], [ %.sroa.010.0.i.i, %bb.t ]
  %.sroa.010.1.i.i = getelementptr i8, ptr %.sroa.010.0.pn.i.i, i64 -24 ; 6 uses
  %i.bz = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(24) %0, ptr noundef align 8 dereferenceable(24) %.sroa.010.1.i.i), !inline_history !1920
  br i1 %i.bz, label %.preheader.i.i, label %bb.u, !llvm.loop !1922

bb.u:                                             ; preds = %.preheader.i.i
  %i.ca = icmp ult ptr %.sroa.012.1.i.i, %.sroa.010.1.i.i
  br i1 %i.ca, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN5QListI12QCPCurveDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.062.0.copyload = load <3 x double>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.1.i.i, i64 24, i1 false)
end_hunk_2
begin_hunk_3_@_ZN17QArrayDataPointerI11QCPBarsDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_:bb.a
  %i.ab = icmp slt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nsw i64 0, %i.u                     ; 2 uses
  %.idx.i.i = shl i64 %i.ac, 4                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.o, i64 %.idx.i.i ; 3 uses
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %.idx.i.i, 0
  %i.ag = icmp eq ptr %i.o, null
  %or.cond.i.i.i = or i1 %i.af, %i.ag
  %i.ah = icmp eq ptr %i.ad, null
  %or.cond3.i.i.i = or i1 %i.ah, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = shl i64 %i.w, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ad, ptr noundef nonnull align 1 %i.o, i64 noundef %i.ai, i1 noundef false) #51
  br label %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i.i

_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.not.i21.i = icmp eq ptr %3, null
  br i1 %.not.i21.i, label %_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, label %bb.h

bb.h:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i.i
  %i.aj = load ptr, ptr %3, align 8               ; 3 uses
  %i.ak = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.al = load i64, ptr %i.v, align 8
  %i.am = getelementptr [16 x i8], ptr %i.ak, i64 %i.al
  %i.an = icmp uge ptr %i.aj, %i.ak
  %i.ao = icmp ult ptr %i.aj, %i.am
  %spec.select.i.i.i = and i1 %i.an, %i.ao
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr [16 x i8], ptr %i.aj, i64 %i.ac
  store ptr %i.ap, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i.i, %bb.h, %bb.i
  store ptr %i.ad, ptr %i.n, align 8
  br label %bb.j

_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit: ; preds = %bb.c, %_ZNK17QArrayDataPointerI11QCPBarsDataE16freeSpaceAtBeginEv.exit
  %i.aq = tail call noundef zeroext i1 @_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  br i1 %i.aq, label %bb.j, label %.critedge

.critedge:                                        ; preds = %_ZNK17QArrayDataPointerI11QCPBarsDataE14freeSpaceAtEndEv.exit.i, %bb.d, %bb.a, %_ZNK17QArrayDataPointerI11QCPBarsDataE11needsDetachEv.exit, %_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit
  tail call void @_ZN17QArrayDataPointerI11QCPBarsDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, %_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit, %.critedge, %bb.b, %_ZNK17QArrayDataPointerI11QCPBarsDataE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI11QCPBarsDataE14freeSpaceAtEndEv.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN17QArrayDataPointerI11QCPBarsDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI11QCPBarsDataE14freeSpaceAtEndEv.exit, label %_ZNK17QArrayDataPointerI11QCPBarsDataE16freeSpaceAtBeginEv.exit.i

_ZNK17QArrayDataPointerI11QCPBarsDataE16freeSpaceAtBeginEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.k
  %i.o = sub i64 %i.c, %i.n
  br label %_ZNK17QArrayDataPointerI11QCPBarsDataE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI11QCPBarsDataE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI11QCPBarsDataE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerI11QCPBarsDataE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.p = phi i64 [ %i.c, %_ZNK17QArrayDataPointerI11QCPBarsDataE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.o, %_ZNK17QArrayDataPointerI11QCPBarsDataE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.q = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.q, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI11QCPBarsDataE14freeSpaceAtEndEv.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = mul i64 %i.s, 3
  %i.u = shl i64 %i.p, 1
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI11QCPBarsDataE14freeSpaceAtEndEv.exit
  %i.w = icmp ne i32 %1, 1
  %.not18 = icmp slt i64 %.0.i20, %2
  %or.cond19 = or i1 %i.w, %.not18
  br i1 %or.cond19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = mul i64 %i.y, 3
  %i.aa = icmp slt i64 %i.z, %i.p
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = add i64 %2, %i.y
  %i.ac = sub i64 %i.p, %i.ab
  %i.ad = sdiv i64 %i.ac, 2
  %i.ae = tail call noundef i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  %i.af = add i64 %i.ae, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.ag = phi i64 [ %i.s, %bb.b ], [ %i.y, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %i.ah = sub i64 %.0, %.0.i24                    ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.idx.i = shl i64 %i.ah, 4                      ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = icmp eq i64 %i.ag, 0
  br i1 %i.am, label %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq i64 %.idx.i, 0
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond.i.i = or i1 %i.ao, %i.an
  %i.ap = icmp eq ptr %i.ak, null
  %or.cond3.i.i = or i1 %i.ap, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = shl i64 %i.ag, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.aj, i64 noundef %i.aq, i1 noundef false) #51
  br label %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerI11QCPBarsDataE8relocateExPPKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i
  %i.ar = load ptr, ptr %3, align 8               ; 3 uses
  %i.as = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.at = load i64, ptr %i.al, align 8
  %i.au = getelementptr [16 x i8], ptr %i.as, i64 %i.at
  %i.av = icmp uge ptr %i.ar, %i.as
  %i.aw = icmp ult ptr %i.ar, %i.au
  %spec.select.i.i = and i1 %i.av, %i.aw
  br i1 %spec.select.i.i, label %bb.j, label %_ZN17QArrayDataPointerI11QCPBarsDataE8relocateExPPKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr [16 x i8], ptr %i.ar, i64 %i.ah
  store ptr %i.ax, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI11QCPBarsDataE8relocateExPPKS0_.exit

_ZN17QArrayDataPointerI11QCPBarsDataE8relocateExPPKS0_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI11QCPBarsDataxEEvPT_T0_S3_.exit.i, %bb.i, %bb.j
  store ptr %i.ak, ptr %i.ai, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerI11QCPBarsDataE8relocateExPPKS0_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerI11QCPBarsDataE8relocateExPPKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN5QListI11QCPBarsDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %class.QCPBarsData, align 16        ; 5 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.805", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit
  %i.h = icmp eq i64 %i.al, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph42, !llvm.loop !1962

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa38 = phi i64 [ %i.d, %.lr.ph ], [ %i.ba, %bb.b ] ; 2 uses
  %.lcssa36 = phi i64 [ %i.c, %.lr.ph ], [ %i.az, %bb.b ]
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.i = add nsw i64 %.lcssa38, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %.lcssa38, -1                ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %.lcssa36, 16
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr [16 x i8], ptr %0, i64 %i.k
  %i.p = getelementptr [16 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN5QListI11QCPBarsDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.012.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.aj, %_ZSt13__adjust_heapIN5QListI11QCPBarsDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr [16 x i8], ptr %0, i64 %.012.i.i
  %i.r = load <2 x double>, ptr %i.q, align 8
  %i.s = icmp slt i64 %.012.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.039.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i, %bb.c ] ; 2 uses
  %i.t = shl i64 %.039.i.i.i, 1                   ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr [16 x i8], ptr %0, i64 %i.w
  %i.y = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.v, ptr noundef align 8 dereferenceable(16) %i.x), !inline_history !1963
  %spec.select.i.i.i = select i1 %i.y, i64 %i.w, i64 %i.u ; 4 uses
  %i.z = getelementptr [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.aa = getelementptr [16 x i8], ptr %0, i64 %.039.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.aa, ptr noundef align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.ab = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !140

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.012.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ac, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.p, ptr noundef align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x double> %i.r, ptr %4, align 16
  %i.ad = icmp sgt i64 %.1.i.i.i, %.012.i.i
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN5QListI11QCPBarsDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ae = getelementptr [16 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.af = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !1964
  br i1 %i.af, label %bb.f, label %_ZSt13__adjust_heapIN5QListI11QCPBarsDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr [16 x i8], ptr %0, i64 %.018.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ag, ptr noundef align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.ah = icmp sgt i64 %.0919.i.i.i.i, %.012.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN5QListI11QCPBarsDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !141

_ZSt13__adjust_heapIN5QListI11QCPBarsDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ai = getelementptr [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i = icmp eq i64 %.012.i.i, 0
  %i.aj = add nsw i64 %.012.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit, label %bb.c, !llvm.loop !1965

_ZSt13__heap_selectIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt13__adjust_heapIN5QListI11QCPBarsDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_RT0_(ptr %0, ptr %storemerge21.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2141 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02240 = phi i64 [ %i.al, %bb.b ], [ %2, %.lr.ph ]
  %i.ak = phi i64 [ %i.ba, %bb.b ], [ %i.d, %.lr.ph ]
  %i.al = add i64 %.02240, -1                     ; 3 uses
  %i.am = lshr i64 %i.ak, 1
  %i.an = getelementptr [16 x i8], ptr %0, i64 %i.am ; 7 uses
  %i.ao = getelementptr i8, ptr %storemerge2141, i64 -16 ; 8 uses
  %i.ap = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.f, ptr noundef align 8 dereferenceable(16) %i.an), !inline_history !1966
  br i1 %i.ap, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.lr.ph42
  %i.aq = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.an, ptr noundef align 8 dereferenceable(16) %i.ao), !inline_history !1966
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  store <2 x double> %.sroa.0.0.copyload, ptr %i.an, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.ar = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.f, ptr noundef align 8 dereferenceable(16) %i.ao), !inline_history !1966
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.051.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  store <2 x double> %.sroa.051.0.copyload, ptr %i.ao, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %.sroa.053.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store <2 x double> %.sroa.053.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %.lr.ph42
  %i.as = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.f, ptr noundef align 8 dereferenceable(16) %i.ao), !inline_history !1966
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.055.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store <2 x double> %.sroa.055.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %i.at = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %i.an, ptr noundef align 8 dereferenceable(16) %i.ao), !inline_history !1966
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.057.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  store <2 x double> %.sroa.057.0.copyload, ptr %i.ao, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %.sroa.059.0.copyload = load <2 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  store <2 x double> %.sroa.059.0.copyload, ptr %i.an, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h
  br label %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.s
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.1.i.i, %bb.s ], [ %storemerge2141, %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.av, %bb.s ], [ %i.f, %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.av, %bb.q ] ; 9 uses
  %i.au = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef align 8 dereferenceable(16) %0), !inline_history !1967
  %i.av = getelementptr i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.au, label %bb.q, label %.preheader.i.i, !llvm.loop !1968

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.sroa.010.0.pn.i.i = phi ptr [ %.sroa.010.1.i.i, %.preheader.i.i ], [ %.sroa.010.0.i.i, %bb.q ]
  %.sroa.010.1.i.i = getelementptr i8, ptr %.sroa.010.0.pn.i.i, i64 -16 ; 6 uses
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %.sroa.010.1.i.i), !inline_history !1967
  br i1 %i.aw, label %.preheader.i.i, label %bb.r, !llvm.loop !1969

bb.r:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.012.1.i.i, %.sroa.010.1.i.i
  br i1 %i.ax, label %bb.s, label %_ZSt27__unguarded_partition_pivotIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit

bb.s:                                             ; preds = %bb.r
  %.sroa.061.0.copyload = load <2 x double>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false)
  store <2 x double> %.sroa.061.0.copyload, ptr %.sroa.010.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !1970

_ZSt27__unguarded_partition_pivotIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit: ; preds = %bb.r
  tail call void @_ZSt16__introsort_loopIN5QListI11QCPBarsDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %.sroa.012.1.i.i, ptr %storemerge2141, i64 noundef %i.al, ptr %3)
  %i.ay = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.az = sub i64 %i.ay, %i.a                     ; 2 uses
  %i.ba = ashr exact i64 %i.az, 4                 ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, 16
  br i1 %i.bb, label %bb.b, label %.loopexit, !llvm.loop !1962

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit, %bb.a, %_ZSt13__heap_selectIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt11__sort_heapIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %class.QCPBarsData, align 16        ; 7 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit
  %.sroa.0.06 = phi ptr [ %i.e, %_ZSt10__pop_heapIN5QListI11QCPBarsDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr i8, ptr %.sroa.0.06, i64 -16 ; 4 uses
  %i.f = load <2 x double>, ptr %i.e, align 8     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.e, ptr noundef align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8 ; 2 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = icmp sgt i64 %i.i, 2
  br i1 %i.l, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.039.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = shl i64 %.039.i.i, 1                     ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr [16 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr [16 x i8], ptr %0, i64 %i.p
  %i.r = call noundef zeroext i1 %.sroa.0.0.copyload.i(ptr noundef align 8 dereferenceable(16) %i.o, ptr noundef align 8 dereferenceable(16) %i.q), !inline_history !1971
  %spec.select.i.i = select i1 %i.r, i64 %i.p, i64 %i.n ; 4 uses
  %i.s = getelementptr [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.t = getelementptr [16 x i8], ptr %0, i64 %.039.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.t, ptr noundef align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.u = icmp slt i64 %spec.select.i.i, %i.k
  br i1 %i.u, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !140

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.lr.ph
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.v = and i64 %i.h, 16
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.x = add nsw i64 %i.i, -2
  %i.y = ashr exact i64 %i.x, 1
  %i.z = icmp eq i64 %.0.lcssa.i.i, %i.y
  br i1 %i.z, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.aa = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ab = or disjoint i64 %i.aa, 1                ; 2 uses
  %i.ac = getelementptr [16 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ad, ptr noundef align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x double> %i.f, ptr %3, align 16
  br label %.lr.ph.i.i.i.preheader

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
end_hunk_3
begin_hunk_4_@_ZN17QArrayDataPointerI16QCPFinancialDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_:bb.a
  %i.y = mul i64 %i.v, 3
  %i.z = shl i64 %i.m, 1
  %i.aa = icmp slt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nsw i64 0, %i.x
  %.idx.i.i = sub i64 0, %i.t
  %i.ac = getelementptr i8, ptr %i.o, i64 %.idx.i.i ; 3 uses
  %i.ad = icmp eq i64 %i.v, 0
  br i1 %i.ad, label %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i64 %i.r, %i.s
  %i.af = icmp eq ptr %i.o, null
  %or.cond.i.i.i = or i1 %i.ae, %i.af
  %i.ag = icmp eq ptr %i.ac, null
  %or.cond3.i.i.i = or i1 %i.ag, %or.cond.i.i.i
  br i1 %or.cond3.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = mul i64 %i.v, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ac, ptr noundef nonnull align 1 %i.o, i64 noundef %i.ah, i1 noundef false) #51
  br label %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i

_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.not.i21.i = icmp eq ptr %3, null
  br i1 %.not.i21.i, label %_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, label %bb.h

bb.h:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i
  %i.ai = load ptr, ptr %3, align 8               ; 3 uses
  %i.aj = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ak = load i64, ptr %i.u, align 8
  %i.al = getelementptr [40 x i8], ptr %i.aj, i64 %i.ak
  %i.am = icmp uge ptr %i.ai, %i.aj
  %i.an = icmp ult ptr %i.ai, %i.al
  %spec.select.i.i.i = and i1 %i.am, %i.an
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr [40 x i8], ptr %i.ai, i64 %i.ab
  store ptr %i.ao, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22

_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i.i, %bb.h, %bb.i
  store ptr %i.ac, ptr %i.n, align 8
  br label %bb.j

_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit: ; preds = %bb.c, %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit
  %i.ap = tail call noundef zeroext i1 @_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  br i1 %i.ap, label %bb.j, label %.critedge

.critedge:                                        ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit.i, %bb.d, %bb.a, %_ZNK17QArrayDataPointerI16QCPFinancialDataE11needsDetachEv.exit, %_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit
  tail call void @_ZN17QArrayDataPointerI16QCPFinancialDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %4)
  br label %bb.j

bb.j:                                             ; preds = %_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit.thread22, %_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit, %.critedge, %bb.b, %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN17QArrayDataPointerI16QCPFinancialDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit, label %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit.i

_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 40
  %.neg4.i = sdiv exact i64 %i.j, -40
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %.neg3.i = sub i64 %i.c, %i.m
  %i.n = add i64 %.neg3.i, %.neg4.i
  br label %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = phi i64 [ %i.c, %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.n, %_ZNK17QArrayDataPointerI16QCPFinancialDataE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.p = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.p, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = mul i64 %i.r, 3
  %i.t = shl i64 %i.o, 1
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI16QCPFinancialDataE14freeSpaceAtEndEv.exit
  %i.v = icmp ne i32 %1, 1
  %.not18 = icmp slt i64 %.0.i20, %2
  %or.cond19 = or i1 %i.v, %.not18
  br i1 %or.cond19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = mul i64 %i.x, 3
  %i.z = icmp slt i64 %i.y, %i.o
  br i1 %i.z, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = add i64 %2, %i.x
  %i.ab = sub i64 %i.o, %i.aa
  %i.ac = sdiv i64 %i.ab, 2
  %i.ad = tail call noundef i64 @llvm.smax.i64(i64 %i.ac, i64 0)
  %i.ae = add i64 %i.ad, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.af = phi i64 [ %i.r, %bb.b ], [ %i.x, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %i.ag = sub i64 %.0, %.0.i24                    ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.idx.i = mul i64 %i.ag, 40                     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.idx.i ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 16
  %i.al = icmp eq i64 %i.af, 0
  br i1 %i.al, label %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %.idx.i, 0
  %i.an = icmp eq ptr %i.ai, null
  %or.cond.i.i = or i1 %i.an, %i.am
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond3.i.i = or i1 %i.ao, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = mul i64 %i.af, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aj, ptr noundef nonnull align 1 %i.ai, i64 noundef %i.ap, i1 noundef false) #51
  br label %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerI16QCPFinancialDataE8relocateExPPKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i
  %i.aq = load ptr, ptr %3, align 8               ; 3 uses
  %i.ar = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.as = load i64, ptr %i.ak, align 8
  %i.at = getelementptr [40 x i8], ptr %i.ar, i64 %i.as
  %i.au = icmp uge ptr %i.aq, %i.ar
  %i.av = icmp ult ptr %i.aq, %i.at
  %spec.select.i.i = and i1 %i.au, %i.av
  br i1 %spec.select.i.i, label %bb.j, label %_ZN17QArrayDataPointerI16QCPFinancialDataE8relocateExPPKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr [40 x i8], ptr %i.aq, i64 %i.ag
  store ptr %i.aw, ptr %3, align 8
  br label %_ZN17QArrayDataPointerI16QCPFinancialDataE8relocateExPPKS0_.exit

_ZN17QArrayDataPointerI16QCPFinancialDataE8relocateExPPKS0_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nI16QCPFinancialDataxEEvPT_T0_S3_.exit.i, %bb.i, %bb.j
  store ptr %i.aj, ptr %i.ah, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerI16QCPFinancialDataE8relocateExPPKS0_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerI16QCPFinancialDataE8relocateExPPKS0_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN5QListI16QCPFinancialDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %class.QCPFinancialData, align 8    ; 5 uses
  %5 = alloca %class.QCPFinancialData, align 8    ; 7 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40         ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit
  %i.g = icmp eq i64 %i.bo, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42, !llvm.loop !2028

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa38 = phi i64 [ %i.c, %.lr.ph ], [ %i.cc, %bb.b ]
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa38, 40             ; 3 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1                     ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr [40 x i8], ptr %0, i64 %i.k
  %i.p = getelementptr [40 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN5QListI16QCPFinancialDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.010.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.ai, %_ZSt13__adjust_heapIN5QListI16QCPFinancialDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr [40 x i8], ptr %0, i64 %.010.i.i
  %.sroa.064.0.copyload = load <5 x double>, ptr %i.q, align 8
  %i.r = icmp slt i64 %.010.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.010.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.036.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr [40 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr [40 x i8], ptr %0, i64 %i.v
  %i.x = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %i.u, ptr noundef align 8 dereferenceable(40) %i.w), !inline_history !2029
  %spec.select.i.i.i = select i1 %i.x, i64 %i.v, i64 %i.t ; 4 uses
  %i.y = getelementptr [40 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.z = getelementptr [40 x i8], ptr %0, i64 %.036.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.z, ptr noundef align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.aa = icmp slt i64 %spec.select.i.i.i, %i.l
  br i1 %i.aa, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !2030

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.010.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ab = icmp eq i64 %.0.lcssa.i.i.i, %i.j
  %or.cond.i.i = select i1 %i.n, i1 %i.ab, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.p, ptr noundef align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <5 x double> %.sroa.064.0.copyload, ptr %4, align 8
  %i.ac = icmp sgt i64 %.1.i.i.i, %.010.i.i
  br i1 %i.ac, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN5QListI16QCPFinancialDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ad = getelementptr [40 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ae = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %4), !inline_history !2031
  br i1 %i.ae, label %bb.f, label %_ZSt13__adjust_heapIN5QListI16QCPFinancialDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.af = getelementptr [40 x i8], ptr %0, i64 %.018.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.af, ptr noundef align 8 dereferenceable(40) %i.ad, i64 40, i1 false)
  %i.ag = icmp sgt i64 %.0919.i.i.i.i, %.010.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN5QListI16QCPFinancialDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !2032

_ZSt13__adjust_heapIN5QListI16QCPFinancialDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.ah = getelementptr [40 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.ai = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !2033

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN5QListI16QCPFinancialDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.aj, %_ZSt10__pop_heapIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge24.lcssa, %_ZSt13__adjust_heapIN5QListI16QCPFinancialDataE8iteratorExS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_T0_SD_T1_T2_.exit.i.i ]
  %i.aj = getelementptr i8, ptr %.sroa.0.06.i.i, i64 -40 ; 4 uses
  %.sroa.0.0.copyload = load <5 x double>, ptr %i.aj, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.aj, ptr noundef align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.a                     ; 3 uses
  %i.am = sdiv exact i64 %i.al, 40                ; 3 uses
  %i.an = add nsw i64 %i.am, -1
  %i.ao = sdiv i64 %i.an, 2
  %i.ap = icmp sgt i64 %i.al, 80
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.aq = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr [40 x i8], ptr %0, i64 %i.ar
  %i.at = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.au = getelementptr [40 x i8], ptr %0, i64 %i.at
  %i.av = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %i.as, ptr noundef align 8 dereferenceable(40) %i.au), !inline_history !2034
  %spec.select.i.i.i.i = select i1 %i.av, i64 %i.at, i64 %i.ar ; 4 uses
  %i.aw = getelementptr [40 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ax = getelementptr [40 x i8], ptr %0, i64 %.036.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.ax, ptr noundef align 8 dereferenceable(40) %i.aw, i64 40, i1 false)
  %i.ay = icmp slt i64 %spec.select.i.i.i.i, %i.ao
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2030

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.az = and i64 %i.am, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bb = add nsw i64 %i.am, -2
  %i.bc = ashr exact i64 %i.bb, 1
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bc
  br i1 %i.bd, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.be = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bf = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bg = getelementptr [40 x i8], ptr %0, i64 %i.bf
  %i.bh = getelementptr [40 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.bh, ptr noundef align 8 dereferenceable(40) %i.bg, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <5 x double> %.sroa.0.0.copyload, ptr %5, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <5 x double> %.sroa.0.0.copyload, ptr %5, align 8
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bf, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i67.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i67.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.bi = getelementptr [40 x i8], ptr %0, i64 %.0919.i.i67.i.i.i ; 2 uses
  %i.bj = call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %5), !inline_history !2035
  br i1 %i.bj, label %bb.i, label %_ZSt10__pop_heapIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bk = getelementptr [40 x i8], ptr %0, i64 %.018.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.bk, ptr noundef align 8 dereferenceable(40) %i.bi, i64 40, i1 false)
  %.not8.i.i.i = icmp eq i64 %.0919.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2032

_ZSt10__pop_heapIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bl = getelementptr [40 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bm = icmp sgt i64 %i.al, 40
  br i1 %i.bm, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_.exit, !llvm.loop !2036

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2441 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02540 = phi i64 [ %i.bo, %bb.b ], [ %2, %.lr.ph ]
  %i.bn = phi i64 [ %i.cc, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bo = add i64 %.02540, -1                     ; 3 uses
  %i.bp = udiv i64 %i.bn, 80
  %i.bq = getelementptr [40 x i8], ptr %0, i64 %i.bp ; 7 uses
  %i.br = getelementptr i8, ptr %storemerge2441, i64 -40 ; 8 uses
  %i.bs = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %i.e, ptr noundef align 8 dereferenceable(40) %i.bq), !inline_history !2037
  br i1 %i.bs, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.bt = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %i.bq, ptr noundef align 8 dereferenceable(40) %i.br), !inline_history !2037
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.050.0.copyload = load <5 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %0, ptr noundef align 8 dereferenceable(40) %i.bq, i64 40, i1 false)
  store <5 x double> %.sroa.050.0.copyload, ptr %i.bq, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.bu = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %i.e, ptr noundef align 8 dereferenceable(40) %i.br), !inline_history !2037
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.052.0.copyload = load <5 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %0, ptr noundef align 8 dereferenceable(40) %i.br, i64 40, i1 false)
  store <5 x double> %.sroa.052.0.copyload, ptr %i.br, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %.sroa.054.0.copyload = load <5 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %0, ptr noundef align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  store <5 x double> %.sroa.054.0.copyload, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph42
  %i.bv = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %i.e, ptr noundef align 8 dereferenceable(40) %i.br), !inline_history !2037
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.056.0.copyload = load <5 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %0, ptr noundef align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  store <5 x double> %.sroa.056.0.copyload, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.bw = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %i.bq, ptr noundef align 8 dereferenceable(40) %i.br), !inline_history !2037
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.058.0.copyload = load <5 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %0, ptr noundef align 8 dereferenceable(40) %i.br, i64 40, i1 false)
  store <5 x double> %.sroa.058.0.copyload, ptr %i.br, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %.sroa.060.0.copyload = load <5 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %0, ptr noundef align 8 dereferenceable(40) %i.bq, i64 40, i1 false)
  store <5 x double> %.sroa.060.0.copyload, ptr %i.bq, align 8
  br label %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %.sroa.010.1.i.i, %bb.v ], [ %storemerge2441, %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.by, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.by, %bb.t ] ; 9 uses
  %i.bx = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %.sroa.012.1.i.i, ptr noundef align 8 dereferenceable(40) %0), !inline_history !2038
  %i.by = getelementptr i8, ptr %.sroa.012.1.i.i, i64 40 ; 2 uses
  br i1 %i.bx, label %bb.t, label %.preheader.i.i, !llvm.loop !2039

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.010.0.pn.i.i = phi ptr [ %.sroa.010.1.i.i, %.preheader.i.i ], [ %.sroa.010.0.i.i, %bb.t ]
  %.sroa.010.1.i.i = getelementptr i8, ptr %.sroa.010.0.pn.i.i, i64 -40 ; 6 uses
  %i.bz = tail call noundef zeroext i1 %3(ptr noundef align 8 dereferenceable(40) %0, ptr noundef align 8 dereferenceable(40) %.sroa.010.1.i.i), !inline_history !2038
  br i1 %i.bz, label %.preheader.i.i, label %bb.u, !llvm.loop !2040

bb.u:                                             ; preds = %.preheader.i.i
  %i.ca = icmp ult ptr %.sroa.012.1.i.i, %.sroa.010.1.i.i
  br i1 %i.ca, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN5QListI16QCPFinancialDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEET_SC_SC_T0_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.062.0.copyload = load <5 x double>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(40) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.010.1.i.i, i64 40, i1 false)
end_hunk_4
