Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_compaction_flush?download=true
inline.NumInlined: 9898
inline.NumDeleted: 4271
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK7rocksdb21FSWritableFileWrapper13use_direct_ioEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb21FSWritableFileWrapper26GetRequiredBufferAlignmentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb21FSWritableFileWrapper20SetWriteLifeTimeHintENS_3Env17WriteLifeTimeHintE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb14FSWritableFile13SetIOPriorityENS_3Env10IOPriorityE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.a, align 8, !tbaa !1540
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN7rocksdb14FSWritableFile13GetIOPriorityEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1540
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN7rocksdb21FSWritableFileWrapper20GetWriteLifeTimeHintEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN7rocksdb21FSWritableFileWrapper11GetFileSizeERKNS_9IOOptionsEPNS_14IODebugContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef %2)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb21FSWritableFileWrapper25SetPreallocationBlockSizeEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb21FSWritableFileWrapper22GetPreallocationStatusEPmS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb21FSWritableFileWrapper11GetUniqueIdEPcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b, ptr noundef %1, i64 noundef %2)
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb21FSWritableFileWrapper15InvalidateCacheEmm(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(33) %i.b, i64 noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb21FSWritableFileWrapper9RangeSyncEmmRKNS_9IOOptionsEPNS_14IODebugContextE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(33) %i.b, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb21FSWritableFileWrapper12PrepareWriteEmmRKNS_9IOOptionsEPNS_14IODebugContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb21FSWritableFileWrapper8AllocateEmmRKNS_9IOOptionsEPNS_14IODebugContextE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1542 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(33) %i.b, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef %5)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPvEZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlS0_E_E9_M_invokeERKSt9_Any_dataOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !668    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZSt10__invoke_rIvRZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_JS2_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #33
  br label %_ZSt10__invoke_rIvRZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_JS2_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit

_ZSt10__invoke_rIvRZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_JS2_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES6_E4typeEOS7_DpOS8_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPvEZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlS0_E_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !668
  br label %_ZNSt14_Function_base13_Base_managerIZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN7rocksdb13AlignedBuffer17AllocateNewBufferEmbmmEUlPvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !811  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !812    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #35
  unreachable

_ZNKSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !667  ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !668
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !668
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !669
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !669
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %i.z = add i64 %i.m, -16
  %i.aa = sub i64 %i.z, %i.e                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ac, 2305843009213693948     ; 3 uses
  %i.ad = shl i64 %n.vec, 4                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ag
  %next.gep47 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  %wide.vec = load <8 x ptr>, ptr %next.gep47, align 8, !tbaa !668, !alias.scope !2564, !noalias !2563
  store <8 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !668, !alias.scope !2563, !noalias !2564
  store <8 x ptr> splat (ptr null), ptr %next.gep47, align 8, !tbaa !668, !alias.scope !2564, !noalias !2563
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader89

.lr.ph.i.i.i.preheader89:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader89, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader89 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader89 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !668, !alias.scope !2564, !noalias !2563
  store ptr null, ptr %i.ai, align 8, !tbaa !667, !alias.scope !2564, !noalias !2563
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !668, !alias.scope !2563, !noalias !2564
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !902, !alias.scope !2564, !noalias !2563
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !2557

_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ae, %middle.block ], [ %i.al, %.lr.ph.i.i.i ] ; 4 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.an = add i64 %i.d, -16
  %i.ao = sub i64 %i.an, %i.m                     ; 3 uses
  %i.ap = lshr i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check64 = icmp ult i64 %i.ao, 304
  br i1 %min.iters.check64, label %.lr.ph.i.i.i17.preheader88, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ar = and i64 %i.ao, -16                      ; 4 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = getelementptr i8, ptr %1, i64 %i.ar
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = getelementptr i8, ptr %1, i64 8
  %i.ax = getelementptr i8, ptr %1, i64 %i.ar
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.ba = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %bound066 = icmp ult ptr %i.am, %i.av
  %bound167 = icmp ult ptr %1, %i.at
  %found.conflict68 = and i1 %bound066, %bound167
  %bound069 = icmp ult ptr %i.aw, %i.bb
  %bound170 = icmp ult ptr %i.az, %i.ay
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %found.conflict68, %found.conflict71
  br i1 %conflict.rdx72, label %.lr.ph.i.i.i17.preheader88, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck65
  %n.vec74 = and i64 %i.aq, 2305843009213693948   ; 3 uses
  %i.bc = shl i64 %n.vec74, 4                     ; 2 uses
  %i.bd = getelementptr i8, ptr %i.am, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bc
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next83, %vector.body75 ] ; 2 uses
  %i.bf = shl i64 %index76, 4                     ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.am, i64 %i.bf
  %next.gep78 = getelementptr i8, ptr %1, i64 %i.bf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  %wide.vec79 = load <8 x ptr>, ptr %next.gep78, align 8, !tbaa !668, !alias.scope !2566, !noalias !2565
  store <8 x ptr> %wide.vec79, ptr %next.gep77, align 8, !tbaa !668, !alias.scope !2565, !noalias !2566
  store <8 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !668, !alias.scope !2566, !noalias !2565
  %index.next83 = add nuw i64 %index76, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next83, %n.vec74
  br i1 %i.bg, label %middle.block84, label %vector.body75, !llvm.loop !2561

