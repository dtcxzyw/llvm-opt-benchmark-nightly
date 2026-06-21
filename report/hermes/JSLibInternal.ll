inline.NumInlined: 2564
inline.NumDeleted: 1401
begin_hunk_0_@_ZNK6hermes5regex8GoalNode6isGoalEv:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex8GoalNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !81     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !tbaa !32
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.c, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !81
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !83
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %.pre.i, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !580
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not49 = icmp ult i64 %i.g, %2
  br i1 %.not49, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !32      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !32
  store i8 %i.q, ptr %i.d, align 1, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !83
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !32
  store i8 %i.z, ptr %i.y, align 1, !tbaa !32
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.j, %bb.i, %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.k:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.ac, %bb.l ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !83
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !47

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.o, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %1, align 1, !tbaa !32
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !83
  %.not.i.i.i51 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i51, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.q:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !81    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #19
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.s
  %i.au = phi ptr [ %i.at, %bb.s ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.t, label %bb.u, !prof !47

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit54
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !32
  store i8 %i.az, ptr %i.au, align 1, !tbaa !32
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.w, label %bb.x, !prof !47

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.y, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

bb.y:                                             ; preds = %bb.x
  %i.be = load i8, ptr %1, align 1, !tbaa !32
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !32
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.w, %bb.x, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i56 = icmp eq ptr %i.ai, null
  br i1 %.not.i56, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.bg = sub i64 %i.e, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bg) #17
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55, %bb.z
  store ptr %i.au, ptr %0, align 8, !tbaa !81
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !458
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.p, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE15_M_range_insertIPS6_EEvN9__gnu_cxx17__normal_iteratorISA_S8_EET_SE_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !551
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !552  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre61 = load ptr, ptr %i.g, align 8, !tbaa !552
  br label %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !546
  store ptr %i.u, ptr %i.h, align 8, !tbaa !546
  br label %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit

_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre61, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !552
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !546
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !546
  br label %_ZSt13move_backwardIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_ET0_T_SA_S9_.exit

_ZSt13move_backwardIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_ET0_T_SA_S9_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZSt13move_backwardIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_ET0_T_SA_S9_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_ET0_T_SA_S9_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8, !tbaa !546
  store ptr %i.ag, ptr %1, align 8, !tbaa !546
  br label %_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit

_ZSt9__advanceIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !47

bb.n:                                             ; preds = %_ZSt9__advanceIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !552
  br label %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !546
  store ptr %i.an, ptr %i.h, align 8, !tbaa !546
  br label %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !552
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !47

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre60 = load ptr, ptr %i.g, align 8, !tbaa !552
  br label %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %1, align 8, !tbaa !546
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !546
  br label %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit47

_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre60, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !552
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !47

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit47
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr %2, align 8, !tbaa !546
  store ptr %i.ax, ptr %1, align 8, !tbaa !546
  br label %_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !548   ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNKSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #19
  br label %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPS_IPN6hermes5regex4NodeESaIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !47

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !546
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !546
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ac, label %bb.ad, !prof !47

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load ptr, ptr %2, align 8, !tbaa !546
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !546
  br label %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !47

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_S7_ET0_T_SA_S9_RSaIT1_E.exit49
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.by = load ptr, ptr %1, align 8, !tbaa !546
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !546
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i51 = icmp eq ptr %i.ay, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #17
  br label %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EES8_SaIS7_EET0_T_SB_SA_RT1_.exit50, %bb.ai
  store ptr %i.bk, ptr %0, align 8, !tbaa !548
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !552
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !551
  br label %_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit

_ZSt4copyIPPSt6vectorIPN6hermes5regex4NodeESaIS4_EEN9__gnu_cxx17__normal_iteratorIS8_S0_IS7_SaIS7_EEEEET0_T_SF_SE_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPSt6vectorIPN6hermes5regex4NodeESaIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex13MatchCharNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvh11SmallVectorIjLj5EED2Ev.exit

_ZN4llvh11SmallVectorIjLj5EED2Ev.exit:            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex13MatchCharNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6hermes5regex13MatchCharNodeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN6hermes5regex13MatchCharNodeD2Ev.exit

_ZN6hermes5regex13MatchCharNodeD2Ev.exit:         ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex13MatchCharNode26matchesExactlyOneCharacterEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = icmp ult i32 %i.f, 65536
  br i1 %i.g, label %bb.c, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.i = load i8, ptr %i.h, align 1, !tbaa !565, !range !486, !noundef !583
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.f, 63488
  %switch.selectcmp.i = icmp ne i32 %i.k, 55296
  br label %_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit

