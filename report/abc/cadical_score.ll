Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_score?download=true
inline.NumInlined: 270
inline.NumDeleted: 146
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN7CaDiCaL4heapINS_13score_smallerEE9push_backEj = comdat any

$_ZN7CaDiCaL4heapINS_13score_smallerEE9pop_frontEv = comdat any

$_ZN7CaDiCaL4heapINS_13score_smallerEE2upEj = comdat any

$_ZN7CaDiCaL4heapINS_13score_smallerEE4downEj = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN7CaDiCaLL21invalid_heap_positionE = internal constant i32 -1, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal11init_scoresEii(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.05 = phi i32 [ %1, %.lr.ph ], [ %i.c, %bb.b ]
  %i.c = add nsw i32 %.05, 1                      ; 3 uses
  tail call void @_ZN7CaDiCaL4heapINS_13score_smallerEE9push_backEj(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i32 noundef %i.c)
  %exitcond.not = icmp eq i32 %i.c, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL4heapINS_13score_smallerEE9push_backEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.b, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.j, ptr %i.a, align 8, !tbaa !10
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.f, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #8
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i, %i.g ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.g
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 2305843009213693951)
  %i.o = select i1 %i.m, i64 2305843009213693951, i64 %i.n ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #9 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.f ; 2 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !16
  %i.s = icmp sgt i64 %i.f, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.not.i17.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #10
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !14
  store ptr %i.t, ptr %i.a, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store ptr %i.u, ptr %i.h, align 8, !tbaa !15
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.v = zext i32 %1 to i64                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2                 ; 2 uses
  %.not.i1 = icmp ugt i64 %i.ad, %i.v
  br i1 %.not.i1, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ae = add nuw nsw i64 %i.v, 1
  %i.af = sub nuw nsw i64 %i.ae, %i.ad
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr %i.y, i64 noundef %i.af, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !14
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.g
  %i.ag = phi ptr [ %.pre.i, %bb.g ], [ %i.z, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %i.ah = trunc i64 %i.g to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.v
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !16
  tail call void @_ZN7CaDiCaL4heapINS_13score_smallerEE2upEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1)
  tail call void @_ZN7CaDiCaL4heapINS_13score_smallerEE4downEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal14shuffle_scoresEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4300
  %i.d = load i32, ptr %i.c, align 4
  %.not9 = icmp eq i32 %i.d, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not9
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5352 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !176
  %i.g = add nsw i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.i = load i32, ptr %i.h, align 8, !tbaa !177
  %.not10 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 5 uses
  br i1 %.not10, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !178  ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !178
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %._crit_edge73.thread, label %.lr.ph65

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 2 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !14   ; 4 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %.not.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i, label %_ZN7CaDiCaL12erase_vectorIjEEvRSt6vectorIT_SaIS2_EE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZN7CaDiCaL12erase_vectorIjEEvRSt6vectorIT_SaIS2_EE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.t) #10
  br label %_ZN7CaDiCaL12erase_vectorIjEEvRSt6vectorIT_SaIS2_EE.exit.i

_ZN7CaDiCaL12erase_vectorIjEEvRSt6vectorIT_SaIS2_EE.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !14   ; 4 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %.not.i1.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i1.i, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5eraseEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL12erase_vectorIjEEvRSt6vectorIT_SaIS2_EE.exit.i
  %.not.i.i.i.i2.i = icmp eq ptr %i.x, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i2.i, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5eraseEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #10
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5eraseEv.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE5eraseEv.exit: ; preds = %_ZN7CaDiCaL12erase_vectorIjEEvRSt6vectorIT_SaIS2_EE.exit.i, %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !179 ; 2 uses
  %.not1152 = icmp eq i32 %i.ac, 0
  br i1 %.not1152, label %._crit_edge73.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !179 ; 2 uses
  %.not1259 = icmp slt i32 %.pre, 2
  br i1 %.not1259, label %.loopexit, label %_ZN7CaDiCaL6Random8pick_intEii.exit.preheader

_ZN7CaDiCaL6Random8pick_intEii.exit.preheader:    ; preds = %._crit_edge
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !176
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !180
  %i.ag = sext i32 %i.af to i64
  %i.ah = add i64 %i.ad, %i.ag
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = mul i64 %spec.select.i.i, 6364136223846793005
  %i.aj = add i64 %i.ai, 1442695040888963407
  br label %_ZN7CaDiCaL6Random8pick_intEii.exit

