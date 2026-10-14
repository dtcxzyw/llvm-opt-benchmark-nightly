Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/display_filter_expression_dialog?download=true
inline.NumInlined: 1375
inline.NumDeleted: 538
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZSt13__stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_:bb.a

_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread: ; preds = %.lr.ph.i.i.preheader, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit
  %.sroa.12.043 = phi ptr [ %.sroa.12.0, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit ], [ %i.j, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.5.041 = phi i64 [ %.sroa.5.0, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit ], [ %i.g, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_T1_(ptr %0, ptr %i.q, ptr %1, ptr noundef %.sroa.12.043, ptr %2)
          to label %bb.g unwind label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.e, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread
  %.sroa.12.045 = phi ptr [ %.sroa.12.0, %bb.f ], [ null, %bb.e ], [ %.sroa.12.043, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread ]
  %.sroa.5.042 = phi i64 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.0, %bb.e ], [ %.sroa.5.041, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread ]
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = shl i64 %.sroa.5.042, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.045, i64 noundef %i.s) #24
  resume { ptr, i32 } %i.r

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit
  %i.t = icmp eq ptr %.sroa.12.0, null
  br i1 %i.t, label %bb.e, label %bb.f, !prof !18

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt21__inplace_stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %0, ptr %1, ptr %2)
          to label %bb.g unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.e, %bb.f, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread
  %.sroa.12.044 = phi ptr [ null, %bb.e ], [ %.sroa.12.0, %bb.f ], [ %.sroa.12.043, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread ]
  %.sroa.5.040 = phi i64 [ %.sroa.5.0, %bb.e ], [ %.sroa.5.0, %bb.f ], [ %.sroa.5.041, %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread ]
  %i.u = shl i64 %.sroa.5.040, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.044, i64 noundef %i.u) #24
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
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit, !llvm.loop !136

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
  br i1 %i.q, label %.lr.ph.i16, label %_ZSt24__merge_sort_with_bufferIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_.exit18, !llvm.loop !136

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
  %.sroa.0.022.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ %.sroa.0.019.i, %bb.b ] ; 8 uses
  %.pn21.i = phi ptr [ %.sroa.0.022.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ %0, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.0.022.i, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = tail call noundef zeroext i1 %2(ptr noundef %i.g, ptr noundef %i.h), !inline_history !1
  %i.j = load ptr, ptr %.sroa.0.022.i, align 8    ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = ptrtoint ptr %.sroa.0.022.i to i64
  %i.l = sub i64 %i.k, %i.b                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.pn21.i, i64 16
  %i.p = mul nsw i64 %i.m, -8                     ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.o, i64 %i.p
  %scevgep24.i = getelementptr i8, ptr %.sroa.0.022.i, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep24.i, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.pn21.i, align 8
  %i.r = tail call noundef zeroext i1 %2(ptr noundef %i.j, ptr noundef %i.q), !inline_history !2
  br i1 %i.r, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.d ] ; 4 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i, %bb.d ]
  %i.s = load ptr, ptr %.sroa.0.010.i.i, align 8
  store ptr %i.s, ptr %.sroa.05.09.i.i, align 8
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.0.i.i, align 8
  %i.u = tail call noundef zeroext i1 %2(ptr noundef %i.j, ptr noundef %i.t), !inline_history !2
  br i1 %i.u, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i, !llvm.loop !3

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.d, %.lr.ph.i.i.i.i.i.preheader.i, %bb.c
  %.sink.i = phi ptr [ %0, %bb.c ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.0.022.i, %bb.d ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.j, ptr %.sink.i, align 8
  %.sroa.0.0.i = getelementptr i8, ptr %.sroa.0.022.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  br i1 %.not.i, label %common.ret25, label %.lr.ph.i, !llvm.loop !4

common.ret25:                                     ; preds = %bb.b, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i, %bb.e
  ret void

bb.e:                                             ; preds = %bb.a
  %i.v = lshr i64 %i.d, 1                         ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %0, i64 %i.v ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %0, ptr %i.w, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %i.w, ptr %1, ptr %2)
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.a, %i.x
  %i.z = ashr exact i64 %i.y, 3
  tail call void @_ZSt22__merge_without_bufferIN5QListIP15QTreeWidgetItemE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_SD_T0_SE_T1_(ptr %0, ptr %i.w, ptr %1, i64 noundef %i.v, i64 noundef %i.z, ptr %2)
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
  %7 = ptrtoaddr ptr %5 to i64                    ; 2 uses
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 8 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.e, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader144, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  %mul.result = shl i64 %i.g, 3                   ; 2 uses
  %mul.overflow = icmp ugt i64 %i.g, 2305843009213693951
  %i.h = getelementptr i8, ptr %5, i64 %mul.result
  %i.i = icmp ult ptr %i.h, %5
  %i.j = getelementptr i8, ptr %0, i64 %mul.result
  %i.k = icmp ult ptr %i.j, %0
  %i.l = or i1 %i.k, %mul.overflow
  %i.m = or i1 %i.i, %i.l
  %i.n = sub i64 %i.c, %7
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = or i1 %i.m, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader144, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 3 uses
  %i.o = shl i64 %n.vec, 3                        ; 2 uses
  %i.p = getelementptr i8, ptr %5, i64 %i.o       ; 2 uses
  %i.q = and i64 %i.e, 3
  %i.r = getelementptr i8, ptr %0, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.s  ; 2 uses
  %next.gep81 = getelementptr i8, ptr %0, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep81, align 8
  %wide.load82 = load <2 x ptr>, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8
  store <2 x ptr> %wide.load82, ptr %i.u, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i.preheader144

.lr.ph.i.i.i.i.i.preheader144:                    ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %5, %vector.scevcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.p, %middle.block ]
  %.048.i.i.i.i.i.ph = phi i64 [ %i.e, %vector.scevcheck ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.sroa.05.07.i.i.i.i.i.ph = phi ptr [ %0, %vector.scevcheck ], [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader144, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader144 ] ; 2 uses
  %.048.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader144 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader144 ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.05.07.i.i.i.i.i, align 8
  store ptr %i.w, ptr %.09.i.i.i.i.i, align 8
  %i.x = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 8
  %i.y = getelementptr i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = add nsw i64 %.048.i.i.i.i.i, -1
  %i.aa = icmp samesign ugt i64 %.048.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, !llvm.loop !138

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa80 = phi ptr [ %i.p, %middle.block ], [ %i.y, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.not25.i = icmp eq ptr %5, %.lcssa80
  br i1 %.not25.i, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, %bb.c
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 2 uses
  %.028.i = phi ptr [ %.1.i, %bb.c ], [ %5, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 12 uses
  %.sroa.018.027.i = phi ptr [ %.sroa.018.1.i, %bb.c ], [ %1, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 4 uses
  %.sroa.015.026.i = phi ptr [ %i.ae, %bb.c ], [ %0, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 9 uses
  %.not21.i = icmp eq ptr %.sroa.018.027.i, %2
  br i1 %.not21.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = load ptr, ptr %.sroa.018.027.i, align 8
  %i.ac = load ptr, ptr %.028.i, align 8
  %i.ad = tail call noundef zeroext i1 %i.a(ptr noundef %i.ab, ptr noundef %i.ac), !inline_history !139 ; 3 uses
  %.sink.in.i = select i1 %i.ad, ptr %.sroa.018.027.i, ptr %.028.i
  %.sroa.018.1.idx.i = select i1 %i.ad, i64 8, i64 0
  %.sroa.018.1.i = getelementptr i8, ptr %.sroa.018.027.i, i64 %.sroa.018.1.idx.i
  %.1.idx.i = select i1 %i.ad, i64 0, i64 8
  %.1.i = getelementptr i8, ptr %.028.i, i64 %.1.idx.i ; 2 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8
  store ptr %.sink.i, ptr %.sroa.015.026.i, align 8
  %i.ae = getelementptr i8, ptr %.sroa.015.026.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %.lcssa80
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !140

.critedge.i:                                      ; preds = %.lr.ph.i
  %.028.i90.le = ptrtoaddr ptr %.028.i to i64
  %i.af = ptrtoint ptr %.lcssa80 to i64
  %i.ag = ptrtoint ptr %.028.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 9 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %min.iters.check93 = icmp ult i64 %i.ai, 48
  br i1 %min.iters.check93, label %.lr.ph.i.i.i.i.i.i.preheader137, label %vector.scevcheck85

vector.scevcheck85:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ak = add nsw i64 %i.ai, -1                   ; 2 uses
  %mul.result87 = shl i64 %i.ak, 3                ; 2 uses
  %mul.overflow88 = icmp ugt i64 %i.ak, 2305843009213693951
  %i.al = getelementptr i8, ptr %.sroa.015.026.i, i64 %mul.result87
  %i.am = icmp ult ptr %i.al, %.sroa.015.026.i
  %i.an = getelementptr i8, ptr %.028.i, i64 %mul.result87
  %i.ao = icmp ult ptr %i.an, %.028.i
  %i.ap = or i1 %i.ao, %mul.overflow88
  %i.aq = or i1 %i.am, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.preheader137, label %vector.memcheck89

vector.memcheck89:                                ; preds = %vector.scevcheck85
  %i.ar = shl i64 %indvar, 3
  %i.as = add i64 %i.ar, %i.c
  %i.at = sub i64 %.028.i90.le, %i.as
  %diff.check91 = icmp ugt i64 %i.at, -32
  br i1 %diff.check91, label %.lr.ph.i.i.i.i.i.i.preheader137, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck89
  %n.vec95 = and i64 %i.ai, 4611686018427387900   ; 3 uses
  %i.au = and i64 %i.ai, 3
  %i.av = shl i64 %n.vec95, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %.028.i, i64 %i.av
  %i.ax = getelementptr i8, ptr %.sroa.015.026.i, i64 %i.av
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next102, %vector.body96 ] ; 2 uses
  %i.ay = shl i64 %index97, 3                     ; 2 uses
  %next.gep98 = getelementptr i8, ptr %.028.i, i64 %i.ay ; 2 uses
  %next.gep99 = getelementptr i8, ptr %.sroa.015.026.i, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep98, i64 16
  %wide.load100 = load <2 x ptr>, ptr %next.gep98, align 8
  %wide.load101 = load <2 x ptr>, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %next.gep99, i64 16
  store <2 x ptr> %wide.load100, ptr %next.gep99, align 8
  store <2 x ptr> %wide.load101, ptr %i.ba, align 8
  %index.next102 = add nuw i64 %index97, 4        ; 2 uses
  %i.bb = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.bb, label %middle.block103, label %vector.body96, !llvm.loop !141

middle.block103:                                  ; preds = %vector.body96
  %cmp.n104 = icmp eq i64 %i.ai, %n.vec95
  br i1 %cmp.n104, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i.preheader137

.lr.ph.i.i.i.i.i.i.preheader137:                  ; preds = %vector.memcheck89, %vector.scevcheck85, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block103
  %.09.i.i.i.i.i.i.ph = phi i64 [ %i.ai, %vector.memcheck89 ], [ %i.ai, %vector.scevcheck85 ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block103 ]
  %.058.i.i.i.i.i.i.ph = phi ptr [ %.028.i, %vector.memcheck89 ], [ %.028.i, %vector.scevcheck85 ], [ %.028.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block103 ]
  %.sroa.0.07.i.i.i.i.i.i.ph = phi ptr [ %.sroa.015.026.i, %vector.memcheck89 ], [ %.sroa.015.026.i, %vector.scevcheck85 ], [ %.sroa.015.026.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block103 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader137, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader137 ] ; 2 uses
  %.058.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.058.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader137 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader137 ] ; 2 uses
  %i.bc = load ptr, ptr %.058.i.i.i.i.i.i, align 8
  store ptr %i.bc, ptr %.sroa.0.07.i.i.i.i.i.i, align 8
  %i.bd = getelementptr i8, ptr %.058.i.i.i.i.i.i, i64 8
  %i.be = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8
  %i.bf = add nsw i64 %.09.i.i.i.i.i.i, -1
  %i.bg = icmp samesign ugt i64 %.09.i.i.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, !llvm.loop !142

bb.d:                                             ; preds = %bb.a
  %i.bh = ptrtoint ptr %2 to i64
  %i.bi = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 8 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i23.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27

.lr.ph.i.i.i.i.i23.preheader:                     ; preds = %bb.d
  %min.iters.check115 = icmp ult i64 %i.bk, 44
  br i1 %min.iters.check115, label %.lr.ph.i.i.i.i.i23.preheader135, label %vector.scevcheck108

vector.scevcheck108:                              ; preds = %.lr.ph.i.i.i.i.i23.preheader
  %i.bm = add nsw i64 %i.bk, -1                   ; 2 uses
  %mul.result110 = shl i64 %i.bm, 3               ; 2 uses
  %mul.overflow111 = icmp ugt i64 %i.bm, 2305843009213693951
  %i.bn = getelementptr i8, ptr %5, i64 %mul.result110
  %i.bo = icmp ult ptr %i.bn, %5
  %i.bp = getelementptr i8, ptr %1, i64 %mul.result110
  %i.bq = icmp ult ptr %i.bp, %1
  %i.br = or i1 %i.bq, %mul.overflow111
  %i.bs = or i1 %i.bo, %i.br
  %i.bt = sub i64 %i.bi, %7
  %diff.check113 = icmp ugt i64 %i.bt, -32
  %or.cond130 = or i1 %i.bs, %diff.check113
  br i1 %or.cond130, label %.lr.ph.i.i.i.i.i23.preheader135, label %vector.ph116

vector.ph116:                                     ; preds = %vector.scevcheck108
  %n.vec117 = and i64 %i.bk, 4611686018427387900  ; 3 uses
  %i.bu = shl i64 %n.vec117, 3                    ; 2 uses
  %i.bv = getelementptr i8, ptr %5, i64 %i.bu     ; 2 uses
  %i.bw = and i64 %i.bk, 3
  %i.bx = getelementptr i8, ptr %1, i64 %i.bu
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 2 uses
  %i.by = shl i64 %index119, 3                    ; 2 uses
  %next.gep120 = getelementptr i8, ptr %5, i64 %i.by ; 2 uses
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <2 x ptr>, ptr %next.gep121, align 8
  %wide.load123 = load <2 x ptr>, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> %wide.load122, ptr %next.gep120, align 8
  store <2 x ptr> %wide.load123, ptr %i.ca, align 8
  %index.next124 = add nuw i64 %index119, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.cb, label %middle.block125, label %vector.body118, !llvm.loop !143

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.bk, %n.vec117
  br i1 %cmp.n126, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27, label %.lr.ph.i.i.i.i.i23.preheader135

.lr.ph.i.i.i.i.i23.preheader135:                  ; preds = %vector.scevcheck108, %.lr.ph.i.i.i.i.i23.preheader, %middle.block125
  %.09.i.i.i.i.i24.ph = phi ptr [ %5, %vector.scevcheck108 ], [ %5, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.bv, %middle.block125 ]
  %.048.i.i.i.i.i25.ph = phi i64 [ %i.bk, %vector.scevcheck108 ], [ %i.bk, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.bw, %middle.block125 ]
  %.sroa.05.07.i.i.i.i.i26.ph = phi ptr [ %1, %vector.scevcheck108 ], [ %1, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.bx, %middle.block125 ]
  br label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %.lr.ph.i.i.i.i.i23.preheader135, %.lr.ph.i.i.i.i.i23
  %.09.i.i.i.i.i24 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i23 ], [ %.09.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i23.preheader135 ] ; 2 uses
  %.048.i.i.i.i.i25 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i23 ], [ %.048.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i23.preheader135 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i26 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i23 ], [ %.sroa.05.07.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i23.preheader135 ] ; 2 uses
  %i.cc = load ptr, ptr %.sroa.05.07.i.i.i.i.i26, align 8
  store ptr %i.cc, ptr %.09.i.i.i.i.i24, align 8
  %i.cd = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i26, i64 8
  %i.ce = getelementptr i8, ptr %.09.i.i.i.i.i24, i64 8 ; 2 uses
  %i.cf = add nsw i64 %.048.i.i.i.i.i25, -1
  %i.cg = icmp samesign ugt i64 %.048.i.i.i.i.i25, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27, !llvm.loop !144

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27: ; preds = %.lr.ph.i.i.i.i.i23, %middle.block125, %bb.d
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.d ], [ %i.bv, %middle.block125 ], [ %i.ce, %.lr.ph.i.i.i.i.i23 ] ; 5 uses
  %i.ch = icmp eq ptr %0, %1
  br i1 %i.ch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27
  %i.ci = ptrtoint ptr %.0.lcssa.i.i.i.i.i22 to i64
  %i.cj = ptrtoint ptr %5 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3                 ; 5 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i29.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i.i29.preheader:                   ; preds = %bb.e
  %xtraiter146 = and i64 %i.cl, 7                 ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %.lr.ph.i.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i.i29.prol

