inline.NumInlined: 65579
inline.NumDeleted: 20584
begin_hunk_0_@_ZNSt10shared_ptrIvEaSIN8facebook5velox4exec12VectorReaderINS3_9TimestampEEEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS0_E4typeEOSF_:bb.a
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !53
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !11710
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !11710
  br label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EEaSIN8facebook5velox4exec12VectorReaderINS5_9TimestampEEEEENSt9enable_ifIXsr20__sp_compatible_withIPT_PvEE5valueERS2_E4typeEOS_ISB_LS1_2EE.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EEaSIN8facebook5velox4exec12VectorReaderINS5_9TimestampEEEEENSt9enable_ifIXsr20__sp_compatible_withIPT_PvEE5valueERS2_E4typeEOS_ISB_LS1_2EE.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34
  br label %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EEaSIN8facebook5velox4exec12VectorReaderINS5_9TimestampEEEEENSt9enable_ifIXsr20__sp_compatible_withIPT_PvEE5valueERS2_E4typeEOS_ISB_LS1_2EE.exit

_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EEaSIN8facebook5velox4exec12VectorReaderINS5_9TimestampEEEEENSt9enable_ifIXsr20__sp_compatible_withIPT_PvEE5valueERS2_E4typeEOS_ISB_LS1_2EE.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox4exec12VectorReaderINS1_9TimestampEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !189
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !189
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox4exec12VectorReaderINS4_9TimestampEEEEEvRS0_PT_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS2_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec12VectorReaderINS1_9TimestampEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !191  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !55
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #34
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE23addItemsGeneralSlowPathINS1_9ArrayViewILb1ES5_EEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !2093
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11711 ; 2 uses
  %i.f = add nsw i32 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !5956
  %i.i = add nsw i32 %i.f, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !5958
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE7reserveEi.exit, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.m = sitofp i32 %i.i to double
  %i.n = tail call noundef double @log2(double noundef %i.m) #34, !tbaa !3
  %i.o = tail call double @llvm.ceil.f64(double %i.n)
  %exp2.i = tail call double @exp2(double %i.o)
  %i.p = fptosi double %exp2.i to i32             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !5954 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(96) %i.r, i32 noundef %i.p), !inline_history !11713
  store i32 %i.p, ptr %i.j, align 4, !tbaa !5958
  %.pre = load i32, ptr %i.d, align 4, !tbaa !11711, !noalias !11714
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE7reserveEi.exit

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE7reserveEi.exit: ; preds = %bb.a, %bb.b
  %i.v = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !11717, !noalias !11714 ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !11718, !noalias !11714 ; 3 uses
  %i.z = add nsw i32 %i.v, %i.x
  %i.aa = icmp eq i32 %i.v, 0
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE7reserveEi.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, <2 x i64> <i64 8, i64 56>
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = sext i32 %i.x to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.q, %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE7reserveEi.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %i.ai, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 5 uses
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %._ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread_crit_edge, label %bb.d

._ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread_crit_edge: ; preds = %bb.c
  %.pre28 = load i32, ptr %i.b, align 4, !tbaa !2093
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.an = load i8, ptr %i.am, align 2, !tbaa !86, !range !87, !noundef !59
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.aq = load i8, ptr %i.ap, align 1, !range !87
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i.i.i = select i1 %i.ao, i1 true, i1 %i.ar
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i64 %indvars.iv, 6
  %i.at = and i64 %i.as, 67108863
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !91
  %i.aw = and i64 %indvars.iv, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.av, %i.ax
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.f:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 59
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !88, !range !87, !noundef !59
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !91
  %i.bd = and i64 %i.bc, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !90
  %i.bg = shl nsw i64 %indvars.iv, 2
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 6
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = and i64 %i.bj, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bo, %i.bm
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %.0.i.i.i.in = phi i64 [ %i.ay, %bb.e ], [ %i.bd, %bb.g ], [ %i.bp, %bb.h ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  %.pre29 = load i32, ptr %i.b, align 4, !tbaa !2093 ; 3 uses
  br i1 %.0.i.i.i.not, label %bb.n, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %._ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread_crit_edge, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.bq = phi i32 [ %.pre28, %._ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread_crit_edge ], [ %.pre29, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit ] ; 2 uses
  %i.br = add nsw i32 %i.bq, 1                    ; 2 uses
  %i.bs = load i8, ptr %i.ab, align 8, !tbaa !5969, !range !87, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.i, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.i:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !5954 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(96) %i.bu, i1 noundef zeroext true), !inline_history !11719
  store i8 0, ptr %i.ab, align 8, !tbaa !5969
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.i, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.by = load i32, ptr %i.g, align 8, !tbaa !5956 ; 2 uses
  %i.bz = add nsw i32 %i.by, %i.br                ; 2 uses
  %i.ca = load i32, ptr %i.j, align 4, !tbaa !5958
  %i.cb = icmp sgt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.j, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit, !prof !56

bb.j:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.cc = sitofp i32 %i.bz to double
  %i.cd = call noundef double @log2(double noundef %i.cc) #34, !tbaa !3
  %i.ce = call double @llvm.ceil.f64(double %i.cd)
  %exp2.i.i.i = call double @exp2(double %i.ce)
  %i.cf = fptosi double %exp2.i.i.i to i32        ; 2 uses
  %i.cg = load ptr, ptr %i.ac, align 8, !tbaa !5954 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(96) %i.cg, i32 noundef %i.cf), !inline_history !11720
  store i32 %i.cf, ptr %i.j, align 4, !tbaa !5958
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !5956
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.j
  %i.ck = phi i32 [ %i.by, %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.j ]
  store i32 %i.br, ptr %i.b, align 4, !tbaa !2093
  %i.cl = add i32 %i.ck, %i.bq
  store i8 1, ptr %i.ab, align 8, !tbaa !5969
  %i.cm = load ptr, ptr %i.ac, align 8, !tbaa !5954 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !40
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, i32 noundef %i.cl), !inline_history !11721
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !5954 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !11722)
  call void @llvm.experimental.noalias.scope.decl(metadata !11725)
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !2097, !noalias !11728, !nonnull !59, !align !61
  store ptr %i.cr, ptr %3, align 8, !tbaa !177, !alias.scope !11728
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !44, !alias.scope !11728
  %i.cs = trunc nsw i64 %indvars.iv to i32
  store i32 %i.cs, ptr %i.af, align 8, !tbaa !67, !alias.scope !11728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cv, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.cv, label %bb.m [
    i8 33, label %bb.k
    i8 35, label %bb.l
  ]

bb.k:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  %i.cw = getelementptr i8, ptr %i.cp, i64 32
  %.val.i.i = load ptr, ptr %i.cw, align 8, !tbaa !35
  %i.cx = getelementptr i8, ptr %i.cp, i64 48
  %.val1.i.i = load ptr, ptr %i.cx, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.cy = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.l:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(28) %3), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.m:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.cq, ptr %i.ag, align 8, !tbaa !45
  store ptr %3, ptr %i.ah, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.q

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.da = add nsw i32 %.pre29, 1                  ; 2 uses
  %i.db = load i8, ptr %i.ab, align 8, !tbaa !5969, !range !87, !noundef !59
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.o, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i8

bb.o:                                             ; preds = %bb.n
  %i.dd = load ptr, ptr %i.ac, align 8, !tbaa !5954 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(96) %i.dd, i1 noundef zeroext true), !inline_history !11731
  store i8 0, ptr %i.ab, align 8, !tbaa !5969
  br label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i8

_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i8: ; preds = %bb.o, %bb.n
  %i.dh = load i32, ptr %i.g, align 8, !tbaa !5956 ; 2 uses
  %i.di = add nsw i32 %i.dh, %i.da                ; 2 uses
  %i.dj = load i32, ptr %i.j, align 4, !tbaa !5958
  %i.dk = icmp sgt i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.p, label %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv.exit, !prof !56

bb.p:                                             ; preds = %_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i8
  %i.dl = sitofp i32 %i.di to double
  %i.dm = call noundef double @log2(double noundef %i.dl) #34, !tbaa !3
  %i.dn = call double @llvm.ceil.f64(double %i.dm)
  %exp2.i.i.i9 = call double @exp2(double %i.dn)
  %i.do = fptosi double %exp2.i.i.i9 to i32       ; 2 uses
  %i.dp = load ptr, ptr %i.ac, align 8, !tbaa !5954 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec11ArrayWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25addItemsPrimitiveFastPathINS0_9TimestampENS1_9ArrayViewILb1ES5_EEEEvRKT0_:bb.a
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = lshr i64 %i.ic, 6
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.id
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !91
  %i.ig = and i64 %i.ic, 63
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = and i64 %i.ih, %i.if
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.o, %bb.q, %bb.r
  %.0.i.i.i.in = phi i64 [ %i.hr, %bb.o ], [ %i.hw, %bb.q ], [ %i.ii, %bb.r ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.v, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %bb.m, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.ij = load ptr, ptr %i.gz, align 8, !tbaa !68
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !156, !nonnull !59, !align !61 ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !72
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 58
  %i.io = load i8, ptr %i.in, align 2, !tbaa !86, !range !87, !noundef !59
  %i.ip = trunc nuw i8 %i.io to i1
  %i.iq = trunc nsw i64 %indvars.iv141 to i32
  br i1 %i.ip, label %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit63, label %bb.s

bb.s:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 59
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !88, !range !87, !noundef !59
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit63

bb.u:                                             ; preds = %bb.s
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !90
  %i.iy = shl nsw i64 %indvars.iv141, 2
  %i.iz = getelementptr inbounds i8, ptr %i.ix, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit63

_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit63: ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, %bb.t, %bb.u
  %.0.i.i.i.i57 = phi i32 [ %i.ja, %bb.u ], [ %i.iv, %bb.t ], [ %i.iq, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread ]
  %i.jb = sext i32 %.0.i.i.i.i57 to i64
  %i.jc = getelementptr inbounds [16 x i8], ptr %i.im, i64 %i.jb
  %gep164 = getelementptr [16 x i8], ptr %invariant.gep163, i64 %indvars.iv139
  %i.jd = load <2 x i64>, ptr %i.jc, align 8, !tbaa !91
  store <2 x i64> %i.jd, ptr %gep164, align 8, !tbaa !91
  br label %bb.x

bb.v:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.je = load i32, ptr %i.gy, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(216) %i.ae, i32 noundef %i.je, i1 noundef zeroext true)
  %i.jf = load ptr, ptr %i.gx, align 8, !tbaa !233 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 44
  %i.jh = load i8, ptr %i.jg, align 4, !tbaa !234
  %i.ji = and i8 %i.jh, 2
  %.not.i3.i64 = icmp eq i8 %i.ji, 0
  br i1 %.not.i3.i64, label %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE7setNullEib.exit65, label %bb.w, !prof !230

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorINS0_9TimestampEE7setNullEib.exit65: ; preds = %bb.v
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !239
  %i.jl = trunc i64 %indvars.iv139 to i32
  %i.jm = add i32 %i.e, %i.jl
  %i.jn = zext i32 %i.jm to i64                   ; 2 uses
  %i.jo = lshr i64 %i.jn, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jo ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !55
  %i.jr = and i64 %i.jn, 7
  %i.js = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !55
  %i.ju = and i8 %i.jt, %i.jq
  store i8 %i.ju, ptr %i.jp, align 1, !tbaa !55
  br label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE7setNullEib.exit65, %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit63
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, 1
  %exitcond147 = icmp eq i64 %indvars.iv.next140, %wide.trip.count146
  br i1 %exitcond147, label %.loopexit, label %bb.m

.loopexit.loopexit217.unr-lcssa:                  ; preds = %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit.epil.preheader

_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit.epil.preheader: ; preds = %.loopexit.loopexit217.unr-lcssa, %.lr.ph.split.split
  %indvars.iv122.epil.init = phi i64 [ %i.ge, %.lr.ph.split.split ], [ %indvars.iv.next123.1, %.loopexit.loopexit217.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.split ], [ %indvars.iv.next.1, %.loopexit.loopexit217.unr-lcssa ]
  %lcmp.mod218 = trunc i32 %i.ct to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.jv = shl nsw i64 %indvars.iv122.epil.init, 2
  %i.jw = getelementptr inbounds i8, ptr %i.gc, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !3
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [16 x i8], ptr %i.da, i64 %i.jy
  %gep.epil = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.ka = load <2 x i64>, ptr %i.jz, align 8, !tbaa !91
  store <2 x i64> %i.ka, ptr %gep.epil, align 8, !tbaa !91
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit.epil.preheader, %.loopexit.loopexit217.unr-lcssa, %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us105.prol.loopexit, %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us105, %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us.prol.loopexit, %_ZNK8facebook5velox4exec11GenericView6castToINS0_9TimestampEEENS1_12VectorReaderIT_E9exec_in_tEv.exit.us, %bb.x, %bb.i, %middle.block, %vec.epilog.middle.block, %middle.block210, %bb.k, %bb.l, %.preheader, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E9copy_fromERKNS1_7MapViewILb1ES5_S5_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %class.anon.3, align 8              ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, facebook::velox::Generic<>>::Element", align 8 ; 11 uses
  %6 = alloca %"class.std::tuple.5920", align 8   ; 5 uses
  %7 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !11876, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11878 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !11879
  store i8 0, ptr %i.d, align 4, !tbaa !11876
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11880, !range !87, !noundef !59
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11881 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(96) %i.p, i1 noundef zeroext true), !inline_history !11879
  store i8 0, ptr %i.l, align 1, !tbaa !11880
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11882 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !11883
  %i.x = icmp sgt i32 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E25commitMostRecentChildItemEv.exit.i
  %i.y = sitofp i32 %i.u to double
  %i.z = tail call noundef double @log2(double noundef %i.y) #34, !tbaa !3
  %i.aa = tail call double @llvm.ceil.f64(double %i.z)
  %exp2.i.i = tail call double @exp2(double %i.aa)
  %i.ab = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11878 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, i32 noundef %i.ab), !inline_history !11884
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11881 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(96) %i.ai, i32 noundef %i.ab), !inline_history !11884
  store i32 %i.ab, ptr %i.v, align 8, !tbaa !11883
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.am, align 8, !tbaa !11885
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !4525, !noalias !11886 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4526, !noalias !11886 ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !4522, !noalias !11886 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !4524, !noalias !11886 ; 2 uses
  %i.au = add nsw i32 %i.aq, %i.ao
  %i.av = icmp eq i32 %i.aq, 0
  br i1 %i.av, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E6resizeEi.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, <2 x i64> <i64 8, i64 56>
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = sext i32 %i.ao to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.v, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E6resizeEi.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ %i.bl, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !11889)
  call void @llvm.experimental.noalias.scope.decl(metadata !11892)
  call void @llvm.experimental.noalias.scope.decl(metadata !11895)
  call void @llvm.experimental.noalias.scope.decl(metadata !11898)
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !2097, !noalias !11901, !nonnull !59, !align !61
  store ptr %i.bm, ptr %5, align 8, !tbaa !177, !alias.scope !11901
  store <2 x ptr> %i.aw, ptr %i.ax, align 8, !tbaa !44, !alias.scope !11901
  %i.bn = trunc nsw i64 %indvars.iv to i32
  store i32 %i.bn, ptr %i.ay, align 8, !tbaa !67, !alias.scope !11901
  store ptr %i.at, ptr %i.az, align 8, !alias.scope !11902
  store i64 %indvars.iv, ptr %i.ba, align 8, !alias.scope !11902
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.bv = load i8, ptr %i.bu, align 1, !range !87
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i.i.i = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bx = lshr i64 %indvars.iv, 6
  %i.by = and i64 %i.bx, 67108863
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = and i64 %indvars.iv, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.ci = and i64 %i.ch, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.k:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !90
  %i.cl = shl nsw i64 %indvars.iv, 2
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !91
  %i.cs = and i64 %i.co, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.cr
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.cd, %bb.h ], [ %i.ci, %bb.j ], [ %i.cu, %bb.k ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %bb.f, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5920") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.cw = load ptr, ptr %6, align 8, !tbaa !11905, !nonnull !59, !align !61 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cz, ptr %i.c, align 1, !tbaa !34
  switch i8 %i.cz, label %bb.n [
    i8 33, label %bb.l
    i8 35, label %bb.m
  ]

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.da = getelementptr i8, ptr %i.cv, i64 8
  %.val.i.i = load ptr, ptr %i.da, align 8, !tbaa !35
  %i.db = getelementptr i8, ptr %i.cv, i64 24
  %.val1.i.i = load ptr, ptr %i.db, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.dc = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(28) %5), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %i.c, ptr %4, align 8, !tbaa !44
  store ptr %i.cv, ptr %i.be, align 8, !tbaa !45
  store ptr %5, ptr %i.bf, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %4), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !11907)
  %i.de = load ptr, ptr %i.az, align 8, !tbaa !11910, !noalias !11907 ; 3 uses
  %i.df = load i64, ptr %i.ba, align 8, !tbaa !11912, !noalias !11907
  %i.dg = trunc i64 %i.df to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !11913)
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !2097, !noalias !11916, !nonnull !59, !align !61
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  store ptr %i.dh, ptr %7, align 8, !tbaa !177, !alias.scope !11916
  store ptr %i.di, ptr %i.bg, align 8, !tbaa !4556, !alias.scope !11916
  store ptr %i.dj, ptr %i.bh, align 8, !tbaa !4557, !alias.scope !11916
  store i32 %i.dg, ptr %i.bi, align 8, !tbaa !67, !alias.scope !11916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.dk = load ptr, ptr %i.cw, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dm, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.dm, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.dn = getelementptr i8, ptr %i.cw, i64 8
  %.val.i.i12 = load ptr, ptr %i.dn, align 8, !tbaa !35
  %i.do = getelementptr i8, ptr %i.cw, i64 24
  %.val1.i.i13 = load ptr, ptr %i.do, align 8, !tbaa !36
  %.val.val.i.i14 = load ptr, ptr %.val.i.i12, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i15 = load i32, ptr %.val1.i.i13, align 4, !tbaa !3
  %i.dp = load ptr, ptr %.val.val.i.i14, align 8, !tbaa !40
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i14, i32 noundef %.val1.val.i.i15), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit16

bb.p:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(28) %7), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit16

bb.q:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.cw, ptr %i.bj, align 8, !tbaa !45
  store ptr %7, ptr %i.bk, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit16

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit16: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.v

bb.r:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.dr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !7
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !14  ; 2 uses
  store i8 %i.du, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.du, label %bb.u [
    i8 33, label %bb.s
    i8 35, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.val.i.i17 = load ptr, ptr %i.dv, align 8, !tbaa !35
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %.val1.i.i18 = load ptr, ptr %i.dw, align 8, !tbaa !36
  %.val.val.i.i19 = load ptr, ptr %.val.i.i17, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i20 = load i32, ptr %.val1.i.i18, align 4, !tbaa !3
  %i.dx = load ptr, ptr %.val.val.i.i19, align 8, !tbaa !40
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i19, i32 noundef %.val1.val.i.i20), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit21

