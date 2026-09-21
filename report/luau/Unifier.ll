Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Unifier?download=true
inline.NumInlined: 4708
inline.NumDeleted: 1828
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4Luau9WeirdIterC2EPKNS_11TypePackVarERNS_6TxnLogE:bb.a
  %i.d = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef nonnull %i.c) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %1) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i

_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i: ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.f = load i32, ptr %.sink.i, align 8, !tbaa !64
  %i.g = icmp eq i32 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %spec.select = select i1 %i.g, ptr %i.h, ptr null
  br label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit

_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit: ; preds = %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %spec.select, %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i ] ; 5 uses
  store ptr %.0.i, ptr %i.b, align 8, !tbaa !425
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.i, align 8, !tbaa !426
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.j, align 8, !tbaa !434
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !221
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.l, align 8, !tbaa !222
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.m, align 8, !tbaa !421
  %.not14 = icmp eq ptr %.0.i, null
  br i1 %.not14, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit
  %i.n = load ptr, ptr %.0.i, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %.lr.ph25, label %.critedge

.lr.ph25:                                         ; preds = %.lr.ph.preheader, %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13
  %i.r = phi ptr [ %i.ac, %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13 ], [ %.0.i, %.lr.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !70, !range !71, !noundef !72
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph25
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66   ; 2 uses
  %i.x = tail call noundef ptr @_ZNK4Luau6TxnLog7pendingEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %i.w) ; 2 uses
  %.not.i7 = icmp eq ptr %i.x, null
  br i1 %.not.i7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef nonnull %i.x) ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i8, label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13.thread, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i9

bb.f:                                             ; preds = %bb.d
  %i.z = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %i.w) ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i12, label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13.thread, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i9

_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i9: ; preds = %bb.f, %bb.e
  %.sink.i10 = phi ptr [ %i.y, %bb.e ], [ %i.z, %bb.f ] ; 3 uses
  %i.aa = load i32, ptr %.sink.i10, align 8, !tbaa !64
  %i.ab = icmp eq i32 %i.aa, 4
  br i1 %i.ab, label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13, label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13.thread

_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13.thread: ; preds = %bb.e, %bb.f, %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i9
  store ptr null, ptr %i.b, align 8, !tbaa !425
  br label %.critedge

_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13: ; preds = %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i9
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i10, i64 8 ; 3 uses
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !425
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink.i10, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph25, label %.critedge, !llvm.loop !749

.critedge:                                        ; preds = %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13, %.lr.ph25, %.lr.ph.preheader, %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit13.thread, %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit
  ret void
}

declare noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_8TypePackE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef align 8) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau9WeirdIter8pushTypeEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !435, !nonnull !72, !align !201
  %i.c = load ptr, ptr %0, align 8, !tbaa !427
  %i.d = tail call noundef ptr @_ZN4Luau6TxnLog5queueEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %i.c)
  %i.e = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %i.d) ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.e, align 8, !tbaa !64
  %i.g = icmp eq i32 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br i1 %i.g, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.thread

_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !218  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !219
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit
  store ptr %1, ptr %i.j, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !218
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !220  ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #29
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i5 = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i5)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %1, ptr %i.z, align 8, !tbaa !74
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !219
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #28
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !220
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !218
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.k, align 8, !tbaa !219
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.ag, align 8, !tbaa !425
  br label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.thread

_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE9push_backERKS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau9WeirdIter7advanceEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !425  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK4Luau9WeirdIter4goodEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !426  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !220
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ult i64 %i.d, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %i.d, 1                      ; 2 uses
  store i64 %i.m, ptr %i.c, align 8, !tbaa !426
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %i.m, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !434, !range !71, !noundef !72
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = icmp ult i64 %i.n, %i.k                  ; 2 uses
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %_ZNK4Luau9WeirdIter4goodEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !70, !range !71, !noundef !72
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %thread-pre-split.thread

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !435, !nonnull !72, !align !201
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.z = tail call noundef ptr @_ZNK4Luau6TxnLog6followEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(128) %i.x, ptr noundef %i.y) ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !427
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !435, !nonnull !72, !align !201
  %i.ab = tail call noundef ptr @_ZNK4Luau6TxnLog7pendingEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noundef %i.z) ; 2 uses
  %.not.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef nonnull %i.ab) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %thread-pre-split.thread16, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.ad = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %i.z) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %thread-pre-split.thread16, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i