.lr.ph.i.i.i.i.i.i29.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i29.preheader, %.lr.ph.i.i.i.i.i.i29.prol
  %.08.i.i.i.i.i.i.prol = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i29.prol ], [ %i.cl, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %.047.i.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i29.prol ], [ %.0.lcssa.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %.sroa.0.06.i.i.i.i.i.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i29.prol ], [ %2, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %prol.iter148 = phi i64 [ %prol.iter148.next, %.lr.ph.i.i.i.i.i.i29.prol ], [ 0, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %i.cn = getelementptr i8, ptr %.047.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  store ptr %i.co, ptr %i.cp, align 8
  %i.cq = add nsw i64 %.08.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter148.next = add i64 %prol.iter148, 1   ; 2 uses
  %prol.iter148.cmp.not = icmp eq i64 %prol.iter148.next, %xtraiter146
  br i1 %prol.iter148.cmp.not, label %.lr.ph.i.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i.i29.prol, !llvm.loop !145

.lr.ph.i.i.i.i.i.i29.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i29.prol, %.lr.ph.i.i.i.i.i.i29.preheader
  %.08.i.i.i.i.i.i.unr = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.i29.prol ]
  %.047.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.i29.prol ]
  %.sroa.0.06.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.i29.prol ]
  %i.cr = icmp ult i64 %i.cl, 8
  br i1 %i.cr, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29.prol.loopexit, %.lr.ph.i.i.i.i.i.i29
  %.08.i.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i.i29 ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 2 uses
  %.047.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i29 ], [ %.047.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 8 uses
  %.sroa.0.06.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i29 ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 8 uses
  %i.cs = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -8
  store ptr %i.ct, ptr %i.cu, align 8
  %i.cv = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -16
  store ptr %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -24
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -24
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -32
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -32
  store ptr %i.dc, ptr %i.dd, align 8
  %i.de = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -40
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -40
  store ptr %i.df, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -48
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -48
  store ptr %i.di, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -56
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -56
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -64 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8
  %i.dq = add nsw i64 %.08.i.i.i.i.i.i, -8
  %i.dr = icmp sgt i64 %.08.i.i.i.i.i.i, 8
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i29, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, !llvm.loop !5

bb.f:                                             ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27
  %i.ds = icmp eq ptr %5, %.0.lcssa.i.i.i.i.i22
  br i1 %i.ds, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i22, i64 -8
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.g
  %.sroa.026.0.i.ph = phi ptr [ %2, %bb.g ], [ %i.dx, %bb.i ]
  %.sroa.030.0.i.ph.pn = phi ptr [ %1, %bb.g ], [ %.sroa.030.0.i.ph, %bb.i ]
  %.0.i.ph = phi ptr [ %i.dt, %bb.g ], [ %.0.i, %bb.i ]
  %.sroa.030.0.i.ph = getelementptr i8, ptr %.sroa.030.0.i.ph.pn, i64 -8 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.l
  %.sroa.026.0.i = phi ptr [ %i.dx, %bb.l ], [ %.sroa.026.0.i.ph, %.outer ]
  %.0.i = phi ptr [ %i.fn, %bb.l ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.du = load ptr, ptr %.0.i, align 8
  %i.dv = load ptr, ptr %.sroa.030.0.i.ph, align 8
  %i.dw = tail call noundef zeroext i1 %i.a(ptr noundef %i.du, ptr noundef %i.dv), !inline_history !146
  %i.dx = getelementptr i8, ptr %.sroa.026.0.i, i64 -8 ; 6 uses
  br i1 %i.dw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dy = load ptr, ptr %.sroa.030.0.i.ph, align 8
  store ptr %i.dy, ptr %i.dx, align 8
  %i.dz = icmp eq ptr %0, %.sroa.030.0.i.ph
  br i1 %i.dz, label %bb.j, label %.outer, !llvm.loop !147

bb.j:                                             ; preds = %bb.i
  %i.ea = getelementptr i8, ptr %.0.i, i64 8      ; 3 uses
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %5 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3                 ; 5 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i21.i.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i21.i.preheader:                   ; preds = %bb.j
  %xtraiter = and i64 %i.ee, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.prol

.lr.ph.i.i.i.i.i21.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i21.i.preheader, %.lr.ph.i.i.i.i.i21.i.prol
  %.08.i.i.i.i.i22.i.prol = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.ee, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %.047.i.i.i.i.i23.i.prol = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.ea, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %.sroa.0.06.i.i.i.i.i24.i.prol = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.dx, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i21.i.prol ], [ 0, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %i.eg = getelementptr i8, ptr %.047.i.i.i.i.i23.i.prol, i64 -8 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i.prol, i64 -8 ; 3 uses
  store ptr %i.eh, ptr %i.ei, align 8
  %i.ej = add nsw i64 %.08.i.i.i.i.i22.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.prol, !llvm.loop !148

.lr.ph.i.i.i.i.i21.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i21.i.prol, %.lr.ph.i.i.i.i.i21.i.preheader
  %.08.i.i.i.i.i22.i.unr = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i21.i.prol ]
  %.047.i.i.i.i.i23.i.unr = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.eg, %.lr.ph.i.i.i.i.i21.i.prol ]
  %.sroa.0.06.i.i.i.i.i24.i.unr = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i21.i.prol ]
  %i.ek = icmp ult i64 %i.ee, 8
  br i1 %i.ek, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i.i.i.i.i21.i

.lr.ph.i.i.i.i.i21.i:                             ; preds = %.lr.ph.i.i.i.i.i21.i.prol.loopexit, %.lr.ph.i.i.i.i.i21.i
  %.08.i.i.i.i.i22.i = phi i64 [ %i.fj, %.lr.ph.i.i.i.i.i21.i ], [ %.08.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 2 uses
  %.047.i.i.i.i.i23.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i21.i ], [ %.047.i.i.i.i.i23.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 8 uses
  %.sroa.0.06.i.i.i.i.i24.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i21.i ], [ %.sroa.0.06.i.i.i.i.i24.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 8 uses
  %i.el = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -8
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i, i64 -8
end_hunk_0
begin_hunk_1_@_ZSt17__merge_sort_loopIN5QListIP15QTreeWidgetItemE8iteratorEPS2_xN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_T0_T1_T2_:bb.a
  store ptr %.sink.i, ptr %.029.i, align 8
  %i.m = getelementptr i8, ptr %.029.i, i64 8     ; 2 uses
  %i.n = icmp ne ptr %.sroa.022.1.i, %i.h
  %i.o = icmp ne ptr %.sroa.019.1.i, %i.i
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !151

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.b
  %.sroa.019.0.lcssa.i = phi ptr [ %i.h, %bb.b ], [ %.sroa.019.1.i, %.lr.ph.i ] ; 7 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %.sroa.052.067, %bb.b ], [ %.sroa.022.1.i, %.lr.ph.i ] ; 7 uses
  %.0.lcssa.i = phi ptr [ %.068, %bb.b ], [ %i.m, %.lr.ph.i ] ; 8 uses
  %.0.lcssa.i108 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = ptrtoint ptr %.sroa.022.0.lcssa.i to i64 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3                   ; 8 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %min.iters.check111 = icmp ult i64 %i.s, 38
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i.i.i.preheader179, label %vector.scevcheck103