_ZNK6hermes5regex13MatchCharNode31mayRequireDecodingSurrogatePairEj.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %switch.selectcmp.i, %bb.d ], [ true, %bb.c ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex13MatchCharNode21tryCoalesceCharactersEPN4llvh11SmallVectorIjLj5EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = sub nsw i64 %i.h, %i.k
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add nuw nsw i64 %i.k, %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.o, i64 noundef %i.n, i64 noundef 4) #16
  %.pre7.pre.i = load i32, ptr %i.i, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre7.i = phi i32 [ %.pre7.pre.i, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !50
  %i.q = zext i32 %.pre7.i to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 4 %i.b, i64 %.idx, i1 false)
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !52
  br label %_ZN4llvh15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit

_ZN4llvh15SmallVectorImplIjE6appendIPKjvEEvT_S5_.exit: ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %.pre7.i, %bb.c ], [ %.pre.i, %bb.d ]
  %i.t = add i32 %i.s, %i.d
  store i32 %i.t, ptr %i.i, align 8, !tbaa !52
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex13MatchCharNode16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !52
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.g = lshr i64 %i.e, 2                         ; 3 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %i.h = shl nuw nsw i64 %i.g, 4                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.h
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %.047.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.b, %.lr.ph.i.i.i.i.preheader ] ; 9 uses
  %i.i = load i32, ptr %.02946.i.i.i.i, align 4, !tbaa !3
  %i.j = icmp ult i32 %i.i, 128
  br i1 %i.j, label %bb.b, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = icmp ult i32 %i.l, 128
  br i1 %i.m, label %bb.c, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = icmp ult i32 %i.o, 128
  br i1 %i.p, label %bb.d, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit14

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp ult i32 %i.r, 128
  br i1 %i.s, label %bb.e, label %_ZSt6all_ofIPKjPFbjEEbT_S4_T0_.exit.loopexit.split.loop.exit16

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.u = add nsw i64 %.047.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !584

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %gepdiff = sub nsw i64 %.idx, %i.h
  %i.w = ashr exact i64 %gepdiff, 2
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
end_hunk_0
begin_hunk_1_@_ZN6hermes5regex4Node7compileERKSt6vectorIPS1_SaIS3_EERNS0_19RegexBytecodeStreamE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !458
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !32
  store i8 %i.s, ptr %i.g, align 1, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !83
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !32
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !32
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.ad, ptr %1, align 1, !tbaa !32
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !47

