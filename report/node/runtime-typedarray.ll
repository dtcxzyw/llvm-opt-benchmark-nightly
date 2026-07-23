inline.NumInlined: 1106
inline.NumDeleted: 583
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #10, !inline_history !38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZNK2v88internal12JSTypedArray4typeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_(float noundef %0, float noundef %1) #6 {
bb.a:
  %i.a = fcmp olt float %0, %1
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt float %0, %1
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp oeq float %0, 0.000000e+00
  %i.d = fcmp oeq float %0, %1
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = bitcast float %0 to i32
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.g = bitcast float %1 to i32
  %i.h = icmp sgt i32 %i.g, -1
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.i = fcmp ord float %0, 0.000000e+00
  %i.j = fcmp uno float %1, 0.000000e+00
  %or.cond19 = and i1 %i.i, %i.j
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %i.h, %bb.e ], [ %or.cond19, %bb.f ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_110CompareNumIdEEbT_S3_(double noundef %0, double noundef %1) #6 {
bb.a:
  %i.a = fcmp olt double %0, %1
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %0, %1
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp oeq double %0, 0.000000e+00
  %i.d = fcmp oeq double %0, %1
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = bitcast double %0 to i64
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.g = bitcast double %1 to i64
  %i.h = icmp sgt i64 %i.g, -1
  br label %.thread

bb.f:                                             ; preds = %bb.c
  %i.i = fcmp ord double %0, 0.000000e+00
  %i.j = fcmp uno double %1, 0.000000e+00
  %or.cond19 = and i1 %i.i, %i.j
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %i.h, %bb.e ], [ %or.cond19, %bb.f ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_122LessThanFloat16RawBitsEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) #6 {
bb.a:
  %i.a = insertelement <2 x i16> poison, i16 %0, i64 0
  %i.b = insertelement <2 x i16> %i.a, i16 %1, i64 1 ; 2 uses
  %i.c = zext <2 x i16> %i.b to <2 x i32>         ; 2 uses
  %i.d = sext <2 x i16> %i.b to <2 x i32>
  %i.e = shl <2 x i32> %i.c, splat (i32 17)       ; 2 uses
  %i.f = lshr exact <2 x i32> %i.e, splat (i32 4)
  %i.g = or disjoint <2 x i32> %i.f, splat (i32 1879048192)
  %i.h = bitcast <2 x i32> %i.g to <2 x float>
  %i.i = and <2 x i32> %i.c, splat (i32 32767)
  %i.j = or disjoint <2 x i32> %i.i, splat (i32 1056964608)
  %i.k = bitcast <2 x i32> %i.j to <2 x float>
  %i.l = icmp ult <2 x i32> %i.e, splat (i32 134217728)
  %i.m = fadd <2 x float> %i.k, splat (float -5.000000e-01)
  %i.n = fmul <2 x float> %i.h, splat (float 1.925930e-34)
  %i.o = select <2 x i1> %i.l, <2 x float> %i.m, <2 x float> %i.n
  %i.p = bitcast <2 x float> %i.o to <2 x i32>
  %i.q = and <2 x i32> %i.d, splat (i32 -2147483648)
  %i.r = or <2 x i32> %i.q, %i.p                  ; 3 uses
  %i.s = bitcast <2 x i32> %i.r to <2 x float>    ; 4 uses
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 4 uses
  %i.u = extractelement <2 x float> %i.s, i64 1   ; 3 uses
  %i.v = fcmp olt float %i.t, %i.u
  br i1 %i.v, label %_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = fcmp ogt float %i.t, %i.u
  br i1 %i.w, label %_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = fcmp oeq float %i.t, 0.000000e+00
  %i.y = fcmp oeq float %i.t, %i.u
  %or.cond.i = and i1 %i.x, %i.y
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = extractelement <2 x i32> %i.r, i64 0
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = extractelement <2 x i32> %i.r, i64 1
  %i.ac = icmp sgt i32 %i.ab, -1
  %spec.select = and i1 %i.aa, %i.ac
  br label %_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = fcmp ord <2 x float> %i.s, zeroinitializer
  %i.ae = fcmp uno <2 x float> %i.s, zeroinitializer
  %i.af = shufflevector <2 x i1> %i.ad, <2 x i1> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.ag = bitcast <2 x i1> %i.af to i2
  %or.cond19.i = icmp eq i2 %i.ag, -1
  br label %_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit

_ZN2v88internal12_GLOBAL__N_110CompareNumIfEEbT_S3_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.e
  %.1.i = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %spec.select, %bb.d ], [ %or.cond19.i, %bb.e ]
  ret i1 %.1.i
}

declare noundef i64 @_ZNK2v88internal12JSTypedArray34GetVariableByteLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPhlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPhN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.as, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = load i8, ptr %0, align 1
  store i8 %i.j, ptr %i.h, align 1
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 5 uses
  %i.m = add nsw i64 %i.l, -1
  %4 = lshr i64 %i.m, 1
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = getelementptr i8, ptr %0, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.q, align 1
  %i.u = load i8, ptr %i.s, align 1
  %i.v = icmp ult i8 %i.t, %i.u
  %i.w = or disjoint i64 %i.o, 1
  %spec.select.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.p ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.i.i
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.029.i.i.i.i
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !40

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ab = and i64 %i.l, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = add nsw i64 %i.l, -2
  %i.ae = ashr exact i64 %i.ad, 1
  %i.af = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ae
  br i1 %i.af, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ag = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.i.i
  store i8 %i.aj, ptr %i.ak, align 1
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ah, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i67.i.i.i
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = icmp ult i8 %i.am, %i.i
  br i1 %i.an, label %bb.e, label %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.01317.i.i.i.i.i
  store i8 %i.am, ptr %i.ao, align 1
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i8 %i.i, ptr %i.ap, align 1
  %i.aq = icmp sgt i64 %i.l, 1
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !42

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.ar = phi i64 [ %i.bq, %bb.b ], [ %i.c, %.lr.ph ]
  %i.as = add nsw i64 %.0121944, -1               ; 3 uses
  %i.at = lshr i64 %i.ar, 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.02043, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.e, align 1              ; 5 uses
  %i.ax = load i8, ptr %i.au, align 1             ; 5 uses
  %i.ay = icmp ult i8 %i.aw, %i.ax
  %i.az = load i8, ptr %i.av, align 1             ; 6 uses
  br i1 %i.ay, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.ba = icmp ult i8 %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = load i8, ptr %0, align 1
  store i8 %i.ax, ptr %0, align 1
  store i8 %i.bb, ptr %i.au, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bc = icmp ult i8 %i.aw, %i.az
  %i.bd = load i8, ptr %0, align 1                ; 2 uses
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.az, ptr %0, align 1
  store i8 %i.bd, ptr %i.av, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i8 %i.aw, ptr %0, align 1
  store i8 %i.bd, ptr %i.e, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.be = icmp ult i8 %i.aw, %i.az
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load i8, ptr %0, align 1
  store i8 %i.aw, ptr %0, align 1
  store i8 %i.bf, ptr %i.e, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bg = icmp ult i8 %i.ax, %i.az
  %i.bh = load i8, ptr %0, align 1                ; 2 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 %i.az, ptr %0, align 1
  store i8 %i.bh, ptr %i.av, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i8 %i.ax, ptr %0, align 1
  store i8 %i.bh, ptr %i.au, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bl, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bi = load i8, ptr %0, align 1                ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bl, %bb.p ] ; 8 uses
  %i.bj = load i8, ptr %.1.i.i, align 1           ; 2 uses
  %i.bk = icmp ult i8 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  br i1 %i.bk, label %bb.p, label %.preheader.i.i, !llvm.loop !43

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -1 ; 5 uses
  %i.bm = load i8, ptr %.114.i.i, align 1         ; 2 uses
  %i.bn = icmp ult i8 %i.bi, %i.bm
  br i1 %i.bn, label %.preheader.i.i, label %bb.q, !llvm.loop !44

