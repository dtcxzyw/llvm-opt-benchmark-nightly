inline.NumInlined: 1375
inline.NumDeleted: 538
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZSt13__stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_:bb.a
  %i.t = icmp eq ptr %.sroa.12.0, null
  br i1 %i.t, label %bb.e, label %bb.f, !prof !57

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt21__inplace_stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %0, ptr %1, ptr %2)
          to label %bb.g unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.e, %bb.f, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread
  %.sroa.5.043 = phi i64 [ %.sroa.5.0, %bb.e ], [ %.sroa.5.0, %bb.f ], [ %.sroa.5.044, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread ]
  %.sroa.12.041 = phi ptr [ null, %bb.e ], [ %.sroa.12.0, %bb.f ], [ %.sroa.12.040, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread ]
  %i.u = shl i64 %.sroa.5.043, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.041, i64 noundef %i.u) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = getelementptr i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef 7, ptr %4)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.021.i, ptr %4)
  %i.g = shl i64 %.021.i, 1
  tail call void @_ZSt17__merge_sort_loopIPP15QTreeWidgetItemN5QListIS1_E8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr %0, i64 noundef %i.g, ptr %4)
  %i.h = shl i64 %.021.i, 2                       ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit, !llvm.loop !124

_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = getelementptr i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_T1_(ptr %1, ptr %2, i64 noundef 7, ptr %4)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i16, label %_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit18

.lr.ph.i16:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit, %.lr.ph.i16
  %.021.i17 = phi i64 [ %i.p, %.lr.ph.i16 ], [ 7, %_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.021.i17, ptr %4)
  %i.o = shl i64 %.021.i17, 1
  tail call void @_ZSt17__merge_sort_loopIPP15QTreeWidgetItemN5QListIS1_E8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr %1, i64 noundef %i.o, ptr %4)
  %i.p = shl i64 %.021.i17, 2                     ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i16, label %_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit18, !llvm.loop !124

_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit18: ; preds = %.lr.ph.i16, %_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit
  %i.r = ptrtoint ptr %4 to i64
  tail call void @_ZSt16__merge_adaptiveIN5QListIP15QTreeWidgetItemE8iteratorExPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.d, i64 noundef %i.l, ptr noundef %3, i64 %i.r)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  %.sroa.0.019.i = getelementptr i8, ptr %0, i64 8 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.0.019.i, %1
  %or.cond = or i1 %i.f, %.not20.i
  br i1 %or.cond, label %common.ret25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i
  %indvar.i = phi i64 [ %indvar.next.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.022.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ %.sroa.0.019.i, %bb.b ] ; 8 uses
  %.pn21.i = phi ptr [ %.sroa.0.022.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ %0, %bb.b ] ; 2 uses
  %i.g = shl i64 %indvar.i, 3
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %scevgep.i = getelementptr i8, ptr %i.h, i64 16
  %i.i = load ptr, ptr %.sroa.0.022.i, align 8
  %i.j = load ptr, ptr %0, align 8
  %i.k = tail call noundef zeroext i1 %2(ptr noundef %i.i, ptr noundef %i.j), !inline_history !125
  %i.l = load ptr, ptr %.sroa.0.022.i, align 8    ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = ptrtoint ptr %.sroa.0.022.i to i64
  %i.n = sub i64 %i.m, %i.b                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.c
  %i.q = mul nsw i64 %i.o, -8                     ; 2 uses
  %scevgep24.i = getelementptr i8, ptr %scevgep.i, i64 %i.q
  %scevgep25.i = getelementptr i8, ptr %.sroa.0.022.i, i64 %i.q
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep24.i, ptr align 8 %scevgep25.i, i64 %i.n, i1 false)
  br label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = load ptr, ptr %.pn21.i, align 8
  %i.s = tail call noundef zeroext i1 %2(ptr noundef %i.l, ptr noundef %i.r), !inline_history !126
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.d ] ; 4 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i, %bb.d ]
  %i.t = load ptr, ptr %.sroa.0.010.i.i, align 8
  store ptr %i.t, ptr %.sroa.05.09.i.i, align 8
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.u = load ptr, ptr %.sroa.0.0.i.i, align 8
  %i.v = tail call noundef zeroext i1 %2(ptr noundef %i.l, ptr noundef %i.u), !inline_history !126
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i, !llvm.loop !127

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.d, %.lr.ph.i.i.i.i.i.preheader.i, %bb.c
  %.sink.i = phi ptr [ %0, %bb.c ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.0.022.i, %bb.d ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.l, ptr %.sink.i, align 8
  %.sroa.0.0.i = getelementptr i8, ptr %.sroa.0.022.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %.not.i, label %common.ret25, label %.lr.ph.i, !llvm.loop !128

common.ret25:                                     ; preds = %bb.b, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i, %bb.e
  ret void

bb.e:                                             ; preds = %bb.a
  %i.w = lshr i64 %i.d, 1                         ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.w ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %0, ptr %i.x, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %i.x, ptr %1, ptr %2)
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.a, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  tail call void @_ZSt22__merge_without_bufferIN5QListIP15QTreeWidgetItemE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_SD_T0_SE_T1_(ptr %0, ptr %i.x, ptr %1, i64 noundef %i.w, i64 noundef %i.aa, ptr %2)
  br label %common.ret25
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = ptrtoint ptr %4 to i64
  tail call void @_ZSt23__merge_adaptive_resizeIN5QListIP15QTreeWidgetItemE8iteratorExPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  br label %common.ret30
}

; Function Attrs: nobuiltin nounwind null_pointer_is_valid allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef align 1 dereferenceable(1)) local_unnamed_addr #20

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN5QListIP15QTreeWidgetItemE8iteratorExPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.b = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 8 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.f, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader155, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  %mul.result = shl i64 %i.h, 3                   ; 2 uses
  %mul.overflow = icmp ugt i64 %i.h, 2305843009213693951
  %7 = getelementptr i8, ptr %5, i64 %mul.result
  %8 = icmp ult ptr %7, %5
  %i.i = getelementptr i8, ptr %0, i64 %mul.result
  %i.j = icmp ult ptr %i.i, %0
  %i.k = or i1 %i.j, %mul.overflow
  %i.l = or i1 %8, %i.k
  %i.m = sub i64 %i.d, %i.a
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %i.l, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader155, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.f, 4611686018427387900      ; 3 uses
  %i.n = shl i64 %n.vec, 3                        ; 2 uses
  %i.o = getelementptr i8, ptr %5, i64 %i.n       ; 2 uses
  %i.p = and i64 %i.f, 3
  %i.q = getelementptr i8, ptr %0, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.r  ; 2 uses
  %next.gep84 = getelementptr i8, ptr %0, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep84, align 8
  %wide.load85 = load <2 x ptr>, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8
  store <2 x ptr> %wide.load85, ptr %i.t, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i.preheader155

.lr.ph.i.i.i.i.i.preheader155:                    ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %5, %vector.scevcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.o, %middle.block ]
  %.048.i.i.i.i.i.ph = phi i64 [ %i.f, %vector.scevcheck ], [ %i.f, %.lr.ph.i.i.i.i.i.preheader ], [ %i.p, %middle.block ]
  %.sroa.05.07.i.i.i.i.i.ph = phi ptr [ %0, %vector.scevcheck ], [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader155, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader155 ] ; 2 uses
  %.048.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader155 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader155 ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.05.07.i.i.i.i.i, align 8
  store ptr %i.v, ptr %.09.i.i.i.i.i, align 8
  %i.w = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 8
  %i.x = getelementptr i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = add nsw i64 %.048.i.i.i.i.i, -1
  %i.z = icmp samesign ugt i64 %.048.i.i.i.i.i, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, !llvm.loop !132

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa80 = phi ptr [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.not25.i = icmp eq ptr %5, %.lcssa80
  br i1 %.not25.i, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, %bb.c
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 2 uses
  %.028.i = phi ptr [ %.1.i, %bb.c ], [ %5, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 12 uses
  %.sroa.018.027.i = phi ptr [ %.sroa.018.1.i, %bb.c ], [ %1, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 4 uses
  %.sroa.015.026.i = phi ptr [ %i.ad, %bb.c ], [ %0, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 9 uses
  %.not21.i = icmp eq ptr %.sroa.018.027.i, %2
  br i1 %.not21.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = load ptr, ptr %.sroa.018.027.i, align 8
  %i.ab = load ptr, ptr %.028.i, align 8
  %i.ac = tail call noundef zeroext i1 %i.b(ptr noundef %i.aa, ptr noundef %i.ab), !inline_history !133 ; 3 uses
  %.sink.in.i = select i1 %i.ac, ptr %.sroa.018.027.i, ptr %.028.i
  %.sroa.018.1.idx.i = select i1 %i.ac, i64 8, i64 0
  %.sroa.018.1.i = getelementptr i8, ptr %.sroa.018.027.i, i64 %.sroa.018.1.idx.i
  %.1.idx.i = select i1 %i.ac, i64 0, i64 8
  %.1.i = getelementptr i8, ptr %.028.i, i64 %.1.idx.i ; 2 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8
  store ptr %.sink.i, ptr %.sroa.015.026.i, align 8
  %i.ad = getelementptr i8, ptr %.sroa.015.026.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %.lcssa80
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !134

.critedge.i:                                      ; preds = %.lr.ph.i
  %.028.i96.le = ptrtoaddr ptr %.028.i to i64
  %i.ae = ptrtoint ptr %.lcssa80 to i64
  %i.af = ptrtoint ptr %.028.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 9 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %min.iters.check99 = icmp ult i64 %i.ah, 48
  br i1 %min.iters.check99, label %.lr.ph.i.i.i.i.i.i.preheader148, label %vector.scevcheck88

vector.scevcheck88:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.aj = add nsw i64 %i.ah, -1                   ; 2 uses
  %mul.result90 = shl i64 %i.aj, 3                ; 2 uses
  %mul.overflow88 = icmp ugt i64 %i.aj, 2305843009213693951
  %9 = getelementptr i8, ptr %.sroa.015.026.i, i64 %mul.result90
  %10 = icmp ult ptr %9, %.sroa.015.026.i
  %i.ak = getelementptr i8, ptr %.028.i, i64 %mul.result90
  %i.al = icmp ult ptr %i.ak, %.028.i
  %i.am = or i1 %i.al, %mul.overflow88
  %i.an = or i1 %10, %i.am
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.preheader148, label %vector.memcheck95

vector.memcheck95:                                ; preds = %vector.scevcheck88
  %i.ao = shl i64 %indvar, 3
  %i.ap = add i64 %i.ao, %i.d
  %i.aq = sub i64 %.028.i96.le, %i.ap
  %diff.check97 = icmp ugt i64 %i.aq, -32
  br i1 %diff.check97, label %.lr.ph.i.i.i.i.i.i.preheader148, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck95
  %n.vec102 = and i64 %i.ah, 4611686018427387900  ; 3 uses
  %i.ar = and i64 %i.ah, 3
  %i.as = shl i64 %n.vec102, 3                    ; 2 uses
  %i.at = getelementptr i8, ptr %.028.i, i64 %i.as
  %i.au = getelementptr i8, ptr %.sroa.015.026.i, i64 %i.as
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph100
  %index104 = phi i64 [ 0, %vector.ph100 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.av = shl i64 %index104, 3                    ; 2 uses
  %next.gep105 = getelementptr i8, ptr %.028.i, i64 %i.av ; 2 uses
  %next.gep106 = getelementptr i8, ptr %.sroa.015.026.i, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load107 = load <2 x ptr>, ptr %next.gep105, align 8
  %wide.load108 = load <2 x ptr>, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %next.gep106, i64 16
  store <2 x ptr> %wide.load107, ptr %next.gep106, align 8
  store <2 x ptr> %wide.load108, ptr %i.ax, align 8
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.ay, label %middle.block110, label %vector.body103, !llvm.loop !135

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %i.ah, %n.vec102
  br i1 %cmp.n111, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.preheader148:                  ; preds = %vector.memcheck95, %vector.scevcheck88, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block110
  %.09.i.i.i.i.i.i.ph = phi i64 [ %i.ah, %vector.memcheck95 ], [ %i.ah, %vector.scevcheck88 ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block110 ]
  %.058.i.i.i.i.i.i.ph = phi ptr [ %.028.i, %vector.memcheck95 ], [ %.028.i, %vector.scevcheck88 ], [ %.028.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block110 ]
  %.sroa.0.07.i.i.i.i.i.i.ph = phi ptr [ %.sroa.015.026.i, %vector.memcheck95 ], [ %.sroa.015.026.i, %vector.scevcheck88 ], [ %.sroa.015.026.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block110 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader148, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader148 ] ; 2 uses
  %.058.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.058.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader148 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader148 ] ; 2 uses
  %i.az = load ptr, ptr %.058.i.i.i.i.i.i, align 8
  store ptr %i.az, ptr %.sroa.0.07.i.i.i.i.i.i, align 8
  %i.ba = getelementptr i8, ptr %.058.i.i.i.i.i.i, i64 8
  %i.bb = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8
  %i.bc = add nsw i64 %.09.i.i.i.i.i.i, -1
  %i.bd = icmp samesign ugt i64 %.09.i.i.i.i.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, !llvm.loop !136

bb.d:                                             ; preds = %bb.a
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3                 ; 8 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i23.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27

.lr.ph.i.i.i.i.i23.preheader:                     ; preds = %bb.d
  %min.iters.check125 = icmp ult i64 %i.bh, 44
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i23.preheader146, label %vector.scevcheck115

vector.scevcheck115:                              ; preds = %.lr.ph.i.i.i.i.i23.preheader
  %i.bj = add nsw i64 %i.bh, -1                   ; 2 uses
  %mul.result117 = shl i64 %i.bj, 3               ; 2 uses
  %mul.overflow112 = icmp ugt i64 %i.bj, 2305843009213693951
  %11 = getelementptr i8, ptr %5, i64 %mul.result117
  %12 = icmp ult ptr %11, %5
  %i.bk = getelementptr i8, ptr %1, i64 %mul.result117
  %i.bl = icmp ult ptr %i.bk, %1
  %i.bm = or i1 %i.bl, %mul.overflow112
  %i.bn = or i1 %12, %i.bm
  %i.bo = sub i64 %i.bf, %i.a
  %diff.check123 = icmp ugt i64 %i.bo, -32
  %or.cond141 = or i1 %i.bn, %diff.check123
  br i1 %or.cond141, label %.lr.ph.i.i.i.i.i23.preheader146, label %vector.ph126

vector.ph126:                                     ; preds = %vector.scevcheck115
  %n.vec128 = and i64 %i.bh, 4611686018427387900  ; 3 uses
  %i.bp = shl i64 %n.vec128, 3                    ; 2 uses
  %i.bq = getelementptr i8, ptr %5, i64 %i.bp     ; 2 uses
  %i.br = and i64 %i.bh, 3
  %i.bs = getelementptr i8, ptr %1, i64 %i.bp
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next135, %vector.body129 ] ; 2 uses
  %i.bt = shl i64 %index130, 3                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %5, i64 %i.bt ; 2 uses
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load133 = load <2 x ptr>, ptr %next.gep132, align 8
  %wide.load134 = load <2 x ptr>, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %next.gep131, i64 16
  store <2 x ptr> %wide.load133, ptr %next.gep131, align 8
  store <2 x ptr> %wide.load134, ptr %i.bv, align 8
  %index.next135 = add nuw i64 %index130, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.bw, label %middle.block136, label %vector.body129, !llvm.loop !137

middle.block136:                                  ; preds = %vector.body129
  %cmp.n137 = icmp eq i64 %i.bh, %n.vec128
  br i1 %cmp.n137, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27, label %.lr.ph.i.i.i.i.i23.preheader146

.lr.ph.i.i.i.i.i23.preheader146:                  ; preds = %vector.scevcheck115, %.lr.ph.i.i.i.i.i23.preheader, %middle.block136
  %.09.i.i.i.i.i24.ph = phi ptr [ %5, %vector.scevcheck115 ], [ %5, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.bq, %middle.block136 ]
  %.048.i.i.i.i.i25.ph = phi i64 [ %i.bh, %vector.scevcheck115 ], [ %i.bh, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.br, %middle.block136 ]
  %.sroa.05.07.i.i.i.i.i26.ph = phi ptr [ %1, %vector.scevcheck115 ], [ %1, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.bs, %middle.block136 ]
  br label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %.lr.ph.i.i.i.i.i23.preheader146, %.lr.ph.i.i.i.i.i23
  %.09.i.i.i.i.i24 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i23 ], [ %.09.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i23.preheader146 ] ; 2 uses
  %.048.i.i.i.i.i25 = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i23 ], [ %.048.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i23.preheader146 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i26 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i23 ], [ %.sroa.05.07.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i23.preheader146 ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.05.07.i.i.i.i.i26, align 8
  store ptr %i.bx, ptr %.09.i.i.i.i.i24, align 8
  %i.by = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i26, i64 8
  %i.bz = getelementptr i8, ptr %.09.i.i.i.i.i24, i64 8 ; 2 uses
  %i.ca = add nsw i64 %.048.i.i.i.i.i25, -1
  %i.cb = icmp samesign ugt i64 %.048.i.i.i.i.i25, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27, !llvm.loop !138

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27: ; preds = %.lr.ph.i.i.i.i.i23, %middle.block136, %bb.d
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.d ], [ %i.bq, %middle.block136 ], [ %i.bz, %.lr.ph.i.i.i.i.i23 ] ; 5 uses
  %i.cc = icmp eq ptr %0, %1
  br i1 %i.cc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27
  %i.cd = ptrtoint ptr %.0.lcssa.i.i.i.i.i22 to i64
  %i.ce = ptrtoint ptr %5 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 5 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i29.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i.i29.preheader:                   ; preds = %bb.e
  %xtraiter157 = and i64 %i.cg, 7                 ; 2 uses
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.lr.ph.i.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i.i29.prol

.lr.ph.i.i.i.i.i.i29.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i29.preheader, %.lr.ph.i.i.i.i.i.i29.prol
  %.08.i.i.i.i.i.i.prol = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i29.prol ], [ %i.cg, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %.047.i.i.i.i.i.i.prol = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i29.prol ], [ %.0.lcssa.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %.sroa.0.06.i.i.i.i.i.i.prol = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i29.prol ], [ %2, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %prol.iter159 = phi i64 [ %prol.iter159.next, %.lr.ph.i.i.i.i.i.i29.prol ], [ 0, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %i.ci = getelementptr i8, ptr %.047.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  store ptr %i.cj, ptr %i.ck, align 8
  %i.cl = add nsw i64 %.08.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter159.next = add i64 %prol.iter159, 1   ; 2 uses
  %prol.iter159.cmp.not = icmp eq i64 %prol.iter159.next, %xtraiter157
  br i1 %prol.iter159.cmp.not, label %.lr.ph.i.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i.i29.prol, !llvm.loop !139

.lr.ph.i.i.i.i.i.i29.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i29.prol, %.lr.ph.i.i.i.i.i.i29.preheader
  %.08.i.i.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.i.i29.prol ]
  %.047.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.i29.prol ]
  %.sroa.0.06.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.ck, %.lr.ph.i.i.i.i.i.i29.prol ]
  %i.cm = icmp ult i64 %i.cg, 8
  br i1 %i.cm, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29.prol.loopexit, %.lr.ph.i.i.i.i.i.i29
  %.08.i.i.i.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i29 ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 2 uses
  %.047.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i29 ], [ %.047.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 8 uses
  %.sroa.0.06.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i29 ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 8 uses
  %i.cn = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -8
  store ptr %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -16
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -24
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -24
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -32
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -32
  store ptr %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -40
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -40
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -48
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -48
  store ptr %i.dd, ptr %i.de, align 8
  %i.df = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -56
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -56
  store ptr %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -64 ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = add nsw i64 %.08.i.i.i.i.i.i, -8
  %i.dm = icmp sgt i64 %.08.i.i.i.i.i.i, 8
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i29, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, !llvm.loop !141

bb.f:                                             ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27
  %i.dn = icmp eq ptr %5, %.0.lcssa.i.i.i.i.i22
  br i1 %i.dn, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.do = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i22, i64 -8
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.g
  %.sroa.026.0.i.ph = phi ptr [ %2, %bb.g ], [ %i.ds, %bb.i ]
  %.sroa.030.0.i.ph.pn = phi ptr [ %1, %bb.g ], [ %.sroa.030.0.i.ph, %bb.i ]
  %.0.i.ph = phi ptr [ %i.do, %bb.g ], [ %.0.i, %bb.i ]
  %.sroa.030.0.i.ph = getelementptr i8, ptr %.sroa.030.0.i.ph.pn, i64 -8 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.l
  %.sroa.026.0.i = phi ptr [ %i.ds, %bb.l ], [ %.sroa.026.0.i.ph, %.outer ]
  %.0.i = phi ptr [ %i.fi, %bb.l ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.dp = load ptr, ptr %.0.i, align 8
  %i.dq = load ptr, ptr %.sroa.030.0.i.ph, align 8
  %i.dr = tail call noundef zeroext i1 %i.b(ptr noundef %i.dp, ptr noundef %i.dq), !inline_history !142
  %i.ds = getelementptr i8, ptr %.sroa.026.0.i, i64 -8 ; 6 uses
  br i1 %i.dr, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dt = load ptr, ptr %.sroa.030.0.i.ph, align 8
  store ptr %i.dt, ptr %i.ds, align 8
  %i.du = icmp eq ptr %0, %.sroa.030.0.i.ph
  br i1 %i.du, label %bb.j, label %.outer, !llvm.loop !143

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr i8, ptr %.0.i, i64 8      ; 3 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %5 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3                 ; 5 uses
  %i.ea = icmp sgt i64 %i.dz, 0
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i21.i.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i21.i.preheader:                   ; preds = %bb.j
  %xtraiter = and i64 %i.dz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.prol

.lr.ph.i.i.i.i.i21.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i21.i.preheader, %.lr.ph.i.i.i.i.i21.i.prol
  %.08.i.i.i.i.i22.i.prol = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.dz, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %.047.i.i.i.i.i23.i.prol = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.dv, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %.sroa.0.06.i.i.i.i.i24.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.ds, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i21.i.prol ], [ 0, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %i.eb = getelementptr i8, ptr %.047.i.i.i.i.i23.i.prol, i64 -8 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i.prol, i64 -8 ; 3 uses
  store ptr %i.ec, ptr %i.ed, align 8
  %i.ee = add nsw i64 %.08.i.i.i.i.i22.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.prol, !llvm.loop !144

.lr.ph.i.i.i.i.i21.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i21.i.prol, %.lr.ph.i.i.i.i.i21.i.preheader
  %.08.i.i.i.i.i22.i.unr = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.ee, %.lr.ph.i.i.i.i.i21.i.prol ]
  %.047.i.i.i.i.i23.i.unr = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.eb, %.lr.ph.i.i.i.i.i21.i.prol ]
  %.sroa.0.06.i.i.i.i.i24.i.unr = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.ed, %.lr.ph.i.i.i.i.i21.i.prol ]
  %i.ef = icmp ult i64 %i.dz, 8
  br i1 %i.ef, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i.i.i.i.i21.i

