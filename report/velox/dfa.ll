inline.NumInlined: 1926
inline.NumDeleted: 800
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3re23DFA6SearchESt17basic_string_viewIcSt11char_traitsIcEES4_bbbPbPPKcPNS_10SparseSetTIvEE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.d = zext i1 %7 to i8
  %i.e = zext i1 %6 to i8
  %i.f = zext i1 %5 to i8
  store i8 0, ptr %8, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN3re23DFA8RWLockerC1EPN4absl12lts_202401165MutexE(ptr noundef nonnull align 8 dereferenceable(9) %11, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  store i64 %1, ptr %12, align 8, !tbaa !213
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !208
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %3, ptr %i.h, align 8, !tbaa !213
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !208
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !193
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 0, ptr %i.i, align 8
  store ptr %11, ptr %i.k, align 8, !tbaa !203
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !202
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  store i64 0, ptr %i.m, align 8
  store i8 %i.f, ptr %i.i, align 8, !tbaa !244
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 34 ; 2 uses
  store i8 %i.e, ptr %i.n, align 2, !tbaa !242
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 35 ; 2 uses
  store i8 %i.d, ptr %i.o, align 1, !tbaa !243
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %10, ptr %i.p, align 8, !tbaa !200
  %i.q = invoke noundef zeroext i1 @_ZN3re23DFA13AnalyzeSearchEPNS0_12SearchParamsE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %12)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %8, align 1, !tbaa !8
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !193
  %magicptr = ptrtoint ptr %i.s to i64
  switch i64 %magicptr, label %bb.i [
    i64 1, label %bb.m
    i64 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = xor i1 %6, %7
  %spec.select.idx = select i1 %i.t, i64 %1, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx
  store ptr %spec.select, ptr %9, align 8, !tbaa !208
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 33
  %i.v = load i8, ptr %i.u, align 1, !tbaa !241, !range !134, !noundef !99
  %i.w = shl nuw nsw i8 %i.v, 2
  %i.x = load i8, ptr %i.n, align 2, !tbaa !242, !range !134, !noundef !99
  %i.y = shl nuw nsw i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, %i.w
  %i.aa = load i8, ptr %i.o, align 1, !tbaa !243, !range !134, !noundef !99
  %i.ab = or disjoint i8 %i.z, %i.aa
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3re23DFA14FastSearchLoopEPNS0_12SearchParamsEE8Searches, i64 %i.ac
  %.unpack.i = load i64, ptr %i.ad, align 16, !tbaa !103
  %i.ae = inttoptr i64 %.unpack.i to ptr
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %12)
          to label %_ZN3re23DFA14FastSearchLoopEPNS0_12SearchParamsE.exit unwind label %bb.k, !inline_history !245