vector.scevcheck103:                              ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.u = add nsw i64 %i.s, -1                     ; 2 uses
  %mul.result105 = shl i64 %i.u, 3                ; 2 uses
  %mul.overflow106 = icmp ugt i64 %i.u, 2305843009213693951
  %i.v = getelementptr i8, ptr %.0.lcssa.i, i64 %mul.result105
  %i.w = icmp ult ptr %i.v, %.0.lcssa.i
  %i.x = getelementptr i8, ptr %.sroa.022.0.lcssa.i, i64 %mul.result105
  %i.y = icmp ult ptr %i.x, %.sroa.022.0.lcssa.i
  %i.z = or i1 %i.y, %mul.overflow106
  %i.aa = or i1 %i.w, %i.z
  %i.ab = sub i64 %i.q, %.0.lcssa.i108
  %diff.check109 = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %i.aa, i1 true, i1 %diff.check109
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader179, label %vector.ph112

vector.ph112:                                     ; preds = %vector.scevcheck103
  %n.vec113 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.ac = shl i64 %n.vec113, 3                    ; 2 uses
  %i.ad = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ac ; 2 uses
  %i.ae = and i64 %i.s, 3
  %i.af = getelementptr i8, ptr %.sroa.022.0.lcssa.i, i64 %i.ac
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next120, %vector.body114 ] ; 2 uses
  %i.ag = shl i64 %index115, 3                    ; 2 uses
  %next.gep116 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ag ; 2 uses
  %next.gep117 = getelementptr i8, ptr %.sroa.022.0.lcssa.i, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load118 = load <2 x ptr>, ptr %next.gep117, align 8
  %wide.load119 = load <2 x ptr>, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %next.gep116, i64 16
  store <2 x ptr> %wide.load118, ptr %next.gep116, align 8
  store <2 x ptr> %wide.load119, ptr %i.ai, align 8
  %index.next120 = add nuw i64 %index115, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next120, %n.vec113
  br i1 %i.aj, label %middle.block121, label %vector.body114, !llvm.loop !152

middle.block121:                                  ; preds = %vector.body114
  %cmp.n122 = icmp eq i64 %i.s, %n.vec113
  br i1 %cmp.n122, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader179

.lr.ph.i.i.i.i.i.i.preheader179:                  ; preds = %vector.scevcheck103, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block121
  %.09.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i, %vector.scevcheck103 ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block121 ]
  %.048.i.i.i.i.i.i.ph = phi i64 [ %i.s, %vector.scevcheck103 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block121 ]
  %.sroa.05.07.i.i.i.i.i.i.ph = phi ptr [ %.sroa.022.0.lcssa.i, %vector.scevcheck103 ], [ %.sroa.022.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block121 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader179, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader179 ] ; 2 uses
  %.048.i.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.048.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader179 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader179 ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.05.07.i.i.i.i.i.i, align 8
  store ptr %i.ak, ptr %.09.i.i.i.i.i.i, align 8
  %i.al = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i.i, i64 8
  %i.am = getelementptr i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = add nsw i64 %.048.i.i.i.i.i.i, -1
  %i.ao = icmp samesign ugt i64 %.048.i.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i, !llvm.loop !153

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block121, %.critedge.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i, %.critedge.i ], [ %i.ad, %middle.block121 ], [ %i.am, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.i98 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i to i64
  %i.ap = ptrtoint ptr %i.i to i64                ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.019.0.lcssa.i to i64 ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3                 ; 8 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i14.i.preheader, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit

.lr.ph.i.i.i.i.i14.i.preheader:                   ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i
  %min.iters.check = icmp ult i64 %i.as, 38
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i14.i.preheader178, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i14.i.preheader
  %i.au = add nsw i64 %i.as, -1                   ; 2 uses
  %mul.result = shl i64 %i.au, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.au, 2305843009213693951
  %i.av = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %mul.result
  %i.aw = icmp ult ptr %i.av, %.0.lcssa.i.i.i.i.i.i
  %i.ax = getelementptr i8, ptr %.sroa.019.0.lcssa.i, i64 %mul.result
  %i.ay = icmp ult ptr %i.ax, %.sroa.019.0.lcssa.i
  %i.az = or i1 %i.ay, %mul.overflow
  %i.ba = or i1 %i.aw, %i.az
  %i.bb = sub i64 %i.aq, %.0.lcssa.i.i.i.i.i.i98
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond172 = select i1 %i.ba, i1 true, i1 %diff.check
  br i1 %or.cond172, label %.lr.ph.i.i.i.i.i14.i.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %i.bc ; 2 uses
  %i.be = and i64 %i.as, 3
  %i.bf = getelementptr i8, ptr %.sroa.019.0.lcssa.i, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 %i.bg ; 2 uses
  %next.gep99 = getelementptr i8, ptr %.sroa.019.0.lcssa.i, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep99, align 8
  %wide.load100 = load <2 x ptr>, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8
  store <2 x ptr> %wide.load100, ptr %i.bi, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, label %.lr.ph.i.i.i.i.i14.i.preheader178

.lr.ph.i.i.i.i.i14.i.preheader178:                ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i14.i.preheader, %middle.block
  %.09.i.i.i.i.i15.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %vector.scevcheck ], [ %.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i14.i.preheader ], [ %i.bd, %middle.block ]
  %.048.i.i.i.i.i16.i.ph = phi i64 [ %i.as, %vector.scevcheck ], [ %i.as, %.lr.ph.i.i.i.i.i14.i.preheader ], [ %i.be, %middle.block ]
  %.sroa.05.07.i.i.i.i.i17.i.ph = phi ptr [ %.sroa.019.0.lcssa.i, %vector.scevcheck ], [ %.sroa.019.0.lcssa.i, %.lr.ph.i.i.i.i.i14.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i14.i

.lr.ph.i.i.i.i.i14.i:                             ; preds = %.lr.ph.i.i.i.i.i14.i.preheader178, %.lr.ph.i.i.i.i.i14.i
  %.09.i.i.i.i.i15.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i14.i ], [ %.09.i.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i.i14.i.preheader178 ] ; 2 uses
  %.048.i.i.i.i.i16.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i14.i ], [ %.048.i.i.i.i.i16.i.ph, %.lr.ph.i.i.i.i.i14.i.preheader178 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i17.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i14.i ], [ %.sroa.05.07.i.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i.i14.i.preheader178 ] ; 2 uses
  %i.bk = load ptr, ptr %.sroa.05.07.i.i.i.i.i17.i, align 8
  store ptr %i.bk, ptr %.09.i.i.i.i.i15.i, align 8
  %i.bl = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i17.i, i64 8
  %i.bm = getelementptr i8, ptr %.09.i.i.i.i.i15.i, i64 8 ; 2 uses
  %i.bn = add nsw i64 %.048.i.i.i.i.i16.i, -1
  %i.bo = icmp samesign ugt i64 %.048.i.i.i.i.i16.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i14.i, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, !llvm.loop !155

_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i14.i, %middle.block, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i
  %.0.lcssa.i.i.i.i.i13.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i ], [ %i.bd, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i14.i ] ; 2 uses
  %i.bp = sub i64 %i.b, %i.ap
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %.not = icmp slt i64 %i.bq, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !156

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, %bb.a
  %.sroa.052.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.0.lcssa.i.i.i.i.i13.i, %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa64 = phi i64 [ %i.e, %bb.a ], [ %i.bq, %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa64)
  %.idx59 = shl i64 %.sroa.speculated, 3          ; 2 uses
  %i.br = getelementptr i8, ptr %.sroa.052.0.lcssa, i64 %.idx59 ; 5 uses
  %i.bs = icmp ne i64 %.idx59, 0
  %i.bt = icmp ne ptr %i.br, %1
  %or.cond26.i17 = and i1 %i.bs, %i.bt
  br i1 %or.cond26.i17, label %.lr.ph.i33, label %.critedge.i18