middle.block84:                                   ; preds = %vector.body75
  %cmp.n85 = icmp eq i64 %i.aq, %n.vec74
  br i1 %cmp.n85, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17.preheader88

.lr.ph.i.i.i17.preheader88:                       ; preds = %vector.memcheck65, %.lr.ph.i.i.i17.preheader, %middle.block84
  %.012.i.i.i18.ph = phi ptr [ %i.am, %vector.memcheck65 ], [ %i.am, %.lr.ph.i.i.i17.preheader ], [ %i.bd, %middle.block84 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck65 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.be, %middle.block84 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader88, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bk, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader88 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bj, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader88 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bi = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !668, !alias.scope !2566, !noalias !2565
  store ptr null, ptr %i.bh, align 8, !tbaa !667, !alias.scope !2566, !noalias !2565
  store <2 x ptr> %i.bi, ptr %.012.i.i.i18, align 8, !tbaa !668, !alias.scope !2565, !noalias !2566
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !902, !alias.scope !2566, !noalias !2565
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bj, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2562

_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block84, %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.am, %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bd, %middle.block84 ], [ %i.bk, %.lr.ph.i.i.i17 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1518
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #33
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !812
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !811
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !1518
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb12FileMetaDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(417) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !967  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !952    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775456
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb12FileMetaDataESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #35
  unreachable

_ZNKSt6vectorIN7rocksdb12FileMetaDataESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 424                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 21753235935978244)
  %i.l = select i1 %i.j, i64 21753235935978244, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 424                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN7rocksdb12FileMetaDataC2EOS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.q, ptr noundef nonnull align 8 dereferenceable(417) %2)
          to label %_ZNSt16allocator_traitsISaIN7rocksdb12FileMetaDataEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN7rocksdb12FileMetaDataEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7rocksdb12FileMetaDataESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7rocksdb12FileMetaDataES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN7rocksdb12FileMetaDataEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN7rocksdb12FileMetaDataEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN7rocksdb12FileMetaDataEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7rocksdb12FileMetaDataEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN7rocksdb12FileMetaDataEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7rocksdb12FileMetaDataEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN7rocksdb12FileMetaDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(417) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(417) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN7rocksdb12FileMetaDataEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7rocksdb12FileMetaDataEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 424 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 424 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7rocksdb12FileMetaDataES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2567

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #34 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12FileMetaDataEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %.05.i.i.i.i.i.i.i) #34
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 424 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12FileMetaDataEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN7rocksdb12FileMetaDataEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #35
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb12FileMetaDataEEvT_S3_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #37
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb12FileMetaDataEEvT_S3_.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i64
!2357 = !{!"_ZTSSt5tupleIJPN7rocksdb28FSWritableFileTracingWrapperESt14default_deleteIS1_EEE", !2356, i64 0}
!2358 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb28FSWritableFileTracingWrapperESt14default_deleteIS1_EE", !2357, i64 0}
!2359 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb28FSWritableFileTracingWrapperESt14default_deleteIS1_ELb1ELb1EE", !2358, i64 0}
!2360 = !{!"_ZTSSt10unique_ptrIN7rocksdb28FSWritableFileTracingWrapperESt14default_deleteIS1_EE", !2359, i64 0}
!2361 = !{!"_ZTSN7rocksdb17FSWritableFilePtrE", !141, i64 0, !2360, i64 16}
!2362 = !{!"_ZTSN7rocksdb10HistogramsE", !55, i64 0}
!2363 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb21FileChecksumGeneratorELb0EE", !1515, i64 0}
!2364 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb21FileChecksumGeneratorESt14default_deleteIS1_EEE", !2363, i64 0}
!2365 = !{!"_ZTSSt5tupleIJPN7rocksdb21FileChecksumGeneratorESt14default_deleteIS1_EEE", !2364, i64 0}
!2366 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb21FileChecksumGeneratorESt14default_deleteIS1_EE", !2365, i64 0}
!2367 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb21FileChecksumGeneratorESt14default_deleteIS1_ELb1ELb1EE", !2366, i64 0}
!2368 = !{!"_ZTSSt10unique_ptrIN7rocksdb21FileChecksumGeneratorESt14default_deleteIS1_EE", !2367, i64 0}
!2369 = !{!"_ZTSN7rocksdb18WritableFileWriterE", !63, i64 0, !2361, i64 32, !145, i64 56, !1514, i64 64, !62, i64 136, !174, i64 144, !174, i64 152, !62, i64 160, !74, i64 168, !177, i64 169, !62, i64 176, !62, i64 184, !97, i64 192, !105, i64 200, !2362, i64 208, !120, i64 216, !2368, i64 240, !74, i64 248, !74, i64 249, !56, i64 252, !74, i64 256, !136, i64 257}
!2370 = !{!2369, !145, i64 56}
!2371 = !{!205, !62, i64 32}
!2372 = !{!2369, !62, i64 136}
!2373 = !{!173, !62, i64 0}
!2374 = !{!2369, !62, i64 160}
!2375 = !{!2369, !74, i64 168}
!2376 = !{!2369, !62, i64 176}
!2377 = !{!205, !62, i64 8}
!2378 = !{!2369, !62, i64 184}
!2379 = !{!205, !97, i64 40}
!2380 = !{!2369, !97, i64 192}
!2381 = !{!2369, !105, i64 200}
!2382 = !{!2369, !2362, i64 208}
!2383 = !{!2369, !74, i64 249}
!2384 = !{!2369, !56, i64 252}
!2385 = !{!2369, !74, i64 256}
!2386 = !{!2369, !136, i64 257}
!2387 = !{!140, !139, i64 0}
!2388 = !{!"_ZTSN7rocksdb12TraceOptionsE", !62, i64 0, !62, i64 8, !62, i64 16, !74, i64 24}
!2389 = !{!"p1 _ZTSN7rocksdb13IOTraceWriterE", !59, i64 0}
!2390 = !{!"_ZTSSt13__atomic_baseIPN7rocksdb13IOTraceWriterEE", !2389, i64 0}
!2391 = !{!"_ZTSSt6atomicIPN7rocksdb13IOTraceWriterEE", !2390, i64 0}
!2392 = !{!"_ZTSN7rocksdb8IOTracerE", !2388, i64 0, !168, i64 32, !2391, i64 96, !74, i64 104}
!2393 = !{!2392, !74, i64 104}
!2394 = !{!690, !56, i64 184}
!2395 = !{!690, !74, i64 188}
!2396 = !{!690, !74, i64 189}
!2397 = distinct !{!2397, i1 false, !"_ZSt9make_pairIRiRKN7rocksdb11InternalKeyEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS6_INS7_IT0_E4typeEE6__typeEEOS8_OSD_"}
!2398 = distinct !{!2398, !2397, !"_ZSt9make_pairIRiRKN7rocksdb11InternalKeyEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS6_INS7_IT0_E4typeEE6__typeEEOS8_OSD_: argument 0"}
!2399 = !{!2398}
!2400 = !{!852, !851, i64 0}
!2401 = distinct !{!2401, !767}
!2402 = distinct !{!2402, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!2403 = distinct !{!2403, !2402, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!2404 = !{!2403}
!2405 = !{!1251, !62, i64 16}
!2406 = !{!1251, !62, i64 32}
!2407 = !{i64 0, i64 4, !669, i64 4, i64 4, !669, i64 8, i64 4, !669, i64 12, i64 4, !669, i64 16, i64 4, !669, i64 20, i64 4, !669, i64 24, i64 1, !87, i64 32, i64 8, !776, i64 40, i64 1, !87, i64 44, i64 4, !669, i64 48, i64 1, !87}
!2408 = !{!1251, !56, i64 40}
!2409 = distinct !{!2409, i1 false, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE5beginEv"}
!2410 = distinct !{!2410, !2409, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE5beginEv: argument 0"}
!2411 = distinct !{!2411, i1 false, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE3endEv"}
!2412 = distinct !{!2412, !2411, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE3endEv: argument 0"}
!2413 = distinct !{!2413, !767}
!2414 = !{!2410}
!2415 = !{!2412}
!2416 = distinct !{!2416, !767}
!2417 = distinct !{!2417, !767}
!2418 = distinct !{!2418, !767}
!2419 = distinct !{!2419, !767}
!2420 = distinct !{null, null, null}
!2421 = distinct !{!2421, i1 false, !"_ZN7rocksdb6Status18ShutdownInProgressENS0_7SubCodeE"}
!2422 = distinct !{!2422, !2421, !"_ZN7rocksdb6Status18ShutdownInProgressENS0_7SubCodeE: argument 0"}
!2423 = distinct !{!2423, i1 false, !"_ZN7rocksdb6Status7AbortedENS0_7SubCodeE"}
!2424 = distinct !{!2424, !2423, !"_ZN7rocksdb6Status7AbortedENS0_7SubCodeE: argument 0"}
!2425 = distinct !{!2425, i1 false, !"_ZNK7rocksdb12ErrorHandler10GetBGErrorEv"}
!2426 = distinct !{!2426, !2425, !"_ZNK7rocksdb12ErrorHandler10GetBGErrorEv: argument 0"}
!2427 = distinct !{!2427, i1 false, !"_ZN7rocksdb6Status8TimedOutENS0_7SubCodeE"}
!2428 = distinct !{!2428, !2427, !"_ZN7rocksdb6Status8TimedOutENS0_7SubCodeE: argument 0"}
!2429 = distinct !{!2429, i1 false, !"_ZNK7rocksdb12ErrorHandler10GetBGErrorEv"}
!2430 = distinct !{!2430, !2429, !"_ZNK7rocksdb12ErrorHandler10GetBGErrorEv: argument 0"}
!2431 = distinct !{!2431, !767}
!2432 = !{!"_ZTSN7rocksdb21WaitForCompactOptionsE", !74, i64 0, !74, i64 1, !74, i64 2, !74, i64 3, !206, i64 8}
!2433 = !{!2432, !74, i64 1}
!2434 = !{!2432, !74, i64 3}
!2435 = !{!463, !74, i64 1588}
!2436 = !{!206, !62, i64 0}
!2437 = !{!2422}
!2438 = !{!2432, !74, i64 0}
!2439 = !{!2424}
!2440 = !{!2432, !74, i64 2}
!2441 = !{!463, !56, i64 5896}
!2442 = !{!2426}
!2443 = !{!2428}
!2444 = !{!2430}
!2445 = distinct !{null}
!2446 = distinct !{!2446, !767}
!2447 = !{!650, !62, i64 0}
!2448 = distinct !{!2448, !767}
!2449 = distinct !{!2449, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb16MutableCFOptionsES1_SaIS1_EEvPT_PT0_RT1_"}
!2450 = distinct !{!2450, !2449, !"_ZSt19__relocate_object_aIN7rocksdb16MutableCFOptionsES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2451 = distinct !{!2451, !2449, !"_ZSt19__relocate_object_aIN7rocksdb16MutableCFOptionsES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2452 = distinct !{!2452, !767}
!2453 = !{!2450}
!2454 = !{!2451}
!2455 = !{!2450, !2451}
!2456 = !{!489, !488, i64 0}
!2457 = !{!536, !535, i64 0}
!2458 = !{!533, !532, i64 0}
!2459 = distinct !{!2459, !767}
!2460 = distinct !{!2460, !767}
!2461 = distinct !{!2461, !767}
!2462 = distinct !{!2462, !767}
!2463 = distinct !{!2463, !767}
!2464 = distinct !{!2464, !767}
!2465 = distinct !{null, null, null, null, null, null, null, null}
!2466 = distinct !{!2466, !767}
!2467 = !{!723, !722, i64 0}
!2468 = !{!723, !722, i64 8}
!2469 = !{!723, !722, i64 16}
!2470 = distinct !{!2470, i1 false, !"LVerDomain"}
!2471 = distinct !{!2471, !2470}
!2472 = distinct !{!2472, !2470}
!2473 = distinct !{!2473, !767, !964, !965}
!2474 = distinct !{!2474, !767, !964, !965}
!2475 = distinct !{!2475, !1164}
!2476 = distinct !{!2476, !767, !964}
!2477 = !{!2471}
!2478 = !{!2472}
!2479 = distinct !{!2479, !767}
!2480 = !{!1148, !1148, i64 0}
!2481 = !{!903, !903, i64 0}
!2482 = distinct !{!2482, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_"}
!2483 = distinct !{!2483, !2482, !"_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2484 = distinct !{!2484, !2482, !"_ZSt19__relocate_object_aIN7rocksdb19SuperVersionContextES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2485 = distinct !{!2485, i1 false, !"LVerDomain"}
!2486 = distinct !{!2486, !2485}
!2487 = distinct !{!2487, !2485}
!2488 = distinct !{!2488, !767, !964, !965}
!2489 = distinct !{!2489, !767, !964, !965}
!2490 = distinct !{!2490, !1164}
!2491 = distinct !{!2491, !767, !964}
!2492 = distinct !{!2492, !767}
!2493 = !{!2483}
!2494 = !{!2484}
!2495 = !{!2483, !2486}
!2496 = !{!2484, !2487}
!2497 = !{!2487}
!2498 = distinct !{!2498, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2499 = distinct !{!2499, !2498, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2500 = distinct !{!2500, !2498, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2501 = distinct !{!2501, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2502 = distinct !{!2502, !2501, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2503 = distinct !{!2503, !2501, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2504 = !{!2499}
!2505 = !{!2500}
!2506 = !{!2499, !2500}
!2507 = !{!2502}
!2508 = !{!2503}
!2509 = !{!2502, !2503}
!2510 = distinct !{null, null, null, null, null, null, null}
!2511 = distinct !{!2511, !767}
!2512 = distinct !{!2512, !767}
!2513 = !{!1270, !1269, i64 8}
!2514 = !{!1269, !1269, i64 0}
!2515 = !{!867, !867, i64 0}
!2516 = !{i64 0, i64 8, !2515, i64 8, i64 8, !2515}
!2517 = distinct !{!2517, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb15ManualFlushInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!2518 = distinct !{!2518, !2517, !"_ZSt19__relocate_object_aIN7rocksdb15ManualFlushInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2519 = distinct !{!2519, !2517, !"_ZSt19__relocate_object_aIN7rocksdb15ManualFlushInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2520 = distinct !{!2520, !767}
!2521 = distinct !{!2521, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb15ManualFlushInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!2522 = distinct !{!2522, !2521, !"_ZSt19__relocate_object_aIN7rocksdb15ManualFlushInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2523 = distinct !{!2523, !2521, !"_ZSt19__relocate_object_aIN7rocksdb15ManualFlushInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2524 = !{!2518}
!2525 = !{!2519}
!2526 = !{!2518, !2519}
!2527 = !{!2522}
!2528 = !{!2523}
!2529 = !{!2522, !2523}
!2530 = distinct !{!2530, !767}
!2531 = distinct !{!2531, !767}
!2532 = distinct !{!2532, i1 false, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!2533 = distinct !{!2533, !2532, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!2534 = distinct !{null, null, null}
!2535 = !{!1504, !1503, i64 0}
!2536 = !{!2533}
!2537 = !{!1514, !60, i64 64}
!2538 = !{!1514, !62, i64 56}
!2539 = !{!1514, !62, i64 48}
!2540 = distinct !{null, null, null, null, null, null, null}
!2541 = !{!1539, !216, i64 28}
!2542 = !{!1539, !74, i64 32}
!2543 = !{!"_ZTSSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EE", !145, i64 0, !68, i64 8}
!2544 = !{!2543, !145, i64 0}
!2545 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb14FSWritableFileESt14default_deleteIS1_EEE", !1492, i64 0}
!2546 = !{!"_ZTSSt5tupleIJPN7rocksdb14FSWritableFileESt14default_deleteIS1_EEE", !2545, i64 0}
!2547 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE", !2546, i64 0}
!2548 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb14FSWritableFileESt14default_deleteIS1_ELb1ELb1EE", !2547, i64 0}
!2549 = !{!"_ZTSSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE", !2548, i64 0}
!2550 = !{!"_ZTSN7rocksdb26FSWritableFileOwnerWrapperE", !1541, i64 0, !2549, i64 48}
!2551 = !{!"_ZTSN7rocksdb28FSWritableFileTracingWrapperE", !2550, i64 0, !141, i64 56, !145, i64 72, !63, i64 80}
!2552 = !{!2551, !145, i64 72}
!2553 = distinct !{!2553, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb13EventListenerEES3_SaIS3_EEvPT_PT0_RT1_"}
!2554 = distinct !{!2554, !2553, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb13EventListenerEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!2555 = distinct !{!2555, !2553, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb13EventListenerEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!2556 = distinct !{!2556, !767, !964, !965}
!2557 = distinct !{!2557, !767, !965, !964}
!2558 = distinct !{!2558, i1 false, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb13EventListenerEES3_SaIS3_EEvPT_PT0_RT1_"}
!2559 = distinct !{!2559, !2558, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb13EventListenerEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!2560 = distinct !{!2560, !2558, !"_ZSt19__relocate_object_aISt10shared_ptrIN7rocksdb13EventListenerEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!2561 = distinct !{!2561, !767, !964, !965}
!2562 = distinct !{!2562, !767, !964}
!2563 = !{!2554}
!2564 = !{!2555}
!2565 = !{!2559}
!2566 = !{!2560}
!2567 = distinct !{!2567, !767}
!2568 = distinct !{!2568, i1 false, !"_ZSt19__relocate_object_aISt4pairIiN7rocksdb11InternalKeyEES3_SaIS3_EEvPT_PT0_RT1_"}
!2569 = distinct !{!2569, !2568, !"_ZSt19__relocate_object_aISt4pairIiN7rocksdb11InternalKeyEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!2570 = distinct !{!2570, !2568, !"_ZSt19__relocate_object_aISt4pairIiN7rocksdb11InternalKeyEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!2571 = distinct !{!2571, !767}
!2572 = distinct !{!2572, i1 false, !"_ZSt19__relocate_object_aISt4pairIiN7rocksdb11InternalKeyEES3_SaIS3_EEvPT_PT0_RT1_"}
!2573 = distinct !{!2573, !2572, !"_ZSt19__relocate_object_aISt4pairIiN7rocksdb11InternalKeyEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!2574 = distinct !{!2574, !2572, !"_ZSt19__relocate_object_aISt4pairIiN7rocksdb11InternalKeyEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!2575 = !{!2569}
!2576 = !{!2570}
!2577 = !{!2569, !2570}
!2578 = !{!2573}
!2579 = !{!2574}
!2580 = !{!2573, !2574}
!2581 = distinct !{!2581, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2582 = distinct !{!2582, !2581, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2583 = distinct !{!2583, !2581, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2584 = distinct !{!2584, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!2585 = distinct !{!2585, !2584, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!2586 = distinct !{!2586, !2584, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!2587 = !{!2582}
!2588 = !{!2583}
!2589 = !{!2582, !2583}
!2590 = !{!2585}
!2591 = !{!2586}
!2592 = !{!2585, !2586}
!2593 = distinct !{!2593, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb20BlobFileAdditionInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!2594 = distinct !{!2594, !2593, !"_ZSt19__relocate_object_aIN7rocksdb20BlobFileAdditionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2595 = distinct !{!2595, !2593, !"_ZSt19__relocate_object_aIN7rocksdb20BlobFileAdditionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2596 = distinct !{!2596, !767}
!2597 = distinct !{!2597, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb20BlobFileAdditionInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!2598 = distinct !{!2598, !2597, !"_ZSt19__relocate_object_aIN7rocksdb20BlobFileAdditionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2599 = distinct !{!2599, !2597, !"_ZSt19__relocate_object_aIN7rocksdb20BlobFileAdditionInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2600 = !{!2594}
!2601 = !{!2595}
!2602 = !{!2594, !2595}
!2603 = !{!2598}
!2604 = !{!2599}
!2605 = !{!2598, !2599}
!2606 = distinct !{!2606, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb19BlobFileGarbageInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!2607 = distinct !{!2607, !2606, !"_ZSt19__relocate_object_aIN7rocksdb19BlobFileGarbageInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2608 = distinct !{!2608, !2606, !"_ZSt19__relocate_object_aIN7rocksdb19BlobFileGarbageInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2609 = distinct !{!2609, !767}
!2610 = distinct !{!2610, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb19BlobFileGarbageInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!2611 = distinct !{!2611, !2610, !"_ZSt19__relocate_object_aIN7rocksdb19BlobFileGarbageInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!2612 = distinct !{!2612, !2610, !"_ZSt19__relocate_object_aIN7rocksdb19BlobFileGarbageInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!2613 = !{!2607}
!2614 = !{!2608}
!2615 = !{!2607, !2608}
!2616 = !{!2611}
!2617 = !{!2612}
!2618 = !{!2611, !2612}
!2619 = distinct !{!2619, !767}
!2620 = !{!343, !340, i64 32}
!2621 = !{!342, !62, i64 8}
!2622 = !{!342, !340, i64 32}
!2623 = !{!342, !74, i64 64}
!2624 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev, null, null, null, null, null, null, null}
!2625 = distinct !{ptr @_ZN7rocksdb17FSWritableFilePtrD2Ev, null, null}
!2626 = distinct !{ptr @_ZN7rocksdb17FSWritableFilePtrD2Ev, ptr @_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2627 = !{!"_ZTSZN7rocksdb6DBImpl25FlushMemTableToOutputFileEPNS_16ColumnFamilyDataERKNS_16MutableCFOptionsEPbPNS_10JobContextENS_11FlushReasonEPNS_19SuperVersionContextEPNS_9LogBufferENS_3Env8PriorityEE3$_0", !969, i64 0, !330, i64 8}
!2628 = !{!2627, !969, i64 0}
!2629 = !{i64 0, i64 8, !974, i64 8, i64 8, !1168}
!2630 = distinct !{!2630, !767}
!2631 = !{!971, !969, i64 16}
!2632 = distinct !{!2632, i1 false, !"_ZSt19__relocate_object_aISt4pairIbN7rocksdb6StatusEES3_SaIS3_EEvPT_PT0_RT1_"}
!2633 = distinct !{!2633, !2632, !"_ZSt19__relocate_object_aISt4pairIbN7rocksdb6StatusEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!2634 = distinct !{!2634, !2632, !"_ZSt19__relocate_object_aISt4pairIbN7rocksdb6StatusEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!2635 = distinct !{!2635, !767}
!2636 = distinct !{!2636, i1 false, !"_ZSt19__relocate_object_aISt4pairIbN7rocksdb6StatusEES3_SaIS3_EEvPT_PT0_RT1_"}
!2637 = distinct !{!2637, !2636, !"_ZSt19__relocate_object_aISt4pairIbN7rocksdb6StatusEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!2638 = distinct !{!2638, !2636, !"_ZSt19__relocate_object_aISt4pairIbN7rocksdb6StatusEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!2639 = !{!2633}
!2640 = !{!2634}
!2641 = !{!2633, !2634}
!2642 = !{!2637}
!2643 = !{!2638}
!2644 = !{!2637, !2638}
!2645 = distinct !{!2645, !767}
!2646 = !{!990, !154, i64 48}
!2647 = distinct !{!2647, !767}
!2648 = !{!"_ZTSZN7rocksdb6DBImpl33AtomicFlushMemTablesToOutputFilesERKNS_10autovectorINS0_10BGFlushArgELm8EEEPbPNS_10JobContextEPNS_9LogBufferENS_3Env8PriorityEE3$_0", !495, i64 0, !1019, i64 8, !1021, i64 16}
!2649 = !{!2648, !495, i64 0}
!2650 = !{i64 4}
!2651 = !{!2648, !1019, i64 8}
!2652 = !{i64 0, i64 8, !1018, i64 8, i64 8, !1020, i64 16, i64 8, !1022}
!2653 = !{!"_ZTSZN7rocksdb6DBImpl17CommitTrivialMoveERNS_10CompactionERbE3$_0", !1221, i64 0, !969, i64 8}
!2654 = !{!2653, !1221, i64 0}
!2655 = !{i64 16}
!2656 = !{!2653, !969, i64 8}
!2657 = !{i64 0, i64 8, !1278, i64 8, i64 8, !974}
!2658 = distinct !{!2658, !767}
!2659 = distinct !{!2659, !767}
!2660 = !{!370, !154, i64 48}
!2661 = distinct !{!2661, !767}
!2662 = distinct !{!2662, !767}
!2663 = distinct !{!2663, !767}
!2664 = distinct !{!2664, !767}
!2665 = distinct !{!2665, !767}
!2666 = distinct !{!2666, !767}
!2667 = distinct !{!2667, !767}
!2668 = distinct !{!2668, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb6DBImpl12FlushRequestES2_SaIS2_EEvPT_PT0_RT1_"}
!2669 = distinct !{!2669, !2668, !"_ZSt19__relocate_object_aIN7rocksdb6DBImpl12FlushRequestES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!2670 = distinct !{!2670, !2668, !"_ZSt19__relocate_object_aIN7rocksdb6DBImpl12FlushRequestES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!2671 = distinct !{!2671, !767}
!2672 = distinct !{!2672, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb6DBImpl12FlushRequestES2_SaIS2_EEvPT_PT0_RT1_"}
!2673 = distinct !{!2673, !2672, !"_ZSt19__relocate_object_aIN7rocksdb6DBImpl12FlushRequestES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!2674 = distinct !{!2674, !2672, !"_ZSt19__relocate_object_aIN7rocksdb6DBImpl12FlushRequestES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!2675 = !{!2669}
!2676 = !{!2670}
!2677 = !{!2669, !2670}
!2678 = !{!2673}
!2679 = !{!2674}
!2680 = !{!2673, !2674}
!2681 = distinct !{!2681, !767}
!2682 = distinct !{!2682, !767}
!2683 = distinct !{!2683, !767}
!2684 = !{!1547, !1496, i64 0}
!2685 = distinct !{!2685, !767}
!2686 = distinct !{!2686, !767}
!2687 = distinct !{!2687, !767}
!2688 = distinct !{!2688, !767}
!2689 = !{!1555, !1461, i64 0}
!2690 = distinct !{!2690, !767}
!2691 = !{!368, !154, i64 48}
!2692 = !{!"_ZTSZN7rocksdb6DBImpl20BackgroundCompactionEPbPNS_10JobContextEPNS_9LogBufferEPNS0_19PrepickedCompactionENS_3Env8PriorityEE3$_0", !1487, i64 0, !969, i64 8}
!2693 = !{!2692, !1487, i64 0}
!2694 = !{!2692, !969, i64 8}
!2695 = distinct !{!2695, !767}
!2696 = !{!"_ZTSZN7rocksdb6DBImpl20BackgroundCompactionEPbPNS_10JobContextEPNS_9LogBufferEPNS0_19PrepickedCompactionENS_3Env8PriorityEE3$_1", !1487, i64 0, !969, i64 8}
!2697 = !{!2696, !1487, i64 0}
!2698 = !{!2696, !969, i64 8}
!2699 = distinct !{null}
!2700 = distinct !{null}
!2701 = !{!1527, !74, i64 5}
!2702 = !{!1097, !1091, i64 32}
!2703 = distinct !{!2703, i1 false, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE5beginEv"}
!2704 = distinct !{!2704, !2703, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE5beginEv: argument 0"}
!2705 = distinct !{!2705, i1 false, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE5beginEv"}
!2706 = distinct !{!2706, !2705, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE5beginEv: argument 0"}
!2707 = distinct !{!2707, i1 false, !"_ZSt13move_backwardISt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS4_PS4_ES7_ET0_T_S9_S8_"}
!2708 = distinct !{!2708, !2707, !"_ZSt13move_backwardISt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS4_PS4_ES7_ET0_T_S9_S8_: argument 0"}
!2709 = distinct !{!2709, i1 false, !"_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS4_PS4_ES7_ET1_T0_S9_S8_"}
!2710 = distinct !{!2710, !2709, !"_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS4_PS4_ES7_ET1_T0_S9_S8_: argument 0"}
!2711 = distinct !{!2711, i1 false, !"_ZSt23__copy_move_backward_a1ILb1EPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_S3_ESt15_Deque_iteratorIT3_RS7_PS7_ES6_IT0_T1_T2_ESE_SA_"}
!2712 = distinct !{!2712, !2711, !"_ZSt23__copy_move_backward_a1ILb1EPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_S3_ESt15_Deque_iteratorIT3_RS7_PS7_ES6_IT0_T1_T2_ESE_SA_: argument 0"}
!2713 = distinct !{!2713, i1 false, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE3endEv"}
!2714 = distinct !{!2714, !2713, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE3endEv: argument 0"}
!2715 = distinct !{!2715, i1 false, !"_ZSt4moveISt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS4_PS4_ES7_ET0_T_S9_S8_"}
!2716 = distinct !{!2716, !2715, !"_ZSt4moveISt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS4_PS4_ES7_ET0_T_S9_S8_: argument 0"}
!2717 = distinct !{!2717, i1 false, !"_ZSt13__copy_move_aILb1ESt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS4_PS4_ES7_ET1_T0_S9_S8_"}
!2718 = distinct !{!2718, !2717, !"_ZSt13__copy_move_aILb1ESt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS4_PS4_ES7_ET1_T0_S9_S8_: argument 0"}
!2719 = distinct !{!2719, i1 false, !"_ZSt14__copy_move_a1ILb1EPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_S3_ESt15_Deque_iteratorIT3_RS7_PS7_ES6_IT0_T1_T2_ESE_SA_"}
!2720 = distinct !{!2720, !2719, !"_ZSt14__copy_move_a1ILb1EPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_S3_ESt15_Deque_iteratorIT3_RS7_PS7_ES6_IT0_T1_T2_ESE_SA_: argument 0"}
!2721 = distinct !{!2721, i1 false, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE5beginEv"}
!2722 = distinct !{!2722, !2721, !"_ZNSt5dequeIPN7rocksdb6DBImpl21ManualCompactionStateESaIS3_EE5beginEv: argument 0"}
!2723 = distinct !{!2723, i1 false, !"_ZStplRKSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_El"}
!2724 = distinct !{!2724, !2723, !"_ZStplRKSt15_Deque_iteratorIPN7rocksdb6DBImpl21ManualCompactionStateERS3_PS3_El: argument 0"}
!2725 = !{!2704}
!2726 = !{!2706}
!2727 = !{!2708}
!2728 = !{!2710, !2708}
!2729 = !{!2712, !2710, !2708}
!2730 = !{!398, !396, i64 16}
!2731 = !{!398, !396, i64 32}
!2732 = !{!398, !396, i64 24}
!2733 = !{!2714}
!2734 = !{!2716}
!2735 = !{!2718, !2716}
!2736 = !{!2720, !2718, !2716}
!2737 = !{!398, !396, i64 56}
!2738 = !{!2722}
!2739 = !{!2724}
!2740 = distinct !{!2740, i1 false, !"_ZSt23__copy_move_backward_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
!2741 = distinct !{!2741, !2740, !"_ZSt23__copy_move_backward_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_: argument 0"}
!2742 = distinct !{!2742, !767}
!2743 = distinct !{!2743, i1 false, !"_ZSt23__copy_move_backward_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
!2744 = distinct !{!2744, !2743, !"_ZSt23__copy_move_backward_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_: argument 0"}
!2745 = distinct !{!2745, i1 false, !"_ZSt23__copy_move_backward_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
!2746 = distinct !{!2746, !2745, !"_ZSt23__copy_move_backward_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_: argument 0"}
!2747 = distinct !{!2747, !767}
!2748 = distinct !{!2748, i1 false, !"_ZSt23__copy_move_backward_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
!2749 = distinct !{!2749, !2748, !"_ZSt23__copy_move_backward_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_: argument 0"}
!2750 = !{!2741}
!2751 = !{!2744}
!2752 = !{!2746}
!2753 = !{!2749}
!2754 = distinct !{!2754, i1 false, !"_ZSt14__copy_move_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
!2755 = distinct !{!2755, !2754, !"_ZSt14__copy_move_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_: argument 0"}
!2756 = distinct !{!2756, !767}
!2757 = distinct !{!2757, i1 false, !"_ZSt14__copy_move_a1ILb1EPPN7rocksdb6DBImpl21ManualCompactionStateES3_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS9_PS9_EE6__typeES7_S7_SC_"}
end_hunk_1