_ZN3re23DFA14FastSearchLoopEPNS0_12SearchParamsE.exit: ; preds = %bb.i
  %i.ag = load i8, ptr %i.l, align 8, !tbaa !202, !range !134, !noundef !99
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN3re23DFA14FastSearchLoopEPNS0_12SearchParamsE.exit
  store i8 1, ptr %8, align 1, !tbaa !8
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %_ZN3re23DFA14FastSearchLoopEPNS0_12SearchParamsE.exit
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !205
  store ptr %i.aj, ptr %9, align 8, !tbaa !208
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.g, %bb.h, %bb.e
  %.1 = phi i1 [ false, %bb.e ], [ true, %bb.h ], [ false, %bb.g ], [ false, %bb.j ], [ %i.af, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN3re23DFA8RWLockerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.k ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @_ZN3re23DFA8RWLockerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %bb.m, %bb.b
  %.2 = phi i1 [ %.1, %bb.m ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re24Prog6GetDFAENS0_9MatchKindE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %0, ptr %i.a, align 8, !tbaa !246
  %i.e = load atomic i32, ptr %i.d acquire, align 8
  %.not.i = icmp eq i32 %i.e, 221
  br i1 %.not.i, label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit", label %bb.c, !prof !247

bb.c:                                             ; preds = %bb.b
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_0JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit"

"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr %0, ptr %i.b, align 8, !tbaa !246
  %i.g = load atomic i32, ptr %i.f acquire, align 8
  %.not.i4 = icmp eq i32 %i.g, 221
  br i1 %.not.i4, label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit", label %bb.e, !prof !247

bb.e:                                             ; preds = %bb.d
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_1JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit"

"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store ptr %0, ptr %i.c, align 8, !tbaa !246
  %i.i = load atomic i32, ptr %i.h acquire, align 4
  %.not.i5 = icmp eq i32 %i.i, 221
  br i1 %.not.i5, label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit", label %bb.g, !prof !247

bb.g:                                             ; preds = %bb.f
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_2JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.c)
  br label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit"

"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit": ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit", %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit", %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit"
  %.sink = phi i64 [ 160, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit" ], [ 152, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit" ], [ 152, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit" ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0 = load ptr, ptr %i.j, align 8, !tbaa !248
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3re24Prog9DeleteDFAEPNS_3DFAE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3re23DFAD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %1) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 176) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re24Prog9SearchDFAESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_6AnchorENS0_9MatchKindEPS4_PbPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i64 %1, ptr %2, i64 %3, ptr %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef captures(none) initializes((0, 1)) %8, ptr noundef %9) local_unnamed_addr #1 align 2 {
bb.a:
  %10 = alloca ptr, align 8                       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"struct.re2::hooks::DFASearchFailure", align 1 ; 3 uses
  store i8 0, ptr %8, align 1, !tbaa !8
  %i.d = icmp eq ptr %4, null                     ; 2 uses
  %spec.select96 = select i1 %i.d, i64 %1, i64 %3 ; 2 uses
  %spec.select97 = select i1 %i.d, ptr %2, ptr %4 ; 3 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !249, !range !134, !noundef !99 ; 3 uses
  %12 = trunc nuw i8 %i.e to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !133, !range !134, !noundef !99 ; 3 uses
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.j = load i8, ptr %i.i, align 2, !tbaa !250, !range !134, !noundef !99
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %.063 = select i1 %i.k, i8 %i.g, i8 %i.e
  %i.l = trunc nuw i8 %.063 to i1
  %.not = icmp ne ptr %spec.select97, %2
  %or.cond99.not = select i1 %i.l, i1 %.not, i1 false
  br i1 %or.cond99.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.064 = select i1 %i.k, i8 %i.e, i8 %i.g
  %i.m = trunc nuw i8 %.064 to i1
  %i.n = getelementptr inbounds nuw i8, ptr %spec.select97, i64 %spec.select96
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  %.not40 = icmp ne ptr %i.n, %i.o
  %or.cond102.not = select i1 %i.m, i1 %.not40, i1 false
  br i1 %or.cond102.not, label %bb.s, label %13

13:                                               ; preds = %bb.b
  %14 = icmp eq i32 %5, 1
  br i1 %14, label %15, label %bb.c

bb.c:                                             ; preds = %13
  %i.p = icmp eq i32 %6, 2
  %spec.select = or i1 %i.p, %12
  br label %15

15:                                               ; preds = %bb.c, %13
  %16 = phi i1 [ %spec.select, %bb.c ], [ true, %13 ]
  switch i32 %6, label %bb.d [
    i32 3, label %.thread78
    i32 2, label %.thread70
  ]

bb.d:                                             ; preds = %15
  br i1 %i.h, label %.thread70, label %bb.e

.thread78:                                        ; preds = %15
  %i.q = icmp eq ptr %9, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %0, ptr %i.a, align 8, !tbaa !246
  %i.s = load atomic i32, ptr %i.r acquire, align 8
  %.not.i4.i = icmp eq i32 %i.s, 221
  br i1 %.not.i4.i, label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", label %bb.i, !prof !247

bb.e:                                             ; preds = %bb.d
  %.not104 = icmp eq ptr %7, null
  br i1 %.not104, label %.thread70, label %bb.f

bb.f:                                             ; preds = %bb.e
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %bb.g, label %.thread70

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr %0, ptr %10, align 8, !tbaa !246
  %i.u = load atomic i32, ptr %i.t acquire, align 8
  %.not.i.i = icmp eq i32 %i.u, 221
  br i1 %.not.i.i, label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", label %bb.h, !prof !247

bb.h:                                             ; preds = %bb.g
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_0JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(8) %10)
  br label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i"

"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i": ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit

bb.i:                                             ; preds = %.thread78
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_1JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i"

"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i": ; preds = %bb.i, %.thread78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit

.thread70:                                        ; preds = %bb.f, %bb.d, %15, %bb.e
  %.03677 = phi i1 [ false, %bb.f ], [ true, %bb.e ], [ false, %15 ], [ false, %bb.d ]
  %.0356775 = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ true, %15 ], [ true, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr %0, ptr %i.b, align 8, !tbaa !246
  %i.w = load atomic i32, ptr %i.v acquire, align 4
  %.not.i5.i = icmp eq i32 %i.w, 221
  br i1 %.not.i5.i, label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", label %bb.j, !prof !247

bb.j:                                             ; preds = %.thread70
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_2JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.b)
  br label %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i"