.lr.ph.i.i.i.i.i21.i:                             ; preds = %.lr.ph.i.i.i.i.i21.i.prol.loopexit, %.lr.ph.i.i.i.i.i21.i
  %.08.i.i.i.i.i22.i = phi i64 [ %i.fe, %.lr.ph.i.i.i.i.i21.i ], [ %.08.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 2 uses
  %.047.i.i.i.i.i23.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i21.i ], [ %.047.i.i.i.i.i23.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 8 uses
  %.sroa.0.06.i.i.i.i.i24.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i21.i ], [ %.sroa.0.06.i.i.i.i.i24.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 8 uses
  %i.eg = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -8
end_hunk_0
begin_hunk_1_@_ZSt22__chunk_insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_T1_:bb.a
.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %2, 3                           ; 3 uses
  %or.cond = icmp ult i64 %.idx, 16
  br i1 %or.cond, label %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us, label %.lr.ph.i.preheader

_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us
  %.sroa.031.035.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr i8, ptr %.sroa.031.035.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us, !llvm.loop !145

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit
  %i.i = phi i64 [ %i.aa, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.031.035 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 7 uses
  %i.j = getelementptr i8, ptr %.sroa.031.035, i64 %.idx ; 4 uses
  %.sroa.0.019.i = getelementptr i8, ptr %.sroa.031.035, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i
  %indvar.i = phi i64 [ %indvar.next.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.022.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ %.sroa.0.019.i, %.lr.ph.i.preheader ] ; 8 uses
  %.pn21.i = phi ptr [ %.sroa.0.022.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ %.sroa.031.035, %.lr.ph.i.preheader ] ; 2 uses
  %i.k = shl nuw i64 %indvar.i, 3
  %i.l = getelementptr i8, ptr %.sroa.031.035, i64 %i.k
  %scevgep.i = getelementptr i8, ptr %i.l, i64 16
  %i.m = load ptr, ptr %.sroa.0.022.i, align 8
  %i.n = load ptr, ptr %.sroa.031.035, align 8
  %i.o = tail call noundef zeroext i1 %3(ptr noundef %i.m, ptr noundef %i.n), !inline_history !125
  %i.p = load ptr, ptr %.sroa.0.022.i, align 8    ; 3 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = ptrtoint ptr %.sroa.0.022.i to i64
  %i.r = sub i64 %i.q, %i.i                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.u = mul nsw i64 %i.s, -8                     ; 2 uses
  %scevgep24.i = getelementptr i8, ptr %scevgep.i, i64 %i.u
  %scevgep25.i = getelementptr i8, ptr %.sroa.0.022.i, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep24.i, ptr align 8 %scevgep25.i, i64 %i.r, i1 false)
  br label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %.pn21.i, align 8
  %i.w = tail call noundef zeroext i1 %3(ptr noundef %i.p, ptr noundef %i.v), !inline_history !126
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.c ] ; 4 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i, %bb.c ]
  %i.x = load ptr, ptr %.sroa.0.010.i.i, align 8
  store ptr %i.x, ptr %.sroa.05.09.i.i, align 8
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.y = load ptr, ptr %.sroa.0.0.i.i, align 8
  %i.z = tail call noundef zeroext i1 %3(ptr noundef %i.p, ptr noundef %i.y), !inline_history !126
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i, !llvm.loop !127

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.c, %.lr.ph.i.i.i.i.i.preheader.i, %bb.b
  %.sink.i = phi ptr [ %.sroa.031.035, %bb.b ], [ %.sroa.031.035, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.0.022.i, %bb.c ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.p, ptr %.sink.i, align 8
  %.sroa.0.0.i = getelementptr i8, ptr %.sroa.0.022.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !128

_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit: ; preds = %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i
  %i.aa = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ab = sub i64 %i.a, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %.not = icmp slt i64 %i.ac, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !145

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us, %bb.a
  %.sroa.031.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us ], [ %i.aa, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit ]
  %i.ad = icmp eq ptr %.sroa.031.0.lcssa, %1
  %.sroa.0.019.i11 = getelementptr i8, ptr %.sroa.031.0.lcssa, i64 8 ; 2 uses
  %.not20.i12 = icmp eq ptr %.sroa.0.019.i11, %1
  %or.cond33 = or i1 %i.ad, %.not20.i12
  br i1 %or.cond33, label %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit30, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %._crit_edge, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18
  %indvar.i14 = phi i64 [ %indvar.next.i22, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18 ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.0.022.i15 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18 ], [ %.sroa.0.019.i11, %._crit_edge ] ; 8 uses
  %.pn21.i16 = phi ptr [ %.sroa.0.022.i15, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18 ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ae = shl i64 %indvar.i14, 3
  %i.af = getelementptr i8, ptr %.sroa.031.0.lcssa, i64 %i.ae
  %scevgep.i17 = getelementptr i8, ptr %i.af, i64 16
  %i.ag = load ptr, ptr %.sroa.0.022.i15, align 8
  %i.ah = load ptr, ptr %.sroa.031.0.lcssa, align 8
  %i.ai = tail call noundef zeroext i1 %3(ptr noundef %i.ag, ptr noundef %i.ah), !inline_history !125
  %i.aj = load ptr, ptr %.sroa.0.022.i15, align 8 ; 3 uses
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i13
  %i.ak = ptrtoint ptr %.sroa.0.022.i15 to i64
  %i.al = sub i64 %i.ak, %.lcssa                  ; 2 uses
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.preheader.i27, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18

.lr.ph.i.i.i.i.i.preheader.i27:                   ; preds = %bb.d
  %i.ao = mul nsw i64 %i.am, -8                   ; 2 uses
  %scevgep24.i28 = getelementptr i8, ptr %scevgep.i17, i64 %i.ao
  %scevgep25.i29 = getelementptr i8, ptr %.sroa.0.022.i15, i64 %i.ao
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep24.i28, ptr align 8 %scevgep25.i29, i64 %i.al, i1 false)
  br label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18

bb.e:                                             ; preds = %.lr.ph.i13
  %i.ap = load ptr, ptr %.pn21.i16, align 8
  %i.aq = tail call noundef zeroext i1 %3(ptr noundef %i.aj, ptr noundef %i.ap), !inline_history !126
  br i1 %i.aq, label %.lr.ph.i.i23, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18

.lr.ph.i.i23:                                     ; preds = %bb.e, %.lr.ph.i.i23
  %.sroa.0.010.i.i24 = phi ptr [ %.sroa.0.0.i.i26, %.lr.ph.i.i23 ], [ %.pn21.i16, %bb.e ] ; 4 uses
  %.sroa.05.09.i.i25 = phi ptr [ %.sroa.0.010.i.i24, %.lr.ph.i.i23 ], [ %.sroa.0.022.i15, %bb.e ]
  %i.ar = load ptr, ptr %.sroa.0.010.i.i24, align 8
  store ptr %i.ar, ptr %.sroa.05.09.i.i25, align 8
  %.sroa.0.0.i.i26 = getelementptr i8, ptr %.sroa.0.010.i.i24, i64 -8 ; 2 uses
  %i.as = load ptr, ptr %.sroa.0.0.i.i26, align 8
  %i.at = tail call noundef zeroext i1 %3(ptr noundef %i.aj, ptr noundef %i.as), !inline_history !126
  br i1 %i.at, label %.lr.ph.i.i23, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18, !llvm.loop !127

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18: ; preds = %.lr.ph.i.i23, %bb.e, %.lr.ph.i.i.i.i.i.preheader.i27, %bb.d
  %.sink.i19 = phi ptr [ %.sroa.031.0.lcssa, %bb.d ], [ %.sroa.031.0.lcssa, %.lr.ph.i.i.i.i.i.preheader.i27 ], [ %.sroa.0.022.i15, %bb.e ], [ %.sroa.0.010.i.i24, %.lr.ph.i.i23 ]
  store ptr %i.aj, ptr %.sink.i19, align 8
  %.sroa.0.0.i20 = getelementptr i8, ptr %.sroa.0.022.i15, i64 8 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  %indvar.next.i22 = add i64 %indvar.i14, 1
  br i1 %.not.i21, label %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit30, label %.lr.ph.i13, !llvm.loop !128

