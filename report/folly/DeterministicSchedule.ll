Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/DeterministicSchedule?download=true
inline.NumInlined: 2146
inline.NumDeleted: 1190
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !78
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #17
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define internal noundef i64 @"_ZNSt17_Function_handlerIFmmEZN5folly4test21DeterministicSchedule7uniformEmE3$_0E9_M_invokeERKSt9_Any_dataOm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #7 align 2 {
bb.a:
  %2 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !133
  %.val2 = load ptr, ptr %.val, align 8, !tbaa !216
  %.val3 = load i64, ptr %1, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = add i64 %.val3, -1
  store i64 0, ptr %2, align 8, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.a, ptr %i.b, align 8, !tbaa !275
  %i.c = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(120) %.val2, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFmmEZN5folly4test21DeterministicSchedule7uniformEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.h
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN5folly4test21DeterministicSchedule7uniformEmE3$_0", ptr %0, align 8, !tbaa !205
  br label %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !133
  store ptr %.val, ptr %0, align 8, !tbaa !133
  br label %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %.val2.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !213 ; 2 uses
  %i.c = load <2 x ptr>, ptr %.val6, align 8, !tbaa !133
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !133
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E15_M_init_functorIRKS4_EEvRSt9_Any_dataOT_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %i.d, align 4, !tbaa !74
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !74
  br label %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E15_M_init_functorIRKS4_EEvRSt9_Any_dataOT_.exit.i"

bb.g:                                             ; preds = %bb.e
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E15_M_init_functorIRKS4_EEvRSt9_Any_dataOT_.exit.i"

"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E15_M_init_functorIRKS4_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.g, %bb.f, %bb.d
  store ptr %i.a, ptr %0, align 8, !tbaa !133
  br label %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.h:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !133 ; 3 uses
  %i.i = icmp eq ptr %.val7.i, null
  br i1 %i.i, label %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr i8, ptr %.val7.i, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !213 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.k, align 8, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !208
  %i.p = load ptr, ptr %.val.i.i, align 8, !tbaa !181
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #17, !call_target !221, !inline_history !7583
  %i.s = load ptr, ptr %.val.i.i, align 8, !tbaa !181
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #17, !call_target !234, !inline_history !7583
  br label %"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit.i.i"

bb.l:                                             ; preds = %bb.j
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.m ], [ %i.x, %bb.n ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.o, label %"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit.i.i", !prof !60

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #17
  br label %"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit.i.i"

"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit.i.i": ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 16) #36
  br label %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit.i.i", %bb.h, %"_ZNSt14_Function_base13_Base_managerIZN5folly4test21DeterministicSchedule7uniformEmE3$_0E15_M_init_functorIRKS4_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt24uniform_int_distributionImEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<unsigned long>::param_type", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !275
  %i.c = load i64, ptr %2, align 8, !tbaa !274
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = icmp ult i64 %i.d, 281474976710655
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.g = udiv i64 281474976710655, %i.f           ; 2 uses
  %i.h = mul i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit, %bb.b
  %i.l = load i64, ptr %i.i, align 8, !tbaa !7588 ; 4 uses
  %i.m = icmp ugt i64 %i.l, 10
  br i1 %i.m, label %bb.d, label %._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit_crit_edge

._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit_crit_edge: ; preds = %bb.c
  %.pre69 = load i64, ptr %i.j, align 8, !tbaa !7589
  %i.n = add nuw nsw i64 %i.l, 1
  br label %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit

