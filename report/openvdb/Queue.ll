Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Queue?download=true
inline.NumInlined: 1013
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE7excludeERNSG_14const_accessorE:.preheader
  store atomic ptr %i.az, ptr %i.ay monotonic, align 8
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.l:                                             ; preds = %._crit_edge
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !120
  store ptr %i.ba, ptr %.02441, align 8, !tbaa !120
  br label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i, %bb.g
  %i.bb = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i28.jt1 = icmp eq ptr %i.bb, null
  br i1 %.not.i28.jt1, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1, label %bb.m

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3: ; preds = %bb.f
  %i.bc = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i28.jt3 = icmp eq ptr %i.bc, null
  br i1 %.not.i28.jt3, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3, label %bb.n

_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2: ; preds = %bb.k, %bb.l
  %i.bd = atomicrmw sub ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i28.jt2 = icmp eq ptr %i.be, null
  br i1 %.not.i28.jt2, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2, label %bb.o

bb.m:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.bf = load i8, ptr %i.k, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.p, label %bb.s

bb.n:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.bh = load i8, ptr %i.k, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %bb.t

bb.o:                                             ; preds = %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  store ptr null, ptr %2, align 8, !tbaa !61
  %i.bj = load i8, ptr %i.k, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.r, label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.bl = atomicrmw and ptr %i.bb, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1

bb.q:                                             ; preds = %bb.n
  %i.bm = atomicrmw and ptr %i.bc, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3

bb.r:                                             ; preds = %bb.o
  %i.bn = atomicrmw and ptr %i.be, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2

bb.s:                                             ; preds = %bb.m
  %i.bo = atomicrmw sub ptr %i.bb, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1

bb.t:                                             ; preds = %bb.n
  %i.bp = atomicrmw sub ptr %i.bc, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3

bb.u:                                             ; preds = %bb.o
  %i.bq = atomicrmw sub ptr %i.be, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1: ; preds = %bb.s, %bb.p, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt3: ; preds = %bb.t, %bb.q, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.a

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2: ; preds = %bb.u, %bb.r, %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.br = load i8, ptr %i.j, align 8, !tbaa !62, !range !69, !noundef !70
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.v, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2
  store i8 1, ptr %i.j, align 8, !tbaa !62
  %i.bt = load ptr, ptr %1, align 8, !tbaa !61
  %i.bu = call noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt2
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !65
  %.not.i32 = icmp eq ptr %i.bv, null
  br i1 %.not.i32, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.bx = load i8, ptr %i.j, align 8, !tbaa !62, !range !69, !noundef !70
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = atomicrmw and ptr %i.bw, i64 -4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33

