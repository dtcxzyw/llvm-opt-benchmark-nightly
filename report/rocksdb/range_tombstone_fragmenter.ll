Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/range_tombstone_fragmenter?download=true
inline.NumInlined: 2986
inline.NumDeleted: 1012
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb32FragmentedRangeTombstoneIterator14SeekToTopFirstEv:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #3 comdat align 2 {
_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !148  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118
  %.idx45 = shl nsw i64 %i.f, 3
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %.idx45 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !149  ; 2 uses
  %i.l = sub nsw i64 %i.k, %i.f                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmSt7greaterImEET_SA_SA_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !103
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.p = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !103
  %i.s = icmp ugt i64 %i.r, %i.o                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = xor i64 %i.p, -1
  %i.v = add nsw i64 %.016.i.i, %i.u
  %.sroa.011.1.i.i = select i1 %i.s, ptr %i.t, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.s, i64 %i.v, i64 %i.p    ; 2 uses
  %i.w = icmp sgt i64 %.1.i.i, 0
  br i1 %i.w, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmSt7greaterImEET_SA_SA_RKT0_T1_.exit, !llvm.loop !306

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmSt7greaterImEET_SA_SA_RKT0_T1_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.i, %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %.sroa.011.0.lcssa.i.i, ptr %i.x, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !175  ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmSt7greaterImEET_SA_SA_RKT0_T1_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit

_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit: ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117 ; 2 uses
  %.idx46 = shl nsw i64 %i.f, 4
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %.idx46 ; 2 uses
  %i.ag = sub nsw i64 %i.k, %i.f                  ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit27

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i23, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.sroa.012.016.i.i = phi ptr [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.012.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %i.aj = lshr i64 %.017.i.i, 1                   ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.sroa.012.016.i.i, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !171 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 224
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.z), !inline_history !307
  %i.aq = icmp sgt i32 %i.ap, 0                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.as = xor i64 %i.aj, -1
  %i.at = add nsw i64 %.017.i.i, %i.as
  %.sroa.012.1.i.i = select i1 %i.aq, ptr %i.ar, ptr %.sroa.012.016.i.i ; 2 uses
  %.1.i.i23 = select i1 %i.aq, i64 %i.at, i64 %i.aj ; 2 uses
  %i.au = icmp sgt i64 %.1.i.i23, 0
  br i1 %i.au, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEES3_ZNS2_32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEvEUlRS4_SB_E_ET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !308

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEES3_ZNS2_32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEvEUlRS4_SB_E_ET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !172 ; 2 uses
  %.pre38 = load ptr, ptr %i.c, align 8, !tbaa !180
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre38, i64 32
  %.pre39 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !148
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8, !tbaa !117
  br label %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit27

_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit27: ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEES3_ZNS2_32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEvEUlRS4_SB_E_ET_SD_SD_RKT0_T1_.exit.loopexit
  %i.av = phi ptr [ %i.ae, %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit ], [ %.pre41, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEES3_ZNS2_32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEvEUlRS4_SB_E_ET_SD_SD_RKT0_T1_.exit.loopexit ]
  %i.aw = phi i64 [ %i.f, %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit ], [ %.pre39, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEES3_ZNS2_32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEvEUlRS4_SB_E_ET_SD_SD_RKT0_T1_.exit.loopexit ] ; 3 uses
  %i.ax = phi ptr [ %i.b, %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit ], [ %.pre, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEES3_ZNS2_32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEvEUlRS4_SB_E_ET_SD_SD_RKT0_T1_.exit.loopexit ]
  %.sroa.012.0.lcssa.i.i = phi ptr [ %i.af, %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit ], [ %.sroa.012.1.i.i, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEES3_ZNS2_32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEvEUlRS4_SB_E_ET_SD_SD_RKT0_T1_.exit.loopexit ]
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.av, i64 %i.aw
  %i.az = ptrtoint ptr %.sroa.012.0.lcssa.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !118 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.aw
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !118
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = icmp slt i64 %i.bk, %i.bc
  br i1 %i.bl, label %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit35, label %bb.b

_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit35: ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit27
  %i.bm = getelementptr [8 x i8], ptr %i.be, i64 %i.bc
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %i.aw
  store ptr %i.bn, ptr %i.x, align 8, !tbaa !118
  br label %bb.b

bb.b:                                             ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList7ts_iterEm.exit27, %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit35, %bb.a, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmSt7greaterImEET_SA_SA_RKT0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb32FragmentedRangeTombstoneIterator29ScanForwardToVisibleTombstoneEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !179  ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit

_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit: ; preds = %.lr.ph, %bb.d
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.ag, %bb.d ] ; 2 uses
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.ae, %bb.d ]
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.ad, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !103
  %i.u = load i64, ptr %i.i, align 8, !tbaa !174
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.a, align 8, !tbaa !180
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !179  ; 3 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge2
  store ptr %i.x, ptr %i.a, align 8, !tbaa !179
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118 ; 2 uses
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !118
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !118
  br label %.critedge

