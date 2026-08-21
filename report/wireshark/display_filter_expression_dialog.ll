inline.NumInlined: 1375
inline.NumDeleted: 538
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN17QArrayDataPointerIP15QTreeWidgetItemE12allocateGrowERKS2_xN10QArrayData14GrowthPositionE:bb.a
  %i.ag = icmp eq i32 %3, 1
  br i1 %i.ag, label %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %1, align 8               ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE5flagsEv.exit, label %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33.thread

_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33.thread: ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = add i64 %i.al, 23
  %i.an = and i64 %i.am, -8
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  br label %bb.e

_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33: ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ad, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.b, align 8
  %i.au = add i64 %2, %i.at
  %i.av = sub i64 %i.as, %i.au
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = call noundef i64 @llvm.smax.i64(i64 %i.aw, i64 0)
  %.pr.pre = load ptr, ptr %1, align 8            ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ac, i64 %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %2 ; 2 uses
  %.not.i34 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i34, label %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE5flagsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33.thread, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33
  %i.ba = phi ptr [ %i.aq, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33.thread ], [ %i.az, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33 ]
  %.pr62 = phi ptr [ %i.ah, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33.thread ], [ %.pr.pre, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33 ]
  %i.bb = getelementptr i8, ptr %.pr62, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  br label %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE5flagsEv.exit