bb.t:                                             ; preds = %bb.r
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, ptr noundef nonnull align 8 dereferenceable(28) %5), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit21

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dr, ptr %i.bb, align 8, !tbaa !45
  store ptr %5, ptr %i.bc, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit21

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit21: ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit21, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dz = trunc nsw i64 %indvars.iv.next to i32
  %i.ea = icmp eq i32 %i.au, %i.dz
  br i1 %i.ea, label %._crit_edge, label %bb.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1EbS5_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::tuple.2500", align 8   ; 5 uses
  %4 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !11917, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11919 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i1 noundef zeroext true), !inline_history !11920
  store i8 0, ptr %i.b, align 4, !tbaa !11917
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11921, !range !87, !noundef !59
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11922 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(96) %i.n, i1 noundef zeroext true), !inline_history !11920
  store i8 0, ptr %i.j, align 1, !tbaa !11921
  br label %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11923 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !11924
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.w = sitofp i32 %i.s to double
  %i.x = tail call noundef double @log2(double noundef %i.w) #34, !tbaa !3
  %i.y = tail call double @llvm.ceil.f64(double %i.x)
  %exp2.i.i = tail call double @exp2(double %i.y)
  %i.z = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11919 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i32 noundef %i.z), !inline_history !11925
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11922 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i32 noundef %i.z), !inline_history !11925
  store i32 %i.z, ptr %i.t, align 8, !tbaa !11924
  br label %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ak, align 8, !tbaa !11926
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !2329, !noalias !11927 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !2330, !noalias !11927 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !2325, !noalias !11927
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2328, !noalias !11927 ; 3 uses
  %i.as = add nsw i32 %i.ao, %i.am
  %i.at = icmp eq i32 %i.ao, 0
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, <2 x i64> <i64 8, i64 56>
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = sext i32 %i.am to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.s, %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.ba, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !70, !noalias !11930, !nonnull !59, !align !61 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !72, !noalias !11930
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 58
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !86, !range !87, !noalias !11930, !noundef !59
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bg, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !88, !range !87, !noalias !11930, !noundef !59
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !89, !noalias !11930
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !90, !noalias !11930
  %i.bp = shl nsw i64 %indvars.iv, 2
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3, !noalias !11930
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.i ], [ %i.bm, %bb.h ], [ %i.bh, %bb.f ]
  %i.bs = sext i32 %.0.i.i.i.i.i.i.i to i64       ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !91, !noalias !11930
  %i.bw = and i64 %i.bs, 63
  %i.bx = lshr i64 %i.bv, %i.bw
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i8 %i.by, 1                         ; 2 uses
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 58
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !86, !range !87, !noundef !59
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 57
  %i.ch = load i8, ptr %i.cg, align 1, !range !87
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond.i.i.i = select i1 %i.cf, i1 true, i1 %i.ci
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cj = lshr i64 %indvars.iv, 6
  %i.ck = and i64 %i.cj, 67108863
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !91
  %i.cn = and i64 %indvars.iv, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = and i64 %i.cm, %i.co
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 59
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.cu = and i64 %i.ct, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.n:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !90
  %i.cx = shl nsw i64 %indvars.iv, 2
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !91
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.k, %bb.m, %bb.n
  %.0.i.i.i.in = phi i64 [ %i.cp, %bb.k ], [ %i.cu, %bb.m ], [ %i.dg, %bb.n ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.2500") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.dh = load ptr, ptr %i.au, align 8, !tbaa !11935, !nonnull !59
  %i.di = load ptr, ptr %3, align 8, !tbaa !11905, !nonnull !59, !align !61 ; 5 uses
  store i8 %i.bz, ptr %i.dh, align 1, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !11937)
  call void @llvm.experimental.noalias.scope.decl(metadata !11940)
  %i.dj = load ptr, ptr %i.ar, align 8, !tbaa !2097, !noalias !11943, !nonnull !59, !align !61
  store ptr %i.dj, ptr %4, align 8, !tbaa !177, !alias.scope !11943
  store <2 x ptr> %i.av, ptr %i.aw, align 8, !tbaa !44, !alias.scope !11943
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !67, !alias.scope !11943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dm, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.dm, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dn = getelementptr i8, ptr %i.di, i64 8
  %.val.i.i = load ptr, ptr %i.dn, align 8, !tbaa !35
  %i.do = getelementptr i8, ptr %i.di, i64 24
  %.val1.i.i = load ptr, ptr %i.do, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.dp = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.q:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.di, ptr %i.ay, align 8, !tbaa !45
  store ptr %4, ptr %i.az, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.s

bb.r:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.dr = call noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  store i8 %i.bz, ptr %i.dr, align 1, !tbaa !94
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ds = trunc nsw i64 %indvars.iv.next to i32
  %i.dt = icmp eq i32 %i.as, %i.ds
  br i1 %i.dt, label %._crit_edge, label %bb.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterIbbE9copy_fromERKNS1_7MapViewILb1EbbEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.2187", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !11944, !range !87, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11946 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i1 noundef zeroext true), !inline_history !11947
  store i8 0, ptr %i.a, align 4, !tbaa !11944
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11948, !range !87, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterIbbE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11922 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i32 noundef %i.ac), !inline_history !11925
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !11924
  %.pre = load i32, ptr %i.t, align 4, !tbaa !11923
  br label %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.an = phi i32 [ %i.u, %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.e ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !11926
  %i.ao = add i32 %i.an, %i.b
  store i8 1, ptr %i.d, align 4, !tbaa !11917
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !11919 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, i32 noundef %i.ao), !inline_history !12662
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !11919
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i32, ptr %i.t, align 4, !tbaa !11923
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !11926
  %i.ax = add i32 %i.av, -1
  %i.ay = add i32 %i.ax, %i.aw
  store i8 1, ptr %i.l, align 1, !tbaa !11921
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11922 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i32 noundef %i.ay), !inline_history !12663
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !11922
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.be, ptr %0, align 8, !tbaa !12664, !alias.scope !12665
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.bf, align 8, !tbaa !1449, !alias.scope !12665
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11926 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !11917, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11919 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i1 noundef zeroext true), !inline_history !11920
  store i8 0, ptr %i.d, align 4, !tbaa !11917
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11921, !range !87, !noundef !59
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11922 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(96) %i.p, i1 noundef zeroext true), !inline_history !11920
  store i8 0, ptr %i.l, align 1, !tbaa !11921
  br label %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11923 ; 2 uses
  %i.v = add nsw i32 %i.u, %i.c                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !11924
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.z = sitofp i32 %i.v to double
  %i.aa = tail call noundef double @log2(double noundef %i.z) #34, !tbaa !3
  %i.ab = tail call double @llvm.ceil.f64(double %i.aa)
  %exp2.i.i = tail call double @exp2(double %i.ab)
  %i.ac = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11919 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i32 noundef %i.ac), !inline_history !11925
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11922 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i32 noundef %i.ac), !inline_history !11925
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !11924
  %.pre = load i32, ptr %i.t, align 4, !tbaa !11923
  br label %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.an = phi i32 [ %i.u, %_ZN8facebook5velox4exec9MapWriterIbNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.e ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !11926
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12646 ; 2 uses
  %i.aq = add i32 %i.an, %i.b
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(94) %i.ap, i32 noundef %i.aq, i1 noundef zeroext true)
  %i.au = load i32, ptr %i.t, align 4, !tbaa !11923
  %i.av = load i32, ptr %i.a, align 8, !tbaa !11926
  %i.aw = add i32 %i.au, -1
  %i.ax = add i32 %i.aw, %i.av
  store i8 1, ptr %i.d, align 4, !tbaa !11917
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11919 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(12) %i.az, i32 noundef %i.ax), !inline_history !12662
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !11919
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  ret ptr %i.bd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1EiS5_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12668, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12670 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i1 noundef zeroext true), !inline_history !12671
  store i8 0, ptr %i.b, align 1, !tbaa !12668
  br label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12672 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !12673
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.o = sitofp i32 %i.k to double
  %i.p = tail call noundef double @log2(double noundef %i.o) #34, !tbaa !3
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %exp2.i.i = tail call double @exp2(double %i.q)
  %i.r = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12674 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.r), !inline_history !12675
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12670 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.y, i32 noundef %i.r), !inline_history !12675
  store i32 %i.r, ptr %i.l, align 8, !tbaa !12673
  br label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !12676
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2526, !noalias !12677 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !2527, !noalias !12677 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !2523, !noalias !12677
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2525, !noalias !12677 ; 3 uses
  %i.ak = add nsw i32 %i.ag, %i.ae
  %i.al = icmp eq i32 %i.ag, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, <2 x i64> <i64 8, i64 56>
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = sext i32 %i.ae to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !95, !noalias !12680, !nonnull !59, !align !61 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72, !noalias !12680
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !86, !range !87, !noalias !12680, !noundef !59
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.az, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 59
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !87, !noalias !12680, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !89, !noalias !12680
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90, !noalias !12680
  %i.bi = shl nsw i64 %indvars.iv, 2
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3, !noalias !12680
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.g ], [ %i.bf, %bb.f ], [ %i.ba, %bb.d ]
  %i.bl = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !12680 ; 2 uses
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.bv = load i8, ptr %i.bu, align 1, !range !87
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i.i.i = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = lshr i64 %indvars.iv, 6
  %i.by = and i64 %i.bx, 67108863
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = and i64 %indvars.iv, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.ci = and i64 %i.ch, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !90
  %i.cl = shl nsw i64 %indvars.iv, 2
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !91
  %i.cs = and i64 %i.co, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.cr
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.cd, %bb.i ], [ %i.ci, %bb.k ], [ %i.cu, %bb.l ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.cv = load i32, ptr %i.ac, align 8, !tbaa !12676, !noalias !12685 ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = load i8, ptr %i.b, align 1, !tbaa !12668, !range !87, !noalias !12685, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !12670, !noalias !12685 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40, !noalias !12685
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !12685
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, i1 noundef zeroext true), !noalias !12685, !inline_history !12688
  store i8 0, ptr %i.b, align 1, !tbaa !12668, !noalias !12685
  br label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.m, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dd = load i32, ptr %i.j, align 4, !tbaa !12672, !noalias !12685 ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.cw                ; 2 uses
  %i.df = load i32, ptr %i.l, align 8, !tbaa !12673, !noalias !12685
  %i.dg = icmp sgt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.n, label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit, !prof !56

bb.n:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.dh = sitofp i32 %i.de to double
  %i.di = call noundef double @log2(double noundef %i.dh) #34, !tbaa !3, !noalias !12685
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %exp2.i.i.i = call double @exp2(double %i.dj), !noalias !12685
  %i.dk = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.dl = load ptr, ptr %i.an, align 8, !tbaa !12674, !noalias !12685 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40, !noalias !12685
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !12685
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i32 noundef %i.dk), !noalias !12685, !inline_history !12689
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !12670, !noalias !12685 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40, !noalias !12685
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !12685
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, i32 noundef %i.dk), !noalias !12685, !inline_history !12689
  store i32 %i.dk, ptr %i.l, align 8, !tbaa !12673, !noalias !12685
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !12672, !noalias !12685
  br label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.n
  %i.dt = phi i32 [ %i.dd, %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.n ]
  store i32 %i.cw, ptr %i.ac, align 8, !tbaa !12676, !noalias !12685
  %i.du = add i32 %i.dt, %i.cv                    ; 2 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !12674, !noalias !12685
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !97, !noalias !12685
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dy
  store i8 1, ptr %i.b, align 1, !tbaa !12668, !noalias !12685
  %i.ea = load ptr, ptr %i.am, align 8, !tbaa !12670, !noalias !12685 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40, !noalias !12685
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !12685
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, i32 noundef %i.du), !noalias !12685, !inline_history !12690
  %i.ed = load ptr, ptr %i.am, align 8, !tbaa !12670, !noalias !12685 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 3 uses
  store i32 %i.bn, ptr %i.dz, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !12691)
  call void @llvm.experimental.noalias.scope.decl(metadata !12694)
  %i.ef = load ptr, ptr %i.aj, align 8, !tbaa !2097, !noalias !12697, !nonnull !59, !align !61
  store ptr %i.ef, ptr %3, align 8, !tbaa !177, !alias.scope !12697
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !44, !alias.scope !12697
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !67, !alias.scope !12697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ei, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  %i.ej = getelementptr i8, ptr %i.ed, i64 32
  %.val.i.i = load ptr, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %i.ed, i64 48
  %.val1.i.i = load ptr, ptr %i.ek, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.el = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.p:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(28) %3), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.q:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.ee, ptr %i.ar, align 8, !tbaa !45
  store ptr %3, ptr %i.as, align 8, !tbaa !49
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4exec12VectorReaderINS0_3MapIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEEEEC2EPKNS0_13DecodedVectorE:bb.a
  store i32 0, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.k, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !4709
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.p, align 1, !tbaa !4710
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.q, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4712
  store ptr %i.u, ptr %i.s, align 8, !tbaa !2521
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4714
  store ptr %i.x, ptr %i.v, align 8, !tbaa !2522
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(94) %i.z, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !177
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !13357, !nonnull !59, !align !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3 unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3: ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_7AnyTypeELb0ELb0EEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.af, align 1, !tbaa !593
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 355
  store i8 0, ptr %i.ag, align 1, !tbaa !593
  ret void

bb.c:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit, %bb.a, %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #34
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #34
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12676 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12668, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12670 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !12671
  store i8 0, ptr %i.d, align 1, !tbaa !12668
  br label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12672 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !12673
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12674 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !12675
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12670 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !12675
  store i32 %i.u, ptr %i.o, align 8, !tbaa !12673
  %.pre = load i32, ptr %i.l, align 4, !tbaa !12672
  br label %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterIiNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !12676
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13345 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !12672
  %i.an = load i32, ptr %i.a, align 8, !tbaa !12676
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12674
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !97
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1EaS5_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13358, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13360 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i1 noundef zeroext true), !inline_history !13361
  store i8 0, ptr %i.b, align 1, !tbaa !13358
  br label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13362 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !13363
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.o = sitofp i32 %i.k to double
  %i.p = tail call noundef double @log2(double noundef %i.o) #34, !tbaa !3
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %exp2.i.i = tail call double @exp2(double %i.q)
  %i.r = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13364 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.r), !inline_history !13365
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13360 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.y, i32 noundef %i.r), !inline_history !13365
  store i32 %i.r, ptr %i.l, align 8, !tbaa !13363
  br label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !13366
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2723, !noalias !13367 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !2724, !noalias !13367 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !2720, !noalias !13367
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2722, !noalias !13367 ; 3 uses
  %i.ak = add nsw i32 %i.ag, %i.ae
  %i.al = icmp eq i32 %i.ag, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, <2 x i64> <i64 8, i64 56>
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = sext i32 %i.ae to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !101, !noalias !13370, !nonnull !59, !align !61 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72, !noalias !13370
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !86, !range !87, !noalias !13370, !noundef !59
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.az, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 59
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !87, !noalias !13370, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !89, !noalias !13370
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90, !noalias !13370
  %i.bi = shl nsw i64 %indvars.iv, 2
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3, !noalias !13370
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.g ], [ %i.bf, %bb.f ], [ %i.ba, %bb.d ]
  %i.bl = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds i8, ptr %i.aw, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !55, !noalias !13370 ; 2 uses
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.bv = load i8, ptr %i.bu, align 1, !range !87
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i.i.i = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = lshr i64 %indvars.iv, 6
  %i.by = and i64 %i.bx, 67108863
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = and i64 %indvars.iv, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.ci = and i64 %i.ch, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !90
  %i.cl = shl nsw i64 %indvars.iv, 2
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !91
  %i.cs = and i64 %i.co, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.cr
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.cd, %bb.i ], [ %i.ci, %bb.k ], [ %i.cu, %bb.l ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.cv = load i32, ptr %i.ac, align 8, !tbaa !13366, !noalias !13375 ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = load i8, ptr %i.b, align 1, !tbaa !13358, !range !87, !noalias !13375, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !13360, !noalias !13375 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40, !noalias !13375
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !13375
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, i1 noundef zeroext true), !noalias !13375, !inline_history !13378
  store i8 0, ptr %i.b, align 1, !tbaa !13358, !noalias !13375
  br label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.m, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dd = load i32, ptr %i.j, align 4, !tbaa !13362, !noalias !13375 ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.cw                ; 2 uses
  %i.df = load i32, ptr %i.l, align 8, !tbaa !13363, !noalias !13375
  %i.dg = icmp sgt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.n, label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit, !prof !56

bb.n:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.dh = sitofp i32 %i.de to double
  %i.di = call noundef double @log2(double noundef %i.dh) #34, !tbaa !3, !noalias !13375
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %exp2.i.i.i = call double @exp2(double %i.dj), !noalias !13375
  %i.dk = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.dl = load ptr, ptr %i.an, align 8, !tbaa !13364, !noalias !13375 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40, !noalias !13375
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !13375
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i32 noundef %i.dk), !noalias !13375, !inline_history !13379
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !13360, !noalias !13375 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40, !noalias !13375
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !13375
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, i32 noundef %i.dk), !noalias !13375, !inline_history !13379
  store i32 %i.dk, ptr %i.l, align 8, !tbaa !13363, !noalias !13375
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !13362, !noalias !13375
  br label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.n
  %i.dt = phi i32 [ %i.dd, %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.n ]
  store i32 %i.cw, ptr %i.ac, align 8, !tbaa !13366, !noalias !13375
  %i.du = add i32 %i.dt, %i.cv                    ; 2 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !13364, !noalias !13375
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !103, !noalias !13375
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 %i.dy
  store i8 1, ptr %i.b, align 1, !tbaa !13358, !noalias !13375
  %i.ea = load ptr, ptr %i.am, align 8, !tbaa !13360, !noalias !13375 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40, !noalias !13375
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !13375
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, i32 noundef %i.du), !noalias !13375, !inline_history !13380
  %i.ed = load ptr, ptr %i.am, align 8, !tbaa !13360, !noalias !13375 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 3 uses
  store i8 %i.bn, ptr %i.dz, align 1, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !13381)
  call void @llvm.experimental.noalias.scope.decl(metadata !13384)
  %i.ef = load ptr, ptr %i.aj, align 8, !tbaa !2097, !noalias !13387, !nonnull !59, !align !61
  store ptr %i.ef, ptr %3, align 8, !tbaa !177, !alias.scope !13387
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !44, !alias.scope !13387
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !67, !alias.scope !13387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ei, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  %i.ej = getelementptr i8, ptr %i.ed, i64 32
  %.val.i.i = load ptr, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %i.ed, i64 48
  %.val1.i.i = load ptr, ptr %i.ek, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.el = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.p:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(28) %3), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.q:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.ee, ptr %i.ar, align 8, !tbaa !45
  store ptr %3, ptr %i.as, align 8, !tbaa !49
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4exec12VectorReaderINS0_3MapIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEEEEC2EPKNS0_13DecodedVectorE:bb.a
  store i32 0, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.k, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !4709
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.p, align 1, !tbaa !4710
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.q, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4712
  store ptr %i.u, ptr %i.s, align 8, !tbaa !2718
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4714
  store ptr %i.x, ptr %i.v, align 8, !tbaa !2719
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(94) %i.z, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !177
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !14047, !nonnull !59, !align !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3 unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3: ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_7AnyTypeELb0ELb0EEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.af, align 1, !tbaa !593
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 355
  store i8 0, ptr %i.ag, align 1, !tbaa !593
  ret void

bb.c:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit, %bb.a, %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #34
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #34
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) ptr @_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13366 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13358, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13360 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !13361
  store i8 0, ptr %i.d, align 1, !tbaa !13358
  br label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13362 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !13363
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13364 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !13365
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13360 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !13365
  store i32 %i.u, ptr %i.o, align 8, !tbaa !13363
  %.pre = load i32, ptr %i.l, align 4, !tbaa !13362
  br label %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterIaNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !13366
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14035 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !13362
  %i.an = load i32, ptr %i.a, align 8, !tbaa !13366
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13364
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !103
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1EsS5_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14048, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14050 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i1 noundef zeroext true), !inline_history !14051
  store i8 0, ptr %i.b, align 1, !tbaa !14048
  br label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14052 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !14053
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.o = sitofp i32 %i.k to double
  %i.p = tail call noundef double @log2(double noundef %i.o) #34, !tbaa !3
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %exp2.i.i = tail call double @exp2(double %i.q)
  %i.r = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14054 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.r), !inline_history !14055
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14050 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.y, i32 noundef %i.r), !inline_history !14055
  store i32 %i.r, ptr %i.l, align 8, !tbaa !14053
  br label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !14056
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2920, !noalias !14057 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !2921, !noalias !14057 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !2917, !noalias !14057
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2919, !noalias !14057 ; 3 uses
  %i.ak = add nsw i32 %i.ag, %i.ae
  %i.al = icmp eq i32 %i.ag, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, <2 x i64> <i64 8, i64 56>
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = sext i32 %i.ae to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !107, !noalias !14060, !nonnull !59, !align !61 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72, !noalias !14060
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !86, !range !87, !noalias !14060, !noundef !59
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.az, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 59
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !87, !noalias !14060, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !89, !noalias !14060
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90, !noalias !14060
  %i.bi = shl nsw i64 %indvars.iv, 2
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3, !noalias !14060
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.g ], [ %i.bf, %bb.f ], [ %i.ba, %bb.d ]
  %i.bl = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !109, !noalias !14060 ; 2 uses
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.bv = load i8, ptr %i.bu, align 1, !range !87
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i.i.i = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = lshr i64 %indvars.iv, 6
  %i.by = and i64 %i.bx, 67108863
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = and i64 %indvars.iv, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.ci = and i64 %i.ch, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !90
  %i.cl = shl nsw i64 %indvars.iv, 2
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !91
  %i.cs = and i64 %i.co, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.cr
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.cd, %bb.i ], [ %i.ci, %bb.k ], [ %i.cu, %bb.l ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.cv = load i32, ptr %i.ac, align 8, !tbaa !14056, !noalias !14065 ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = load i8, ptr %i.b, align 1, !tbaa !14048, !range !87, !noalias !14065, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !14050, !noalias !14065 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40, !noalias !14065
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !14065
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, i1 noundef zeroext true), !noalias !14065, !inline_history !14068
  store i8 0, ptr %i.b, align 1, !tbaa !14048, !noalias !14065
  br label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.m, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dd = load i32, ptr %i.j, align 4, !tbaa !14052, !noalias !14065 ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.cw                ; 2 uses
  %i.df = load i32, ptr %i.l, align 8, !tbaa !14053, !noalias !14065
  %i.dg = icmp sgt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.n, label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit, !prof !56