bb.q:                                             ; preds = %.preheader.i.i
  %i.bo = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bo, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPhN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i8 %i.bm, ptr %.1.i.i, align 1
  store i8 %i.bj, ptr %.114.i.i, align 1
  br label %_ZSt22__move_median_to_firstIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !45

_ZSt27__unguarded_partition_pivotIPhN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPhlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.as)
  %i.bp = ptrtoint ptr %.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a                     ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 16
  br i1 %i.br, label %bb.b, label %_ZSt14__partial_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !39

_ZSt14__partial_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPhN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.016.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 1, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i8, ptr %.019.i.ptr, align 1        ; 4 uses
  %i.f = load i8, ptr %0, align 1                 ; 2 uses
  %i.g = icmp ult i8 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 1
  store i8 %i.f, ptr %i.i, align 1
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i8, ptr %.pn18.i, align 1           ; 2 uses
  %i.k = icmp ult i8 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i8 %i.l, ptr %.0912.i.i, align 1
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.0.i.i, align 1            ; 2 uses
  %i.n = icmp ult i8 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i, !llvm.loop !46

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i8 %i.e, ptr %.sink.i, align 1
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 1    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 16
  br i1 %.not.i, label %_ZSt16__insertion_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !47

_ZSt16__insertion_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -1 ; 2 uses
  %i.az = load i8, ptr %.0.i.i24, align 1         ; 2 uses
  %i.ba = icmp ult i8 %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !46

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i8 %i.ao, ptr %.sink.i18, align 1
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 1 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !47

_ZSt26__unguarded_insertion_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit.i17, %.lr.ph.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIPhN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.1, %.preheader.i, %bb.h, %_ZSt16__insertion_sortIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp slt i64 %i.c, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -2                     ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %i.c, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %i.i = and i64 %i.c, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %i.j, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.l = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.013.us
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = icmp slt i64 %.013.us, %i.h
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.t, align 1
  %i.x = load i8, ptr %i.v, align 1
  %i.y = icmp ult i8 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %.029.i.us
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !40

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i.us
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = icmp ult i8 %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.01317.i.i.us
  store i8 %i.ag, ptr %i.ai, align 1
  %i.aj = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !41

_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.013.lcssa.i.i.us
  store i8 %i.p, ptr %i.ak, align 1
  %.not.us = icmp eq i64 %.013.us, 0
  %i.al = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !49

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = icmp slt i64 %.013, %i.h
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.ar, align 1
  %i.av = load i8, ptr %i.at, align 1
  %i.aw = icmp ult i8 %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.029.i
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !40

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.k
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load i8, ptr %i.m, align 1
  store i8 %i.bd, ptr %i.n, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.l, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.128.i, %.013
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %i.bh = icmp ult i8 %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.01317.i.i
  store i8 %i.bg, ptr %i.bi, align 1
  %i.bj = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !41

_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.013.lcssa.i.i
  store i8 %i.an, ptr %i.bk, align 1
  %.not = icmp eq i64 %.013, 0
  %i.bl = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !49

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPhlhN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPalN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.as, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = load i8, ptr %0, align 1
  store i8 %i.j, ptr %i.h, align 1
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 5 uses
  %i.m = add nsw i64 %i.l, -1
  %4 = lshr i64 %i.m, 1
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.o = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = getelementptr i8, ptr %0, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.q, align 1
  %i.u = load i8, ptr %i.s, align 1
  %i.v = icmp slt i8 %i.t, %i.u
  %i.w = or disjoint i64 %i.o, 1
  %spec.select.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.p ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.i.i
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.029.i.i.i.i
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !51

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ab = and i64 %i.l, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = add nsw i64 %i.l, -2
  %i.ae = ashr exact i64 %i.ad, 1
  %i.af = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ae
  br i1 %i.af, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ag = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.i.i
  store i8 %i.aj, ptr %i.ak, align 1
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ah, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i67.i.i.i
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = icmp slt i8 %i.am, %i.i
  br i1 %i.an, label %bb.e, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.01317.i.i.i.i.i
  store i8 %i.am, ptr %i.ao, align 1
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !52

_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i8 %i.i, ptr %i.ap, align 1
  %i.aq = icmp sgt i64 %i.l, 1
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !53

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.ar = phi i64 [ %i.bq, %bb.b ], [ %i.c, %.lr.ph ]
  %i.as = add nsw i64 %.0121944, -1               ; 3 uses
  %i.at = lshr i64 %i.ar, 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.02043, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.e, align 1              ; 5 uses
  %i.ax = load i8, ptr %i.au, align 1             ; 5 uses
  %i.ay = icmp slt i8 %i.aw, %i.ax
  %i.az = load i8, ptr %i.av, align 1             ; 6 uses
  br i1 %i.ay, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.ba = icmp slt i8 %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = load i8, ptr %0, align 1
  store i8 %i.ax, ptr %0, align 1
  store i8 %i.bb, ptr %i.au, align 1
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bc = icmp slt i8 %i.aw, %i.az
  %i.bd = load i8, ptr %0, align 1                ; 2 uses
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.az, ptr %0, align 1
  store i8 %i.bd, ptr %i.av, align 1
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i8 %i.aw, ptr %0, align 1
  store i8 %i.bd, ptr %i.e, align 1
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.be = icmp slt i8 %i.aw, %i.az
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load i8, ptr %0, align 1
  store i8 %i.aw, ptr %0, align 1
  store i8 %i.bf, ptr %i.e, align 1
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bg = icmp slt i8 %i.ax, %i.az
  %i.bh = load i8, ptr %0, align 1                ; 2 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 %i.az, ptr %0, align 1
  store i8 %i.bh, ptr %i.av, align 1
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i8 %i.ax, ptr %0, align 1
  store i8 %i.bh, ptr %i.au, align 1
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bl, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bi = load i8, ptr %0, align 1                ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bl, %bb.p ] ; 8 uses
  %i.bj = load i8, ptr %.1.i.i, align 1           ; 2 uses
  %i.bk = icmp slt i8 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  br i1 %i.bk, label %bb.p, label %.preheader.i.i, !llvm.loop !54

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -1 ; 5 uses
  %i.bm = load i8, ptr %.114.i.i, align 1         ; 2 uses
  %i.bn = icmp slt i8 %i.bi, %i.bm
  br i1 %i.bn, label %.preheader.i.i, label %bb.q, !llvm.loop !55

bb.q:                                             ; preds = %.preheader.i.i
  %i.bo = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bo, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i8 %i.bm, ptr %.1.i.i, align 1
  store i8 %i.bj, ptr %.114.i.i, align 1
  br label %_ZSt22__move_median_to_firstIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !56

_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPalN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.as)
  %i.bp = ptrtoint ptr %.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a                     ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 16
  br i1 %i.br, label %bb.b, label %_ZSt14__partial_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !50

_ZSt14__partial_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPaN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.016.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 1, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i8, ptr %.019.i.ptr, align 1        ; 4 uses
  %i.f = load i8, ptr %0, align 1                 ; 2 uses
  %i.g = icmp slt i8 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.016.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 1
  store i8 %i.f, ptr %i.i, align 1
  br label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i8, ptr %.pn18.i, align 1           ; 2 uses
  %i.k = icmp slt i8 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i8 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i8 %i.l, ptr %.0912.i.i, align 1
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -1 ; 2 uses
  %i.m = load i8, ptr %.0.i.i, align 1            ; 2 uses
  %i.n = icmp slt i8 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i, !llvm.loop !57