bb.n:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !32
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !32
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !83
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !47

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !32
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !32
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !83
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !47

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.au, ptr %1, align 1, !tbaa !32
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !81    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !47

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !32
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !32
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !47

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !32
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !47

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1, !tbaa !32
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !32
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i51 = icmp eq ptr %i.av, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #17
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bf, ptr %0, align 8, !tbaa !81
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !458
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEEvNS9_IPS3_S5_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef dead_on_return %2, ptr noundef dead_on_return %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.0.0.copyload.i2.i.i = load ptr, ptr %3, align 8 ; 2 uses
  %.not68 = icmp eq ptr %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i2.i.i
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i2.i.i to i64 ; 2 uses
  br i1 %.not68, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEENS2_IPS6_SB_EEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.c = sub i64 %i.b, %i.a                       ; 6 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !482
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !501  ; 11 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 5 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8
  br i1 %i.s, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !501
  br label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !476
  store ptr %i.u, ptr %i.h, align 8, !tbaa !476
  br label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre71, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !501
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !476
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !476
  br label %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.af = load i64, ptr %2, align 8, !tbaa !514   ; 2 uses
  %i.ag = load i64, ptr %3, align 8, !tbaa !514
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.preheader.i, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEENS2_IPS6_SB_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit
  %i.ak = inttoptr i64 %i.af to ptr               ; 2 uses
  %xtraiter92 = and i64 %i.ai, 7                  ; 2 uses
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.prol
  %i.al = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.ak, %.lr.ph.i.i.i.i.preheader.i ]
  %.06.i.i.i.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.prol ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i ]
  %.045.i.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter94 = phi i64 [ %prol.iter94.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !476
  store ptr %i.an, ptr %.045.i.i.i.i.i.prol, align 8, !tbaa !476
  %i.ao = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ap = add nsw i64 %.06.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter94.next = add i64 %prol.iter94, 1     ; 2 uses
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !622

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i
  %.unr95 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader.i ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %.045.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ai, 8
  br i1 %i.aq, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEENS2_IPS6_SB_EEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.ar = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.unr95, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %.045.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !476
  store ptr %i.at, ptr %.045.i.i.i.i.i, align 8, !tbaa !476
  %i.au = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 8
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !476
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !476
  %i.ax = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 16
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 -24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !476
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !476
  %i.ba = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 24
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !476
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !476
  %i.bd = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 32
  %i.be = getelementptr inbounds i8, ptr %i.ar, i64 -40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !476
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !476
  %i.bg = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 40
  %i.bh = getelementptr inbounds i8, ptr %i.ar, i64 -48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !476
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !476
  %i.bj = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 48
  %i.bk = getelementptr inbounds i8, ptr %i.ar, i64 -56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !476
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !476
  %i.bm = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 56
  %i.bn = getelementptr inbounds i8, ptr %i.ar, i64 -64 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !476
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !476
  %i.bp = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 64
  %i.bq = add nsw i64 %.06.i.i.i.i.i, -8
  %i.br = icmp sgt i64 %.06.i.i.i.i.i, 8
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEENS2_IPS6_SB_EEET0_T_SH_SG_.exit, !llvm.loop !623

_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bs = icmp eq i64 %i.m, 8
  %i.bt = sub nsw i64 0, %i.n
  %i.bu = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.bt ; 3 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bw = sub i64 %i.bv, %i.a
  %i.bx = ashr exact i64 %i.bw, 3                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %xtraiter = and i64 %i.bx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.06.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.045.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !476
  store ptr %i.cb, ptr %.045.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !476
  %i.cc = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.cd = add nsw i64 %.06.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !624

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.unr = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.045.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ce = icmp ult i64 %i.bx, 8
  br i1 %i.ce, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cf = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i.i.i.i = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !476
  store ptr %i.ch, ptr %.045.i.i.i.i.i.i.i.i, align 8, !tbaa !476
  %i.ci = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 8
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !476
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !476
  %i.cl = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 16
  %i.cm = getelementptr inbounds i8, ptr %i.cf, i64 -24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !476
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !476
  %i.co = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 24
  %i.cp = getelementptr inbounds i8, ptr %i.cf, i64 -32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !476
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !476
  %i.cr = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 32
  %i.cs = getelementptr inbounds i8, ptr %i.cf, i64 -40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !476
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !476
  %i.cu = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 40
  %i.cv = getelementptr inbounds i8, ptr %i.cf, i64 -48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !476
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !476
  %i.cx = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 48
  %i.cy = getelementptr inbounds i8, ptr %i.cf, i64 -56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !476
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !476
  %i.da = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 56
  %i.db = getelementptr inbounds i8, ptr %i.cf, i64 -64 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !476
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !476
  %i.dd = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 64
  %i.de = add nsw i64 %.06.i.i.i.i.i.i.i.i, -8
  %i.df = icmp sgt i64 %.06.i.i.i.i.i.i.i.i, 8
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit, !llvm.loop !623

_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dg = sub nuw nsw i64 %i.d, %i.n
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dg ; 5 uses
  store ptr %i.dh, ptr %i.g, align 8, !tbaa !501
  %i.di = icmp sgt i64 %i.m, 8
  br i1 %i.di, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dh, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !501
  br label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit
  br i1 %i.bs, label %bb.m, label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33

bb.m:                                             ; preds = %bb.l
  %i.dj = load ptr, ptr %1, align 8, !tbaa !476
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !476
  br label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33

_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33: ; preds = %bb.k, %bb.l, %bb.m
  %i.dk = phi ptr [ %.pre, %bb.k ], [ %i.dh, %bb.l ], [ %i.dh, %bb.m ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.m
  store ptr %i.dl, ptr %i.g, align 8, !tbaa !501
  %i.dm = load i64, ptr %2, align 8, !tbaa !514   ; 2 uses
  %i.dn = sub i64 %i.dm, %i.bv
  %i.do = ashr exact i64 %i.dn, 3                 ; 5 uses
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i.i.i.i.preheader.i35, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEENS2_IPS6_SB_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.preheader.i35:                     ; preds = %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33
  %i.dq = inttoptr i64 %i.dm to ptr               ; 2 uses
  %xtraiter88 = and i64 %i.do, 7                  ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i36.prol

.lr.ph.i.i.i.i.i36.prol:                          ; preds = %.lr.ph.i.i.i.i.preheader.i35, %.lr.ph.i.i.i.i.i36.prol
  %i.dr = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i36.prol ], [ %i.dq, %.lr.ph.i.i.i.i.preheader.i35 ]
  %.06.i.i.i.i.i37.prol = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i36.prol ], [ %i.do, %.lr.ph.i.i.i.i.preheader.i35 ]
  %.045.i.i.i.i.i38.prol = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i36.prol ], [ %1, %.lr.ph.i.i.i.i.preheader.i35 ] ; 2 uses
  %prol.iter90 = phi i64 [ %prol.iter90.next, %.lr.ph.i.i.i.i.i36.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i35 ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !476
  store ptr %i.dt, ptr %.045.i.i.i.i.i38.prol, align 8, !tbaa !476
  %i.du = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38.prol, i64 8 ; 2 uses
  %i.dv = add nsw i64 %.06.i.i.i.i.i37.prol, -1   ; 2 uses
  %prol.iter90.next = add i64 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i64 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i36.prol, !llvm.loop !625

.lr.ph.i.i.i.i.i36.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i36.prol, %.lr.ph.i.i.i.i.preheader.i35
  %.unr91 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.preheader.i35 ], [ %i.ds, %.lr.ph.i.i.i.i.i36.prol ]
  %.06.i.i.i.i.i37.unr = phi i64 [ %i.do, %.lr.ph.i.i.i.i.preheader.i35 ], [ %i.dv, %.lr.ph.i.i.i.i.i36.prol ]
  %.045.i.i.i.i.i38.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader.i35 ], [ %i.du, %.lr.ph.i.i.i.i.i36.prol ]
  %i.dw = icmp ult i64 %i.do, 8
  br i1 %i.dw, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEENS2_IPS6_SB_EEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i36