_ZNK17QArrayDataPointerIP15QTreeWidgetItemE5flagsEv.exit: ; preds = %bb.d, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33, %bb.e
  %i.bd = phi ptr [ %i.ba, %bb.e ], [ %i.az, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33 ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi i32 [ %i.bc, %bb.e ], [ 0, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE16freeSpaceAtBeginEv.exit33 ], [ 0, %bb.d ]
  %i.be = getelementptr i8, ptr %i.ad, i64 4
  store i32 %.sroa.0.0.i, ptr %i.be, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE22constAllocatedCapacityEv.exit31, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE5flagsEv.exit
  %.sink = phi ptr [ %i.bd, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE5flagsEv.exit ], [ %i.ac, %_ZNK17QArrayDataPointerIP15QTreeWidgetItemE22constAllocatedCapacityEv.exit31 ]
  store ptr %i.ad, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt13__stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 5 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i.preheader, label %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.g, 3
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #30 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.j, null
  br i1 %.not.i.i29, label %.lr.ph, label %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.i.i.preheader, %select.unfold.i.i
  %.010.i.i30 = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.k = icmp eq i64 %.010.i.i30, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.lr.ph
  %i.l = add nuw nsw i64 %.010.i.i30, 1
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.n, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.lr.ph, label %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit

_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit: ; preds = %.lr.ph, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %i.m, %select.unfold.i.i ], [ 0, %.lr.ph ] ; 7 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.o, %select.unfold.i.i ], [ null, %.lr.ph ] ; 5 uses
  %i.p = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.p, label %_ZNSt17_Temporary_bufferIN5QListIP15QTreeWidgetItemE8iteratorES2_EC2ES4_l.exit.thread, label %bb.d, !prof !123

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
  br i1 %i.t, label %bb.e, label %bb.f, !prof !57

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
  %3 = shl i64 %indvar.i, 3
  %4 = getelementptr i8, ptr %0, i64 %3
  %scevgep.i = getelementptr i8, ptr %4, i64 16
  %i.g = load ptr, ptr %.sroa.0.022.i, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = tail call noundef zeroext i1 %2(ptr noundef %i.g, ptr noundef %i.h), !inline_history !125
  %i.j = load ptr, ptr %.sroa.0.022.i, align 8    ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = ptrtoint ptr %.sroa.0.022.i to i64
  %i.l = sub i64 %i.k, %i.b                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.c
  %i.o = mul nsw i64 %i.m, -8                     ; 2 uses
  %scevgep24.i.a = getelementptr i8, ptr %scevgep.i, i64 %i.o
  %scevgep25.i = getelementptr i8, ptr %.sroa.0.022.i, i64 %i.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep24.i.a, ptr align 8 %scevgep25.i, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %.pn21.i, align 8
  %i.q = tail call noundef zeroext i1 %2(ptr noundef %i.j, ptr noundef %i.p), !inline_history !126
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.d ] ; 4 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i, %bb.d ]
  %i.r = load ptr, ptr %.sroa.0.010.i.i, align 8
  store ptr %i.r, ptr %.sroa.05.09.i.i, align 8
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.s = load ptr, ptr %.sroa.0.0.i.i, align 8
  %i.t = tail call noundef zeroext i1 %2(ptr noundef %i.j, ptr noundef %i.s), !inline_history !126
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i, !llvm.loop !127

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.d, %.lr.ph.i.i.i.i.i.preheader.i, %bb.c
  %.sink.i = phi ptr [ %0, %bb.c ], [ %0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.0.022.i, %bb.d ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.j, ptr %.sink.i, align 8
  %.sroa.0.0.i = getelementptr i8, ptr %.sroa.0.022.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %1
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %.not.i, label %common.ret25, label %.lr.ph.i, !llvm.loop !128

common.ret25:                                     ; preds = %bb.b, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i, %bb.e
  ret void

bb.e:                                             ; preds = %bb.a
  %i.u = lshr i64 %i.d, 1                         ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %0, i64 %i.u ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %0, ptr %i.v, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_(ptr %i.v, ptr %1, ptr %2)
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.a, %i.w
  %i.y = ashr exact i64 %i.x, 3
  tail call void @_ZSt22__merge_without_bufferIN5QListIP15QTreeWidgetItemE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_SD_T0_SE_T1_(ptr %0, ptr %i.v, ptr %1, i64 noundef %i.u, i64 noundef %i.y, ptr %2)
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
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader144, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  %mul.result = shl i64 %i.h, 3                   ; 2 uses
  %mul.overflow = icmp ugt i64 %i.h, 2305843009213693951
  %i.i = getelementptr i8, ptr %5, i64 %mul.result
  %i.j = icmp ult ptr %i.i, %5
  %i.k = getelementptr i8, ptr %0, i64 %mul.result
  %i.l = icmp ult ptr %i.k, %0
  %i.m = or i1 %i.l, %mul.overflow
  %i.n = or i1 %i.j, %i.m
  %i.o = sub i64 %i.d, %i.a
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = or i1 %i.n, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader144, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.f, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %5, i64 %i.p       ; 2 uses
  %i.r = and i64 %i.f, 3
  %i.s = getelementptr i8, ptr %0, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.t  ; 2 uses
  %next.gep81 = getelementptr i8, ptr %0, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep81, align 8
  %wide.load82 = load <2 x ptr>, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8
  store <2 x ptr> %wide.load82, ptr %i.v, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.i.preheader144

.lr.ph.i.i.i.i.i.preheader144:                    ; preds = %vector.scevcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %5, %vector.scevcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.048.i.i.i.i.i.ph = phi i64 [ %i.f, %vector.scevcheck ], [ %i.f, %.lr.ph.i.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  %.sroa.05.07.i.i.i.i.i.ph = phi ptr [ %0, %vector.scevcheck ], [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader144, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader144 ] ; 2 uses
  %.048.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader144 ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader144 ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.05.07.i.i.i.i.i, align 8
  store ptr %i.x, ptr %.09.i.i.i.i.i, align 8
  %i.y = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i, i64 8
  %i.z = getelementptr i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = add nsw i64 %.048.i.i.i.i.i, -1
  %i.ab = icmp samesign ugt i64 %.048.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, !llvm.loop !132

_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa80 = phi ptr [ %i.q, %middle.block ], [ %i.z, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.not25.i = icmp eq ptr %5, %.lcssa80
  br i1 %.not25.i, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit, %bb.c
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 2 uses
  %.028.i = phi ptr [ %.1.i, %bb.c ], [ %5, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 12 uses
  %.sroa.018.027.i = phi ptr [ %.sroa.018.1.i, %bb.c ], [ %1, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 4 uses
  %.sroa.015.026.i = phi ptr [ %i.af, %bb.c ], [ %0, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit ] ; 9 uses
  %.not21.i = icmp eq ptr %.sroa.018.027.i, %2
  br i1 %.not21.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ac = load ptr, ptr %.sroa.018.027.i, align 8
  %i.ad = load ptr, ptr %.028.i, align 8
  %i.ae = tail call noundef zeroext i1 %i.b(ptr noundef %i.ac, ptr noundef %i.ad), !inline_history !133 ; 3 uses
  %.sink.in.i = select i1 %i.ae, ptr %.sroa.018.027.i, ptr %.028.i
  %.sroa.018.1.idx.i = select i1 %i.ae, i64 8, i64 0
  %.sroa.018.1.i = getelementptr i8, ptr %.sroa.018.027.i, i64 %.sroa.018.1.idx.i
  %.1.idx.i = select i1 %i.ae, i64 0, i64 8
  %.1.i = getelementptr i8, ptr %.028.i, i64 %.1.idx.i ; 2 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8
  store ptr %.sink.i, ptr %.sroa.015.026.i, align 8
  %i.af = getelementptr i8, ptr %.sroa.015.026.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %.lcssa80
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !134

.critedge.i:                                      ; preds = %.lr.ph.i
  %.028.i90.le = ptrtoaddr ptr %.028.i to i64
  %i.ag = ptrtoint ptr %.lcssa80 to i64
  %i.ah = ptrtoint ptr %.028.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 9 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %min.iters.check93 = icmp ult i64 %i.aj, 48
  br i1 %min.iters.check93, label %.lr.ph.i.i.i.i.i.i.preheader137, label %vector.scevcheck85

vector.scevcheck85:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.al = add nsw i64 %i.aj, -1                   ; 2 uses
  %mul.result87 = shl i64 %i.al, 3                ; 2 uses
  %mul.overflow88 = icmp ugt i64 %i.al, 2305843009213693951
  %i.am = getelementptr i8, ptr %.sroa.015.026.i, i64 %mul.result87
  %i.an = icmp ult ptr %i.am, %.sroa.015.026.i
  %i.ao = getelementptr i8, ptr %.028.i, i64 %mul.result87
  %i.ap = icmp ult ptr %i.ao, %.028.i
  %i.aq = or i1 %i.ap, %mul.overflow88
  %i.ar = or i1 %i.an, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.preheader137, label %vector.memcheck89

vector.memcheck89:                                ; preds = %vector.scevcheck85
  %i.as = shl i64 %indvar, 3
  %i.at = add i64 %i.as, %i.d
  %i.au = sub i64 %.028.i90.le, %i.at
  %diff.check91 = icmp ugt i64 %i.au, -32
  br i1 %diff.check91, label %.lr.ph.i.i.i.i.i.i.preheader137, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck89
  %n.vec95 = and i64 %i.aj, 4611686018427387900   ; 3 uses
  %i.av = and i64 %i.aj, 3
  %i.aw = shl i64 %n.vec95, 3                     ; 2 uses
  %i.ax = getelementptr i8, ptr %.028.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %.sroa.015.026.i, i64 %i.aw
  br label %vector.body96

end_hunk_0
begin_hunk_1_@_ZSt16__merge_adaptiveIN5QListIP15QTreeWidgetItemE8iteratorExPS2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_SA_EEEEvT_SE_SE_T0_SF_T1_T2_:bb.a
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  store ptr %i.cp, ptr %i.cq, align 8
  %i.cr = add nsw i64 %.08.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter148.next = add i64 %prol.iter148, 1   ; 2 uses
  %prol.iter148.cmp.not = icmp eq i64 %prol.iter148.next, %xtraiter146
  br i1 %prol.iter148.cmp.not, label %.lr.ph.i.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i.i29.prol, !llvm.loop !139

.lr.ph.i.i.i.i.i.i29.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i29.prol, %.lr.ph.i.i.i.i.i.i29.preheader
  %.08.i.i.i.i.i.i.unr = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.i29.prol ]
  %.047.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.co, %.lr.ph.i.i.i.i.i.i29.prol ]
  %.sroa.0.06.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.i29.prol ]
  %i.cs = icmp ult i64 %i.cm, 8
  br i1 %i.cs, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29.prol.loopexit, %.lr.ph.i.i.i.i.i.i29
  %.08.i.i.i.i.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i.i29 ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 2 uses
  %.047.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i29 ], [ %.047.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 8 uses
  %.sroa.0.06.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i29 ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 8 uses
  %i.ct = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -8
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -16
  store ptr %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -24
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -24
  store ptr %i.da, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -32
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -32
  store ptr %i.dd, ptr %i.de, align 8
  %i.df = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -40
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -40
  store ptr %i.dg, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -48
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -48
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -56
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -56
  store ptr %i.dm, ptr %i.dn, align 8
  %i.do = getelementptr i8, ptr %.047.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -64 ; 2 uses
  store ptr %i.dp, ptr %i.dq, align 8
  %i.dr = add nsw i64 %.08.i.i.i.i.i.i, -8
  %i.ds = icmp sgt i64 %.08.i.i.i.i.i.i, 8
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.i29, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, !llvm.loop !141

bb.f:                                             ; preds = %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit27
  %i.dt = icmp eq ptr %5, %.0.lcssa.i.i.i.i.i22
  br i1 %i.dt, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.du = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i22, i64 -8
  br label %.outer

.outer:                                           ; preds = %bb.i, %bb.g
  %.sroa.026.0.i.ph = phi ptr [ %2, %bb.g ], [ %i.dy, %bb.i ]
  %.sroa.030.0.i.ph.pn = phi ptr [ %1, %bb.g ], [ %.sroa.030.0.i.ph, %bb.i ]
  %.0.i.ph = phi ptr [ %i.du, %bb.g ], [ %.0.i, %bb.i ]
  %.sroa.030.0.i.ph = getelementptr i8, ptr %.sroa.030.0.i.ph.pn, i64 -8 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.l
  %.sroa.026.0.i = phi ptr [ %i.dy, %bb.l ], [ %.sroa.026.0.i.ph, %.outer ]
  %.0.i = phi ptr [ %i.fo, %bb.l ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.dv = load ptr, ptr %.0.i, align 8
  %i.dw = load ptr, ptr %.sroa.030.0.i.ph, align 8
  %i.dx = tail call noundef zeroext i1 %i.b(ptr noundef %i.dv, ptr noundef %i.dw), !inline_history !142
  %i.dy = getelementptr i8, ptr %.sroa.026.0.i, i64 -8 ; 6 uses
  br i1 %i.dx, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dz = load ptr, ptr %.sroa.030.0.i.ph, align 8
  store ptr %i.dz, ptr %i.dy, align 8
  %i.ea = icmp eq ptr %0, %.sroa.030.0.i.ph
  br i1 %i.ea, label %bb.j, label %.outer, !llvm.loop !143

bb.j:                                             ; preds = %bb.i
  %i.eb = getelementptr i8, ptr %.0.i, i64 8      ; 3 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %5 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3                 ; 5 uses
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i21.i.preheader, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit

.lr.ph.i.i.i.i.i21.i.preheader:                   ; preds = %bb.j
  %xtraiter = and i64 %i.ef, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.prol

.lr.ph.i.i.i.i.i21.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i21.i.preheader, %.lr.ph.i.i.i.i.i21.i.prol
  %.08.i.i.i.i.i22.i.prol = phi i64 [ %i.ek, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.ef, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %.047.i.i.i.i.i23.i.prol = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.eb, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %.sroa.0.06.i.i.i.i.i24.i.prol = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i21.i.prol ], [ %i.dy, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i21.i.prol ], [ 0, %.lr.ph.i.i.i.i.i21.i.preheader ]
  %i.eh = getelementptr i8, ptr %.047.i.i.i.i.i23.i.prol, i64 -8 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i.prol, i64 -8 ; 3 uses
  store ptr %i.ei, ptr %i.ej, align 8
  %i.ek = add nsw i64 %.08.i.i.i.i.i22.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i.i.i21.i.prol, !llvm.loop !144

.lr.ph.i.i.i.i.i21.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i21.i.prol, %.lr.ph.i.i.i.i.i21.i.preheader
  %.08.i.i.i.i.i22.i.unr = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i21.i.prol ]
  %.047.i.i.i.i.i23.i.unr = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i21.i.prol ]
  %.sroa.0.06.i.i.i.i.i24.i.unr = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i21.i.prol ]
  %i.el = icmp ult i64 %i.ef, 8
  br i1 %i.el, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i.i.i.i.i21.i