bb.d:                                             ; preds = %bb.c
  %.not2.i.i = icmp eq i64 %i.l, 389
  %.pre70 = load i64, ptr %i.j, align 8, !tbaa !7589 ; 2 uses
  br i1 %.not2.i.i, label %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.o = sub i64 389, %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.p = phi i64 [ %.pre70, %.lr.ph.i.i ], [ %spec.select12.i.i.i, %bb.e ] ; 3 uses
  %.03.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %i.ac, %bb.e ]
  %i.q = add i64 %i.p, -5                         ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  %i.s = add i64 %i.p, 7
  %spec.select.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %spec.select.i.i.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !52   ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !52
  %i.x = load i64, ptr %i.k, align 8, !tbaa !210
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.u, %i.y           ; 2 uses
  %reass.sub.i.i.i.a = add i64 %i.u, 281474976710656
  %storemerge.i.i.i = zext i1 %.not.i.i.i to i64
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 %reass.sub.i.i.i.a, i64 %i.u
  %.0.i.i.i = sub i64 %.0.v.i.i.i, %i.y
  store i64 %storemerge.i.i.i, ptr %i.k, align 8, !tbaa !210
  store i64 %.0.i.i.i, ptr %i.v, align 8, !tbaa !52
  %i.z = load i64, ptr %i.j, align 8, !tbaa !7589
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 11
  %spec.select12.i.i.i = select i1 %i.ab, i64 0, i64 %i.aa ; 3 uses
  store i64 %spec.select12.i.i.i, ptr %i.j, align 8, !tbaa !7589
  %i.ac = add i64 %.03.i.i, -1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit, label %bb.e, !llvm.loop !7584

_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit: ; preds = %bb.e, %._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit_crit_edge, %bb.d
  %i.ad = phi i64 [ %.pre69, %._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit_crit_edge ], [ %.pre70, %bb.d ], [ %spec.select12.i.i.i, %bb.e ] ; 3 uses
  %i.ae = phi i64 [ %i.n, %._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit_crit_edge ], [ 1, %bb.d ], [ 1, %bb.e ]
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !7588
  %i.af = add i64 %i.ad, -5                       ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  %i.ah = add i64 %i.ad, 7
  %spec.select.i.i = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %spec.select.i.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !52 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ad ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !52
  %i.am = load i64, ptr %i.k, align 8, !tbaa !210
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %.not.i1.i = icmp ult i64 %i.aj, %i.an          ; 2 uses
  %reass.sub.i.i.a = add i64 %i.aj, 281474976710656
  %storemerge.i.i = zext i1 %.not.i1.i to i64
  %.0.v.i.i = select i1 %.not.i1.i, i64 %reass.sub.i.i.a, i64 %i.aj
  %.0.i.i = sub i64 %.0.v.i.i, %i.an              ; 3 uses
  store i64 %storemerge.i.i, ptr %i.k, align 8, !tbaa !210
  store i64 %.0.i.i, ptr %i.ak, align 8, !tbaa !52
  %i.ao = load i64, ptr %i.j, align 8, !tbaa !7589
  %i.ap = add i64 %i.ao, 1                        ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 11
  %spec.select12.i.i = select i1 %i.aq, i64 0, i64 %i.ap
  store i64 %spec.select12.i.i, ptr %i.j, align 8, !tbaa !7589
  %.not27 = icmp ult i64 %.0.i.i, %i.h
  br i1 %.not27, label %bb.f, label %bb.c, !llvm.loop !7585

bb.f:                                             ; preds = %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit
  %i.ar = udiv i64 %.0.i.i, %i.g
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 281474976710655
  br i1 %.not, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.as = lshr i64 %i.d, 48
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !tbaa !274
  store i64 %i.as, ptr %i.at, align 8, !tbaa !275
  %i.ax = call noundef i64 @_ZNSt24uniform_int_distributionImEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEmRT_RKNS0_10param_typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.ay = shl i64 %i.ax, 48                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.az = load i64, ptr %i.au, align 8, !tbaa !7588 ; 4 uses
  %i.ba = icmp ugt i64 %i.az, 10
  br i1 %i.ba, label %bb.i, label %._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47_crit_edge

._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %i.av, align 8, !tbaa !7589
  %i.bb = add nuw nsw i64 %i.az, 1
  br label %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47

