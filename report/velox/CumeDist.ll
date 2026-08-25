Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CumeDist?download=true
inline.NumInlined: 5538
inline.NumDeleted: 1673
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERKSt6vectorINS3_17WindowFunctionArgESaIS9_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEEZNS2_6window9prestosql16registerCumeDistERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKS16_St18_Manager_operation":bb.a
"_ZZN8facebook5velox6window9prestosql16registerCumeDistERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i": ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #26
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6window9prestosql16registerCumeDistERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6window9prestosql16registerCumeDistERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZN8facebook5velox6window9prestosql16registerCumeDistERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit.i.i", %bb.j, %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6window9prestosql16registerCumeDistERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E15_M_init_functorIRKSD_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN8facebook5velox6DOUBLEEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.68") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14WindowFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox4exec14WindowFunctionE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !45
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !140
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !140
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_116CumeDistFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(108) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox4exec14WindowFunctionE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26, !inline_history !141
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i

_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !45
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !142
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !142
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, !prof !49

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !141
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_116CumeDistFunction14resetPartitionEPKNS0_4exec15WindowPartitionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(108) initializes((80, 108)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !146
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.k, ptr %i.l, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_116CumeDistFunction5applyERKN5boost13intrusive_ptrINS0_6BufferEEESA_SA_SA_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(108) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !150
  %i.d = lshr i64 %i.c, 2                         ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = load ptr, ptr %7, align 8, !tbaa !155
  %i.g = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.f)
  %i.h = load ptr, ptr %1, align 8, !tbaa !147
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !158
  %i.k = load ptr, ptr %2, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !158
  %i.n = icmp sgt i32 %i.e, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = sext i32 %6 to i64
  %wide.trip.count = and i64 %i.d, 2147483647
  %.pre = load i64, ptr %i.o, align 8, !tbaa !114
  %invariant.gep = getelementptr [8 x i8], ptr %i.g, i64 %i.s
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %.pre, %.lr.ph ], [ %i.w, %bb.d ]
  %i.t = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !42   ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %.not = icmp eq i64 %indvars.iv.a, %i.w
  br i1 %.not, label %._crit_edge20, label %bb.c

._crit_edge20:                                    ; preds = %bb.b
  %.pre.a = load double, ptr %i.r, align 8, !tbaa !159
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.w, ptr %i.o, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.t
  %i.y = load i32, ptr %i.x, align 4, !tbaa !42
  %reass.sub = sub i32 %i.y, %i.v
  %i.z = add i32 %reass.sub, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !160
  %i.ac = add nsw i64 %i.ab, %i.aa                ; 2 uses
  store i64 %i.ac, ptr %i.p, align 8, !tbaa !160
  %i.ad = sitofp i64 %i.ac to double
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !131
  %i.af = sitofp i32 %i.ae to double
  %i.ag = fdiv double %i.ad, %i.af                ; 2 uses
  store double %i.ag, ptr %i.r, align 8, !tbaa !159
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge20, %bb.c
  %i.ah = phi double [ %.pre.a, %._crit_edge20 ], [ %i.ag, %bb.c ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.t
  store double %i.ah, ptr %gep, align 8, !tbaa !161
  %indvars.iv.next = add nuw nsw i64 %i.t, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !162
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14WindowFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %2 = alloca %"class.std::optional.106", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !163
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.q, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread: ; preds = %bb.b, %_ZNK8facebook5velox6Buffer9isMutableEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !164
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !175
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIdEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %1, i64 noundef %i.k, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !147
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.p = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.r = load i8, ptr %i.q, align 4, !tbaa !163
  %i.s = and i8 %i.r, 2
  %.not.i5 = icmp eq i8 %i.s, 0
  br i1 %.not.i5, label %bb.e, label %bb.d, !prof !177

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.i, align 8, !tbaa !164
  %i.u = zext i32 %i.t to i64
  %i.v = shl i64 %i.u, 35
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !158
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !178
  %i.aa = ashr exact i64 %i.v, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %i.z, i64 %i.aa, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.ac = load ptr, ptr %1, align 8, !tbaa !147   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = atomicrmw add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !147 ; 7 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !147
  %.not.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i unwind label %bb.j, !inline_history !199

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !200
  %.not.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !46
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.j, !inline_history !199

bb.j:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #28
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !163
  %i.aw = and i8 %i.av, 2
  %.not.i6 = icmp eq i8 %i.aw, 0
  br i1 %.not.i6, label %bb.l, label %bb.k, !prof !177

bb.k:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIdEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc7 unwind label %bb.o

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !158
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !178
  %i.ba = load ptr, ptr %1, align 8, !tbaa !147   ; 7 uses
  %.not.i8 = icmp eq ptr %i.ba, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = atomicrmw sub ptr %i.bb, i32 1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.m
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %.noexc.i unwind label %bb.n, !inline_history !199

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !200
  %.not.i.i9 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !46
  %..i.i = select i1 %.not.i.i9, i64 8, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %..i.i
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.n, !inline_history !199

bb.n:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #28
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.l, %bb.m, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.ab, %bb.f ]
end_hunk_0