_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i: ; preds = %bb.h, %bb.g
  %.sink.i = phi ptr [ %i.ac, %bb.g ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ae = load i32, ptr %.sink.i, align 8, !tbaa !64
  %i.af = icmp eq i32 %i.ae, 4
  br i1 %i.af, label %thread-pre-split, label %thread-pre-split.thread16

thread-pre-split.thread16:                        ; preds = %bb.g, %bb.h, %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNK4Luau9WeirdIter4goodEv.exit

thread-pre-split:                                 ; preds = %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !425
  store i64 0, ptr %i.c, align 8, !tbaa !426
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.e, %thread-pre-split
  %i.ah = phi ptr [ %i.ag, %thread-pre-split ], [ %i.b, %bb.e ] ; 2 uses
  %i.ai = phi i64 [ 0, %thread-pre-split ], [ %i.n, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !218
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !220
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp ult i64 %i.ai, %i.ap
  br label %_ZNK4Luau9WeirdIter4goodEv.exit

_ZNK4Luau9WeirdIter4goodEv.exit:                  ; preds = %thread-pre-split.thread16, %bb.d, %thread-pre-split.thread, %bb.a
  %.0 = phi i1 [ %i.aq, %thread-pre-split.thread ], [ false, %bb.a ], [ false, %thread-pre-split.thread16 ], [ %i.r, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4Luau9WeirdIter7canGrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !435, !nonnull !72, !align !201
  %i.c = load ptr, ptr %0, align 8, !tbaa !427    ; 2 uses
  %i.d = tail call noundef ptr @_ZNK4Luau6TxnLog7pendingEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %i.c) ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef nonnull %i.d) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNK4Luau6TxnLog10getMutableINS_12FreeTypePackEPKNS_11TypePackVarEEEPT_T0_.exit, label %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %i.c) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK4Luau6TxnLog10getMutableINS_12FreeTypePackEPKNS_11TypePackVarEEEPT_T0_.exit, label %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i

_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i: ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.g = load i32, ptr %.sink.i, align 8, !tbaa !64
  %i.h = icmp eq i32 %i.g, 2
  br label %_ZNK4Luau6TxnLog10getMutableINS_12FreeTypePackEPKNS_11TypePackVarEEEPT_T0_.exit

_ZNK4Luau6TxnLog10getMutableINS_12FreeTypePackEPKNS_11TypePackVarEEEPT_T0_.exit: ; preds = %bb.b, %bb.c, %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i
  %.0.i = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ %i.h, %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau9WeirdIter4growEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !435, !nonnull !72, !align !201
  %i.c = load ptr, ptr %0, align 8, !tbaa !427    ; 2 uses
  %i.d = tail call noundef ptr @_ZNK4Luau6TxnLog7pendingEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %i.c) ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %. = select i1 %.not.i, ptr %i.c, ptr %i.d
  %i.e = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %.) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i64, ptr %i.f, align 4
  store i64 %i.h, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !751  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.k, align 8, !tbaa !421
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4Luau10getMutableINS_12FreeTypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !435, !nonnull !72, !align !201
  %i.m = load ptr, ptr %0, align 8, !tbaa !427
  %i.n = tail call noundef ptr @_ZN4Luau6TxnLog7replaceINS_9Unifiable5BoundIPKNS_11TypePackVarEEEEEPNS_15PendingTypePackES6_T_(ptr noundef nonnull align 8 dereferenceable(128) %i.l, ptr noundef %i.m, ptr %1) ; 0 uses
  store ptr %1, ptr %0, align 8, !tbaa !427
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !435, !nonnull !72, !align !201
  %i.p = tail call noundef ptr @_ZNK4Luau6TxnLog7pendingEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(128) %i.o, ptr noundef %1) ; 2 uses
  %.not.i7 = icmp eq ptr %i.p, null
  br i1 %.not.i7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef nonnull %i.p) ; 2 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i8, label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.r = tail call noundef ptr @_ZN4Luau9asMutableEPKNS_11TypePackVarE(ptr noundef %1) ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i11, label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit, label %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i

