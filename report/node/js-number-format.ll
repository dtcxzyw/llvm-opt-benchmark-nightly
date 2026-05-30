inline.NumInlined: 3488
inline.NumDeleted: 1452
begin_hunk_0_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE9NewNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEEd:bb.a
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit
  %i.n = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #22
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.j, %_ZN2v88internal18DoubleToSmiIntegerEdPi.exit ] ; 3 uses
  %i.o = ptrtoint ptr %.0.i.i to i64
  %i.p = add i64 %i.o, 8
  %i.q = inttoptr i64 %i.p to ptr
  store ptr %i.q, ptr %i.i, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  br label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal11IsSmiDoubleEd.exit.i, %bb.b, %bb.a
  %i.r = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #22 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %1, ptr %i.v, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.0.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.r, %bb.d ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v88internal14StringToBigIntEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef, ptr) local_unnamed_addr #2

declare void @_ZN6icu_7811FormattableC1Ed(ptr noundef nonnull align 8 dereferenceable(112), double noundef) unnamed_addr #2

declare void @_ZN6icu_7811FormattableC1ENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21FlattenRegionsToPartsEPSt6vectorINS0_16NumberFormatSpanESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.636") align 8 captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.v8::internal::NumberFormatSpan", align 4 ; 4 uses
  %3 = alloca %"struct.v8::internal::NumberFormatSpan", align 4 ; 4 uses
  %i.a = load ptr, ptr %1, align 8                ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.k, ptr nonnull @_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_)
  %i.l = icmp sgt i64 %i.g, 192
  %scevgep.i = getelementptr i8, ptr %i.a, i64 12 ; 3 uses
  br i1 %i.l, label %.lr.ph.i.i, label %bb.z

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.sroa.0.020.i.idx.i = phi i64 [ 12, %.lr.ph.i.i ], [ %.sroa.0.020.i.add.i, %bb.q ] ; 4 uses
  %.pn19.i.i = phi ptr [ %i.a, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.q ] ; 5 uses
  %.sroa.0.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.020.i.idx.i ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.ptr.i, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 7 uses
  %i.q = load i32, ptr %i.m, align 4              ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp sgt i32 %i.p, %i.q
  %.sroa.8121.0..sroa.0.020.i.ptr.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.ptr.i, i64 8
  %.sroa.8121.0.copyload.pre = load i32, ptr %.sroa.8121.0..sroa.0.020.i.ptr.i.sroa_idx.phi.trans.insert, align 4 ; 7 uses
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.n, align 4              ; 2 uses
  %i.u = icmp slt i32 %.sroa.8121.0.copyload.pre, %i.t
  br i1 %i.u, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp sgt i32 %.sroa.8121.0.copyload.pre, %i.t
  br i1 %i.v, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86: ; preds = %bb.f
  %i.w = load i32, ptr %.sroa.0.020.i.ptr.i, align 4
  %i.x = load i32, ptr %i.a, align 4
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread: ; preds = %bb.f, %bb.c, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.020.i.ptr.i, i64 12, i1 false)
  %i.z = icmp samesign ugt i64 %.sroa.0.020.i.idx.i, 12
  br i1 %i.z, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %.sroa.0.020.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aa, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.q

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144: ; preds = %bb.d, %bb.e, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86
  %.sroa.0115.0.copyload = load i32, ptr %.sroa.0.020.i.ptr.i, align 4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = icmp slt i32 %i.p, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.preheader, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144
  %i.ae = icmp sgt i32 %i.p, %i.ac
  br i1 %i.ae, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 8
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp slt i32 %.sroa.8121.0.copyload.pre, %i.ag
  br i1 %i.ah, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp sgt i32 %.sroa.8121.0.copyload.pre, %i.ag
  br i1 %i.ai, label %.lr.ph.i.i.i.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %.pn19.i.i, align 4
  %i.ak = icmp slt i32 %.sroa.0115.0.copyload, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit86.thread144, %bb.l
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.backedge, %.lr.ph.i.i.i.preheader
  %.sroa.0.09.i.i.i = phi ptr [ %.pn19.i.i, %.lr.ph.i.i.i.preheader ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.backedge ] ; 8 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %.lr.ph.i.i.i.preheader ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.09.i.i.i, i64 12, i1 false)
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -12 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -8
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %.lr.ph.i.i.i.backedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = icmp slt i32 %.sroa.8121.0.copyload.pre, %i.aq
  br i1 %i.ar, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = icmp sgt i32 %.sroa.8121.0.copyload.pre, %i.aq
  br i1 %i.as, label %.lr.ph.i.i.i.backedge, label %bb.p

