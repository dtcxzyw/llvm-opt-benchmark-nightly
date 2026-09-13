Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/smt2_printer?download=true
inline.NumInlined: 2054
inline.NumDeleted: 884
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_RT0_:bb.a
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  %i.ab = load i64, ptr %i.z, align 8
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !13

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !65
  %i.ag = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02.0.copyload.us)
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  %i.ai = load i64, ptr %i.ae, align 8
  store i64 %i.ai, ptr %i.ah, align 8
  %i.aj = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit.us, !llvm.loop !14

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  %i.al = ptrtoint ptr %.sroa.02.0.copyload.us to i64
  store i64 %i.al, ptr %i.ak, align 8
  %.not.us = icmp eq i64 %.09.us, 0
  %i.am = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !297

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit
  %.09 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %.sroa.02.0.copyload = load ptr, ptr %i.an, align 8 ; 2 uses
  %i.ao = icmp slt i64 %.09, %i.i
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %.split ] ; 2 uses
  %i.ap = shl i64 %.036.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.aw = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i
  %i.az = load i64, ptr %i.ax, align 8
  store i64 %i.az, ptr %i.ay, align 8
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.09, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load i64, ptr %i.n, align 8
  store i64 %i.bc, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.09
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65
  %i.bg = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.02.0.copyload)
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  %i.bi = load i64, ptr %i.be, align 8
  store i64 %i.bi, ptr %i.bh, align 8
  %i.bj = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit, !llvm.loop !14

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  %i.bl = ptrtoint ptr %.sroa.02.0.copyload to i64
  store i64 %i.bl, ptr %i.bk, align 8
  %.not = icmp eq i64 %.09, 0
  %i.bm = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !297

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_less_iterEEvT_T0_SF_T1_T2_.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN4bzla4NodeEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_SE_SE_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !65
  %i.b = load ptr, ptr %2, align 8, !tbaa !65
  %i.c = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !65
  %i.f = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.g = load i64, ptr %2, align 8
  store i64 %i.g, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %2, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !65
  %i.i = load ptr, ptr %3, align 8, !tbaa !65
  %i.j = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.sroa.0.0.copyload.i.i26 = load ptr, ptr %0, align 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %3, align 8
  store i64 %i.k, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i26, ptr %3, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.l = load i64, ptr %1, align 8
  store i64 %i.l, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i26, ptr %1, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !65
  %i.n = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i28 = load ptr, ptr %0, align 8
  %i.o = load i64, ptr %1, align 8
  store i64 %i.o, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i28, ptr %1, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %2, align 8, !tbaa !65
  %i.q = load ptr, ptr %3, align 8, !tbaa !65
  %i.r = tail call noundef zeroext i1 @_ZN4bzlaltERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %.sroa.0.0.copyload.i.i29 = load ptr, ptr %0, align 8 ; 2 uses
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = load i64, ptr %3, align 8
  store i64 %i.s, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i29, ptr %3, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.t = load i64, ptr %2, align 8
  store i64 %i.t, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i29, ptr %2, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %4 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %5 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %6 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %8 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %9 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %10 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %11 = alloca %"class.bzla::Node", align 8       ; 6 uses
  %12 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %13 = alloca %"class.bzla::Node", align 8       ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph145

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEET_SJ_SJ_T0_.exit"
  %i.h = icmp eq i64 %i.x, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph145, !llvm.loop !298

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa125 = phi i64 [ %i.d, %.lr.ph ], [ %i.bv, %bb.b ] ; 2 uses
  %storemerge56.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.i = add nsw i64 %.lcssa125, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %._crit_edge
  %.012.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i.i.i
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_T0_SK_T1_T2_"(ptr nonnull %0, i64 noundef %.012.i.i.i, i64 noundef %.lcssa125, ptr noundef align 8 %13)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  %i.l = add nsw i64 %.012.i.i.i, -1
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_RT0_.exit.i.i", label %bb.c, !llvm.loop !299

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  br label %bb.h

