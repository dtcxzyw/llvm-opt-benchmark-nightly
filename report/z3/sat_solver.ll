Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_solver?download=true
inline.NumInlined: 5241
inline.NumDeleted: 1638
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 100
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN8reslimit6cancelEv

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #28

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt21__inplace_stable_sortIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_"(ptr noundef %0, ptr noundef %1) unnamed_addr #32 {
bb.a:
  %2 = alloca %struct.candidate, align 8          ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %common.ret28, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.016.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i, %1
  br i1 %.not17.i, label %common.ret28, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.019.i = phi ptr [ %.016.i, %.lr.ph.i ], [ %.0.i, %bb.i ] ; 7 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.019.i, %bb.i ] ; 4 uses
  %i.h = getelementptr i8, ptr %.pn18.i, i64 24
  %.0.val.i = load i64, ptr %i.h, align 8, !tbaa !583 ; 3 uses
  %.val.i = load i64, ptr %i.g, align 8, !tbaa !583
  %i.i = icmp ugt i64 %.0.val.i, %.val.i
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.019.i, i64 16, i1 false), !tbaa.struct !524
  %i.j = ptrtoint ptr %.019.i to i64
  %i.k = sub i64 %i.j, %i.b                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f, !prof !525

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32
  %i.o = sub nsw i64 0, %i.l
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.k, i1 false)
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %i.k, 16
  br i1 %i.q, label %bb.g, label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !524
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i

_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !524
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.s = load <2 x i64>, ptr %.019.i, align 8
  %i.t = getelementptr i8, ptr %.pn18.i, i64 8
  %.0.val12.i.i = load i64, ptr %i.t, align 8, !tbaa !583
  %i.u = icmp ugt i64 %.0.val.i, %.0.val12.i.i
  br i1 %i.u, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.0913.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.019.i, %bb.h ] ; 3 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.0913.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false), !tbaa.struct !524
  %i.v = getelementptr i8, ptr %.0913.i.i, i64 -24
  %.0.val.i.i = load i64, ptr %i.v, align 8, !tbaa !583
  %i.w = icmp ugt i64 %.0.val.i, %.0.val.i.i
  br i1 %i.w, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i", !llvm.loop !52

"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i": ; preds = %.lr.ph.i.i, %bb.h
  %.09.lcssa.i.i = phi ptr [ %.019.i, %bb.h ], [ %.0.i.i, %.lr.ph.i.i ]
  store <2 x i64> %i.s, ptr %.09.lcssa.i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i", %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %1
  br i1 %.not.i, label %common.ret28, label %bb.c, !llvm.loop !53

common.ret28:                                     ; preds = %.preheader.i, %bb.b, %bb.i, %bb.j
  ret void

bb.j:                                             ; preds = %bb.a
  %i.x = lshr i64 %i.d, 1                         ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.x ; 4 uses
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_"(ptr noundef %0, ptr noundef %i.y)
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_"(ptr noundef %i.y, ptr noundef %1)
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.a, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  tail call fastcc void @"_ZSt22__merge_without_bufferIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidatelN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_SD_T0_SE_T1_"(ptr noundef %0, ptr noundef %i.y, ptr noundef %1, i64 noundef %i.x, i64 noundef %i.ab)
  br label %common.ret28
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #32 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret34:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_T1_T2_"(ptr noundef %i.g, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidatelS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_SD_T0_SE_T1_SE_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret34

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_T1_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %2)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_T1_"(ptr noundef %i.g, ptr noundef %1, ptr noundef %2)
  tail call fastcc void @"_ZSt16__merge_adaptiveIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidatelS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_SD_T0_SE_T1_T2_"(ptr noundef %0, ptr noundef %i.g, ptr noundef %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt24__merge_sort_with_bufferIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 {
bb.a:
  %3 = alloca %struct.candidate, align 8          ; 4 uses
  %4 = alloca %struct.candidate, align 8          ; 24 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %"_ZSt16__insertion_sortIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_.exit.i"
  %i.g = phi i64 [ %i.cl, %"_ZSt16__insertion_sortIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_.exit.i" ], [ %i.b, %bb.a ] ; 6 uses
  %.031.i = phi ptr [ %i.ck, %"_ZSt16__insertion_sortIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_SD_T0_.exit.i" ], [ %0, %bb.a ] ; 38 uses
  %i.h = getelementptr i8, ptr %.031.i, i64 8     ; 6 uses
  %.019.i.ptr.i = getelementptr inbounds nuw i8, ptr %.031.i, i64 16 ; 3 uses
  %i.i = getelementptr i8, ptr %.031.i, i64 24    ; 2 uses
  %.0.val.i.i = load i64, ptr %i.i, align 8, !tbaa !583
  %.val.i.i = load i64, ptr %i.h, align 8, !tbaa !583 ; 2 uses
  %i.j = icmp ugt i64 %.0.val.i.i, %.val.i.i
  br i1 %i.j, label %bb.b, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.i, i64 16, i1 false), !tbaa.struct !524
  %i.k = ptrtoint ptr %.019.i.ptr.i to i64
  %i.l = sub i64 %i.k, %i.g                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 4                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !525

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.031.i, i64 32
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %.031.i, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.l, 16
  br i1 %i.r, label %bb.e, label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.031.i, i64 16, i1 false), !tbaa.struct !524
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.i