.lr.ph.i.i.i.i.i36:                               ; preds = %.lr.ph.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i36
  %i.dx = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i36 ], [ %.unr91, %.lr.ph.i.i.i.i.i36.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i37 = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i36 ], [ %.06.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i36.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i38 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i36 ], [ %.045.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i36.prol.loopexit ] ; 9 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !476
  store ptr %i.dz, ptr %.045.i.i.i.i.i38, align 8, !tbaa !476
  %i.ea = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 8
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 -16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !476
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !476
  %i.ed = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 16
  %i.ee = getelementptr inbounds i8, ptr %i.dx, i64 -24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !476
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !476
  %i.eg = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 24
  %i.eh = getelementptr inbounds i8, ptr %i.dx, i64 -32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !476
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !476
  %i.ej = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 32
  %i.ek = getelementptr inbounds i8, ptr %i.dx, i64 -40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !476
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !476
  %i.em = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 40
  %i.en = getelementptr inbounds i8, ptr %i.dx, i64 -48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !476
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !476
  %i.ep = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 48
  %i.eq = getelementptr inbounds i8, ptr %i.dx, i64 -56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !476
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !476
  %i.es = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 56
  %i.et = getelementptr inbounds i8, ptr %i.dx, i64 -64 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !476
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !476
  %i.ev = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 64
  %i.ew = add nsw i64 %.06.i.i.i.i.i37, -8
  %i.ex = icmp sgt i64 %.06.i.i.i.i.i37, 8
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i36, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEENS2_IPS6_SB_EEET0_T_SH_SG_.exit, !llvm.loop !623

bb.n:                                             ; preds = %bb.b
  %i.ey = load ptr, ptr %0, align 8, !tbaa !481   ; 5 uses
  %i.ez = ptrtoint ptr %i.ey to i64               ; 3 uses
  %i.fa = sub i64 %i.j, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 4 uses
  %i.fc = sub nsw i64 1152921504606846975, %i.fb
  %i.fd = icmp ult i64 %i.fc, %i.d
  br i1 %i.fd, label %bb.o, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.d)
  %i.fe = add nsw i64 %.sroa.speculated.i, %i.fb  ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb
  %i.fg = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 1152921504606846975)
  %i.fh = select i1 %i.ff, i64 1152921504606846975, i64 %i.fg ; 3 uses
  %.not.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #19
  br label %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.fk = phi ptr [ %i.fj, %bb.p ], [ null, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.fl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.fm = sub i64 %i.fl, %i.ez                    ; 4 uses
  %i.fn = icmp sgt i64 %i.fm, 8
  br i1 %i.fn, label %bb.q, label %bb.r, !prof !47

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fk, ptr align 8 %i.ey, i64 %i.fm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit
  %i.fo = icmp eq i64 %i.fm, 8
  br i1 %i.fo, label %bb.s, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.fp = load ptr, ptr %i.ey, align 8, !tbaa !476
  store ptr %i.fp, ptr %i.fk, align 8, !tbaa !476
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.fq = getelementptr inbounds i8, ptr %i.fk, i64 %i.fm
  br label %.lr.ph.i.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i.i42:                         ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %.lr.ph.i.i.i.i.i.i.i.i42
  %i.fr = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i42 ], [ %.sroa.0.0.copyload.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %.06.i.i.i.i.i.i.i.i43 = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i42 ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i44 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i42 ], [ %i.fq, %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -8 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !476
  store ptr %i.ft, ptr %.045.i.i.i.i.i.i.i.i44, align 8, !tbaa !476
  %i.fu = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i44, i64 8 ; 4 uses
  %i.fv = add nsw i64 %.06.i.i.i.i.i.i.i.i43, -1
  %i.fw = icmp samesign ugt i64 %.06.i.i.i.i.i.i.i.i43, 1
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i.i.i.i42, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit45, !llvm.loop !623

_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i.i.i.i.i.i42
  %i.fx = sub i64 %i.j, %i.fl                     ; 4 uses
  %i.fy = icmp sgt i64 %i.fx, 8
  br i1 %i.fy, label %bb.t, label %bb.u, !prof !47

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr align 8 %1, i64 %i.fx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEEPS6_S6_ET0_T_SG_SF_RSaIT1_E.exit45
  %i.fz = icmp eq i64 %i.fx, 8
  br i1 %i.fz, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46

bb.v:                                             ; preds = %bb.u
  %i.ga = load ptr, ptr %1, align 8, !tbaa !476
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !476
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46: ; preds = %bb.t, %bb.u, %bb.v
  %i.gb = getelementptr inbounds i8, ptr %i.fu, i64 %i.fx
  %.not.i47 = icmp eq ptr %i.ey, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46
  %i.gc = sub i64 %i.i, %i.ez
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.gc) #17
  br label %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46, %bb.w
  store ptr %i.fk, ptr %0, align 8, !tbaa !481
  store ptr %i.gb, ptr %i.g, align 8, !tbaa !501
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fh
  store ptr %i.gd, ptr %i.e, align 8, !tbaa !482
  br label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEENS2_IPS6_SB_EEET0_T_SH_SG_.exit