common.resume:                                    ; preds = %bb.q, %bb.u, %bb.x, %bb.ab, %bb.af, %bb.ai, %bb.an, %bb.h, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.h ], [ %.pn.i.i10.i, %bb.m ], [ %i.bs, %bb.an ], [ %i.aj, %bb.q ], [ %i.ap, %bb.u ], [ %i.as, %bb.x ], [ %i.ay, %bb.ab ], [ %i.be, %bb.af ], [ %i.bh, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i.i.i = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.m, %bb.f ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %common.resume

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_RT0_.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_RT0_.exit.i11.i"
  %.sroa.0.03.i.i = phi ptr [ %i.o, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_RT0_.exit.i11.i" ], [ %storemerge56.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_RT0_.exit.i.i" ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %.lr.ph.i9.i
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_T0_SK_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef align 8 %11)
          to label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_RT0_.exit.i11.i" unwind label %bb.l

bb.k:                                             ; preds = %bb.i, %.lr.ph.i9.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i10.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.t, %bb.k ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_RT0_.exit.i11.i": ; preds = %bb.j
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.v = icmp sgt i64 %i.r, 8
  br i1 %i.v, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !300

.lr.ph145:                                        ; preds = %.lr.ph, %bb.b
  %storemerge56144 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.057143 = phi i64 [ %i.x, %bb.b ], [ %2, %.lr.ph ]
  %i.w = phi i64 [ %i.bv, %bb.b ], [ %i.d, %.lr.ph ]
  %i.x = add nsw i64 %.057143, -1                 ; 3 uses
  %i.y = lshr i64 %i.w, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y ; 7 uses
  %i.aa = getelementptr inbounds i8, ptr %storemerge56144, i64 -8 ; 8 uses
  %i.ab = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.ac = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.n, label %bb.y

bb.n:                                             ; preds = %.lr.ph145
  %i.ae = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.af = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i.i unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i.i: ; preds = %bb.p
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.n
  %i.ak = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.al = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit26.i.i unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit26.i.i: ; preds = %bb.t
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.w unwind label %bb.x       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit27.i.i unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit27.i.i: ; preds = %bb.w
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.y:                                             ; preds = %.lr.ph145
  %i.at = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.au = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.aa unwind label %bb.ab     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit28.i.i unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit28.i.i: ; preds = %bb.aa
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.ac:                                            ; preds = %bb.y
  %i.az = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ba = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit29.i.i unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit29.i.i: ; preds = %bb.ae
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.ah unwind label %bb.ai     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit30.i.i unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit30.i.i: ; preds = %bb.ah
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit30.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit29.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit28.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit27.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit26.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i13.i
  %.sroa.010.0.i.i = phi ptr [ %i.bl, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i13.i ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i13.i ], [ %storemerge56144, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.bl, %bb.aj ] ; 9 uses
  %i.bi = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.1.i.i)
  %i.bj = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bk = icmp ult i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.bk, label %bb.aj, label %.preheader.i.i, !llvm.loop !301

.preheader.i.i:                                   ; preds = %bb.aj, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.aj ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.bm = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bn = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i)
  %i.bo = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.ak, !llvm.loop !302

bb.ak:                                            ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bp, label %bb.al, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEET_SJ_SJ_T0_.exit"

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.1.i.i)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i)
          to label %bb.am unwind label %bb.an     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i13.i unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %common.resume

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit.i13.i: ; preds = %bb.am
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !303

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEET_SJ_SJ_T0_.exit": ; preds = %bb.ak
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge56144, i64 noundef %i.x)
  %i.bt = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bu = sub i64 %i.bt, %i.a
  %i.bv = ashr exact i64 %i.bu, 3                 ; 3 uses
  %i.bw = icmp sgt i64 %i.bv, 16
  br i1 %i.bw, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !298

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_SJ_RT0_.exit.i11.i", %bb.a
  ret void
}

declare void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_T0_SK_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.bzla::Node", align 8        ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.038 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.038, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = tail call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.j = tail call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.k = icmp ult i64 %i.i, %i.j
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %.038
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 0 uses
  %i.o = icmp slt i64 %spec.select, %i.b
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !304

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.p = and i64 %2, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.r = add nsw i64 %2, -2
  %i.s = ashr exact i64 %i.r, 1
  %i.t = icmp eq i64 %.0.lcssa, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = shl nsw i64 %.0.lcssa, 1
  %i.v = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.v, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.z = icmp sgt i64 %.1, %1
  br i1 %i.z, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d, %.noexc26
  %.010.i = phi i64 [ %.0911.i, %.noexc26 ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %i.ab = invoke noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  %i.ac = invoke noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %.noexc
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.noexc25
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %.noexc26 unwind label %.loopexit ; 0 uses

.noexc26:                                         ; preds = %bb.e
  %i.ag = icmp sgt i64 %.0911.i, %1
  br i1 %i.ag, label %.lr.ph.i, label %.critedge.i, !llvm.loop !305

.critedge.i:                                      ; preds = %.noexc26, %.noexc25, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %.noexc25 ], [ %.0911.i, %.noexc26 ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_T0_SK_T1_RT2_.exit" unwind label %.loopexit.split-lp ; 0 uses

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_T0_SK_T1_RT2_.exit": ; preds = %.critedge.i
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  ret void

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %.critedge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  resume { ptr, i32 } %lpad.phi
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_SJ_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.018 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.0.018, %1
  br i1 %.not19, label %.loopexit17, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.021 = phi ptr [ %.sroa.0.018, %.lr.ph ], [ %.sroa.0.0, %bb.g ] ; 7 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.021, %bb.g ]
  %i.c = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.021)
  %i.d = call noundef i64 @_ZNK4bzla4Node2idEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.021)
  %i.f = ptrtoint ptr %.sroa.0.021 to i64
  %i.g = sub i64 %i.f, %i.b
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit16

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.pn20, i64 16
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.noexc
  %.010.i.i.i.i.i = phi i64 [ %i.n, %.noexc ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.l, %.noexc ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ]
  %.078.i.i.i.i.i = phi ptr [ %i.k, %.noexc ], [ %.sroa.0.021, %.lr.ph.i.i.i.i.i.preheader ]
  %i.k = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i.i.i.i
  %i.n = add nsw i64 %.010.i.i.i.i.i, -1
  %i.o = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %.loopexit16, !llvm.loop !306

.loopexit16:                                      ; preds = %.noexc, %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %.loopexit16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.loopexit16
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %lpad.phi

bb.f:                                             ; preds = %bb.b
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4bzla4NodeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_11Smt2Printer13print_formulaERSoRKNS2_9backtrack13AssertionViewEE3$_0EEEvT_T0_"(ptr %.sroa.0.021)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit17, label %bb.b, !llvm.loop !307

.loopexit17:                                      ; preds = %bb.g, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