"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i": ; preds = %bb.j, %.thread70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit

_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit:         ; preds = %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i", %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i"
  %.03676 = phi i1 [ %.03677, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ], [ %i.q, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ], [ false, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ]
  %.0356774 = phi i1 [ %.0356775, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ], [ false, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ], [ false, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ]
  %.sink.i = phi i64 [ 160, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_2JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ], [ 152, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_1JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ], [ 152, %"_ZN4absl12lts_202401169call_onceIZN3re24Prog6GetDFAENS3_9MatchKindEE3$_0JPS3_EEEvRNS0_9once_flagEOT_DpOT0_.exit.i" ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %.0.i = load ptr, ptr %i.x, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.y = load i8, ptr %i.i, align 2, !tbaa !250, !range !134, !noundef !99
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = xor i1 %i.z, true
  %17 = call noundef zeroext i1 @_ZN3re23DFA6SearchESt17basic_string_viewIcSt11char_traitsIcEES4_bbbPbPPKcPNS_10SparseSetTIvEE(ptr noundef nonnull align 8 dereferenceable(176) %.0.i, i64 %1, ptr %2, i64 %spec.select96, ptr %spec.select97, i1 noundef zeroext %16, i1 noundef zeroext %.03676, i1 noundef zeroext %i.aa, ptr noundef nonnull %8, ptr noundef nonnull %i.c, ptr noundef %9)
  %i.ab = load i8, ptr %8, align 1, !tbaa !8, !range !134, !noundef !99
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit
  %18 = tail call noundef ptr @_ZN3re25hooks23GetDFASearchFailureHookEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void %18(ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %21

bb.l:                                             ; preds = %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit
  br i1 %17, label %bb.m, label %21

bb.m:                                             ; preds = %bb.l
  br i1 %.0356774, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %19 = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.ad = load i8, ptr %i.i, align 2, !tbaa !250, !range !134, !noundef !99
  %i.ae = trunc nuw i8 %i.ad to i1
  %spec.select103.idx = select i1 %i.ae, i64 0, i64 %1
  %spec.select103 = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select103.idx
  %.not41 = icmp eq ptr %19, %spec.select103
  br i1 %.not41, label %bb.o, label %21

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not42 = icmp eq ptr %7, null
  br i1 %.not42, label %21, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %i.i, align 2, !tbaa !250, !range !134, !noundef !99
  %i.ag = trunc nuw i8 %i.af to i1
  %20 = load ptr, ptr %i.c, align 8, !tbaa !208   ; 3 uses
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ah = ptrtoint ptr %i.o to i64
  %i.ai = ptrtoint ptr %20 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %7, align 8, !tbaa !213
  store ptr %20, ptr %.sroa.448.0..sroa_idx, align 8, !tbaa !208
  br label %21

bb.r:                                             ; preds = %bb.p
  %i.ak = ptrtoint ptr %20 to i64
  %i.al = ptrtoint ptr %2 to i64
  %i.am = sub i64 %i.ak, %i.al
  store i64 %i.am, ptr %7, align 8, !tbaa !213
  store ptr %2, ptr %.sroa.448.0..sroa_idx, align 8, !tbaa !208
  br label %21

21:                                               ; preds = %bb.o, %bb.r, %bb.q, %bb.n, %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.n ], [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.a, %21
  %.1 = phi i1 [ %.0, %21 ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.1
}

declare noundef ptr @_ZN3re25hooks23GetDFASearchFailureHookEv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3re23DFA14BuildAllStatesERKSt8functionIFvPKibEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.re2::DFA::RWLocker", align 8 ; 7 uses
  %3 = alloca %"struct.re2::DFA::SearchParams", align 8 ; 9 uses
  %4 = alloca %"class.absl::lts_20240116::flat_hash_map", align 8 ; 15 uses
  %5 = alloca %"class.std::deque", align 8        ; 18 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i8, ptr %i.d, align 4, !tbaa !38, !range !134, !noundef !99
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.bn, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN3re23DFA8RWLockerC1EPN4absl12lts_202401165MutexE(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  store ptr null, ptr %i.h, align 8, !tbaa !193
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, i8 0, i64 36, i1 false)
  store ptr %2, ptr %i.i, align 8, !tbaa !203
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.j, align 8, !tbaa !202
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = invoke noundef zeroext i1 @_ZN3re23DFA13AnalyzeSearchEPNS0_12SearchParamsE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = icmp uge ptr %i.m, inttoptr (i64 2 to ptr)
  %or.cond.not = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond.not, label %bb.e, label %bb.bl

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2024011618container_internal11kEmptyGroupE, i64 16), ptr %4, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIPN3re23DFA5StateESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !98
  %i.r = lshr i64 %i.q, 1
  %i.s = trunc i64 %i.r to i32
  %i.t = load ptr, ptr %4, align 8, !tbaa !97, !noalias !251 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 1, i32 1), !noalias !251
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !106, !noalias !251 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = add i64 %i.v, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.x = zext i64 %i.w to i128
  %i.y = mul nuw i128 %i.x, 11376068507788127593  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64
  %i.ac = add i64 %i.ab, %i.v
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw i128 %i.ad, 11376068507788127593 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae                   ; 2 uses
  %i.ah = trunc i128 %i.ag to i64                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !96, !noalias !254 ; 2 uses
  %i.ak = lshr i64 %i.ah, 7
  %i.al = ptrtoint ptr %i.t to i64
  %i.am = lshr i64 %i.al, 12
  %i.an = xor i64 %i.ak, %i.am
  %i.ao = trunc i128 %i.ag to i8
  %i.ap = and i8 %i.ao, 127
  %i.aq = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.as = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !251
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i.i112 = phi i64 [ %i.an, %bb.f ], [ %i.bk, %bb.h ]
  %.sroa.12.0.i.i113 = phi i64 [ 0, %bb.f ], [ %i.bj, %bb.h ]
  %.sroa.6.0.i.i114 = and i64 %.pn.i.i112, %i.aj  ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.6.0.i.i114
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !103, !noalias !251 ; 3 uses
  %i.av = icmp eq <16 x i8> %i.ar, %i.au
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not50.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i117, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %bb.g, %.critedge.i.i
  %.sroa.019.051.i.i = phi i16 [ %i.bf, %.critedge.i.i ], [ %i.aw, %bb.g ] ; 3 uses
  %i.ax = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = add i64 %.sroa.6.0.i.i114, %i.ay
  %i.ba = and i64 %i.az, %i.aj
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !106, !noalias !251
  %i.bd = icmp eq ptr %i.bc, %i.u
  br i1 %i.bd, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit, label %.critedge.i.i, !prof !247