_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.031.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !524
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.val.i.1.pre.i = load i64, ptr %i.h, align 8, !tbaa !583
  br label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.i"

"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.i": ; preds = %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.i, %.lr.ph.i
  %.val.i.1.i = phi i64 [ %.val.i.1.pre.i, %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.i ], [ %.val.i.i, %.lr.ph.i ]
  %.019.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.031.i, i64 32 ; 6 uses
  %i.s = getelementptr i8, ptr %.031.i, i64 40    ; 2 uses
  %.0.val.i.1.i = load i64, ptr %i.s, align 8, !tbaa !583 ; 3 uses
  %i.t = icmp ugt i64 %.0.val.i.1.i, %.val.i.1.i
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.i"
  %i.u = load <2 x i64>, ptr %.019.i.ptr.1.i, align 8
  %.0.val12.i.i.1.i = load i64, ptr %i.i, align 8, !tbaa !583
  %i.v = icmp ugt i64 %.0.val.i.1.i, %.0.val12.i.i.1.i
  br i1 %i.v, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.1.i"

.lr.ph.i.i.1.i:                                   ; preds = %bb.f, %.lr.ph.i.i.1.i
  %.0913.i.i.1.i = phi ptr [ %.0.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.019.i.ptr.1.i, %bb.f ] ; 3 uses
  %.0.i.i.1.i = getelementptr inbounds i8, ptr %.0913.i.i.1.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.1.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.1.i, i64 16, i1 false), !tbaa.struct !524
  %i.w = getelementptr i8, ptr %.0913.i.i.1.i, i64 -24
  %.0.val.i.i.1.i = load i64, ptr %i.w, align 8, !tbaa !583
  %i.x = icmp ugt i64 %.0.val.i.1.i, %.0.val.i.i.1.i
  br i1 %i.x, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.1.i", !llvm.loop !52

"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.1.i": ; preds = %.lr.ph.i.i.1.i, %bb.f
  %.09.lcssa.i.i.1.i = phi ptr [ %.019.i.ptr.1.i, %bb.f ], [ %.0.i.i.1.i, %.lr.ph.i.i.1.i ]
  store <2 x i64> %i.u, ptr %.09.lcssa.i.i.1.i, align 8
  br label %bb.k

bb.g:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.1.i, i64 16, i1 false), !tbaa.struct !524
  %i.y = ptrtoint ptr %.019.i.ptr.1.i to i64
  %i.z = sub i64 %i.y, %i.g                       ; 3 uses
  %i.aa = ashr exact i64 %i.z, 4                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.h, !prof !525

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.z, 16
  br i1 %i.ac, label %bb.i, label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.1.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.1.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.031.i, i64 16, i1 false), !tbaa.struct !524
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.1.i

bb.j:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.031.i, i64 48
  %i.ae = sub nsw i64 0, %i.aa
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ae
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %.031.i, i64 %i.z, i1 false)
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.1.i