bb.i:                                             ; preds = %bb.h
  %.not2.i.i35 = icmp eq i64 %i.az, 389
  %.pre68 = load i64, ptr %i.av, align 8, !tbaa !7589 ; 2 uses
  br i1 %.not2.i.i35, label %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %bb.i
  %i.bc = sub i64 389, %i.az
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i36
  %i.bd = phi i64 [ %.pre68, %.lr.ph.i.i36 ], [ %spec.select12.i.i.i45, %bb.j ] ; 3 uses
  %.03.i.i38 = phi i64 [ %i.bc, %.lr.ph.i.i36 ], [ %i.bq, %bb.j ]
  %i.be = add i64 %i.bd, -5                       ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  %i.bg = add i64 %i.bd, 7
  %spec.select.i.i.i39 = select i1 %i.bf, i64 %i.bg, i64 %i.be
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %spec.select.i.i.i39
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !52 ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !52
  %i.bl = load i64, ptr %i.aw, align 8, !tbaa !210
  %i.bm = add i64 %i.bl, %i.bk                    ; 2 uses
  %.not.i.i.i40 = icmp ult i64 %i.bi, %i.bm       ; 2 uses
  %reass.sub.i.i.i41 = add i64 %i.bi, 281474976710656
  %storemerge.i.i.i42 = zext i1 %.not.i.i.i40 to i64
  %.0.v.i.i.i43 = select i1 %.not.i.i.i40, i64 %reass.sub.i.i.i41, i64 %i.bi
  %.0.i.i.i44 = sub i64 %.0.v.i.i.i43, %i.bm
  store i64 %storemerge.i.i.i42, ptr %i.aw, align 8, !tbaa !210
  store i64 %.0.i.i.i44, ptr %i.bj, align 8, !tbaa !52
  %i.bn = load i64, ptr %i.av, align 8, !tbaa !7589
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 11
  %spec.select12.i.i.i45 = select i1 %i.bp, i64 0, i64 %i.bo ; 3 uses
  store i64 %spec.select12.i.i.i45, ptr %i.av, align 8, !tbaa !7589
  %i.bq = add i64 %.03.i.i38, -1                  ; 2 uses
  %.not.i.i46 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i46, label %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47, label %bb.j, !llvm.loop !7584

_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47: ; preds = %bb.j, %._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47_crit_edge, %bb.i
  %i.br = phi i64 [ %.pre, %._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47_crit_edge ], [ %.pre68, %bb.i ], [ %spec.select12.i.i.i45, %bb.j ] ; 3 uses
  %i.bs = phi i64 [ %i.bb, %._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47_crit_edge ], [ 1, %bb.i ], [ 1, %bb.j ]
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !7588
  %i.bt = add i64 %i.br, -5                       ; 2 uses
  %i.bu = icmp slt i64 %i.bt, 0
  %i.bv = add i64 %i.br, 7
  %spec.select.i.i28 = select i1 %i.bu, i64 %i.bv, i64 %i.bt
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %spec.select.i.i28
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !52 ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.br ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !52
  %i.ca = load i64, ptr %i.aw, align 8, !tbaa !210
  %i.cb = add i64 %i.ca, %i.bz                    ; 2 uses
  %.not.i1.i29 = icmp ult i64 %i.bx, %i.cb        ; 2 uses
  %reass.sub.i.i30.a = add i64 %i.bx, 281474976710656
  %storemerge.i.i31 = zext i1 %.not.i1.i29 to i64
  %.0.v.i.i32 = select i1 %.not.i1.i29, i64 %reass.sub.i.i30.a, i64 %i.bx
  %.0.i.i33 = sub i64 %.0.v.i.i32, %i.cb          ; 2 uses
  store i64 %storemerge.i.i31, ptr %i.aw, align 8, !tbaa !210
  store i64 %.0.i.i33, ptr %i.by, align 8, !tbaa !52
  %i.cc = load i64, ptr %i.av, align 8, !tbaa !7589
  %i.cd = add i64 %i.cc, 1                        ; 2 uses
  %i.ce = icmp ugt i64 %i.cd, 11
  %spec.select12.i.i34 = select i1 %i.ce, i64 0, i64 %i.cd
  store i64 %spec.select12.i.i34, ptr %i.av, align 8, !tbaa !7589
  %i.cf = add i64 %.0.i.i33, %i.ay                ; 3 uses
  %i.cg = icmp ugt i64 %i.cf, %i.d
  %i.ch = icmp ult i64 %i.cf, %i.ay
  %i.ci = or i1 %i.cg, %i.ch
  br i1 %i.ci, label %bb.h, label %.loopexit, !llvm.loop !7586

bb.k:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !7588 ; 4 uses
  %i.cl = icmp ugt i64 %i.ck, 10
  br i1 %i.cl, label %bb.l, label %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit67