.critedge.i.i:                                    ; preds = %.lr.ph.i.i115
  %i.be = add i16 %.sroa.019.051.i.i, -1
  %i.bf = and i16 %i.be, %.sroa.019.051.i.i       ; 2 uses
  %.not.i.i116 = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i116, label %._crit_edge.i.i117, label %.lr.ph.i.i115

._crit_edge.i.i117:                               ; preds = %.critedge.i.i, %bb.g
  %i.bg = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.au, <16 x i8> %i.au)
  %i.bh = icmp slt <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %.not49.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not49.i.i, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %._crit_edge.i.i117
  %i.bj = add i64 %.sroa.12.0.i.i113, 16          ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.6.0.i.i114
  br label %bb.g

bb.i:                                             ; preds = %._crit_edge.i.i117
  %i.bl = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ah)
          to label %.noexc118 unwind label %bb.p

.noexc118:                                        ; preds = %bb.i
  %i.bm = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !100, !noalias !251
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl ; 2 uses
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !106, !noalias !251
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !257, !noalias !251
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.s, ptr %i.bp, align 8, !tbaa !259, !noalias !251
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit: ; preds = %.lr.ph.i.i115, %.noexc118
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !260 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !267
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %.not.i = icmp eq ptr %i.br, %i.bu
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !106
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !106
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !260
  br label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit
  invoke void @_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit unwind label %bb.q

_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.j, %bb.k
  %i.bx = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !81 ; 2 uses
  %i.ca = add nsw i32 %i.bz, 1                    ; 2 uses
  %i.cb = sext i32 %i.ca to i64                   ; 6 uses
  %i.cc = icmp slt i32 %i.bz, -1
  br i1 %i.cc, label %bb.l, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.l:                                             ; preds = %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
          to label %.noexc79 unwind label %bb.r

.noexc79:                                         ; preds = %bb.l
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit
  %.not.i.i.i.i = icmp eq i32 %i.ca, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cd = shl nuw nsw i64 %i.cb, 2
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #26
          to label %.noexc80 unwind label %bb.r   ; 5 uses

.noexc80:                                         ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cb ; 2 uses
  store i32 0, ptr %i.ce, align 4, !tbaa !79
  %i.cg = getelementptr i8, ptr %i.ce, i64 4      ; 3 uses
  %i.ch = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc80
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ch, 2  ; 2 uses
end_hunk_0