bb.n:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.dh = sitofp i32 %i.de to double
  %i.di = call noundef double @log2(double noundef %i.dh) #34, !tbaa !3, !noalias !14065
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %exp2.i.i.i = call double @exp2(double %i.dj), !noalias !14065
  %i.dk = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.dl = load ptr, ptr %i.an, align 8, !tbaa !14054, !noalias !14065 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40, !noalias !14065
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !14065
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i32 noundef %i.dk), !noalias !14065, !inline_history !14069
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !14050, !noalias !14065 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40, !noalias !14065
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !14065
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, i32 noundef %i.dk), !noalias !14065, !inline_history !14069
  store i32 %i.dk, ptr %i.l, align 8, !tbaa !14053, !noalias !14065
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !14052, !noalias !14065
  br label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.n
  %i.dt = phi i32 [ %i.dd, %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.n ]
  store i32 %i.cw, ptr %i.ac, align 8, !tbaa !14056, !noalias !14065
  %i.du = add i32 %i.dt, %i.cv                    ; 2 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !14054, !noalias !14065
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !111, !noalias !14065
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.dy
  store i8 1, ptr %i.b, align 1, !tbaa !14048, !noalias !14065
  %i.ea = load ptr, ptr %i.am, align 8, !tbaa !14050, !noalias !14065 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40, !noalias !14065
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !14065
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, i32 noundef %i.du), !noalias !14065, !inline_history !14070
  %i.ed = load ptr, ptr %i.am, align 8, !tbaa !14050, !noalias !14065 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 3 uses
  store i16 %i.bn, ptr %i.dz, align 2, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !14071)
  call void @llvm.experimental.noalias.scope.decl(metadata !14074)
  %i.ef = load ptr, ptr %i.aj, align 8, !tbaa !2097, !noalias !14077, !nonnull !59, !align !61
  store ptr %i.ef, ptr %3, align 8, !tbaa !177, !alias.scope !14077
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !44, !alias.scope !14077
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !67, !alias.scope !14077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ei, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  %i.ej = getelementptr i8, ptr %i.ed, i64 32
  %.val.i.i = load ptr, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %i.ed, i64 48
  %.val1.i.i = load ptr, ptr %i.ek, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.el = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.p:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(28) %3), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.q:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.ee, ptr %i.ar, align 8, !tbaa !45
  store ptr %3, ptr %i.as, align 8, !tbaa !49
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4exec12VectorReaderINS0_3MapIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEEEEC2EPKNS0_13DecodedVectorE:bb.a
  store i32 0, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.k, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !4709
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.p, align 1, !tbaa !4710
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.q, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4712
  store ptr %i.u, ptr %i.s, align 8, !tbaa !2915
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4714
  store ptr %i.x, ptr %i.v, align 8, !tbaa !2916
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(94) %i.z, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !177
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !14737, !nonnull !59, !align !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3 unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3: ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_7AnyTypeELb0ELb0EEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.af, align 1, !tbaa !593
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 355
  store i8 0, ptr %i.ag, align 1, !tbaa !593
  ret void

bb.c:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit, %bb.a, %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #34
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #34
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 2 dereferenceable(2) ptr @_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14056 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14048, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14050 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !14051
  store i8 0, ptr %i.d, align 1, !tbaa !14048
  br label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14052 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14053
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14054 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !14055
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14050 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !14055
  store i32 %i.u, ptr %i.o, align 8, !tbaa !14053
  %.pre = load i32, ptr %i.l, align 4, !tbaa !14052
  br label %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterIsNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14056
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14725 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !14052
  %i.an = load i32, ptr %i.a, align 8, !tbaa !14056
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14054
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !111
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1ElS5_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !14738, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14740 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i1 noundef zeroext true), !inline_history !14741
  store i8 0, ptr %i.b, align 1, !tbaa !14738
  br label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14742 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !14743
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.o = sitofp i32 %i.k to double
  %i.p = tail call noundef double @log2(double noundef %i.o) #34, !tbaa !3
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %exp2.i.i = tail call double @exp2(double %i.q)
  %i.r = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14744 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.r), !inline_history !14745
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14740 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.y, i32 noundef %i.r), !inline_history !14745
  store i32 %i.r, ptr %i.l, align 8, !tbaa !14743
  br label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !14746
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !3117, !noalias !14747 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3118, !noalias !14747 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !3114, !noalias !14747
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3116, !noalias !14747 ; 3 uses
  %i.ak = add nsw i32 %i.ag, %i.ae
  %i.al = icmp eq i32 %i.ag, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, <2 x i64> <i64 8, i64 56>
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = sext i32 %i.ae to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !115, !noalias !14750, !nonnull !59, !align !61 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72, !noalias !14750
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !86, !range !87, !noalias !14750, !noundef !59
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.az, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 59
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !87, !noalias !14750, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !89, !noalias !14750
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90, !noalias !14750
  %i.bi = shl nsw i64 %indvars.iv, 2
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3, !noalias !14750
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.g ], [ %i.bf, %bb.f ], [ %i.ba, %bb.d ]
  %i.bl = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !91, !noalias !14750 ; 2 uses
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.bv = load i8, ptr %i.bu, align 1, !range !87
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i.i.i = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = lshr i64 %indvars.iv, 6
  %i.by = and i64 %i.bx, 67108863
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = and i64 %indvars.iv, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.ci = and i64 %i.ch, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !90
  %i.cl = shl nsw i64 %indvars.iv, 2
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !91
  %i.cs = and i64 %i.co, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.cr
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.cd, %bb.i ], [ %i.ci, %bb.k ], [ %i.cu, %bb.l ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ElNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.cv = load i32, ptr %i.ac, align 8, !tbaa !14746, !noalias !14755 ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = load i8, ptr %i.b, align 1, !tbaa !14738, !range !87, !noalias !14755, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !14740, !noalias !14755 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40, !noalias !14755
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !14755
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, i1 noundef zeroext true), !noalias !14755, !inline_history !14758
  store i8 0, ptr %i.b, align 1, !tbaa !14738, !noalias !14755
  br label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.m, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dd = load i32, ptr %i.j, align 4, !tbaa !14742, !noalias !14755 ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.cw                ; 2 uses
  %i.df = load i32, ptr %i.l, align 8, !tbaa !14743, !noalias !14755
  %i.dg = icmp sgt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.n, label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit, !prof !56

bb.n:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.dh = sitofp i32 %i.de to double
  %i.di = call noundef double @log2(double noundef %i.dh) #34, !tbaa !3, !noalias !14755
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %exp2.i.i.i = call double @exp2(double %i.dj), !noalias !14755
  %i.dk = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.dl = load ptr, ptr %i.an, align 8, !tbaa !14744, !noalias !14755 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40, !noalias !14755
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !14755
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i32 noundef %i.dk), !noalias !14755, !inline_history !14759
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !14740, !noalias !14755 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40, !noalias !14755
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !14755
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, i32 noundef %i.dk), !noalias !14755, !inline_history !14759
  store i32 %i.dk, ptr %i.l, align 8, !tbaa !14743, !noalias !14755
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !14742, !noalias !14755
  br label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.n
  %i.dt = phi i32 [ %i.dd, %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.n ]
  store i32 %i.cw, ptr %i.ac, align 8, !tbaa !14746, !noalias !14755
  %i.du = add i32 %i.dt, %i.cv                    ; 2 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !14744, !noalias !14755
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !117, !noalias !14755
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.dy
  store i8 1, ptr %i.b, align 1, !tbaa !14738, !noalias !14755
  %i.ea = load ptr, ptr %i.am, align 8, !tbaa !14740, !noalias !14755 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40, !noalias !14755
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !14755
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, i32 noundef %i.du), !noalias !14755, !inline_history !14760
  %i.ed = load ptr, ptr %i.am, align 8, !tbaa !14740, !noalias !14755 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 3 uses
  store i64 %i.bn, ptr %i.dz, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !14761)
  call void @llvm.experimental.noalias.scope.decl(metadata !14764)
  %i.ef = load ptr, ptr %i.aj, align 8, !tbaa !2097, !noalias !14767, !nonnull !59, !align !61
  store ptr %i.ef, ptr %3, align 8, !tbaa !177, !alias.scope !14767
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !44, !alias.scope !14767
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !67, !alias.scope !14767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ei, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  %i.ej = getelementptr i8, ptr %i.ed, i64 32
  %.val.i.i = load ptr, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %i.ed, i64 48
  %.val1.i.i = load ptr, ptr %i.ek, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.el = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.p:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(28) %3), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.q:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.ee, ptr %i.ar, align 8, !tbaa !45
  store ptr %3, ptr %i.as, align 8, !tbaa !49
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4exec12VectorReaderINS0_3MapIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEEEEC2EPKNS0_13DecodedVectorE:bb.a
  store i32 0, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.k, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !4709
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.p, align 1, !tbaa !4710
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.q, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4712
  store ptr %i.u, ptr %i.s, align 8, !tbaa !3112
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4714
  store ptr %i.x, ptr %i.v, align 8, !tbaa !3113
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(94) %i.z, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !177
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !15427, !nonnull !59, !align !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3 unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3: ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_7AnyTypeELb0ELb0EEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.af, align 1, !tbaa !593
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 355
  store i8 0, ptr %i.ag, align 1, !tbaa !593
  ret void

bb.c:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit, %bb.a, %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #34
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #34
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14746 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14738, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14740 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !14741
  store i8 0, ptr %i.d, align 1, !tbaa !14738
  br label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14742 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14743
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14744 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !14745
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14740 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !14745
  store i32 %i.u, ptr %i.o, align 8, !tbaa !14743
  %.pre = load i32, ptr %i.l, align 4, !tbaa !14742
  br label %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterIlNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14746
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15415 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !14742
  %i.an = load i32, ptr %i.a, align 8, !tbaa !14746
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14744
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !117
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1EnS5_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15428, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15430 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i1 noundef zeroext true), !inline_history !15431
  store i8 0, ptr %i.b, align 1, !tbaa !15428
  br label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15432 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !15433
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.o = sitofp i32 %i.k to double
  %i.p = tail call noundef double @log2(double noundef %i.o) #34, !tbaa !3
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %exp2.i.i = tail call double @exp2(double %i.q)
  %i.r = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15434 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.r), !inline_history !15435
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15430 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.y, i32 noundef %i.r), !inline_history !15435
  store i32 %i.r, ptr %i.l, align 8, !tbaa !15433
  br label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !15436
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !3314, !noalias !15437 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3315, !noalias !15437 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !3311, !noalias !15437
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3313, !noalias !15437 ; 3 uses
  %i.ak = add nsw i32 %i.ag, %i.ae
  %i.al = icmp eq i32 %i.ag, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, <2 x i64> <i64 8, i64 56>
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = sext i32 %i.ae to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !120, !noalias !15440, !nonnull !59, !align !61 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72, !noalias !15440
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !86, !range !87, !noalias !15440, !noundef !59
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.az, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EnNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 59
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !87, !noalias !15440, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !89, !noalias !15440
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EnNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90, !noalias !15440
  %i.bi = shl nsw i64 %indvars.iv, 2
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3, !noalias !15440
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EnNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EnNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.g ], [ %i.bf, %bb.f ], [ %i.ba, %bb.d ]
  %i.bl = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bm = shl nsw i64 %i.bl, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bm
  %.0.copyload.i.i.i.i.i.i.i = load i128, ptr %i.bn, align 1, !noalias !15440 ; 2 uses
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EnNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.bv = load i8, ptr %i.bu, align 1, !range !87
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i.i.i = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = lshr i64 %indvars.iv, 6
  %i.by = and i64 %i.bx, 67108863
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = and i64 %indvars.iv, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.ci = and i64 %i.ch, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !90
  %i.cl = shl nsw i64 %indvars.iv, 2
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !91
  %i.cs = and i64 %i.co, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.cr
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.cd, %bb.i ], [ %i.ci, %bb.k ], [ %i.cu, %bb.l ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EnNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.cv = load i32, ptr %i.ac, align 8, !tbaa !15436, !noalias !15445 ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = load i8, ptr %i.b, align 1, !tbaa !15428, !range !87, !noalias !15445, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !15430, !noalias !15445 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40, !noalias !15445
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !15445
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, i1 noundef zeroext true), !noalias !15445, !inline_history !15448
  store i8 0, ptr %i.b, align 1, !tbaa !15428, !noalias !15445
  br label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.m, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dd = load i32, ptr %i.j, align 4, !tbaa !15432, !noalias !15445 ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.cw                ; 2 uses
  %i.df = load i32, ptr %i.l, align 8, !tbaa !15433, !noalias !15445
  %i.dg = icmp sgt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.n, label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit, !prof !56

bb.n:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.dh = sitofp i32 %i.de to double
  %i.di = call noundef double @log2(double noundef %i.dh) #34, !tbaa !3, !noalias !15445
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %exp2.i.i.i = call double @exp2(double %i.dj), !noalias !15445
  %i.dk = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.dl = load ptr, ptr %i.an, align 8, !tbaa !15434, !noalias !15445 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40, !noalias !15445
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !15445
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i32 noundef %i.dk), !noalias !15445, !inline_history !15449
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !15430, !noalias !15445 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40, !noalias !15445
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !15445
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, i32 noundef %i.dk), !noalias !15445, !inline_history !15449
  store i32 %i.dk, ptr %i.l, align 8, !tbaa !15433, !noalias !15445
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !15432, !noalias !15445
  br label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.n
  %i.dt = phi i32 [ %i.dd, %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.n ]
  store i32 %i.cw, ptr %i.ac, align 8, !tbaa !15436, !noalias !15445
  %i.du = add i32 %i.dt, %i.cv                    ; 2 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !15434, !noalias !15445
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !122, !noalias !15445
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.dy
  store i8 1, ptr %i.b, align 1, !tbaa !15428, !noalias !15445
  %i.ea = load ptr, ptr %i.am, align 8, !tbaa !15430, !noalias !15445 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40, !noalias !15445
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !15445
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, i32 noundef %i.du), !noalias !15445, !inline_history !15450
  %i.ed = load ptr, ptr %i.am, align 8, !tbaa !15430, !noalias !15445 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 3 uses
  store i128 %.0.copyload.i.i.i.i.i.i.i, ptr %i.dz, align 16, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !15451)
  call void @llvm.experimental.noalias.scope.decl(metadata !15454)
  %i.ef = load ptr, ptr %i.aj, align 8, !tbaa !2097, !noalias !15457, !nonnull !59, !align !61
  store ptr %i.ef, ptr %3, align 8, !tbaa !177, !alias.scope !15457
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !44, !alias.scope !15457
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !67, !alias.scope !15457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ei, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  %i.ej = getelementptr i8, ptr %i.ed, i64 32
  %.val.i.i = load ptr, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %i.ed, i64 48
  %.val1.i.i = load ptr, ptr %i.ek, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.el = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.p:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(28) %3), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.q:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.ee, ptr %i.ar, align 8, !tbaa !45
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox4exec12VectorReaderINS0_3MapInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEEEEC2EPKNS0_13DecodedVectorE:bb.a
  store i32 0, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.k, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !4709
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.p, align 1, !tbaa !4710
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.q, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4712
  store ptr %i.u, ptr %i.s, align 8, !tbaa !3309
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4714
  store ptr %i.x, ptr %i.v, align 8, !tbaa !3310
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(94) %i.z, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !177
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !16117, !nonnull !59, !align !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3 unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3: ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_7AnyTypeELb0ELb0EEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.af, align 1, !tbaa !593
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 355
  store i8 0, ptr %i.ag, align 1, !tbaa !593
  ret void

bb.c:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit, %bb.a, %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #34
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #34
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 16 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15436 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15428, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15430 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !15431
  store i8 0, ptr %i.d, align 1, !tbaa !15428
  br label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15432 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !15433
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15434 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !15435
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15430 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !15435
  store i32 %i.u, ptr %i.o, align 8, !tbaa !15433
  %.pre = load i32, ptr %i.l, align 4, !tbaa !15432
  br label %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterInNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15436
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16105 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !15432
  %i.an = load i32, ptr %i.a, align 8, !tbaa !15436
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15434
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !122
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1EfS5_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16118, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16120 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i1 noundef zeroext true), !inline_history !16121
  store i8 0, ptr %i.b, align 1, !tbaa !16118
  br label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16122 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16123
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.o = sitofp i32 %i.k to double
  %i.p = tail call noundef double @log2(double noundef %i.o) #34, !tbaa !3
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %exp2.i.i = tail call double @exp2(double %i.q)
  %i.r = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16124 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.r), !inline_history !16125
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16120 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.y, i32 noundef %i.r), !inline_history !16125
  store i32 %i.r, ptr %i.l, align 8, !tbaa !16123
  br label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !16126
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !3511, !noalias !16127 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3512, !noalias !16127 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !3508, !noalias !16127
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3510, !noalias !16127 ; 3 uses
  %i.ak = add nsw i32 %i.ag, %i.ae
  %i.al = icmp eq i32 %i.ag, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, <2 x i64> <i64 8, i64 56>
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = sext i32 %i.ae to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !128, !noalias !16130, !nonnull !59, !align !61 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72, !noalias !16130
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !86, !range !87, !noalias !16130, !noundef !59
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.az, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 59
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !87, !noalias !16130, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !89, !noalias !16130
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90, !noalias !16130
  %i.bi = shl nsw i64 %indvars.iv, 2
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3, !noalias !16130
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.g ], [ %i.bf, %bb.f ], [ %i.ba, %bb.d ]
  %i.bl = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !130, !noalias !16130 ; 2 uses
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.bv = load i8, ptr %i.bu, align 1, !range !87
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i.i.i = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = lshr i64 %indvars.iv, 6
  %i.by = and i64 %i.bx, 67108863
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = and i64 %indvars.iv, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.ci = and i64 %i.ch, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !90
  %i.cl = shl nsw i64 %indvars.iv, 2
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !91
  %i.cs = and i64 %i.co, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.cr
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.cd, %bb.i ], [ %i.ci, %bb.k ], [ %i.cu, %bb.l ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.cv = load i32, ptr %i.ac, align 8, !tbaa !16126, !noalias !16135 ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = load i8, ptr %i.b, align 1, !tbaa !16118, !range !87, !noalias !16135, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !16120, !noalias !16135 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40, !noalias !16135
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !16135
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, i1 noundef zeroext true), !noalias !16135, !inline_history !16138
  store i8 0, ptr %i.b, align 1, !tbaa !16118, !noalias !16135
  br label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.m, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dd = load i32, ptr %i.j, align 4, !tbaa !16122, !noalias !16135 ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.cw                ; 2 uses
  %i.df = load i32, ptr %i.l, align 8, !tbaa !16123, !noalias !16135
  %i.dg = icmp sgt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.n, label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit, !prof !56