bb.l:                                             ; preds = %bb.k
  %.not2.i.i55 = icmp eq i64 %i.ck, 389
  br i1 %.not2.i.i55, label %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit67, label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %bb.l
  %i.cm = sub i64 389, %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.pre.i.i57 = load i64, ptr %i.cn, align 8, !tbaa !7589
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i56
  %i.cp = phi i64 [ %.pre.i.i57, %.lr.ph.i.i56 ], [ %spec.select12.i.i.i65, %bb.m ] ; 3 uses
  %.03.i.i58 = phi i64 [ %i.cm, %.lr.ph.i.i56 ], [ %i.dc, %bb.m ]
  %i.cq = add i64 %i.cp, -5                       ; 2 uses
  %i.cr = icmp slt i64 %i.cq, 0
  %i.cs = add i64 %i.cp, 7
  %spec.select.i.i.i59 = select i1 %i.cr, i64 %i.cs, i64 %i.cq
  %i.ct = getelementptr inbounds [8 x i8], ptr %1, i64 %spec.select.i.i.i59
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !52 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cp ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !52
  %i.cx = load i64, ptr %i.co, align 8, !tbaa !210
  %i.cy = add i64 %i.cx, %i.cw                    ; 2 uses
  %.not.i.i.i60 = icmp ult i64 %i.cu, %i.cy       ; 2 uses
  %reass.sub.i.i.i61 = add i64 %i.cu, 281474976710656
  %storemerge.i.i.i62 = zext i1 %.not.i.i.i60 to i64
  %.0.v.i.i.i63 = select i1 %.not.i.i.i60, i64 %reass.sub.i.i.i61, i64 %i.cu
  %.0.i.i.i64 = sub i64 %.0.v.i.i.i63, %i.cy
  store i64 %storemerge.i.i.i62, ptr %i.co, align 8, !tbaa !210
  store i64 %.0.i.i.i64, ptr %i.cv, align 8, !tbaa !52
  %i.cz = load i64, ptr %i.cn, align 8, !tbaa !7589
  %i.da = add i64 %i.cz, 1                        ; 2 uses
  %i.db = icmp ugt i64 %i.da, 11
  %spec.select12.i.i.i65 = select i1 %i.db, i64 0, i64 %i.da ; 2 uses
  store i64 %spec.select12.i.i.i65, ptr %i.cn, align 8, !tbaa !7589
  %i.dc = add i64 %.03.i.i58, -1                  ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i66, label %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit67, label %bb.m, !llvm.loop !7584

_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit67: ; preds = %bb.m, %bb.k, %bb.l
  %i.dd = phi i64 [ %i.ck, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ]
  %i.de = add nuw nsw i64 %i.dd, 1
  store i64 %i.de, ptr %i.cj, align 8, !tbaa !7588
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !7589 ; 3 uses
  %i.dh = add i64 %i.dg, -5                       ; 2 uses
  %i.di = icmp slt i64 %i.dh, 0
  %i.dj = add i64 %i.dg, 7
  %spec.select.i.i48 = select i1 %i.di, i64 %i.dj, i64 %i.dh
  %i.dk = getelementptr inbounds [8 x i8], ptr %1, i64 %spec.select.i.i48
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !52 ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dg ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !52
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !210
  %i.dq = add i64 %i.dp, %i.dn                    ; 2 uses
  %.not.i1.i49 = icmp ult i64 %i.dl, %i.dq        ; 2 uses
  %reass.sub.i.i50 = add i64 %i.dl, 281474976710656
  %storemerge.i.i51 = zext i1 %.not.i1.i49 to i64
  %.0.v.i.i52 = select i1 %.not.i1.i49, i64 %reass.sub.i.i50, i64 %i.dl
  %.0.i.i53 = sub i64 %.0.v.i.i52, %i.dq          ; 2 uses
  store i64 %storemerge.i.i51, ptr %i.do, align 8, !tbaa !210
  store i64 %.0.i.i53, ptr %i.dm, align 8, !tbaa !52
  %i.dr = load i64, ptr %i.df, align 8, !tbaa !7589
  %i.ds = add i64 %i.dr, 1                        ; 2 uses
  %i.dt = icmp ugt i64 %i.ds, 11
  %spec.select12.i.i54 = select i1 %i.dt, i64 0, i64 %i.ds
  store i64 %spec.select12.i.i54, ptr %i.df, align 8, !tbaa !7589
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47, %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit67, %bb.f
  %.0 = phi i64 [ %i.ar, %bb.f ], [ %.0.i.i53, %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit67 ], [ %i.cf, %_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv.exit47 ]
  %i.du = load i64, ptr %2, align 8, !tbaa !274
  %i.dv = add i64 %i.du, %.0
  ret i64 %i.dv
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !221, !inline_history !7590
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17, !call_target !234, !inline_history !7590
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly4test21DeterministicSchedule22isCurrentThreadExitingEv() local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE13getLocalCacheEvE5cache) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 dereferenceable(168) ptr @_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE7getSlowERNS4_25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit

_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit: ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !103, !range !201, !noundef !189
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly4test21DeterministicSchedule8isActiveEv() local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE13getLocalCacheEvE5cache) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 dereferenceable(168) ptr @_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE7getSlowERNS4_25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit

_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit: ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = icmp ne ptr %i.f, null
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5folly4test21DeterministicSchedule18getCurrentScheduleEv() local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE13getLocalCacheEvE5cache) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef nonnull align 8 dereferenceable(168) ptr @_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE7getSlowERNS4_25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit

_ZN5folly20SingletonThreadLocalINS_4test12_GLOBAL__N_114PerThreadStateENS_6detail10DefaultTagEvvE3getEv.exit: ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4test21DeterministicSchedule13uniformSubsetEmmm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::function.13") align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.190", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7595)
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #38, !noalias !7596 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i32 1, ptr %i.b, align 8, !tbaa !207, !noalias !7595
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !208, !noalias !7595
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5folly4test13UniformSubsetESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !181, !noalias !7595
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5folly4test21DeterministicSchedule7uniformEm(ptr dead_on_unwind nonnull writable sret(%"class.std::function.13") align 8 dereferenceable(80) %i.d, i64 noundef %1)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly4test13UniformSubsetESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !7595

common.resume:                                    ; preds = %.body, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly4test13UniformSubsetESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly4test13UniformSubsetESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ], [ %i.ah, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5folly4test13UniformSubsetESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #36, !noalias !7595
  br label %common.resume

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %2, ptr %i.g, align 8, !tbaa !7597, !noalias !7595
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %3, ptr %i.h, align 8, !tbaa !282, !noalias !7595
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !noalias !7595
  store ptr %i.a, ptr %i.f, align 8, !tbaa !213, !alias.scope !7595
  store ptr %i.d, ptr %4, align 8, !tbaa !7598, !alias.scope !7595
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 8, !tbaa !74
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.b, align 8, !tbaa !74
  br label %_ZNSt10shared_ptrIN5folly4test13UniformSubsetEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5folly4test13UniformSubsetEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5folly4test13UniformSubsetEEC2ERKS3_.exit: ; preds = %bb.c, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %"_ZZN5folly4test21DeterministicSchedule13uniformSubsetEmmmEN3$_0D2Ev.exit" unwind label %.body ; 3 uses

"_ZZN5folly4test21DeterministicSchedule13uniformSubsetEmmmEN3$_0D2Ev.exit": ; preds = %_ZNSt10shared_ptrIN5folly4test13UniformSubsetEEC2ERKS3_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.n, align 8, !tbaa !285
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.a, ptr %i.q, align 8, !tbaa !213
  store ptr %i.n, ptr %0, align 8, !tbaa !133
  store ptr @"_ZNSt17_Function_handlerIFmmEZN5folly4test21DeterministicSchedule13uniformSubsetEmmmE3$_0E9_M_invokeERKSt9_Any_dataOm", ptr %i.p, align 8, !tbaa !76
  store ptr @"_ZNSt17_Function_handlerIFmmEZN5folly4test21DeterministicSchedule13uniformSubsetEmmmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.o, align 8, !tbaa !77
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !213  ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.r, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5folly4test13UniformSubsetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %"_ZZN5folly4test21DeterministicSchedule13uniformSubsetEmmmEN3$_0D2Ev.exit"
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !207
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !208
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !181
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #17, !call_target !221, !inline_history !11
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !181
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #17, !call_target !234, !inline_history !11
  br label %_ZNSt12__shared_ptrIN5folly4test13UniformSubsetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i5 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_0