.lr.ph.i.i.i.i.i21.i:                             ; preds = %.lr.ph.i.i.i.i.i21.i.prol.loopexit, %.lr.ph.i.i.i.i.i21.i
  %.08.i.i.i.i.i22.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i21.i ], [ %.08.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 2 uses
  %.047.i.i.i.i.i23.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i21.i ], [ %.047.i.i.i.i.i23.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 8 uses
  %.sroa.0.06.i.i.i.i.i24.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i21.i ], [ %.sroa.0.06.i.i.i.i.i24.i.unr, %.lr.ph.i.i.i.i.i21.i.prol.loopexit ] ; 8 uses
  %i.em = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i, i64 -8
  store ptr %i.en, ptr %i.eo, align 8
  %i.ep = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -16
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i, i64 -16
  store ptr %i.eq, ptr %i.er, align 8
  %i.es = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -24
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i, i64 -24
  store ptr %i.et, ptr %i.eu, align 8
  %i.ev = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -32
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i, i64 -32
  store ptr %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -40
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i, i64 -40
  store ptr %i.ez, ptr %i.fa, align 8
  %i.fb = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -48
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i, i64 -48
  store ptr %i.fc, ptr %i.fd, align 8
  %i.fe = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -56
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i, i64 -56
  store ptr %i.ff, ptr %i.fg, align 8
  %i.fh = getelementptr i8, ptr %.047.i.i.i.i.i23.i, i64 -64 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr i8, ptr %.sroa.0.06.i.i.i.i.i24.i, i64 -64 ; 2 uses
  store ptr %i.fi, ptr %i.fj, align 8
  %i.fk = add nsw i64 %.08.i.i.i.i.i22.i, -8
  %i.fl = icmp sgt i64 %.08.i.i.i.i.i22.i, 8
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i21.i, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, !llvm.loop !141