.lr.ph.i.i.i.backedge:                            ; preds = %bb.o, %.lr.ph.i.i.i, %bb.p
  br label %.lr.ph.i.i.i, !llvm.loop !229

bb.p:                                             ; preds = %bb.o
  %i.at = load i32, ptr %.sroa.0.0.i.i.i, align 4
  %i.au = icmp slt i32 %.sroa.0115.0.copyload, %i.at
  br i1 %i.au, label %.lr.ph.i.i.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i: ; preds = %bb.n, %bb.m, %bb.p, %bb.j, %bb.i, %bb.l
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %bb.l ], [ %.sroa.0.020.i.ptr.i, %bb.i ], [ %.sroa.0.020.i.ptr.i, %bb.j ], [ %.sroa.0.09.i.i.i, %bb.p ], [ %.sroa.0.09.i.i.i, %bb.m ], [ %.sroa.0.09.i.i.i, %bb.n ] ; 3 uses
  store i32 %.sroa.0115.0.copyload, ptr %.sroa.04.0.lcssa.i.i.i, align 4
  %.sroa.6118.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 4
  store i32 %i.p, ptr %.sroa.6118.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 4
  %.sroa.8121.0..sroa.04.0.lcssa.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i, i64 8
  store i32 %.sroa.8121.0.copyload.pre, ptr %.sroa.8121.0..sroa.04.0.lcssa.i.i.i.sroa_idx, align 4
  br label %bb.q

bb.q:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i
  %.sroa.0.020.i.add.i = add nuw nsw i64 %.sroa.0.020.i.idx.i, 12 ; 2 uses
  %i.av = icmp eq i64 %.sroa.0.020.i.add.i, 192
  br i1 %i.av, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, label %bb.c, !llvm.loop !230

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i: ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i
  %.sroa.0.07.i.i = phi ptr [ %i.bs, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.aw, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ] ; 10 uses
  %.sroa.0124.0.copyload = load i32, ptr %.sroa.0.07.i.i, align 4 ; 3 uses
  %.sroa.6127.0..sroa.0.07.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %4 = load <2 x i32>, ptr %.sroa.6127.0..sroa.0.07.i.i.sroa_idx, align 4 ; 3 uses
  %5 = extractelement <2 x i32> %4, i64 1         ; 4 uses
  %6 = extractelement <2 x i32> %4, i64 0         ; 4 uses
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -12 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -8
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = icmp slt i32 %6, %i.az
  br i1 %i.ba, label %.lr.ph.i.i13.i.preheader, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i10.i
  %i.bb = icmp sgt i32 %6, %i.az
  br i1 %i.bb, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = icmp slt i32 %5, %i.bd
  br i1 %i.be, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = icmp sgt i32 %5, %i.bd
  br i1 %i.bf, label %.lr.ph.i.i13.i.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load i32, ptr %.sroa.0.07.i.i.i, align 4
  %i.bh = icmp slt i32 %.sroa.0124.0.copyload, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i13.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i13.i.preheader:                         ; preds = %bb.t, %.lr.ph.i10.i, %bb.u
  br label %.lr.ph.i.i13.i