_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEENS2_IPS6_SB_EEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33, %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE15_M_range_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEEvSB_T_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef dead_on_return %2, ptr noundef dead_on_return %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.0.0.copyload.i2.i.i = load ptr, ptr %3, align 8 ; 2 uses
  %.not68 = icmp eq ptr %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i2.i.i
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i2.i.i to i64 ; 2 uses
  br i1 %.not68, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.c = sub i64 %i.b, %i.a                       ; 6 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !482
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !501  ; 11 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 5 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8
  br i1 %i.s, label %bb.e, label %bb.f, !prof !47

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !501
  br label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !476
  store ptr %i.u, ptr %i.h, align 8, !tbaa !476
  br label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre71, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !501
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !476
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !476
  br label %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.af = load i64, ptr %2, align 8, !tbaa !514   ; 2 uses
  %i.ag = load i64, ptr %3, align 8, !tbaa !514
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.preheader.i, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit
  %i.ak = inttoptr i64 %i.af to ptr               ; 2 uses
  %xtraiter92 = and i64 %i.ai, 7                  ; 2 uses
  %lcmp.mod93.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod93.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.prol
  %i.al = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.prol ], [ %i.ak, %.lr.ph.i.i.i.i.preheader.i ]
  %.06.i.i.i.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.prol ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i ]
  %.045.i.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter94 = phi i64 [ %prol.iter94.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !476
  store ptr %i.an, ptr %.045.i.i.i.i.i.prol, align 8, !tbaa !476
  %i.ao = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ap = add nsw i64 %.06.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter94.next = add i64 %prol.iter94, 1     ; 2 uses
  %prol.iter94.cmp.not = icmp eq i64 %prol.iter94.next, %xtraiter92
  br i1 %prol.iter94.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !626

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i
  %.unr95 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader.i ], [ %i.am, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ap, %.lr.ph.i.i.i.i.i.prol ]
  %.045.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %i.aq = icmp ult i64 %i.ai, 8
  br i1 %i.aq, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.ar = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.unr95, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %.045.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !476
  store ptr %i.at, ptr %.045.i.i.i.i.i, align 8, !tbaa !476
  %i.au = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 8
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !476
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !476
  %i.ax = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 16
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 -24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !476
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !476
  %i.ba = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 24
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !476
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !476
  %i.bd = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 32
  %i.be = getelementptr inbounds i8, ptr %i.ar, i64 -40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !476
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !476
  %i.bg = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 40
  %i.bh = getelementptr inbounds i8, ptr %i.ar, i64 -48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !476
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !476
  %i.bj = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 48
  %i.bk = getelementptr inbounds i8, ptr %i.ar, i64 -56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !476
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !476
  %i.bm = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 56
  %i.bn = getelementptr inbounds i8, ptr %i.ar, i64 -64 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !476
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !476
  %i.bp = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 64
  %i.bq = add nsw i64 %.06.i.i.i.i.i, -8
  %i.br = icmp sgt i64 %.06.i.i.i.i.i, 8
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit, !llvm.loop !627