.lr.ph.i33:                                       ; preds = %._crit_edge, %.lr.ph.i33
  %.029.i34 = phi ptr [ %i.bx, %.lr.ph.i33 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.022.028.i35 = phi ptr [ %.sroa.022.1.i41, %.lr.ph.i33 ], [ %.sroa.052.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.019.027.i36 = phi ptr [ %.sroa.019.1.i39, %.lr.ph.i33 ], [ %i.br, %._crit_edge ] ; 3 uses
  %i.bu = load ptr, ptr %.sroa.019.027.i36, align 8
  %i.bv = load ptr, ptr %.sroa.022.028.i35, align 8
  %i.bw = tail call noundef zeroext i1 %4(ptr noundef %i.bu, ptr noundef %i.bv), !inline_history !150 ; 3 uses
  %.sink.in.i37 = select i1 %i.bw, ptr %.sroa.019.027.i36, ptr %.sroa.022.028.i35
  %.sroa.019.1.idx.i38 = select i1 %i.bw, i64 8, i64 0
  %.sroa.019.1.i39 = getelementptr i8, ptr %.sroa.019.027.i36, i64 %.sroa.019.1.idx.i38 ; 3 uses
  %.sroa.022.1.idx.i40 = select i1 %i.bw, i64 0, i64 8
  %.sroa.022.1.i41 = getelementptr i8, ptr %.sroa.022.028.i35, i64 %.sroa.022.1.idx.i40 ; 3 uses
  %.sink.i42 = load ptr, ptr %.sink.in.i37, align 8
  store ptr %.sink.i42, ptr %.029.i34, align 8
  %i.bx = getelementptr i8, ptr %.029.i34, i64 8  ; 2 uses
  %i.by = icmp ne ptr %.sroa.022.1.i41, %i.br
  %i.bz = icmp ne ptr %.sroa.019.1.i39, %1
  %or.cond.i43 = and i1 %i.by, %i.bz
  br i1 %or.cond.i43, label %.lr.ph.i33, label %.critedge.i18, !llvm.loop !151

.critedge.i18:                                    ; preds = %.lr.ph.i33, %._crit_edge
  %.sroa.019.0.lcssa.i19 = phi ptr [ %i.br, %._crit_edge ], [ %.sroa.019.1.i39, %.lr.ph.i33 ] ; 7 uses
  %.sroa.022.0.lcssa.i20 = phi ptr [ %.sroa.052.0.lcssa, %._crit_edge ], [ %.sroa.022.1.i41, %.lr.ph.i33 ] ; 7 uses
  %.0.lcssa.i21 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bx, %.lr.ph.i33 ] ; 8 uses
  %.0.lcssa.i21131 = ptrtoaddr ptr %.0.lcssa.i21 to i64
  %i.ca = ptrtoint ptr %i.br to i64
  %i.cb = ptrtoint ptr %.sroa.022.0.lcssa.i20 to i64 ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3                 ; 8 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i29.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22

.lr.ph.i.i.i.i.i.i29.preheader:                   ; preds = %.critedge.i18
  %min.iters.check134 = icmp ult i64 %i.cd, 44
  br i1 %min.iters.check134, label %.lr.ph.i.i.i.i.i.i29.preheader176, label %vector.scevcheck126

vector.scevcheck126:                              ; preds = %.lr.ph.i.i.i.i.i.i29.preheader
  %i.cf = add nsw i64 %i.cd, -1                   ; 2 uses
  %mul.result128 = shl i64 %i.cf, 3               ; 2 uses
  %mul.overflow129 = icmp ugt i64 %i.cf, 2305843009213693951
  %i.cg = getelementptr i8, ptr %.0.lcssa.i21, i64 %mul.result128
  %i.ch = icmp ult ptr %i.cg, %.0.lcssa.i21
  %i.ci = getelementptr i8, ptr %.sroa.022.0.lcssa.i20, i64 %mul.result128
  %i.cj = icmp ult ptr %i.ci, %.sroa.022.0.lcssa.i20
  %i.ck = or i1 %i.cj, %mul.overflow129
  %i.cl = or i1 %i.ch, %i.ck
  %i.cm = sub i64 %i.cb, %.0.lcssa.i21131
  %diff.check132 = icmp ugt i64 %i.cm, -32
  %or.cond173 = select i1 %i.cl, i1 true, i1 %diff.check132
  br i1 %or.cond173, label %.lr.ph.i.i.i.i.i.i29.preheader176, label %vector.ph135

vector.ph135:                                     ; preds = %vector.scevcheck126
  %n.vec136 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec136, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0.lcssa.i21, i64 %i.cn ; 2 uses
  %i.cp = and i64 %i.cd, 3
  %i.cq = getelementptr i8, ptr %.sroa.022.0.lcssa.i20, i64 %i.cn
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %i.cr = shl i64 %index138, 3                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %.0.lcssa.i21, i64 %i.cr ; 2 uses
  %next.gep140 = getelementptr i8, ptr %.sroa.022.0.lcssa.i20, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load141 = load <2 x ptr>, ptr %next.gep140, align 8
  %wide.load142 = load <2 x ptr>, ptr %i.cs, align 8
  %i.ct = getelementptr i8, ptr %next.gep139, i64 16
  store <2 x ptr> %wide.load141, ptr %next.gep139, align 8
  store <2 x ptr> %wide.load142, ptr %i.ct, align 8
  %index.next143 = add nuw i64 %index138, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.cu, label %middle.block144, label %vector.body137, !llvm.loop !157

middle.block144:                                  ; preds = %vector.body137
  %cmp.n145 = icmp eq i64 %i.cd, %n.vec136
  br i1 %cmp.n145, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22, label %.lr.ph.i.i.i.i.i.i29.preheader176

.lr.ph.i.i.i.i.i.i29.preheader176:                ; preds = %vector.scevcheck126, %.lr.ph.i.i.i.i.i.i29.preheader, %middle.block144
  %.09.i.i.i.i.i.i30.ph = phi ptr [ %.0.lcssa.i21, %vector.scevcheck126 ], [ %.0.lcssa.i21, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.co, %middle.block144 ]
  %.048.i.i.i.i.i.i31.ph = phi i64 [ %i.cd, %vector.scevcheck126 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cp, %middle.block144 ]
  %.sroa.05.07.i.i.i.i.i.i32.ph = phi ptr [ %.sroa.022.0.lcssa.i20, %vector.scevcheck126 ], [ %.sroa.022.0.lcssa.i20, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cq, %middle.block144 ]
  br label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29.preheader176, %.lr.ph.i.i.i.i.i.i29
  %.09.i.i.i.i.i.i30 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i29 ], [ %.09.i.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i.i29.preheader176 ] ; 2 uses
  %.048.i.i.i.i.i.i31 = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.i29 ], [ %.048.i.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i.i29.preheader176 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i32 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i29 ], [ %.sroa.05.07.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i29.preheader176 ] ; 2 uses
  %i.cv = load ptr, ptr %.sroa.05.07.i.i.i.i.i.i32, align 8
  store ptr %i.cv, ptr %.09.i.i.i.i.i.i30, align 8
  %i.cw = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i.i32, i64 8
  %i.cx = getelementptr i8, ptr %.09.i.i.i.i.i.i30, i64 8 ; 2 uses
  %i.cy = add nsw i64 %.048.i.i.i.i.i.i31, -1
  %i.cz = icmp samesign ugt i64 %.048.i.i.i.i.i.i31, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i.i29, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22, !llvm.loop !158

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22: ; preds = %.lr.ph.i.i.i.i.i.i29, %middle.block144, %.critedge.i18
  %.0.lcssa.i.i.i.i.i.i23 = phi ptr [ %.0.lcssa.i21, %.critedge.i18 ], [ %i.co, %middle.block144 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i29 ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.i23154 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i23 to i64
  %i.da = ptrtoint ptr %.sroa.019.0.lcssa.i19 to i64 ; 2 uses
  %i.db = sub i64 %i.b, %i.da
  %i.dc = ashr exact i64 %i.db, 3                 ; 8 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i14.i25.preheader, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit44

.lr.ph.i.i.i.i.i14.i25.preheader:                 ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22
  %min.iters.check157 = icmp ult i64 %i.dc, 44
  br i1 %min.iters.check157, label %.lr.ph.i.i.i.i.i14.i25.preheader175, label %vector.scevcheck149

vector.scevcheck149:                              ; preds = %.lr.ph.i.i.i.i.i14.i25.preheader
  %i.de = add nsw i64 %i.dc, -1                   ; 2 uses
  %mul.result151 = shl i64 %i.de, 3               ; 2 uses
  %mul.overflow152 = icmp ugt i64 %i.de, 2305843009213693951
  %i.df = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i23, i64 %mul.result151
  %i.dg = icmp ult ptr %i.df, %.0.lcssa.i.i.i.i.i.i23
  %i.dh = getelementptr i8, ptr %.sroa.019.0.lcssa.i19, i64 %mul.result151
  %i.di = icmp ult ptr %i.dh, %.sroa.019.0.lcssa.i19
  %i.dj = or i1 %i.di, %mul.overflow152
  %i.dk = or i1 %i.dg, %i.dj
  %i.dl = sub i64 %i.da, %.0.lcssa.i.i.i.i.i.i23154
  %diff.check155 = icmp ugt i64 %i.dl, -32
  %or.cond174 = select i1 %i.dk, i1 true, i1 %diff.check155
  br i1 %or.cond174, label %.lr.ph.i.i.i.i.i14.i25.preheader175, label %vector.ph158

vector.ph158:                                     ; preds = %vector.scevcheck149
  %n.vec159 = and i64 %i.dc, 4611686018427387900  ; 3 uses
  %i.dm = shl i64 %n.vec159, 3                    ; 2 uses
  %i.dn = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i23, i64 %i.dm
  %i.do = and i64 %i.dc, 3
  %i.dp = getelementptr i8, ptr %.sroa.019.0.lcssa.i19, i64 %i.dm
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next166, %vector.body160 ] ; 2 uses
  %i.dq = shl i64 %index161, 3                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i.i23, i64 %i.dq ; 2 uses
  %next.gep163 = getelementptr i8, ptr %.sroa.019.0.lcssa.i19, i64 %i.dq ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep163, i64 16
  %wide.load164 = load <2 x ptr>, ptr %next.gep163, align 8
  %wide.load165 = load <2 x ptr>, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %next.gep162, i64 16
  store <2 x ptr> %wide.load164, ptr %next.gep162, align 8
  store <2 x ptr> %wide.load165, ptr %i.ds, align 8
  %index.next166 = add nuw i64 %index161, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.dt, label %middle.block167, label %vector.body160, !llvm.loop !159

middle.block167:                                  ; preds = %vector.body160
  %cmp.n168 = icmp eq i64 %i.dc, %n.vec159
  br i1 %cmp.n168, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit44, label %.lr.ph.i.i.i.i.i14.i25.preheader175

.lr.ph.i.i.i.i.i14.i25.preheader175:              ; preds = %vector.scevcheck149, %.lr.ph.i.i.i.i.i14.i25.preheader, %middle.block167
  %.09.i.i.i.i.i15.i26.ph = phi ptr [ %.0.lcssa.i.i.i.i.i.i23, %vector.scevcheck149 ], [ %.0.lcssa.i.i.i.i.i.i23, %.lr.ph.i.i.i.i.i14.i25.preheader ], [ %i.dn, %middle.block167 ]
  %.048.i.i.i.i.i16.i27.ph = phi i64 [ %i.dc, %vector.scevcheck149 ], [ %i.dc, %.lr.ph.i.i.i.i.i14.i25.preheader ], [ %i.do, %middle.block167 ]
  %.sroa.05.07.i.i.i.i.i17.i28.ph = phi ptr [ %.sroa.019.0.lcssa.i19, %vector.scevcheck149 ], [ %.sroa.019.0.lcssa.i19, %.lr.ph.i.i.i.i.i14.i25.preheader ], [ %i.dp, %middle.block167 ]
  br label %.lr.ph.i.i.i.i.i14.i25

.lr.ph.i.i.i.i.i14.i25:                           ; preds = %.lr.ph.i.i.i.i.i14.i25.preheader175, %.lr.ph.i.i.i.i.i14.i25
  %.09.i.i.i.i.i15.i26 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i14.i25 ], [ %.09.i.i.i.i.i15.i26.ph, %.lr.ph.i.i.i.i.i14.i25.preheader175 ] ; 2 uses
  %.048.i.i.i.i.i16.i27 = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i14.i25 ], [ %.048.i.i.i.i.i16.i27.ph, %.lr.ph.i.i.i.i.i14.i25.preheader175 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i17.i28 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i14.i25 ], [ %.sroa.05.07.i.i.i.i.i17.i28.ph, %.lr.ph.i.i.i.i.i14.i25.preheader175 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.05.07.i.i.i.i.i17.i28, align 8
  store ptr %i.du, ptr %.09.i.i.i.i.i15.i26, align 8
  %i.dv = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i17.i28, i64 8
  %i.dw = getelementptr i8, ptr %.09.i.i.i.i.i15.i26, i64 8
  %i.dx = add nsw i64 %.048.i.i.i.i.i16.i27, -1
  %i.dy = icmp samesign ugt i64 %.048.i.i.i.i.i16.i27, 1
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i14.i25, label %_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit44, !llvm.loop !160

_ZSt12__move_mergeIN5QListIP15QTreeWidgetItemE8iteratorEPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit44: ; preds = %.lr.ph.i.i.i.i.i14.i25, %middle.block167, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i22
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
  %i.m = tail call noundef zeroext i1 %4(ptr noundef %i.k, ptr noundef %i.l), !inline_history !161 ; 3 uses
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
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.sroa.024.0.lcssa.i = phi ptr [ %.sroa.021.064, %bb.b ], [ %i.n, %.lr.ph.i ] ; 8 uses
  %.016.lcssa.i = phi ptr [ %i.i, %bb.b ], [ %.117.i, %.lr.ph.i ] ; 7 uses
  %.0.lcssa.i = phi ptr [ %.063, %bb.b ], [ %.1.i, %.lr.ph.i ] ; 7 uses
  %.sroa.024.0.lcssa.i104 = ptrtoaddr ptr %.sroa.024.0.lcssa.i to i64
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = ptrtoint ptr %.0.lcssa.i to i64          ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 8 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %min.iters.check107 = icmp ult i64 %i.u, 38
  br i1 %min.iters.check107, label %.lr.ph.i.i.i.i.i.i.preheader175, label %vector.scevcheck99

vector.scevcheck99:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.w = add nsw i64 %i.u, -1                     ; 2 uses
  %mul.result101 = shl i64 %i.w, 3                ; 2 uses
  %mul.overflow102 = icmp ugt i64 %i.w, 2305843009213693951
  %i.x = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %mul.result101
  %i.y = icmp ult ptr %i.x, %.sroa.024.0.lcssa.i
  %i.z = getelementptr i8, ptr %.0.lcssa.i, i64 %mul.result101
  %i.aa = icmp ult ptr %i.z, %.0.lcssa.i
  %i.ab = or i1 %i.aa, %mul.overflow102
  %i.ac = or i1 %i.y, %i.ab
  %i.ad = sub i64 %i.s, %.sroa.024.0.lcssa.i104
  %diff.check105 = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %i.ac, i1 true, i1 %diff.check105
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader175, label %vector.ph108

vector.ph108:                                     ; preds = %vector.scevcheck99
  %n.vec109 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.ae = and i64 %i.u, 3
  %i.af = shl i64 %n.vec109, 3                    ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i, i64 %i.af
  %i.ah = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.af ; 2 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body110 ] ; 2 uses
  %i.ai = shl i64 %index111, 3                    ; 2 uses
  %next.gep112 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ai ; 2 uses
  %next.gep113 = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load114 = load <2 x ptr>, ptr %next.gep112, align 8
  %wide.load115 = load <2 x ptr>, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %next.gep113, i64 16
  store <2 x ptr> %wide.load114, ptr %next.gep113, align 8
  store <2 x ptr> %wide.load115, ptr %i.ak, align 8
  %index.next116 = add nuw i64 %index111, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.al, label %middle.block117, label %vector.body110, !llvm.loop !163