.lr.ph.i.i13.i:                                   ; preds = %.lr.ph.i.i13.i.backedge, %.lr.ph.i.i13.i.preheader
  %.sroa.0.09.i.i14.i = phi ptr [ %.sroa.0.07.i.i.i, %.lr.ph.i.i13.i.preheader ], [ %.sroa.0.0.i.i16.i, %.lr.ph.i.i13.i.backedge ] ; 8 uses
  %.sroa.04.08.i.i15.i = phi ptr [ %.sroa.0.07.i.i, %.lr.ph.i.i13.i.preheader ], [ %.sroa.0.09.i.i14.i, %.lr.ph.i.i13.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i15.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.09.i.i14.i, i64 12, i1 false)
  %.sroa.0.0.i.i16.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -12 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -8
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = icmp slt i32 %6, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i13.i.backedge, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i13.i
  %i.bl = icmp sgt i32 %6, %i.bj
  br i1 %i.bl, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp slt i32 %5, %i.bn
  br i1 %i.bo, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = icmp sgt i32 %5, %i.bn
  br i1 %i.bp, label %.lr.ph.i.i13.i.backedge, label %bb.y

.lr.ph.i.i13.i.backedge:                          ; preds = %bb.x, %.lr.ph.i.i13.i, %bb.y
  br label %.lr.ph.i.i13.i, !llvm.loop !229

bb.y:                                             ; preds = %bb.x
  %i.bq = load i32, ptr %.sroa.0.0.i.i16.i, align 4
  %i.br = icmp slt i32 %.sroa.0124.0.copyload, %i.bq
  br i1 %i.br, label %.lr.ph.i.i13.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i: ; preds = %bb.w, %bb.v, %bb.y, %bb.s, %bb.r, %bb.u
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.07.i.i, %bb.u ], [ %.sroa.0.07.i.i, %bb.r ], [ %.sroa.0.07.i.i, %bb.s ], [ %.sroa.0.09.i.i14.i, %bb.y ], [ %.sroa.0.09.i.i14.i, %bb.v ], [ %.sroa.0.09.i.i14.i, %bb.w ] ; 2 uses
  store i32 %.sroa.0124.0.copyload, ptr %.sroa.04.0.lcssa.i.i12.i, align 4
  %.sroa.8130.0..sroa.04.0.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 4
  store <2 x i32> %4, ptr %.sroa.8130.0..sroa.04.0.lcssa.i.i12.i.sroa_idx, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.c
  br i1 %i.bt, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph.i10.i, !llvm.loop !231

bb.z:                                             ; preds = %bb.b
  %i.bu = icmp eq ptr %scevgep.i, %i.c
  br i1 %i.bu, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %bb.ao
  %.sroa.0.020.i20.i = phi ptr [ %.sroa.0.0.i24.i, %bb.ao ], [ %scevgep.i, %.lr.ph.i19.i.preheader ] ; 12 uses
  %.pn19.i21.i = phi ptr [ %.sroa.0.020.i20.i, %bb.ao ], [ %i.a, %.lr.ph.i19.i.preheader ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 4
  %i.by = load i32, ptr %i.bx, align 4            ; 7 uses
  %i.bz = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i19.i
  %i.cb = icmp sgt i32 %i.by, %i.bz
  %.sroa.8139.0..sroa.0.020.i20.i.sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 8
  %.sroa.8139.0.copyload.pre = load i32, ptr %.sroa.8139.0..sroa.0.020.i20.i.sroa_idx.phi.trans.insert, align 4 ; 7 uses
  br i1 %i.cb, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.cd = icmp slt i32 %.sroa.8139.0.copyload.pre, %i.cc
  br i1 %i.cd, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = icmp sgt i32 %.sroa.8139.0.copyload.pre, %i.cc
  br i1 %i.ce, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76: ; preds = %bb.ac
  %i.cf = load i32, ptr %.sroa.0.020.i20.i, align 4
  %i.cg = load i32, ptr %i.a, align 4
  %i.ch = icmp slt i32 %i.cf, %i.cg
  br i1 %i.ch, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread, label %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread: ; preds = %bb.ac, %.lr.ph.i19.i, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.020.i20.i, i64 12, i1 false)
  %i.ci = ptrtoint ptr %.sroa.0.020.i20.i to i64
  %i.cj = sub i64 %i.ci, %i.f                     ; 4 uses
  %i.ck = icmp sgt i64 %i.cj, 12
  br i1 %i.ck, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 24
  %.neg24.i30.i = udiv exact i64 %i.cj, 12
  %.neg24.neg.i31.i = sub nsw i64 0, %.neg24.i30.i
  %i.cm = getelementptr inbounds [12 x i8], ptr %i.cl, i64 %.neg24.neg.i31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cm, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.cj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i