_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bs = icmp eq i64 %i.m, 8
  %i.bt = sub nsw i64 0, %i.n
  %i.bu = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.bt ; 3 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bw = sub i64 %i.bv, %i.a
  %i.bx = ashr exact i64 %i.bw, 3                 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %xtraiter = and i64 %i.bx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.06.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.045.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !476
  store ptr %i.cb, ptr %.045.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !476
  %i.cc = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.cd = add nsw i64 %.06.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !628

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.unr = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.045.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ce = icmp ult i64 %i.bx, 8
  br i1 %i.ce, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cf = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i.i.i.i = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !476
  store ptr %i.ch, ptr %.045.i.i.i.i.i.i.i.i, align 8, !tbaa !476
  %i.ci = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 8
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !476
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !476
  %i.cl = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 16
  %i.cm = getelementptr inbounds i8, ptr %i.cf, i64 -24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !476
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !476
  %i.co = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 24
  %i.cp = getelementptr inbounds i8, ptr %i.cf, i64 -32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !476
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !476
  %i.cr = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 32
  %i.cs = getelementptr inbounds i8, ptr %i.cf, i64 -40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !476
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !476
  %i.cu = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 40
  %i.cv = getelementptr inbounds i8, ptr %i.cf, i64 -48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !476
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !476
  %i.cx = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 48
  %i.cy = getelementptr inbounds i8, ptr %i.cf, i64 -56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !476
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !476
  %i.da = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 56
  %i.db = getelementptr inbounds i8, ptr %i.cf, i64 -64 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !476
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !476
  %i.dd = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 64
  %i.de = add nsw i64 %.06.i.i.i.i.i.i.i.i, -8
  %i.df = icmp sgt i64 %.06.i.i.i.i.i.i.i.i, 8
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit, !llvm.loop !627

_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt9__advanceISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dg = sub nuw nsw i64 %i.d, %i.n
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dg ; 5 uses
  store ptr %i.dh, ptr %i.g, align 8, !tbaa !501
  %i.di = icmp sgt i64 %i.m, 8
  br i1 %i.di, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dh, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !501
  br label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit
  br i1 %i.bs, label %bb.m, label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33

bb.m:                                             ; preds = %bb.l
  %i.dj = load ptr, ptr %1, align 8, !tbaa !476
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !476
  br label %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33

_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33: ; preds = %bb.k, %bb.l, %bb.m
  %i.dk = phi ptr [ %.pre, %bb.k ], [ %i.dh, %bb.l ], [ %i.dh, %bb.m ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.m
  store ptr %i.dl, ptr %i.g, align 8, !tbaa !501
  %i.dm = load i64, ptr %2, align 8, !tbaa !514   ; 2 uses
  %i.dn = sub i64 %i.dm, %i.bv
  %i.do = ashr exact i64 %i.dn, 3                 ; 5 uses
  %i.dp = icmp sgt i64 %i.do, 0
  br i1 %i.dp, label %.lr.ph.i.i.i.i.preheader.i35, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.preheader.i35:                     ; preds = %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33
  %i.dq = inttoptr i64 %i.dm to ptr               ; 2 uses
  %xtraiter88 = and i64 %i.do, 7                  ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i36.prol

.lr.ph.i.i.i.i.i36.prol:                          ; preds = %.lr.ph.i.i.i.i.preheader.i35, %.lr.ph.i.i.i.i.i36.prol
  %i.dr = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i36.prol ], [ %i.dq, %.lr.ph.i.i.i.i.preheader.i35 ]
  %.06.i.i.i.i.i37.prol = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i36.prol ], [ %i.do, %.lr.ph.i.i.i.i.preheader.i35 ]
  %.045.i.i.i.i.i38.prol = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i36.prol ], [ %1, %.lr.ph.i.i.i.i.preheader.i35 ] ; 2 uses
  %prol.iter90 = phi i64 [ %prol.iter90.next, %.lr.ph.i.i.i.i.i36.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i35 ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !476
  store ptr %i.dt, ptr %.045.i.i.i.i.i38.prol, align 8, !tbaa !476
  %i.du = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38.prol, i64 8 ; 2 uses
  %i.dv = add nsw i64 %.06.i.i.i.i.i37.prol, -1   ; 2 uses
  %prol.iter90.next = add i64 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i64 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i36.prol, !llvm.loop !629

.lr.ph.i.i.i.i.i36.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i36.prol, %.lr.ph.i.i.i.i.preheader.i35
  %.unr91 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.preheader.i35 ], [ %i.ds, %.lr.ph.i.i.i.i.i36.prol ]
  %.06.i.i.i.i.i37.unr = phi i64 [ %i.do, %.lr.ph.i.i.i.i.preheader.i35 ], [ %i.dv, %.lr.ph.i.i.i.i.i36.prol ]
  %.045.i.i.i.i.i38.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.preheader.i35 ], [ %i.du, %.lr.ph.i.i.i.i.i36.prol ]
  %i.dw = icmp ult i64 %i.do, 8
  br i1 %i.dw, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i36