_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.1.i: ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.031.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !524
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.k

bb.k:                                             ; preds = %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.1.i, %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.1.i"
  %.019.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.031.i, i64 48 ; 6 uses
  %i.ag = getelementptr i8, ptr %.031.i, i64 56   ; 2 uses
  %.0.val.i.2.i = load i64, ptr %i.ag, align 8, !tbaa !583 ; 3 uses
  %.val.i.2.i = load i64, ptr %i.h, align 8, !tbaa !583
  %i.ah = icmp ugt i64 %.0.val.i.2.i, %.val.i.2.i
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load <2 x i64>, ptr %.019.i.ptr.2.i, align 8
  %.0.val12.i.i.2.i = load i64, ptr %i.s, align 8, !tbaa !583
  %i.aj = icmp ugt i64 %.0.val.i.2.i, %.0.val12.i.i.2.i
  br i1 %i.aj, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.2.i"

.lr.ph.i.i.2.i:                                   ; preds = %bb.l, %.lr.ph.i.i.2.i
  %.0913.i.i.2.i = phi ptr [ %.0.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.019.i.ptr.2.i, %bb.l ] ; 3 uses
  %.0.i.i.2.i = getelementptr inbounds i8, ptr %.0913.i.i.2.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.2.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.2.i, i64 16, i1 false), !tbaa.struct !524
  %i.ak = getelementptr i8, ptr %.0913.i.i.2.i, i64 -24
  %.0.val.i.i.2.i = load i64, ptr %i.ak, align 8, !tbaa !583
  %i.al = icmp ugt i64 %.0.val.i.2.i, %.0.val.i.i.2.i
  br i1 %i.al, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.2.i", !llvm.loop !52

"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.2.i": ; preds = %.lr.ph.i.i.2.i, %bb.l
  %.09.lcssa.i.i.2.i = phi ptr [ %.019.i.ptr.2.i, %bb.l ], [ %.0.i.i.2.i, %.lr.ph.i.i.2.i ]
  store <2 x i64> %i.ai, ptr %.09.lcssa.i.i.2.i, align 8
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.2.i, i64 16, i1 false), !tbaa.struct !524
  %i.am = ptrtoint ptr %.019.i.ptr.2.i to i64
  %i.an = sub i64 %i.am, %i.g                     ; 3 uses
  %i.ao = ashr exact i64 %i.an, 4                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 1
  br i1 %i.ap, label %bb.p, label %bb.n, !prof !525

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp eq i64 %i.an, 16
  br i1 %i.aq, label %bb.o, label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.2.i

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.2.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.031.i, i64 16, i1 false), !tbaa.struct !524
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.2.i

bb.p:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.031.i, i64 64
  %i.as = sub nsw i64 0, %i.ao
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %.031.i, i64 %i.an, i1 false)
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.2.i

_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.2.i: ; preds = %bb.p, %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.031.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !524
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.q

bb.q:                                             ; preds = %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.2.i, %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.2.i"
  %.019.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %.031.i, i64 64 ; 6 uses
  %i.au = getelementptr i8, ptr %.031.i, i64 72   ; 2 uses
  %.0.val.i.3.i = load i64, ptr %i.au, align 8, !tbaa !583 ; 3 uses
  %.val.i.3.i = load i64, ptr %i.h, align 8, !tbaa !583
  %i.av = icmp ugt i64 %.0.val.i.3.i, %.val.i.3.i
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = load <2 x i64>, ptr %.019.i.ptr.3.i, align 8
  %.0.val12.i.i.3.i = load i64, ptr %i.ag, align 8, !tbaa !583
  %i.ax = icmp ugt i64 %.0.val.i.3.i, %.0.val12.i.i.3.i
  br i1 %i.ax, label %.lr.ph.i.i.3.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.3.i"