_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit30: ; preds = %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18, %._crit_edge
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl i64 %3, 1                            ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not66 = icmp slt i64 %i.e, %i.a
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 3 uses
  %.idx58 = shl i64 %3, 4                         ; 2 uses
  %i.f = icmp ne i64 %.idx, 0
  %i.g = icmp ne i64 %.idx, %.idx58
  %or.cond26.i = and i1 %i.f, %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit
  %.068 = phi ptr [ %2, %.lr.ph ], [ %.0.lcssa.i.i.i.i.i13.i, %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.sroa.052.067 = phi ptr [ %0, %.lr.ph ], [ %i.i, %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 4 uses
  %i.h = getelementptr i8, ptr %.sroa.052.067, i64 %.idx ; 4 uses
  %i.i = getelementptr i8, ptr %.sroa.052.067, i64 %.idx58 ; 4 uses
  br i1 %or.cond26.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.029.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.068, %bb.b ] ; 2 uses
  %.sroa.022.028.i = phi ptr [ %.sroa.022.1.i, %.lr.ph.i ], [ %.sroa.052.067, %bb.b ] ; 3 uses
  %.sroa.019.027.i = phi ptr [ %.sroa.019.1.i, %.lr.ph.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.019.027.i, align 8
  %i.k = load ptr, ptr %.sroa.022.028.i, align 8
  %i.l = tail call noundef zeroext i1 %4(ptr noundef %i.j, ptr noundef %i.k), !inline_history !146 ; 3 uses
  %.sink.in.i = select i1 %i.l, ptr %.sroa.019.027.i, ptr %.sroa.022.028.i
  %.sroa.019.1.idx.i = select i1 %i.l, i64 8, i64 0
  %.sroa.019.1.i = getelementptr i8, ptr %.sroa.019.027.i, i64 %.sroa.019.1.idx.i ; 3 uses
  %.sroa.022.1.idx.i = select i1 %i.l, i64 0, i64 8
  %.sroa.022.1.i = getelementptr i8, ptr %.sroa.022.028.i, i64 %.sroa.022.1.idx.i ; 3 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8
  store ptr %.sink.i, ptr %.029.i, align 8
  %i.m = getelementptr i8, ptr %.029.i, i64 8     ; 2 uses
  %i.n = icmp ne ptr %.sroa.022.1.i, %i.h
  %i.o = icmp ne ptr %.sroa.019.1.i, %i.i
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !147

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.b
  %.sroa.019.0.lcssa.i = phi ptr [ %i.h, %bb.b ], [ %.sroa.019.1.i, %.lr.ph.i ] ; 7 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %.sroa.052.067, %bb.b ], [ %.sroa.022.1.i, %.lr.ph.i ] ; 7 uses
  %.0.lcssa.i = phi ptr [ %.068, %bb.b ], [ %i.m, %.lr.ph.i ] ; 8 uses
  %.0.lcssa.i114 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = ptrtoint ptr %.sroa.022.0.lcssa.i to i64 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 8 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %min.iters.check117 = icmp ult i64 %i.s, 38
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i.i.preheader194, label %vector.scevcheck106

vector.scevcheck106:                              ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.u = add nsw i64 %i.s, -1                     ; 2 uses
  %mul.result108 = shl i64 %i.u, 3                ; 2 uses
  %mul.overflow106 = icmp ugt i64 %i.u, 2305843009213693951
  %5 = getelementptr i8, ptr %.0.lcssa.i, i64 %mul.result108
  %6 = icmp ult ptr %5, %.0.lcssa.i
  %i.v = getelementptr i8, ptr %.sroa.022.0.lcssa.i, i64 %mul.result108
  %i.w = icmp ult ptr %i.v, %.sroa.022.0.lcssa.i
  %i.x = or i1 %i.w, %mul.overflow106
  %i.y = or i1 %6, %i.x
  %i.z = sub i64 %i.q, %.0.lcssa.i114
  %diff.check115 = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %i.y, i1 true, i1 %diff.check115
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader194, label %vector.ph118

vector.ph118:                                     ; preds = %vector.scevcheck106
  %n.vec120 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.aa = shl i64 %n.vec120, 3                    ; 2 uses
  %i.ab = getelementptr i8, ptr %.0.lcssa.i, i64 %i.aa ; 2 uses
  %i.ac = and i64 %i.s, 3
  %i.ad = getelementptr i8, ptr %.sroa.022.0.lcssa.i, i64 %i.aa
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.ae = shl i64 %index122, 3                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ae ; 2 uses
  %next.gep124 = getelementptr i8, ptr %.sroa.022.0.lcssa.i, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load125 = load <2 x ptr>, ptr %next.gep124, align 8
  %wide.load126 = load <2 x ptr>, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x ptr> %wide.load125, ptr %next.gep123, align 8
  store <2 x ptr> %wide.load126, ptr %i.ag, align 8
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.ah, label %middle.block128, label %vector.body121, !llvm.loop !148

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.s, %n.vec120
  br i1 %cmp.n129, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader194

.lr.ph.i.i.i.i.i.i.preheader194:                  ; preds = %vector.scevcheck106, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block128
  %.09.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i, %vector.scevcheck106 ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block128 ]
  %.048.i.i.i.i.i.i.ph = phi i64 [ %i.s, %vector.scevcheck106 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block128 ]
  %.sroa.05.07.i.i.i.i.i.i.ph = phi ptr [ %.sroa.022.0.lcssa.i, %vector.scevcheck106 ], [ %.sroa.022.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block128 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader194, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader194 ] ; 2 uses
  %.048.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.048.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader194 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader194 ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.05.07.i.i.i.i.i.i, align 8
  store ptr %i.ai, ptr %.09.i.i.i.i.i.i, align 8
  %i.aj = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i.i, i64 8
  %i.ak = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = add nsw i64 %.048.i.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.048.i.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i, !llvm.loop !149

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block128, %.critedge.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i, %.critedge.i ], [ %i.ab, %middle.block128 ], [ %i.ak, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i101 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i to i64
  %i.an = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.019.0.lcssa.i to i64 ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3                 ; 8 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i14.i.preheader, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit

.lr.ph.i.i.i.i.i14.i.preheader:                   ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i
  %min.iters.check = icmp ult i64 %i.aq, 38
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i14.i.preheader193, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i14.i.preheader
  %i.as = add nsw i64 %i.aq, -1                   ; 2 uses
  %mul.result = shl i64 %i.as, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.as, 2305843009213693951
  %7 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %mul.result
  %8 = icmp ult ptr %7, %.0.lcssa.i.i.i.i.i.i
  %i.at = getelementptr i8, ptr %.sroa.019.0.lcssa.i, i64 %mul.result
  %i.au = icmp ult ptr %i.at, %.sroa.019.0.lcssa.i
  %i.av = or i1 %i.au, %mul.overflow
  %i.aw = or i1 %8, %i.av
  %i.ax = sub i64 %i.ao, %.0.lcssa.i.i.i.i.i.i101
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond187 = select i1 %i.aw, i1 true, i1 %diff.check
  br i1 %or.cond187, label %.lr.ph.i.i.i.i.i14.i.preheader193, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %i.ay ; 2 uses
  %i.ba = and i64 %i.aq, 3
  %i.bb = getelementptr i8, ptr %.sroa.019.0.lcssa.i, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %i.bc ; 2 uses
  %next.gep102 = getelementptr i8, ptr %.sroa.019.0.lcssa.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep102, align 8
  %wide.load103 = load <2 x ptr>, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8
  store <2 x ptr> %wide.load103, ptr %i.be, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, label %.lr.ph.i.i.i.i.i14.i.preheader193

.lr.ph.i.i.i.i.i14.i.preheader193:                ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i14.i.preheader, %middle.block
  %.09.i.i.i.i.i15.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %vector.scevcheck ], [ %.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i14.i.preheader ], [ %i.az, %middle.block ]
  %.048.i.i.i.i.i16.i.ph = phi i64 [ %i.aq, %vector.scevcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i14.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.05.07.i.i.i.i.i17.i.ph = phi ptr [ %.sroa.019.0.lcssa.i, %vector.scevcheck ], [ %.sroa.019.0.lcssa.i, %.lr.ph.i.i.i.i.i14.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i14.i

.lr.ph.i.i.i.i.i14.i:                             ; preds = %.lr.ph.i.i.i.i.i14.i.preheader193, %.lr.ph.i.i.i.i.i14.i
  %.09.i.i.i.i.i15.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i14.i ], [ %.09.i.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i.i14.i.preheader193 ] ; 2 uses
  %.048.i.i.i.i.i16.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i14.i ], [ %.048.i.i.i.i.i16.i.ph, %.lr.ph.i.i.i.i.i14.i.preheader193 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i17.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i14.i ], [ %.sroa.05.07.i.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i.i14.i.preheader193 ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.05.07.i.i.i.i.i17.i, align 8
  store ptr %i.bg, ptr %.09.i.i.i.i.i15.i, align 8
  %i.bh = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i17.i, i64 8
  %i.bi = getelementptr i8, ptr %.09.i.i.i.i.i15.i, i64 8 ; 2 uses
  %i.bj = add nsw i64 %.048.i.i.i.i.i16.i, -1
  %i.bk = icmp samesign ugt i64 %.048.i.i.i.i.i16.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i14.i, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, !llvm.loop !151

_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i14.i, %middle.block, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i
  %.0.lcssa.i.i.i.i.i13.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i ], [ %i.az, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i.i14.i ] ; 2 uses
  %i.bl = sub i64 %i.b, %i.an
  %i.bm = ashr exact i64 %i.bl, 3                 ; 2 uses
  %.not = icmp slt i64 %i.bm, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !152

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, %bb.a
  %.sroa.052.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.0.lcssa.i.i.i.i.i13.i, %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa64 = phi i64 [ %i.e, %bb.a ], [ %i.bm, %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa64)
  %.idx59 = shl i64 %.sroa.speculated, 3          ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.052.0.lcssa, i64 %.idx59 ; 5 uses
  %i.bo = icmp ne i64 %.idx59, 0
  %i.bp = icmp ne ptr %i.bn, %1
  %or.cond26.i17 = and i1 %i.bo, %i.bp
  br i1 %or.cond26.i17, label %.lr.ph.i33, label %.critedge.i18

.lr.ph.i33:                                       ; preds = %._crit_edge, %.lr.ph.i33
  %.029.i34 = phi ptr [ %i.bt, %.lr.ph.i33 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.022.028.i35 = phi ptr [ %.sroa.022.1.i41, %.lr.ph.i33 ], [ %.sroa.052.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.019.027.i36 = phi ptr [ %.sroa.019.1.i39, %.lr.ph.i33 ], [ %i.bn, %._crit_edge ] ; 3 uses
  %i.bq = load ptr, ptr %.sroa.019.027.i36, align 8
  %i.br = load ptr, ptr %.sroa.022.028.i35, align 8
  %i.bs = tail call noundef zeroext i1 %4(ptr noundef %i.bq, ptr noundef %i.br), !inline_history !146 ; 3 uses
  %.sink.in.i37 = select i1 %i.bs, ptr %.sroa.019.027.i36, ptr %.sroa.022.028.i35
  %.sroa.019.1.idx.i38 = select i1 %i.bs, i64 8, i64 0
  %.sroa.019.1.i39 = getelementptr i8, ptr %.sroa.019.027.i36, i64 %.sroa.019.1.idx.i38 ; 3 uses
  %.sroa.022.1.idx.i40 = select i1 %i.bs, i64 0, i64 8
  %.sroa.022.1.i41 = getelementptr i8, ptr %.sroa.022.028.i35, i64 %.sroa.022.1.idx.i40 ; 3 uses
  %.sink.i42 = load ptr, ptr %.sink.in.i37, align 8
  store ptr %.sink.i42, ptr %.029.i34, align 8
  %i.bt = getelementptr i8, ptr %.029.i34, i64 8  ; 2 uses
  %i.bu = icmp ne ptr %.sroa.022.1.i41, %i.bn
  %i.bv = icmp ne ptr %.sroa.019.1.i39, %1
  %or.cond.i43 = and i1 %i.bu, %i.bv
  br i1 %or.cond.i43, label %.lr.ph.i33, label %.critedge.i18, !llvm.loop !147

.critedge.i18:                                    ; preds = %.lr.ph.i33, %._crit_edge
  %.sroa.019.0.lcssa.i19 = phi ptr [ %i.bn, %._crit_edge ], [ %.sroa.019.1.i39, %.lr.ph.i33 ] ; 7 uses
  %.sroa.022.0.lcssa.i20 = phi ptr [ %.sroa.052.0.lcssa, %._crit_edge ], [ %.sroa.022.1.i41, %.lr.ph.i33 ] ; 7 uses
  %.0.lcssa.i21 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bt, %.lr.ph.i33 ] ; 8 uses
  %.0.lcssa.i21141 = ptrtoaddr ptr %.0.lcssa.i21 to i64
  %i.bw = ptrtoint ptr %i.bn to i64
  %i.bx = ptrtoint ptr %.sroa.022.0.lcssa.i20 to i64 ; 2 uses
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3                 ; 8 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i29.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22

.lr.ph.i.i.i.i.i.i29.preheader:                   ; preds = %.critedge.i18
  %min.iters.check144 = icmp ult i64 %i.bz, 44
  br i1 %min.iters.check144, label %.lr.ph.i.i.i.i.i.i29.preheader191, label %vector.scevcheck133

vector.scevcheck133:                              ; preds = %.lr.ph.i.i.i.i.i.i29.preheader
  %i.cb = add nsw i64 %i.bz, -1                   ; 2 uses
  %mul.result135 = shl i64 %i.cb, 3               ; 2 uses
  %mul.overflow130 = icmp ugt i64 %i.cb, 2305843009213693951
  %9 = getelementptr i8, ptr %.0.lcssa.i21, i64 %mul.result135
  %10 = icmp ult ptr %9, %.0.lcssa.i21
  %i.cc = getelementptr i8, ptr %.sroa.022.0.lcssa.i20, i64 %mul.result135
  %i.cd = icmp ult ptr %i.cc, %.sroa.022.0.lcssa.i20
  %i.ce = or i1 %i.cd, %mul.overflow130
  %i.cf = or i1 %10, %i.ce
  %i.cg = sub i64 %i.bx, %.0.lcssa.i21141
  %diff.check142 = icmp ugt i64 %i.cg, -32
  %or.cond188 = select i1 %i.cf, i1 true, i1 %diff.check142
  br i1 %or.cond188, label %.lr.ph.i.i.i.i.i.i29.preheader191, label %vector.ph145

vector.ph145:                                     ; preds = %vector.scevcheck133
  %n.vec147 = and i64 %i.bz, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec147, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.0.lcssa.i21, i64 %i.ch ; 2 uses
  %i.cj = and i64 %i.bz, 3
  %i.ck = getelementptr i8, ptr %.sroa.022.0.lcssa.i20, i64 %i.ch
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %i.cl = shl i64 %index149, 3                    ; 2 uses
  %next.gep150 = getelementptr i8, ptr %.0.lcssa.i21, i64 %i.cl ; 2 uses
  %next.gep151 = getelementptr i8, ptr %.sroa.022.0.lcssa.i20, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <2 x ptr>, ptr %next.gep151, align 8
  %wide.load153 = load <2 x ptr>, ptr %i.cm, align 8
  %i.cn = getelementptr i8, ptr %next.gep150, i64 16
  store <2 x ptr> %wide.load152, ptr %next.gep150, align 8
  store <2 x ptr> %wide.load153, ptr %i.cn, align 8
  %index.next154 = add nuw i64 %index149, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.co, label %middle.block155, label %vector.body148, !llvm.loop !153

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.bz, %n.vec147
  br i1 %cmp.n156, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22, label %.lr.ph.i.i.i.i.i.i29.preheader191

.lr.ph.i.i.i.i.i.i29.preheader191:                ; preds = %vector.scevcheck133, %.lr.ph.i.i.i.i.i.i29.preheader, %middle.block155
  %.09.i.i.i.i.i.i30.ph = phi ptr [ %.0.lcssa.i21, %vector.scevcheck133 ], [ %.0.lcssa.i21, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.ci, %middle.block155 ]
  %.048.i.i.i.i.i.i31.ph = phi i64 [ %i.bz, %vector.scevcheck133 ], [ %i.bz, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cj, %middle.block155 ]
  %.sroa.05.07.i.i.i.i.i.i32.ph = phi ptr [ %.sroa.022.0.lcssa.i20, %vector.scevcheck133 ], [ %.sroa.022.0.lcssa.i20, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.ck, %middle.block155 ]
  br label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29.preheader191, %.lr.ph.i.i.i.i.i.i29
  %.09.i.i.i.i.i.i30 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i29 ], [ %.09.i.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i.i29.preheader191 ] ; 2 uses
  %.048.i.i.i.i.i.i31 = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i29 ], [ %.048.i.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i.i29.preheader191 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i32 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i29 ], [ %.sroa.05.07.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i29.preheader191 ] ; 2 uses
  %i.cp = load ptr, ptr %.sroa.05.07.i.i.i.i.i.i32, align 8
  store ptr %i.cp, ptr %.09.i.i.i.i.i.i30, align 8
  %i.cq = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i.i32, i64 8
  %i.cr = getelementptr i8, ptr %.09.i.i.i.i.i.i30, i64 8 ; 2 uses
  %i.cs = add nsw i64 %.048.i.i.i.i.i.i31, -1
  %i.ct = icmp samesign ugt i64 %.048.i.i.i.i.i.i31, 1
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i29, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22, !llvm.loop !154

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22: ; preds = %.lr.ph.i.i.i.i.i.i29, %middle.block155, %.critedge.i18
  %.0.lcssa.i.i.i.i.i.i23 = phi ptr [ %.0.lcssa.i21, %.critedge.i18 ], [ %i.ci, %middle.block155 ], [ %i.cr, %.lr.ph.i.i.i.i.i.i29 ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i23168 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i23 to i64
  %i.cu = ptrtoint ptr %.sroa.019.0.lcssa.i19 to i64 ; 2 uses
  %i.cv = sub i64 %i.b, %i.cu
  %i.cw = ashr exact i64 %i.cv, 3                 ; 8 uses
  %i.cx = icmp sgt i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i14.i25.preheader, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit44

.lr.ph.i.i.i.i.i14.i25.preheader:                 ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22
  %min.iters.check171 = icmp ult i64 %i.cw, 44
  br i1 %min.iters.check171, label %.lr.ph.i.i.i.i.i14.i25.preheader190, label %vector.scevcheck160

vector.scevcheck160:                              ; preds = %.lr.ph.i.i.i.i.i14.i25.preheader
  %i.cy = add nsw i64 %i.cw, -1                   ; 2 uses
  %mul.result162 = shl i64 %i.cy, 3               ; 2 uses
  %mul.overflow154 = icmp ugt i64 %i.cy, 2305843009213693951
  %11 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i23, i64 %mul.result162
  %12 = icmp ult ptr %11, %.0.lcssa.i.i.i.i.i.i23
  %i.cz = getelementptr i8, ptr %.sroa.019.0.lcssa.i19, i64 %mul.result162
  %i.da = icmp ult ptr %i.cz, %.sroa.019.0.lcssa.i19
  %i.db = or i1 %i.da, %mul.overflow154
  %i.dc = or i1 %12, %i.db
  %i.dd = sub i64 %i.cu, %.0.lcssa.i.i.i.i.i.i23168
  %diff.check169 = icmp ugt i64 %i.dd, -32
  %or.cond189 = select i1 %i.dc, i1 true, i1 %diff.check169
  br i1 %or.cond189, label %.lr.ph.i.i.i.i.i14.i25.preheader190, label %vector.ph172

vector.ph172:                                     ; preds = %vector.scevcheck160
  %n.vec174 = and i64 %i.cw, 4611686018427387900  ; 3 uses
  %i.de = shl i64 %n.vec174, 3                    ; 2 uses
  %i.df = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i23, i64 %i.de
  %i.dg = and i64 %i.cw, 3
  %i.dh = getelementptr i8, ptr %.sroa.019.0.lcssa.i19, i64 %i.de
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph172
  %index176 = phi i64 [ 0, %vector.ph172 ], [ %index.next181, %vector.body175 ] ; 2 uses
  %i.di = shl i64 %index176, 3                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i23, i64 %i.di ; 2 uses
  %next.gep178 = getelementptr i8, ptr %.sroa.019.0.lcssa.i19, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep178, i64 16
  %wide.load179 = load <2 x ptr>, ptr %next.gep178, align 8
  %wide.load180 = load <2 x ptr>, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %next.gep177, i64 16
  store <2 x ptr> %wide.load179, ptr %next.gep177, align 8
  store <2 x ptr> %wide.load180, ptr %i.dk, align 8
  %index.next181 = add nuw i64 %index176, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.dl, label %middle.block182, label %vector.body175, !llvm.loop !155

middle.block182:                                  ; preds = %vector.body175
  %cmp.n183 = icmp eq i64 %i.cw, %n.vec174
  br i1 %cmp.n183, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit44, label %.lr.ph.i.i.i.i.i14.i25.preheader190

.lr.ph.i.i.i.i.i14.i25.preheader190:              ; preds = %vector.scevcheck160, %.lr.ph.i.i.i.i.i14.i25.preheader, %middle.block182
  %.09.i.i.i.i.i15.i26.ph = phi ptr [ %.0.lcssa.i.i.i.i.i.i23, %vector.scevcheck160 ], [ %.0.lcssa.i.i.i.i.i.i23, %.lr.ph.i.i.i.i.i14.i25.preheader ], [ %i.df, %middle.block182 ]
  %.048.i.i.i.i.i16.i27.ph = phi i64 [ %i.cw, %vector.scevcheck160 ], [ %i.cw, %.lr.ph.i.i.i.i.i14.i25.preheader ], [ %i.dg, %middle.block182 ]
  %.sroa.05.07.i.i.i.i.i17.i28.ph = phi ptr [ %.sroa.019.0.lcssa.i19, %vector.scevcheck160 ], [ %.sroa.019.0.lcssa.i19, %.lr.ph.i.i.i.i.i14.i25.preheader ], [ %i.dh, %middle.block182 ]
  br label %.lr.ph.i.i.i.i.i14.i25

.lr.ph.i.i.i.i.i14.i25:                           ; preds = %.lr.ph.i.i.i.i.i14.i25.preheader190, %.lr.ph.i.i.i.i.i14.i25
  %.09.i.i.i.i.i15.i26 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i14.i25 ], [ %.09.i.i.i.i.i15.i26.ph, %.lr.ph.i.i.i.i.i14.i25.preheader190 ] ; 2 uses
  %.048.i.i.i.i.i16.i27 = phi i64 [ %i.dp, %.lr.ph.i.i.i.i.i14.i25 ], [ %.048.i.i.i.i.i16.i27.ph, %.lr.ph.i.i.i.i.i14.i25.preheader190 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i17.i28 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i14.i25 ], [ %.sroa.05.07.i.i.i.i.i17.i28.ph, %.lr.ph.i.i.i.i.i14.i25.preheader190 ] ; 2 uses
  %i.dm = load ptr, ptr %.sroa.05.07.i.i.i.i.i17.i28, align 8
  store ptr %i.dm, ptr %.09.i.i.i.i.i15.i26, align 8
  %i.dn = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i17.i28, i64 8
  %i.do = getelementptr i8, ptr %.09.i.i.i.i.i15.i26, i64 8
  %i.dp = add nsw i64 %.048.i.i.i.i.i16.i27, -1
  %i.dq = icmp samesign ugt i64 %.048.i.i.i.i.i16.i27, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i14.i25, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit44, !llvm.loop !156