.lr.ph:                                           ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE5eraseEv.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %storemerge56 = phi i32 [ %i.ay, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ac, %_ZN7CaDiCaL4heapINS_13score_smallerEE5eraseEv.exit ] ; 3 uses
  %.sroa.18.055 = phi ptr [ %.sroa.18.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZN7CaDiCaL4heapINS_13score_smallerEE5eraseEv.exit ] ; 3 uses
  %.sroa.11.054 = phi ptr [ %.sroa.11.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZN7CaDiCaL4heapINS_13score_smallerEE5eraseEv.exit ] ; 3 uses
  %.sroa.033.053 = phi ptr [ %.sroa.033.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZN7CaDiCaL4heapINS_13score_smallerEE5eraseEv.exit ] ; 5 uses
  %.not.i = icmp eq ptr %.sroa.11.054, %.sroa.18.055
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  store i32 %storemerge56, ptr %.sroa.11.054, align 4, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ak = ptrtoint ptr %.sroa.18.055 to i64
  %i.al = ptrtoint ptr %.sroa.033.053 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775804
  br i1 %i.an, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #8
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ao = ashr exact i64 %i.am, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 2305843009213693951)
  %i.as = select i1 %i.aq, i64 2305843009213693951, i64 %i.ar ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #9 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store i32 %storemerge56, ptr %i.av, align 4, !tbaa !16
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %.sroa.033.053, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.033.053, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.033.053, i64 noundef %i.am) #10
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.sroa.033.3 = phi ptr [ %i.au, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.033.053, %bb.h ] ; 5 uses
  %.pn = phi ptr [ %i.av, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.11.054, %bb.h ]
  %.sroa.18.3 = phi ptr [ %i.ax, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.18.055, %bb.h ] ; 3 uses
  %.sroa.11.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  %i.ay = add nsw i32 %storemerge56, -1           ; 2 uses
  %.not11 = icmp eq i32 %i.ay, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !181

_ZN7CaDiCaL6Random8pick_intEii.exit:              ; preds = %_ZN7CaDiCaL6Random8pick_intEii.exit.preheader, %_ZN7CaDiCaL6Random8pick_intEii.exit
  %indvars.iv = phi i64 [ 0, %_ZN7CaDiCaL6Random8pick_intEii.exit.preheader ], [ %indvars.iv.next, %_ZN7CaDiCaL6Random8pick_intEii.exit ] ; 4 uses
  %i.az = phi i32 [ %.pre, %_ZN7CaDiCaL6Random8pick_intEii.exit.preheader ], [ %i.br, %_ZN7CaDiCaL6Random8pick_intEii.exit ]
  %.sroa.028.060 = phi i64 [ %i.aj, %_ZN7CaDiCaL6Random8pick_intEii.exit.preheader ], [ %i.bb, %_ZN7CaDiCaL6Random8pick_intEii.exit ]
  %i.ba = mul i64 %.sroa.028.060, 6364136223846793005
  %i.bb = add i64 %i.ba, 1442695040888963407      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL4heapINS_13score_smallerEE4downEj:bb.a
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.not.i.i13 = icmp ugt i64 %i.ae, %i.a
  br i1 %.not.i.i13, label %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = sub nuw nsw i64 %i.d, %i.ae
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.aa, i64 noundef %i.af, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i14 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %i.a
  %.pre36 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !16
  %.pre37 = load ptr, ptr %0, align 8, !tbaa !14
  %.pre38 = load ptr, ptr %i.c, align 8, !tbaa !10 ; 2 uses
  %.pre49 = ptrtoint ptr %.pre38 to i64
  %.pre51 = ptrtoint ptr %.pre.i.i14 to i64
  %.pre53 = sub i64 %.pre49, %.pre51
  %.pre55 = ashr exact i64 %.pre53, 2
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit: ; preds = %bb.d, %bb.e
  %.pre-phi56 = phi i64 [ %i.ae, %bb.d ], [ %.pre55, %bb.e ] ; 2 uses
  %i.ag = phi ptr [ %i.n, %bb.d ], [ %.pre.i.i14, %bb.e ]
  %i.ah = phi ptr [ %i.aa, %bb.d ], [ %.pre38, %bb.e ]
  %i.ai = phi ptr [ %i.u, %bb.d ], [ %.pre37, %bb.e ] ; 2 uses
  %i.aj = phi i32 [ %i.p, %bb.d ], [ %.pre36, %bb.e ] ; 2 uses
  %i.ak = shl i32 %i.aj, 1
  %i.al = or disjoint i32 %i.ak, 1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16 ; 6 uses
  %.not.i.i15 = icmp ugt i64 %.pre-phi56, %i.a
  br i1 %.not.i.i15, label %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit
  %i.ap = sub nuw nsw i64 %i.d, %.pre-phi56
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ah, i64 noundef %i.ap, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i16 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert39 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i16, i64 %i.a
  %.pre40 = load i32, ptr %.phi.trans.insert39, align 4, !tbaa !16
  %.pre41 = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit: ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit, %bb.f
  %i.aq = phi ptr [ %.pre.i.i16, %bb.f ], [ %i.ag, %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit ] ; 3 uses
  %i.ar = phi ptr [ %.pre41, %bb.f ], [ %i.ai, %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit ] ; 2 uses
  %i.as = phi i32 [ %.pre40, %bb.f ], [ %i.aj, %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit ] ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = add nuw nsw i64 %i.au, 2
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = icmp ult i64 %i.av, %i.ba
  br i1 %i.bb, label %bb.g, label %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge

_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge: ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit
  %.pre45 = load ptr, ptr %i.f, align 8, !tbaa !187
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %.pre45, i64 688
  %.pre47 = load ptr, ptr %.phi.trans.insert46, align 8, !tbaa !185
  %.pre48 = zext i32 %i.ao to i64
  br label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25

bb.g:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !10  ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.aq to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2                 ; 2 uses
  %.not.i.i17 = icmp ugt i64 %i.bg, %i.a
  br i1 %.not.i.i17, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = sub nuw nsw i64 %i.d, %i.bg
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bc, i64 noundef %i.bh, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i18 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert42 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i18, i64 %i.a
  %.pre43 = load i32, ptr %.phi.trans.insert42, align 4, !tbaa !16
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit: ; preds = %bb.g, %bb.h
  %i.bi = phi ptr [ %.pre.i.i18, %bb.h ], [ %i.aq, %bb.g ] ; 3 uses
  %i.bj = phi ptr [ %.pre44, %bb.h ], [ %i.ar, %bb.g ]
  %i.bk = phi i32 [ %.pre43, %bb.h ], [ %i.as, %bb.g ]
  %i.bl = shl i32 %i.bk, 1
  %i.bm = add i32 %i.bl, 2
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16 ; 3 uses
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !187
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 688
  %i.bs = zext i32 %i.ao to i64                   ; 3 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !185 ; 5 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !186 ; 2 uses
  %i.bw = zext i32 %i.bp to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !186 ; 2 uses
  %i.bz = fcmp olt double %i.bv, %i.by
  br i1 %i.bz, label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit
  %i.ca = fcmp ogt double %i.bv, %i.by
  br i1 %i.ca, label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25, label %_ZN7CaDiCaL13score_smallerclEjj.exit

_ZN7CaDiCaL13score_smallerclEjj.exit:             ; preds = %bb.i
  %i.cb = icmp ugt i32 %i.ao, %i.bp
  %cond.fr = freeze i1 %i.cb
  br i1 %cond.fr, label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread, label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25

_ZN7CaDiCaL13score_smallerclEjj.exit.thread:      ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit, %_ZN7CaDiCaL13score_smallerclEjj.exit
  br label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25