bb.ae:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread
  %i.cn = icmp eq i64 %i.cj, 12
  br i1 %i.cn, label %bb.af, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.co, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i: ; preds = %bb.af, %bb.ae, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ao

_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152: ; preds = %bb.aa, %bb.ab, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76
  %.sroa.0133.0.copyload = load i32, ptr %.sroa.0.020.i20.i, align 4 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 4
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = icmp slt i32 %i.by, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i25.i.preheader, label %bb.ag

bb.ag:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152
  %i.cs = icmp sgt i32 %i.by, %i.cq
  br i1 %i.cs, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn19.i21.i, i64 8
  %i.cu = load i32, ptr %i.ct, align 4            ; 2 uses
  %i.cv = icmp slt i32 %.sroa.8139.0.copyload.pre, %i.cu
  br i1 %i.cv, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = icmp sgt i32 %.sroa.8139.0.copyload.pre, %i.cu
  br i1 %i.cw, label %.lr.ph.i.i25.i.preheader, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = load i32, ptr %.pn19.i21.i, align 4
  %i.cy = icmp slt i32 %.sroa.0133.0.copyload, %i.cx
  br i1 %i.cy, label %.lr.ph.i.i25.i.preheader, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i25.i.preheader:                         ; preds = %bb.ai, %_ZN2v88internal12_GLOBAL__N_120cmp_NumberFormatSpanERKNS0_16NumberFormatSpanES4_.exit76.thread152, %bb.aj
  br label %.lr.ph.i.i25.i

.lr.ph.i.i25.i:                                   ; preds = %.lr.ph.i.i25.i.backedge, %.lr.ph.i.i25.i.preheader
  %.sroa.0.09.i.i26.i = phi ptr [ %.pn19.i21.i, %.lr.ph.i.i25.i.preheader ], [ %.sroa.0.0.i.i28.i, %.lr.ph.i.i25.i.backedge ] ; 8 uses
  %.sroa.04.08.i.i27.i = phi ptr [ %.sroa.0.020.i20.i, %.lr.ph.i.i25.i.preheader ], [ %.sroa.0.09.i.i26.i, %.lr.ph.i.i25.i.backedge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i27.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.09.i.i26.i, i64 12, i1 false)
  %.sroa.0.0.i.i28.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -12 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -8
  %i.da = load i32, ptr %i.cz, align 4            ; 2 uses
  %i.db = icmp slt i32 %i.by, %i.da
  br i1 %i.db, label %.lr.ph.i.i25.i.backedge, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i25.i
  %i.dc = icmp sgt i32 %i.by, %i.da
  br i1 %i.dc, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -4
  %i.de = load i32, ptr %i.dd, align 4            ; 2 uses
  %i.df = icmp slt i32 %.sroa.8139.0.copyload.pre, %i.de
  br i1 %i.df, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = icmp sgt i32 %.sroa.8139.0.copyload.pre, %i.de
  br i1 %i.dg, label %.lr.ph.i.i25.i.backedge, label %bb.an

.lr.ph.i.i25.i.backedge:                          ; preds = %bb.am, %.lr.ph.i.i25.i, %bb.an
  br label %.lr.ph.i.i25.i, !llvm.loop !229