bb.k:                                             ; preds = %bb.h
  %i.fm = load ptr, ptr %.0.i, align 8
  store ptr %i.fm, ptr %i.dy, align 8
  %i.fn = icmp eq ptr %5, %.0.i
  br i1 %i.fn, label %_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fo = getelementptr i8, ptr %.0.i, i64 -8
  br label %bb.h, !llvm.loop !143

_ZSt21__move_merge_adaptiveIPP15QTreeWidgetItemN5QListIS1_E8iteratorES5_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS0_SA_EEEEvT_SE_T0_SF_T1_T2_.exit: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i.i.i21.i.prol.loopexit, %.lr.ph.i.i.i.i.i21.i, %.lr.ph.i.i.i.i.i.i29.prol.loopexit, %.lr.ph.i.i.i.i.i.i29, %middle.block103, %bb.b, %bb.j, %bb.f, %bb.e, %.critedge.i, %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZSt22__chunk_insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %.not34 = icmp slt i64 %i.d, %2
  br i1 %.not34, label %._crit_edge, label %.lr.ph

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
  %i.i = phi i64 [ %i.y, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.031.035 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 7 uses
  %i.j = getelementptr i8, ptr %.sroa.031.035, i64 %.idx ; 4 uses
  %.sroa.0.019.i = getelementptr i8, ptr %.sroa.031.035, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i
  %indvar.i = phi i64 [ %indvar.next.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.022.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ %.sroa.0.019.i, %.lr.ph.i.preheader ] ; 8 uses
  %.pn21.i = phi ptr [ %.sroa.0.022.i, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i ], [ %.sroa.031.035, %.lr.ph.i.preheader ] ; 2 uses
  %4 = shl nuw i64 %indvar.i, 3
  %5 = getelementptr i8, ptr %.sroa.031.035, i64 %4
  %scevgep.i = getelementptr i8, ptr %5, i64 16
  %i.k = load ptr, ptr %.sroa.0.022.i, align 8
  %i.l = load ptr, ptr %.sroa.031.035, align 8
  %i.m = tail call noundef zeroext i1 %3(ptr noundef %i.k, ptr noundef %i.l), !inline_history !125
  %i.n = load ptr, ptr %.sroa.0.022.i, align 8    ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = ptrtoint ptr %.sroa.0.022.i to i64
  %i.p = sub i64 %i.o, %i.i                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.s = mul nsw i64 %i.q, -8                     ; 2 uses
  %scevgep24.i.a = getelementptr i8, ptr %scevgep.i, i64 %i.s
  %scevgep25.i = getelementptr i8, ptr %.sroa.0.022.i, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep24.i.a, ptr align 8 %scevgep25.i, i64 %i.p, i1 false)
  br label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = load ptr, ptr %.pn21.i, align 8
  %i.u = tail call noundef zeroext i1 %3(ptr noundef %i.n, ptr noundef %i.t), !inline_history !126
  br i1 %i.u, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn21.i, %bb.c ] ; 4 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.022.i, %bb.c ]
  %i.v = load ptr, ptr %.sroa.0.010.i.i, align 8
  store ptr %i.v, ptr %.sroa.05.09.i.i, align 8
  %.sroa.0.0.i.i = getelementptr i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.w = load ptr, ptr %.sroa.0.0.i.i, align 8
  %i.x = tail call noundef zeroext i1 %3(ptr noundef %i.n, ptr noundef %i.w), !inline_history !126
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i, !llvm.loop !127

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.c, %.lr.ph.i.i.i.i.i.preheader.i, %bb.b
  %.sink.i = phi ptr [ %.sroa.031.035, %bb.b ], [ %.sroa.031.035, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.0.022.i, %bb.c ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.n, ptr %.sink.i, align 8
  %.sroa.0.0.i = getelementptr i8, ptr %.sroa.0.022.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !128

_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit: ; preds = %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i
  %i.y = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.z = sub i64 %i.a, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %.not = icmp slt i64 %i.aa, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !145

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us, %bb.a
  %.sroa.031.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.us ], [ %i.y, %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit.loopexit ]
  %i.ab = icmp eq ptr %.sroa.031.0.lcssa, %1
  %.sroa.0.019.i11 = getelementptr i8, ptr %.sroa.031.0.lcssa, i64 8 ; 2 uses
  %.not20.i12 = icmp eq ptr %.sroa.0.019.i11, %1
  %or.cond33 = or i1 %i.ab, %.not20.i12
  br i1 %or.cond33, label %_ZSt16__insertion_sortIN5QListIP15QTreeWidgetItemE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS1_S9_EEEEvT_SD_T0_.exit30, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %._crit_edge, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18
  %indvar.i14 = phi i64 [ %indvar.next.i22, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18 ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.0.022.i15 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18 ], [ %.sroa.0.019.i11, %._crit_edge ] ; 8 uses
  %.pn21.i16 = phi ptr [ %.sroa.0.022.i15, %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18 ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 2 uses
  %6 = shl i64 %indvar.i14, 3
  %7 = getelementptr i8, ptr %.sroa.031.0.lcssa, i64 %6
  %scevgep.i17 = getelementptr i8, ptr %7, i64 16
  %i.ac = load ptr, ptr %.sroa.0.022.i15, align 8
  %i.ad = load ptr, ptr %.sroa.031.0.lcssa, align 8
  %i.ae = tail call noundef zeroext i1 %3(ptr noundef %i.ac, ptr noundef %i.ad), !inline_history !125
  %i.af = load ptr, ptr %.sroa.0.022.i15, align 8 ; 3 uses
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i13
  %i.ag = ptrtoint ptr %.sroa.0.022.i15 to i64
  %i.ah = sub i64 %i.ag, %.lcssa                  ; 2 uses
  %i.ai = ashr exact i64 %i.ah, 3                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.preheader.i27, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18

.lr.ph.i.i.i.i.i.preheader.i27:                   ; preds = %bb.d
  %i.ak = mul nsw i64 %i.ai, -8                   ; 2 uses
  %scevgep24.i28 = getelementptr i8, ptr %scevgep.i17, i64 %i.ak
  %scevgep25.i29 = getelementptr i8, ptr %.sroa.0.022.i15, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep24.i28, ptr align 8 %scevgep25.i29, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18

bb.e:                                             ; preds = %.lr.ph.i13
  %i.al = load ptr, ptr %.pn21.i16, align 8
  %i.am = tail call noundef zeroext i1 %3(ptr noundef %i.af, ptr noundef %i.al), !inline_history !126
  br i1 %i.am, label %.lr.ph.i.i23, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18

.lr.ph.i.i23:                                     ; preds = %bb.e, %.lr.ph.i.i23
  %.sroa.0.010.i.i24 = phi ptr [ %.sroa.0.0.i.i26, %.lr.ph.i.i23 ], [ %.pn21.i16, %bb.e ] ; 4 uses
  %.sroa.05.09.i.i25 = phi ptr [ %.sroa.0.010.i.i24, %.lr.ph.i.i23 ], [ %.sroa.0.022.i15, %bb.e ]
  %i.an = load ptr, ptr %.sroa.0.010.i.i24, align 8
  store ptr %i.an, ptr %.sroa.05.09.i.i25, align 8
  %.sroa.0.0.i.i26 = getelementptr i8, ptr %.sroa.0.010.i.i24, i64 -8 ; 2 uses
  %i.ao = load ptr, ptr %.sroa.0.0.i.i26, align 8
  %i.ap = tail call noundef zeroext i1 %3(ptr noundef %i.af, ptr noundef %i.ao), !inline_history !126
  br i1 %i.ap, label %.lr.ph.i.i23, label %_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18, !llvm.loop !127

_ZSt13move_backwardIN5QListIP15QTreeWidgetItemE8iteratorES4_ET0_T_S6_S5_.exit.i18: ; preds = %.lr.ph.i.i23, %bb.e, %.lr.ph.i.i.i.i.i.preheader.i27, %bb.d
  %.sink.i19 = phi ptr [ %.sroa.031.0.lcssa, %bb.d ], [ %.sroa.031.0.lcssa, %.lr.ph.i.i.i.i.i.preheader.i27 ], [ %.sroa.0.022.i15, %bb.e ], [ %.sroa.0.010.i.i24, %.lr.ph.i.i23 ]
  store ptr %i.af, ptr %.sink.i19, align 8
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
  br i1 %i.aj, label %middle.block121, label %vector.body114, !llvm.loop !148

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
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN5QListIP15QTreeWidgetItemE8iteratorEPS2_ET0_T_S7_S6_.exit.i, !llvm.loop !149

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
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !150

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
end_hunk_1