_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i8 %i.e, ptr %.sink.i, align 1
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 1    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 16
  br i1 %.not.i, label %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !58

_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a
  %.0912.i.i23 = phi ptr [ %.013.i.i22, %.lr.ph.i.i21 ], [ %.019.i15, %bb.m ]
  store i8 %i.ay, ptr %.0912.i.i23, align 1
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -1 ; 2 uses
  %i.az = load i8, ptr %.0.i.i24, align 1         ; 2 uses
  %i.ba = icmp slt i8 %i.ao, %i.az
  br i1 %i.ba, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !57

_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i8 %i.ao, ptr %.sink.i18, align 1
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 1 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !58

_ZSt26__unguarded_insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPaS0_ET0_T_S2_S1_.exit.i17, %.lr.ph.i.prol.loopexit, %_ZSt25__unguarded_linear_insertIPaN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.1, %.preheader.i, %bb.h, %_ZSt16__insertion_sortIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp slt i64 %i.c, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -2                     ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %i.c, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %i.i = and i64 %i.c, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %i.j, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.l = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.013.us
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = icmp slt i64 %.013.us, %i.h
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.t, align 1
  %i.x = load i8, ptr %i.v, align 1
  %i.y = icmp slt i8 %i.w, %i.x
  %i.z = or disjoint i64 %i.r, 1
  %spec.select.i.us = select i1 %i.y, i64 %i.z, i64 %i.s ; 6 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %.029.i.us
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !51

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i.us
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = icmp slt i8 %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.01317.i.i.us
  store i8 %i.ag, ptr %i.ai, align 1
  %i.aj = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !52

_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.013.lcssa.i.i.us
  store i8 %i.p, ptr %i.ak, align 1
  %.not.us = icmp eq i64 %.013.us, 0
  %i.al = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !60

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bl, %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = icmp slt i64 %.013, %i.h
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.ap = shl i64 %.029.i, 1                      ; 3 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %0, i64 %i.ap
  %i.at = getelementptr i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.ar, align 1
  %i.av = load i8, ptr %i.at, align 1
  %i.aw = icmp slt i8 %i.au, %i.av
  %i.ax = or disjoint i64 %i.ap, 1
  %spec.select.i = select i1 %i.aw, i64 %i.ax, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.029.i
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !51

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i, %i.k
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bd = load i8, ptr %i.m, align 1
  store i8 %i.bd, ptr %i.n, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.l, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.be = icmp sgt i64 %.128.i, %.013
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.018.i.i
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %i.bh = icmp slt i8 %i.bg, %i.an
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.01317.i.i
  store i8 %i.bg, ptr %i.bi, align 1
  %i.bj = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !52