bb.d:                                             ; preds = %.critedge2
  tail call void @_ZN7rocksdb32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !179 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %.critedge, label %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit, !llvm.loop !5

.critedge:                                        ; preds = %bb.b, %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7rocksdb32FragmentedRangeTombstoneIterator10SeekToLastEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) initializes((136, 152)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %1 = tail call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.c, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !152
  %2 = shufflevector <4 x ptr> %1, <4 x ptr> poison, <2 x i32> <i32 0, i32 3>
  %3 = getelementptr inbounds i8, <2 x ptr> %2, <2 x i64> <i64 -48, i64 -8>
  store <2 x ptr> %3, ptr %i.d, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb32FragmentedRangeTombstoneIterator13SeekToTopLastEv(ptr noundef nonnull align 8 dereferenceable(200) initializes((136, 144)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179  ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.e, ptr %i.g, align 8, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.i, ptr %i.j, align 8, !tbaa !118
  br label %_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !179
  tail call void @_ZN7rocksdb32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !179  ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !179  ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit.i

_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit.i: ; preds = %bb.f, %.lr.ph.i
  %i.t = phi ptr [ %i.p, %.lr.ph.i ], [ %i.ao, %bb.f ] ; 3 uses
  %i.u = phi ptr [ %i.o, %.lr.ph.i ], [ %i.an, %bb.f ] ; 2 uses
  %i.v = phi ptr [ %i.m, %.lr.ph.i ], [ %i.al, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !149
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !118 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.aa
  br i1 %i.ac, label %.critedge2.i, label %bb.d

bb.d:                                             ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !103
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !174
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %.critedge2.i, label %_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv.exit

.critedge2.i:                                     ; preds = %bb.d, %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit.i
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !179
  %i.ah = icmp eq ptr %i.t, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge2.i
  store ptr %i.u, ptr %i.l, align 8, !tbaa !179
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118 ; 2 uses
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !118
  br label %_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv.exit.sink.split

bb.f:                                             ; preds = %.critedge2.i
  %i.ak = getelementptr inbounds i8, ptr %i.t, i64 -48
  store ptr %i.ak, ptr %i.l, align 8, !tbaa !180
  tail call void @_ZN7rocksdb32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !172 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !179 ; 2 uses
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !179 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.an
  br i1 %i.ap, label %_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv.exit, label %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit.i, !llvm.loop !6

_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv.exit.sink.split: ; preds = %bb.b, %bb.e
  %.lcssa16.sink = phi ptr [ %i.u, %bb.e ], [ %i.e, %bb.b ]
  %.sink = phi ptr [ %i.aj, %bb.e ], [ %i.i, %bb.b ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.lcssa16.sink, ptr %i.aq, align 8, !tbaa !179
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sink, ptr %i.ar, align 8, !tbaa !118
  br label %_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv.exit

_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv.exit: ; preds = %bb.f, %bb.d, %_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv.exit.sink.split, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb32FragmentedRangeTombstoneIterator30ScanBackwardToVisibleTombstoneEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179  ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !179  ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit

_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit: ; preds = %.lr.ph, %bb.d
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.ag, %bb.d ] ; 3 uses
  %i.k = phi ptr [ %i.e, %.lr.ph ], [ %i.af, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.ad, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.q = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !103
  %i.u = load i64, ptr %i.i, align 8, !tbaa !174
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit, %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !179
  %i.x = icmp eq ptr %i.j, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge2
  store ptr %i.k, ptr %i.a, align 8, !tbaa !179
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118  ; 2 uses
  store ptr %i.z, ptr %i.h, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %i.aa, align 8, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !118
  br label %.critedge

bb.d:                                             ; preds = %.critedge2
  %i.ac = getelementptr inbounds i8, ptr %i.j, i64 -48
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !180
  tail call void @_ZN7rocksdb32FragmentedRangeTombstoneIterator28SetMaxVisibleSeqAndTimestampEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !172 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !179 ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !179 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %.critedge, label %_ZNK7rocksdb28FragmentedRangeTombstoneList8seq_iterEm.exit, !llvm.loop !6

.critedge:                                        ; preds = %bb.b, %bb.d, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb32FragmentedRangeTombstoneIterator4SeekERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179  ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.e, ptr %i.g, align 8, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.i, ptr %i.j, align 8, !tbaa !118
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.e, ptr %i.k, align 8, !tbaa !179
  br label %_ZN7rocksdb32FragmentedRangeTombstoneIterator29ScanForwardToVisibleTombstoneEv.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !141 ; 2 uses
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEENS2_5SliceENS2_32FragmentedRangeTombstoneIterator32RangeTombstoneStackEndComparatorEET_SE_SE_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.c
  %i.q = udiv exact i64 %i.o, 48
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.q, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.sroa.012.016.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb28FragmentedRangeTombstoneList19RangeTombstoneStackESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
end_hunk_0