_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit44: ; preds = %.lr.ph.i.i.i.i.i14.i25, %middle.block182, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPP15QTreeWidgetItemN5QListIS1_E8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl i64 %3, 1                            ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not62 = icmp slt i64 %i.e, %i.a
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 3 uses
  %.idx54 = shl i64 %3, 4                         ; 2 uses
  %i.f = icmp ne i64 %.idx, 0
  %i.g = icmp ne i64 %.idx, %.idx54
  %i.h = and i1 %i.f, %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit
  %.sroa.021.064 = phi ptr [ %2, %.lr.ph ], [ %.sroa.0.0.lcssa.i.i.i.i.i18.i, %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.063 = phi ptr [ %0, %.lr.ph ], [ %i.j, %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 4 uses
  %i.i = getelementptr i8, ptr %.063, i64 %.idx   ; 4 uses
  %i.j = getelementptr i8, ptr %.063, i64 %.idx54 ; 4 uses
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.030.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %.063, %bb.b ] ; 3 uses
  %.01629.i = phi ptr [ %.117.i, %.lr.ph.i ], [ %i.i, %bb.b ] ; 3 uses
  %.sroa.024.028.i = phi ptr [ %i.n, %.lr.ph.i ], [ %.sroa.021.064, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.01629.i, align 8
  %i.l = load ptr, ptr %.030.i, align 8
  %i.m = tail call noundef zeroext i1 %4(ptr noundef %i.k, ptr noundef %i.l), !inline_history !157 ; 3 uses
  %.sink.in.i = select i1 %i.m, ptr %.01629.i, ptr %.030.i
  %.117.idx.i = select i1 %i.m, i64 8, i64 0
  %.117.i = getelementptr i8, ptr %.01629.i, i64 %.117.idx.i ; 3 uses
  %.1.idx.i = select i1 %i.m, i64 0, i64 8
  %.1.i = getelementptr i8, ptr %.030.i, i64 %.1.idx.i ; 3 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8
  store ptr %.sink.i, ptr %.sroa.024.028.i, align 8
  %i.n = getelementptr i8, ptr %.sroa.024.028.i, i64 8 ; 2 uses
  %i.o = icmp ne ptr %.1.i, %i.i
  %i.p = icmp ne ptr %.117.i, %i.j
  %i.q = and i1 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !158

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.sroa.024.0.lcssa.i = phi ptr [ %.sroa.021.064, %bb.b ], [ %i.n, %.lr.ph.i ] ; 8 uses
  %.016.lcssa.i = phi ptr [ %i.i, %bb.b ], [ %.117.i, %.lr.ph.i ] ; 7 uses
  %.0.lcssa.i = phi ptr [ %.063, %bb.b ], [ %.1.i, %.lr.ph.i ] ; 7 uses
  %.sroa.024.0.lcssa.i110 = ptrtoaddr ptr %.sroa.024.0.lcssa.i to i64
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = ptrtoint ptr %.0.lcssa.i to i64          ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 8 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %min.iters.check113 = icmp ult i64 %i.u, 38
  br i1 %min.iters.check113, label %.lr.ph.i.i.i.i.i.i.preheader190, label %vector.scevcheck102

vector.scevcheck102:                              ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.w = add nsw i64 %i.u, -1                     ; 2 uses
  %mul.result104 = shl i64 %i.w, 3                ; 2 uses
  %mul.overflow102 = icmp ugt i64 %i.w, 2305843009213693951
  %5 = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %mul.result104
  %6 = icmp ult ptr %5, %.sroa.024.0.lcssa.i
  %i.x = getelementptr i8, ptr %.0.lcssa.i, i64 %mul.result104
  %i.y = icmp ult ptr %i.x, %.0.lcssa.i
  %i.z = or i1 %i.y, %mul.overflow102
  %i.aa = or i1 %6, %i.z
  %i.ab = sub i64 %i.s, %.sroa.024.0.lcssa.i110
  %diff.check111 = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %i.aa, i1 true, i1 %diff.check111
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader190, label %vector.ph114

vector.ph114:                                     ; preds = %vector.scevcheck102
  %n.vec116 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.ac = and i64 %i.u, 3
  %i.ad = shl i64 %n.vec116, 3                    ; 2 uses
  %i.ae = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.ad ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph114
  %index118 = phi i64 [ 0, %vector.ph114 ], [ %index.next123, %vector.body117 ] ; 2 uses
  %i.ag = shl i64 %index118, 3                    ; 2 uses
  %next.gep119 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ag ; 2 uses
  %next.gep120 = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load121 = load <2 x ptr>, ptr %next.gep119, align 8
  %wide.load122 = load <2 x ptr>, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> %wide.load121, ptr %next.gep120, align 8
  store <2 x ptr> %wide.load122, ptr %i.ai, align 8
  %index.next123 = add nuw i64 %index118, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.aj, label %middle.block124, label %vector.body117, !llvm.loop !159

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %i.u, %n.vec116
  br i1 %cmp.n125, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader190

.lr.ph.i.i.i.i.i.i.preheader190:                  ; preds = %vector.scevcheck102, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block124
  %.09.i.i.i.i.i.i.ph = phi i64 [ %i.u, %vector.scevcheck102 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block124 ]
  %.058.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i, %vector.scevcheck102 ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block124 ]
  %.sroa.0.07.i.i.i.i.i.i.ph = phi ptr [ %.sroa.024.0.lcssa.i, %vector.scevcheck102 ], [ %.sroa.024.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block124 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader190, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader190 ] ; 2 uses
  %.058.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.058.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader190 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader190 ] ; 2 uses
  %i.ak = load ptr, ptr %.058.i.i.i.i.i.i, align 8
  store ptr %i.ak, ptr %.sroa.0.07.i.i.i.i.i.i, align 8
  %i.al = getelementptr i8, ptr %.058.i.i.i.i.i.i, i64 8
  %i.am = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = add nsw i64 %.09.i.i.i.i.i.i, -1
  %i.ao = icmp samesign ugt i64 %.09.i.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i, !llvm.loop !160

_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block124, %._crit_edge.i
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.024.0.lcssa.i, %._crit_edge.i ], [ %i.af, %middle.block124 ], [ %i.am, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i97 = ptrtoaddr ptr %.sroa.0.0.lcssa.i.i.i.i.i.i to i64
  %i.ap = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.aq = ptrtoint ptr %.016.lcssa.i to i64       ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3                 ; 8 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i
  %min.iters.check = icmp ult i64 %i.as, 38
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i19.i.preheader189, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i19.i.preheader
  %i.au = add nsw i64 %i.as, -1                   ; 2 uses
  %mul.result = shl i64 %i.au, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.au, 2305843009213693951
  %7 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 %mul.result
  %8 = icmp ult ptr %7, %.sroa.0.0.lcssa.i.i.i.i.i.i
  %i.av = getelementptr i8, ptr %.016.lcssa.i, i64 %mul.result
  %i.aw = icmp ult ptr %i.av, %.016.lcssa.i
  %i.ax = or i1 %i.aw, %mul.overflow
  %i.ay = or i1 %8, %i.ax
  %i.az = sub i64 %i.aq, %.sroa.0.0.lcssa.i.i.i.i.i.i97
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond183 = select i1 %i.ay, i1 true, i1 %diff.check
  br i1 %or.cond183, label %.lr.ph.i.i.i.i.i19.i.preheader189, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ba = and i64 %i.as, 3
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %.016.lcssa.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 %i.bb ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.016.lcssa.i, i64 %i.be ; 2 uses
  %next.gep98 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8
  %wide.load99 = load <2 x ptr>, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %next.gep98, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep98, align 8
  store <2 x ptr> %wide.load99, ptr %i.bg, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, label %.lr.ph.i.i.i.i.i19.i.preheader189

.lr.ph.i.i.i.i.i19.i.preheader189:                ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i19.i.preheader, %middle.block
  %.09.i.i.i.i.i20.i.ph = phi i64 [ %i.as, %vector.scevcheck ], [ %i.as, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.ba, %middle.block ]
  %.058.i.i.i.i.i21.i.ph = phi ptr [ %.016.lcssa.i, %vector.scevcheck ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bc, %middle.block ]
  %.sroa.0.07.i.i.i.i.i22.i.ph = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i, %vector.scevcheck ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.preheader189, %.lr.ph.i.i.i.i.i19.i
  %.09.i.i.i.i.i20.i = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i19.i ], [ %.09.i.i.i.i.i20.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader189 ] ; 2 uses
  %.058.i.i.i.i.i21.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i19.i ], [ %.058.i.i.i.i.i21.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader189 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i22.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i19.i ], [ %.sroa.0.07.i.i.i.i.i22.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader189 ] ; 2 uses
  %i.bi = load ptr, ptr %.058.i.i.i.i.i21.i, align 8
  store ptr %i.bi, ptr %.sroa.0.07.i.i.i.i.i22.i, align 8
  %i.bj = getelementptr i8, ptr %.058.i.i.i.i.i21.i, i64 8
  %i.bk = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i22.i, i64 8 ; 2 uses
  %i.bl = add nsw i64 %.09.i.i.i.i.i20.i, -1
  %i.bm = icmp samesign ugt i64 %.09.i.i.i.i.i20.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, !llvm.loop !162

_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i, %middle.block, %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i
  %.sroa.0.0.lcssa.i.i.i.i.i18.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i ], [ %i.bd, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i19.i ] ; 2 uses
  %i.bn = sub i64 %i.b, %i.ap
  %i.bo = ashr exact i64 %i.bn, 3                 ; 2 uses
  %.not = icmp slt i64 %i.bo, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !163

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.sroa.021.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.0.0.lcssa.i.i.i.i.i18.i, %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa60 = phi i64 [ %i.e, %bb.a ], [ %i.bo, %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa60)
  %.idx55 = shl i64 %.sroa.speculated, 3          ; 2 uses
  %i.bp = getelementptr i8, ptr %.0.lcssa, i64 %.idx55 ; 5 uses
  %i.bq = icmp ne i64 %.idx55, 0
  %i.br = icmp ne ptr %i.bp, %1
  %i.bs = and i1 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph.i39, label %._crit_edge.i24

.lr.ph.i39:                                       ; preds = %._crit_edge, %.lr.ph.i39
  %.030.i40 = phi ptr [ %.1.i47, %.lr.ph.i39 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.01629.i41 = phi ptr [ %.117.i45, %.lr.ph.i39 ], [ %i.bp, %._crit_edge ] ; 3 uses
  %.sroa.024.028.i42 = phi ptr [ %i.bw, %.lr.ph.i39 ], [ %.sroa.021.0.lcssa, %._crit_edge ] ; 2 uses
  %i.bt = load ptr, ptr %.01629.i41, align 8
  %i.bu = load ptr, ptr %.030.i40, align 8
  %i.bv = tail call noundef zeroext i1 %4(ptr noundef %i.bt, ptr noundef %i.bu), !inline_history !157 ; 3 uses
  %.sink.in.i43 = select i1 %i.bv, ptr %.01629.i41, ptr %.030.i40
  %.117.idx.i44 = select i1 %i.bv, i64 8, i64 0
  %.117.i45 = getelementptr i8, ptr %.01629.i41, i64 %.117.idx.i44 ; 3 uses
  %.1.idx.i46 = select i1 %i.bv, i64 0, i64 8
  %.1.i47 = getelementptr i8, ptr %.030.i40, i64 %.1.idx.i46 ; 3 uses
  %.sink.i48 = load ptr, ptr %.sink.in.i43, align 8
  store ptr %.sink.i48, ptr %.sroa.024.028.i42, align 8
  %i.bw = getelementptr i8, ptr %.sroa.024.028.i42, i64 8 ; 2 uses
  %i.bx = icmp ne ptr %.1.i47, %i.bp
  %i.by = icmp ne ptr %.117.i45, %1
  %i.bz = and i1 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph.i39, label %._crit_edge.i24, !llvm.loop !158

._crit_edge.i24:                                  ; preds = %.lr.ph.i39, %._crit_edge
  %.sroa.024.0.lcssa.i25 = phi ptr [ %.sroa.021.0.lcssa, %._crit_edge ], [ %i.bw, %.lr.ph.i39 ] ; 8 uses
  %.016.lcssa.i26 = phi ptr [ %i.bp, %._crit_edge ], [ %.117.i45, %.lr.ph.i39 ] ; 7 uses
  %.0.lcssa.i27 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i47, %.lr.ph.i39 ] ; 7 uses
  %.sroa.024.0.lcssa.i25137 = ptrtoaddr ptr %.sroa.024.0.lcssa.i25 to i64
  %i.ca = ptrtoint ptr %i.bp to i64
  %i.cb = ptrtoint ptr %.0.lcssa.i27 to i64       ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3                 ; 8 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i35.preheader, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28