bb.n:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.dh = sitofp i32 %i.de to double
  %i.di = call noundef double @log2(double noundef %i.dh) #34, !tbaa !3, !noalias !16135
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %exp2.i.i.i = call double @exp2(double %i.dj), !noalias !16135
  %i.dk = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.dl = load ptr, ptr %i.an, align 8, !tbaa !16124, !noalias !16135 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40, !noalias !16135
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !16135
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i32 noundef %i.dk), !noalias !16135, !inline_history !16139
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !16120, !noalias !16135 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40, !noalias !16135
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !16135
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, i32 noundef %i.dk), !noalias !16135, !inline_history !16139
  store i32 %i.dk, ptr %i.l, align 8, !tbaa !16123, !noalias !16135
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !16122, !noalias !16135
  br label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.n
  %i.dt = phi i32 [ %i.dd, %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.n ]
  store i32 %i.cw, ptr %i.ac, align 8, !tbaa !16126, !noalias !16135
  %i.du = add i32 %i.dt, %i.cv                    ; 2 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !16124, !noalias !16135
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !132, !noalias !16135
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dy
  store i8 1, ptr %i.b, align 1, !tbaa !16118, !noalias !16135
  %i.ea = load ptr, ptr %i.am, align 8, !tbaa !16120, !noalias !16135 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40, !noalias !16135
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !16135
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, i32 noundef %i.du), !noalias !16135, !inline_history !16140
  %i.ed = load ptr, ptr %i.am, align 8, !tbaa !16120, !noalias !16135 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 3 uses
  store float %i.bn, ptr %i.dz, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !16141)
  call void @llvm.experimental.noalias.scope.decl(metadata !16144)
  %i.ef = load ptr, ptr %i.aj, align 8, !tbaa !2097, !noalias !16147, !nonnull !59, !align !61
  store ptr %i.ef, ptr %3, align 8, !tbaa !177, !alias.scope !16147
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !44, !alias.scope !16147
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !67, !alias.scope !16147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ei, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  %i.ej = getelementptr i8, ptr %i.ed, i64 32
  %.val.i.i = load ptr, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %i.ed, i64 48
  %.val1.i.i = load ptr, ptr %i.ek, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.el = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.p:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(28) %3), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.q:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.ee, ptr %i.ar, align 8, !tbaa !45
  store ptr %3, ptr %i.as, align 8, !tbaa !49
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox4exec12VectorReaderINS0_3MapIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEEEEC2EPKNS0_13DecodedVectorE:bb.a
  store i32 0, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.k, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !4709
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.o, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.p, align 1, !tbaa !4710
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.q, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4712
  store ptr %i.u, ptr %i.s, align 8, !tbaa !3506
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4714
  store ptr %i.x, ptr %i.v, align 8, !tbaa !3507
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(94) %i.z, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !177
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !16807, !nonnull !59, !align !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3 unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3: ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_7AnyTypeELb0ELb0EEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.af, align 1, !tbaa !593
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 355
  store i8 0, ptr %i.ag, align 1, !tbaa !593
  ret void

bb.c:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit, %bb.a, %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #34
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #34
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16126 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16118, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !16121
  store i8 0, ptr %i.d, align 1, !tbaa !16118
  br label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16122 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !16123
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16124 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !16125
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16120 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !16125
  store i32 %i.u, ptr %i.o, align 8, !tbaa !16123
  %.pre = load i32, ptr %i.l, align 4, !tbaa !16122
  br label %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterIfNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !16126
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16795 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !16122
  %i.an = load i32, ptr %i.a, align 8, !tbaa !16126
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16124
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !132
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1EdS5_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16808, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16810 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i1 noundef zeroext true), !inline_history !16811
  store i8 0, ptr %i.b, align 1, !tbaa !16808
  br label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16812 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16813
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.o = sitofp i32 %i.k to double
  %i.p = tail call noundef double @log2(double noundef %i.o) #34, !tbaa !3
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %exp2.i.i = tail call double @exp2(double %i.q)
  %i.r = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16814 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.r), !inline_history !16815
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16810 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.y, i32 noundef %i.r), !inline_history !16815
  store i32 %i.r, ptr %i.l, align 8, !tbaa !16813
  br label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !16816
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !3708, !noalias !16817 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3709, !noalias !16817 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !3705, !noalias !16817
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3707, !noalias !16817 ; 3 uses
  %i.ak = add nsw i32 %i.ag, %i.ae
  %i.al = icmp eq i32 %i.ag, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, <2 x i64> <i64 8, i64 56>
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = sext i32 %i.ae to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !136, !noalias !16820, !nonnull !59, !align !61 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72, !noalias !16820
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !86, !range !87, !noalias !16820, !noundef !59
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.az, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 59
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !87, !noalias !16820, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !89, !noalias !16820
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90, !noalias !16820
  %i.bi = shl nsw i64 %indvars.iv, 2
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3, !noalias !16820
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.g ], [ %i.bf, %bb.f ], [ %i.ba, %bb.d ]
  %i.bl = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !138, !noalias !16820 ; 2 uses
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 58
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.bv = load i8, ptr %i.bu, align 1, !range !87
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i.i.i = select i1 %i.bt, i1 true, i1 %i.bw
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = lshr i64 %indvars.iv, 6
  %i.by = and i64 %i.bx, 67108863
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = and i64 %indvars.iv, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.ca, %i.cc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 59
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.ci = and i64 %i.ch, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !90
  %i.cl = shl nsw i64 %indvars.iv, 2
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 6
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !91
  %i.cs = and i64 %i.co, 63
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.cr
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.cd, %bb.i ], [ %i.ci, %bb.k ], [ %i.cu, %bb.l ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1EdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.cv = load i32, ptr %i.ac, align 8, !tbaa !16816, !noalias !16825 ; 2 uses
  %i.cw = add nsw i32 %i.cv, 1                    ; 2 uses
  %i.cx = load i8, ptr %i.b, align 1, !tbaa !16808, !range !87, !noalias !16825, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.cz = load ptr, ptr %i.am, align 8, !tbaa !16810, !noalias !16825 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40, !noalias !16825
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !16825
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(96) %i.cz, i1 noundef zeroext true), !noalias !16825, !inline_history !16828
  store i8 0, ptr %i.b, align 1, !tbaa !16808, !noalias !16825
  br label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.m, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dd = load i32, ptr %i.j, align 4, !tbaa !16812, !noalias !16825 ; 2 uses
  %i.de = add nsw i32 %i.dd, %i.cw                ; 2 uses
  %i.df = load i32, ptr %i.l, align 8, !tbaa !16813, !noalias !16825
  %i.dg = icmp sgt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.n, label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit, !prof !56

bb.n:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.dh = sitofp i32 %i.de to double
  %i.di = call noundef double @log2(double noundef %i.dh) #34, !tbaa !3, !noalias !16825
  %i.dj = call double @llvm.ceil.f64(double %i.di)
  %exp2.i.i.i = call double @exp2(double %i.dj), !noalias !16825
  %i.dk = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.dl = load ptr, ptr %i.an, align 8, !tbaa !16814, !noalias !16825 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40, !noalias !16825
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !16825
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i32 noundef %i.dk), !noalias !16825, !inline_history !16829
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !16810, !noalias !16825 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40, !noalias !16825
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !16825
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(96) %i.dp, i32 noundef %i.dk), !noalias !16825, !inline_history !16829
  store i32 %i.dk, ptr %i.l, align 8, !tbaa !16813, !noalias !16825
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !16812, !noalias !16825
  br label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.n
  %i.dt = phi i32 [ %i.dd, %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.n ]
  store i32 %i.cw, ptr %i.ac, align 8, !tbaa !16816, !noalias !16825
  %i.du = add i32 %i.dt, %i.cv                    ; 2 uses
  %i.dv = load ptr, ptr %i.an, align 8, !tbaa !16814, !noalias !16825
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !140, !noalias !16825
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.dy
  store i8 1, ptr %i.b, align 1, !tbaa !16808, !noalias !16825
  %i.ea = load ptr, ptr %i.am, align 8, !tbaa !16810, !noalias !16825 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40, !noalias !16825
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !16825
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(96) %i.ea, i32 noundef %i.du), !noalias !16825, !inline_history !16830
  %i.ed = load ptr, ptr %i.am, align 8, !tbaa !16810, !noalias !16825 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 3 uses
  store double %i.bn, ptr %i.dz, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !16831)
  call void @llvm.experimental.noalias.scope.decl(metadata !16834)
  %i.ef = load ptr, ptr %i.aj, align 8, !tbaa !2097, !noalias !16837, !nonnull !59, !align !61
  store ptr %i.ef, ptr %3, align 8, !tbaa !177, !alias.scope !16837
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !44, !alias.scope !16837
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !67, !alias.scope !16837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ei, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  %i.ej = getelementptr i8, ptr %i.ed, i64 32
  %.val.i.i = load ptr, ptr %i.ej, align 8, !tbaa !35
  %i.ek = getelementptr i8, ptr %i.ed, i64 48
  %.val1.i.i = load ptr, ptr %i.ek, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.el = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.p:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(28) %3), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.q:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.ee, ptr %i.ar, align 8, !tbaa !45
  store ptr %3, ptr %i.as, align 8, !tbaa !49
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox4exec12VectorReaderINS0_3MapIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEEEEC2EPKNS0_13DecodedVectorE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4714
  store ptr %i.x, ptr %i.v, align 8, !tbaa !3704
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(94) %i.z, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !177
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !17497, !nonnull !59, !align !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3 unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3: ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_7AnyTypeELb0ELb0EEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.af, align 1, !tbaa !593
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 355
  store i8 0, ptr %i.ag, align 1, !tbaa !593
  ret void

bb.c:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit, %bb.a, %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #34
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #34
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16816 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16808, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16810 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !16811
  store i8 0, ptr %i.d, align 1, !tbaa !16808
  br label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16812 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !16813
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16814 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !16815
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16810 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !16815
  store i32 %i.u, ptr %i.o, align 8, !tbaa !16813
  %.pre = load i32, ptr %i.l, align 4, !tbaa !16812
  br label %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterIdNS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !16816
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17485 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !16812
  %i.an = load i32, ptr %i.a, align 8, !tbaa !16816
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16814
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !140
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1ES3_S6_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Varchar, facebook::velox::Generic<>>::Element", align 8 ; 7 uses
  %4 = alloca %"class.std::tuple.5002", align 8   ; 5 uses
  %5 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !17498, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17500 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i1 noundef zeroext true), !inline_history !17501
  store i8 0, ptr %i.b, align 4, !tbaa !17498
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17502, !range !87, !noundef !59
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17503 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(96) %i.n, i1 noundef zeroext true), !inline_history !17501
  store i8 0, ptr %i.j, align 1, !tbaa !17502
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17504 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !17505
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.w = sitofp i32 %i.s to double
  %i.x = tail call noundef double @log2(double noundef %i.w) #34, !tbaa !3
  %i.y = tail call double @llvm.ceil.f64(double %i.x)
  %exp2.i.i = tail call double @exp2(double %i.y)
  %i.z = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17500 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(112) %i.ab, i32 noundef %i.z), !inline_history !17506
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17503 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i32 noundef %i.z), !inline_history !17506
  store i32 %i.z, ptr %i.t, align 8, !tbaa !17505
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ak, align 8, !tbaa !17507
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !3905, !noalias !17508 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3906, !noalias !17508 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !3902, !noalias !17508
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !3904, !noalias !17508 ; 4 uses
  %i.as = add nsw i32 %i.ao, %i.am
  %i.at = icmp eq i32 %i.ao, 0
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, <2 x i64> <i64 8, i64 56>
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = sext i32 %i.am to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit15, %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit15
  %indvars.iv = phi i64 [ %i.be, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit15 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !17511)
  call void @llvm.experimental.noalias.scope.decl(metadata !17514)
  %i.bf = load ptr, ptr %i.ap, align 8, !tbaa !145, !noalias !17517, !nonnull !59, !align !61 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72, !noalias !17517
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 58
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !86, !range !87, !noalias !17517, !noundef !59
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bk, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 59
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !88, !range !87, !noalias !17517, !noundef !59
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !89, !noalias !17517
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.i:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !90, !noalias !17517
  %i.bt = shl nsw i64 %indvars.iv, 2
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3, !noalias !17517
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.i ], [ %i.bq, %bb.h ], [ %i.bl, %bb.f ]
  %i.bw = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bw ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !noalias !17517 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !55, !noalias !17517 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !17517
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.au, align 8, !alias.scope !17517
  store ptr %i.ar, ptr %i.av, align 8, !alias.scope !17517
  store i64 %indvars.iv, ptr %i.aw, align 8, !alias.scope !17517
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i to i32 ; 4 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !86, !range !87, !noundef !59
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.cg = load i8, ptr %i.cf, align 1, !range !87
  %i.ch = trunc nuw i8 %i.cg to i1
  %or.cond.i.i.i = select i1 %i.ce, i1 true, i1 %i.ch
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ci = lshr i64 %indvars.iv, 6
  %i.cj = and i64 %i.ci, 67108863
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !91
  %i.cm = and i64 %indvars.iv, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cl, %i.cn
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 59
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cs = load i64, ptr %i.ca, align 8, !tbaa !91
  %i.ct = and i64 %i.cs, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.n:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !90
  %i.cw = shl nsw i64 %indvars.iv, 2
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = lshr i64 %i.cz, 6
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !91
  %i.dd = and i64 %i.cz, 63
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.de, %i.dc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.k, %bb.m, %bb.n
  %.0.i.i.i.in = phi i64 [ %i.co, %bb.k ], [ %i.ct, %bb.m ], [ %i.df, %bb.n ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.t, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5002") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.dg = load ptr, ptr %i.ay, align 8, !tbaa !17518, !nonnull !59, !align !61 ; 5 uses
  %i.dh = load ptr, ptr %4, align 8, !tbaa !11905, !nonnull !59, !align !61 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !147 ; 2 uses
  %i.dk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4294967295 ; 2 uses
  %i.dl = add i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !149
  %i.do = icmp ugt i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.o, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.o:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(96) %i.dg, i64 noundef %i.dl), !inline_history !12452
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.o, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !147
  %.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !151
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dj
  %i.dv = icmp ult i32 %i.cb, 13
  %i.dw = select i1 %i.dv, ptr %i.ax, ptr %.sroa.2.0.copyload.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.dw, i64 %i.dk, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit: ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !17520)
  call void @llvm.experimental.noalias.scope.decl(metadata !17523)
  %i.dx = load ptr, ptr %i.ar, align 8, !tbaa !2097, !noalias !17526, !nonnull !59, !align !61
  store ptr %i.dx, ptr %5, align 8, !tbaa !177, !alias.scope !17526
  store <2 x ptr> %i.az, ptr %i.ba, align 8, !tbaa !44, !alias.scope !17526
  store i32 %i.bl, ptr %i.bb, align 8, !tbaa !67, !alias.scope !17526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dy = load ptr, ptr %i.dh, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ea, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ea, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  %i.eb = getelementptr i8, ptr %i.dh, i64 8
  %.val.i.i = load ptr, ptr %i.eb, align 8, !tbaa !35
  %i.ec = getelementptr i8, ptr %i.dh, i64 24
  %.val1.i.i = load ptr, ptr %i.ec, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.ed = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.r:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(28) %5), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.s:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dh, ptr %i.bc, align 8, !tbaa !45
  store ptr %5, ptr %i.bd, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit15

bb.t:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.ef = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !147 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.t, align 4, !tbaa !17504
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !17507
  %i.ax = add i32 %i.av, -1
  %i.ay = add i32 %i.ax, %i.aw
  store i8 1, ptr %i.l, align 1, !tbaa !17502
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17503 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i32 noundef %i.ay), !inline_history !18243
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !17503
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.be, ptr %0, align 8, !tbaa !12664, !alias.scope !18244
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.bf, align 8, !tbaa !12492, !alias.scope !18244
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17507 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17498, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17500 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(112) %i.h, i1 noundef zeroext true), !inline_history !17501
  store i8 0, ptr %i.d, align 4, !tbaa !17498
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17502, !range !87, !noundef !59
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17503 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(96) %i.p, i1 noundef zeroext true), !inline_history !17501
  store i8 0, ptr %i.l, align 1, !tbaa !17502
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !17504 ; 2 uses
  %i.v = add nsw i32 %i.u, %i.c                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !17505
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.z = sitofp i32 %i.v to double
  %i.aa = tail call noundef double @log2(double noundef %i.z) #34, !tbaa !3
  %i.ab = tail call double @llvm.ceil.f64(double %i.aa)
  %exp2.i.i = tail call double @exp2(double %i.ab)
  %i.ac = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17500 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, i32 noundef %i.ac), !inline_history !17506
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17503 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i32 noundef %i.ac), !inline_history !17506
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !17505
  %.pre = load i32, ptr %i.t, align 4, !tbaa !17504
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.an = phi i32 [ %i.u, %_ZN8facebook5velox4exec9MapWriterINS0_7VarcharENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.e ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17507
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18229 ; 2 uses
  %i.aq = add i32 %i.an, %i.b
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(94) %i.ap, i32 noundef %i.aq, i1 noundef zeroext true)
  %i.au = load i32, ptr %i.t, align 4, !tbaa !17504
  %i.av = load i32, ptr %i.a, align 8, !tbaa !17507
  %i.aw = add i32 %i.au, -1
  %i.ax = add i32 %i.aw, %i.av
  store i8 1, ptr %i.d, align 4, !tbaa !17498
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17500 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(112) %i.az, i32 noundef %i.ax), !inline_history !18242
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !17500
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  ret ptr %i.bd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1ES3_S6_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Varbinary, facebook::velox::Generic<>>::Element", align 8 ; 7 uses
  %4 = alloca %"class.std::tuple.5002", align 8   ; 5 uses
  %5 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !18247, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18249 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i1 noundef zeroext true), !inline_history !18250
  store i8 0, ptr %i.b, align 4, !tbaa !18247
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18251, !range !87, !noundef !59
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18252 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(96) %i.n, i1 noundef zeroext true), !inline_history !18250
  store i8 0, ptr %i.j, align 1, !tbaa !18251
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18253 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !18254
  %i.v = icmp sgt i32 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.w = sitofp i32 %i.s to double
  %i.x = tail call noundef double @log2(double noundef %i.w) #34, !tbaa !3
  %i.y = tail call double @llvm.ceil.f64(double %i.x)
  %exp2.i.i = tail call double @exp2(double %i.y)
  %i.z = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18249 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(112) %i.ab, i32 noundef %i.z), !inline_history !18255
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18252 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i32 noundef %i.z), !inline_history !18255
  store i32 %i.z, ptr %i.t, align 8, !tbaa !18254
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ak, align 8, !tbaa !18256
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !4102, !noalias !18257 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4103, !noalias !18257 ; 2 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !4099, !noalias !18257
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4101, !noalias !18257 ; 4 uses
  %i.as = add nsw i32 %i.ao, %i.am
  %i.at = icmp eq i32 %i.ao, 0
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, <2 x i64> <i64 8, i64 56>
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = sext i32 %i.am to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit15, %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit15
  %indvars.iv = phi i64 [ %i.be, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit15 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !18260)
  call void @llvm.experimental.noalias.scope.decl(metadata !18263)
  %i.bf = load ptr, ptr %i.ap, align 8, !tbaa !153, !noalias !18266, !nonnull !59, !align !61 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72, !noalias !18266
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 58
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !86, !range !87, !noalias !18266, !noundef !59
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.bk, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 59
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !88, !range !87, !noalias !18266, !noundef !59
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !89, !noalias !18266
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.i:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !90, !noalias !18266
  %i.bt = shl nsw i64 %indvars.iv, 2
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3, !noalias !18266
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.i ], [ %i.bq, %bb.h ], [ %i.bl, %bb.f ]
  %i.bw = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.bw ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bx, align 8, !noalias !18266 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !55, !noalias !18266 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !18266
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.au, align 8, !alias.scope !18266
  store ptr %i.ar, ptr %i.av, align 8, !alias.scope !18266
  store i64 %indvars.iv, ptr %i.aw, align 8, !alias.scope !18266
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  %i.cb = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i.i to i32 ; 4 uses
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !86, !range !87, !noundef !59
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.cg = load i8, ptr %i.cf, align 1, !range !87
  %i.ch = trunc nuw i8 %i.cg to i1
  %or.cond.i.i.i = select i1 %i.ce, i1 true, i1 %i.ch
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ci = lshr i64 %indvars.iv, 6
  %i.cj = and i64 %i.ci, 67108863
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !91
  %i.cm = and i64 %indvars.iv, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cl, %i.cn
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 59
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cs = load i64, ptr %i.ca, align 8, !tbaa !91
  %i.ct = and i64 %i.cs, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.n:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !90
  %i.cw = shl nsw i64 %indvars.iv, 2
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = lshr i64 %i.cz, 6
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !91
  %i.dd = and i64 %i.cz, 63
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.de, %i.dc
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.k, %bb.m, %bb.n
  %.0.i.i.i.in = phi i64 [ %i.co, %bb.k ], [ %i.ct, %bb.m ], [ %i.df, %bb.n ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.t, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5002") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.dg = load ptr, ptr %i.ay, align 8, !tbaa !17518, !nonnull !59, !align !61 ; 5 uses
  %i.dh = load ptr, ptr %4, align 8, !tbaa !11905, !nonnull !59, !align !61 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !147 ; 2 uses
  %i.dk = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4294967295 ; 2 uses
  %i.dl = add i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !149
  %i.do = icmp ugt i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.o, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.o:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dp = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(96) %i.dg, i64 noundef %i.dl), !inline_history !12452
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.o, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !147
  %.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !151
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dj
  %i.dv = icmp ult i32 %i.cb, 13
  %i.dw = select i1 %i.dv, ptr %i.ax, ptr %.sroa.2.0.copyload.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.dw, i64 %i.dk, i1 false)
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit

_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit: ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !18267)
  call void @llvm.experimental.noalias.scope.decl(metadata !18270)
  %i.dx = load ptr, ptr %i.ar, align 8, !tbaa !2097, !noalias !18273, !nonnull !59, !align !61
  store ptr %i.dx, ptr %5, align 8, !tbaa !177, !alias.scope !18273
  store <2 x ptr> %i.az, ptr %i.ba, align 8, !tbaa !44, !alias.scope !18273
  store i32 %i.bl, ptr %i.bb, align 8, !tbaa !67, !alias.scope !18273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dy = load ptr, ptr %i.dh, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ea, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ea, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  %i.eb = getelementptr i8, ptr %i.dh, i64 8
  %.val.i.i = load ptr, ptr %i.eb, align 8, !tbaa !35
  %i.ec = getelementptr i8, ptr %i.dh, i64 24
  %.val1.i.i = load ptr, ptr %i.ec, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.ed = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.r:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(28) %5), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.s:                                             ; preds = %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dh, ptr %i.bc, align 8, !tbaa !45
  store ptr %5, ptr %i.bd, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit15

bb.t:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.ef = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !147 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18252 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i32 noundef %i.ac), !inline_history !18255
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !18254
  %.pre = load i32, ptr %i.t, align 4, !tbaa !18253
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.an = phi i32 [ %i.u, %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.e ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !18256
  %i.ao = add i32 %i.an, %i.b
  store i8 1, ptr %i.d, align 4, !tbaa !18247
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18249 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(112) %i.aq, i32 noundef %i.ao), !inline_history !18989
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !18249
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.t, align 4, !tbaa !18253
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !18256
  %i.ax = add i32 %i.av, -1
  %i.ay = add i32 %i.ax, %i.aw
  store i8 1, ptr %i.l, align 1, !tbaa !18251
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !18252 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i32 noundef %i.ay), !inline_history !18990
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !18252
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.be, ptr %0, align 8, !tbaa !12664, !alias.scope !18991
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.bf, align 8, !tbaa !12492, !alias.scope !18991
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18256 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !18247, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18249 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(112) %i.h, i1 noundef zeroext true), !inline_history !18250
  store i8 0, ptr %i.d, align 4, !tbaa !18247
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18251, !range !87, !noundef !59
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18252 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(96) %i.p, i1 noundef zeroext true), !inline_history !18250
  store i8 0, ptr %i.l, align 1, !tbaa !18251
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18253 ; 2 uses
  %i.v = add nsw i32 %i.u, %i.c                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18254
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.z = sitofp i32 %i.v to double
  %i.aa = tail call noundef double @log2(double noundef %i.z) #34, !tbaa !3
  %i.ab = tail call double @llvm.ceil.f64(double %i.aa)
  %exp2.i.i = tail call double @exp2(double %i.ab)
  %i.ac = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18249 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, i32 noundef %i.ac), !inline_history !18255
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18252 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, i32 noundef %i.ac), !inline_history !18255
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !18254
  %.pre = load i32, ptr %i.t, align 4, !tbaa !18253
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.an = phi i32 [ %i.u, %_ZN8facebook5velox4exec9MapWriterINS0_9VarbinaryENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.e ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !18256
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18976 ; 2 uses
  %i.aq = add i32 %i.an, %i.b
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(94) %i.ap, i32 noundef %i.aq, i1 noundef zeroext true)
  %i.au = load i32, ptr %i.t, align 4, !tbaa !18253
  %i.av = load i32, ptr %i.a, align 8, !tbaa !18256
  %i.aw = add i32 %i.au, -1
  %i.ax = add i32 %i.aw, %i.av
  store i8 1, ptr %i.d, align 4, !tbaa !18247
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18249 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(112) %i.az, i32 noundef %i.ax), !inline_history !18989
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !18249
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  ret ptr %i.bd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9copy_fromERKNS1_7MapViewILb1ES3_S6_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.facebook::velox::exec::GenericView", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 5 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !18994, !range !87, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18996 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.f, i1 noundef zeroext true), !inline_history !18997
  store i8 0, ptr %i.b, align 1, !tbaa !18994
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18998 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18999
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.o = sitofp i32 %i.k to double
  %i.p = tail call noundef double @log2(double noundef %i.o) #34, !tbaa !3
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %exp2.i.i = tail call double @exp2(double %i.q)
  %i.r = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19000 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef %i.r), !inline_history !19001
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18996 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(96) %i.y, i32 noundef %i.r), !inline_history !19001
  store i32 %i.r, ptr %i.l, align 8, !tbaa !18999
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !19002
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !4299, !noalias !19003 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4300, !noalias !19003 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !4296, !noalias !19003
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4298, !noalias !19003 ; 3 uses
  %i.ak = add nsw i32 %i.ag, %i.ae
  %i.al = icmp eq i32 %i.ag, 0
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, <2 x i64> <i64 8, i64 56>
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = sext i32 %i.ae to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.at, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !156, !noalias !19006, !nonnull !59, !align !61 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72, !noalias !19006
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !86, !range !87, !noalias !19006, !noundef !59
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  br i1 %i.az, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 59
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !88, !range !87, !noalias !19006, !noundef !59
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !89, !noalias !19006
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90, !noalias !19006
  %i.bi = shl nsw i64 %indvars.iv, 2
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3, !noalias !19006
  br label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.g ], [ %i.bf, %bb.f ], [ %i.ba, %bb.d ]
  %i.bl = sext i32 %.0.i.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.bl ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !tbaa !91, !noalias !19006 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !91, !noalias !19006 ; 2 uses
  %i.bn = load ptr, ptr %i.aj, align 8, !tbaa !2097, !nonnull !59, !align !61 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 58
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 57
  %i.bu = load i8, ptr %i.bt, align 1, !range !87
  %i.bv = trunc nuw i8 %i.bu to i1
  %or.cond.i.i.i = select i1 %i.bs, i1 true, i1 %i.bv
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bw = lshr i64 %indvars.iv, 6
  %i.bx = and i64 %i.bw, 67108863
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !91
  %i.ca = and i64 %indvars.iv, 63
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.bz, %i.cb
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.j:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 59
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = load i64, ptr %i.bp, align 8, !tbaa !91
  %i.ch = and i64 %i.cg, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !90
  %i.ck = shl nsw i64 %indvars.iv, 2
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = lshr i64 %i.cn, 6
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !91
  %i.cr = and i64 %i.cn, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = and i64 %i.cs, %i.cq
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.cc, %bb.i ], [ %i.ch, %bb.k ], [ %i.ct, %bb.l ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_7MapViewILb1ENS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE15ElementAccessorEEdeEv.exit, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit
  %i.cu = load i32, ptr %i.ac, align 8, !tbaa !19002, !noalias !19011 ; 2 uses
  %i.cv = add nsw i32 %i.cu, 1                    ; 2 uses
  %i.cw = load i8, ptr %i.b, align 1, !tbaa !18994, !range !87, !noalias !19011, !noundef !59
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.m, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.cy = load ptr, ptr %i.am, align 8, !tbaa !18996, !noalias !19011 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !40, !noalias !19011
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !19011
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(96) %i.cy, i1 noundef zeroext true), !noalias !19011, !inline_history !19014
  store i8 0, ptr %i.b, align 1, !tbaa !18994, !noalias !19011
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i: ; preds = %bb.m, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7GenericINS0_7AnyTypeELb0ELb0EEEE9has_valueEv.exit.thread
  %i.dc = load i32, ptr %i.j, align 4, !tbaa !18998, !noalias !19011 ; 2 uses
  %i.dd = add nsw i32 %i.dc, %i.cv                ; 2 uses
  %i.de = load i32, ptr %i.l, align 8, !tbaa !18999, !noalias !19011
  %i.df = icmp sgt i32 %i.dd, %i.de
  br i1 %i.df, label %bb.n, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit, !prof !56

bb.n:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i
  %i.dg = sitofp i32 %i.dd to double
  %i.dh = call noundef double @log2(double noundef %i.dg) #34, !tbaa !3, !noalias !19011
  %i.di = call double @llvm.ceil.f64(double %i.dh)
  %exp2.i.i.i = call double @exp2(double %i.di), !noalias !19011
  %i.dj = fptosi double %exp2.i.i.i to i32        ; 3 uses
  %i.dk = load ptr, ptr %i.an, align 8, !tbaa !19000, !noalias !19011 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !40, !noalias !19011
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !19011
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i32 noundef %i.dj), !noalias !19011, !inline_history !19015
  %i.do = load ptr, ptr %i.am, align 8, !tbaa !18996, !noalias !19011 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !40, !noalias !19011
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !19011
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(96) %i.do, i32 noundef %i.dj), !noalias !19011, !inline_history !19015
  store i32 %i.dj, ptr %i.l, align 8, !tbaa !18999, !noalias !19011
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !18998, !noalias !19011
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i, %bb.n
  %i.ds = phi i32 [ %i.dc, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i.i ], [ %.pre.i, %bb.n ]
  store i32 %i.cv, ptr %i.ac, align 8, !tbaa !19002, !noalias !19011
  %i.dt = add i32 %i.ds, %i.cu                    ; 2 uses
  %i.du = load ptr, ptr %i.an, align 8, !tbaa !19000, !noalias !19011
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !159, !noalias !19011
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !18994, !noalias !19011
  %i.dz = load ptr, ptr %i.am, align 8, !tbaa !18996, !noalias !19011 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !40, !noalias !19011
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !19011
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(96) %i.dz, i32 noundef %i.dt), !noalias !19011, !inline_history !19016
  %i.ec = load ptr, ptr %i.am, align 8, !tbaa !18996, !noalias !19011 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.dy, align 8, !tbaa !91
  %.sroa.5.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa.4.8..sroa_idx, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !19017)
  call void @llvm.experimental.noalias.scope.decl(metadata !19020)
  %i.ee = load ptr, ptr %i.aj, align 8, !tbaa !2097, !noalias !19023, !nonnull !59, !align !61
  store ptr %i.ee, ptr %3, align 8, !tbaa !177, !alias.scope !19023
  store <2 x ptr> %i.ao, ptr %i.ap, align 8, !tbaa !44, !alias.scope !19023
  store i32 %i.ba, ptr %i.aq, align 8, !tbaa !67, !alias.scope !19023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !14  ; 2 uses
  store i8 %i.eh, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.eh, label %bb.q [
    i8 33, label %bb.o
    i8 35, label %bb.p
  ]

bb.o:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  %i.ei = getelementptr i8, ptr %i.ec, i64 32
  %.val.i.i = load ptr, ptr %i.ei, align 8, !tbaa !35
  %i.ej = getelementptr i8, ptr %i.ec, i64 48
  %.val1.i.i = load ptr, ptr %i.ej, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.ek = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.p:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr noundef nonnull align 8 dereferenceable(28) %3), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.q:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_itemEv.exit
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox4exec12VectorReaderINS0_3MapINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEEEEC2EPKNS0_13DecodedVectorE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4712
  store ptr %i.u, ptr %i.s, align 8, !tbaa !4294
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4714
  store ptr %i.x, ptr %i.v, align 8, !tbaa !4295
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(94) %i.z, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !177
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !19683, !nonnull !59, !align !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !581
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3 unwind label %bb.c

_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3: ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN8facebook5velox4exec12VectorReaderINS0_7GenericINS0_7AnyTypeELb0ELb0EEEEC2EPKNS0_13DecodedVectorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull %i.l)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.af, align 1, !tbaa !593
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 355
  store i8 0, ptr %i.ag, align 1, !tbaa !593
  ret void

bb.c:                                             ; preds = %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit, %bb.a, %_ZN8facebook5velox4exec6detail6decodeERNS0_13DecodedVectorERKNS0_10BaseVectorE.exit3
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #34
  tail call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #34
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19002 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18994, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18996 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !18997
  store i8 0, ptr %i.d, align 1, !tbaa !18994
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18998 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !18999
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19000 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.u), !inline_history !19001
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18996 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i32 noundef %i.u), !inline_history !19001
  store i32 %i.u, ptr %i.o, align 8, !tbaa !18999
  %.pre = load i32, ptr %i.l, align 4, !tbaa !18998
  br label %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_9TimestampENS0_7GenericINS0_7AnyTypeELb0ELb0EEEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19002
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19671 ; 2 uses
  %i.ai = add i32 %i.af, %i.b
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(94) %i.ah, i32 noundef %i.ai, i1 noundef zeroext true)
  %i.am = load i32, ptr %i.l, align 4, !tbaa !18998
  %i.an = load i32, ptr %i.a, align 8, !tbaa !19002
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19000
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !159
  %i.au = sext i32 %i.ap to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.au
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE9copy_fromERKNS1_7MapViewILb1ES5_bEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, bool>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5633", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !19684, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19686 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !19687
  store i8 0, ptr %i.c, align 4, !tbaa !19684
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19688, !range !87, !noundef !59
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19689 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i1 noundef zeroext true), !inline_history !19687
  store i8 0, ptr %i.k, align 1, !tbaa !19688
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19690 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !19691
  %i.w = icmp sgt i32 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i
  %i.x = sitofp i32 %i.t to double
  %i.y = tail call noundef double @log2(double noundef %i.x) #34, !tbaa !3
  %i.z = tail call double @llvm.ceil.f64(double %i.y)
  %exp2.i.i = tail call double @exp2(double %i.z)
  %i.aa = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19686 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, i32 noundef %i.aa), !inline_history !19692
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19689 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i32 noundef %i.aa), !inline_history !19692
  store i32 %i.aa, ptr %i.u, align 8, !tbaa !19691
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.al, align 8, !tbaa !19693
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !4334, !noalias !19694 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4335, !noalias !19694 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !4331, !noalias !19694 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !4333, !noalias !19694 ; 2 uses
  %i.at = add nsw i32 %i.ap, %i.an
  %i.au = icmp eq i32 %i.ap, 0
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, <2 x i64> <i64 8, i64 56>
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = sext i32 %i.an to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.v, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ %i.bf, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !19697)
  call void @llvm.experimental.noalias.scope.decl(metadata !19700)
  call void @llvm.experimental.noalias.scope.decl(metadata !19703)
  call void @llvm.experimental.noalias.scope.decl(metadata !19706)
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !2097, !noalias !19709, !nonnull !59, !align !61
  store ptr %i.bg, ptr %4, align 8, !tbaa !177, !alias.scope !19709
  store <2 x ptr> %i.av, ptr %i.aw, align 8, !tbaa !44, !alias.scope !19709
  %i.bh = trunc nsw i64 %indvars.iv to i32
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !67, !alias.scope !19709
  store ptr %i.as, ptr %i.ay, align 8, !alias.scope !19710
  store i64 %indvars.iv, ptr %i.az, align 8, !alias.scope !19710
  %i.bi = load ptr, ptr %i.as, align 8, !tbaa !70, !nonnull !59, !align !61 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 58
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 57
  %i.bp = load i8, ptr %i.bo, align 1, !range !87
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i.i.i = select i1 %i.bn, i1 true, i1 %i.bq
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.br = lshr i64 %indvars.iv, 6
  %i.bs = and i64 %i.br, 67108863
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !91
  %i.bv = and i64 %indvars.iv, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bu, %i.bw
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !88, !range !87, !noundef !59
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cb = load i64, ptr %i.bk, align 8, !tbaa !91
  %i.cc = and i64 %i.cb, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit

bb.k:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !90
  %i.cf = shl nsw i64 %indvars.iv, 2
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = lshr i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !91
  %i.cm = and i64 %i.ci, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.cl
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.bx, %bb.h ], [ %i.cc, %bb.j ], [ %i.co, %bb.k ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.r, label %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit.thread: ; preds = %bb.f, %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5633") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.cp = load ptr, ptr %i.bc, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.cq = load ptr, ptr %5, align 8, !tbaa !11962, !nonnull !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ct, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.ct, label %bb.n [
    i8 33, label %bb.l
    i8 35, label %bb.m
  ]

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit.thread
  %i.cu = getelementptr i8, ptr %i.cp, i64 8
  %.val.i.i = load ptr, ptr %i.cu, align 8, !tbaa !35
  %i.cv = getelementptr i8, ptr %i.cp, i64 24
  %.val1.i.i = load ptr, ptr %i.cv, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.cw = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.cp, ptr %i.bd, align 8, !tbaa !45
  store ptr %4, ptr %i.be, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.cy = load ptr, ptr %i.ay, align 8, !tbaa !19711
  %i.cz = load i64, ptr %i.az, align 8, !tbaa !19713 ; 2 uses
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !70, !nonnull !59, !align !61 ; 5 uses
  %i.db = trunc i64 %i.cz to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 58
  %i.df = load i8, ptr %i.de, align 2, !tbaa !86, !range !87, !noundef !59
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZNK8facebook5velox4exec16OptionalAccessorIbE5valueEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 59
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !88, !range !87, !noundef !59
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIbE5valueEv.exit

bb.q:                                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.cz, 32
  %i.do = ashr exact i64 %sext.i.i12, 30
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIbE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIbE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.p, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.dq, %bb.q ], [ %i.dl, %bb.p ], [ %i.db, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dr = sext i32 %.0.i.i.i.i to i64             ; 2 uses
  %i.ds = lshr i64 %i.dr, 6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !91
  %i.dv = and i64 %i.dr, 63
  %i.dw = lshr i64 %i.du, %i.dv
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = and i8 %i.dx, 1
  store i8 %i.dy, ptr %i.cq, align 1, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.v

bb.r:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIbE9has_valueEv.exit
  %i.dz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !14  ; 2 uses
  store i8 %i.ec, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.ec, label %bb.u [
    i8 33, label %bb.s
    i8 35, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.val.i.i13 = load ptr, ptr %i.ed, align 8, !tbaa !35
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.val1.i.i14 = load ptr, ptr %i.ee, align 8, !tbaa !36
  %.val.val.i.i15 = load ptr, ptr %.val.i.i13, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i16 = load i32, ptr %.val1.i.i14, align 4, !tbaa !3
  %i.ef = load ptr, ptr %.val.val.i.i15, align 8, !tbaa !40
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i15, i32 noundef %.val1.val.i.i16), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.t:                                             ; preds = %bb.r
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE8add_itemEv:bb.a
  %i.ax = add i32 %i.av, -1
  %i.ay = add i32 %i.ax, %i.aw
  store i8 1, ptr %i.l, align 1, !tbaa !19688
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19689 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, i32 noundef %i.ay), !inline_history !19758
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !19689
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store ptr %i.be, ptr %0, align 8, !tbaa !1449, !alias.scope !19759
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.bf, align 8, !tbaa !12664, !alias.scope !19759
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19693 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !19684, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19686 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !19687
  store i8 0, ptr %i.d, align 4, !tbaa !19684
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19688, !range !87, !noundef !59
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19689 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i1 noundef zeroext true), !inline_history !19687
  store i8 0, ptr %i.l, align 1, !tbaa !19688
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19690 ; 2 uses
  %i.v = add nsw i32 %i.u, %i.c                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !19691
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i
  %i.z = sitofp i32 %i.v to double
  %i.aa = tail call noundef double @log2(double noundef %i.z) #34, !tbaa !3
  %i.ab = tail call double @llvm.ceil.f64(double %i.aa)
  %exp2.i.i = tail call double @exp2(double %i.ab)
  %i.ac = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19686 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, i32 noundef %i.ac), !inline_history !19692
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19689 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i32 noundef %i.ac), !inline_history !19692
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !19691
  %.pre = load i32, ptr %i.t, align 4, !tbaa !19690
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.an = phi i32 [ %i.u, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.e ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19693
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19744 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ap, i32 noundef %i.as, i1 noundef zeroext true)
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !233 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !234
  %i.aw = and i8 %i.av, 2
  %.not.i3.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit, label %bb.f, !prof !230