middle.block117:                                  ; preds = %vector.body110
  %cmp.n118 = icmp eq i64 %i.u, %n.vec109
  br i1 %cmp.n118, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader175

.lr.ph.i.i.i.i.i.i.preheader175:                  ; preds = %vector.scevcheck99, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block117
  %.09.i.i.i.i.i.i.ph = phi i64 [ %i.u, %vector.scevcheck99 ], [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block117 ]
  %.058.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i, %vector.scevcheck99 ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block117 ]
  %.sroa.0.07.i.i.i.i.i.i.ph = phi ptr [ %.sroa.024.0.lcssa.i, %vector.scevcheck99 ], [ %.sroa.024.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block117 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader175, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader175 ] ; 2 uses
  %.058.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.058.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader175 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader175 ] ; 2 uses
  %i.am = load ptr, ptr %.058.i.i.i.i.i.i, align 8
  store ptr %i.am, ptr %.sroa.0.07.i.i.i.i.i.i, align 8
  %i.an = getelementptr i8, ptr %.058.i.i.i.i.i.i, i64 8
  %i.ao = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = add nsw i64 %.09.i.i.i.i.i.i, -1
  %i.aq = icmp samesign ugt i64 %.09.i.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i, !llvm.loop !164

_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block117, %._crit_edge.i
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.024.0.lcssa.i, %._crit_edge.i ], [ %i.ah, %middle.block117 ], [ %i.ao, %.lr.ph.i.i.i.i.i.i ] ; 8 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i94 = ptrtoaddr ptr %.sroa.0.0.lcssa.i.i.i.i.i.i to i64
  %i.ar = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.as = ptrtoint ptr %.016.lcssa.i to i64       ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 8 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i
  %min.iters.check = icmp ult i64 %i.au, 38
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i19.i.preheader174, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i19.i.preheader
  %i.aw = add nsw i64 %i.au, -1                   ; 2 uses
  %mul.result = shl i64 %i.aw, 3                  ; 2 uses
  %mul.overflow = icmp ugt i64 %i.aw, 2305843009213693951
  %i.ax = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 %mul.result
  %i.ay = icmp ult ptr %i.ax, %.sroa.0.0.lcssa.i.i.i.i.i.i
  %i.az = getelementptr i8, ptr %.016.lcssa.i, i64 %mul.result
  %i.ba = icmp ult ptr %i.az, %.016.lcssa.i
  %i.bb = or i1 %i.ba, %mul.overflow
  %i.bc = or i1 %i.ay, %i.bb
  %i.bd = sub i64 %i.as, %.sroa.0.0.lcssa.i.i.i.i.i.i94
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond168 = select i1 %i.bc, i1 true, i1 %diff.check
  br i1 %or.cond168, label %.lr.ph.i.i.i.i.i19.i.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.be = and i64 %i.au, 3
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %.016.lcssa.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 %i.bf ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.016.lcssa.i, i64 %i.bi ; 2 uses
  %next.gep95 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8
  %wide.load96 = load <2 x ptr>, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %next.gep95, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep95, align 8
  store <2 x ptr> %wide.load96, ptr %i.bk, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, label %.lr.ph.i.i.i.i.i19.i.preheader174

.lr.ph.i.i.i.i.i19.i.preheader174:                ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i19.i.preheader, %middle.block
  %.09.i.i.i.i.i20.i.ph = phi i64 [ %i.au, %vector.scevcheck ], [ %i.au, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.be, %middle.block ]
  %.058.i.i.i.i.i21.i.ph = phi ptr [ %.016.lcssa.i, %vector.scevcheck ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bg, %middle.block ]
  %.sroa.0.07.i.i.i.i.i22.i.ph = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i, %vector.scevcheck ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.preheader174, %.lr.ph.i.i.i.i.i19.i
  %.09.i.i.i.i.i20.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i19.i ], [ %.09.i.i.i.i.i20.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader174 ] ; 2 uses
  %.058.i.i.i.i.i21.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i19.i ], [ %.058.i.i.i.i.i21.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader174 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i22.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i19.i ], [ %.sroa.0.07.i.i.i.i.i22.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader174 ] ; 2 uses
  %i.bm = load ptr, ptr %.058.i.i.i.i.i21.i, align 8
  store ptr %i.bm, ptr %.sroa.0.07.i.i.i.i.i22.i, align 8
  %i.bn = getelementptr i8, ptr %.058.i.i.i.i.i21.i, i64 8
  %i.bo = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i22.i, i64 8 ; 2 uses
  %i.bp = add nsw i64 %.09.i.i.i.i.i20.i, -1
  %i.bq = icmp samesign ugt i64 %.09.i.i.i.i.i20.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, !llvm.loop !166

_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i, %middle.block, %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i
  %.sroa.0.0.lcssa.i.i.i.i.i18.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i, %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i ], [ %i.bh, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i19.i ] ; 2 uses
  %i.br = sub i64 %i.b, %i.ar
  %i.bs = ashr exact i64 %i.br, 3                 ; 2 uses
  %.not = icmp slt i64 %i.bs, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !167

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 3 uses
  %.sroa.021.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.0.0.lcssa.i.i.i.i.i18.i, %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.lcssa60 = phi i64 [ %i.e, %bb.a ], [ %i.bs, %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa60)
  %.idx55 = shl i64 %.sroa.speculated, 3          ; 2 uses
  %i.bt = getelementptr i8, ptr %.0.lcssa, i64 %.idx55 ; 5 uses
  %i.bu = icmp ne i64 %.idx55, 0
  %i.bv = icmp ne ptr %i.bt, %1
  %i.bw = and i1 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph.i39, label %._crit_edge.i24

.lr.ph.i39:                                       ; preds = %._crit_edge, %.lr.ph.i39
  %.030.i40 = phi ptr [ %.1.i47, %.lr.ph.i39 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.01629.i41 = phi ptr [ %.117.i45, %.lr.ph.i39 ], [ %i.bt, %._crit_edge ] ; 3 uses
  %.sroa.024.028.i42 = phi ptr [ %i.ca, %.lr.ph.i39 ], [ %.sroa.021.0.lcssa, %._crit_edge ] ; 2 uses
  %i.bx = load ptr, ptr %.01629.i41, align 8
  %i.by = load ptr, ptr %.030.i40, align 8
  %i.bz = tail call noundef zeroext i1 %4(ptr noundef %i.bx, ptr noundef %i.by), !inline_history !161 ; 3 uses
  %.sink.in.i43 = select i1 %i.bz, ptr %.01629.i41, ptr %.030.i40
  %.117.idx.i44 = select i1 %i.bz, i64 8, i64 0
  %.117.i45 = getelementptr i8, ptr %.01629.i41, i64 %.117.idx.i44 ; 3 uses
  %.1.idx.i46 = select i1 %i.bz, i64 0, i64 8
  %.1.i47 = getelementptr i8, ptr %.030.i40, i64 %.1.idx.i46 ; 3 uses
  %.sink.i48 = load ptr, ptr %.sink.in.i43, align 8
  store ptr %.sink.i48, ptr %.sroa.024.028.i42, align 8
  %i.ca = getelementptr i8, ptr %.sroa.024.028.i42, i64 8 ; 2 uses
  %i.cb = icmp ne ptr %.1.i47, %i.bt
  %i.cc = icmp ne ptr %.117.i45, %1
  %i.cd = and i1 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph.i39, label %._crit_edge.i24, !llvm.loop !162

._crit_edge.i24:                                  ; preds = %.lr.ph.i39, %._crit_edge
  %.sroa.024.0.lcssa.i25 = phi ptr [ %.sroa.021.0.lcssa, %._crit_edge ], [ %i.ca, %.lr.ph.i39 ] ; 8 uses
  %.016.lcssa.i26 = phi ptr [ %i.bt, %._crit_edge ], [ %.117.i45, %.lr.ph.i39 ] ; 7 uses
  %.0.lcssa.i27 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i47, %.lr.ph.i39 ] ; 7 uses
  %.sroa.024.0.lcssa.i25127 = ptrtoaddr ptr %.sroa.024.0.lcssa.i25 to i64
  %i.ce = ptrtoint ptr %i.bt to i64
  %i.cf = ptrtoint ptr %.0.lcssa.i27 to i64       ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3                 ; 8 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i35.preheader, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28

.lr.ph.i.i.i.i.i.i35.preheader:                   ; preds = %._crit_edge.i24
  %min.iters.check130 = icmp ult i64 %i.ch, 44
  br i1 %min.iters.check130, label %.lr.ph.i.i.i.i.i.i35.preheader172, label %vector.scevcheck122

vector.scevcheck122:                              ; preds = %.lr.ph.i.i.i.i.i.i35.preheader
  %i.cj = add nsw i64 %i.ch, -1                   ; 2 uses
  %mul.result124 = shl i64 %i.cj, 3               ; 2 uses
  %mul.overflow125 = icmp ugt i64 %i.cj, 2305843009213693951
  %i.ck = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %mul.result124
  %i.cl = icmp ult ptr %i.ck, %.sroa.024.0.lcssa.i25
  %i.cm = getelementptr i8, ptr %.0.lcssa.i27, i64 %mul.result124
  %i.cn = icmp ult ptr %i.cm, %.0.lcssa.i27
  %i.co = or i1 %i.cn, %mul.overflow125
  %i.cp = or i1 %i.cl, %i.co
  %i.cq = sub i64 %i.cf, %.sroa.024.0.lcssa.i25127
  %diff.check128 = icmp ugt i64 %i.cq, -32
  %or.cond169 = select i1 %i.cp, i1 true, i1 %diff.check128
  br i1 %or.cond169, label %.lr.ph.i.i.i.i.i.i35.preheader172, label %vector.ph131

vector.ph131:                                     ; preds = %vector.scevcheck122
  %n.vec132 = and i64 %i.ch, 4611686018427387900  ; 3 uses
  %i.cr = and i64 %i.ch, 3
  %i.cs = shl i64 %n.vec132, 3                    ; 2 uses
  %i.ct = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.cs
  %i.cu = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cs ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %i.cv = shl i64 %index134, 3                    ; 2 uses
  %next.gep135 = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.cv ; 2 uses
  %next.gep136 = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep135, i64 16
  %wide.load137 = load <2 x ptr>, ptr %next.gep135, align 8
  %wide.load138 = load <2 x ptr>, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %next.gep136, i64 16
  store <2 x ptr> %wide.load137, ptr %next.gep136, align 8
  store <2 x ptr> %wide.load138, ptr %i.cx, align 8
  %index.next139 = add nuw i64 %index134, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.cy, label %middle.block140, label %vector.body133, !llvm.loop !168

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.ch, %n.vec132
  br i1 %cmp.n141, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28, label %.lr.ph.i.i.i.i.i.i35.preheader172

.lr.ph.i.i.i.i.i.i35.preheader172:                ; preds = %vector.scevcheck122, %.lr.ph.i.i.i.i.i.i35.preheader, %middle.block140
  %.09.i.i.i.i.i.i36.ph = phi i64 [ %i.ch, %vector.scevcheck122 ], [ %i.ch, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.cr, %middle.block140 ]
  %.058.i.i.i.i.i.i37.ph = phi ptr [ %.0.lcssa.i27, %vector.scevcheck122 ], [ %.0.lcssa.i27, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.ct, %middle.block140 ]
  %.sroa.0.07.i.i.i.i.i.i38.ph = phi ptr [ %.sroa.024.0.lcssa.i25, %vector.scevcheck122 ], [ %.sroa.024.0.lcssa.i25, %.lr.ph.i.i.i.i.i.i35.preheader ], [ %i.cu, %middle.block140 ]
  br label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph.i.i.i.i.i.i35.preheader172, %.lr.ph.i.i.i.i.i.i35
  %.09.i.i.i.i.i.i36 = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.i35 ], [ %.09.i.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i.i35.preheader172 ] ; 2 uses
  %.058.i.i.i.i.i.i37 = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i35 ], [ %.058.i.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i.i35.preheader172 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.i38 = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i35 ], [ %.sroa.0.07.i.i.i.i.i.i38.ph, %.lr.ph.i.i.i.i.i.i35.preheader172 ] ; 2 uses
  %i.cz = load ptr, ptr %.058.i.i.i.i.i.i37, align 8
  store ptr %i.cz, ptr %.sroa.0.07.i.i.i.i.i.i38, align 8
  %i.da = getelementptr i8, ptr %.058.i.i.i.i.i.i37, i64 8
  %i.db = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i.i38, i64 8 ; 2 uses
  %i.dc = add nsw i64 %.09.i.i.i.i.i.i36, -1
  %i.dd = icmp samesign ugt i64 %.09.i.i.i.i.i.i36, 1
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i35, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28, !llvm.loop !169