_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.013.lcssa.i.i
  store i8 %i.an, ptr %i.bk, align 1
  %.not = icmp eq i64 %.013, 0
  %i.bl = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !60

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPalaN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -2 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2              ; 2 uses
  %i.j = load i16, ptr %0, align 2
  store i16 %i.j, ptr %i.h, align 2
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 1                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [2 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.r, align 2
  %i.v = load i16, ptr %i.t, align 2
  %i.w = icmp ult i16 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds [2 x i8], ptr %0, i64 %.029.i.i.i.i
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !62

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 2
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i16 %i.ak, ptr %i.al, align 2
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = icmp ult i16 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [2 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i16 %i.an, ptr %i.ap, align 2
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !63

_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [2 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i16 %i.i, ptr %i.aq, align 2
  %i.ar = icmp sgt i64 %i.l, 2
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !64

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 2
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -2 ; 3 uses
  %i.ax = load i16, ptr %i.e, align 2             ; 5 uses
  %i.ay = load i16, ptr %i.av, align 2            ; 5 uses
  %i.az = icmp ult i16 %i.ax, %i.ay
  %i.ba = load i16, ptr %i.aw, align 2            ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp ult i16 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i16, ptr %0, align 2
  store i16 %i.ay, ptr %0, align 2
  store i16 %i.bc, ptr %i.av, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp ult i16 %i.ax, %i.ba
  %i.be = load i16, ptr %0, align 2               ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i16 %i.ba, ptr %0, align 2
  store i16 %i.be, ptr %i.aw, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i16 %i.ax, ptr %0, align 2
  store i16 %i.be, ptr %i.e, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp ult i16 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i16, ptr %0, align 2
  store i16 %i.ax, ptr %0, align 2
  store i16 %i.bg, ptr %i.e, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp ult i16 %i.ay, %i.ba
  %i.bi = load i16, ptr %0, align 2               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 %i.ba, ptr %0, align 2
  store i16 %i.bi, ptr %i.aw, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i16 %i.ay, ptr %0, align 2
  store i16 %i.bi, ptr %i.av, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i16, ptr %0, align 2               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i16, ptr %.1.i.i, align 2          ; 2 uses
  %i.bl = icmp ult i16 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !65

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -2 ; 5 uses
  %i.bn = load i16, ptr %.114.i.i, align 2        ; 2 uses
  %i.bo = icmp ult i16 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !66

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i16 %i.bn, ptr %.1.i.i, align 2
  store i16 %i.bk, ptr %.114.i.i, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !67

_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 32
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !61

_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 2
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 2, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i16, ptr %.019.i.ptr, align 2       ; 4 uses
  %i.f = load i16, ptr %0, align 2                ; 2 uses
  %i.g = icmp ult i16 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 2
  br i1 %i.h, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 2 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 2
  store i16 %i.f, ptr %i.i, align 2
  br label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i16, ptr %.pn18.i, align 2          ; 2 uses
  %i.k = icmp ult i16 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i16 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i16 %i.l, ptr %.0912.i.i, align 2
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -2 ; 2 uses
  %i.m = load i16, ptr %.0.i.i, align 2           ; 2 uses
  %i.n = icmp ult i16 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i, !llvm.loop !68

_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i16 %i.e, ptr %.sink.i, align 2
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 2    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 32
  br i1 %.not.i, label %_ZSt16__insertion_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !69

_ZSt16__insertion_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_2
begin_hunk_3_@_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a
  store i16 %i.al, ptr %.0912.i.i23, align 2
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -2 ; 2 uses
  %i.am = load i16, ptr %.0.i.i24, align 2        ; 2 uses
  %i.an = icmp ult i16 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !68

_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i16 %i.x, ptr %.sink.i18, align 2
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 2 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !69

_ZSt26__unguarded_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPtS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPtN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPtN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 1                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 4 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 2
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.us
  %i.q = load i16, ptr %i.p, align 2              ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [2 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.u, align 2
  %i.y = load i16, ptr %i.w, align 2
  %i.z = icmp ult i16 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = getelementptr inbounds [2 x i8], ptr %0, i64 %.029.i.us
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !62

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = icmp ult i16 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01317.i.i.us
  store i16 %i.ah, ptr %i.aj, align 2
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !63

_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i16 %i.q, ptr %i.al, align 2
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !71

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [2 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.as, align 2
  %i.aw = load i16, ptr %i.au, align 2
  %i.ax = icmp ult i16 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = getelementptr inbounds [2 x i8], ptr %0, i64 %.029.i
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i16, ptr %i.n, align 2
  store i16 %i.be, ptr %i.o, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i16, ptr %i.bg, align 2            ; 2 uses
  %i.bi = icmp ult i16 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01317.i.i
  store i16 %i.bh, ptr %i.bj, align 2
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !63

_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i16 %i.ao, ptr %i.bl, align 2
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !71

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPslN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -2 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2              ; 2 uses
  %i.j = load i16, ptr %0, align 2
  store i16 %i.j, ptr %i.h, align 2
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 1                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [2 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.r, align 2
  %i.v = load i16, ptr %i.t, align 2
  %i.w = icmp slt i16 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds [2 x i8], ptr %0, i64 %.029.i.i.i.i
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !73

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 2
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i16 %i.ak, ptr %i.al, align 2
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = icmp slt i16 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [2 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i16 %i.an, ptr %i.ap, align 2
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !74

_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [2 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i16 %i.i, ptr %i.aq, align 2
  %i.ar = icmp sgt i64 %i.l, 2
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !75

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 2
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -2 ; 3 uses
  %i.ax = load i16, ptr %i.e, align 2             ; 5 uses
  %i.ay = load i16, ptr %i.av, align 2            ; 5 uses
  %i.az = icmp slt i16 %i.ax, %i.ay
  %i.ba = load i16, ptr %i.aw, align 2            ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp slt i16 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i16, ptr %0, align 2
  store i16 %i.ay, ptr %0, align 2
  store i16 %i.bc, ptr %i.av, align 2
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp slt i16 %i.ax, %i.ba
  %i.be = load i16, ptr %0, align 2               ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i16 %i.ba, ptr %0, align 2
  store i16 %i.be, ptr %i.aw, align 2
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i16 %i.ax, ptr %0, align 2
  store i16 %i.be, ptr %i.e, align 2
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp slt i16 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i16, ptr %0, align 2
  store i16 %i.ax, ptr %0, align 2
  store i16 %i.bg, ptr %i.e, align 2
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp slt i16 %i.ay, %i.ba
  %i.bi = load i16, ptr %0, align 2               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 %i.ba, ptr %0, align 2
  store i16 %i.bi, ptr %i.aw, align 2
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i16 %i.ay, ptr %0, align 2
  store i16 %i.bi, ptr %i.av, align 2
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i16, ptr %0, align 2               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i16, ptr %.1.i.i, align 2          ; 2 uses
  %i.bl = icmp slt i16 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !76

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -2 ; 5 uses
  %i.bn = load i16, ptr %.114.i.i, align 2        ; 2 uses
  %i.bo = icmp slt i16 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !77

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i16 %i.bn, ptr %.1.i.i, align 2
  store i16 %i.bk, ptr %.114.i.i, align 2
  br label %_ZSt22__move_median_to_firstIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !78

_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPslN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 32
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !72

_ZSt14__partial_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPsN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 2
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 2, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i16, ptr %.019.i.ptr, align 2       ; 4 uses
  %i.f = load i16, ptr %0, align 2                ; 2 uses
  %i.g = icmp slt i16 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 2
  br i1 %i.h, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 2 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 2
  store i16 %i.f, ptr %i.i, align 2
  br label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i16, ptr %.pn18.i, align 2          ; 2 uses
  %i.k = icmp slt i16 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i16 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i16 %i.l, ptr %.0912.i.i, align 2
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -2 ; 2 uses
  %i.m = load i16, ptr %.0.i.i, align 2           ; 2 uses
  %i.n = icmp slt i16 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i, !llvm.loop !79

_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i16 %i.e, ptr %.sink.i, align 2
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 2    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 32
  br i1 %.not.i, label %_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !80

_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_3
begin_hunk_4_@_ZSt22__final_insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a
  store i16 %i.al, ptr %.0912.i.i23, align 2
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -2 ; 2 uses
  %i.am = load i16, ptr %.0.i.i24, align 2        ; 2 uses
  %i.an = icmp slt i16 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !79

_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i16 %i.x, ptr %.sink.i18, align 2
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 2 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !80

_ZSt26__unguarded_insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPsS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPsN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 1                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 4 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 2
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.us
  %i.q = load i16, ptr %i.p, align 2              ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [2 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.u, align 2
  %i.y = load i16, ptr %i.w, align 2
  %i.z = icmp slt i16 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = getelementptr inbounds [2 x i8], ptr %0, i64 %.029.i.us
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !73

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = icmp slt i16 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01317.i.i.us
  store i16 %i.ah, ptr %i.aj, align 2
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !74

_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i16 %i.q, ptr %i.al, align 2
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !82

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [2 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.as, align 2
  %i.aw = load i16, ptr %i.au, align 2
  %i.ax = icmp slt i16 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = getelementptr inbounds [2 x i8], ptr %0, i64 %.029.i
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !73

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i16, ptr %i.n, align 2
  store i16 %i.be, ptr %i.o, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i16, ptr %i.bg, align 2            ; 2 uses
  %i.bi = icmp slt i16 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.01317.i.i
  store i16 %i.bh, ptr %i.bj, align 2
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !74

_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i16 %i.ao, ptr %i.bl, align 2
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !82

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPslsN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = load i32, ptr %0, align 4
  store i32 %i.j, ptr %i.h, align 4
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.r, align 4
  %i.v = load i32, ptr %i.t, align 4
  %i.w = icmp ult i32 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !84

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.ak, ptr %i.al, align 4
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i32 %i.an, ptr %i.ap, align 4
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !85

_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.i, ptr %i.aq, align 4
  %i.ar = icmp sgt i64 %i.l, 4
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !86

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -4 ; 3 uses
  %i.ax = load i32, ptr %i.e, align 4             ; 5 uses
  %i.ay = load i32, ptr %i.av, align 4            ; 5 uses
  %i.az = icmp ult i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.aw, align 4            ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp ult i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %0, align 4
  store i32 %i.ay, ptr %0, align 4
  store i32 %i.bc, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp ult i32 %i.ax, %i.ba
  %i.be = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ba, ptr %0, align 4
  store i32 %i.be, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ax, ptr %0, align 4
  store i32 %i.be, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp ult i32 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %0, align 4
  store i32 %i.ax, ptr %0, align 4
  store i32 %i.bg, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp ult i32 %i.ay, %i.ba
  %i.bi = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.ba, ptr %0, align 4
  store i32 %i.bi, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.ay, ptr %0, align 4
  store i32 %i.bi, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i32, ptr %0, align 4               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i32, ptr %.1.i.i, align 4          ; 2 uses
  %i.bl = icmp ult i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !87

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bn = load i32, ptr %.114.i.i, align 4        ; 2 uses
  %i.bo = icmp ult i32 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !88

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bn, ptr %.1.i.i, align 4
  store i32 %i.bk, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !89

_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 64
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !83

_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 4, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i32, ptr %.019.i.ptr, align 4       ; 4 uses
  %i.f = load i32, ptr %0, align 4                ; 2 uses
  %i.g = icmp ult i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 4
  br i1 %i.h, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.f, ptr %i.i, align 4
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.pn18.i, align 4          ; 2 uses
  %i.k = icmp ult i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i32 %i.l, ptr %.0912.i.i, align 4
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.0.i.i, align 4           ; 2 uses
  %i.n = icmp ult i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, !llvm.loop !90

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !91

_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_4
begin_hunk_5_@_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a
  store i32 %i.al, ptr %.0912.i.i23, align 4
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.0.i.i24, align 4        ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !90

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.x, ptr %.sink.i18, align 4
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 4 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !91

_ZSt26__unguarded_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.u, align 4
  %i.y = load i32, ptr %i.w, align 4
  %i.z = icmp ult i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !84

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = icmp ult i32 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ah, ptr %i.aj, align 4
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !85

_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.q, ptr %i.al, align 4
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !93

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.as, align 4
  %i.aw = load i32, ptr %i.au, align 4
  %i.ax = icmp ult i32 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !84

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i32, ptr %i.n, align 4
  store i32 %i.be, ptr %i.o, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp ult i32 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bh, ptr %i.bj, align 4
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !85

_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.ao, ptr %i.bl, align 4
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !93

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = load i32, ptr %0, align 4
  store i32 %i.j, ptr %i.h, align 4
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.r, align 4
  %i.v = load i32, ptr %i.t, align 4
  %i.w = icmp slt i32 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !95

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.ak, ptr %i.al, align 4
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i32 %i.an, ptr %i.ap, align 4
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !96

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.i, ptr %i.aq, align 4
  %i.ar = icmp sgt i64 %i.l, 4
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !97

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -4 ; 3 uses
  %i.ax = load i32, ptr %i.e, align 4             ; 5 uses
  %i.ay = load i32, ptr %i.av, align 4            ; 5 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.aw, align 4            ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp slt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %0, align 4
  store i32 %i.ay, ptr %0, align 4
  store i32 %i.bc, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp slt i32 %i.ax, %i.ba
  %i.be = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ba, ptr %0, align 4
  store i32 %i.be, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ax, ptr %0, align 4
  store i32 %i.be, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp slt i32 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %0, align 4
  store i32 %i.ax, ptr %0, align 4
  store i32 %i.bg, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp slt i32 %i.ay, %i.ba
  %i.bi = load i32, ptr %0, align 4               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.ba, ptr %0, align 4
  store i32 %i.bi, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.ay, ptr %0, align 4
  store i32 %i.bi, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i32, ptr %0, align 4               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i32, ptr %.1.i.i, align 4          ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !98

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bn = load i32, ptr %.114.i.i, align 4        ; 2 uses
  %i.bo = icmp slt i32 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !99

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bn, ptr %.1.i.i, align 4
  store i32 %i.bk, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !100

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 64
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !94

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 4, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i32, ptr %.019.i.ptr, align 4       ; 4 uses
  %i.f = load i32, ptr %0, align 4                ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 4
  br i1 %i.h, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.f, ptr %i.i, align 4
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.pn18.i, align 4          ; 2 uses
  %i.k = icmp slt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i32 %i.l, ptr %.0912.i.i, align 4
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.0.i.i, align 4           ; 2 uses
  %i.n = icmp slt i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, !llvm.loop !101

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !102

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_5
begin_hunk_6_@_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a
  store i32 %i.al, ptr %.0912.i.i23, align 4
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.0.i.i24, align 4        ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !101

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i32 %i.x, ptr %.sink.i18, align 4
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 4 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !102

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.u, align 4
  %i.y = load i32, ptr %i.w, align 4
  %i.z = icmp slt i32 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !95

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ah, ptr %i.aj, align 4
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !96

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i32 %i.q, ptr %i.al, align 4
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !104

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.as, align 4
  %i.aw = load i32, ptr %i.au, align 4
  %i.ax = icmp slt i32 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !95

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i32, ptr %i.n, align 4
  store i32 %i.be, ptr %i.o, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store i32 %i.bh, ptr %i.bj, align 4
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !96

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i32 %i.ao, ptr %i.bl, align 4
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !104

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = load i64, ptr %0, align 8
  store i64 %i.j, ptr %i.h, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.r, align 8
  %i.v = load i64, ptr %i.t, align 8
  %i.w = icmp ult i64 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !106

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.ak, ptr %i.al, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i64 %i.an, ptr %i.ap, align 8
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !107

_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.i, ptr %i.aq, align 8
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !108

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -8 ; 3 uses
  %i.ax = load i64, ptr %i.e, align 8             ; 5 uses
  %i.ay = load i64, ptr %i.av, align 8            ; 5 uses
  %i.az = icmp ult i64 %i.ax, %i.ay
  %i.ba = load i64, ptr %i.aw, align 8            ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp ult i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %0, align 8
  store i64 %i.ay, ptr %0, align 8
  store i64 %i.bc, ptr %i.av, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp ult i64 %i.ax, %i.ba
  %i.be = load i64, ptr %0, align 8               ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.ba, ptr %0, align 8
  store i64 %i.be, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i64 %i.ax, ptr %0, align 8
  store i64 %i.be, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp ult i64 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %0, align 8
  store i64 %i.ax, ptr %0, align 8
  store i64 %i.bg, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp ult i64 %i.ay, %i.ba
  %i.bi = load i64, ptr %0, align 8               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.ba, ptr %0, align 8
  store i64 %i.bi, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i64 %i.ay, ptr %0, align 8
  store i64 %i.bi, ptr %i.av, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i64, ptr %0, align 8               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i64, ptr %.1.i.i, align 8          ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !109

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load i64, ptr %.114.i.i, align 8        ; 2 uses
  %i.bo = icmp ult i64 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !110

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i64 %i.bn, ptr %.1.i.i, align 8
  store i64 %i.bk, ptr %.114.i.i, align 8
  br label %_ZSt22__move_median_to_firstIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !111

_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !105

_ZSt14__partial_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPmN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 8, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i64, ptr %.019.i.ptr, align 8       ; 4 uses
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  store i64 %i.f, ptr %i.i, align 8
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i64, ptr %.pn18.i, align 8          ; 2 uses
  %i.k = icmp ult i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i64 %i.l, ptr %.0912.i.i, align 8
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load i64, ptr %.0.i.i, align 8           ; 2 uses
  %i.n = icmp ult i64 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i, !llvm.loop !112

_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i64 %i.e, ptr %.sink.i, align 8
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !113

_ZSt16__insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_6
begin_hunk_7_@_ZSt22__final_insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a
  store i64 %i.al, ptr %.0912.i.i23, align 8
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -8 ; 2 uses
  %i.am = load i64, ptr %.0.i.i24, align 8        ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !112

_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i64 %i.x, ptr %.sink.i18, align 8
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !113

_ZSt26__unguarded_insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
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
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.us
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.u, align 8
  %i.y = load i64, ptr %i.w, align 8
  %i.z = icmp ult i64 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !106

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store i64 %i.ah, ptr %i.aj, align 8
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !107

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.q, ptr %i.al, align 8
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !115

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [8 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.as, align 8
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = icmp ult i64 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !106

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i64, ptr %i.n, align 8
  store i64 %i.be, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store i64 %i.bh, ptr %i.bj, align 8
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !107

_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.ao, ptr %i.bl, align 8
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !115

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPmlmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !116

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = load i64, ptr %0, align 8
  store i64 %i.j, ptr %i.h, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.r, align 8
  %i.v = load i64, ptr %i.t, align 8
  %i.w = icmp slt i64 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !117

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.ak, ptr %i.al, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp slt i64 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i64 %i.an, ptr %i.ap, align 8
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !118

_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.i, ptr %i.aq, align 8
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !119

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -8 ; 3 uses
  %i.ax = load i64, ptr %i.e, align 8             ; 5 uses
  %i.ay = load i64, ptr %i.av, align 8            ; 5 uses
  %i.az = icmp slt i64 %i.ax, %i.ay
  %i.ba = load i64, ptr %i.aw, align 8            ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp slt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %0, align 8
  store i64 %i.ay, ptr %0, align 8
  store i64 %i.bc, ptr %i.av, align 8
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp slt i64 %i.ax, %i.ba
  %i.be = load i64, ptr %0, align 8               ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.ba, ptr %0, align 8
  store i64 %i.be, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i64 %i.ax, ptr %0, align 8
  store i64 %i.be, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp slt i64 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %0, align 8
  store i64 %i.ax, ptr %0, align 8
  store i64 %i.bg, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp slt i64 %i.ay, %i.ba
  %i.bi = load i64, ptr %0, align 8               ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.ba, ptr %0, align 8
  store i64 %i.bi, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i64 %i.ay, ptr %0, align 8
  store i64 %i.bi, ptr %i.av, align 8
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i64, ptr %0, align 8               ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i64, ptr %.1.i.i, align 8          ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !120

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load i64, ptr %.114.i.i, align 8        ; 2 uses
  %i.bo = icmp slt i64 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !121

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i64 %i.bn, ptr %.1.i.i, align 8
  store i64 %i.bk, ptr %.114.i.i, align 8
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !122

_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !116

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 8, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i64, ptr %.019.i.ptr, align 8       ; 4 uses
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = icmp slt i64 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  store i64 %i.f, ptr %i.i, align 8
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i64, ptr %.pn18.i, align 8          ; 2 uses
  %i.k = icmp slt i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i64 %i.l, ptr %.0912.i.i, align 8
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load i64, ptr %.0.i.i, align 8           ; 2 uses
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, !llvm.loop !123

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i64 %i.e, ptr %.sink.i, align 8
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !124

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_7
begin_hunk_8_@_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:bb.a
  %.0.i.i24 = getelementptr inbounds i8, ptr %.013.i.i22, i64 -8 ; 2 uses
  %i.am = load i64, ptr %.0.i.i24, align 8        ; 2 uses
  %i.an = icmp slt i64 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i21, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i17, !llvm.loop !123

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i17:   ; preds = %.lr.ph.i.i21, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i18 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i15, %bb.m ], [ %.013.i.i22, %.lr.ph.i.i21 ]
  store i64 %i.x, ptr %.sink.i18, align 8
  %.0.i19 = getelementptr inbounds nuw i8, ptr %.019.i15, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %.0.i19, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i14, !llvm.loop !124

_ZSt26__unguarded_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i17, %_ZSt25__unguarded_linear_insertIPlN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
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
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.us
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.u, align 8
  %i.y = load i64, ptr %i.w, align 8
  %i.z = icmp slt i64 %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !117

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp slt i64 %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store i64 %i.ah, ptr %i.aj, align 8
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !118

_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %i.q, ptr %i.al, align 8
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !126

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [8 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.as, align 8
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = icmp slt i64 %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !117

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load i64, ptr %i.n, align 8
  store i64 %i.be, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp slt i64 %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store i64 %i.bh, ptr %i.bj, align 8
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !118

_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %i.ao, ptr %i.bl, align 8
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !126

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPlllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph31

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEET_S7_S7_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph31, !llvm.loop !127

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.021.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %.021.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_RT0_.exit.i.i ], [ %.021.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load float, ptr %i.h, align 4            ; 2 uses
  %i.j = load float, ptr %0, align 4
  store float %i.j, ptr %i.h, align 4
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %5 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load float, ptr %i.r, align 4
  %i.v = load float, ptr %i.t, align 4
  %i.w = call noundef zeroext i1 %3(float noundef %i.u, float noundef %i.v) #10, !inline_history !128
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load float, ptr %i.y, align 4
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.031.i.i.i.i
  store float %i.z, ptr %i.aa, align 4
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %5
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !129

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store float %i.ak, ptr %i.al, align 4
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i89.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i89.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i89.i.i.i ; 2 uses
  %i.an = load float, ptr %i.am, align 4
  %i.ao = call noundef zeroext i1 %3(float noundef %i.an, float noundef %i.i) #10, !inline_history !130
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = load float, ptr %i.am, align 4
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store float %i.ap, ptr %i.aq, align 4
  %.not10.i.i.i = icmp eq i64 %.018.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !131

_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store float %i.i, ptr %i.ar, align 4
  %i.as = icmp sgt i64 %i.l, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_T0_.exit, !llvm.loop !132

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02129 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.ch, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0152030, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds i8, ptr %.02129, i64 -4 ; 7 uses
  %i.ay = load float, ptr %i.e, align 4
  %i.az = load float, ptr %i.aw, align 4
  %i.ba = tail call noundef zeroext i1 %3(float noundef %i.ay, float noundef %i.az) #10, !inline_history !133
  %i.bb = load float, ptr %i.ax, align 4          ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.bc = load float, ptr %i.aw, align 4
  %i.bd = tail call noundef zeroext i1 %3(float noundef %i.bc, float noundef %i.bb) #10, !inline_history !133
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load float, ptr %0, align 4
  %i.bf = load float, ptr %i.aw, align 4
  store float %i.bf, ptr %0, align 4
  store float %i.be, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bg = load float, ptr %i.e, align 4
  %i.bh = load float, ptr %i.ax, align 4
  %i.bi = tail call noundef zeroext i1 %3(float noundef %i.bg, float noundef %i.bh) #10, !inline_history !133
  %i.bj = load float, ptr %0, align 4             ; 2 uses
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = load float, ptr %i.ax, align 4
  store float %i.bk, ptr %0, align 4
  store float %i.bj, ptr %i.ax, align 4
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bl = load float, ptr %i.e, align 4
  store float %i.bl, ptr %0, align 4
  store float %i.bj, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.bm = load float, ptr %i.e, align 4
  %i.bn = tail call noundef zeroext i1 %3(float noundef %i.bm, float noundef %i.bb) #10, !inline_history !133
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load <2 x float>, ptr %0, align 4
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bp, ptr %0, align 4
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bq = load float, ptr %i.aw, align 4
  %i.br = load float, ptr %i.ax, align 4
  %i.bs = tail call noundef zeroext i1 %3(float noundef %i.bq, float noundef %i.br) #10, !inline_history !133
  %i.bt = load float, ptr %0, align 4             ; 2 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = load float, ptr %i.ax, align 4
  store float %i.bu, ptr %0, align 4
  store float %i.bt, ptr %i.ax, align 4
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bv = load float, ptr %i.aw, align 4
  store float %i.bv, ptr %0, align 4
  store float %i.bt, ptr %i.aw, align 4
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02129, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i ], [ %i.bz, %bb.p ] ; 9 uses
  %i.bw = load float, ptr %.1.i.i, align 4
  %i.bx = load float, ptr %0, align 4
  %i.by = tail call noundef zeroext i1 %3(float noundef %i.bw, float noundef %i.bx) #10, !inline_history !134
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.by, label %bb.p, label %.preheader.i.i, !llvm.loop !135

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 6 uses
  %i.ca = load float, ptr %0, align 4
  %i.cb = load float, ptr %.114.i.i, align 4
  %i.cc = tail call noundef zeroext i1 %3(float noundef %i.ca, float noundef %i.cb) #10, !inline_history !134
  br i1 %i.cc, label %.preheader.i.i, label %bb.q, !llvm.loop !136

bb.q:                                             ; preds = %.preheader.i.i
  %i.cd = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.cd, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEET_S7_S7_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ce = load float, ptr %.1.i.i, align 4
  %i.cf = load float, ptr %.114.i.i, align 4
  store float %i.cf, ptr %.1.i.i, align 4
  store float %i.ce, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_S7_T0_.exit.i, !llvm.loop !137

_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEET_S7_S7_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.au, ptr %3)
  %i.cg = ptrtoint ptr %.1.i.i to i64
  %i.ch = sub i64 %i.cg, %i.a                     ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 64
  br i1 %i.ci, label %bb.b, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_T0_.exit, !llvm.loop !127

_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEET_S7_S7_T0_.exit, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_S7_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.an, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
  %i.q = load float, ptr %i.p, align 4            ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.u, align 4
  %i.y = load float, ptr %i.w, align 4
  %i.z = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(float noundef %i.x, float noundef %i.y) #10, !inline_history !138
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.031.i.us
  store float %i.ac, ptr %i.ad, align 4
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !129

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4
  %i.ai = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(float noundef %i.ah, float noundef %i.q) #10, !inline_history !139
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = load float, ptr %i.ag, align 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store float %i.aj, ptr %i.ak, align 4
  %i.al = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit.us, !llvm.loop !131

_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store float %i.q, ptr %i.am, align 4
  %.not.us = icmp eq i64 %.014.us, 0
  %i.an = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !140

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit
  %.014 = phi i64 [ %i.bo, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014
  %i.ap = load float, ptr %i.ao, align 4          ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %i.aq = icmp slt i64 %.014, %i.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.ar = shl i64 %.031.i, 1                      ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = load float, ptr %i.at, align 4
  %i.ax = load float, ptr %i.av, align 4
  %i.ay = tail call noundef zeroext i1 %.sroa.0.0.copyload(float noundef %i.aw, float noundef %i.ax) #10, !inline_history !138
  %i.az = or disjoint i64 %i.ar, 1
  %spec.select.i = select i1 %i.ay, i64 %i.az, i64 %i.as ; 4 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %.031.i
  store float %i.bb, ptr %i.bc, align 4
  %i.bd = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !129

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bf = load float, ptr %i.n, align 4
  store float %i.bf, ptr %i.o, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bg = icmp sgt i64 %.128.i, %.014
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = tail call noundef zeroext i1 %.sroa.0.0.copyload(float noundef %i.bi, float noundef %i.ap) #10, !inline_history !139
  br i1 %i.bj, label %bb.f, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bk = load float, ptr %i.bh, align 4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store float %i.bk, ptr %i.bl, align 4
  %i.bm = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bm, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit, !llvm.loop !131

_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store float %i.ap, ptr %i.bn, align 4
  %.not = icmp eq i64 %.014, 0
  %i.bo = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !140

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit.us, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_comp_iterIPFbffEEEEvT_T0_S8_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.502", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph31

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph31, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.021.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %.021.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i ], [ %.021.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  %i.j = load double, ptr %0, align 8
  store double %i.j, ptr %i.h, align 8
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %5 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load double, ptr %i.r, align 8
  %i.v = load double, ptr %i.t, align 8
  %i.w = call noundef zeroext i1 %3(double noundef %i.u, double noundef %i.v) #10, !inline_history !142
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load double, ptr %i.y, align 8
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.i.i.i
  store double %i.z, ptr %i.aa, align 8
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %5
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !143

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.ak, ptr %i.al, align 8
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i89.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i89.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i89.i.i.i ; 2 uses
  %i.an = load double, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 %3(double noundef %i.an, double noundef %i.i) #10, !inline_history !144
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = load double, ptr %i.am, align 8
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store double %i.ap, ptr %i.aq, align 8
  %.not10.i.i.i = icmp eq i64 %.018.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !145

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store double %i.i, ptr %i.ar, align 8
  %i.as = icmp sgt i64 %i.l, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_.exit, !llvm.loop !146

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02129 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.ch, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0152030, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds i8, ptr %.02129, i64 -8 ; 7 uses
  %i.ay = load double, ptr %i.e, align 8
  %i.az = load double, ptr %i.aw, align 8
  %i.ba = tail call noundef zeroext i1 %3(double noundef %i.ay, double noundef %i.az) #10, !inline_history !147
  %i.bb = load double, ptr %i.ax, align 8         ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.bc = load double, ptr %i.aw, align 8
  %i.bd = tail call noundef zeroext i1 %3(double noundef %i.bc, double noundef %i.bb) #10, !inline_history !147
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load double, ptr %0, align 8
  %i.bf = load double, ptr %i.aw, align 8
  store double %i.bf, ptr %0, align 8
  store double %i.be, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bg = load double, ptr %i.e, align 8
  %i.bh = load double, ptr %i.ax, align 8
  %i.bi = tail call noundef zeroext i1 %3(double noundef %i.bg, double noundef %i.bh) #10, !inline_history !147
  %i.bj = load double, ptr %0, align 8            ; 2 uses
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = load double, ptr %i.ax, align 8
  store double %i.bk, ptr %0, align 8
  store double %i.bj, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bl = load double, ptr %i.e, align 8
  store double %i.bl, ptr %0, align 8
  store double %i.bj, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.bm = load double, ptr %i.e, align 8
  %i.bn = tail call noundef zeroext i1 %3(double noundef %i.bm, double noundef %i.bb) #10, !inline_history !147
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load <2 x double>, ptr %0, align 8
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bp, ptr %0, align 8
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bq = load double, ptr %i.aw, align 8
  %i.br = load double, ptr %i.ax, align 8
  %i.bs = tail call noundef zeroext i1 %3(double noundef %i.bq, double noundef %i.br) #10, !inline_history !147
  %i.bt = load double, ptr %0, align 8            ; 2 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = load double, ptr %i.ax, align 8
  store double %i.bu, ptr %0, align 8
  store double %i.bt, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bv = load double, ptr %i.aw, align 8
  store double %i.bv, ptr %0, align 8
  store double %i.bt, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02129, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i ], [ %i.bz, %bb.p ] ; 9 uses
  %i.bw = load double, ptr %.1.i.i, align 8
  %i.bx = load double, ptr %0, align 8
  %i.by = tail call noundef zeroext i1 %3(double noundef %i.bw, double noundef %i.bx) #10, !inline_history !148
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.by, label %bb.p, label %.preheader.i.i, !llvm.loop !149

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %i.ca = load double, ptr %0, align 8
  %i.cb = load double, ptr %.114.i.i, align 8
  %i.cc = tail call noundef zeroext i1 %3(double noundef %i.ca, double noundef %i.cb) #10, !inline_history !148
  br i1 %i.cc, label %.preheader.i.i, label %bb.q, !llvm.loop !150

bb.q:                                             ; preds = %.preheader.i.i
  %i.cd = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.cd, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ce = load double, ptr %.1.i.i, align 8
  %i.cf = load double, ptr %.114.i.i, align 8
  store double %i.cf, ptr %.1.i.i, align 8
  store double %i.ce, ptr %.114.i.i, align 8
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_S7_T0_.exit.i, !llvm.loop !151

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.au, ptr %3)
  %i.cg = ptrtoint ptr %.1.i.i to i64
  %i.ch = sub i64 %i.cg, %i.a                     ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 128
  br i1 %i.ci, label %bb.b, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_.exit, !llvm.loop !141

_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEET_S7_S7_T0_.exit, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_S7_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.an, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load double, ptr %i.u, align 8
  %i.y = load double, ptr %i.w, align 8
  %i.z = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(double noundef %i.x, double noundef %i.y) #10, !inline_history !152
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i.us
  store double %i.ac, ptr %i.ad, align 8
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !143

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(double noundef %i.ah, double noundef %i.q) #10, !inline_history !153
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = load double, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.aj, ptr %i.ak, align 8
  %i.al = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us, !llvm.loop !145

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.q, ptr %i.am, align 8
  %.not.us = icmp eq i64 %.014.us, 0
  %i.an = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !154

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit
  %.014 = phi i64 [ %i.bo, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.ap = load double, ptr %i.ao, align 8         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %i.aq = icmp slt i64 %.014, %i.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.031.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.ar = shl i64 %.031.i, 1                      ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr [8 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.at, align 8
  %i.ax = load double, ptr %i.av, align 8
  %i.ay = tail call noundef zeroext i1 %.sroa.0.0.copyload(double noundef %i.aw, double noundef %i.ax) #10, !inline_history !152
  %i.az = or disjoint i64 %i.ar, 1
  %spec.select.i = select i1 %i.ay, i64 %i.az, i64 %i.as ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.bb = load double, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.031.i
  store double %i.bb, ptr %i.bc, align 8
  %i.bd = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !143

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bf = load double, ptr %i.n, align 8
  store double %i.bf, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bg = icmp sgt i64 %.128.i, %.014
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8
  %i.bj = tail call noundef zeroext i1 %.sroa.0.0.copyload(double noundef %i.bi, double noundef %i.ap) #10, !inline_history !153
  br i1 %i.bj, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bk = load double, ptr %i.bh, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bk, ptr %i.bl, align 8
  %i.bm = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bm, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit, !llvm.loop !145

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.ap, ptr %i.bn, align 8
  %.not = icmp eq i64 %.014, 0
  %i.bo = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !154

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit.us, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterIPFbddEEEEvT_T0_S8_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.505", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph31

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEET_S7_S7_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph31, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.021.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %.021.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_RT0_.exit.i.i ], [ %.021.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -2 ; 4 uses
  %i.i = load i16, ptr %i.h, align 2              ; 2 uses
  %i.j = load i16, ptr %0, align 2
  store i16 %i.j, ptr %i.h, align 2
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 1                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %5 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.031.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [2 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.r, align 2
  %i.v = load i16, ptr %i.t, align 2
  %i.w = call noundef zeroext i1 %3(i16 noundef zeroext %i.u, i16 noundef zeroext %i.v) #10, !inline_history !156
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds [2 x i8], ptr %0, i64 %.031.i.i.i.i
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %5
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !157

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 2
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i16 %i.ak, ptr %i.al, align 2
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i78.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i78.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.018.i.i78.i.i.i ; 2 uses
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = call noundef zeroext i1 %3(i16 noundef zeroext %i.an, i16 noundef zeroext %i.i) #10, !inline_history !158
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = load i16, ptr %i.am, align 2
  %i.aq = getelementptr inbounds [2 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i16 %i.ap, ptr %i.aq, align 2
  %.not9.i.i.i = icmp eq i64 %.018.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !159

_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [2 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i16 %i.i, ptr %i.ar, align 2
  %i.as = icmp sgt i64 %i.l, 2
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_T0_.exit, !llvm.loop !160

.lr.ph31:                                         ; preds = %.lr.ph, %bb.b
  %.0152030 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02129 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.ch, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0152030, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 2
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds i8, ptr %.02129, i64 -2 ; 7 uses
  %i.ay = load i16, ptr %i.e, align 2
  %i.az = load i16, ptr %i.aw, align 2
  %i.ba = tail call noundef zeroext i1 %3(i16 noundef zeroext %i.ay, i16 noundef zeroext %i.az) #10, !inline_history !161
  %i.bb = load i16, ptr %i.ax, align 2            ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph31
  %i.bc = load i16, ptr %i.aw, align 2
  %i.bd = tail call noundef zeroext i1 %3(i16 noundef zeroext %i.bc, i16 noundef zeroext %i.bb) #10, !inline_history !161
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load i16, ptr %0, align 2
  %i.bf = load i16, ptr %i.aw, align 2
  store i16 %i.bf, ptr %0, align 2
  store i16 %i.be, ptr %i.aw, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bg = load i16, ptr %i.e, align 2
  %i.bh = load i16, ptr %i.ax, align 2
  %i.bi = tail call noundef zeroext i1 %3(i16 noundef zeroext %i.bg, i16 noundef zeroext %i.bh) #10, !inline_history !161
  %i.bj = load i16, ptr %0, align 2               ; 2 uses
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = load i16, ptr %i.ax, align 2
  store i16 %i.bk, ptr %0, align 2
  store i16 %i.bj, ptr %i.ax, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bl = load i16, ptr %i.e, align 2
  store i16 %i.bl, ptr %0, align 2
  store i16 %i.bj, ptr %i.e, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
  %i.bm = load i16, ptr %i.e, align 2
  %i.bn = tail call noundef zeroext i1 %3(i16 noundef zeroext %i.bm, i16 noundef zeroext %i.bb) #10, !inline_history !161
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load <2 x i16>, ptr %0, align 2
  %i.bp = shufflevector <2 x i16> %i.bo, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.bp, ptr %0, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bq = load i16, ptr %i.aw, align 2
  %i.br = load i16, ptr %i.ax, align 2
  %i.bs = tail call noundef zeroext i1 %3(i16 noundef zeroext %i.bq, i16 noundef zeroext %i.br) #10, !inline_history !161
  %i.bt = load i16, ptr %0, align 2               ; 2 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = load i16, ptr %i.ax, align 2
  store i16 %i.bu, ptr %0, align 2
  store i16 %i.bt, ptr %i.ax, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bv = load i16, ptr %i.aw, align 2
  store i16 %i.bv, ptr %0, align 2
  store i16 %i.bt, ptr %i.aw, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i

_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02129, %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i ], [ %i.bz, %bb.p ] ; 9 uses
  %i.bw = load i16, ptr %.1.i.i, align 2
  %i.bx = load i16, ptr %0, align 2
  %i.by = tail call noundef zeroext i1 %3(i16 noundef zeroext %i.bw, i16 noundef zeroext %i.bx) #10, !inline_history !162
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2 ; 2 uses
  br i1 %i.by, label %bb.p, label %.preheader.i.i, !llvm.loop !163

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -2 ; 6 uses
  %i.ca = load i16, ptr %0, align 2
  %i.cb = load i16, ptr %.114.i.i, align 2
  %i.cc = tail call noundef zeroext i1 %3(i16 noundef zeroext %i.ca, i16 noundef zeroext %i.cb) #10, !inline_history !162
  br i1 %i.cc, label %.preheader.i.i, label %bb.q, !llvm.loop !164

bb.q:                                             ; preds = %.preheader.i.i
  %i.cd = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.cd, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEET_S7_S7_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ce = load i16, ptr %.1.i.i, align 2
  %i.cf = load i16, ptr %.114.i.i, align 2
  store i16 %i.cf, ptr %.1.i.i, align 2
  store i16 %i.ce, ptr %.114.i.i, align 2
  br label %_ZSt22__move_median_to_firstIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_S7_T0_.exit.i, !llvm.loop !165

_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEET_S7_S7_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02129, i64 noundef %i.au, ptr %3)
  %i.cg = ptrtoint ptr %.1.i.i to i64
  %i.ch = sub i64 %i.cg, %i.a                     ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 32
  br i1 %i.ci, label %bb.b, label %_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_T0_.exit, !llvm.loop !155

_ZSt14__partial_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEET_S7_S7_T0_.exit, %_ZSt10__pop_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_S7_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPtN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 1                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 4 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 2
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_T0_S8_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.an, %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_T0_S8_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.014.us
  %i.q = load i16, ptr %i.p, align 2              ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8 ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPtltN9__gnu_cxx5__ops15_Iter_comp_iterIPFbttEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.031.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.031.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [2 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.u, align 2
  %i.y = load i16, ptr %i.w, align 2
  %i.z = tail call noundef zeroext i1 %.sroa.0.0.copyload.us(i16 noundef zeroext %i.x, i16 noundef zeroext %i.y) #10, !inline_history !166
  %i.aa = or disjoint i64 %i.s, 1
end_hunk_8