bb.f:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorIbE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEbE6resizeEi.exit
  %i.ax = add i32 %i.an, %i.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !239
  %i.ba = zext i32 %i.ax to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !55
  %i.be = and i64 %i.ba, 7
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !55
  %i.bh = and i8 %i.bg, %i.bd
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !55
  %i.bi = load i32, ptr %i.t, align 4, !tbaa !19690
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !19693
  %i.bk = add i32 %i.bi, -1
  %i.bl = add i32 %i.bk, %i.bj
  store i8 1, ptr %i.d, align 4, !tbaa !19684
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19686 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !40
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, i32 noundef %i.bl), !inline_history !19757
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !19686
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  ret ptr %i.br
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE9copy_fromERKNS1_7MapViewILb1ES5_iEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, int>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5660", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !19762, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19764 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !19765
  store i8 0, ptr %i.c, align 4, !tbaa !19762
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19766 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19767
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i
  %i.p = sitofp i32 %i.l to double
  %i.q = tail call noundef double @log2(double noundef %i.p) #34, !tbaa !3
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %exp2.i.i = tail call double @exp2(double %i.r)
  %i.s = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19764 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef %i.s), !inline_history !19768
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19769 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.s), !inline_history !19768
  store i32 %i.s, ptr %i.m, align 8, !tbaa !19767
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !19770
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4351, !noalias !19771 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4352, !noalias !19771 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !4348, !noalias !19771 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4350, !noalias !19771 ; 2 uses
  %i.al = add nsw i32 %i.ah, %i.af
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, <2 x i64> <i64 8, i64 56>
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = sext i32 %i.af to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !19774)
  call void @llvm.experimental.noalias.scope.decl(metadata !19777)
  call void @llvm.experimental.noalias.scope.decl(metadata !19780)
  call void @llvm.experimental.noalias.scope.decl(metadata !19783)
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !2097, !noalias !19786, !nonnull !59, !align !61
  store ptr %i.ay, ptr %4, align 8, !tbaa !177, !alias.scope !19786
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !44, !alias.scope !19786
  %i.az = trunc nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %i.ap, align 8, !tbaa !67, !alias.scope !19786
  store ptr %i.ak, ptr %i.aq, align 8, !alias.scope !19787
  store i64 %indvars.iv, ptr %i.ar, align 8, !alias.scope !19787
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !95, !nonnull !59, !align !61 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 57
  %i.bh = load i8, ptr %i.bg, align 1, !range !87
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = and i64 %indvars.iv, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bm, %i.bo
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88, !range !87, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !91
  %i.bu = and i64 %i.bt, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.in = phi i64 [ %i.bp, %bb.f ], [ %i.bu, %bb.h ], [ %i.cg, %bb.i ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.p, label %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit.thread: ; preds = %bb.d, %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5660") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12028, !nonnull !59, !align !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cl, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cl, label %bb.l [
    i8 33, label %bb.j
    i8 35, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit.thread
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr i8, ptr %i.ch, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.co = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.ch, ptr %i.av, align 8, !tbaa !45
  store ptr %4, ptr %i.aw, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.cq = load ptr, ptr %i.aq, align 8, !tbaa !19788
  %i.cr = load i64, ptr %i.ar, align 8, !tbaa !19790 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !95, !nonnull !59, !align !61 ; 5 uses
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !86, !range !87, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZNK8facebook5velox4exec16OptionalAccessorIiE5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 59
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88, !range !87, !noundef !59
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIiE5valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.cr, 32
  %i.dg = ashr exact i64 %sext.i.i12, 30
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIiE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIiE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.n, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.di, %bb.o ], [ %i.dd, %bb.n ], [ %i.ct, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dj = sext i32 %.0.i.i.i.i to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  store i32 %i.dl, ptr %i.ci, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIiE9has_valueEv.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.dp, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.val.i.i13 = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.val1.i.i14 = load ptr, ptr %i.dr, align 8, !tbaa !36
  %.val.val.i.i15 = load ptr, ptr %.val.i.i13, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i16 = load i32, ptr %.val1.i.i14, align 4, !tbaa !3
  %i.ds = load ptr, ptr %.val.val.i.i15, align 8, !tbaa !40
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i15, i32 noundef %.val1.val.i.i16), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dm, ptr %i.as, align 8, !tbaa !45
end_hunk_13
begin_hunk_14_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE8add_itemEv:bb.a
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !55
  %i.bg = trunc i32 %i.ap to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = shl nuw i8 1, %i.bh
  %i.bj = or i8 %i.bf, %i.bi
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !55
  br label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not2.i = icmp eq ptr %i.bl, null
  br i1 %.not2.i, label %bb.f, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE15lastValueWriterEv.exit

bb.f:                                             ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i
  %i.bm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIiE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(184) %i.ar) ; 0 uses
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE15lastValueWriterEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE15lastValueWriterEv.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19769
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !97
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %0, align 8, !tbaa !519, !alias.scope !19836
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bu, align 8, !tbaa !12664, !alias.scope !19836
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19770 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !19762, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19764 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !19765
  store i8 0, ptr %i.d, align 4, !tbaa !19762
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19766 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19767
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19764 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(96) %i.w, i32 noundef %i.u), !inline_history !19768
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19769 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.u), !inline_history !19768
  store i32 %i.u, ptr %i.o, align 8, !tbaa !19767
  %.pre = load i32, ptr %i.l, align 4, !tbaa !19766
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19770
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19822 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(184) %i.ah, i32 noundef %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !233 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i8, ptr %i.am, align 4, !tbaa !234
  %i.ao = and i8 %i.an, 2
  %.not.i3.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorIiE7setNullEib.exit, label %bb.d, !prof !230

bb.d:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorIiE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEiE6resizeEi.exit
  %i.ap = add i32 %i.af, %i.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !239
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %i.aw = and i64 %i.as, 7
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = and i8 %i.ay, %i.av
  store i8 %i.az, ptr %i.au, align 1, !tbaa !55
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !19766
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !19770
  %i.bc = add i32 %i.ba, -1
  %i.bd = add i32 %i.bc, %i.bb
  store i8 1, ptr %i.d, align 4, !tbaa !19762
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19764 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i32 noundef %i.bd), !inline_history !19835
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !19764
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  ret ptr %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE9copy_fromERKNS1_7MapViewILb1ES5_aEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, signed char>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5686", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !19839, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19841 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !19842
  store i8 0, ptr %i.c, align 4, !tbaa !19839
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19843 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19844
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i
  %i.p = sitofp i32 %i.l to double
  %i.q = tail call noundef double @log2(double noundef %i.p) #34, !tbaa !3
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %exp2.i.i = tail call double @exp2(double %i.r)
  %i.s = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19841 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef %i.s), !inline_history !19845
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19846 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.s), !inline_history !19845
  store i32 %i.s, ptr %i.m, align 8, !tbaa !19844
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !19847
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4368, !noalias !19848 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4369, !noalias !19848 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !4365, !noalias !19848 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4367, !noalias !19848 ; 2 uses
  %i.al = add nsw i32 %i.ah, %i.af
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, <2 x i64> <i64 8, i64 56>
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = sext i32 %i.af to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !19851)
  call void @llvm.experimental.noalias.scope.decl(metadata !19854)
  call void @llvm.experimental.noalias.scope.decl(metadata !19857)
  call void @llvm.experimental.noalias.scope.decl(metadata !19860)
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !2097, !noalias !19863, !nonnull !59, !align !61
  store ptr %i.ay, ptr %4, align 8, !tbaa !177, !alias.scope !19863
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !44, !alias.scope !19863
  %i.az = trunc nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %i.ap, align 8, !tbaa !67, !alias.scope !19863
  store ptr %i.ak, ptr %i.aq, align 8, !alias.scope !19864
  store i64 %indvars.iv, ptr %i.ar, align 8, !alias.scope !19864
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !101, !nonnull !59, !align !61 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 57
  %i.bh = load i8, ptr %i.bg, align 1, !range !87
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = and i64 %indvars.iv, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bm, %i.bo
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88, !range !87, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !91
  %i.bu = and i64 %i.bt, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.in = phi i64 [ %i.bp, %bb.f ], [ %i.bu, %bb.h ], [ %i.cg, %bb.i ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.p, label %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit.thread: ; preds = %bb.d, %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5686") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12088, !nonnull !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cl, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cl, label %bb.l [
    i8 33, label %bb.j
    i8 35, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit.thread
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr i8, ptr %i.ch, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.co = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.ch, ptr %i.av, align 8, !tbaa !45
  store ptr %4, ptr %i.aw, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.cq = load ptr, ptr %i.aq, align 8, !tbaa !19865
  %i.cr = load i64, ptr %i.ar, align 8, !tbaa !19867 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !101, !nonnull !59, !align !61 ; 5 uses
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !86, !range !87, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZNK8facebook5velox4exec16OptionalAccessorIaE5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 59
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88, !range !87, !noundef !59
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIaE5valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.cr, 32
  %i.dg = ashr exact i64 %sext.i.i12, 30
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIaE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIaE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.n, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.di, %bb.o ], [ %i.dd, %bb.n ], [ %i.ct, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dj = sext i32 %.0.i.i.i.i to i64
  %i.dk = getelementptr inbounds i8, ptr %i.cv, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !55
  store i8 %i.dl, ptr %i.ci, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIaE9has_valueEv.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.dp, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.val.i.i13 = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.val1.i.i14 = load ptr, ptr %i.dr, align 8, !tbaa !36
  %.val.val.i.i15 = load ptr, ptr %.val.i.i13, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i16 = load i32, ptr %.val1.i.i14, align 4, !tbaa !3
  %i.ds = load ptr, ptr %.val.val.i.i15, align 8, !tbaa !40
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i15, i32 noundef %.val1.val.i.i16), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dm, ptr %i.as, align 8, !tbaa !45
end_hunk_14
begin_hunk_15_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE8add_itemEv:bb.a
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !55
  %i.bg = trunc i32 %i.ap to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = shl nuw i8 1, %i.bh
  %i.bj = or i8 %i.bf, %i.bi
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !55
  br label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not2.i = icmp eq ptr %i.bl, null
  br i1 %.not2.i, label %bb.f, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE15lastValueWriterEv.exit

bb.f:                                             ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i
  %i.bm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIaE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %i.ar) ; 0 uses
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE15lastValueWriterEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE15lastValueWriterEv.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19846
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !103
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %0, align 8, !tbaa !429, !alias.scope !19913
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bu, align 8, !tbaa !12664, !alias.scope !19913
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19847 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !19839, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19841 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !19842
  store i8 0, ptr %i.d, align 4, !tbaa !19839
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19843 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19844
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19841 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(96) %i.w, i32 noundef %i.u), !inline_history !19845
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19846 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.u), !inline_history !19845
  store i32 %i.u, ptr %i.o, align 8, !tbaa !19844
  %.pre = load i32, ptr %i.l, align 4, !tbaa !19843
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19847
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19899 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ah, i32 noundef %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !233 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i8, ptr %i.am, align 4, !tbaa !234
  %i.ao = and i8 %i.an, 2
  %.not.i3.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorIaE7setNullEib.exit, label %bb.d, !prof !230

bb.d:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorIaE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEaE6resizeEi.exit
  %i.ap = add i32 %i.af, %i.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !239
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %i.aw = and i64 %i.as, 7
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = and i8 %i.ay, %i.av
  store i8 %i.az, ptr %i.au, align 1, !tbaa !55
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !19843
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !19847
  %i.bc = add i32 %i.ba, -1
  %i.bd = add i32 %i.bc, %i.bb
  store i8 1, ptr %i.d, align 4, !tbaa !19839
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19841 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i32 noundef %i.bd), !inline_history !19912
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !19841
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  ret ptr %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE9copy_fromERKNS1_7MapViewILb1ES5_sEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, short>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5712", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !19916, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19918 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !19919
  store i8 0, ptr %i.c, align 4, !tbaa !19916
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19920 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19921
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i
  %i.p = sitofp i32 %i.l to double
  %i.q = tail call noundef double @log2(double noundef %i.p) #34, !tbaa !3
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %exp2.i.i = tail call double @exp2(double %i.r)
  %i.s = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19918 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef %i.s), !inline_history !19922
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19923 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.s), !inline_history !19922
  store i32 %i.s, ptr %i.m, align 8, !tbaa !19921
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !19924
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4385, !noalias !19925 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4386, !noalias !19925 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !4382, !noalias !19925 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4384, !noalias !19925 ; 2 uses
  %i.al = add nsw i32 %i.ah, %i.af
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, <2 x i64> <i64 8, i64 56>
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = sext i32 %i.af to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !19928)
  call void @llvm.experimental.noalias.scope.decl(metadata !19931)
  call void @llvm.experimental.noalias.scope.decl(metadata !19934)
  call void @llvm.experimental.noalias.scope.decl(metadata !19937)
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !2097, !noalias !19940, !nonnull !59, !align !61
  store ptr %i.ay, ptr %4, align 8, !tbaa !177, !alias.scope !19940
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !44, !alias.scope !19940
  %i.az = trunc nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %i.ap, align 8, !tbaa !67, !alias.scope !19940
  store ptr %i.ak, ptr %i.aq, align 8, !alias.scope !19941
  store i64 %indvars.iv, ptr %i.ar, align 8, !alias.scope !19941
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !107, !nonnull !59, !align !61 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 57
  %i.bh = load i8, ptr %i.bg, align 1, !range !87
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = and i64 %indvars.iv, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bm, %i.bo
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88, !range !87, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !91
  %i.bu = and i64 %i.bt, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.in = phi i64 [ %i.bp, %bb.f ], [ %i.bu, %bb.h ], [ %i.cg, %bb.i ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.p, label %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit.thread: ; preds = %bb.d, %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5712") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12148, !nonnull !59, !align !8047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cl, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cl, label %bb.l [
    i8 33, label %bb.j
    i8 35, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit.thread
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr i8, ptr %i.ch, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.co = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.ch, ptr %i.av, align 8, !tbaa !45
  store ptr %4, ptr %i.aw, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.cq = load ptr, ptr %i.aq, align 8, !tbaa !19942
  %i.cr = load i64, ptr %i.ar, align 8, !tbaa !19944 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !107, !nonnull !59, !align !61 ; 5 uses
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !86, !range !87, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZNK8facebook5velox4exec16OptionalAccessorIsE5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 59
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88, !range !87, !noundef !59
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIsE5valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.cr, 32
  %i.dg = ashr exact i64 %sext.i.i12, 30
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIsE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIsE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.n, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.di, %bb.o ], [ %i.dd, %bb.n ], [ %i.ct, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dj = sext i32 %.0.i.i.i.i to i64
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !109
  store i16 %i.dl, ptr %i.ci, align 2, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIsE9has_valueEv.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.dp, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.val.i.i13 = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.val1.i.i14 = load ptr, ptr %i.dr, align 8, !tbaa !36
  %.val.val.i.i15 = load ptr, ptr %.val.i.i13, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i16 = load i32, ptr %.val1.i.i14, align 4, !tbaa !3
  %i.ds = load ptr, ptr %.val.val.i.i15, align 8, !tbaa !40
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i15, i32 noundef %.val1.val.i.i16), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dm, ptr %i.as, align 8, !tbaa !45
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE8add_itemEv:bb.a
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !55
  %i.bg = trunc i32 %i.ap to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = shl nuw i8 1, %i.bh
  %i.bj = or i8 %i.bf, %i.bi
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !55
  br label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not2.i = icmp eq ptr %i.bl, null
  br i1 %.not2.i, label %bb.f, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE15lastValueWriterEv.exit

bb.f:                                             ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i
  %i.bm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIsE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(176) %i.ar) ; 0 uses
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE15lastValueWriterEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE15lastValueWriterEv.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19923
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !111
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %0, align 8, !tbaa !7947, !alias.scope !19990
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bu, align 8, !tbaa !12664, !alias.scope !19990
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19924 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !19916, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19918 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !19919
  store i8 0, ptr %i.d, align 4, !tbaa !19916
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19920 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19921
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19918 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(96) %i.w, i32 noundef %i.u), !inline_history !19922
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19923 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.u), !inline_history !19922
  store i32 %i.u, ptr %i.o, align 8, !tbaa !19921
  %.pre = load i32, ptr %i.l, align 4, !tbaa !19920
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19924
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19976 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(176) %i.ah, i32 noundef %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !233 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i8, ptr %i.am, align 4, !tbaa !234
  %i.ao = and i8 %i.an, 2
  %.not.i3.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorIsE7setNullEib.exit, label %bb.d, !prof !230

bb.d:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorIsE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEsE6resizeEi.exit
  %i.ap = add i32 %i.af, %i.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !239
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %i.aw = and i64 %i.as, 7
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = and i8 %i.ay, %i.av
  store i8 %i.az, ptr %i.au, align 1, !tbaa !55
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !19920
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !19924
  %i.bc = add i32 %i.ba, -1
  %i.bd = add i32 %i.bc, %i.bb
  store i8 1, ptr %i.d, align 4, !tbaa !19916
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19918 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i32 noundef %i.bd), !inline_history !19989
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !19918
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  ret ptr %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE9copy_fromERKNS1_7MapViewILb1ES5_lEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, long>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5738", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !19993, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19995 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !19996
  store i8 0, ptr %i.c, align 4, !tbaa !19993
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19997 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19998
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i
  %i.p = sitofp i32 %i.l to double
  %i.q = tail call noundef double @log2(double noundef %i.p) #34, !tbaa !3
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %exp2.i.i = tail call double @exp2(double %i.r)
  %i.s = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19995 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef %i.s), !inline_history !19999
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20000 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.s), !inline_history !19999
  store i32 %i.s, ptr %i.m, align 8, !tbaa !19998
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !20001
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4402, !noalias !20002 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4403, !noalias !20002 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !4399, !noalias !20002 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4401, !noalias !20002 ; 2 uses
  %i.al = add nsw i32 %i.ah, %i.af
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, <2 x i64> <i64 8, i64 56>
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = sext i32 %i.af to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !20005)
  call void @llvm.experimental.noalias.scope.decl(metadata !20008)
  call void @llvm.experimental.noalias.scope.decl(metadata !20011)
  call void @llvm.experimental.noalias.scope.decl(metadata !20014)
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !2097, !noalias !20017, !nonnull !59, !align !61
  store ptr %i.ay, ptr %4, align 8, !tbaa !177, !alias.scope !20017
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !44, !alias.scope !20017
  %i.az = trunc nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %i.ap, align 8, !tbaa !67, !alias.scope !20017
  store ptr %i.ak, ptr %i.aq, align 8, !alias.scope !20018
  store i64 %indvars.iv, ptr %i.ar, align 8, !alias.scope !20018
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !115, !nonnull !59, !align !61 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 57
  %i.bh = load i8, ptr %i.bg, align 1, !range !87
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = and i64 %indvars.iv, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bm, %i.bo
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88, !range !87, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !91
  %i.bu = and i64 %i.bt, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.in = phi i64 [ %i.bp, %bb.f ], [ %i.bu, %bb.h ], [ %i.cg, %bb.i ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.p, label %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit.thread: ; preds = %bb.d, %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5738") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12208, !nonnull !59, !align !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cl, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cl, label %bb.l [
    i8 33, label %bb.j
    i8 35, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit.thread
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr i8, ptr %i.ch, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.co = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.ch, ptr %i.av, align 8, !tbaa !45
  store ptr %4, ptr %i.aw, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.cq = load ptr, ptr %i.aq, align 8, !tbaa !20019
  %i.cr = load i64, ptr %i.ar, align 8, !tbaa !20021 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !115, !nonnull !59, !align !61 ; 5 uses
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !86, !range !87, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZNK8facebook5velox4exec16OptionalAccessorIlE5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 59
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88, !range !87, !noundef !59
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIlE5valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.cr, 32
  %i.dg = ashr exact i64 %sext.i.i12, 30
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIlE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIlE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.n, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.di, %bb.o ], [ %i.dd, %bb.n ], [ %i.ct, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dj = sext i32 %.0.i.i.i.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !91
  store i64 %i.dl, ptr %i.ci, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIlE9has_valueEv.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.dp, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.val.i.i13 = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.val1.i.i14 = load ptr, ptr %i.dr, align 8, !tbaa !36
  %.val.val.i.i15 = load ptr, ptr %.val.i.i13, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i16 = load i32, ptr %.val1.i.i14, align 4, !tbaa !3
  %i.ds = load ptr, ptr %.val.val.i.i15, align 8, !tbaa !40
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i15, i32 noundef %.val1.val.i.i16), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dm, ptr %i.as, align 8, !tbaa !45
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE8add_itemEv:bb.a
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !55
  %i.bg = trunc i32 %i.ap to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = shl nuw i8 1, %i.bh
  %i.bj = or i8 %i.bf, %i.bi
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !55
  br label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not2.i = icmp eq ptr %i.bl, null
  br i1 %.not2.i, label %bb.f, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE15lastValueWriterEv.exit