_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28: ; preds = %.lr.ph.i.i.i.i.i.i35, %middle.block140, %._crit_edge.i24
  %.sroa.0.0.lcssa.i.i.i.i.i.i29 = phi ptr [ %.sroa.024.0.lcssa.i25, %._crit_edge.i24 ], [ %i.cu, %middle.block140 ], [ %i.db, %.lr.ph.i.i.i.i.i.i35 ] ; 7 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i29150 = ptrtoaddr ptr %.sroa.0.0.lcssa.i.i.i.i.i.i29 to i64
  %i.de = ptrtoint ptr %.016.lcssa.i26 to i64     ; 2 uses
  %i.df = sub i64 %i.b, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 8 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i19.i31.preheader, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit49

.lr.ph.i.i.i.i.i19.i31.preheader:                 ; preds = %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28
  %min.iters.check153 = icmp ult i64 %i.dg, 44
  br i1 %min.iters.check153, label %.lr.ph.i.i.i.i.i19.i31.preheader171, label %vector.scevcheck145

vector.scevcheck145:                              ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader
  %i.di = add nsw i64 %i.dg, -1                   ; 2 uses
  %mul.result147 = shl i64 %i.di, 3               ; 2 uses
  %mul.overflow148 = icmp ugt i64 %i.di, 2305843009213693951
  %i.dj = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i29, i64 %mul.result147
  %i.dk = icmp ult ptr %i.dj, %.sroa.0.0.lcssa.i.i.i.i.i.i29
  %i.dl = getelementptr i8, ptr %.016.lcssa.i26, i64 %mul.result147
  %i.dm = icmp ult ptr %i.dl, %.016.lcssa.i26
  %i.dn = or i1 %i.dm, %mul.overflow148
  %i.do = or i1 %i.dk, %i.dn
  %i.dp = sub i64 %i.de, %.sroa.0.0.lcssa.i.i.i.i.i.i29150
  %diff.check151 = icmp ugt i64 %i.dp, -32
  %or.cond170 = select i1 %i.do, i1 true, i1 %diff.check151
  br i1 %or.cond170, label %.lr.ph.i.i.i.i.i19.i31.preheader171, label %vector.ph154

vector.ph154:                                     ; preds = %vector.scevcheck145
  %n.vec155 = and i64 %i.dg, 4611686018427387900  ; 3 uses
  %i.dq = and i64 %i.dg, 3
  %i.dr = shl i64 %n.vec155, 3                    ; 2 uses
  %i.ds = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.dr
  %i.dt = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i29, i64 %i.dr
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 2 uses
  %i.du = shl i64 %index157, 3                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.du ; 2 uses
  %next.gep159 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i29, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load160 = load <2 x ptr>, ptr %next.gep158, align 8
  %wide.load161 = load <2 x ptr>, ptr %i.dv, align 8
  %i.dw = getelementptr i8, ptr %next.gep159, i64 16
  store <2 x ptr> %wide.load160, ptr %next.gep159, align 8
  store <2 x ptr> %wide.load161, ptr %i.dw, align 8
  %index.next162 = add nuw i64 %index157, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.dx, label %middle.block163, label %vector.body156, !llvm.loop !170

middle.block163:                                  ; preds = %vector.body156
  %cmp.n164 = icmp eq i64 %i.dg, %n.vec155
  br i1 %cmp.n164, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit49, label %.lr.ph.i.i.i.i.i19.i31.preheader171

.lr.ph.i.i.i.i.i19.i31.preheader171:              ; preds = %vector.scevcheck145, %.lr.ph.i.i.i.i.i19.i31.preheader, %middle.block163
  %.09.i.i.i.i.i20.i32.ph = phi i64 [ %i.dg, %vector.scevcheck145 ], [ %i.dg, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.dq, %middle.block163 ]
  %.058.i.i.i.i.i21.i33.ph = phi ptr [ %.016.lcssa.i26, %vector.scevcheck145 ], [ %.016.lcssa.i26, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.ds, %middle.block163 ]
  %.sroa.0.07.i.i.i.i.i22.i34.ph = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i29, %vector.scevcheck145 ], [ %.sroa.0.0.lcssa.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.dt, %middle.block163 ]
  br label %.lr.ph.i.i.i.i.i19.i31

.lr.ph.i.i.i.i.i19.i31:                           ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader171, %.lr.ph.i.i.i.i.i19.i31
  %.09.i.i.i.i.i20.i32 = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i19.i31 ], [ %.09.i.i.i.i.i20.i32.ph, %.lr.ph.i.i.i.i.i19.i31.preheader171 ] ; 2 uses
  %.058.i.i.i.i.i21.i33 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i19.i31 ], [ %.058.i.i.i.i.i21.i33.ph, %.lr.ph.i.i.i.i.i19.i31.preheader171 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i22.i34 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i19.i31 ], [ %.sroa.0.07.i.i.i.i.i22.i34.ph, %.lr.ph.i.i.i.i.i19.i31.preheader171 ] ; 2 uses
  %i.dy = load ptr, ptr %.058.i.i.i.i.i21.i33, align 8
  store ptr %i.dy, ptr %.sroa.0.07.i.i.i.i.i22.i34, align 8
  %i.dz = getelementptr i8, ptr %.058.i.i.i.i.i21.i33, i64 8
  %i.ea = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i22.i34, i64 8
  %i.eb = add nsw i64 %.09.i.i.i.i.i20.i32, -1
  %i.ec = icmp samesign ugt i64 %.09.i.i.i.i.i20.i32, 1
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i19.i31, label %_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit49, !llvm.loop !171

_ZSt12__move_mergeIPP15QTreeWidgetItemN5QListIS1_E8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEET0_T_SF_SF_SF_SE_T1_.exit49: ; preds = %.lr.ph.i.i.i.i.i19.i31, %middle.block163, %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit.i28
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
  %i.h = tail call noundef zeroext i1 %5(ptr noundef %i.f, ptr noundef %i.g), !inline_history !172
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
  %i.v = tail call noundef zeroext i1 %5(ptr noundef %i.t, ptr noundef %i.u), !inline_history !6 ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.016.i, %i.x
  %.sroa.012.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.012.015.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.r      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !7

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
  %i.am = tail call noundef zeroext i1 %5(ptr noundef %i.ak, ptr noundef %i.al), !inline_history !8 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %i.ao = xor i64 %i.ai, -1
  %i.ap = add nsw i64 %.016.i58, %i.ao
  %.sroa.012.1.i62 = select i1 %i.am, ptr %.sroa.012.015.i59, ptr %i.an ; 3 uses
  %.1.i63 = select i1 %i.am, i64 %i.ai, i64 %i.ap ; 2 uses
  %i.aq = icmp sgt i64 %.1.i63, 0
  br i1 %i.aq, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !9

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
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIN5QListIP15QTreeWidgetItemE8iteratorEEET_S6_S6_S6_St26random_access_iterator_tag:bb.a
.lr.ph.preheader209:                              ; preds = %vector.memcheck153, %vector.scevcheck145, %.lr.ph.preheader, %middle.block171
  %.03296.ph = phi i64 [ 0, %vector.memcheck153 ], [ 0, %vector.scevcheck145 ], [ 0, %.lr.ph.preheader ], [ %n.vec161, %middle.block171 ] ; 3 uses
  %.sroa.0.095.ph = phi ptr [ %i.cr, %vector.memcheck153 ], [ %i.cr, %vector.scevcheck145 ], [ %i.cr, %.lr.ph.preheader ], [ %i.dn, %middle.block171 ] ; 2 uses
  %.sroa.048.294.ph = phi ptr [ %i.cx, %vector.memcheck153 ], [ %i.cx, %vector.scevcheck145 ], [ %i.cx, %.lr.ph.preheader ], [ %i.do, %middle.block171 ] ; 2 uses
  %xtraiter = and i64 %.086, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader209, %.lr.ph.prol
  %.03296.prol = phi i64 [ %i.dz, %.lr.ph.prol ], [ %.03296.ph, %.lr.ph.preheader209 ]
  %.sroa.0.095.prol = phi ptr [ %i.dw, %.lr.ph.prol ], [ %.sroa.0.095.ph, %.lr.ph.preheader209 ]
  %.sroa.048.294.prol = phi ptr [ %i.dv, %.lr.ph.prol ], [ %.sroa.048.294.ph, %.lr.ph.preheader209 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader209 ]
  %i.dv = getelementptr i8, ptr %.sroa.048.294.prol, i64 -8 ; 4 uses
  %i.dw = getelementptr i8, ptr %.sroa.0.095.prol, i64 -8 ; 4 uses
  %i.dx = load ptr, ptr %i.dv, align 8
  %i.dy = load ptr, ptr %i.dw, align 8
  store ptr %i.dy, ptr %i.dv, align 8
  store ptr %i.dx, ptr %i.dw, align 8
  %i.dz = add nuw nsw i64 %.03296.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !188

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader209
  %.03296.unr = phi i64 [ %.03296.ph, %.lr.ph.preheader209 ], [ %i.dz, %.lr.ph.prol ]
  %.sroa.0.095.unr = phi ptr [ %.sroa.0.095.ph, %.lr.ph.preheader209 ], [ %i.dw, %.lr.ph.prol ]
  %.sroa.048.294.unr = phi ptr [ %.sroa.048.294.ph, %.lr.ph.preheader209 ], [ %i.dv, %.lr.ph.prol ]
  %i.ea = sub nsw i64 %.03296.ph, %.086
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block171, %bb.l
  %.sroa.048.2.lcssa = phi ptr [ %i.cx, %bb.l ], [ %.sroa.048.0, %middle.block171 ], [ %.sroa.048.0, %.lr.ph ], [ %.sroa.048.0, %.lr.ph.prol.loopexit ]
  %i.ec = srem i64 %.0, %i.an                     ; 2 uses
  %.not = icmp eq i64 %i.ec, 0
  br i1 %.not, label %_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.i
  %.sroa.048.0.be = phi ptr [ %.sroa.048.1.lcssa, %bb.i ], [ %.sroa.048.2.lcssa, %._crit_edge ]
  %.086.be = phi i64 [ %i.cp, %bb.i ], [ %i.ec, %._crit_edge ]
  %.0.be = phi i64 [ %.086, %bb.i ], [ %i.an, %._crit_edge ]
  br label %bb.e, !llvm.loop !189

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03296 = phi i64 [ %i.et, %.lr.ph ], [ %.03296.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.095 = phi ptr [ %i.eq, %.lr.ph ], [ %.sroa.0.095.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.048.294 = phi ptr [ %i.ep, %.lr.ph ], [ %.sroa.048.294.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ed = getelementptr i8, ptr %.sroa.048.294, i64 -8 ; 2 uses
  %i.ee = getelementptr i8, ptr %.sroa.0.095, i64 -8 ; 2 uses
  %i.ef = load ptr, ptr %i.ed, align 8
  %i.eg = load ptr, ptr %i.ee, align 8
  store ptr %i.eg, ptr %i.ed, align 8
  store ptr %i.ef, ptr %i.ee, align 8
  %i.eh = getelementptr i8, ptr %.sroa.048.294, i64 -16 ; 2 uses
  %i.ei = getelementptr i8, ptr %.sroa.0.095, i64 -16 ; 2 uses
  %i.ej = load ptr, ptr %i.eh, align 8
  %i.ek = load ptr, ptr %i.ei, align 8
  store ptr %i.ek, ptr %i.eh, align 8
  store ptr %i.ej, ptr %i.ei, align 8
  %i.el = getelementptr i8, ptr %.sroa.048.294, i64 -24 ; 2 uses
  %i.em = getelementptr i8, ptr %.sroa.0.095, i64 -24 ; 2 uses
  %i.en = load ptr, ptr %i.el, align 8
  %i.eo = load ptr, ptr %i.em, align 8
  store ptr %i.eo, ptr %i.el, align 8
  store ptr %i.en, ptr %i.em, align 8
  %i.ep = getelementptr i8, ptr %.sroa.048.294, i64 -32 ; 3 uses
  %i.eq = getelementptr i8, ptr %.sroa.0.095, i64 -32 ; 3 uses
  %i.er = load ptr, ptr %i.ep, align 8
  %i.es = load ptr, ptr %i.eq, align 8
  store ptr %i.es, ptr %i.ep, align 8
  store ptr %i.er, ptr %i.eq, align 8
  %i.et = add nuw nsw i64 %.03296, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.et, %.086
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !190

_ZSt11swap_rangesIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge102, %.lr.ph.i, %middle.block203, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.sroa.029.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.am, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit ], [ %i.am, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit ], [ %1, %middle.block203 ], [ %1, %.lr.ph.i ], [ %i.am, %._crit_edge102 ], [ %i.am, %._crit_edge ]
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
  %i.n = tail call noundef zeroext i1 %i.a(ptr noundef %i.l, ptr noundef %i.m), !inline_history !6 ; 2 uses
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = xor i64 %i.j, -1
  %i.q = add nsw i64 %.016.i, %i.p
  %.sroa.012.1.i = select i1 %i.n, ptr %i.o, ptr %.sroa.012.015.i ; 3 uses
  %.1.i = select i1 %i.n, i64 %i.q, i64 %i.j      ; 2 uses
  %i.r = icmp sgt i64 %.1.i, 0
  br i1 %i.r, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Iter_comp_valIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !7

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
  %i.ae = tail call noundef zeroext i1 %i.a(ptr noundef %i.ac, ptr noundef %i.ad), !inline_history !8 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 8
  %i.ag = xor i64 %i.aa, -1
  %i.ah = add nsw i64 %.016.i71, %i.ag
  %.sroa.012.1.i75 = select i1 %i.ae, ptr %.sroa.012.015.i72, ptr %i.af ; 3 uses
  %.1.i76 = select i1 %i.ae, i64 %i.aa, i64 %i.ah ; 2 uses
  %i.ai = icmp sgt i64 %.1.i76, 0
  br i1 %i.ai, label %_ZSt9__advanceIN5QListIP15QTreeWidgetItemE8iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i70, label %_ZSt13__upper_boundIN5QListIP15QTreeWidgetItemE8iteratorES2_N9__gnu_cxx5__ops14_Val_comp_iterIPFbPKS1_S9_EEEET_SD_SD_RKT0_T1_.exit.loopexit, !llvm.loop !9

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
  %7 = ptrtoaddr ptr %5 to i64                    ; 3 uses
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 8 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.e, 44
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader158, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  %mul.result = shl i64 %i.g, 3                   ; 2 uses
  %mul.overflow = icmp ugt i64 %i.g, 2305843009213693951
  %i.h = getelementptr i8, ptr %5, i64 %mul.result
  %i.i = icmp ult ptr %i.h, %5
  %i.j = getelementptr i8, ptr %1, i64 %mul.result
  %i.k = icmp ult ptr %i.j, %1
  %i.l = or i1 %i.k, %mul.overflow
  %i.m = or i1 %i.i, %i.l
  %i.n = sub i64 %i.c, %7
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond148 = or i1 %i.m, %diff.check
  br i1 %or.cond148, label %.lr.ph.i.i.i.i.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.e, 4611686018427387900      ; 3 uses
  %i.o = shl i64 %n.vec, 3                        ; 2 uses
  %i.p = getelementptr i8, ptr %5, i64 %i.o       ; 2 uses
  %i.q = and i64 %i.e, 3
  %i.r = getelementptr i8, ptr %1, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.s  ; 2 uses
  %next.gep78 = getelementptr i8, ptr %1, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep78, align 8
  %wide.load79 = load <2 x ptr>, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8
  store <2 x ptr> %wide.load79, ptr %i.u, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i.preheader158

.lr.ph.i.i.i.i.i.preheader158:                    ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %5, %vector.scevcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.p, %middle.block ]
  %.048.i.i.i.i.i.ph = phi i64 [ %i.e, %vector.scevcheck ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.sroa.05.07.i.i.i.i.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader158, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader158 ] ; 2 uses
  %.048.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader158 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader158 ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.05.07.i.i.i.i.i, align 8
  store ptr %i.w, ptr %.09.i.i.i.i.i, align 8
  %i.x = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 8
  %i.y = getelementptr i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = add nsw i64 %.048.i.i.i.i.i, -1
  %i.aa = icmp samesign ugt i64 %.048.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, !llvm.loop !198

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.c ], [ %i.p, %middle.block ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ab = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ac = sub i64 %i.c, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3                 ; 5 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i37.preheader, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i37.preheader:                     ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i37.prol:                          ; preds = %.lr.ph.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i37.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i37.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i37.preheader ]
  %.sroa.0.09.i.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i37.prol ], [ %2, %.lr.ph.i.i.i.i.i37.preheader ]
  %.sroa.05.08.i.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i37.prol ], [ %1, %.lr.ph.i.i.i.i.i37.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i37.preheader ]
  %i.af = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.prol, i64 -8 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i37.prol, !llvm.loop !199