.lr.ph.i.i.i.i.i36:                               ; preds = %.lr.ph.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i36
  %i.dx = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i36 ], [ %.unr91, %.lr.ph.i.i.i.i.i36.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i37 = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i36 ], [ %.06.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i36.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i38 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i36 ], [ %.045.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i36.prol.loopexit ] ; 9 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !476
  store ptr %i.dz, ptr %.045.i.i.i.i.i38, align 8, !tbaa !476
  %i.ea = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 8
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 -16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !476
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !476
  %i.ed = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 16
  %i.ee = getelementptr inbounds i8, ptr %i.dx, i64 -24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !476
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !476
  %i.eg = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 24
  %i.eh = getelementptr inbounds i8, ptr %i.dx, i64 -32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !476
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !476
  %i.ej = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 32
  %i.ek = getelementptr inbounds i8, ptr %i.dx, i64 -40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !476
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !476
  %i.em = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 40
  %i.en = getelementptr inbounds i8, ptr %i.dx, i64 -48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !476
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !476
  %i.ep = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 48
  %i.eq = getelementptr inbounds i8, ptr %i.dx, i64 -56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !476
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !476
  %i.es = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 56
  %i.et = getelementptr inbounds i8, ptr %i.dx, i64 -64 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !476
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !476
  %i.ev = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i38, i64 64
  %i.ew = add nsw i64 %.06.i.i.i.i.i37, -8
  %i.ex = icmp sgt i64 %.06.i.i.i.i.i37, 8
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i36, label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit, !llvm.loop !627

bb.n:                                             ; preds = %bb.b
  %i.ey = load ptr, ptr %0, align 8, !tbaa !481   ; 5 uses
  %i.ez = ptrtoint ptr %i.ey to i64               ; 3 uses
  %i.fa = sub i64 %i.j, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3                 ; 4 uses
  %i.fc = sub nsw i64 1152921504606846975, %i.fb
  %i.fd = icmp ult i64 %i.fc, %i.d
  br i1 %i.fd, label %bb.o, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fb, i64 %i.d)
  %i.fe = add nsw i64 %.sroa.speculated.i, %i.fb  ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fb
  %i.fg = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 1152921504606846975)
  %i.fh = select i1 %i.ff, i64 1152921504606846975, i64 %i.fg ; 3 uses
  %.not.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #19
  br label %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.fk = phi ptr [ %i.fj, %bb.p ], [ null, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.fl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.fm = sub i64 %i.fl, %i.ez                    ; 4 uses
  %i.fn = icmp sgt i64 %i.fm, 8
  br i1 %i.fn, label %bb.q, label %bb.r, !prof !47

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fk, ptr align 8 %i.ey, i64 %i.fm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE11_M_allocateEm.exit
  %i.fo = icmp eq i64 %i.fm, 8
  br i1 %i.fo, label %bb.s, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.fp = load ptr, ptr %i.ey, align 8, !tbaa !476
  store ptr %i.fp, ptr %i.fk, align 8, !tbaa !476
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.fq = getelementptr inbounds i8, ptr %i.fk, i64 %i.fm
  br label %.lr.ph.i.i.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i.i.i42:                         ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %.lr.ph.i.i.i.i.i.i.i.i42
  %i.fr = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i42 ], [ %.sroa.0.0.copyload.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %.06.i.i.i.i.i.i.i.i43 = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i42 ], [ %i.d, %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i44 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i42 ], [ %i.fq, %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -8 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !476
  store ptr %i.ft, ptr %.045.i.i.i.i.i.i.i.i44, align 8, !tbaa !476
  %i.fu = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i44, i64 8 ; 4 uses
  %i.fv = add nsw i64 %.06.i.i.i.i.i.i.i.i43, -1
  %i.fw = icmp samesign ugt i64 %.06.i.i.i.i.i.i.i.i43, 1
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i.i.i.i42, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit45, !llvm.loop !627

_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i.i.i.i.i.i42
  %i.fx = sub i64 %i.j, %i.fl                     ; 4 uses
  %i.fy = icmp sgt i64 %i.fx, 8
  br i1 %i.fy, label %bb.t, label %bb.u, !prof !47

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr align 8 %1, i64 %i.fx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEES7_S6_ET0_T_SE_SD_RSaIT1_E.exit45
  %i.fz = icmp eq i64 %i.fx, 8
  br i1 %i.fz, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46

bb.v:                                             ; preds = %bb.u
  %i.ga = load ptr, ptr %1, align 8, !tbaa !476
  store ptr %i.ga, ptr %i.fu, align 8, !tbaa !476
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46: ; preds = %bb.t, %bb.u, %bb.v
  %i.gb = getelementptr inbounds i8, ptr %i.fu, i64 %i.fx
  %.not.i47 = icmp eq ptr %i.ey, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46
  %i.gc = sub i64 %i.i, %i.ez
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.gc) #17
  br label %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit46, %bb.w
  store ptr %i.fk, ptr %0, align 8, !tbaa !481
  store ptr %i.gb, ptr %i.g, align 8, !tbaa !501
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fh
  store ptr %i.gd, ptr %i.e, align 8, !tbaa !482
  br label %_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit

_ZSt4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPPN6hermes5regex4NodeES4_SaIS3_EET0_T_S7_S6_RT1_.exit33, %_ZSt13move_backwardIPPN6hermes5regex4NodeES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIPN6hermes5regex4NodeESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 65535
  br i1 %i.a, label %bb.e, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #16
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.d = tail call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.pn = phi { i32, i64 } [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ %i.d, %bb.f ], [ %i.e, %bb.g ]
  ret { i32, i64 } %.pn
}

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !15
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %i.d = and i32 %i.c, 16777216
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i32 %i.c, 150994943
  br i1 %i.f, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.c, 234881024
  switch i32 %.mask.i.i.i.i.i.i.i.i, label %bb.g [
    i32 134217728, label %bb.e
    i32 67108864, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.k, align 8, !tbaa !15
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  br label %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit

_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.o, %bb.g ] ; 10 uses
  %i.p = zext i32 %2 to i64                       ; 12 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !348
  %.sroa.0.0.copyload.i.i.i6 = load i64, ptr %i.q, align 8, !tbaa !15
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i6, 281474976710655
  %i.s = inttoptr i64 %i.r to ptr                 ; 7 uses
  %i.t = load i32, ptr %i.s, align 4              ; 4 uses
  %i.u = and i32 %i.t, 16777216
  %i.v = icmp eq i32 %i.u, 0
  %i.w = icmp ugt i32 %i.t, 150994943             ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.p, !prof !47

bb.h:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit
  br i1 %i.w, label %bb.i, label %bb.j, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !61
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.j:                                             ; preds = %bb.h
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.t, 234881024
  %i.z = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi ptr [ %i.y, %bb.i ], [ %i.aa, %bb.k ], [ %i.ab, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !329
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ae ; 2 uses
  %i.ag = icmp ugt i32 %2, 1
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !47

bb.m:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.0.i, i64 %i.p, i1 false)
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.n:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i
  %i.ah = icmp eq i32 %2, 1
  br i1 %i.ah, label %bb.o, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load i8, ptr %.0.i, align 1, !tbaa !32
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !32
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.p:                                             ; preds = %_ZNK6hermes2vm15StringPrimitive18castToASCIIPointerEv.exit
  br i1 %i.w, label %bb.q, label %bb.r, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !84
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.r:                                             ; preds = %bb.p
  %.mask.i.i.i.i.i.i.i.i3.i = and i32 %i.t, 251658240
  %i.al = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3.i, 117440512
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i: ; preds = %bb.t, %bb.s, %bb.q
  %.0.i4.i = phi ptr [ %i.ak, %bb.q ], [ %i.am, %bb.s ], [ %i.an, %bb.t ] ; 2 uses
  %.not46 = icmp eq i32 %2, 0
  br i1 %.not46, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, label %iter.check98

iter.check98:                                     ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !329
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %.0.i4.i, i64 %i.aq ; 7 uses
  %min.iters.check80 = icmp ult i32 %2, 4
  br i1 %min.iters.check80, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck74

vector.memcheck74:                                ; preds = %iter.check98
  %i.as = add nuw nsw i64 %i.p, %i.aq
  %i.at = shl nuw nsw i64 %i.as, 1
  %scevgep75 = getelementptr i8, ptr %.0.i4.i, i64 %i.at
  %scevgep76 = getelementptr i8, ptr %.0.i, i64 %i.p
  %bound077 = icmp ult ptr %i.ar, %scevgep76
  %bound178 = icmp ult ptr %.0.i, %scevgep75
  %found.conflict79 = and i1 %bound077, %bound178
  br i1 %found.conflict79, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check81
end_hunk_1