bb.y:                                             ; preds = %bb.w
  %i.ca = atomicrmw sub ptr %i.bw, i64 4 seq_cst, align 8 ; 0 uses
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33: ; preds = %bb.y, %bb.x
  store ptr null, ptr %i.a, align 8, !tbaa !65
  br label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34: ; preds = %bb.v, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE7releaseEv.exit.i33
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.b)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34
  %.2 = phi i1 [ true, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE14const_accessor7releaseEv.exit34 ], [ false, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit30.jt1 ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvjN7openvdb5v13_02io5Queue6StatusEESt5_BindIFMNS3_4ImplEFvjS4_EPS7_St12_PlaceholderILi1EESB_ILi2EEEEE9_M_invokeERKSt9_Any_dataOjOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !77 ; 3 uses
  %.elt4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack5.i.i.i.i.i.i = load i64, ptr %.elt4.i.i.i.i.i.i, align 8, !tbaa !77
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack5.i.i.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !70
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS4_6StatusEEPS5_St12_PlaceholderILi1EESA_ILi2EEEEJjS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS4_6StatusEEPS5_St12_PlaceholderILi1EESA_ILi2EEEEJjS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS4_6StatusEEPS5_St12_PlaceholderILi1EESA_ILi2EEEEJjS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.l = load i32, ptr %1, align 4, !tbaa !56
  %i.m = load i32, ptr %2, align 4, !tbaa !111
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(688) %i.d, i32 noundef %i.l, i32 noundef %i.m), !inline_history !186
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvjN7openvdb5v13_02io5Queue6StatusEESt5_BindIFMNS3_4ImplEFvjS4_EPS7_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS3_6StatusEEPS4_St12_PlaceholderILi1EES9_ILi2EEEE, ptr %0, align 8, !tbaa !188
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !104
  store ptr %i.a, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !104
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #30
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_02io5Queue4ImplEFvjNS5_6StatusEEPS6_St12_PlaceholderILi1EESB_ILi2EEEEE10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE6lookupILb1EjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEEbRKT0_SS_PNSG_14const_accessorEbT1_SJ_(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %7 = alloca %"class.tbb::detail::d2::concurrent_hash_map<unsigned int, openvdb::v13_0::io::Queue::Status>::bucket_accessor", align 8 ; 20 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !56
  %i.b = zext i32 %i.a to i64                     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not52 = icmp eq ptr %3, null
  %i.i = zext i1 %4 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2
  %.080 = phi i64 [ %.4.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %i.d, %.preheader ] ; 5 uses
  %.044 = phi ptr [ %.3.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ %6, %.preheader ] ; 4 uses
  %.039 = phi i64 [ %.241.jt2, %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit.jt2 ], [ 0, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.k = and i64 %.080, %i.b
  call void @_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE15bucket_accessorC2EPSG_mb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %0, i64 noundef %i.k, i1 noundef zeroext false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8 ; 3 uses
  %i.o = icmp ugt ptr %i.n, inttoptr (i64 63 to ptr)
  br i1 %i.o, label %.lr.ph.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = load i32, ptr %1, align 4, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.07.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.t, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %.07.i, align 8, !tbaa !120 ; 3 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 63 to ptr)
  br i1 %i.u, label %bb.b, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit, !llvm.loop !6

_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit: ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not, label %bb.d, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.d:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit
  %.not51 = icmp eq ptr %.044, null
  br i1 %.not51, label %bb.e, label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(570) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2)
          to label %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit unwind label %.loopexit.split-lp, !inline_history !189

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.w = load ptr, ptr %7, align 8, !tbaa !61     ; 3 uses
  %.not.i74 = icmp eq ptr %i.w, null
  br i1 %.not.i74, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEED2Ev.exit75, label %bb.av

_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit: ; preds = %bb.e, %bb.d
  %.145 = phi ptr [ %.044, %bb.d ], [ %i.v, %bb.e ] ; 8 uses
  %i.x = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.lr.ph

bb.g:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59
  br i1 %9, label %.critedge, label %.lr.ph, !llvm.loop !190

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit, %bb.g
  store i8 1, ptr %i.f, align 8, !tbaa !62
  %i.z = load ptr, ptr %7, align 8, !tbaa !61
  %i.aa = invoke noundef zeroext i1 @_ZN3tbb6detail2d113spin_rw_mutex7upgradeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit unwind label %.loopexit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit: ; preds = %.lr.ph
  br i1 %i.aa, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 3 uses
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 63 to ptr)
  br i1 %i.ae, label %.lr.ph.i57, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59