.lr.ph.i.i.i.i.i.i35.preheader:                   ; preds = %._crit_edge.i24
  %min.iters.check140 = icmp ult i64 %i.cd, 44
  br i1 %min.iters.check140, label %.lr.ph.i.i.i.i.i.i35.preheader187, label %vector.scevcheck129

vector.scevcheck129:                              ; preds = %.lr.ph.i.i.i.i.i.i35.preheader
  %i.cf = add nsw i64 %i.cd, -1                   ; 2 uses
  %mul.result131 = shl i64 %i.cf, 3               ; 2 uses
  %mul.overflow126 = icmp ugt i64 %i.cf, 2305843009213693951
  %9 = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %mul.result131
  %10 = icmp ult ptr %9, %.sroa.024.0.lcssa.i25
  %i.cg = getelementptr i8, ptr %.0.lcssa.i27, i64 %mul.result131
  %i.ch = icmp ult ptr %i.cg, %.0.lcssa.i27
  %i.ci = or i1 %i.ch, %mul.overflow126
  %i.cj = or i1 %10, %i.ci
  %i.ck = sub i64 %i.cb, %.sroa.024.0.lcssa.i25137
  %diff.check138 = icmp ugt i64 %i.ck, -32
  %or.cond184 = select i1 %i.cj, i1 true, i1 %diff.check138
  br i1 %or.cond184, label %.lr.ph.i.i.i.i.i.i35.preheader187, label %vector.ph141

vector.ph141:                                     ; preds = %vector.scevcheck129
  %n.vec143 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cl = and i64 %i.cd, 3
  %i.cm = shl i64 %n.vec143, 3                    ; 2 uses
  %i.cn = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.cm
  %i.co = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cm ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph141
  %index145 = phi i64 [ 0, %vector.ph141 ], [ %index.next150, %vector.body144 ] ; 2 uses
  %i.cp = shl i64 %index145, 3                    ; 2 uses
  %next.gep146 = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.cp ; 2 uses
  %next.gep147 = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep146, i64 16
  %wide.load148 = load <2 x ptr>, ptr %next.gep146, align 8
  %wide.load149 = load <2 x ptr>, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %next.gep147, i64 16
  store <2 x ptr> %wide.load148, ptr %next.gep147, align 8
  store <2 x ptr> %wide.load149, ptr %i.cr, align 8
  %index.next150 = add nuw i64 %index145, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next150, %n.vec143
  br i1 %i.cs, label %middle.block151, label %vector.body144, !llvm.loop !164

middle.block151:                                  ; preds = %vector.body144
  %cmp.n152 = icmp eq i64 %i.cd, %n.vec143
  br i1 %cmp.n152, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28, label %.lr.ph.i.i.i.i.i.i35.preheader187

.lr.ph.i.i.i.i.i.i35.preheader187:                ; preds = %vector.scevcheck129, %.lr.ph.i.i.i.i.i.i35.preheader, %middle.block151
  %.09.i.i.i.i.i.i36.ph = phi i64 [ %i.cd, %vector.scevcheck129 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.cl, %middle.block151 ]
  %.058.i.i.i.i.i.i37.ph = phi ptr [ %.0.lcssa.i27, %vector.scevcheck129 ], [ %.0.lcssa.i27, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.cn, %middle.block151 ]
  %.sroa.0.07.i.i.i.i.i.i38.ph = phi ptr [ %.sroa.024.0.lcssa.i25, %vector.scevcheck129 ], [ %.sroa.024.0.lcssa.i25, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.co, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph.i.i.i.i.i.i35.preheader187, %.lr.ph.i.i.i.i.i.i35
  %.09.i.i.i.i.i.i36 = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i35 ], [ %.09.i.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i.i35.preheader187 ] ; 2 uses
  %.058.i.i.i.i.i.i37 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i35 ], [ %.058.i.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i.i35.preheader187 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.i38 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i35 ], [ %.sroa.0.07.i.i.i.i.i.i38.ph, %.lr.ph.i.i.i.i.i.i35.preheader187 ] ; 2 uses
  %i.ct = load ptr, ptr %.058.i.i.i.i.i.i37, align 8
  store ptr %i.ct, ptr %.sroa.0.07.i.i.i.i.i.i38, align 8
  %i.cu = getelementptr i8, ptr %.058.i.i.i.i.i.i37, i64 8
  %i.cv = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i.i38, i64 8 ; 2 uses
  %i.cw = add nsw i64 %.09.i.i.i.i.i.i36, -1
  %i.cx = icmp samesign ugt i64 %.09.i.i.i.i.i.i36, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i35, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28, !llvm.loop !165

_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28: ; preds = %.lr.ph.i.i.i.i.i.i35, %middle.block151, %._crit_edge.i24
  %.sroa.0.0.lcssa.i.i.i.i.i.i29 = phi ptr [ %.sroa.024.0.lcssa.i25, %._crit_edge.i24 ], [ %i.co, %middle.block151 ], [ %i.cv, %.lr.ph.i.i.i.i.i.i35 ] ; 7 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i29164 = ptrtoaddr ptr %.sroa.0.0.lcssa.i.i.i.i.i.i29 to i64
  %i.cy = ptrtoint ptr %.016.lcssa.i26 to i64     ; 2 uses
  %i.cz = sub i64 %i.b, %i.cy
  %i.da = ashr exact i64 %i.cz, 3                 ; 8 uses
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.i.i.i.i.i19.i31.preheader, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit49

.lr.ph.i.i.i.i.i19.i31.preheader:                 ; preds = %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28
  %min.iters.check167 = icmp ult i64 %i.da, 44
  br i1 %min.iters.check167, label %.lr.ph.i.i.i.i.i19.i31.preheader186, label %vector.scevcheck156

vector.scevcheck156:                              ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader
  %i.dc = add nsw i64 %i.da, -1                   ; 2 uses
  %mul.result158 = shl i64 %i.dc, 3               ; 2 uses
  %mul.overflow150 = icmp ugt i64 %i.dc, 2305843009213693951
  %11 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i29, i64 %mul.result158
  %12 = icmp ult ptr %11, %.sroa.0.0.lcssa.i.i.i.i.i.i29
  %i.dd = getelementptr i8, ptr %.016.lcssa.i26, i64 %mul.result158
  %i.de = icmp ult ptr %i.dd, %.016.lcssa.i26
  %i.df = or i1 %i.de, %mul.overflow150
  %i.dg = or i1 %12, %i.df
  %i.dh = sub i64 %i.cy, %.sroa.0.0.lcssa.i.i.i.i.i.i29164
  %diff.check165 = icmp ugt i64 %i.dh, -32
  %or.cond185 = select i1 %i.dg, i1 true, i1 %diff.check165
  br i1 %or.cond185, label %.lr.ph.i.i.i.i.i19.i31.preheader186, label %vector.ph168

vector.ph168:                                     ; preds = %vector.scevcheck156
  %n.vec170 = and i64 %i.da, 4611686018427387900  ; 3 uses
  %i.di = and i64 %i.da, 3
  %i.dj = shl i64 %n.vec170, 3                    ; 2 uses
  %i.dk = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.dj
  %i.dl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i29, i64 %i.dj
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph168
  %index172 = phi i64 [ 0, %vector.ph168 ], [ %index.next177, %vector.body171 ] ; 2 uses
  %i.dm = shl i64 %index172, 3                    ; 2 uses
  %next.gep173 = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.dm ; 2 uses
  %next.gep174 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i29, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep173, i64 16
  %wide.load175 = load <2 x ptr>, ptr %next.gep173, align 8
  %wide.load176 = load <2 x ptr>, ptr %i.dn, align 8
  %i.do = getelementptr i8, ptr %next.gep174, i64 16
  store <2 x ptr> %wide.load175, ptr %next.gep174, align 8
  store <2 x ptr> %wide.load176, ptr %i.do, align 8
  %index.next177 = add nuw i64 %index172, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.dp, label %middle.block178, label %vector.body171, !llvm.loop !166

middle.block178:                                  ; preds = %vector.body171
  %cmp.n179 = icmp eq i64 %i.da, %n.vec170
  br i1 %cmp.n179, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit49, label %.lr.ph.i.i.i.i.i19.i31.preheader186

.lr.ph.i.i.i.i.i19.i31.preheader186:              ; preds = %vector.scevcheck156, %.lr.ph.i.i.i.i.i19.i31.preheader, %middle.block178
  %.09.i.i.i.i.i20.i32.ph = phi i64 [ %i.da, %vector.scevcheck156 ], [ %i.da, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.di, %middle.block178 ]
  %.058.i.i.i.i.i21.i33.ph = phi ptr [ %.016.lcssa.i26, %vector.scevcheck156 ], [ %.016.lcssa.i26, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.dk, %middle.block178 ]
  %.sroa.0.07.i.i.i.i.i22.i34.ph = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i29, %vector.scevcheck156 ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.dl, %middle.block178 ]
  br label %.lr.ph.i.i.i.i.i19.i31

.lr.ph.i.i.i.i.i19.i31:                           ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader186, %.lr.ph.i.i.i.i.i19.i31
  %.09.i.i.i.i.i20.i32 = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i19.i31 ], [ %.09.i.i.i.i.i20.i32.ph, %.lr.ph.i.i.i.i.i19.i31.preheader186 ] ; 2 uses
  %.058.i.i.i.i.i21.i33 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i19.i31 ], [ %.058.i.i.i.i.i21.i33.ph, %.lr.ph.i.i.i.i.i19.i31.preheader186 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i22.i34 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i19.i31 ], [ %.sroa.0.07.i.i.i.i.i22.i34.ph, %.lr.ph.i.i.i.i.i19.i31.preheader186 ] ; 2 uses
  %i.dq = load ptr, ptr %.058.i.i.i.i.i21.i33, align 8
  store ptr %i.dq, ptr %.sroa.0.07.i.i.i.i.i22.i34, align 8
  %i.dr = getelementptr i8, ptr %.058.i.i.i.i.i21.i33, i64 8
  %i.ds = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i22.i34, i64 8
  %i.dt = add nsw i64 %.09.i.i.i.i.i20.i32, -1
  %i.du = icmp samesign ugt i64 %.09.i.i.i.i.i20.i32, 1
  br i1 %i.du, label %.lr.ph.i.i.i.i.i19.i31, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit49, !llvm.loop !167

_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit49: ; preds = %.lr.ph.i.i.i.i.i19.i31, %middle.block178, %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN5QListIP15QTreeWidgetItemE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_SD_T0_SE_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond83 = or i1 %i.a, %i.b
  br i1 %or.cond83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7989 = phi i64 [ %4, %.lr.ph ], [ %i.av, %tailrecurse ] ; 4 uses
  %.tr7888 = phi i64 [ %3, %.lr.ph ], [ %i.au, %tailrecurse ] ; 4 uses
  %.tr7686 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr84 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tailrecurse ] ; 8 uses
  %i.d = add i64 %.tr7989, %.tr7888
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.tr7686, align 8
  %i.g = load ptr, ptr %.tr84, align 8
  %i.h = tail call noundef zeroext i1 %5(ptr noundef %i.f, ptr noundef %i.g), !inline_history !168
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %.tr84, align 8
  %i.j = load ptr, ptr %.tr7686, align 8
  store ptr %i.j, ptr %.tr84, align 8
  store ptr %i.i, ptr %.tr7686, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %.tr7888, %.tr7989
  %i.l = ptrtoint ptr %.tr7686 to i64             ; 4 uses
  br i1 %i.k, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.m = sdiv i64 %.tr7888, 2                     ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %.tr84, i64 %i.m ; 2 uses
  %i.o = sub i64 %i.c, %i.l
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit

_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.p, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.012.015.i = phi ptr [ %.sroa.012.1.i, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7686, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.r = lshr i64 %.016.i, 1                      ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %.sroa.012.015.i, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.n, align 8
  %i.v = tail call noundef zeroext i1 %5(ptr noundef %i.t, ptr noundef %i.u), !inline_history !169 ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.016.i, %i.x
  %.sroa.012.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.012.015.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.r      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !170

_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit

_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %i.l, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.tr7686, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aa = sub i64 %.pre-phi, %i.l
  %i.ab = ashr exact i64 %i.aa, 3
  br label %tailrecurse

_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.ac = sdiv i64 %.tr7989, 2                    ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %.tr7686, i64 %i.ac ; 2 uses
  %i.ae = ptrtoint ptr %.tr84 to i64              ; 3 uses
  %i.af = sub i64 %i.l, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit

_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit55, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.016.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ag, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %.sroa.012.015.i59 = phi ptr [ %.sroa.012.1.i62, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %.tr84, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %i.ai = lshr i64 %.016.i58, 1                   ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %.sroa.012.015.i59, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.ad, align 8
  %i.al = load ptr, ptr %i.aj, align 8
  %i.am = tail call noundef zeroext i1 %5(ptr noundef %i.ak, ptr noundef %i.al), !inline_history !171 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %i.ao = xor i64 %i.ai, -1
  %i.ap = add nsw i64 %.016.i58, %i.ao
  %.sroa.012.1.i62 = select i1 %i.am, ptr %.sroa.012.015.i59, ptr %i.an ; 3 uses
  %.1.i63 = select i1 %i.am, i64 %i.ai, i64 %i.ap ; 2 uses
  %i.aq = icmp sgt i64 %.1.i63, 0
  br i1 %i.aq, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !172

_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre92 = ptrtoint ptr %.sroa.012.1.i62 to i64
  br label %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit

_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi93 = phi i64 [ %.pre92, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %i.ae, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.012.0.lcssa.i56 = phi ptr [ %.sroa.012.1.i62, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.tr84, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %i.ar = sub i64 %.pre-phi93, %i.ae
  %i.as = ashr exact i64 %i.ar, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit
  %.sroa.066.0 = phi ptr [ %i.n, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ], [ %.sroa.012.0.lcssa.i56, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.ab, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.m, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ], [ %i.as, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %i.at = tail call ptr @_ZNSt3_V28__rotateIN5QListIP15QTreeWidgetItemE8iteratorEEET_S6_S6_S6_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %.tr7686, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN5QListIP15QTreeWidgetItemE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_SD_T0_SE_T1_(ptr %.tr84, ptr %.sroa.066.0, ptr %i.at, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.au = sub i64 %.tr7888, %.0                   ; 2 uses
  %i.av = sub i64 %.tr7989, %.049                 ; 2 uses
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = icmp eq i64 %i.av, 0
  %or.cond = or i1 %i.aw, %i.ax
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN5QListIP15QTreeWidgetItemE8iteratorEEET_S6_S6_S6_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = sub i64 %i.g, %i.d
  %i.m = add i64 %i.l, -8                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check197 = icmp ult i64 %i.m, 360
  br i1 %min.iters.check197, label %.lr.ph.i.preheader214, label %vector.scevcheck183

vector.scevcheck183:                              ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %mul184 = and i64 %i.q, -8                      ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %mul184
  %i.s = icmp ult ptr %i.r, %0
  %i.t = getelementptr i8, ptr %1, i64 %mul184
  %i.u = icmp ult ptr %i.t, %1
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i.preheader214, label %vector.memcheck190

vector.memcheck190:                               ; preds = %vector.scevcheck183
  %i.w = add i64 %i.g, -8
  %i.x = sub i64 %i.w, %i.d
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep191 = getelementptr i8, ptr %0, i64 %i.z
  %scevgep192 = getelementptr i8, ptr %1, i64 %i.z
  %bound0193 = icmp ult ptr %0, %scevgep192
  %bound1194 = icmp ult ptr %1, %scevgep191
  %found.conflict195 = and i1 %bound0193, %bound1194
  br i1 %found.conflict195, label %.lr.ph.i.preheader214, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck190
  %n.vec200 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.aa = shl i64 %n.vec200, 3                    ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 %i.aa
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph198
  %index202 = phi i64 [ 0, %vector.ph198 ], [ %index.next209, %vector.body201 ] ; 2 uses
  %i.ad = shl i64 %index202, 3                    ; 2 uses
  %next.gep203 = getelementptr i8, ptr %1, i64 %i.ad ; 3 uses
  %next.gep204 = getelementptr i8, ptr %0, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep204, i64 16 ; 2 uses
  %wide.load205 = load <2 x ptr>, ptr %next.gep204, align 8, !alias.scope !173, !noalias !176
  %wide.load206 = load <2 x ptr>, ptr %i.ae, align 8, !alias.scope !173, !noalias !176
  %i.af = getelementptr i8, ptr %next.gep203, i64 16 ; 2 uses
  %wide.load207 = load <2 x ptr>, ptr %next.gep203, align 8, !alias.scope !176
  %wide.load208 = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !176
  store <2 x ptr> %wide.load207, ptr %next.gep204, align 8, !alias.scope !173, !noalias !176
  store <2 x ptr> %wide.load208, ptr %i.ae, align 8, !alias.scope !173, !noalias !176
  store <2 x ptr> %wide.load205, ptr %next.gep203, align 8, !alias.scope !176
  store <2 x ptr> %wide.load206, ptr %i.af, align 8, !alias.scope !176
  %index.next209 = add nuw i64 %index202, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next209, %n.vec200
  br i1 %i.ag, label %middle.block210, label %vector.body201, !llvm.loop !178

middle.block210:                                  ; preds = %vector.body201
  %cmp.n211 = icmp eq i64 %i.o, %n.vec200
  br i1 %cmp.n211, label %_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.preheader214

.lr.ph.i.preheader214:                            ; preds = %vector.memcheck190, %vector.scevcheck183, %.lr.ph.i.preheader, %middle.block210
  %.sroa.0.09.i.ph = phi ptr [ %1, %vector.memcheck190 ], [ %1, %vector.scevcheck183 ], [ %1, %.lr.ph.i.preheader ], [ %i.ab, %middle.block210 ]
  %.sroa.05.08.i.ph = phi ptr [ %0, %vector.memcheck190 ], [ %0, %vector.scevcheck183 ], [ %0, %.lr.ph.i.preheader ], [ %i.ac, %middle.block210 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader214, %.lr.ph.i
  %.sroa.0.09.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.sroa.0.09.i.ph, %.lr.ph.i.preheader214 ] ; 3 uses
  %.sroa.05.08.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader214 ] ; 3 uses
  %i.ah = load ptr, ptr %.sroa.05.08.i, align 8
  %i.ai = load ptr, ptr %.sroa.0.09.i, align 8
  store ptr %i.ai, ptr %.sroa.05.08.i, align 8
  store ptr %i.ah, ptr %.sroa.0.09.i, align 8
  %i.aj = getelementptr i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.ak = getelementptr i8, ptr %.sroa.0.09.i, i64 8
  %.not.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !179

bb.d:                                             ; preds = %bb.c
  %i.al = sub i64 %i.c, %i.g
  %i.am = getelementptr i8, ptr %0, i64 %i.al     ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.048.0 = phi ptr [ %0, %bb.d ], [ %.sroa.048.0.be, %.backedge ] ; 27 uses
  %.086 = phi i64 [ %i.i, %bb.d ], [ %.086.be, %.backedge ] ; 21 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 13 uses
  %i.an = sub i64 %.0, %.086                      ; 10 uses
  %i.ao = icmp slt i64 %.086, %i.an
  br i1 %i.ao, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp eq i64 %.086, 1
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %.sroa.048.0, align 8
  %.idx88 = shl i64 %.0, 3                        ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.048.0, i64 %.idx88
  %gepdiff = add i64 %.idx88, -8                  ; 2 uses
  %i.as = icmp sgt i64 %gepdiff, 0
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %scevgep119 = getelementptr i8, ptr %.sroa.048.0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.048.0, ptr align 8 %scevgep119, i64 %gepdiff, i1 false)
  br label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.g
  %i.at = getelementptr i8, ptr %i.ar, i64 -8
  store ptr %i.aq, ptr %i.at, align 8
  br label %_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.au = icmp sgt i64 %i.an, 0
  br i1 %i.au, label %.lr.ph101.preheader, label %._crit_edge102

.lr.ph101.preheader:                              ; preds = %bb.h
  %i.av = getelementptr [8 x i8], ptr %.sroa.048.0, i64 %.086 ; 8 uses
  %min.iters.check = icmp ult i64 %i.an, 30
  br i1 %min.iters.check, label %.lr.ph101.preheader215, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph101.preheader
  %i.aw = xor i64 %.086, -1
  %i.ax = add i64 %.0, %i.aw                      ; 2 uses
  %mul.result = shl i64 %i.ax, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.ax, 2305843009213693951
  %3 = getelementptr i8, ptr %.sroa.048.0, i64 %mul.result
  %4 = icmp ult ptr %3, %.sroa.048.0
  %i.ay = getelementptr i8, ptr %i.av, i64 %mul.result
  %i.az = icmp ult ptr %i.ay, %i.av
  %i.ba = or i1 %i.az, %mul.overflow
  %i.bb = or i1 %4, %i.ba
  br i1 %i.bb, label %.lr.ph101.preheader215, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bc = shl i64 %.0, 3
  %i.bd = sub i64 %.0, %.086
  %i.be = shl i64 %i.bd, 3
  %scevgep140 = getelementptr i8, ptr %.sroa.048.0, i64 %i.be
  %scevgep141 = getelementptr i8, ptr %.sroa.048.0, i64 %i.bc
  %bound0 = icmp ult ptr %.sroa.048.0, %scevgep141
  %bound1 = icmp ult ptr %i.av, %scevgep140
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph101.preheader215, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 9223372036854775804     ; 4 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %.sroa.048.0, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.048.0, i64 %i.bi ; 3 uses
  %next.gep142 = getelementptr i8, ptr %i.av, i64 %i.bi ; 3 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !180, !noalias !183
  %wide.load143 = load <2 x ptr>, ptr %i.bj, align 8, !alias.scope !180, !noalias !183
  %i.bk = getelementptr i8, ptr %next.gep142, i64 16 ; 2 uses
  %wide.load144 = load <2 x ptr>, ptr %next.gep142, align 8, !alias.scope !183
  %wide.load145 = load <2 x ptr>, ptr %i.bk, align 8, !alias.scope !183
  store <2 x ptr> %wide.load144, ptr %next.gep, align 8, !alias.scope !180, !noalias !183
  store <2 x ptr> %wide.load145, ptr %i.bj, align 8, !alias.scope !180, !noalias !183
  store <2 x ptr> %wide.load, ptr %next.gep142, align 8, !alias.scope !183
  store <2 x ptr> %wide.load143, ptr %i.bk, align 8, !alias.scope !183
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge102, label %.lr.ph101.preheader215

.lr.ph101.preheader215:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph101.preheader, %middle.block
  %.03399.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph101.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.048.198.ph = phi ptr [ %.sroa.048.0, %vector.memcheck ], [ %.sroa.048.0, %vector.scevcheck ], [ %.sroa.048.0, %.lr.ph101.preheader ], [ %i.bg, %middle.block ] ; 2 uses
  %.sroa.045.097.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %vector.scevcheck ], [ %i.av, %.lr.ph101.preheader ], [ %i.bh, %middle.block ] ; 2 uses
  %i.bm = sub i64 %.0, %.086
  %xtraiter223 = and i64 %i.bm, 3                 ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol

.lr.ph101.prol:                                   ; preds = %.lr.ph101.preheader215, %.lr.ph101.prol
  %.03399.prol = phi i64 [ %i.br, %.lr.ph101.prol ], [ %.03399.ph, %.lr.ph101.preheader215 ]
  %.sroa.048.198.prol = phi ptr [ %i.bp, %.lr.ph101.prol ], [ %.sroa.048.198.ph, %.lr.ph101.preheader215 ] ; 3 uses
  %.sroa.045.097.prol = phi ptr [ %i.bq, %.lr.ph101.prol ], [ %.sroa.045.097.ph, %.lr.ph101.preheader215 ] ; 3 uses
  %prol.iter225 = phi i64 [ %prol.iter225.next, %.lr.ph101.prol ], [ 0, %.lr.ph101.preheader215 ]
  %i.bn = load ptr, ptr %.sroa.048.198.prol, align 8
  %i.bo = load ptr, ptr %.sroa.045.097.prol, align 8
  store ptr %i.bo, ptr %.sroa.048.198.prol, align 8
  store ptr %i.bn, ptr %.sroa.045.097.prol, align 8
  %i.bp = getelementptr i8, ptr %.sroa.048.198.prol, i64 8 ; 3 uses
  %i.bq = getelementptr i8, ptr %.sroa.045.097.prol, i64 8 ; 2 uses
  %i.br = add nuw nsw i64 %.03399.prol, 1         ; 2 uses
  %prol.iter225.next = add i64 %prol.iter225, 1   ; 2 uses
  %prol.iter225.cmp.not = icmp eq i64 %prol.iter225.next, %xtraiter223
  br i1 %prol.iter225.cmp.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol, !llvm.loop !186

.lr.ph101.prol.loopexit:                          ; preds = %.lr.ph101.prol, %.lr.ph101.preheader215
  %.lcssa.unr = phi ptr [ poison, %.lr.ph101.preheader215 ], [ %i.bp, %.lr.ph101.prol ]
  %.03399.unr = phi i64 [ %.03399.ph, %.lr.ph101.preheader215 ], [ %i.br, %.lr.ph101.prol ]
  %.sroa.048.198.unr = phi ptr [ %.sroa.048.198.ph, %.lr.ph101.preheader215 ], [ %i.bp, %.lr.ph101.prol ]
  %.sroa.045.097.unr = phi ptr [ %.sroa.045.097.ph, %.lr.ph101.preheader215 ], [ %i.bq, %.lr.ph101.prol ]
  %i.bs = sub i64 %.03399.ph, %.0
  %i.bt = add i64 %i.bs, %.086
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101, %middle.block, %bb.h
  %.sroa.048.1.lcssa = phi ptr [ %.sroa.048.0, %bb.h ], [ %i.bg, %middle.block ], [ %.lcssa.unr, %.lr.ph101.prol.loopexit ], [ %i.ck, %.lr.ph101 ]
  %i.bv = srem i64 %.0, %.086                     ; 2 uses
  %.not36 = icmp eq i64 %i.bv, 0
  br i1 %.not36, label %_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %bb.i

.lr.ph101:                                        ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101
  %.03399 = phi i64 [ %i.cm, %.lr.ph101 ], [ %.03399.unr, %.lr.ph101.prol.loopexit ]
  %.sroa.048.198 = phi ptr [ %i.ck, %.lr.ph101 ], [ %.sroa.048.198.unr, %.lr.ph101.prol.loopexit ] ; 6 uses
  %.sroa.045.097 = phi ptr [ %i.cl, %.lr.ph101 ], [ %.sroa.045.097.unr, %.lr.ph101.prol.loopexit ] ; 6 uses
  %i.bw = load ptr, ptr %.sroa.048.198, align 8
  %i.bx = load ptr, ptr %.sroa.045.097, align 8
  store ptr %i.bx, ptr %.sroa.048.198, align 8
  store ptr %i.bw, ptr %.sroa.045.097, align 8
  %i.by = getelementptr i8, ptr %.sroa.048.198, i64 8 ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.045.097, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.by, align 8
  %i.cb = load ptr, ptr %i.bz, align 8
  store ptr %i.cb, ptr %i.by, align 8
  store ptr %i.ca, ptr %i.bz, align 8
  %i.cc = getelementptr i8, ptr %.sroa.048.198, i64 16 ; 2 uses
  %i.cd = getelementptr i8, ptr %.sroa.045.097, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cc, align 8
  %i.cf = load ptr, ptr %i.cd, align 8
  store ptr %i.cf, ptr %i.cc, align 8
  store ptr %i.ce, ptr %i.cd, align 8
  %i.cg = getelementptr i8, ptr %.sroa.048.198, i64 24 ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.045.097, i64 24 ; 2 uses
  %i.ci = load ptr, ptr %i.cg, align 8
  %i.cj = load ptr, ptr %i.ch, align 8
  store ptr %i.cj, ptr %i.cg, align 8
  store ptr %i.ci, ptr %i.ch, align 8
  %i.ck = getelementptr i8, ptr %.sroa.048.198, i64 32 ; 2 uses
  %i.cl = getelementptr i8, ptr %.sroa.045.097, i64 32
  %i.cm = add nuw nsw i64 %.03399, 4              ; 2 uses
  %exitcond110.not.3 = icmp eq i64 %i.cm, %i.an
  br i1 %exitcond110.not.3, label %._crit_edge102, label %.lr.ph101, !llvm.loop !187

bb.i:                                             ; preds = %._crit_edge102
  %i.cn = sub i64 %.086, %i.bv
  br label %.backedge

bb.j:                                             ; preds = %bb.e
  %i.co = icmp eq i64 %i.an, 1
  %i.cp = getelementptr [8 x i8], ptr %.sroa.048.0, i64 %.0 ; 8 uses
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8
  %.idx = shl i64 %.0, 3
  %i.cs = add i64 %.idx, -8                       ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i40.preheader, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i40.preheader:                     ; preds = %bb.k
  %scevgep = getelementptr i8, ptr %.sroa.048.0, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %.sroa.048.0, i64 %i.cs, i1 false)
  br label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i40.preheader, %bb.k
  store ptr %i.cr, ptr %.sroa.048.0, align 8
  br label %_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.cu = sub i64 0, %i.an
  %i.cv = getelementptr [8 x i8], ptr %i.cp, i64 %i.cu ; 7 uses
  %i.cw = icmp sgt i64 %.086, 0
  br i1 %i.cw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %min.iters.check165 = icmp ult i64 %.086, 36
  br i1 %min.iters.check165, label %.lr.ph.preheader216, label %vector.scevcheck148

vector.scevcheck148:                              ; preds = %.lr.ph.preheader
  %i.cx = add nsw i64 %.086, -1                   ; 2 uses
  %scevgep149 = getelementptr i8, ptr %.sroa.048.0, i64 -8
  %i.cy = shl i64 %.086, 3
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.cy ; 2 uses
  %mul.result149 = shl i64 %i.cx, 3               ; 2 uses
  %mul.overflow150 = icmp ugt i64 %i.cx, 2305843009213693951
  %5 = sub i64 0, %mul.result149
  %i.cz = getelementptr i8, ptr %scevgep150, i64 %5
  %i.da = icmp ugt ptr %i.cz, %scevgep150
  %scevgep154.a = getelementptr i8, ptr %.sroa.048.0, i64 -8
  %i.db = shl i64 %.0, 3
  %scevgep155 = getelementptr i8, ptr %scevgep154.a, i64 %i.db ; 2 uses
  %6 = sub i64 0, %mul.result149
  %i.dc = getelementptr i8, ptr %scevgep155, i64 %6
  %i.dd = icmp ugt ptr %i.dc, %scevgep155
  %i.de = or i1 %i.dd, %mul.overflow150
  %i.df = or i1 %i.da, %i.de
  br i1 %i.df, label %.lr.ph.preheader216, label %vector.memcheck159

vector.memcheck159:                               ; preds = %vector.scevcheck148
  %i.dg = sub i64 %.0, %.086
  %i.dh = shl i64 %i.dg, 3
  %scevgep160 = getelementptr i8, ptr %.sroa.048.0, i64 %i.dh
  %bound0161 = icmp ult ptr %.sroa.048.0, %i.cp
  %bound1162 = icmp ult ptr %scevgep160, %i.cv
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.preheader216, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck159
  %n.vec168 = and i64 %.086, 4611686018427387900  ; 4 uses
  %i.di = mul i64 %n.vec168, -8                   ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cp, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.cv, i64 %i.di
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next177, %vector.body169 ] ; 2 uses
  %i.dl = mul i64 %index170, -8                   ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.cp, i64 %i.dl ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.cv, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep172, i64 -16 ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep172, i64 -32 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %i.dm, align 8, !alias.scope !188, !noalias !191
  %wide.load174 = load <2 x ptr>, ptr %i.dn, align 8, !alias.scope !188, !noalias !191
  %i.do = getelementptr i8, ptr %next.gep171, i64 -16 ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep171, i64 -32 ; 2 uses
  %wide.load175 = load <2 x ptr>, ptr %i.do, align 8, !alias.scope !191
  %wide.load176 = load <2 x ptr>, ptr %i.dp, align 8, !alias.scope !191
  store <2 x ptr> %wide.load175, ptr %i.dm, align 8, !alias.scope !188, !noalias !191
  store <2 x ptr> %wide.load176, ptr %i.dn, align 8, !alias.scope !188, !noalias !191
  store <2 x ptr> %wide.load173, ptr %i.do, align 8, !alias.scope !191
  store <2 x ptr> %wide.load174, ptr %i.dp, align 8, !alias.scope !191
  %index.next177 = add nuw i64 %index170, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next177, %n.vec168
  br i1 %i.dq, label %middle.block178, label %vector.body169, !llvm.loop !193

middle.block178:                                  ; preds = %vector.body169
  %cmp.n179 = icmp eq i64 %.086, %n.vec168
  br i1 %cmp.n179, label %._crit_edge, label %.lr.ph.preheader216

.lr.ph.preheader216:                              ; preds = %vector.memcheck159, %vector.scevcheck148, %.lr.ph.preheader, %middle.block178
  %.03296.ph = phi i64 [ 0, %vector.memcheck159 ], [ 0, %vector.scevcheck148 ], [ 0, %.lr.ph.preheader ], [ %n.vec168, %middle.block178 ] ; 3 uses
  %.sroa.0.095.ph = phi ptr [ %i.cp, %vector.memcheck159 ], [ %i.cp, %vector.scevcheck148 ], [ %i.cp, %.lr.ph.preheader ], [ %i.dj, %middle.block178 ] ; 2 uses
  %.sroa.048.294.ph = phi ptr [ %i.cv, %vector.memcheck159 ], [ %i.cv, %vector.scevcheck148 ], [ %i.cv, %.lr.ph.preheader ], [ %i.dk, %middle.block178 ] ; 2 uses
  %xtraiter = and i64 %.086, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader216, %.lr.ph.prol
  %.03296.prol = phi i64 [ %i.dv, %.lr.ph.prol ], [ %.03296.ph, %.lr.ph.preheader216 ]
  %.sroa.0.095.prol = phi ptr [ %i.ds, %.lr.ph.prol ], [ %.sroa.0.095.ph, %.lr.ph.preheader216 ]
  %.sroa.048.294.prol = phi ptr [ %i.dr, %.lr.ph.prol ], [ %.sroa.048.294.ph, %.lr.ph.preheader216 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader216 ]
  %i.dr = getelementptr i8, ptr %.sroa.048.294.prol, i64 -8 ; 4 uses
  %i.ds = getelementptr i8, ptr %.sroa.0.095.prol, i64 -8 ; 4 uses
  %i.dt = load ptr, ptr %i.dr, align 8
  %i.du = load ptr, ptr %i.ds, align 8
  store ptr %i.du, ptr %i.dr, align 8
  store ptr %i.dt, ptr %i.ds, align 8
  %i.dv = add nuw nsw i64 %.03296.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !194

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader216
  %.03296.unr = phi i64 [ %.03296.ph, %.lr.ph.preheader216 ], [ %i.dv, %.lr.ph.prol ]
  %.sroa.0.095.unr = phi ptr [ %.sroa.0.095.ph, %.lr.ph.preheader216 ], [ %i.ds, %.lr.ph.prol ]
  %.sroa.048.294.unr = phi ptr [ %.sroa.048.294.ph, %.lr.ph.preheader216 ], [ %i.dr, %.lr.ph.prol ]
  %i.dw = sub nsw i64 %.03296.ph, %.086
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block178, %bb.l
  %.sroa.048.2.lcssa = phi ptr [ %i.cv, %bb.l ], [ %.sroa.048.0, %middle.block178 ], [ %.sroa.048.0, %.lr.ph ], [ %.sroa.048.0, %.lr.ph.prol.loopexit ]
  %i.dy = srem i64 %.0, %i.an                     ; 2 uses
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.i
  %.sroa.048.0.be = phi ptr [ %.sroa.048.1.lcssa, %bb.i ], [ %.sroa.048.2.lcssa, %._crit_edge ]
  %.086.be = phi i64 [ %i.cn, %bb.i ], [ %i.dy, %._crit_edge ]
  %.0.be = phi i64 [ %.086, %bb.i ], [ %i.an, %._crit_edge ]
  br label %bb.e, !llvm.loop !195

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03296 = phi i64 [ %i.ep, %.lr.ph ], [ %.03296.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.095 = phi ptr [ %i.em, %.lr.ph ], [ %.sroa.0.095.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.048.294 = phi ptr [ %i.el, %.lr.ph ], [ %.sroa.048.294.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dz = getelementptr i8, ptr %.sroa.048.294, i64 -8 ; 2 uses
  %i.ea = getelementptr i8, ptr %.sroa.0.095, i64 -8 ; 2 uses
  %i.eb = load ptr, ptr %i.dz, align 8
  %i.ec = load ptr, ptr %i.ea, align 8
  store ptr %i.ec, ptr %i.dz, align 8
  store ptr %i.eb, ptr %i.ea, align 8
  %i.ed = getelementptr i8, ptr %.sroa.048.294, i64 -16 ; 2 uses
  %i.ee = getelementptr i8, ptr %.sroa.0.095, i64 -16 ; 2 uses
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = load ptr, ptr %i.ee, align 8
  store ptr %i.eg, ptr %i.ed, align 8
  store ptr %i.ef, ptr %i.ee, align 8
  %i.eh = getelementptr i8, ptr %.sroa.048.294, i64 -24 ; 2 uses
  %i.ei = getelementptr i8, ptr %.sroa.0.095, i64 -24 ; 2 uses
  %i.ej = load ptr, ptr %i.eh, align 8
  %i.ek = load ptr, ptr %i.ei, align 8
  store ptr %i.ek, ptr %i.eh, align 8
  store ptr %i.ej, ptr %i.ei, align 8
  %i.el = getelementptr i8, ptr %.sroa.048.294, i64 -32 ; 3 uses
  %i.em = getelementptr i8, ptr %.sroa.0.095, i64 -32 ; 3 uses
  %i.en = load ptr, ptr %i.el, align 8
  %i.eo = load ptr, ptr %i.em, align 8
  store ptr %i.eo, ptr %i.el, align 8
  store ptr %i.en, ptr %i.em, align 8
  %i.ep = add nuw nsw i64 %.03296, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ep, %.086
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !196

_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge102, %.lr.ph.i, %middle.block210, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.sroa.029.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.am, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit ], [ %i.am, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit ], [ %1, %middle.block210 ], [ %1, %.lr.ph.i ], [ %i.am, %._crit_edge102 ], [ %i.am, %._crit_edge ]
  ret ptr %.sroa.029.1
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIN5QListIP15QTreeWidgetItemE8iteratorExPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %7 to ptr                   ; 2 uses
  %.not95 = icmp sgt i64 %3, %6
  %.not6496 = icmp sgt i64 %4, %6
  %or.cond97 = and i1 %.not95, %.not6496
  br i1 %or.cond97, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.am, %tailrecurse ]
  %.tr88.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr90.lcssa = phi i64 [ %3, %bb.a ], [ %i.al, %tailrecurse ]
  %.tr91.lcssa = phi i64 [ %4, %bb.a ], [ %i.an, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN5QListIP15QTreeWidgetItemE8iteratorExPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_SF_T1_T2_(ptr %.tr.lcssa, ptr %.tr88.lcssa, ptr %2, i64 noundef %.tr90.lcssa, i64 noundef %.tr91.lcssa, ptr noundef %5, i64 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr91103 = phi i64 [ %4, %.lr.ph ], [ %i.an, %tailrecurse ] ; 3 uses
  %.tr90102 = phi i64 [ %3, %.lr.ph ], [ %i.al, %tailrecurse ] ; 3 uses
  %.tr88100 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr98 = phi ptr [ %0, %.lr.ph ], [ %i.am, %tailrecurse ] ; 5 uses
  %i.c = icmp sgt i64 %.tr90102, %.tr91103
  %i.d = ptrtoint ptr %.tr88100 to i64            ; 4 uses
  br i1 %i.c, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit68

_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.e = sdiv i64 %.tr90102, 2                    ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %.tr98, i64 %i.e ; 2 uses
  %i.g = sub i64 %i.b, %i.d
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit

_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.012.015.i = phi ptr [ %.sroa.012.1.i, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr88100, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.016.i, 1                      ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %.sroa.012.015.i, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = tail call noundef zeroext i1 %i.a(ptr noundef %i.l, ptr noundef %i.m), !inline_history !169 ; 2 uses
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = xor i64 %i.j, -1
  %i.q = add nsw i64 %.016.i, %i.p
  %.sroa.012.1.i = select i1 %i.n, ptr %i.o, ptr %.sroa.012.015.i ; 3 uses
  %.1.i = select i1 %i.n, i64 %i.q, i64 %i.j      ; 2 uses
  %i.r = icmp sgt i64 %.1.i, 0
  br i1 %i.r, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !170

_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit

_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %i.d, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.tr88100, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.s = sub i64 %.pre-phi, %i.d
  %i.t = ashr exact i64 %i.s, 3
  br label %tailrecurse

_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit68: ; preds = %bb.b
  %i.u = sdiv i64 %.tr91103, 2                    ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %.tr88100, i64 %i.u ; 2 uses
  %i.w = ptrtoint ptr %.tr98 to i64               ; 3 uses
  %i.x = sub i64 %i.d, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i70, label %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit

_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i70: ; preds = %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit68, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i70
  %.016.i71 = phi i64 [ %.1.i76, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i70 ], [ %i.y, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit68 ] ; 2 uses
  %.sroa.012.015.i72 = phi ptr [ %.sroa.012.1.i75, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i70 ], [ %.tr98, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit68 ] ; 2 uses
  %i.aa = lshr i64 %.016.i71, 1                   ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %.sroa.012.015.i72, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8
  %i.ad = load ptr, ptr %i.ab, align 8
  %i.ae = tail call noundef zeroext i1 %i.a(ptr noundef %i.ac, ptr noundef %i.ad), !inline_history !171 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 8
  %i.ag = xor i64 %i.aa, -1
  %i.ah = add nsw i64 %.016.i71, %i.ag
  %.sroa.012.1.i75 = select i1 %i.ae, ptr %.sroa.012.015.i72, ptr %i.af ; 3 uses
  %.1.i76 = select i1 %i.ae, i64 %i.aa, i64 %i.ah ; 2 uses
  %i.ai = icmp sgt i64 %.1.i76, 0
  br i1 %i.ai, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i70, label %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !172

_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i70
  %.pre109 = ptrtoint ptr %.sroa.012.1.i75 to i64
  br label %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit

_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit68
  %.pre-phi110 = phi i64 [ %.pre109, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %i.w, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit68 ]
  %.sroa.012.0.lcssa.i69 = phi ptr [ %.sroa.012.1.i75, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit ], [ %.tr98, %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit68 ]
  %i.aj = sub i64 %.pre-phi110, %i.w
  %i.ak = ashr exact i64 %i.aj, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit
  %.sroa.079.0 = phi ptr [ %i.f, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ], [ %.sroa.012.0.lcssa.i69, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ], [ %i.v, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ] ; 3 uses
  %.060 = phi i64 [ %i.t, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ], [ %i.u, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.e, %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ], [ %i.ak, %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit ] ; 2 uses
  %i.al = sub i64 %.tr90102, %.0                  ; 4 uses
  %i.am = tail call ptr @_ZSt17__rotate_adaptiveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xET_S6_S6_S6_T1_S7_T0_S7_(ptr %.sroa.079.0, ptr %.tr88100, ptr %.sroa.0.0, i64 noundef %i.al, i64 noundef %.060, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIN5QListIP15QTreeWidgetItemE8iteratorExPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %.tr98, ptr %.sroa.079.0, ptr %i.am, i64 noundef %.0, i64 noundef %.060, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.an = sub i64 %.tr91103, %.060                ; 3 uses
  %.not = icmp sgt i64 %i.al, %6
  %.not64 = icmp sgt i64 %i.an, %6
  %or.cond = and i1 %.not, %.not64
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr ptr @_ZSt17__rotate_adaptiveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xET_S6_S6_S6_T1_S7_T0_S7_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %i.b = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 8 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.f, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader173, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  %mul.result = shl i64 %i.h, 3                   ; 2 uses
  %mul.overflow = icmp ugt i64 %i.h, 2305843009213693951
  %7 = getelementptr i8, ptr %5, i64 %mul.result
  %8 = icmp ult ptr %7, %5
  %i.i = getelementptr i8, ptr %1, i64 %mul.result
  %i.j = icmp ult ptr %i.i, %1
  %i.k = or i1 %i.j, %mul.overflow
  %i.l = or i1 %8, %i.k
  %i.m = sub i64 %i.d, %i.a
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond163 = or i1 %i.l, %diff.check
  br i1 %or.cond163, label %.lr.ph.i.i.i.i.i.preheader173, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.f, 4611686018427387900      ; 3 uses
  %i.n = shl i64 %n.vec, 3                        ; 2 uses
  %i.o = getelementptr i8, ptr %5, i64 %i.n       ; 2 uses
  %i.p = and i64 %i.f, 3
  %i.q = getelementptr i8, ptr %1, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.r  ; 2 uses
  %next.gep81 = getelementptr i8, ptr %1, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep81, align 8
  %wide.load82 = load <2 x ptr>, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8
  store <2 x ptr> %wide.load82, ptr %i.t, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i.preheader173

.lr.ph.i.i.i.i.i.preheader173:                    ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %5, %vector.scevcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.o, %middle.block ]
  %.048.i.i.i.i.i.ph = phi i64 [ %i.f, %vector.scevcheck ], [ %i.f, %.lr.ph.i.i.i.i.i.preheader ], [ %i.p, %middle.block ]
  %.sroa.05.07.i.i.i.i.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader173, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader173 ] ; 2 uses
  %.048.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader173 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader173 ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.05.07.i.i.i.i.i, align 8
  store ptr %i.v, ptr %.09.i.i.i.i.i, align 8
  %i.w = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 8
  %i.x = getelementptr i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = add nsw i64 %.048.i.i.i.i.i, -1
  %i.z = icmp samesign ugt i64 %.048.i.i.i.i.i, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, !llvm.loop !198

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.c ], [ %i.o, %middle.block ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.aa = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ab = sub i64 %i.d, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i37.preheader, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i37.preheader:                     ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit
  %xtraiter = and i64 %i.ac, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i37.prol:                          ; preds = %.lr.ph.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i37.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i37.prol ], [ %i.ac, %.lr.ph.i.i.i.i.i37.preheader ]
  %.sroa.0.09.i.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i37.prol ], [ %2, %.lr.ph.i.i.i.i.i37.preheader ]
  %.sroa.05.08.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i37.prol ], [ %1, %.lr.ph.i.i.i.i.i37.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i37.preheader ]
  %i.ae = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.prol, i64 -8 ; 3 uses
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i37.prol, !llvm.loop !199

.lr.ph.i.i.i.i.i37.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i37.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i37.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i37.prol ]
  %.sroa.0.09.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i37.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i37.prol ]
  %.sroa.05.08.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i37.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i37.prol ]
  %i.ai = icmp ult i64 %i.ac, 8
  br i1 %i.ai, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i37