_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i: ; preds = %bb.d, %bb.c
  %.sink.i9 = phi ptr [ %i.q, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = load i32, ptr %.sink.i9, align 8, !tbaa !64
  %i.t = icmp eq i32 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i9, i64 8
  %i.v = select i1 %i.t, ptr %i.u, ptr null
  br label %_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit

_ZNK4Luau6TxnLog10getMutableINS_8TypePackEPKNS_11TypePackVarEEEPT_T0_.exit: ; preds = %bb.c, %bb.d, %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i
  %.0.i10 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %i.v, %_ZN4Luau10getMutableINS_8TypePackEEEPT_PNS_15PendingTypePackE.exit.sink.split.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i10, ptr %i.w, align 8, !tbaa !425
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.x, align 8, !tbaa !426
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.y, align 8, !tbaa !434
  ret void
}

declare noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef align 8) local_unnamed_addr #7

declare void @_ZN4Luau11TypePackVarC1EONS_7VariantIJNS_9Unifiable5BoundIPKS0_EENS2_5ErrorIS5_EENS_12FreeTypePackENS_15GenericTypePackENS_8TypePackENS_16VariadicTypePackENS_15BlockedTypePackENS_28TypeFunctionInstanceTypePackEEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #7

declare noundef zeroext i1 @_ZN4Luau10isOptionalEPKNS_4TypeE(ptr noundef) local_unnamed_addr #7

declare noundef i64 @_ZN4Luau4sizeEPKNS_11TypePackVarEPNS_6TxnLogE(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN4Luau13InstantiationESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !346    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN4Luau13InstantiationEEclEPS1_.exit

_ZNKSt14default_deleteIN4Luau13InstantiationEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN4Luau13InstantiationD2Ev(ptr noundef nonnull align 8 dead_on_return(1040) dereferenceable(1040) %i.a) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1040) #28
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN4Luau13InstantiationEEclEPS1_.exit, %bb.a
  ret void
}

declare void @_ZN4Luau6TxnLog8pushSeenEPKNS_11TypePackVarES3_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZN4Luau6formatB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4Luau6finiteEPKNS_11TypePackVarEPNS_6TxnLogE(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZN4Luau6TxnLog7popSeenEPKNS_11TypePackVarES3_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau13InstantiationC2EPKNS_6TxnLogEPNS_9TypeArenaENS_7NotNullINS_12BuiltinTypesEEENS_9TypeLevelEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4, ptr noundef %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.24", align 8    ; 9 uses
  %7 = alloca %"class.std::vector.29", align 8    ; 9 uses
  tail call void @_ZN4Luau12SubstitutionC2EPKNS_6TxnLogEPNS_9TypeArenaE(ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4Luau13InstantiationE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %3, ptr %i.a, align 8, !tbaa !188
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 %4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %5, ptr %i.c, align 8, !tbaa !753
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN4Luau15ReplaceGenericsC2EPKNS_6TxnLogEPNS_9TypeArenaENS_7NotNullINS_12BuiltinTypesEEENS_9TypeLevelEPNS_5ScopeERKSt6vectorIPKNS_4TypeESaISF_EERKSC_IPKNS_11TypePackVarESaISM_EE(ptr noundef nonnull align 8 dereferenceable(544) %i.d, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %7, align 8, !tbaa !340    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !418
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #28
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.k = load ptr, ptr %6, align 8, !tbaa !220    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !219
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #28
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %7, align 8, !tbaa !340    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !418
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #28
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit13

end_hunk_0