bb.an:                                            ; preds = %bb.am
  %i.dh = load i32, ptr %.sroa.0.0.i.i28.i, align 4
  %i.di = icmp slt i32 %.sroa.0133.0.copyload, %i.dh
  br i1 %i.di, label %.lr.ph.i.i25.i.backedge, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i: ; preds = %bb.al, %bb.ak, %bb.an, %bb.ah, %bb.ag, %bb.aj
  %.sroa.04.0.lcssa.i.i23.i = phi ptr [ %.sroa.0.020.i20.i, %bb.aj ], [ %.sroa.0.020.i20.i, %bb.ag ], [ %.sroa.0.020.i20.i, %bb.ah ], [ %.sroa.0.09.i.i26.i, %bb.an ], [ %.sroa.0.09.i.i26.i, %bb.ak ], [ %.sroa.0.09.i.i26.i, %bb.al ] ; 3 uses
  store i32 %.sroa.0133.0.copyload, ptr %.sroa.04.0.lcssa.i.i23.i, align 4
  %.sroa.6136.0..sroa.04.0.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i23.i, i64 4
  store i32 %i.by, ptr %.sroa.6136.0..sroa.04.0.lcssa.i.i23.i.sroa_idx, align 4
  %.sroa.8139.0..sroa.04.0.lcssa.i.i23.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i23.i, i64 8
  store i32 %.sroa.8139.0.copyload.pre, ptr %.sroa.8139.0..sroa.04.0.lcssa.i.i23.i.sroa_idx, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i29.i
  %.sroa.0.0.i24.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i20.i, i64 12 ; 2 uses
  %i.dj = icmp eq ptr %.sroa.0.0.i24.i, %i.c
  br i1 %i.dj, label %_ZNSt6vectorImSaImEE9push_backEOm.exit, label %.lr.ph.i19.i, !llvm.loop !230

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.ao, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal16NumberFormatSpanESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %bb.z
  %i.dk = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #24 ; 4 uses
  store i64 0, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dm = load ptr, ptr %1, align 8               ; 4 uses
  %.not.i.i46.not = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i46.not, label %bb.ap, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit

bb.ap:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.119, i64 noundef 0, i64 noundef 0) #23
  unreachable

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.dm, align 4
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.724.0.copyload = load i32, ptr %.sroa.724.0..sroa_idx, align 4 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.do = icmp sgt i32 %.sroa.724.0.copyload, 0
  br i1 %i.do, label %.lr.ph192, label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph192:                                        ; preds = %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph192, %bb.bl
  %i.dr = phi ptr [ %i.dm, %.lr.ph192 ], [ %i.hh, %bb.bl ] ; 2 uses
  %i.ds = phi ptr [ %i.dl, %.lr.ph192 ], [ %i.hi, %bb.bl ]
  %.043191 = phi i32 [ 0, %.lr.ph192 ], [ %.3, %bb.bl ] ; 4 uses
  %.sroa.724.0190 = phi i32 [ %.sroa.724.0.copyload, %.lr.ph192 ], [ %.sroa.724.3, %bb.bl ] ; 4 uses
  %.044189 = phi i64 [ 1, %.lr.ph192 ], [ %.145, %bb.bl ] ; 8 uses
  %.sroa.0.0188 = phi i32 [ %.sroa.0.0.copyload, %.lr.ph192 ], [ %.sroa.0.3, %bb.bl ] ; 3 uses
  %.sroa.0104.0187 = phi ptr [ %i.dk, %.lr.ph192 ], [ %.sroa.0104.1, %bb.bl ] ; 5 uses
  %.sroa.8.0186 = phi ptr [ %i.dn, %.lr.ph192 ], [ %.sroa.8.3, %bb.bl ] ; 3 uses
  %.sroa.20.0185 = phi ptr [ %i.dn, %.lr.ph192 ], [ %.sroa.20.1, %bb.bl ] ; 4 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = sdiv exact i64 %i.dv, 12
  %i.dx = icmp ult i64 %.044189, %i.dw
  br i1 %i.dx, label %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit48, label %bb.ar

_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit48: ; preds = %bb.aq
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dr, i64 %.044189
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit48
  %.0 = phi i32 [ %i.ea, %_ZNSt6vectorIN2v88internal16NumberFormatSpanESaIS2_EE2atEm.exit48 ], [ %.sroa.724.0.copyload, %bb.aq ] ; 8 uses
  %i.eb = icmp slt i32 %.043191, %.0
end_hunk_0