.lr.ph.i.i.i.i.i37:                               ; preds = %.lr.ph.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i37
  %.010.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i37 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i37 ], [ %.sroa.0.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i37.prol.loopexit ] ; 8 uses
  %.sroa.05.08.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i37 ], [ %.sroa.05.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i37.prol.loopexit ] ; 8 uses
  %i.aj = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -8
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -16
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -24
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -32
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -40
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -40
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -48
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -56
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -56
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -64 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -64 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = add nsw i64 %.010.i.i.i.i.i, -8
  %i.bi = icmp sgt i64 %.010.i.i.i.i.i, 8
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i37, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, !llvm.loop !200

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i37, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit
  %i.bj = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.bk = ptrtoint ptr %5 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3                 ; 8 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i39.preheader, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i39.preheader:                     ; preds = %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit
  %min.iters.check95 = icmp ult i64 %i.bm, 44
  br i1 %min.iters.check95, label %.lr.ph.i.i.i.i.i39.preheader170, label %vector.scevcheck85

vector.scevcheck85:                               ; preds = %.lr.ph.i.i.i.i.i39.preheader
  %i.bo = add nsw i64 %i.bm, -1                   ; 2 uses
  %mul.result87 = shl i64 %i.bo, 3                ; 2 uses
  %mul.overflow85 = icmp ugt i64 %i.bo, 2305843009213693951
  %9 = getelementptr i8, ptr %0, i64 %mul.result87
  %10 = icmp ult ptr %9, %0
  %i.bp = getelementptr i8, ptr %5, i64 %mul.result87
  %i.bq = icmp ult ptr %i.bp, %5
  %i.br = or i1 %i.bq, %mul.overflow85
  %i.bs = or i1 %10, %i.br
  %i.bt = sub i64 %i.a, %i.aa
  %diff.check93 = icmp ugt i64 %i.bt, -32
  %or.cond164 = or i1 %i.bs, %diff.check93
  br i1 %or.cond164, label %.lr.ph.i.i.i.i.i39.preheader170, label %vector.ph96

vector.ph96:                                      ; preds = %vector.scevcheck85
  %n.vec98 = and i64 %i.bm, 4611686018427387900   ; 3 uses
  %i.bu = and i64 %i.bm, 3
  %i.bv = shl i64 %n.vec98, 3                     ; 2 uses
  %i.bw = getelementptr i8, ptr %5, i64 %i.bv
  %i.bx = getelementptr i8, ptr %0, i64 %i.bv     ; 2 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph96
  %index100 = phi i64 [ 0, %vector.ph96 ], [ %index.next105, %vector.body99 ] ; 2 uses
  %i.by = shl i64 %index100, 3                    ; 2 uses
  %next.gep101 = getelementptr i8, ptr %5, i64 %i.by ; 2 uses
  %next.gep102 = getelementptr i8, ptr %0, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load103 = load <2 x ptr>, ptr %next.gep101, align 8
  %wide.load104 = load <2 x ptr>, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %next.gep102, i64 16
  store <2 x ptr> %wide.load103, ptr %next.gep102, align 8
  store <2 x ptr> %wide.load104, ptr %i.ca, align 8
  %index.next105 = add nuw i64 %index100, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.cb, label %middle.block106, label %vector.body99, !llvm.loop !201

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %i.bm, %n.vec98
  br i1 %cmp.n107, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i39.preheader170