.lr.ph.i57:                                       ; preds = %bb.h
  %i.af = load i32, ptr %1, align 4, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i57
  %.07.i58 = phi ptr [ %i.ad, %.lr.ph.i57 ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i58, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %.07.i58, align 8, !tbaa !120 ; 3 uses
  %i.ak = icmp ugt ptr %i.aj, inttoptr (i64 63 to ptr)
  br i1 %i.ak, label %bb.i, label %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59, !llvm.loop !6

_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59: ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i56 = phi ptr [ %i.ad, %bb.h ], [ %.07.i58, %bb.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.al = icmp ugt ptr %.0.lcssa.i56, inttoptr (i64 63 to ptr)
  %8 = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %9 = trunc nuw i8 %8 to i1                      ; 2 uses
  br i1 %i.al, label %bb.k, label %bb.g, !llvm.loop !190

bb.k:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit59
  br i1 %9, label %bb.l, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %7, align 8, !tbaa !61
  %i.an = atomicrmw add ptr %i.am, i64 3 seq_cst, align 8 ; 0 uses
  store i8 0, ptr %i.f, align 8, !tbaa !62
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

.critedge:                                        ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE17upgrade_to_writerEv.exit, %bb.g, %_ZN3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE20allocate_node_helperIjPFPNSG_4nodeERNSB_INS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketEEERSD_PKS7_EEESJ_RKT_SS_T0_St17integral_constantIbLb1EE.exit
  %i.ao = load atomic i64, ptr %i.c acquire, align 8 ; 5 uses
  %.not.i = icmp eq i64 %.080, %i.ao
  br i1 %.not.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ap = xor i64 %i.ao, %.080
  %i.aq = and i64 %i.ap, %i.b
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = add i64 %.080, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.012.i.i = phi i64 [ %i.ar, %bb.n ], [ %i.at, %bb.o ] ; 2 uses
  %i.as = and i64 %.012.i.i, %i.b
  %.not13.i.i = icmp eq i64 %i.as, 0
  %i.at = shl i64 %.012.i.i, 1                    ; 2 uses
  br i1 %.not13.i.i, label %bb.o, label %bb.p, !llvm.loop !7

bb.p:                                             ; preds = %bb.o
  %i.au = add i64 %i.at, 4294967295
  %i.av = and i64 %i.au, %i.b                     ; 2 uses
  %i.aw = or i64 %i.av, 1
  %i.ax = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 true) ; 2 uses
  %i.ay = xor i64 %i.ax, 63
  %i.az = lshr exact i64 -9223372036854775808, %i.ax
  %i.ba = and i64 %i.az, 9223372036854775806
  %i.bb = sub nsw i64 %i.av, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ay
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load atomic ptr, ptr %i.bf acquire, align 8
  %i.bh = icmp eq ptr %i.bg, inttoptr (i64 3 to ptr)
  br i1 %i.bh, label %bb.q, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt2

bb.q:                                             ; preds = %bb.m, %bb.p, %.critedge
  %.5.ph = phi i64 [ %.080, %.critedge ], [ %i.ao, %bb.p ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.bj = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %i.bk = add i64 %i.bj, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bm = load atomic ptr, ptr %i.bl monotonic, align 8
  store ptr %i.bm, ptr %.145, align 8, !tbaa !120
  store atomic ptr %.145, ptr %i.bl monotonic, align 8
  %.not.i65 = icmp ult i64 %i.bk, %.5.ph
  br i1 %.not.i65, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = add i64 %.5.ph, 1
  %i.bo = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = xor i64 %i.bo, 63                       ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bp ; 2 uses
  %i.br = load atomic ptr, ptr %i.bq acquire, align 8
  %.not12.i = icmp eq ptr %i.br, null
  br i1 %.not12.i, label %bb.s, label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bs = cmpxchg ptr %i.bq, ptr null, ptr inttoptr (i64 2 to ptr) seq_cst seq_cst, align 8
  %i.bt = extractvalue { ptr, i1 } %i.bs, 1
  %spec.select.i = select i1 %i.bt, i64 %i.bp, i64 0
  br label %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit

_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit: ; preds = %bb.b, %bb.s, %bb.r, %bb.q, %bb.k, %bb.l, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit
  %.246 = phi ptr [ %.145, %bb.l ], [ null, %bb.s ], [ %.145, %bb.k ], [ %.044, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ null, %bb.q ], [ null, %bb.r ], [ %.044, %bb.b ] ; 3 uses
  %.042 = phi i1 [ false, %bb.l ], [ true, %bb.s ], [ false, %bb.k ], [ false, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.b ]
  %.140 = phi i64 [ %.039, %bb.l ], [ %spec.select.i, %bb.s ], [ %.039, %bb.k ], [ %.039, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ 0, %bb.q ], [ 0, %bb.r ], [ %.039, %bb.b ] ; 8 uses
  %.138 = phi ptr [ %.0.lcssa.i56, %bb.l ], [ %.145, %bb.s ], [ %.0.lcssa.i56, %bb.k ], [ %.0.lcssa.i, %_ZNK3tbb6detail2d219concurrent_hash_mapIjN7openvdb5v13_02io5Queue6StatusENS0_2d116tbb_hash_compareIjEENS8_13tbb_allocatorISt4pairIKjS7_EEEE13search_bucketIjEEPNSG_4nodeERKT_PNS1_13hash_map_baseISF_NS8_13spin_rw_mutexEE6bucketE.exit ], [ %.145, %bb.q ], [ %.145, %bb.r ], [ %.07.i, %bb.b ] ; 2 uses
  br i1 %.not52, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt6, label %bb.t

bb.t:                                             ; preds = %_ZN3tbb6detail2d114rw_scoped_lockINS1_13spin_rw_mutexEE19downgrade_to_readerEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.138, i64 8 ; 9 uses
  %i.bv = load atomic i64, ptr %i.bu monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = and i64 %i.bv, -3
  %.not.i.i66 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i66, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bx = and i64 %i.bv, 3
  %.not.i7.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.by = atomicrmw add ptr %i.bu, i64 4 seq_cst, align 8
  %i.bz = and i64 %i.by, 1
  %.not5.not.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not5.not.i.i, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = atomicrmw sub ptr %i.bu, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.y

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i: ; preds = %bb.u
  %i.cb = cmpxchg ptr %i.bu, i64 %i.bv, i64 1 seq_cst seq_cst, align 8
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.y

bb.y:                                             ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i, %bb.u, %bb.v, %bb.x
  call void @llvm.x86.sse2.pause()
  br label %bb.z

bb.z:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, %bb.y
  %.sroa.0.0 = phi i32 [ 2, %bb.y ], [ %i.cr, %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit ] ; 7 uses
  %i.cd = load atomic i64, ptr %i.bu monotonic, align 8 ; 3 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = and i64 %i.cd, -3
  %.not.i.i70 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i70, label %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cf = and i64 %i.cd, 3
  %.not.i7.i67 = icmp eq i64 %i.cf, 0
  br i1 %.not.i7.i67, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cg = atomicrmw add ptr %i.bu, i64 4 seq_cst, align 8
  %i.ch = and i64 %i.cg, 1
  %.not5.not.i.i68 = icmp eq i64 %i.ch, 0
  br i1 %.not5.not.i.i68, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = atomicrmw sub ptr %i.bu, i64 4 seq_cst, align 8 ; 0 uses
  br label %bb.ae

_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71: ; preds = %bb.aa
  %i.cj = cmpxchg ptr %i.bu, i64 %i.cd, i64 1 seq_cst seq_cst, align 8
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %_ZNK3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKjN7openvdb5v13_02io5Queue6StatusEEEENS3_13spin_rw_mutexEE15check_mask_raceEmRm.exit.jt0, label %bb.ae

bb.ae:                                            ; preds = %_ZN3tbb6detail2d113spin_rw_mutex8try_lockEv.exit.i71, %bb.aa, %bb.ab, %bb.ad
  %i.cl = icmp sgt i32 %.sroa.0.0, 0
  br i1 %i.cl, label %.lr.ph.i.i.preheader, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ae
  %xtraiter = and i32 %.sroa.0.0, 6               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i32 [ %i.cm, %.lr.ph.i.i.prol ], [ %.sroa.0.0, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cm = add nsw i32 %.01.i.i.prol, -1           ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !191

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.01.i.i.unr = phi i32 [ %.sroa.0.0, %.lr.ph.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.prol ]
  %i.cn = icmp ult i32 %.sroa.0.0, 8
  br i1 %i.cn, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i32 [ %i.co, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.co = add nsw i32 %.01.i.i, -8
  call void @llvm.x86.sse2.pause()
  %i.cp = icmp sgt i32 %.01.i.i, 8
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i, !llvm.loop !5

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i:       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %i.cq = icmp samesign ult i32 %.sroa.0.0, 16
  br i1 %i.cq, label %_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit, label %bb.af

_ZN3tbb6detail2d014atomic_backoff13bounded_pauseEv.exit: ; preds = %bb.ae, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cr = shl i32 %.sroa.0.0, 1
  br label %bb.z, !llvm.loop !192

bb.af:                                            ; preds = %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i
  %i.cs = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !61
  %i.ct = load i8, ptr %i.f, align 8, !tbaa !62, !range !69, !noundef !70
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cv = atomicrmw and ptr %i.cs, i64 -4 seq_cst, align 8 ; 0 uses
  br label %bb.ai

end_hunk_0