.lr.ph.i.i.i.i.i37.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i37.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i37.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i37.prol ]
  %.sroa.0.09.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i37.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i37.prol ]
  %.sroa.05.08.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i37.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i37.prol ]
  %i.aj = icmp ult i64 %i.ad, 8
  br i1 %i.aj, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i37

.lr.ph.i.i.i.i.i37:                               ; preds = %.lr.ph.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i37
  %.010.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i37 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i37 ], [ %.sroa.0.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i37.prol.loopexit ] ; 8 uses
  %.sroa.05.08.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i37 ], [ %.sroa.05.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i37.prol.loopexit ] ; 8 uses
  %i.ak = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -8
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -16
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -24
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -32
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -40
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -40
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -48
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -56
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -56
  store ptr %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i, i64 -64 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -64 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = add nsw i64 %.010.i.i.i.i.i, -8
  %i.bj = icmp sgt i64 %.010.i.i.i.i.i, 8
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i37, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, !llvm.loop !200

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i37, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit
  %i.bk = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.bl = ptrtoint ptr %5 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3                 ; 8 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i39.preheader, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i39.preheader:                     ; preds = %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit
  %min.iters.check89 = icmp ult i64 %i.bn, 44
  br i1 %min.iters.check89, label %.lr.ph.i.i.i.i.i39.preheader155, label %vector.scevcheck82

vector.scevcheck82:                               ; preds = %.lr.ph.i.i.i.i.i39.preheader
  %i.bp = add nsw i64 %i.bn, -1                   ; 2 uses
  %mul.result84 = shl i64 %i.bp, 3                ; 2 uses
  %mul.overflow85 = icmp ugt i64 %i.bp, 2305843009213693951
  %i.bq = getelementptr i8, ptr %0, i64 %mul.result84
  %i.br = icmp ult ptr %i.bq, %0
  %i.bs = getelementptr i8, ptr %5, i64 %mul.result84
  %i.bt = icmp ult ptr %i.bs, %5
  %i.bu = or i1 %i.bt, %mul.overflow85
  %i.bv = or i1 %i.br, %i.bu
  %i.bw = sub i64 %7, %i.ab
  %diff.check87 = icmp ugt i64 %i.bw, -32
  %or.cond149 = or i1 %i.bv, %diff.check87
  br i1 %or.cond149, label %.lr.ph.i.i.i.i.i39.preheader155, label %vector.ph90

vector.ph90:                                      ; preds = %vector.scevcheck82
  %n.vec91 = and i64 %i.bn, 4611686018427387900   ; 3 uses
  %i.bx = and i64 %i.bn, 3
  %i.by = shl i64 %n.vec91, 3                     ; 2 uses
  %i.bz = getelementptr i8, ptr %5, i64 %i.by
  %i.ca = getelementptr i8, ptr %0, i64 %i.by     ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next98, %vector.body92 ] ; 2 uses
  %i.cb = shl i64 %index93, 3                     ; 2 uses
  %next.gep94 = getelementptr i8, ptr %5, i64 %i.cb ; 2 uses
  %next.gep95 = getelementptr i8, ptr %0, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep94, i64 16
  %wide.load96 = load <2 x ptr>, ptr %next.gep94, align 8
  %wide.load97 = load <2 x ptr>, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %next.gep95, i64 16
  store <2 x ptr> %wide.load96, ptr %next.gep95, align 8
  store <2 x ptr> %wide.load97, ptr %i.cd, align 8
  %index.next98 = add nuw i64 %index93, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next98, %n.vec91
  br i1 %i.ce, label %middle.block99, label %vector.body92, !llvm.loop !201

middle.block99:                                   ; preds = %vector.body92
  %cmp.n100 = icmp eq i64 %i.bn, %n.vec91
  br i1 %cmp.n100, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i39.preheader155

.lr.ph.i.i.i.i.i39.preheader155:                  ; preds = %vector.scevcheck82, %.lr.ph.i.i.i.i.i39.preheader, %middle.block99
  %.09.i.i.i.i.i40.ph = phi i64 [ %i.bn, %vector.scevcheck82 ], [ %i.bn, %.lr.ph.i.i.i.i.i39.preheader ], [ %i.bx, %middle.block99 ]
  %.058.i.i.i.i.i.ph = phi ptr [ %5, %vector.scevcheck82 ], [ %5, %.lr.ph.i.i.i.i.i39.preheader ], [ %i.bz, %middle.block99 ]
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %0, %vector.scevcheck82 ], [ %0, %.lr.ph.i.i.i.i.i39.preheader ], [ %i.ca, %middle.block99 ]
  br label %.lr.ph.i.i.i.i.i39

.lr.ph.i.i.i.i.i39:                               ; preds = %.lr.ph.i.i.i.i.i39.preheader155, %.lr.ph.i.i.i.i.i39
  %.09.i.i.i.i.i40 = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i39 ], [ %.09.i.i.i.i.i40.ph, %.lr.ph.i.i.i.i.i39.preheader155 ] ; 2 uses
  %.058.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i39 ], [ %.058.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i39.preheader155 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i39 ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i39.preheader155 ] ; 2 uses
  %i.cf = load ptr, ptr %.058.i.i.i.i.i, align 8
  store ptr %i.cf, ptr %.sroa.0.07.i.i.i.i.i, align 8
  %i.cg = getelementptr i8, ptr %.058.i.i.i.i.i, i64 8
  %i.ch = getelementptr i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = add nsw i64 %.09.i.i.i.i.i40, -1
  %i.cj = icmp samesign ugt i64 %.09.i.i.i.i.i40, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i39, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, !llvm.loop !202

bb.d:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ck = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.cl = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 8 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i.i.i.i42.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46

.lr.ph.i.i.i.i.i42.preheader:                     ; preds = %bb.f
  %min.iters.check111 = icmp ult i64 %i.cn, 44
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i.i42.preheader153, label %vector.scevcheck104