.lr.ph.i.i.i.i.i39.preheader170:                  ; preds = %vector.scevcheck85, %.lr.ph.i.i.i.i.i39.preheader, %middle.block106
  %.09.i.i.i.i.i40.ph = phi i64 [ %i.bm, %vector.scevcheck85 ], [ %i.bm, %.lr.ph.i.i.i.i.i39.preheader ], [ %i.bu, %middle.block106 ]
  %.058.i.i.i.i.i.ph = phi ptr [ %5, %vector.scevcheck85 ], [ %5, %.lr.ph.i.i.i.i.i39.preheader ], [ %i.bw, %middle.block106 ]
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %0, %vector.scevcheck85 ], [ %0, %.lr.ph.i.i.i.i.i39.preheader ], [ %i.bx, %middle.block106 ]
  br label %.lr.ph.i.i.i.i.i39

.lr.ph.i.i.i.i.i39:                               ; preds = %.lr.ph.i.i.i.i.i39.preheader170, %.lr.ph.i.i.i.i.i39
  %.09.i.i.i.i.i40 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i39 ], [ %.09.i.i.i.i.i40.ph, %.lr.ph.i.i.i.i.i39.preheader170 ] ; 2 uses
  %.058.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i39 ], [ %.058.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i39.preheader170 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i39 ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i39.preheader170 ] ; 2 uses
  %i.cc = load ptr, ptr %.058.i.i.i.i.i, align 8
  store ptr %i.cc, ptr %.sroa.0.07.i.i.i.i.i, align 8
  %i.cd = getelementptr i8, ptr %.058.i.i.i.i.i, i64 8
  %i.ce = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = add nsw i64 %.09.i.i.i.i.i40, -1
  %i.cg = icmp samesign ugt i64 %.09.i.i.i.i.i40, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i39, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, !llvm.loop !202

bb.d:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ci = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3                 ; 8 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i42.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46

.lr.ph.i.i.i.i.i42.preheader:                     ; preds = %bb.f
  %min.iters.check121 = icmp ult i64 %i.ck, 44
  br i1 %min.iters.check121, label %.lr.ph.i.i.i.i.i42.preheader168, label %vector.scevcheck111

vector.scevcheck111:                              ; preds = %.lr.ph.i.i.i.i.i42.preheader
  %i.cm = add nsw i64 %i.ck, -1                   ; 2 uses
  %mul.result113 = shl i64 %i.cm, 3               ; 2 uses
  %mul.overflow108 = icmp ugt i64 %i.cm, 2305843009213693951
  %11 = getelementptr i8, ptr %5, i64 %mul.result113
  %12 = icmp ult ptr %11, %5
  %i.cn = getelementptr i8, ptr %0, i64 %mul.result113
  %i.co = icmp ult ptr %i.cn, %0
  %i.cp = or i1 %i.co, %mul.overflow108
  %i.cq = or i1 %12, %i.cp
  %i.cr = sub i64 %i.ci, %i.a
  %diff.check119 = icmp ugt i64 %i.cr, -32
  %or.cond165 = or i1 %i.cq, %diff.check119
  br i1 %or.cond165, label %.lr.ph.i.i.i.i.i42.preheader168, label %vector.ph122

vector.ph122:                                     ; preds = %vector.scevcheck111
  %n.vec124 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cs = shl i64 %n.vec124, 3                    ; 2 uses
  %i.ct = getelementptr i8, ptr %5, i64 %i.cs     ; 2 uses
  %i.cu = and i64 %i.ck, 3
  %i.cv = getelementptr i8, ptr %0, i64 %i.cs
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body125 ] ; 2 uses
  %i.cw = shl i64 %index126, 3                    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %5, i64 %i.cw ; 2 uses
  %next.gep128 = getelementptr i8, ptr %0, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load129 = load <2 x ptr>, ptr %next.gep128, align 8
  %wide.load130 = load <2 x ptr>, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %next.gep127, i64 16
  store <2 x ptr> %wide.load129, ptr %next.gep127, align 8
  store <2 x ptr> %wide.load130, ptr %i.cy, align 8
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.cz, label %middle.block132, label %vector.body125, !llvm.loop !203

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %i.ck, %n.vec124
  br i1 %cmp.n133, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46, label %.lr.ph.i.i.i.i.i42.preheader168

.lr.ph.i.i.i.i.i42.preheader168:                  ; preds = %vector.scevcheck111, %.lr.ph.i.i.i.i.i42.preheader, %middle.block132
  %.09.i.i.i.i.i43.ph = phi ptr [ %5, %vector.scevcheck111 ], [ %5, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.ct, %middle.block132 ]
  %.048.i.i.i.i.i44.ph = phi i64 [ %i.ck, %vector.scevcheck111 ], [ %i.ck, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.cu, %middle.block132 ]
  %.sroa.05.07.i.i.i.i.i45.ph = phi ptr [ %0, %vector.scevcheck111 ], [ %0, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.cv, %middle.block132 ]
  br label %.lr.ph.i.i.i.i.i42

.lr.ph.i.i.i.i.i42:                               ; preds = %.lr.ph.i.i.i.i.i42.preheader168, %.lr.ph.i.i.i.i.i42
  %.09.i.i.i.i.i43 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i42 ], [ %.09.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i42.preheader168 ] ; 2 uses
  %.048.i.i.i.i.i44 = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i42 ], [ %.048.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i42.preheader168 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i45 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i42 ], [ %.sroa.05.07.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i42.preheader168 ] ; 2 uses
  %i.da = load ptr, ptr %.sroa.05.07.i.i.i.i.i45, align 8
  store ptr %i.da, ptr %.09.i.i.i.i.i43, align 8
  %i.db = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i45, i64 8
  %i.dc = getelementptr i8, ptr %.09.i.i.i.i.i43, i64 8 ; 2 uses
  %i.dd = add nsw i64 %.048.i.i.i.i.i44, -1
  %i.de = icmp samesign ugt i64 %.048.i.i.i.i.i44, 1
  br i1 %i.de, label %.lr.ph.i.i.i.i.i42, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46, !llvm.loop !204

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46: ; preds = %.lr.ph.i.i.i.i.i42, %middle.block132, %bb.f
  %.0.lcssa.i.i.i.i.i41 = phi ptr [ %5, %bb.f ], [ %i.ct, %middle.block132 ], [ %i.dc, %.lr.ph.i.i.i.i.i42 ] ; 3 uses
  %i.df = ptrtoint ptr %2 to i64
  %i.dg = sub i64 %i.df, %i.ch
  %i.dh = ashr exact i64 %i.dg, 3                 ; 8 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i.i.i.i.i48.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46
  %min.iters.check147 = icmp ult i64 %i.dh, 44
  br i1 %min.iters.check147, label %.lr.ph.i.i.i.i.i48.preheader167, label %vector.scevcheck137

vector.scevcheck137:                              ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.dj = add nsw i64 %i.dh, -1                   ; 2 uses
  %mul.result139 = shl i64 %i.dj, 3               ; 2 uses
  %mul.overflow131 = icmp ugt i64 %i.dj, 2305843009213693951
  %13 = getelementptr i8, ptr %0, i64 %mul.result139
  %14 = icmp ult ptr %13, %0
  %i.dk = getelementptr i8, ptr %1, i64 %mul.result139
  %i.dl = icmp ult ptr %i.dk, %1
  %i.dm = or i1 %i.dl, %mul.overflow131
  %i.dn = or i1 %14, %i.dm
  %i.do = sub i64 %i.ch, %i.ci
  %diff.check145 = icmp ugt i64 %i.do, -32
  %or.cond166 = or i1 %i.dn, %diff.check145
  br i1 %or.cond166, label %.lr.ph.i.i.i.i.i48.preheader167, label %vector.ph148

vector.ph148:                                     ; preds = %vector.scevcheck137
  %n.vec150 = and i64 %i.dh, 4611686018427387900  ; 3 uses
  %i.dp = and i64 %i.dh, 3
  %i.dq = shl i64 %n.vec150, 3                    ; 2 uses
  %i.dr = getelementptr i8, ptr %0, i64 %i.dq
  %i.ds = getelementptr i8, ptr %1, i64 %i.dq
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph148
  %index152 = phi i64 [ 0, %vector.ph148 ], [ %index.next157, %vector.body151 ] ; 2 uses
  %i.dt = shl i64 %index152, 3                    ; 2 uses
  %next.gep153 = getelementptr i8, ptr %0, i64 %i.dt ; 2 uses
  %next.gep154 = getelementptr i8, ptr %1, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep154, i64 16
  %wide.load155 = load <2 x ptr>, ptr %next.gep154, align 8
  %wide.load156 = load <2 x ptr>, ptr %i.du, align 8
  %i.dv = getelementptr i8, ptr %next.gep153, i64 16
  store <2 x ptr> %wide.load155, ptr %next.gep153, align 8
  store <2 x ptr> %wide.load156, ptr %i.dv, align 8
  %index.next157 = add nuw i64 %index152, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.dw, label %middle.block158, label %vector.body151, !llvm.loop !205

middle.block158:                                  ; preds = %vector.body151
  %cmp.n159 = icmp eq i64 %i.dh, %n.vec150
  br i1 %cmp.n159, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i48.preheader167

.lr.ph.i.i.i.i.i48.preheader167:                  ; preds = %vector.scevcheck137, %.lr.ph.i.i.i.i.i48.preheader, %middle.block158
  %.09.i.i.i.i.i49.ph = phi i64 [ %i.dh, %vector.scevcheck137 ], [ %i.dh, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.dp, %middle.block158 ]
  %.sroa.0.08.i.i.i.i.i.ph = phi ptr [ %0, %vector.scevcheck137 ], [ %0, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.dr, %middle.block158 ]
  %.sroa.05.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.scevcheck137 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.ds, %middle.block158 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader167, %.lr.ph.i.i.i.i.i48
  %.09.i.i.i.i.i49 = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.i48 ], [ %.09.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader167 ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.0.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i48.preheader167 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i50 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.05.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader167 ] ; 2 uses
  %i.dx = load ptr, ptr %.sroa.05.07.i.i.i.i.i50, align 8
  store ptr %i.dx, ptr %.sroa.0.08.i.i.i.i.i, align 8
  %i.dy = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i50, i64 8
  %i.dz = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i, i64 8
  %i.ea = add nsw i64 %.09.i.i.i.i.i49, -1
  %i.eb = icmp samesign ugt i64 %.09.i.i.i.i.i49, 1
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i48, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, !llvm.loop !206

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block158, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46
  %i.ec = ptrtoint ptr %.0.lcssa.i.i.i.i.i41 to i64
  %i.ed = ptrtoint ptr %5 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3                 ; 5 uses
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i52.preheader, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit
  %xtraiter175 = and i64 %i.ef, 7                 ; 2 uses
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %.lr.ph.i.i.i.i.i52.prol.loopexit, label %.lr.ph.i.i.i.i.i52.prol

.lr.ph.i.i.i.i.i52.prol:                          ; preds = %.lr.ph.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i52.prol
  %.08.i.i.i.i.i.prol = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i52.prol ], [ %i.ef, %.lr.ph.i.i.i.i.i52.preheader ]
  %.047.i.i.i.i.i.prol = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i52.prol ], [ %.0.lcssa.i.i.i.i.i41, %.lr.ph.i.i.i.i.i52.preheader ]
  %.sroa.0.06.i.i.i.i.i.prol = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i52.prol ], [ %2, %.lr.ph.i.i.i.i.i52.preheader ]
  %prol.iter177 = phi i64 [ %prol.iter177.next, %.lr.ph.i.i.i.i.i52.prol ], [ 0, %.lr.ph.i.i.i.i.i52.preheader ]
  %i.eh = getelementptr i8, ptr %.047.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.prol, i64 -8 ; 4 uses
  store ptr %i.ei, ptr %i.ej, align 8
  %i.ek = add nsw i64 %.08.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter177.next = add i64 %prol.iter177, 1   ; 2 uses
  %prol.iter177.cmp.not = icmp eq i64 %prol.iter177.next, %xtraiter175
  br i1 %prol.iter177.cmp.not, label %.lr.ph.i.i.i.i.i52.prol.loopexit, label %.lr.ph.i.i.i.i.i52.prol, !llvm.loop !207

.lr.ph.i.i.i.i.i52.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i52.prol, %.lr.ph.i.i.i.i.i52.preheader
  %.08.i.i.i.i.i.unr = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i52.prol ]
  %.047.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i.i.i.i.i41, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i52.prol ]
  %.sroa.0.06.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i52.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i52.prol ]
  %i.el = icmp ult i64 %i.ef, 8
  br i1 %i.el, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.prol.loopexit, %.lr.ph.i.i.i.i.i52
  %.08.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i52 ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i52.prol.loopexit ] ; 2 uses
  %.047.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i52 ], [ %.047.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i52.prol.loopexit ] ; 8 uses
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i52 ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i52.prol.loopexit ] ; 8 uses
  %i.em = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -8
  store ptr %i.en, ptr %i.eo, align 8
  %i.ep = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -16
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -16
  store ptr %i.eq, ptr %i.er, align 8
  %i.es = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -24
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -24
  store ptr %i.et, ptr %i.eu, align 8
  %i.ev = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -32
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -32
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -40
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -40
  store ptr %i.ez, ptr %i.fa, align 8
  %i.fb = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -48
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -48
  store ptr %i.fc, ptr %i.fd, align 8
  %i.fe = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -56
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -56
  store ptr %i.ff, ptr %i.fg, align 8
  %i.fh = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -64 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -64 ; 3 uses
  store ptr %i.fi, ptr %i.fj, align 8
  %i.fk = add nsw i64 %.08.i.i.i.i.i, -8
  %i.fl = icmp sgt i64 %.08.i.i.i.i.i, 8
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i52, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, !llvm.loop !141

bb.g:                                             ; preds = %bb.d
  %i.fm = tail call ptr @_ZNSt3_V28__rotateIN5QListIP15QTreeWidgetItemE8iteratorEEET_S6_S6_S6_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit

_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i39, %.lr.ph.i.i.i.i.i52.prol.loopexit, %.lr.ph.i.i.i.i.i52, %middle.block106, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, %bb.e, %bb.b, %bb.g
  %.sroa.032.0 = phi ptr [ %2, %bb.e ], [ %i.fm, %bb.g ], [ %i.fj, %.lr.ph.i.i.i.i.i52 ], [ %0, %bb.b ], [ %0, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit ], [ %2, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit ], [ %i.bx, %middle.block106 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i52.prol.loopexit ], [ %i.ce, %.lr.ph.i.i.i.i.i39 ]
  ret ptr %.sroa.032.0
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN20QFutureInterfaceBase18suspendIfRequestedEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZN16QFutureInterfaceIP15QTreeWidgetItemE12reportResultEPKS1_i(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef align 8 dereferenceable(8) ptr @_ZNK20QFutureInterfaceBase5mutexEv(ptr noundef align 8 dereferenceable_or_null(16) %0) ; 7 uses
  %.not.i.not = icmp eq ptr %i.a, null            ; 3 uses
  br i1 %.not.i.not, label %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.b = cmpxchg ptr %i.a, ptr null, ptr inttoptr (i64 1 to ptr) acquire acquire, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11QBasicMutex12lockInternalEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.a) #24
  br label %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit

_ZN12QMutexLockerI6QMutexEC2EPS0_.exit:           ; preds = %bb.b, %bb.c, %bb.a
  %i.d = invoke noundef zeroext i1 @_ZNK20QFutureInterfaceBase10queryStateENS_5StateE(ptr noundef align 8 dereferenceable_or_null(16) %0, i32 noundef 8)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit
  br i1 %i.d, label %_ZN9QtPrivate15ResultStoreBase9addResultIP15QTreeWidgetItemEEiiPKT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = invoke noundef zeroext i1 @_ZNK20QFutureInterfaceBase10queryStateENS_5StateE(ptr noundef align 8 dereferenceable_or_null(16) %0, i32 noundef 4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.e, label %_ZN9QtPrivate15ResultStoreBase9addResultIP15QTreeWidgetItemEEiiPKT_.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZN12QMutexLockerI6QMutexEC2EPS0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.g = invoke noundef align 8 dereferenceable(48) ptr @_ZN20QFutureInterfaceBase15resultStoreBaseEv(ptr noundef align 8 dereferenceable_or_null(16) %0)
          to label %bb.i unwind label %bb.m       ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.h = invoke noundef i32 @_ZNK9QtPrivate15ResultStoreBase5countEv(ptr noundef align 8 dereferenceable_or_null(48) %i.g)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.i = invoke noundef zeroext i1 @_ZNK9QtPrivate15ResultStoreBase23containsValidResultItemEi(ptr noundef align 8 dereferenceable_or_null(48) %i.g, i32 noundef %2)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.j
  br i1 %i.i, label %_ZN9QtPrivate15ResultStoreBase9addResultIP15QTreeWidgetItemEEiiPKT_.exit.thread, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = invoke noalias noundef dereferenceable_or_null(8) ptr @_Znwm(i64 noundef 8) #23
          to label %.noexc22 unwind label %bb.o   ; 2 uses

.noexc22:                                         ; preds = %bb.l
  %i.l = load ptr, ptr %1, align 8
  store ptr %i.l, ptr %i.k, align 8
  br label %.sink.split.i
end_hunk_1
