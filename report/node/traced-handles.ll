Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/traced-handles?download=true
inline.NumInlined: 1178
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2v88internal13TracedHandles4MoveEPPmS3_:bb.a
_ZN2v88internal13TracedHandles7DestroyEPm.exit:   ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  store atomic ptr null, ptr %1 monotonic, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.v
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = add i64 %i.x, -72
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !13, !align !17
  tail call void @_ZN2v88internal13TracedHandles4MoveERNS0_10TracedNodeEPPmS5_(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal13TracedHandles7DestroyEPm.exit
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden i64 @_ZN2v88internal13TracedHandles4MarkEPmNS1_8MarkModeE(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8 ; 3 uses
  %i.b = icmp eq i8 %1, 0
  br i1 %i.b, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 13
  store atomic i8 1, ptr %i.f monotonic, align 1
  %i.g = and i64 %i.a, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit, label %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.i = and i64 %i.a, -262144
  %i.j = inttoptr i64 %i.i to ptr
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 262144
  %i.k = and i64 %.sroa.0.0.copyload.i.i, 24
  %.not15.i = icmp eq i64 %i.k, 0
  br i1 %.not15.i, label %_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit, label %bb.d

.critedge.i:                                      ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13
  store atomic i8 1, ptr %i.l monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i
  br label %_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit

_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit: ; preds = %bb.b, %bb.c, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.a, %bb.d ], [ 0, %bb.b ], [ 0, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_ZN2v88internal13TracedHandles18MarkConservativelyEPmS2_NS1_8MarkModeE(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = lshr i64 %i.c, 4
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8              ; 3 uses
  %i.j = icmp eq i8 %2, 0
  br i1 %i.j, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.k = and i8 %i.g, 2
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  store atomic i8 1, ptr %i.l monotonic, align 1
  %i.m = and i64 %i.i, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit, label %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.d
  %i.o = and i64 %i.i, -262144
  %i.p = inttoptr i64 %i.o to ptr
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 262144
  %i.q = and i64 %.sroa.0.0.copyload.i.i, 24
  %.not15.i = icmp eq i64 %i.q, 0
  br i1 %.not15.i, label %_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit, label %bb.e

.critedge.i:                                      ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  store atomic i8 1, ptr %i.r monotonic, align 1
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i
  br label %_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit

_ZN2v88internal12_GLOBAL__N_110MarkObjectENS0_6TaggedINS0_6ObjectEEERNS0_10TracedNodeENS0_13TracedHandles8MarkModeE.exit: ; preds = %bb.e, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.e ], [ 0, %bb.c ], [ 0, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ 0, %bb.d ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13TracedHandles16IsValidInUseNodeEPKm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4
  %i.c = trunc i8 %i.b to i1                      ; 2 uses
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp eq i64 %i.d, 1995093329451155167    ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %.critedge7, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #27
  unreachable

.critedge:                                        ; preds = %bb.a
  br i1 %i.e, label %.critedge7, label %bb.d, !prof !16

bb.d:                                             ; preds = %.critedge
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #27
  unreachable

.critedge7:                                       ; preds = %bb.b, %.critedge
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal13TracedHandles8HasYoungEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp ne ptr %i.b, null
  ret i1 %.not.i
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

declare void @_ZN2v88internal12WriteBarrier27MarkingSlowFromTracedHandleENS0_6TaggedINS0_10HeapObjectEEE(i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare noundef ptr @_ZN5cppgc8internal8BasePage16FromInnerAddressEPKNS0_8HeapBaseEPv(ptr noundef, ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNK5cppgc8internal9LargePage12ObjectHeaderEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #18 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.fr26, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.fr26, i64 24 ; 3 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEET_SI_SI_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dp, %bb.b ] ; 2 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i.i25.lcssa, 4             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i.i25.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.as, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.010.i.i.i ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.u, align 8
  %i.w = icmp slt i64 %.010.i.i.i, %i.o
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.x = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.aa
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.ab, align 8
  %i.ac = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ac, i64 %i.aa, i64 %i.y ; 4 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i
  %i.ae = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i.i
  %i.af = load <2 x ptr>, ptr %i.ad, align 8
  store <2 x ptr> %i.af, ptr %i.ae, align 8
  %i.ag = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !89

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  %or.cond.i.i.i = select i1 %i.q, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = load <2 x ptr>, ptr %i.s, align 8
  store <2 x ptr> %i.ai, ptr %i.t, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8 ; 2 uses
  %i.al = icmp ult ptr %.val.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.al, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.010.i.i.i.i.i ; 2 uses
  store ptr %.val.i.i.i.i.i.i, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", !llvm.loop !90

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i
  store <2 x ptr> %i.v, ptr %i.ar, align 8
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.as = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !91

.lr.ph.i9.i:                                      ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.at, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_RT0_.exit.i.i" ], [ %storemerge23.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_T0_SJ_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %i.au = load <2 x ptr>, ptr %i.at, align 8
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.at, align 8
  %i.av = load ptr, ptr %.fr26, align 8
  store ptr %i.av, ptr %i.at, align 8
  %i.aw = load ptr, ptr %i.g, align 8
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.ax, %i.a                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 4                 ; 3 uses
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = icmp sgt i64 %i.az, 2
  br i1 %i.bc, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.037.i.i.i22.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bd = shl i64 %.037.i.i.i22.i, 1              ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.bg
  %.val.i.i.i.i23.i = load ptr, ptr %i.bf, align 8
  %.val1.i.i.i.i24.i = load ptr, ptr %i.bh, align 8
  %i.bi = icmp ult ptr %.val.i.i.i.i23.i, %.val1.i.i.i.i24.i
  %spec.select.i.i.i25.i = select i1 %i.bi, i64 %i.bg, i64 %i.be ; 4 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i25.i
  %i.bk = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i22.i
  %i.bl = load <2 x ptr>, ptr %i.bj, align 8
  store <2 x ptr> %i.bl, ptr %i.bk, align 8
  %i.bm = icmp slt i64 %spec.select.i.i.i25.i, %i.bb
  br i1 %i.bm, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i13.i, !llvm.loop !89

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.bn = and i64 %i.ay, 16
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bp = add nsw i64 %i.az, -2
  %i.bq = ashr exact i64 %i.bp, 1
  %i.br = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bq
  br i1 %i.br, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bs = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bt = or disjoint i64 %i.bs, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i14.i
  %i.bw = load <2 x ptr>, ptr %i.bu, align 8
  store <2 x ptr> %i.bw, ptr %i.bv, align 8
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bt, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i19.i = load ptr, ptr %i.bx, align 8 ; 2 uses
  %i.by = icmp ult ptr %.val.i.i.i.i.i19.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.by, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bz = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.010.i.i.i.i17.i ; 2 uses
  store ptr %.val.i.i.i.i.i19.i, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cb, ptr %i.cc, align 8
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !90

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cd = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i20.i
  store <2 x ptr> %i.au, ptr %i.cd, align 8
  %i.ce = icmp sgt i64 %i.ay, 16
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !92

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 5 uses
  %.02440 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.dq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02440, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2341, i64 -16 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8       ; 5 uses
  %.val1.i.i.i = load ptr, ptr %i.ci, align 8     ; 5 uses
  %i.ck = icmp ult ptr %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load ptr, ptr %i.cj, align 8   ; 6 uses
  br i1 %i.ck, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.cl = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = load <2 x ptr>, ptr %.fr26, align 8
  store ptr %.val1.i.i.i, ptr %.fr26, align 8
  store ptr %i.cn, ptr %i.g, align 8
  store <2 x ptr> %i.co, ptr %i.ci, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cp = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  %i.cq = load ptr, ptr %.fr26, align 8           ; 2 uses
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %.val1.i27.i.i, ptr %.fr26, align 8
  store ptr %i.cq, ptr %i.cj, align 8
  %i.cr = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.cs = load ptr, ptr %i.g, align 8
  %i.ct = load ptr, ptr %i.cr, align 8
  store ptr %i.ct, ptr %i.g, align 8
  store ptr %i.cs, ptr %i.cr, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store ptr %.val.i.i.i, ptr %.fr26, align 8
  store ptr %i.cq, ptr %i.f, align 8
  %i.cu = load ptr, ptr %i.g, align 8
  %i.cv = load ptr, ptr %i.h, align 8
  store ptr %i.cv, ptr %i.g, align 8
  store ptr %i.cu, ptr %i.h, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.cw = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %i.h, align 8
  %i.cy = load <2 x ptr>, ptr %.fr26, align 8
  store ptr %.val.i.i.i, ptr %.fr26, align 8
  store ptr %i.cx, ptr %i.g, align 8
  store <2 x ptr> %i.cy, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  %i.da = load ptr, ptr %.fr26, align 8           ; 2 uses
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %.val1.i27.i.i, ptr %.fr26, align 8
  store ptr %i.da, ptr %i.cj, align 8
  %i.db = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 2 uses
  %i.dc = load ptr, ptr %i.g, align 8
  %i.dd = load ptr, ptr %i.db, align 8
  store ptr %i.dd, ptr %i.g, align 8
  store ptr %i.dc, ptr %i.db, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store ptr %.val1.i.i.i, ptr %.fr26, align 8
  store ptr %i.da, ptr %i.ci, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.g, align 8
  %i.dg = load ptr, ptr %i.de, align 8
  store ptr %i.dg, ptr %i.g, align 8
  store ptr %i.df, ptr %i.de, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader", %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.di, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2341, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load ptr, ptr %.fr26, align 8  ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i" ], [ %i.di, %bb.t ] ; 9 uses
  %.val.i.i14.i = load ptr, ptr %.sroa.014.1.i.i, align 8 ; 2 uses
  %i.dh = icmp ult ptr %.val.i.i14.i, %.val1.i.i13.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  br i1 %i.dh, label %bb.t, label %.preheader.i.i, !llvm.loop !93

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %.val1.i11.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8 ; 2 uses
  %i.dj = icmp ult ptr %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.dj, label %.preheader.i.i, label %bb.u, !llvm.loop !94

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEET_SI_SI_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store ptr %.val1.i11.i.i, ptr %.sroa.014.1.i.i, align 8
  store ptr %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.dm = load ptr, ptr %i.dk, align 8
  %i.dn = load ptr, ptr %i.dl, align 8
  store ptr %i.dn, ptr %i.dk, align 8
  store ptr %i.dm, ptr %i.dl, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_SI_T0_.exit.i", !llvm.loop !95

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEET_SI_SI_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2341, i64 noundef %i.cg)
  %i.do = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.dp = sub i64 %i.do, %i.a                     ; 2 uses
  %i.dq = ashr exact i64 %i.dp, 4                 ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, 16
  br i1 %i.dr, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !88

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEET_SI_SI_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKvS4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNK2v88internal13TracedHandles13GetNodeBoundsEvE3$_0EEEvT_SI_SI_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNKSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIPN2v88internal15TracedNodeBlockESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseIPN2v88internal15TracedNodeBlockESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPN2v88internal15TracedNodeBlockESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIPN2v88internal15TracedNodeBlockESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN2v88internal15TracedNodeBlockEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN2v88internal15TracedNodeBlockESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #20

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #11

declare noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_128ParallelWeakHandlesProcessorINS1_24ComputeWeaknessProcessorEE3JobD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #21 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_128ParallelWeakHandlesProcessorINS1_24ComputeWeaknessProcessorEE3Job3RunEPNS_11JobDelegateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca [2 x %"class.std::unique_ptr.673"], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca [2 x %"class.std::unique_ptr.673"], align 16 ; 6 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %5 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !13, !align !17
  %.val28 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val28, i64 1864
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #26 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic volatile i64, ptr @_ZZN2v88internal12_GLOBAL__N_128ParallelWeakHandlesProcessorINS1_24ComputeWeaknessProcessorEE3Job3RunEPNS_11JobDelegateEE28trace_event_unique_atomic394 acquire, align 8 ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %.not19 = icmp eq i64 %i.m, 0
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.11) #26 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  store atomic volatile i64 %i.t, ptr @_ZZN2v88internal12_GLOBAL__N_128ParallelWeakHandlesProcessorINS1_24ComputeWeaknessProcessorEE3Job3RunEPNS_11JobDelegateEE28trace_event_unique_atomic394 release, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ %i.s, %bb.c ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8
  %i.u = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.v = and i8 %i.u, 5
  %.not20 = icmp eq i8 %i.v, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.h, align 8, !nonnull !13, !align !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.z = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.154, ptr noundef null, i64 noundef 0, i64 noundef %i.y, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 128) #26, !inline_history !2
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.e
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #26, !inline_history !3
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.aj = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i.1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

end_hunk_0