vector.scevcheck104:                              ; preds = %.lr.ph.i.i.i.i.i42.preheader
  %i.cp = add nsw i64 %i.cn, -1                   ; 2 uses
  %mul.result106 = shl i64 %i.cp, 3               ; 2 uses
  %mul.overflow107 = icmp ugt i64 %i.cp, 2305843009213693951
  %i.cq = getelementptr i8, ptr %5, i64 %mul.result106
  %i.cr = icmp ult ptr %i.cq, %5
  %i.cs = getelementptr i8, ptr %0, i64 %mul.result106
  %i.ct = icmp ult ptr %i.cs, %0
  %i.cu = or i1 %i.ct, %mul.overflow107
  %i.cv = or i1 %i.cr, %i.cu
  %i.cw = sub i64 %i.cl, %7
  %diff.check109 = icmp ugt i64 %i.cw, -32
  %or.cond150 = or i1 %i.cv, %diff.check109
  br i1 %or.cond150, label %.lr.ph.i.i.i.i.i42.preheader153, label %vector.ph112

vector.ph112:                                     ; preds = %vector.scevcheck104
  %n.vec113 = and i64 %i.cn, 4611686018427387900  ; 3 uses
  %i.cx = shl i64 %n.vec113, 3                    ; 2 uses
  %i.cy = getelementptr i8, ptr %5, i64 %i.cx     ; 2 uses
  %i.cz = and i64 %i.cn, 3
  %i.da = getelementptr i8, ptr %0, i64 %i.cx
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next120, %vector.body114 ] ; 2 uses
  %i.db = shl i64 %index115, 3                    ; 2 uses
  %next.gep116 = getelementptr i8, ptr %5, i64 %i.db ; 2 uses
  %next.gep117 = getelementptr i8, ptr %0, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load118 = load <2 x ptr>, ptr %next.gep117, align 8
  %wide.load119 = load <2 x ptr>, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %next.gep116, i64 16
  store <2 x ptr> %wide.load118, ptr %next.gep116, align 8
  store <2 x ptr> %wide.load119, ptr %i.dd, align 8
  %index.next120 = add nuw i64 %index115, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next120, %n.vec113
  br i1 %i.de, label %middle.block121, label %vector.body114, !llvm.loop !203

middle.block121:                                  ; preds = %vector.body114
  %cmp.n122 = icmp eq i64 %i.cn, %n.vec113
  br i1 %cmp.n122, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46, label %.lr.ph.i.i.i.i.i42.preheader153

.lr.ph.i.i.i.i.i42.preheader153:                  ; preds = %vector.scevcheck104, %.lr.ph.i.i.i.i.i42.preheader, %middle.block121
  %.09.i.i.i.i.i43.ph = phi ptr [ %5, %vector.scevcheck104 ], [ %5, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.cy, %middle.block121 ]
  %.048.i.i.i.i.i44.ph = phi i64 [ %i.cn, %vector.scevcheck104 ], [ %i.cn, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.cz, %middle.block121 ]
  %.sroa.05.07.i.i.i.i.i45.ph = phi ptr [ %0, %vector.scevcheck104 ], [ %0, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.da, %middle.block121 ]
  br label %.lr.ph.i.i.i.i.i42

.lr.ph.i.i.i.i.i42:                               ; preds = %.lr.ph.i.i.i.i.i42.preheader153, %.lr.ph.i.i.i.i.i42
  %.09.i.i.i.i.i43 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i42 ], [ %.09.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i42.preheader153 ] ; 2 uses
  %.048.i.i.i.i.i44 = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i42 ], [ %.048.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i42.preheader153 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i45 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i42 ], [ %.sroa.05.07.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i42.preheader153 ] ; 2 uses
  %i.df = load ptr, ptr %.sroa.05.07.i.i.i.i.i45, align 8
  store ptr %i.df, ptr %.09.i.i.i.i.i43, align 8
  %i.dg = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i45, i64 8
  %i.dh = getelementptr i8, ptr %.09.i.i.i.i.i43, i64 8 ; 2 uses
  %i.di = add nsw i64 %.048.i.i.i.i.i44, -1
  %i.dj = icmp samesign ugt i64 %.048.i.i.i.i.i44, 1
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i42, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46, !llvm.loop !204

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46: ; preds = %.lr.ph.i.i.i.i.i42, %middle.block121, %bb.f
  %.0.lcssa.i.i.i.i.i41 = phi ptr [ %5, %bb.f ], [ %i.cy, %middle.block121 ], [ %i.dh, %.lr.ph.i.i.i.i.i42 ] ; 3 uses
  %i.dk = ptrtoint ptr %2 to i64
  %i.dl = sub i64 %i.dk, %i.ck
  %i.dm = ashr exact i64 %i.dl, 3                 ; 8 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i48.preheader, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46
  %min.iters.check133 = icmp ult i64 %i.dm, 44
  br i1 %min.iters.check133, label %.lr.ph.i.i.i.i.i48.preheader152, label %vector.scevcheck126

vector.scevcheck126:                              ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.do = add nsw i64 %i.dm, -1                   ; 2 uses
  %mul.result128 = shl i64 %i.do, 3               ; 2 uses
  %mul.overflow129 = icmp ugt i64 %i.do, 2305843009213693951
  %i.dp = getelementptr i8, ptr %0, i64 %mul.result128
  %i.dq = icmp ult ptr %i.dp, %0
  %i.dr = getelementptr i8, ptr %1, i64 %mul.result128
  %i.ds = icmp ult ptr %i.dr, %1
  %i.dt = or i1 %i.ds, %mul.overflow129
  %i.du = or i1 %i.dq, %i.dt
  %i.dv = sub i64 %i.ck, %i.cl
  %diff.check131 = icmp ugt i64 %i.dv, -32
  %or.cond151 = or i1 %i.du, %diff.check131
  br i1 %or.cond151, label %.lr.ph.i.i.i.i.i48.preheader152, label %vector.ph134

vector.ph134:                                     ; preds = %vector.scevcheck126
  %n.vec135 = and i64 %i.dm, 4611686018427387900  ; 3 uses
  %i.dw = and i64 %i.dm, 3
  %i.dx = shl i64 %n.vec135, 3                    ; 2 uses
  %i.dy = getelementptr i8, ptr %0, i64 %i.dx
  %i.dz = getelementptr i8, ptr %1, i64 %i.dx
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph134
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next142, %vector.body136 ] ; 2 uses
  %i.ea = shl i64 %index137, 3                    ; 2 uses
  %next.gep138 = getelementptr i8, ptr %0, i64 %i.ea ; 2 uses
  %next.gep139 = getelementptr i8, ptr %1, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load140 = load <2 x ptr>, ptr %next.gep139, align 8
  %wide.load141 = load <2 x ptr>, ptr %i.eb, align 8
  %i.ec = getelementptr i8, ptr %next.gep138, i64 16
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8
  store <2 x ptr> %wide.load141, ptr %i.ec, align 8
  %index.next142 = add nuw i64 %index137, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next142, %n.vec135
  br i1 %i.ed, label %middle.block143, label %vector.body136, !llvm.loop !205

middle.block143:                                  ; preds = %vector.body136
  %cmp.n144 = icmp eq i64 %i.dm, %n.vec135
  br i1 %cmp.n144, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i48.preheader152

.lr.ph.i.i.i.i.i48.preheader152:                  ; preds = %vector.scevcheck126, %.lr.ph.i.i.i.i.i48.preheader, %middle.block143
  %.09.i.i.i.i.i49.ph = phi i64 [ %i.dm, %vector.scevcheck126 ], [ %i.dm, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.dw, %middle.block143 ]
  %.sroa.0.08.i.i.i.i.i.ph = phi ptr [ %0, %vector.scevcheck126 ], [ %0, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.dy, %middle.block143 ]
  %.sroa.05.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.scevcheck126 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.dz, %middle.block143 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader152, %.lr.ph.i.i.i.i.i48
  %.09.i.i.i.i.i49 = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i48 ], [ %.09.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader152 ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.0.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i48.preheader152 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i50 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.05.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader152 ] ; 2 uses
  %i.ee = load ptr, ptr %.sroa.05.07.i.i.i.i.i50, align 8
  store ptr %i.ee, ptr %.sroa.0.08.i.i.i.i.i, align 8
  %i.ef = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i50, i64 8
  %i.eg = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i, i64 8
  %i.eh = add nsw i64 %.09.i.i.i.i.i49, -1
  %i.ei = icmp samesign ugt i64 %.09.i.i.i.i.i49, 1
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i48, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit, !llvm.loop !206

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block143, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit46
  %i.ej = ptrtoint ptr %.0.lcssa.i.i.i.i.i41 to i64
  %i.ek = ptrtoint ptr %5 to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 3                 ; 5 uses
  %i.en = icmp sgt i64 %i.em, 0
  br i1 %i.en, label %.lr.ph.i.i.i.i.i52.preheader, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit
  %xtraiter160 = and i64 %i.em, 7                 ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.lr.ph.i.i.i.i.i52.prol.loopexit, label %.lr.ph.i.i.i.i.i52.prol

.lr.ph.i.i.i.i.i52.prol:                          ; preds = %.lr.ph.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i52.prol
  %.08.i.i.i.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i52.prol ], [ %i.em, %.lr.ph.i.i.i.i.i52.preheader ]
  %.047.i.i.i.i.i.prol = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i52.prol ], [ %.0.lcssa.i.i.i.i.i41, %.lr.ph.i.i.i.i.i52.preheader ]
  %.sroa.0.06.i.i.i.i.i.prol = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i52.prol ], [ %2, %.lr.ph.i.i.i.i.i52.preheader ]
  %prol.iter162 = phi i64 [ %prol.iter162.next, %.lr.ph.i.i.i.i.i52.prol ], [ 0, %.lr.ph.i.i.i.i.i52.preheader ]
  %i.eo = getelementptr i8, ptr %.047.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.prol, i64 -8 ; 4 uses
  store ptr %i.ep, ptr %i.eq, align 8
  %i.er = add nsw i64 %.08.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter162.next = add i64 %prol.iter162, 1   ; 2 uses
  %prol.iter162.cmp.not = icmp eq i64 %prol.iter162.next, %xtraiter160
  br i1 %prol.iter162.cmp.not, label %.lr.ph.i.i.i.i.i52.prol.loopexit, label %.lr.ph.i.i.i.i.i52.prol, !llvm.loop !207

.lr.ph.i.i.i.i.i52.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i52.prol, %.lr.ph.i.i.i.i.i52.preheader
  %.08.i.i.i.i.i.unr = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.er, %.lr.ph.i.i.i.i.i52.prol ]
  %.047.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i.i.i.i.i41, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.eo, %.lr.ph.i.i.i.i.i52.prol ]
  %.sroa.0.06.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i52.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i52.prol ]
  %i.es = icmp ult i64 %i.em, 8
  br i1 %i.es, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.prol.loopexit, %.lr.ph.i.i.i.i.i52
  %.08.i.i.i.i.i = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i52 ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i52.prol.loopexit ] ; 2 uses
  %.047.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i52 ], [ %.047.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i52.prol.loopexit ] ; 8 uses
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i52 ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i52.prol.loopexit ] ; 8 uses
  %i.et = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -8
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -8
  store ptr %i.eu, ptr %i.ev, align 8
  %i.ew = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -16
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -16
  store ptr %i.ex, ptr %i.ey, align 8
  %i.ez = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -24
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -24
  store ptr %i.fa, ptr %i.fb, align 8
  %i.fc = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -32
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -32
  store ptr %i.fd, ptr %i.fe, align 8
  %i.ff = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -40
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -40
  store ptr %i.fg, ptr %i.fh, align 8
  %i.fi = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -48
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -48
  store ptr %i.fj, ptr %i.fk, align 8
  %i.fl = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -56
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -56
  store ptr %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr i8, ptr %.047.i.i.i.i.i, i64 -64 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i, i64 -64 ; 3 uses
  store ptr %i.fp, ptr %i.fq, align 8
  %i.fr = add nsw i64 %.08.i.i.i.i.i, -8
  %i.fs = icmp sgt i64 %.08.i.i.i.i.i, 8
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i52, label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit, !llvm.loop !5

bb.g:                                             ; preds = %bb.d
  %i.ft = tail call ptr @_ZNSt3_V28__rotateIN5QListIP15QTreeWidgetItemE8iteratorEEET_S6_S6_S6_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %_ZSt4moveIPP15QTreeWidgetItemN5QListIS1_E8iteratorEET0_T_S7_S6_.exit

end_hunk_2