bb.f:                                             ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i
  %i.bm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ar) ; 0 uses
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE15lastValueWriterEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE15lastValueWriterEv.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20000
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !117
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %0, align 8, !tbaa !408, !alias.scope !20067
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bu, align 8, !tbaa !12664, !alias.scope !20067
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20001 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !19993, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19995 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !19996
  store i8 0, ptr %i.d, align 4, !tbaa !19993
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19997 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19998
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19995 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(96) %i.w, i32 noundef %i.u), !inline_history !19999
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20000 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.u), !inline_history !19999
  store i32 %i.u, ptr %i.o, align 8, !tbaa !19998
  %.pre = load i32, ptr %i.l, align 4, !tbaa !19997
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20001
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20053 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ah, i32 noundef %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !233 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i8, ptr %i.am, align 4, !tbaa !234
  %i.ao = and i8 %i.an, 2
  %.not.i3.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit, label %bb.d, !prof !230

bb.d:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEElE6resizeEi.exit
  %i.ap = add i32 %i.af, %i.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !239
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %i.aw = and i64 %i.as, 7
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = and i8 %i.ay, %i.av
  store i8 %i.az, ptr %i.au, align 1, !tbaa !55
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !19997
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !20001
  %i.bc = add i32 %i.ba, -1
  %i.bd = add i32 %i.bc, %i.bb
  store i8 1, ptr %i.d, align 4, !tbaa !19993
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19995 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i32 noundef %i.bd), !inline_history !20066
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !19995
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  ret ptr %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE9copy_fromERKNS1_7MapViewILb1ES5_nEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, __int128>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5764", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !20070, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20072 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !20073
  store i8 0, ptr %i.c, align 4, !tbaa !20070
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20074 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20075
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i
  %i.p = sitofp i32 %i.l to double
  %i.q = tail call noundef double @log2(double noundef %i.p) #34, !tbaa !3
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %exp2.i.i = tail call double @exp2(double %i.r)
  %i.s = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20072 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef %i.s), !inline_history !20076
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20077 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.s), !inline_history !20076
  store i32 %i.s, ptr %i.m, align 8, !tbaa !20075
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !20078
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4419, !noalias !20079 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4420, !noalias !20079 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !4416, !noalias !20079 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4418, !noalias !20079 ; 2 uses
  %i.al = add nsw i32 %i.ah, %i.af
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, <2 x i64> <i64 8, i64 56>
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = sext i32 %i.af to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !20082)
  call void @llvm.experimental.noalias.scope.decl(metadata !20085)
  call void @llvm.experimental.noalias.scope.decl(metadata !20088)
  call void @llvm.experimental.noalias.scope.decl(metadata !20091)
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !2097, !noalias !20094, !nonnull !59, !align !61
  store ptr %i.ay, ptr %4, align 8, !tbaa !177, !alias.scope !20094
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !44, !alias.scope !20094
  %i.az = trunc nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %i.ap, align 8, !tbaa !67, !alias.scope !20094
  store ptr %i.ak, ptr %i.aq, align 8, !alias.scope !20095
  store i64 %indvars.iv, ptr %i.ar, align 8, !alias.scope !20095
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !120, !nonnull !59, !align !61 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 57
  %i.bh = load i8, ptr %i.bg, align 1, !range !87
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = and i64 %indvars.iv, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bm, %i.bo
  br label %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88, !range !87, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !91
  %i.bu = and i64 %i.bt, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.in = phi i64 [ %i.bp, %bb.f ], [ %i.bu, %bb.h ], [ %i.cg, %bb.i ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.p, label %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit.thread: ; preds = %bb.d, %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5764") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12268, !nonnull !59, !align !9136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cl, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cl, label %bb.l [
    i8 33, label %bb.j
    i8 35, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit.thread
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr i8, ptr %i.ch, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.co = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.ch, ptr %i.av, align 8, !tbaa !45
  store ptr %4, ptr %i.aw, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.cq = load ptr, ptr %i.aq, align 8, !tbaa !20096
  %i.cr = load i64, ptr %i.ar, align 8, !tbaa !20098 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !120, !nonnull !59, !align !61 ; 5 uses
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !86, !range !87, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZNK8facebook5velox4exec16OptionalAccessorInE5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 59
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88, !range !87, !noundef !59
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorInE5valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.cr, 32
  %i.dg = ashr exact i64 %sext.i.i12, 30
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorInE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorInE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.n, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.di, %bb.o ], [ %i.dd, %bb.n ], [ %i.ct, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dj = sext i32 %.0.i.i.i.i to i64
  %i.dk = shl nsw i64 %i.dj, 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dk
  %.0.copyload.i.i.i.i = load i128, ptr %i.dl, align 1
  store i128 %.0.copyload.i.i.i.i, ptr %i.ci, align 16, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorInE9has_valueEv.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.dp, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.val.i.i13 = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.val1.i.i14 = load ptr, ptr %i.dr, align 8, !tbaa !36
  %.val.val.i.i15 = load ptr, ptr %.val.i.i13, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i16 = load i32, ptr %.val1.i.i14, align 4, !tbaa !3
  %i.ds = load ptr, ptr %.val.val.i.i15, align 8, !tbaa !40
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i15, i32 noundef %.val1.val.i.i16), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE8add_itemEv:bb.a
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !55
  %i.bg = trunc i32 %i.ap to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = shl nuw i8 1, %i.bh
  %i.bj = or i8 %i.bf, %i.bi
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !55
  br label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 184
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not2.i = icmp eq ptr %i.bl, null
  br i1 %.not2.i, label %bb.f, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE15lastValueWriterEv.exit

bb.f:                                             ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i
  %i.bm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorInE16mutableRawValuesEv(ptr noundef nonnull align 16 dereferenceable(240) %i.ar) ; 0 uses
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE15lastValueWriterEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE15lastValueWriterEv.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20077
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !122
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %0, align 8, !tbaa !9034, !alias.scope !20144
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bu, align 8, !tbaa !12664, !alias.scope !20144
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20078 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !20070, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20072 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !20073
  store i8 0, ptr %i.d, align 4, !tbaa !20070
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20074 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20075
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20072 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(96) %i.w, i32 noundef %i.u), !inline_history !20076
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20077 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.u), !inline_history !20076
  store i32 %i.u, ptr %i.o, align 8, !tbaa !20075
  %.pre = load i32, ptr %i.l, align 4, !tbaa !20074
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20078
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20130 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 16 dereferenceable(240) %i.ah, i32 noundef %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !233 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i8, ptr %i.am, align 4, !tbaa !234
  %i.ao = and i8 %i.an, 2
  %.not.i3.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorInE7setNullEib.exit, label %bb.d, !prof !230

bb.d:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorInE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEnE6resizeEi.exit
  %i.ap = add i32 %i.af, %i.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !239
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %i.aw = and i64 %i.as, 7
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = and i8 %i.ay, %i.av
  store i8 %i.az, ptr %i.au, align 1, !tbaa !55
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !20074
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !20078
  %i.bc = add i32 %i.ba, -1
  %i.bd = add i32 %i.bc, %i.bb
  store i8 1, ptr %i.d, align 4, !tbaa !20070
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20072 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i32 noundef %i.bd), !inline_history !20143
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !20072
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  ret ptr %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE9copy_fromERKNS1_7MapViewILb1ES5_fEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, float>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5790", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !20147, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20149 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !20150
  store i8 0, ptr %i.c, align 4, !tbaa !20147
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20151 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20152
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i
  %i.p = sitofp i32 %i.l to double
  %i.q = tail call noundef double @log2(double noundef %i.p) #34, !tbaa !3
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %exp2.i.i = tail call double @exp2(double %i.r)
  %i.s = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20149 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef %i.s), !inline_history !20153
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20154 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.s), !inline_history !20153
  store i32 %i.s, ptr %i.m, align 8, !tbaa !20152
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !20155
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4436, !noalias !20156 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4437, !noalias !20156 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !4433, !noalias !20156 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4435, !noalias !20156 ; 2 uses
  %i.al = add nsw i32 %i.ah, %i.af
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, <2 x i64> <i64 8, i64 56>
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = sext i32 %i.af to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !20159)
  call void @llvm.experimental.noalias.scope.decl(metadata !20162)
  call void @llvm.experimental.noalias.scope.decl(metadata !20165)
  call void @llvm.experimental.noalias.scope.decl(metadata !20168)
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !2097, !noalias !20171, !nonnull !59, !align !61
  store ptr %i.ay, ptr %4, align 8, !tbaa !177, !alias.scope !20171
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !44, !alias.scope !20171
  %i.az = trunc nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %i.ap, align 8, !tbaa !67, !alias.scope !20171
  store ptr %i.ak, ptr %i.aq, align 8, !alias.scope !20172
  store i64 %indvars.iv, ptr %i.ar, align 8, !alias.scope !20172
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !128, !nonnull !59, !align !61 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 57
  %i.bh = load i8, ptr %i.bg, align 1, !range !87
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = and i64 %indvars.iv, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bm, %i.bo
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88, !range !87, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !91
  %i.bu = and i64 %i.bt, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.in = phi i64 [ %i.bp, %bb.f ], [ %i.bu, %bb.h ], [ %i.cg, %bb.i ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.p, label %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit.thread: ; preds = %bb.d, %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5790") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12328, !nonnull !59, !align !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cl, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cl, label %bb.l [
    i8 33, label %bb.j
    i8 35, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit.thread
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr i8, ptr %i.ch, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.co = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.ch, ptr %i.av, align 8, !tbaa !45
  store ptr %4, ptr %i.aw, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.cq = load ptr, ptr %i.aq, align 8, !tbaa !20173
  %i.cr = load i64, ptr %i.ar, align 8, !tbaa !20175 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !128, !nonnull !59, !align !61 ; 5 uses
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !86, !range !87, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZNK8facebook5velox4exec16OptionalAccessorIfE5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 59
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88, !range !87, !noundef !59
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIfE5valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.cr, 32
  %i.dg = ashr exact i64 %sext.i.i12, 30
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIfE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIfE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.n, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.di, %bb.o ], [ %i.dd, %bb.n ], [ %i.ct, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dj = sext i32 %.0.i.i.i.i to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !130
  store float %i.dl, ptr %i.ci, align 4, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIfE9has_valueEv.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.dp, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.val.i.i13 = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.val1.i.i14 = load ptr, ptr %i.dr, align 8, !tbaa !36
  %.val.val.i.i15 = load ptr, ptr %.val.i.i13, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i16 = load i32, ptr %.val1.i.i14, align 4, !tbaa !3
  %i.ds = load ptr, ptr %.val.val.i.i15, align 8, !tbaa !40
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i15, i32 noundef %.val1.val.i.i16), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dm, ptr %i.as, align 8, !tbaa !45
end_hunk_18
begin_hunk_19_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE8add_itemEv:bb.a
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !55
  %i.bg = trunc i32 %i.ap to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = shl nuw i8 1, %i.bh
  %i.bj = or i8 %i.bf, %i.bi
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !55
  br label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i: ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not2.i = icmp eq ptr %i.bl, null
  br i1 %.not2.i, label %bb.f, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE15lastValueWriterEv.exit

bb.f:                                             ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i
  %i.bm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIfE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(184) %i.ar) ; 0 uses
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE15lastValueWriterEv.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE15lastValueWriterEv.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20154
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !132
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %0, align 8, !tbaa !9538, !alias.scope !20221
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bu, align 8, !tbaa !12664, !alias.scope !20221
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20155 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !20147, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20149 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !20150
  store i8 0, ptr %i.d, align 4, !tbaa !20147
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20151 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20152
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20149 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(96) %i.w, i32 noundef %i.u), !inline_history !20153
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20154 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.u), !inline_history !20153
  store i32 %i.u, ptr %i.o, align 8, !tbaa !20152
  %.pre = load i32, ptr %i.l, align 4, !tbaa !20151
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20155
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20207 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(184) %i.ah, i32 noundef %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !233 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i8, ptr %i.am, align 4, !tbaa !234
  %i.ao = and i8 %i.an, 2
  %.not.i3.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorIfE7setNullEib.exit, label %bb.d, !prof !230

bb.d:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorIfE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEfE6resizeEi.exit
  %i.ap = add i32 %i.af, %i.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !239
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %i.aw = and i64 %i.as, 7
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = and i8 %i.ay, %i.av
  store i8 %i.az, ptr %i.au, align 1, !tbaa !55
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !20151
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !20155
  %i.bc = add i32 %i.ba, -1
  %i.bd = add i32 %i.bc, %i.bb
  store i8 1, ptr %i.d, align 4, !tbaa !20147
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20149 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i32 noundef %i.bd), !inline_history !20220
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !20149
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  ret ptr %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE9copy_fromERKNS1_7MapViewILb1ES5_dEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, double>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5816", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !20224, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20226 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !20227
  store i8 0, ptr %i.c, align 4, !tbaa !20224
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20228 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20229
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i
  %i.p = sitofp i32 %i.l to double
  %i.q = tail call noundef double @log2(double noundef %i.p) #34, !tbaa !3
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %exp2.i.i = tail call double @exp2(double %i.r)
  %i.s = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20226 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef %i.s), !inline_history !20230
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20231 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.s), !inline_history !20230
  store i32 %i.s, ptr %i.m, align 8, !tbaa !20229
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !20232
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4453, !noalias !20233 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4454, !noalias !20233 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !4450, !noalias !20233 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4452, !noalias !20233 ; 2 uses
  %i.al = add nsw i32 %i.ah, %i.af
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, <2 x i64> <i64 8, i64 56>
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = sext i32 %i.af to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !20236)
  call void @llvm.experimental.noalias.scope.decl(metadata !20239)
  call void @llvm.experimental.noalias.scope.decl(metadata !20242)
  call void @llvm.experimental.noalias.scope.decl(metadata !20245)
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !2097, !noalias !20248, !nonnull !59, !align !61
  store ptr %i.ay, ptr %4, align 8, !tbaa !177, !alias.scope !20248
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !44, !alias.scope !20248
  %i.az = trunc nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %i.ap, align 8, !tbaa !67, !alias.scope !20248
  store ptr %i.ak, ptr %i.aq, align 8, !alias.scope !20249
  store i64 %indvars.iv, ptr %i.ar, align 8, !alias.scope !20249
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !136, !nonnull !59, !align !61 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 57
  %i.bh = load i8, ptr %i.bg, align 1, !range !87
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = and i64 %indvars.iv, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bm, %i.bo
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88, !range !87, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !91
  %i.bu = and i64 %i.bt, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.in = phi i64 [ %i.bp, %bb.f ], [ %i.bu, %bb.h ], [ %i.cg, %bb.i ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.p, label %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit.thread: ; preds = %bb.d, %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5816") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12388, !nonnull !59, !align !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cl, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cl, label %bb.l [
    i8 33, label %bb.j
    i8 35, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit.thread
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr i8, ptr %i.ch, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.co = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.ch, ptr %i.av, align 8, !tbaa !45
  store ptr %4, ptr %i.aw, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.cq = load ptr, ptr %i.aq, align 8, !tbaa !20250
  %i.cr = load i64, ptr %i.ar, align 8, !tbaa !20252 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !136, !nonnull !59, !align !61 ; 5 uses
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !86, !range !87, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZNK8facebook5velox4exec16OptionalAccessorIdE5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 59
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88, !range !87, !noundef !59
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIdE5valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.cr, 32
  %i.dg = ashr exact i64 %sext.i.i12, 30
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorIdE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorIdE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.n, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.di, %bb.o ], [ %i.dd, %bb.n ], [ %i.ct, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dj = sext i32 %.0.i.i.i.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !138
  store double %i.dl, ptr %i.ci, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorIdE9has_valueEv.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.dp, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.val.i.i13 = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.val1.i.i14 = load ptr, ptr %i.dr, align 8, !tbaa !36
  %.val.val.i.i15 = load ptr, ptr %.val.i.i13, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i16 = load i32, ptr %.val1.i.i14, align 4, !tbaa !3
  %i.ds = load ptr, ptr %.val.val.i.i15, align 8, !tbaa !40
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i15, i32 noundef %.val1.val.i.i16), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dm, ptr %i.as, align 8, !tbaa !45
end_hunk_19
begin_hunk_20_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE8add_itemEv:bb.a

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE15lastValueWriterEv.exit: ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20231
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !140
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %0, align 8, !tbaa !10078, !alias.scope !20298
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bu, align 8, !tbaa !12664, !alias.scope !20298
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20232 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !20224, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20226 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !20227
  store i8 0, ptr %i.d, align 4, !tbaa !20224
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20228 ; 2 uses
  %i.n = add nsw i32 %i.m, %i.c                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20229
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i
  %i.r = sitofp i32 %i.n to double
  %i.s = tail call noundef double @log2(double noundef %i.r) #34, !tbaa !3
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %exp2.i.i = tail call double @exp2(double %i.t)
  %i.u = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20226 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(96) %i.w, i32 noundef %i.u), !inline_history !20230
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20231 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef %i.u), !inline_history !20230
  store i32 %i.u, ptr %i.o, align 8, !tbaa !20229
  %.pre = load i32, ptr %i.l, align 4, !tbaa !20228
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.af = phi i32 [ %i.m, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.c ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20232
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20284 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ah, i32 noundef %i.ak, i1 noundef zeroext true)
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !233 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i8, ptr %i.am, align 4, !tbaa !234
  %i.ao = and i8 %i.an, 2
  %.not.i3.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit, label %bb.d, !prof !230

bb.d:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEEdE6resizeEi.exit
  %i.ap = add i32 %i.af, %i.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !239
  %i.as = zext i32 %i.ap to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !55
  %i.aw = and i64 %i.as, 7
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.az = and i8 %i.ay, %i.av
  store i8 %i.az, ptr %i.au, align 1, !tbaa !55
  %i.ba = load i32, ptr %i.l, align 4, !tbaa !20228
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !20232
  %i.bc = add i32 %i.ba, -1
  %i.bd = add i32 %i.bc, %i.bb
  store i8 1, ptr %i.d, align 4, !tbaa !20224
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20226 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i32 noundef %i.bd), !inline_history !20297
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !20226
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  ret ptr %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE9copy_fromERKNS1_7MapViewILb1ES5_S6_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, facebook::velox::Varchar>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5842", align 8   ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !20301, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20303 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !20304
  store i8 0, ptr %i.c, align 4, !tbaa !20301
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20305, !range !87, !noundef !59
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20306 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(112) %i.o, i1 noundef zeroext true), !inline_history !20304
  store i8 0, ptr %i.k, align 1, !tbaa !20305
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20307 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20308
  %i.w = icmp sgt i32 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i
  %i.x = sitofp i32 %i.t to double
  %i.y = tail call noundef double @log2(double noundef %i.x) #34, !tbaa !3
  %i.z = tail call double @llvm.ceil.f64(double %i.y)
  %exp2.i.i = tail call double @exp2(double %i.z)
  %i.aa = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20303 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, i32 noundef %i.aa), !inline_history !20309
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20306 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(112) %i.ah, i32 noundef %i.aa), !inline_history !20309
  store i32 %i.aa, ptr %i.u, align 8, !tbaa !20308
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.al, align 8, !tbaa !20310
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !4470, !noalias !20311 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4471, !noalias !20311 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !4467, !noalias !20311 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !4469, !noalias !20311 ; 2 uses
  %i.at = add nsw i32 %i.ap, %i.an
  %i.au = icmp eq i32 %i.ap, 0
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, <2 x i64> <i64 8, i64 56>
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bh = sext i32 %i.an to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.x, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !20314)
  call void @llvm.experimental.noalias.scope.decl(metadata !20317)
  call void @llvm.experimental.noalias.scope.decl(metadata !20320)
  call void @llvm.experimental.noalias.scope.decl(metadata !20323)
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !2097, !noalias !20326, !nonnull !59, !align !61
  store ptr %i.bi, ptr %4, align 8, !tbaa !177, !alias.scope !20326
  store <2 x ptr> %i.av, ptr %i.aw, align 8, !tbaa !44, !alias.scope !20326
  %i.bj = trunc nsw i64 %indvars.iv to i32
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !67, !alias.scope !20326
  store ptr %i.as, ptr %i.ay, align 8, !alias.scope !20327
  store i64 %indvars.iv, ptr %i.az, align 8, !alias.scope !20327
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !145, !nonnull !59, !align !61 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 57
  %i.br = load i8, ptr %i.bq, align 1, !range !87
  %i.bs = trunc nuw i8 %i.br to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = lshr i64 %indvars.iv, 6
  %i.bu = and i64 %i.bt, 67108863
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !91
  %i.bx = and i64 %indvars.iv, 63
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = and i64 %i.bw, %i.by
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cd = load i64, ptr %i.bm, align 8, !tbaa !91
  %i.ce = and i64 %i.cd, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit

bb.k:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !90
  %i.ch = shl nsw i64 %indvars.iv, 2
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !91
  %i.co = and i64 %i.ck, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.cn
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.bz, %bb.h ], [ %i.ce, %bb.j ], [ %i.cq, %bb.k ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.t, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit.thread: ; preds = %bb.f, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5842") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.cr = load ptr, ptr %i.bc, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !12449, !nonnull !59, !align !61 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cv, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cv, label %bb.n [
    i8 33, label %bb.l
    i8 35, label %bb.m
  ]

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit.thread
  %i.cw = getelementptr i8, ptr %i.cr, i64 8
  %.val.i.i = load ptr, ptr %i.cw, align 8, !tbaa !35
  %i.cx = getelementptr i8, ptr %i.cr, i64 24
  %.val1.i.i = load ptr, ptr %i.cx, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.cy = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.cr, ptr %i.bd, align 8, !tbaa !45
  store ptr %4, ptr %i.be, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !20328
  %i.db = load i64, ptr %i.az, align 8, !tbaa !20330 ; 2 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !145, !nonnull !59, !align !61 ; 5 uses
  %i.dd = trunc i64 %i.db to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 58
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !86, !range !87, !noundef !59
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE5valueEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 59
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !88, !range !87, !noundef !59
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE5valueEv.exit

bb.q:                                             ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.db, 32
  %i.dq = ashr exact i64 %sext.i.i12, 30
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.p, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.ds, %bb.q ], [ %i.dn, %bb.p ], [ %i.dd, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dt = sext i32 %.0.i.i.i.i to i64
  %i.du = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dt ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.du, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !55 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.bf, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !147 ; 2 uses
  %i.dx = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.dy = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295 ; 2 uses
  %i.dz = add i64 %i.dw, %i.dy                    ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !149
  %i.ec = icmp ugt i64 %i.dz, %i.eb
  br i1 %i.ec, label %bb.r, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.r:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE5valueEv.exit
  %i.ed = load ptr, ptr %i.cs, align 8, !tbaa !40
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(96) %i.cs, i64 noundef %i.dz), !inline_history !12452
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.r, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_7VarcharEE5valueEv.exit
  store i64 %i.dz, ptr %i.dv, align 8, !tbaa !147
  %.not.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !151
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dw
  %i.ej = icmp ult i32 %i.dx, 13
  %i.ek = select i1 %i.ej, ptr %i.bg, ptr %.sroa.2.0.copyload.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.ek, i64 %i.dy, i1 false)
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE8add_nullEv
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20310 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !20301, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20303 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !20304
  store i8 0, ptr %i.d, align 4, !tbaa !20301
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20305, !range !87, !noundef !59
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20306 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(112) %i.p, i1 noundef zeroext true), !inline_history !20304
  store i8 0, ptr %i.l, align 1, !tbaa !20305
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20307 ; 2 uses
  %i.v = add nsw i32 %i.u, %i.c                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !20308
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i
  %i.z = sitofp i32 %i.v to double
  %i.aa = tail call noundef double @log2(double noundef %i.z) #34, !tbaa !3
  %i.ab = tail call double @llvm.ceil.f64(double %i.aa)
  %exp2.i.i = tail call double @exp2(double %i.ab)
  %i.ac = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20303 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, i32 noundef %i.ac), !inline_history !20309
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20306 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(112) %i.aj, i32 noundef %i.ac), !inline_history !20309
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !20308
  %.pre = load i32, ptr %i.t, align 4, !tbaa !20307
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.an = phi i32 [ %i.u, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.e ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20310
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20358 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.ap, i32 noundef %i.as, i1 noundef zeroext true)
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !233 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !234
  %i.aw = and i8 %i.av, 2
  %.not.i3.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit, label %bb.f, !prof !230

bb.f:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_7VarcharEE6resizeEi.exit
  %i.ax = add i32 %i.an, %i.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !239
  %i.ba = zext i32 %i.ax to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !55
  %i.be = and i64 %i.ba, 7
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !55
  %i.bh = and i8 %i.bg, %i.bd
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !55
  %i.bi = load i32, ptr %i.t, align 4, !tbaa !20307
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !20310
  %i.bk = add i32 %i.bi, -1
  %i.bl = add i32 %i.bk, %i.bj
  store i8 1, ptr %i.d, align 4, !tbaa !20301
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !20303 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !40
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, i32 noundef %i.bl), !inline_history !20371
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !20303
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  ret ptr %i.br
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE9copy_fromERKNS1_7MapViewILb1ES5_S6_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, facebook::velox::Varbinary>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5842", align 8   ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !20376, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20378 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !20379
  store i8 0, ptr %i.c, align 4, !tbaa !20376
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20380, !range !87, !noundef !59
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20381 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(112) %i.o, i1 noundef zeroext true), !inline_history !20379
  store i8 0, ptr %i.k, align 1, !tbaa !20380
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20382 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20383
  %i.w = icmp sgt i32 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i
  %i.x = sitofp i32 %i.t to double
  %i.y = tail call noundef double @log2(double noundef %i.x) #34, !tbaa !3
  %i.z = tail call double @llvm.ceil.f64(double %i.y)
  %exp2.i.i = tail call double @exp2(double %i.z)
  %i.aa = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20378 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, i32 noundef %i.aa), !inline_history !20384
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20381 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(112) %i.ah, i32 noundef %i.aa), !inline_history !20384
  store i32 %i.aa, ptr %i.u, align 8, !tbaa !20383
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.al, align 8, !tbaa !20385
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !4487, !noalias !20386 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4488, !noalias !20386 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !4484, !noalias !20386 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !4486, !noalias !20386 ; 2 uses
  %i.at = add nsw i32 %i.ap, %i.an
  %i.au = icmp eq i32 %i.ap, 0
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, <2 x i64> <i64 8, i64 56>
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bh = sext i32 %i.an to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.x, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !20389)
  call void @llvm.experimental.noalias.scope.decl(metadata !20392)
  call void @llvm.experimental.noalias.scope.decl(metadata !20395)
  call void @llvm.experimental.noalias.scope.decl(metadata !20398)
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !2097, !noalias !20401, !nonnull !59, !align !61
  store ptr %i.bi, ptr %4, align 8, !tbaa !177, !alias.scope !20401
  store <2 x ptr> %i.av, ptr %i.aw, align 8, !tbaa !44, !alias.scope !20401
  %i.bj = trunc nsw i64 %indvars.iv to i32
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !67, !alias.scope !20401
  store ptr %i.as, ptr %i.ay, align 8, !alias.scope !20402
  store i64 %indvars.iv, ptr %i.az, align 8, !alias.scope !20402
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !153, !nonnull !59, !align !61 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 57
  %i.br = load i8, ptr %i.bq, align 1, !range !87
  %i.bs = trunc nuw i8 %i.br to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = lshr i64 %indvars.iv, 6
  %i.bu = and i64 %i.bt, 67108863
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !91
  %i.bx = and i64 %indvars.iv, 63
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = and i64 %i.bw, %i.by
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !88, !range !87, !noundef !59
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cd = load i64, ptr %i.bm, align 8, !tbaa !91
  %i.ce = and i64 %i.cd, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit

bb.k:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !90
  %i.ch = shl nsw i64 %indvars.iv, 2
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 6
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !91
  %i.co = and i64 %i.ck, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.cn
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.bz, %bb.h ], [ %i.ce, %bb.j ], [ %i.cq, %bb.k ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.t, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit.thread: ; preds = %bb.f, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5842") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.cr = load ptr, ptr %i.bc, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !12449, !nonnull !59, !align !61 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cv, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cv, label %bb.n [
    i8 33, label %bb.l
    i8 35, label %bb.m
  ]

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit.thread
  %i.cw = getelementptr i8, ptr %i.cr, i64 8
  %.val.i.i = load ptr, ptr %i.cw, align 8, !tbaa !35
  %i.cx = getelementptr i8, ptr %i.cr, i64 24
  %.val1.i.i = load ptr, ptr %i.cx, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.cy = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.m:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.n:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.cr, ptr %i.bd, align 8, !tbaa !45
  store ptr %4, ptr %i.be, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.da = load ptr, ptr %i.ay, align 8, !tbaa !20403
  %i.db = load i64, ptr %i.az, align 8, !tbaa !20405 ; 2 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !153, !nonnull !59, !align !61 ; 5 uses
  %i.dd = trunc i64 %i.db to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 58
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !86, !range !87, !noundef !59
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE5valueEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 59
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !88, !range !87, !noundef !59
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE5valueEv.exit

bb.q:                                             ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.db, 32
  %i.dq = ashr exact i64 %sext.i.i12, 30
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.p, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.ds, %bb.q ], [ %i.dn, %bb.p ], [ %i.dd, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dt = sext i32 %.0.i.i.i.i to i64
  %i.du = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.dt ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.du, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !55 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %6, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.bf, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !147 ; 2 uses
  %i.dx = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.dy = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295 ; 2 uses
  %i.dz = add i64 %i.dw, %i.dy                    ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !149
  %i.ec = icmp ugt i64 %i.dz, %i.eb
  br i1 %i.ec, label %bb.r, label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

bb.r:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE5valueEv.exit
  %i.ed = load ptr, ptr %i.cs, align 8, !tbaa !40
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(96) %i.cs, i64 noundef %i.dz), !inline_history !12452
  br label %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i

_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i: ; preds = %bb.r, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9VarbinaryEE5valueEv.exit
  store i64 %i.dz, ptr %i.dv, align 8, !tbaa !147
  %.not.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i, label %_ZN8facebook5velox4exec12StringWriter9copy_fromINS0_10StringViewEEEvRKT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN8facebook5velox15UDFOutputString6resizeEm.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !151
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dw
  %i.ej = icmp ult i32 %i.dx, 13
  %i.ek = select i1 %i.ej, ptr %i.bg, ptr %.sroa.2.0.copyload.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.ek, i64 %i.dy, i1 false)
end_hunk_21
begin_hunk_22_@_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE8add_itemEv:bb.a
  %i.ax = add i32 %i.av, -1
  %i.ay = add i32 %i.ax, %i.aw
  store i8 1, ptr %i.l, align 1, !tbaa !20380
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20381 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !40
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(112) %i.ba, i32 noundef %i.ay), !inline_history !20447
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !20381
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.be, ptr %0, align 8, !tbaa !12492, !alias.scope !20448
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.bf, align 8, !tbaa !12664, !alias.scope !20448
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20385 ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !20376, !range !87, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20378 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i1 noundef zeroext true), !inline_history !20379
  store i8 0, ptr %i.d, align 4, !tbaa !20376
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20380, !range !87, !noundef !59
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20381 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(112) %i.p, i1 noundef zeroext true), !inline_history !20379
  store i8 0, ptr %i.l, align 1, !tbaa !20380
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20382 ; 2 uses
  %i.v = add nsw i32 %i.u, %i.c                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !20383
  %i.y = icmp sgt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit, !prof !56

bb.e:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i
  %i.z = sitofp i32 %i.v to double
  %i.aa = tail call noundef double @log2(double noundef %i.z) #34, !tbaa !3
  %i.ab = tail call double @llvm.ceil.f64(double %i.aa)
  %exp2.i.i = tail call double @exp2(double %i.ab)
  %i.ac = fptosi double %exp2.i.i to i32          ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20378 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, i32 noundef %i.ac), !inline_history !20384
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20381 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(112) %i.aj, i32 noundef %i.ac), !inline_history !20384
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !20383
  %.pre = load i32, ptr %i.t, align 4, !tbaa !20382
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i, %bb.e
  %i.an = phi i32 [ %i.u, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE25commitMostRecentChildItemEv.exit.i ], [ %.pre, %bb.e ]
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20385
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20433 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !232
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %i.ap, i32 noundef %i.as, i1 noundef zeroext true)
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !233 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !234
  %i.aw = and i8 %i.av, 2
  %.not.i3.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit, label %bb.f, !prof !230

bb.f:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9VarbinaryEE6resizeEi.exit
  %i.ax = add i32 %i.an, %i.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !239
  %i.ba = zext i32 %i.ax to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !55
  %i.be = and i64 %i.ba, 7
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !55
  %i.bh = and i8 %i.bg, %i.bd
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !55
  %i.bi = load i32, ptr %i.t, align 4, !tbaa !20382
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !20385
  %i.bk = add i32 %i.bi, -1
  %i.bl = add i32 %i.bk, %i.bj
  store i8 1, ptr %i.d, align 4, !tbaa !20376
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !20378 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !40
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, i32 noundef %i.bl), !inline_history !20446
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !20378
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  ret ptr %i.br
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE9copy_fromERKNS1_7MapViewILb1ES5_S6_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.3, align 8              ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.3, align 8              ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.facebook::velox::exec::MapView<true, facebook::velox::Generic<>, facebook::velox::Timestamp>::Element", align 8 ; 11 uses
  %5 = alloca %"class.std::tuple.5892", align 8   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !20451, !range !87, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE25commitMostRecentChildItemEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20453 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(96) %i.g, i1 noundef zeroext true), !inline_history !20454
  store i8 0, ptr %i.c, align 4, !tbaa !20451
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE25commitMostRecentChildItemEv.exit.i

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE25commitMostRecentChildItemEv.exit.i: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20455 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20456
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE6resizeEi.exit, !prof !56

bb.c:                                             ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE25commitMostRecentChildItemEv.exit.i
  %i.p = sitofp i32 %i.l to double
  %i.q = tail call noundef double @log2(double noundef %i.p) #34, !tbaa !3
  %i.r = tail call double @llvm.ceil.f64(double %i.q)
  %exp2.i.i = tail call double @exp2(double %i.r)
  %i.s = fptosi double %exp2.i.i to i32           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20453 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(96) %i.u, i32 noundef %i.s), !inline_history !20457
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20458 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.s), !inline_history !20457
  store i32 %i.s, ptr %i.m, align 8, !tbaa !20456
  br label %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE6resizeEi.exit

_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE6resizeEi.exit: ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE25commitMostRecentChildItemEv.exit.i, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !20459
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !4504, !noalias !20460 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4505, !noalias !20460 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !4501, !noalias !20460 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !4503, !noalias !20460 ; 2 uses
  %i.al = add nsw i32 %i.ah, %i.af
  %i.am = icmp eq i32 %i.ah, 0
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE6resizeEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, <2 x i64> <i64 8, i64 56>
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = sext i32 %i.af to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.t, %_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE6resizeEi.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !20463)
  call void @llvm.experimental.noalias.scope.decl(metadata !20466)
  call void @llvm.experimental.noalias.scope.decl(metadata !20469)
  call void @llvm.experimental.noalias.scope.decl(metadata !20472)
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !2097, !noalias !20475, !nonnull !59, !align !61
  store ptr %i.ay, ptr %4, align 8, !tbaa !177, !alias.scope !20475
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !44, !alias.scope !20475
  %i.az = trunc nsw i64 %indvars.iv to i32
  store i32 %i.az, ptr %i.ap, align 8, !tbaa !67, !alias.scope !20475
  store ptr %i.ak, ptr %i.aq, align 8, !alias.scope !20476
  store i64 %indvars.iv, ptr %i.ar, align 8, !alias.scope !20476
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !156, !nonnull !59, !align !61 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1768 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !86, !range !87, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 57
  %i.bh = load i8, ptr %i.bg, align 1, !range !87
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = lshr i64 %indvars.iv, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = and i64 %indvars.iv, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bm, %i.bo
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 59
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !88, !range !87, !noundef !59
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !91
  %i.bu = and i64 %i.bt, 1
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit

bb.i:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !90
  %i.bx = shl nsw i64 %indvars.iv, 2
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !91
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit: ; preds = %bb.f, %bb.h, %bb.i
  %.0.i.i.i.in = phi i64 [ %i.bp, %bb.f ], [ %i.bu, %bb.h ], [ %i.cg, %bb.i ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %bb.p, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit.thread

_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit.thread: ; preds = %bb.d, %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE8add_itemEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.5892") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !11903, !nonnull !59, !align !61 ; 5 uses
  %i.ci = load ptr, ptr %5, align 8, !tbaa !12573, !nonnull !59, !align !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !14  ; 2 uses
  store i8 %i.cl, ptr %i.b, align 1, !tbaa !34
  switch i8 %i.cl, label %bb.l [
    i8 33, label %bb.j
    i8 35, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit.thread
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr i8, ptr %i.ch, i64 24
  %.val1.i.i = load ptr, ptr %i.cn, align 8, !tbaa !36
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i = load i32, ptr %.val1.i.i, align 4, !tbaa !3
  %i.co = load ptr, ptr %.val.val.i.i, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i, i32 noundef %.val1.val.i.i), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.k:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit.thread
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %i.b, ptr %3, align 8, !tbaa !44
  store ptr %i.ch, ptr %i.av, align 8, !tbaa !45
  store ptr %4, ptr %i.aw, align 8, !tbaa !49
  call fastcc void @"_ZZZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !11730
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit

_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.cq = load ptr, ptr %i.aq, align 8, !tbaa !20477
  %i.cr = load i64, ptr %i.ar, align 8, !tbaa !20479 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !156, !nonnull !59, !align !61 ; 5 uses
  %i.ct = trunc i64 %i.cr to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !86, !range !87, !noundef !59
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 59
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !88, !range !87, !noundef !59
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !89
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE5valueEv.exit

bb.o:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !90
  %sext.i.i12 = shl i64 %i.cr, 32
  %i.dg = ashr exact i64 %sext.i.i12, 30
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE5valueEv.exit

_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE5valueEv.exit: ; preds = %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit, %bb.n, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.di, %bb.o ], [ %i.dd, %bb.n ], [ %i.ct, %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit ]
  %i.dj = sext i32 %.0.i.i.i.i to i64
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = load <2 x i64>, ptr %i.dk, align 8, !tbaa !91
  store <2 x i64> %i.dl, ptr %i.ci, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

bb.p:                                             ; preds = %_ZNK8facebook5velox4exec16OptionalAccessorINS0_9TimestampEE9has_valueEv.exit
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEENS0_9TimestampEE8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !14  ; 2 uses
  store i8 %i.dp, ptr %i.a, align 1, !tbaa !34
  switch i8 %i.dp, label %bb.s [
    i8 33, label %bb.q
    i8 35, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.val.i.i13 = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.val1.i.i14 = load ptr, ptr %i.dr, align 8, !tbaa !36
  %.val.val.i.i15 = load ptr, ptr %.val.i.i13, align 8, !tbaa !37 ; 2 uses
  %.val1.val.i.i16 = load i32, ptr %.val1.i.i14, align 4, !tbaa !3
  %i.ds = load ptr, ptr %.val.val.i.i15, align 8, !tbaa !40
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %.val.val.i.i15, i32 noundef %.val1.val.i.i16), !inline_history !11729
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.r:                                             ; preds = %bb.p
  call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_118copy_from_internalILNS0_8TypeKindE35EEEvRNS1_13GenericWriterERKNS1_11GenericViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(28) %4), !inline_history !11730
  br label %_ZN8facebook5velox4exec13GenericWriter9copy_fromERKNS1_11GenericViewE.exit17

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !44
  store ptr %i.dm, ptr %i.as, align 8, !tbaa !45
end_hunk_22