_ZN7CaDiCaL13score_smallerclEjj.exit.thread25:    ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge, %bb.i, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread, %_ZN7CaDiCaL13score_smallerclEjj.exit
  %i.cc = phi ptr [ %i.aq, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge ], [ %i.bi, %bb.i ], [ %i.bi, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread ], [ %i.bi, %_ZN7CaDiCaL13score_smallerclEjj.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre48, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge ], [ %i.bs, %bb.i ], [ %i.bw, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread ], [ %i.bs, %_ZN7CaDiCaL13score_smallerclEjj.exit ] ; 4 uses
  %i.cd = phi ptr [ %.pre47, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge ], [ %i.bt, %bb.i ], [ %i.bt, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread ], [ %i.bt, %_ZN7CaDiCaL13score_smallerclEjj.exit ] ; 2 uses
  %.1 = phi i32 [ %i.ao, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge ], [ %i.ao, %bb.i ], [ %i.bp, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread ], [ %i.ao, %_ZN7CaDiCaL13score_smallerclEjj.exit ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.a
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !186 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.pre-phi
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !186 ; 2 uses
  %i.ci = fcmp olt double %i.cf, %i.ch
  br i1 %i.ci, label %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread, label %bb.j

bb.j:                                             ; preds = %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25
  %i.cj = fcmp ule double %i.cf, %i.ch
  %i.ck = icmp ugt i32 %1, %.1
  %or.cond = and i1 %i.ck, %i.cj
  br i1 %or.cond, label %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread, label %.thread

_ZN7CaDiCaL13score_smallerclEjj.exit20.thread:    ; preds = %bb.j, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !10  ; 3 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cc to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2                 ; 3 uses
  %.not.i.i21 = icmp ugt i64 %i.cp, %i.a
  br i1 %.not.i.i21, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread
  %i.cq = sub nuw nsw i64 %i.d, %i.cp
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cl, i64 noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i22 = load ptr, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !10 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre.i.i22 to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 2
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i

_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i: ; preds = %bb.k, %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread
  %i.cr = phi ptr [ %i.cc, %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread ], [ %.pre.i.i22, %bb.k ] ; 2 uses
  %.pre-phi16.i = phi i64 [ %i.cp, %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread ], [ %.pre15.i, %bb.k ] ; 2 uses
  %i.cs = phi ptr [ %i.cl, %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread ], [ %.pre.i, %bb.k ]
  %.not.i6.i = icmp ugt i64 %.pre-phi16.i, %.pre-phi
  br i1 %.not.i6.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i
  %i.ct = add nuw nsw i64 %.pre-phi, 1
  %i.cu = sub nuw nsw i64 %i.ct, %.pre-phi16.i
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cs, i64 noundef %i.cu, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i7.i = load ptr, ptr %i.b, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i
  %i.cv = phi ptr [ %.pre.i7.i, %bb.l ], [ %i.cr, %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.a ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.pre-phi ; 3 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !16
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cz ; 2 uses
  %i.dc = load i32, ptr %i.cx, align 4, !tbaa !16
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.db, align 4, !tbaa !16
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !16
  store i32 %i.dg, ptr %i.db, align 4, !tbaa !16
  store i32 %i.df, ptr %i.de, align 4, !tbaa !16
  %i.dh = load i32, ptr %i.cw, align 4, !tbaa !16
  %i.di = load i32, ptr %i.cx, align 4, !tbaa !16
  store i32 %i.di, ptr %i.cw, align 4, !tbaa !16
  store i32 %i.dh, ptr %i.cx, align 4, !tbaa !16
  br label %bb.b

.thread:                                          ; preds = %bb.j, %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not49 = icmp ult i64 %i.h, %2
  br i1 %.not49, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !16     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !189

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre76 = load ptr, ptr %i.c, align 8, !tbaa !10
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !16
  store i32 %i.s, ptr %i.d, align 4, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = phi ptr [ %.pre76, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.g ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !10
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !189

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !16
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !16
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit
  %n.vec107 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec107, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph106
  %index111 = phi i64 [ 0, %vector.ph106 ], [ %index.next113, %vector.body110 ] ; 2 uses
  %i.aj = shl i64 %index111, 2
  %next.gep112 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep112, i64 16
  store <4 x i32> %broadcast.splat109, ptr %next.gep112, align 4, !tbaa !16
  store <4 x i32> %broadcast.splat109, ptr %i.ak, align 4, !tbaa !16
  %index.next113 = add nuw i64 %index111, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next113, %n.vec107
  br i1 %i.al, label %middle.block114, label %vector.body110, !llvm.loop !190

middle.block114:                                  ; preds = %vector.body110
  %cmp.n115 = icmp eq i64 %i.ag, %n.vec107
  br i1 %cmp.n115, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit, %middle.block114
  %.06.i.i.i.ph = phi ptr [ %1, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit ], [ %i.ai, %middle.block114 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !193

bb.k:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.l
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.l, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.l ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !195

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !10
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.m, label %bb.n, !prof !189

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !10
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit50

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.o, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit50

bb.o:                                             ; preds = %bb.n
  %i.bd = load i32, ptr %1, align 4, !tbaa !16
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit50

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %i.be = phi ptr [ %.pre, %bb.m ], [ %.0.i.i.i.i.i, %bb.n ], [ %.0.i.i.i.i.i, %bb.o ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !10
  %.not5.i.i.i51 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i51, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52.preheader

.lr.ph.i.i.i52.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit50
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check92 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check92, label %.lr.ph.i.i.i52.preheader130, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.i.i.i52.preheader
  %n.vec94 = and i64 %i.bj, 9223372036854775800   ; 3 uses
  %i.bk = shl i64 %n.vec94, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert95 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat96 = shufflevector <4 x i32> %broadcast.splatinsert95, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph93
  %index98 = phi i64 [ 0, %vector.ph93 ], [ %index.next100, %vector.body97 ] ; 2 uses
  %i.bm = shl i64 %index98, 2
  %next.gep99 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep99, i64 16
  store <4 x i32> %broadcast.splat96, ptr %next.gep99, align 4, !tbaa !16
  store <4 x i32> %broadcast.splat96, ptr %i.bn, align 4, !tbaa !16
  %index.next100 = add nuw i64 %index98, 8        ; 2 uses
  %i.bo = icmp eq i64 %index.next100, %n.vec94
  br i1 %i.bo, label %middle.block101, label %vector.body97, !llvm.loop !196

middle.block101:                                  ; preds = %vector.body97
  %cmp.n102 = icmp eq i64 %i.bj, %n.vec94
  br i1 %cmp.n102, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52.preheader130

.lr.ph.i.i.i52.preheader130:                      ; preds = %.lr.ph.i.i.i52.preheader, %middle.block101
  %.06.i.i.i53.ph = phi ptr [ %1, %.lr.ph.i.i.i52.preheader ], [ %i.bl, %middle.block101 ]
  br label %.lr.ph.i.i.i52

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph.i.i.i52.preheader130, %.lr.ph.i.i.i52
  %.06.i.i.i53 = phi ptr [ %i.bp, %.lr.ph.i.i.i52 ], [ %.06.i.i.i53.ph, %.lr.ph.i.i.i52.preheader130 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i53, align 4, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i53, i64 4 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i54, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i52, !llvm.loop !197

bb.p:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !14    ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.q, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #8
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.p
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.r ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i56 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i56
  %i.ch = load i32, ptr %3, align 4, !tbaa !16    ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i56, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check118 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check118, label %.lr.ph.i.i.i.i.i.i.i57.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %bb.s
  %n.vec120 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec120, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert121 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat122 = shufflevector <4 x i32> %broadcast.splatinsert121, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph119
  %index124 = phi i64 [ 0, %vector.ph119 ], [ %index.next126, %vector.body123 ] ; 2 uses
  %i.cn = shl i64 %index124, 2
  %next.gep125 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep125, i64 16
  store <4 x i32> %broadcast.splat122, ptr %next.gep125, align 4, !tbaa !16
  store <4 x i32> %broadcast.splat122, ptr %i.co, align 4, !tbaa !16
  %index.next126 = add nuw i64 %index124, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next126, %n.vec120
  br i1 %i.cp, label %middle.block127, label %vector.body123, !llvm.loop !198

middle.block127:                                  ; preds = %vector.body123
  %cmp.n128 = icmp eq i64 %i.ck, %n.vec120
  br i1 %cmp.n128, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit61, label %.lr.ph.i.i.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i.i.i57.preheader:                 ; preds = %bb.s, %middle.block127
  %.06.i.i.i.i.i.i.i58.ph = phi ptr [ %i.cf, %bb.s ], [ %i.cm, %middle.block127 ]
  br label %.lr.ph.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i57:                           ; preds = %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i57
  %.06.i.i.i.i.i.i.i58 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i57 ], [ %.06.i.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i.i57.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i58, align 4, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i58, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit61, label %.lr.ph.i.i.i.i.i.i.i57, !llvm.loop !199

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit61: ; preds = %.lr.ph.i.i.i.i.i.i.i57, %middle.block127
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.t, label %bb.u, !prof !189

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit61
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit61
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !16
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !16
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.w, label %bb.x, !prof !189

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit62

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.y, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit62

bb.y:                                             ; preds = %bb.x
  %i.cy = load i32, ptr %1, align 4, !tbaa !16
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !16
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit62

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit62: ; preds = %bb.w, %bb.x, %bb.y
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i63 = icmp eq ptr %i.bq, null
  br i1 %.not.i63, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit62
  %i.da = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.da) #10
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit62, %bb.z
  store ptr %i.ce, ptr %0, align 8, !tbaa !14
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.db, ptr %i.a, align 8, !tbaa !15
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i52, %.lr.ph.i.i.i, %middle.block101, %middle.block114, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit50, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noreturn nounwind }
attributes #9 = { builtin nounwind allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!11, !12, i64 16}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !5, i64 4288}
!18 = !{!"_ZTSN7CaDiCaL8InternalE", !5, i64 0, !6, i64 4, !6, i64 12, !19, i64 20, !19, i64 21, !19, i64 22, !19, i64 23, !19, i64 24, !19, i64 25, !19, i64 26, !19, i64 27, !19, i64 28, !19, i64 29, !19, i64 30, !19, i64 31, !19, i64 32, !19, i64 33, !19, i64 34, !6, i64 35, !20, i64 40, !21, i64 88, !5, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !21, i64 128, !21, i64 136, !19, i64 144, !22, i64 152, !22, i64 176, !22, i64 200, !22, i64 224, !22, i64 248, !22, i64 272, !27, i64 296, !33, i64 320, !19, i64 344, !19, i64 345, !5, i64 348, !38, i64 352, !43, i64 472, !39, i64 480, !44, i64 504, !47, i64 528, !44, i64 552, !51, i64 576, !52, i64 600, !57, i64 624, !58, i64 632, !61, i64 688, !66, i64 712, !47, i64 736, !71, i64 760, !22, i64 784, !22, i64 808, !76, i64 832, !76, i64 856, !47, i64 880, !22, i64 904, !81, i64 928, !86, i64 952, !91, i64 976, !91, i64 984, !91, i64 992, !91, i64 1000, !91, i64 1008, !19, i64 1016, !19, i64 1017, !19, i64 1018, !5, i64 1020, !21, i64 1024, !91, i64 1032, !21, i64 1040, !21, i64 1048, !21, i64 1056, !21, i64 1064, !21, i64 1072, !21, i64 1080, !47, i64 1088, !47, i64 1112, !47, i64 1136, !47, i64 1160, !19, i64 1184, !19, i64 1185, !47, i64 1192, !47, i64 1216, !47, i64 1240, !47, i64 1264, !47, i64 1288, !47, i64 1312, !47, i64 1336, !92, i64 1360, !47, i64 2176, !19, i64 2200, !21, i64 2208, !93, i64 2216, !21, i64 2224, !47, i64 2232, !94, i64 2256, !27, i64 2280, !99, i64 2304, !6, i64 2952, !104, i64 3000, !106, i64 3024, !108, i64 3216, !119, i64 3384, !104, i64 3440, !104, i64 3464, !120, i64 3488, !121, i64 3496, !126, i64 3520, !131, i64 3544, !136, i64 3568, !137, i64 4584, !168, i64 7144, !170, i64 7200, !171, i64 7224, !60, i64 7256, !173, i64 7264, !19, i64 7272, !174, i64 7280, !175, i64 7288}
!19 = !{!"bool", !6, i64 0}
!20 = !{!"_ZTSN7CaDiCaL9ReluctantE", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !19, i64 40, !19, i64 41}
!21 = !{!"long", !6, i64 0}
!22 = !{!"_ZTSSt6vectorIlSaIlEE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 long", !13, i64 0}
!27 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !32, i64 0}
!32 = !{!"any p2 pointer", !13, i64 0}
!33 = !{!"_ZTSSt6vectorIS_IS_IlSaIlEESaIS1_EESaIS3_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_IlSaIlEESaIS2_EESaIS4_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IlSaIlEESaIS2_EESaIS4_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IlSaIlEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !13, i64 0}
!38 = !{!"_ZTSN7CaDiCaL6PhasesE", !39, i64 0, !39, i64 24, !39, i64 48, !39, i64 72, !39, i64 96}
!39 = !{!"_ZTSSt6vectorIaSaIaEE", !40, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !41, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 omnipotent char", !13, i64 0}
!44 = !{!"_ZTSSt6vectorIjSaIjEE", !45, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !46, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !11, i64 0}
!47 = !{!"_ZTSSt6vectorIiSaIiEE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!51 = !{!"_ZTSN7CaDiCaL5QueueE", !5, i64 0, !5, i64 4, !5, i64 8, !21, i64 16}
!52 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !53, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!56 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !13, i64 0}
!57 = !{!"double", !6, i64 0}
!58 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !44, i64 0, !44, i64 24, !59, i64 48}
!59 = !{!"_ZTSN7CaDiCaL13score_smallerE", !60, i64 0}
!60 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !13, i64 0}
!61 = !{!"_ZTSSt6vectorIdSaIdEE", !62, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p1 double", !13, i64 0}
!66 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !67, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!70 = !{!"p1 _ZTSN7CaDiCaL3VarE", !13, i64 0}
!71 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !72, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !73, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !13, i64 0}
!76 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !77, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!80 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !13, i64 0}
!81 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !82, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!85 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !13, i64 0}
!86 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !87, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!90 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !13, i64 0}
!91 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !13, i64 0}
!92 = !{!"_ZTS4Reap", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 24}
!93 = !{!"p1 _ZTS14cadical_kitten", !13, i64 0}
!94 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !95, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!98 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !13, i64 0}
!99 = !{!"_ZTSN7CaDiCaL8AveragesE", !21, i64 0, !100, i64 8, !100, i64 328}
!100 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !101, i64 0, !103, i64 80, !102, i64 160, !102, i64 200, !102, i64 240, !102, i64 280}
!101 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !102, i64 0, !102, i64 40}
!102 = !{!"_ZTSN7CaDiCaL3EMAE", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!103 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !102, i64 0, !102, i64 40}
!104 = !{!"_ZTSN7CaDiCaL5DelayE", !105, i64 0}
!105 = !{!"_ZTSN7CaDiCaL5DelayUt_E", !21, i64 0, !21, i64 8, !19, i64 16}
!106 = !{!"_ZTSN7CaDiCaL5LimitE", !19, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !21, i64 128, !21, i64 136, !5, i64 144, !5, i64 148, !21, i64 152, !6, i64 160, !21, i64 176, !107, i64 184}
!107 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !5, i64 0, !5, i64 4}
!108 = !{!"_ZTSN7CaDiCaL4LastE", !109, i64 0, !110, i64 8, !110, i64 16, !110, i64 24, !110, i64 32, !110, i64 40, !111, i64 48, !112, i64 72, !113, i64 80, !113, i64 88, !114, i64 96, !115, i64 112, !116, i64 120, !117, i64 136, !118, i64 160}
!109 = !{!"_ZTSN7CaDiCaL4LastUt_E", !21, i64 0}
!110 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !21, i64 0}
!111 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !21, i64 0, !21, i64 8, !21, i64 16}
!112 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !21, i64 0}
!113 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !21, i64 0}
!114 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !21, i64 0, !21, i64 8}
!115 = !{!"_ZTSN7CaDiCaL4LastUt5_E", !21, i64 0}
!116 = !{!"_ZTSN7CaDiCaL4LastUt6_E", !21, i64 0, !21, i64 8}
!117 = !{!"_ZTSN7CaDiCaL4LastUt7_E", !21, i64 0, !21, i64 8, !21, i64 16}
!118 = !{!"_ZTSN7CaDiCaL4LastUt8_E", !21, i64 0}
!119 = !{!"_ZTSN7CaDiCaL3IncE", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!120 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !13, i64 0}
!121 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !122, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!125 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !32, i64 0}
!126 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !127, i64 0}
!127 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !128, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !129, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !130, i64 0, !130, i64 8, !130, i64 16}
!130 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !32, i64 0}
!131 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !132, i64 0}
!132 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !133, i64 0}
!133 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !134, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !135, i64 0, !135, i64 8, !135, i64 16}
!135 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !32, i64 0}
!136 = !{!"_ZTSN7CaDiCaL7OptionsE", !60, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !5, i64 388, !5, i64 392, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !5, i64 568, !5, i64 572, !5, i64 576, !5, i64 580, !5, i64 584, !5, i64 588, !5, i64 592, !5, i64 596, !5, i64 600, !5, i64 604, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !5, i64 628, !5, i64 632, !5, i64 636, !5, i64 640, !5, i64 644, !5, i64 648, !5, i64 652, !5, i64 656, !5, i64 660, !5, i64 664, !5, i64 668, !5, i64 672, !5, i64 676, !5, i64 680, !5, i64 684, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 700, !5, i64 704, !5, i64 708, !5, i64 712, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !5, i64 732, !5, i64 736, !5, i64 740, !5, i64 744, !5, i64 748, !5, i64 752, !5, i64 756, !5, i64 760, !5, i64 764, !5, i64 768, !5, i64 772, !5, i64 776, !5, i64 780, !5, i64 784, !5, i64 788, !5, i64 792, !5, i64 796, !5, i64 800, !5, i64 804, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !5, i64 856, !5, i64 860, !5, i64 864, !5, i64 868, !5, i64 872, !5, i64 876, !5, i64 880, !5, i64 884, !5, i64 888, !5, i64 892, !5, i64 896, !5, i64 900, !5, i64 904, !5, i64 908, !5, i64 912, !5, i64 916, !5, i64 920, !5, i64 924, !5, i64 928, !5, i64 932, !5, i64 936, !5, i64 940, !5, i64 944, !5, i64 948, !5, i64 952, !5, i64 956, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !5, i64 976, !5, i64 980, !5, i64 984, !5, i64 988, !5, i64 992, !5, i64 996, !5, i64 1000, !5, i64 1004, !5, i64 1008, !5, i64 1012}
!137 = !{!"_ZTSN7CaDiCaL5StatsE", !60, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !138, i64 40, !139, i64 96, !140, i64 208, !21, i64 288, !21, i64 296, !21, i64 304, !21, i64 312, !21, i64 320, !21, i64 328, !21, i64 336, !21, i64 344, !21, i64 352, !21, i64 360, !21, i64 368, !21, i64 376, !141, i64 384, !142, i64 424, !142, i64 448, !143, i64 472, !144, i64 488, !145, i64 520, !148, i64 600, !149, i64 656, !150, i64 696, !151, i64 736, !21, i64 760, !21, i64 768, !21, i64 776, !21, i64 784, !21, i64 792, !21, i64 800, !21, i64 808, !21, i64 816, !21, i64 824, !21, i64 832, !21, i64 840, !21, i64 848, !21, i64 856, !21, i64 864, !21, i64 872, !21, i64 880, !21, i64 888, !21, i64 896, !21, i64 904, !21, i64 912, !21, i64 920, !21, i64 928, !21, i64 936, !21, i64 944, !21, i64 952, !21, i64 960, !21, i64 968, !21, i64 976, !21, i64 984, !21, i64 992, !21, i64 1000, !21, i64 1008, !21, i64 1016, !21, i64 1024, !21, i64 1032, !21, i64 1040, !21, i64 1048, !21, i64 1056, !21, i64 1064, !21, i64 1072, !21, i64 1080, !21, i64 1088, !21, i64 1096, !21, i64 1104, !21, i64 1112, !21, i64 1120, !21, i64 1128, !21, i64 1136, !21, i64 1144, !21, i64 1152, !21, i64 1160, !21, i64 1168, !21, i64 1176, !21, i64 1184, !21, i64 1192, !21, i64 1200, !21, i64 1208, !21, i64 1216, !21, i64 1224, !21, i64 1232, !21, i64 1240, !21, i64 1248, !21, i64 1256, !21, i64 1264, !21, i64 1272, !21, i64 1280, !21, i64 1288, !21, i64 1296, !21, i64 1304, !21, i64 1312, !21, i64 1320, !21, i64 1328, !21, i64 1336, !21, i64 1344, !21, i64 1352, !21, i64 1360, !21, i64 1368, !21, i64 1376, !21, i64 1384, !21, i64 1392, !21, i64 1400, !21, i64 1408, !21, i64 1416, !21, i64 1424, !21, i64 1432, !21, i64 1440, !21, i64 1448, !21, i64 1456, !21, i64 1464, !21, i64 1472, !21, i64 1480, !21, i64 1488, !21, i64 1496, !21, i64 1504, !21, i64 1512, !21, i64 1520, !21, i64 1528, !21, i64 1536, !21, i64 1544, !21, i64 1552, !21, i64 1560, !21, i64 1568, !21, i64 1576, !21, i64 1584, !21, i64 1592, !21, i64 1600, !21, i64 1608, !21, i64 1616, !21, i64 1624, !21, i64 1632, !21, i64 1640, !152, i64 1648, !21, i64 1664, !21, i64 1672, !21, i64 1680, !21, i64 1688, !153, i64 1696, !21, i64 1720, !21, i64 1728, !21, i64 1736, !21, i64 1744, !21, i64 1752, !21, i64 1760, !21, i64 1768, !21, i64 1776, !21, i64 1784, !21, i64 1792, !21, i64 1800, !21, i64 1808, !21, i64 1816, !21, i64 1824, !21, i64 1832, !21, i64 1840, !21, i64 1848, !21, i64 1856, !21, i64 1864, !21, i64 1872, !21, i64 1880, !21, i64 1888, !21, i64 1896, !21, i64 1904, !21, i64 1912, !21, i64 1920, !21, i64 1928, !21, i64 1936, !21, i64 1944, !21, i64 1952, !21, i64 1960, !21, i64 1968, !21, i64 1976, !21, i64 1984, !21, i64 1992, !21, i64 2000, !21, i64 2008, !21, i64 2016, !21, i64 2024, !21, i64 2032, !21, i64 2040, !21, i64 2048, !21, i64 2056, !21, i64 2064, !21, i64 2072, !21, i64 2080, !21, i64 2088, !21, i64 2096, !21, i64 2104, !21, i64 2112, !21, i64 2120, !21, i64 2128, !21, i64 2136, !21, i64 2144, !21, i64 2152, !154, i64 2160, !154, i64 2200, !155, i64 2240, !21, i64 2256, !21, i64 2264, !21, i64 2272, !21, i64 2280, !156, i64 2288, !157, i64 2304, !161, i64 2328, !166, i64 2352, !167, i64 2528}
!138 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!139 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !6, i64 0, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104}
!140 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72}
!141 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32}
!142 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !21, i64 0, !21, i64 8, !21, i64 16}
!143 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !57, i64 0, !57, i64 8}
!144 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!145 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !21, i64 0, !21, i64 8, !146, i64 16, !146, i64 32, !146, i64 48, !147, i64 64}
!146 = !{!"_ZTSN7CaDiCaL5StatsUt6_Ut_E", !21, i64 0, !21, i64 8}
!147 = !{!"_ZTSN7CaDiCaL5StatsUt6_Ut0_E", !21, i64 0, !21, i64 8}
!148 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!149 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32}
!150 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32}
!151 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !21, i64 0, !21, i64 8, !21, i64 16}
!152 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !21, i64 0, !21, i64 8}
!153 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !21, i64 0, !21, i64 8, !21, i64 16}
!154 = !{!"_ZTSN7CaDiCaL5StatsUt13_E", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32}
end_hunk_1