.lr.ph.i.i.3.i:                                   ; preds = %bb.r, %.lr.ph.i.i.3.i
  %.0913.i.i.3.i = phi ptr [ %.0.i.i.3.i, %.lr.ph.i.i.3.i ], [ %.019.i.ptr.3.i, %bb.r ] ; 3 uses
  %.0.i.i.3.i = getelementptr inbounds i8, ptr %.0913.i.i.3.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.3.i, i64 16, i1 false), !tbaa.struct !524
  %i.ay = getelementptr i8, ptr %.0913.i.i.3.i, i64 -24
  %.0.val.i.i.3.i = load i64, ptr %i.ay, align 8, !tbaa !583
  %i.az = icmp ugt i64 %.0.val.i.3.i, %.0.val.i.i.3.i
  br i1 %i.az, label %.lr.ph.i.i.3.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.3.i", !llvm.loop !52

"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.3.i": ; preds = %.lr.ph.i.i.3.i, %bb.r
  %.09.lcssa.i.i.3.i = phi ptr [ %.019.i.ptr.3.i, %bb.r ], [ %.0.i.i.3.i, %.lr.ph.i.i.3.i ]
  store <2 x i64> %i.aw, ptr %.09.lcssa.i.i.3.i, align 8
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.3.i, i64 16, i1 false), !tbaa.struct !524
  %i.ba = ptrtoint ptr %.019.i.ptr.3.i to i64
  %i.bb = sub i64 %i.ba, %i.g                     ; 3 uses
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 1
  br i1 %i.bd, label %bb.v, label %bb.t, !prof !525

bb.t:                                             ; preds = %bb.s
  %i.be = icmp eq i64 %i.bb, 16
  br i1 %i.be, label %bb.u, label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.3.i

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.019.i.ptr.3.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.031.i, i64 16, i1 false), !tbaa.struct !524
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.3.i

bb.v:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %.031.i, i64 80
  %i.bg = sub nsw i64 0, %i.bc
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %.031.i, i64 %i.bb, i1 false)
  br label %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.3.i

_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.3.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.031.i, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !524
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.w

bb.w:                                             ; preds = %_ZSt13move_backwardIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateS7_ET0_T_S9_S8_.exit.i.3.i, %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.3.i"
  %.019.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.031.i, i64 80 ; 6 uses
  %i.bi = getelementptr i8, ptr %.031.i, i64 88   ; 2 uses
  %.0.val.i.4.i = load i64, ptr %i.bi, align 8, !tbaa !583 ; 3 uses
  %.val.i.4.i = load i64, ptr %i.h, align 8, !tbaa !583
  %i.bj = icmp ugt i64 %.0.val.i.4.i, %.val.i.4.i
  br i1 %i.bj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = load <2 x i64>, ptr %.019.i.ptr.4.i, align 8
  %.0.val12.i.i.4.i = load i64, ptr %i.au, align 8, !tbaa !583
  %i.bl = icmp ugt i64 %.0.val.i.4.i, %.0.val12.i.i.4.i
  br i1 %i.bl, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.4.i"

.lr.ph.i.i.4.i:                                   ; preds = %bb.x, %.lr.ph.i.i.4.i
  %.0913.i.i.4.i = phi ptr [ %.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.019.i.ptr.4.i, %bb.x ] ; 3 uses
  %.0.i.i.4.i = getelementptr inbounds i8, ptr %.0913.i.i.4.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i.4.i, i64 16, i1 false), !tbaa.struct !524
  %i.bm = getelementptr i8, ptr %.0913.i.i.4.i, i64 -24
  %.0.val.i.i.4.i = load i64, ptr %i.bm, align 8, !tbaa !583
  %i.bn = icmp ugt i64 %.0.val.i.4.i, %.0.val.i.i.4.i
  br i1 %i.bn, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.4.i", !llvm.loop !52

"_ZSt25__unguarded_linear_insertIPZN3sat6solver23get_backbone_candidatesER7svectorINS0_7literalEjEjE9candidateN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_23get_backbone_candidatesES5_jE3$_0EEEvT_T0_.exit.i.4.i": ; preds = %.lr.ph.i.i.4.i, %bb.x
  %.09.lcssa.i.i.4.i = phi ptr [ %.019.i.ptr.4.i, %bb.x ], [ %.0.i.i.4.i, %.lr.ph.i.i.4.i ]
  store <2 x i64> %i.bk, ptr %.09.lcssa.i.i.4.i, align 8
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
end_hunk_0
