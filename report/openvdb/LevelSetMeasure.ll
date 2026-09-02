Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetMeasure?download=true
inline.NumInlined: 4217
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN7openvdb5v13_04tree10LeafBufferIfLj3EEaSERKS3_:bb.a

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load atomic i32, ptr %i.d seq_cst, align 8
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE10deallocateEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE10deallocateEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load atomic i32, ptr %i.a seq_cst, align 8
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %bb.g, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE10deallocateEv.exit

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %0, align 8, !tbaa !121
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE10deallocateEv.exit

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE10deallocateEv.exit: ; preds = %bb.i, %bb.f, %bb.e, %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j seq_cst, align 8
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE10deallocateEv.exit
  %i.l = load atomic i32, ptr %i.j acquire, align 8
  store atomic i32 %i.l, ptr %i.a release, align 8
  %i.m = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !121    ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !341  ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !440
  store <2 x ptr> %i.s, ptr %i.o, align 8, !tbaa !440
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load i32, ptr %i.t, align 4, !tbaa !226
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !226
  br label %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i: ; preds = %bb.m, %bb.l, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !341 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !440
  store <2 x ptr> %i.ac, ptr %i.y, align 8, !tbaa !440
  %.not.i.i.i4.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i4.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoC2ERKS4_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i.i5.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i5.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !226
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !226
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoC2ERKS4_.exit

bb.p:                                             ; preds = %bb.n
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoC2ERKS4_.exit

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoC2ERKS4_.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i, %bb.o, %bb.p
  store ptr %i.m, ptr %0, align 8, !tbaa !121
  br label %.loopexit

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE10deallocateEv.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !121   ; 2 uses
  %.not14 = icmp eq ptr %i.ai, null
  br i1 %.not14, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr %0, align 8, !tbaa !121   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.s, label %vector.memcheck

bb.s:                                             ; preds = %bb.r
  %i.al = tail call noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !121
  %.pre = load ptr, ptr %1, align 8, !tbaa !121
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.s, %bb.r
  %i.am = phi ptr [ %i.ai, %bb.r ], [ %.pre, %bb.s ] ; 4 uses
  %i.an = phi ptr [ %i.aj, %bb.r ], [ %i.al, %bb.s ] ; 4 uses
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %diff.check = icmp ugt i64 %i.aq, -32
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ar = shl nuw nsw i64 %index, 2               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ar ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.an, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !225
  %wide.load29 = load <4 x float>, ptr %i.as, align 4, !tbaa !225
  %i.at = getelementptr i8, ptr %next.gep28, i64 16
  store <4 x float> %wide.load, ptr %next.gep28, align 4, !tbaa !225
  store <4 x float> %wide.load29, ptr %i.at, align 4, !tbaa !225
  %index.next = shl i64 %index, 2
  %i.au = or disjoint i64 %index.next, 32         ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.am, i64 %i.au ; 2 uses
  %next.gep28.1 = getelementptr i8, ptr %i.an, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep.1, i64 16
  %wide.load.1 = load <4 x float>, ptr %next.gep.1, align 4, !tbaa !225
  %wide.load29.1 = load <4 x float>, ptr %i.av, align 4, !tbaa !225
  %i.aw = getelementptr i8, ptr %next.gep28.1, i64 16
  store <4 x float> %wide.load.1, ptr %next.gep28.1, align 4, !tbaa !225
  store <4 x float> %wide.load29.1, ptr %i.aw, align 4, !tbaa !225
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ax = icmp eq i64 %index.next.1, 512
  br i1 %i.ax, label %.loopexit, label %vector.body, !llvm.loop !774

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.021 = phi i32 [ %i.bt, %scalar.ph ], [ 512, %vector.memcheck ]
  %.01020 = phi ptr [ %i.bu, %scalar.ph ], [ %i.am, %vector.memcheck ] ; 9 uses
  %.01119 = phi ptr [ %i.bw, %scalar.ph ], [ %i.an, %vector.memcheck ] ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01020, i64 4
  %i.az = load float, ptr %.01020, align 4, !tbaa !225
  %i.ba = getelementptr inbounds nuw i8, ptr %.01119, i64 4
  store float %i.az, ptr %.01119, align 4, !tbaa !225
  %i.bb = getelementptr inbounds nuw i8, ptr %.01020, i64 8
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !225
  %i.bd = getelementptr inbounds nuw i8, ptr %.01119, i64 8
  store float %i.bc, ptr %i.ba, align 4, !tbaa !225
  %i.be = getelementptr inbounds nuw i8, ptr %.01020, i64 12
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !225
  %i.bg = getelementptr inbounds nuw i8, ptr %.01119, i64 12
  store float %i.bf, ptr %i.bd, align 4, !tbaa !225
  %i.bh = getelementptr inbounds nuw i8, ptr %.01020, i64 16
  %i.bi = load float, ptr %i.be, align 4, !tbaa !225
  %i.bj = getelementptr inbounds nuw i8, ptr %.01119, i64 16
  store float %i.bi, ptr %i.bg, align 4, !tbaa !225
  %i.bk = getelementptr inbounds nuw i8, ptr %.01020, i64 20
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !225
  %i.bm = getelementptr inbounds nuw i8, ptr %.01119, i64 20
  store float %i.bl, ptr %i.bj, align 4, !tbaa !225
  %i.bn = getelementptr inbounds nuw i8, ptr %.01020, i64 24
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !225
  %i.bp = getelementptr inbounds nuw i8, ptr %.01119, i64 24
  store float %i.bo, ptr %i.bm, align 4, !tbaa !225
  %i.bq = getelementptr inbounds nuw i8, ptr %.01020, i64 28
  %i.br = load float, ptr %i.bn, align 4, !tbaa !225
  %i.bs = getelementptr inbounds nuw i8, ptr %.01119, i64 28
  store float %i.br, ptr %i.bp, align 4, !tbaa !225
  %i.bt = add nsw i32 %.021, -8                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01020, i64 32
  %i.bv = load float, ptr %i.bq, align 4, !tbaa !225
  %i.bw = getelementptr inbounds nuw i8, ptr %.01119, i64 32
  store float %i.bv, ptr %i.bs, align 4, !tbaa !225
  %.not15.7 = icmp eq i32 %i.bt, 0
  br i1 %.not15.7, label %.loopexit, label %scalar.ph, !llvm.loop !775

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoC2ERKS4_.exit, %bb.q, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEESt5_BindIFMSE_FvSM_ESt12_PlaceholderILi1EESR_ILi2EEEEE9_M_invokeERKSt9_Any_dataOSF_SM_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !438    ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !150
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !121 ; 3 uses
  %.elt3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack4.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i, align 8, !tbaa !121
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.unpack4.i.i.i.i.i.i ; 2 uses
  %3 = trunc i64 %.unpack.i.i.i.i.i.i to i1
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr i8, ptr %i.d, i64 %.unpack.i.i.i.i.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load ptr, ptr %i.f, align 8, !nosanitize !76
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESP_ILi2EEEEJPSF_SM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESX_E4typeEOSY_DpOSZ_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESP_ILi2EEEEJPSF_SM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESX_E4typeEOSY_DpOSZ_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESP_ILi2EEEEJPSF_SM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESX_E4typeEOSY_DpOSZ_.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !776
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEESt5_BindIFMSE_FvSM_ESt12_PlaceholderILi1EESR_ILi2EEEEE10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESO_ILi2EEEE, ptr %0, align 8, !tbaa !442
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !438
  store ptr %i.a, ptr %0, align 8, !tbaa !438
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !438
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !438
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !438    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #24
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFvPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEEEclESF_SM_.exit

_ZNKSt8functionIFvPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEEEclESF_SM_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !150
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !778
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !120
  store i8 0, ptr %i.g, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.48, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #21 ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !122    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !121
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.q, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.p, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.s = call ptr @__cxa_begin_catch(ptr %.1) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.t, align 8, !tbaa !103
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #25
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !122    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.k
  %i.x = load i64, ptr %i.g, align 8, !tbaa !121
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.u

bb.l:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSJ_RSL_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %5 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !368
  %i.c = load i64, ptr %0, align 8, !tbaa !367
  %.not = icmp ult i64 %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !394
  %i.d = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 256) ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.d, align 64, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !395
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  call void @_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !444
  %i.i = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_02io20readCompressedValuesIfNS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b:bb.a

bb.t:                                             ; preds = %bb.q
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.u:                                             ; preds = %.invoke, %bb.t, %bb.n
  %i.bi = load ptr, ptr %0, align 8, !tbaa !103
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  %i.bm = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bl)
          to label %bb.v unwind label %bb.x       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !225
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.y:                                             ; preds = %bb.w, %bb.v
  %.0146 = phi float [ 0.000000e+00, %bb.v ], [ %i.bn, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store float %.0146, ptr %i.c, align 4, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.bp = load i8, ptr %i.b, align 1, !tbaa !121  ; 3 uses
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %.thread179, label %bb.z

.thread179:                                       ; preds = %bb.y
  store float %.0146, ptr %i.d, align 4, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !229
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.br = fneg float %.0146
  store float %i.br, ptr %i.d, align 4, !tbaa !225
  switch i8 %i.bp, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.t, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread147 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread148, %bb.ad, %bb.ab
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ad:                                            ; preds = %bb.aa
  %i.bu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !121  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 5
  br i1 %i.bw, label %bb.af, label %.thread181

.thread147:                                       ; preds = %bb.ab
  %i.bx = load i8, ptr %i.b, align 1, !tbaa !121  ; 2 uses
  %i.by = icmp eq i8 %i.bx, 5
  br i1 %i.by, label %.thread148, label %bb.ag

.thread148:                                       ; preds = %.thread147
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 4, i32 noundef 1)
          to label %.thread148._crit_edge unwind label %bb.ac ; 0 uses

.thread148._crit_edge:                            ; preds = %.thread148
  %.pre162 = load i8, ptr %i.b, align 1, !tbaa !121
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ca = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %.thread149 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread148._crit_edge, %bb.z, %.thread147
  %i.cb = phi i8 [ %.pre162, %.thread148._crit_edge ], [ %i.bx, %.thread147 ], [ %i.bp, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !229
  %i.cc = add i8 %i.cb, -3
  %or.cond13 = icmp ult i8 %i.cc, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread181:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !229
  %i.cd = add i8 %i.bv, -3
  %or.cond13182 = icmp ult i8 %i.cd, 3
  br i1 %or.cond13182, label %.thread151, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread149:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !229
  %i.ce = load i8, ptr %i.b, align 1, !tbaa !121
  %i.cf = add i8 %i.ce, -3
  %or.cond13150 = icmp ult i8 %i.cf, 3
  br i1 %or.cond13150, label %.thread151, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.t, label %.thread151, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 64, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread151, %bb.ai
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

.thread151:                                       ; preds = %.thread181, %.thread149, %bb.ah
  %i.ci = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %9, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %.thread181, %.thread179, %.thread151, %.thread149, %bb.ai, %bb.ag
  %i.cj = load i8, ptr %i.b, align 1
  %i.ck = icmp ne i8 %i.cj, 6
  %or.cond16 = select i1 %i.s, i1 %i.ck, i1 false
  br i1 %or.cond16, label %bb.ak, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit

bb.ak:                                            ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.cl = load <8 x i64>, ptr %3, align 8, !tbaa !229
  %i.cm = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.cl)
  %i.cn = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.cm) ; 2 uses
  %i.co = trunc nuw nsw i64 %i.cn to i32          ; 3 uses
  br i1 %i.t, label %bb.al, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit

bb.al:                                            ; preds = %bb.ak
  %.not105 = icmp eq i32 %2, %i.co
  br i1 %.not105, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = shl nuw nsw i64 %i.cn, 2
  %i.cq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #26
          to label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit unwind label %.thread152 ; 2 uses

.thread152:                                       ; preds = %bb.am
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

bb.an:                                            ; preds = %.invoke185, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #24
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.am, %bb.ak, %bb.al, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.al ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.cq, %bb.am ] ; 4 uses
  %.085 = phi ptr [ %1, %bb.al ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.cq, %bb.am ] ; 3 uses
  %.084 = phi i32 [ %2, %bb.al ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ %i.co, %bb.ak ], [ %i.co, %bb.am ] ; 4 uses
  %i.ct = select i1 %i.t, ptr %.085, ptr null     ; 4 uses
  br i1 %4, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  invoke void @_ZN7openvdb5v13_02io10HalfReaderILb1EfE4readERSiPfjjPNS1_19DelayedLoadMetadataEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ct, i32 noundef %.084, i32 noundef %i.q, ptr noundef %i.ax, i64 noundef %.086)
          to label %_ZN7openvdb5v13_02io8readDataIfEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %i.cu = icmp eq ptr %i.ct, null                 ; 2 uses
  %i.cv = and i32 %i.q, 5
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = icmp ne ptr %i.ax, null
  %i.cy = and i1 %i.cw, %i.cx
  %or.cond3.i = and i1 %i.cu, %i.cy
  br i1 %or.cond3.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cz = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 noundef %.086)
          to label %.invoke185 unwind label %bb.an

bb.ar:                                            ; preds = %bb.ap
  %i.da = and i32 %i.q, 4
  %.not.i121 = icmp eq i32 %i.da, 0
  br i1 %.not.i121, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.db = zext i32 %.084 to i64
  %i.dc = shl nuw nsw i64 %i.db, 2
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ct, i64 noundef %i.dc)
          to label %_ZN7openvdb5v13_02io8readDataIfEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.at:                                            ; preds = %bb.ar
  %10 = trunc i32 %i.q to i1
  %i.dd = zext i32 %.084 to i64
  %i.de = shl nuw nsw i64 %i.dd, 2                ; 3 uses
  br i1 %10, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ct, i64 noundef %i.de)
          to label %_ZN7openvdb5v13_02io8readDataIfEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.at
  br i1 %i.cu, label %.invoke185, label %bb.aw

.invoke185:                                       ; preds = %bb.av, %bb.aq
  %i.df = phi i64 [ %i.cz, %bb.aq ], [ %i.de, %bb.av ]
  %i.dg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.df, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io8readDataIfEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.085, i64 noundef %i.de)
          to label %_ZN7openvdb5v13_02io8readDataIfEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

_ZN7openvdb5v13_02io8readDataIfEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke185, %bb.as, %bb.au, %bb.aw, %bb.ao
  %.not114 = icmp ne i32 %.084, %2
  %i.di = and i1 %i.s, %.not114
  %or.cond115.not = and i1 %i.t, %i.di
  br i1 %or.cond115.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io8readDataIfEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit
  %i.dj = load float, ptr %i.c, align 4
  %i.dk = load float, ptr %i.d, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %bb.ba
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ba ] ; 4 uses
  %.0160 = phi i32 [ 0, %.preheader ], [ %.1, %bb.ba ] ; 3 uses
  %i.dl = lshr i64 %indvars.iv, 6
  %i.dm = and i64 %i.dl, 67108863                 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !229
  %i.dp = and i64 %indvars.iv, 63
  %i.dq = shl nuw i64 1, %i.dp                    ; 2 uses
  %i.dr = and i64 %i.do, %i.dq
  %.not157 = icmp eq i64 %i.dr, 0
  br i1 %.not157, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ds = zext i32 %.0160 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.085, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !225
  %i.dv = add i32 %.0160, 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.dm
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !229
  %i.dy = and i64 %i.dx, %i.dq
  %.not158 = icmp eq i64 %i.dy, 0
  %i.dz = select i1 %.not158, float %i.dk, float %i.dj
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %.sink = phi float [ %i.dz, %bb.az ], [ %i.du, %bb.ay ]
  %.1 = phi i32 [ %.0160, %bb.az ], [ %i.dv, %bb.ay ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %.sink, ptr %i.ea, align 4, !tbaa !225
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.loopexit, label %bb.ax, !llvm.loop !809

.loopexit:                                        ; preds = %bb.ba, %_ZN7openvdb5v13_02io8readDataIfEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i128 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i128, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit130, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i129

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i129: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #24
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit130

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit130: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.not.i.i131 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i131, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit130
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.eb, align 8, !tbaa !343
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !344
  %i.eg = load ptr, ptr %i.aw, align 8, !tbaa !103
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #21, !inline_history !29
  %i.ej = load ptr, ptr %i.aw, align 8, !tbaa !103
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #21, !inline_history !29
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

bb.bd:                                            ; preds = %bb.bb
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i132 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i132, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !226
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

bb.bf:                                            ; preds = %bb.bd
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i134 = phi i32 [ %i.ee, %bb.be ], [ %i.eo, %bb.bf ]
  %i.ep = icmp eq i32 %.0.i.i.i.i134, 1
  br i1 %i.ep, label %bb.bg, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, !prof !345

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #21
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135: ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit130, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !341 ; 8 uses
  %.not.i.i136 = icmp eq ptr %i.er, null
  br i1 %.not.i.i136, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 4 uses
  %i.et = load atomic i64, ptr %i.es acquire, align 8 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 4294967297
  %i.ev = trunc i64 %i.et to i32                  ; 2 uses
  br i1 %i.eu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.es, align 8, !tbaa !343
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !344
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !103
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #21, !inline_history !30
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !103
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #21, !inline_history !30
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.fd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i137 = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i.i137, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fe = add nsw i32 %i.ev, -1
  store i32 %i.fe, ptr %i.es, align 8, !tbaa !226
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138

bb.bl:                                            ; preds = %bb.bj
  %i.ff = atomicrmw volatile add ptr %i.es, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i139 = phi i32 [ %i.ev, %bb.bk ], [ %i.ff, %bb.bl ]
  %i.fg = icmp eq i32 %.0.i.i.i.i139, 1
  br i1 %i.fg, label %bb.bm, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !345

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #21
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.aj, %.thread152, %bb.an, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %.pn106.pn = phi { ptr, i32 } [ %i.cs, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.ch, %bb.aj ], [ %i.cr, %.thread152 ], [ %i.cs, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, %bb.ac
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit ], [ %i.bt, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.x, %bb.bn, %bb.p
  %.pn106.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.p ], [ %.pn106.pn.pn, %bb.bn ], [ %i.bo, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.l, %bb.h
  %.pn106.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn, %bb.bo ], [ %i.ao, %bb.h ], [ %.pn.pn, %bb.l ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_07MetaMap11getMetadataINS0_2io19DelayedLoadMetadataEEENT_3PtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.d

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7openvdb5v13_08MetadataEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !819  ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !117, !alias.scope !820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ac, ptr noundef nonnull align 1 dereferenceable(13) @.str.51, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 13, ptr %i.ad, align 8, !tbaa !120, !alias.scope !820
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 29
  store i8 0, ptr %i.ae, align 1, !tbaa !121, !alias.scope !820
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !120 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 13
  %.pre = load ptr, ptr %3, align 8, !tbaa !122   ; 4 uses
  br i1 %i.ah, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %.pre, align 1
  %i.aj = load i64, ptr %i.ac, align 1
  %i.ak = xor i64 %i.ai, %i.aj
  %i.al = getelementptr i8, ptr %.pre, i64 5
  %i.am = getelementptr i8, ptr %i.ac, i64 5
  %i.an = load i64, ptr %i.al, align 1
  %i.ao = load i64, ptr %i.am, align 1
  %i.ap = xor i64 %i.an, %i.ao
  %i.aq = or i64 %i.ak, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  %i.au = phi i1 [ false, %bb.d ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %.pre, %i.av
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ax)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !121
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.au, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.ba = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !341, !noalias !823 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.x, align 8, !tbaa !440, !noalias !823
  store <2 x ptr> %i.bc, ptr %0, align 8, !tbaa !440, !alias.scope !823
  %.not.i.i.i.i.i6 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i6, label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121, !noalias !823
  %.not.i.i.i.i.i.i7 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !226, !noalias !823
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !226, !noalias !823
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4, !noalias !823 ; 0 uses
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZN7openvdb5v13_013StaticPtrCastINS0_2io19DelayedLoadMetadataENS0_8MetadataEEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.j, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN7openvdb5v13_08MetadataEESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !343
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !344
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !15
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !226
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !345

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef i64 @_ZNK7openvdb5v13_02io14StreamMetadata4leafEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io10HalfReaderILb1EfE4readERSiPfjjPNS1_19DelayedLoadMetadataEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %.noexc

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %3, 5
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp ne ptr %4, null
  %i.f = and i1 %i.e, %i.d
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %5)
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, i32 noundef 1) ; 0 uses
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %3, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = zext i32 %2 to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  tail call void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i64 noundef %i.k)
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.g:                                             ; preds = %bb.e
  %6 = trunc i32 %3 to i1
  %i.l = zext i32 %2 to i64
  %i.m = shl nuw nsw i64 %i.l, 1                  ; 2 uses
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i64 noundef %i.m)
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.i:                                             ; preds = %bb.g
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.m, i32 noundef 1) ; 0 uses
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

.noexc:                                           ; preds = %bb.b
  %i.o = zext i32 %2 to i64                       ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 1                  ; 6 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 9 uses
  store i16 0, ptr %i.q, align 2
  %i.r = getelementptr i8, ptr %i.q, i64 2        ; 3 uses
  %i.s = add nsw i64 %i.o, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.j, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 1   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !496
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %.noexc, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.r, %.noexc ]
  %i.v = and i32 %3, 4
  %.not.i20 = icmp eq i32 %i.v, 0
  br i1 %.not.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit30

bb.l:                                             ; preds = %bb.j
  %7 = trunc i32 %3 to i1
  br i1 %7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit30

bb.n:                                             ; preds = %bb.l
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit30 ; 0 uses

_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28: ; preds = %bb.k, %bb.m, %bb.n
  %i.x = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.y = ptrtoint ptr %i.q to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 1                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28, %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.av, %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i ], [ %i.aa, %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.au, %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i ], [ %1, %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.at, %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i ], [ %i.q, %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 ] ; 2 uses
  %i.ac = load i16, ptr %.0910.i.i.i.i.i, align 2, !tbaa !498 ; 2 uses
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 13
  %i.af = and i32 %i.ae, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i = sext i16 %i.ac to i32
  %i.ag = and i32 %.signext.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.ah = icmp samesign ugt i32 %i.af, 8388607
  br i1 %i.ah, label %bb.o, label %bb.r, !prof !391

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = or disjoint i32 %i.af, %i.ag            ; 2 uses
  %i.aj = icmp samesign ult i32 %i.af, 260046848
  br i1 %i.aj, label %bb.p, label %bb.q, !prof !391

bb.p:                                             ; preds = %bb.o
  %i.ak = add nuw nsw i32 %i.ai, 939524096
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.al = or i32 %i.ai, 2139095040
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.an = add nsw i32 %i.am, -8                   ; 2 uses
  %i.ao = shl i32 %i.af, %i.an
  %i.ap = or i32 %i.ag, %i.ao
  %i.aq = or i32 %i.ap, 947912704
  %i.ar = shl nuw nsw i32 %i.an, 23
  %i.as = sub nuw i32 %i.aq, %i.ar
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i

_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.p ], [ %i.al, %bb.q ], [ %i.as, %bb.s ], [ %i.ag, %bb.r ]
  store i32 %.sroa.0.0.i.i.i.i.i.i.i, ptr %.0811.i.i.i.i.i, align 4, !tbaa !225
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.av = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit, !llvm.loop !824

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit: ; preds = %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i, %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #24
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit30: ; preds = %bb.n, %bb.m, %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #24
  resume { ptr, i32 } %i.ax

_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.a, %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit
  ret void
}

declare noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #3

declare void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoEEclEPS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !341  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !343
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !344
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21, !inline_history !13
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21, !inline_history !13
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !226
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !345

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !341  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !343
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !344
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21, !inline_history !14
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21, !inline_history !14
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i2.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !226
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ai, label %bb.n, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit, !prof !345

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 48) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE8FileInfoD2Ev.exit, %bb.a
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d119parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_:bb.a

bb.h:                                             ; preds = %bb.g
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load double, ptr %.ptr.7, align 8, !tbaa !124 ; 2 uses
  %i.u = fcmp olt double %i.t, %i.r
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load double, ptr %scevgep, align 8, !tbaa !124
  %i.w = fcmp olt double %i.v, %i.t
  br i1 %i.w, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.x = ptrtoint ptr %1 to i64
  %i.y = ptrtoint ptr %0 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  store ptr %2, ptr %8, align 8, !tbaa !506
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !508
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %0, ptr %i.ac, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE3runERKS7_RKS9_RSB_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN3tbb6detail2d122do_parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_.exit unwind label %bb.k

_ZN3tbb6detail2d122do_parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.o

bb.k:                                             ; preds = %bb.m, %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIPdEENS1_23quick_sort_pretest_bodyIS4_St4lessIdEEEEEvRKT_RKT0_RKNS1_16auto_partitionerERNS1_18task_group_contextE.exit, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %.not.i.i = icmp ult ptr %i.ae, %1
  br i1 %.not.i.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i.i, label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIPdEENS1_23quick_sort_pretest_bodyIS4_St4lessIdEEEEEvRKT_RKT0_RKNS1_16auto_partitionerERNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !394
  %i.af = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 192)
          to label %.noexc unwind label %bb.n     ; 13 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIPdEENS1_23quick_sort_pretest_bodyIS4_St4lessIdEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.af, align 64, !tbaa !103
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store ptr %1, ptr %i.ah, align 64, !tbaa !106
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store ptr %i.ae, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !106
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !229
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store ptr %2, ptr %i.ai, align 8, !tbaa !506
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store ptr %11, ptr %.sroa.5.0..sroa_idx, align 32, !tbaa !510
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 104 ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !514
  %i.ak = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc20 unwind label %bb.n

.noexc20:                                         ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  store i32 0, ptr %i.an, align 8, !tbaa !407
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 124
  store i8 5, ptr %i.ao, align 4, !tbaa !408
  %i.ap = shl nsw i64 %i.am, 1
  %i.aq = and i64 %i.ap, 9223372036854775806
  store i64 %i.aq, ptr %i.al, align 16, !tbaa !409
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.as = load i64, ptr %6, align 8, !tbaa !410
  store i64 %i.as, ptr %i.ar, align 64, !tbaa !410
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr null, ptr %7, align 8, !tbaa !414
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 1, ptr %i.at, align 8, !tbaa !415
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 1, ptr %i.au, align 8, !tbaa !419
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 1, ptr %i.av, align 8, !tbaa !420
  store ptr %7, ptr %i.aj, align 8, !tbaa !514
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %.noexc21 unwind label %bb.n

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIPdEENS1_23quick_sort_pretest_bodyIS4_St4lessIdEEEEEvRKT_RKT0_RKNS1_16auto_partitionerERNS1_18task_group_contextE.exit

_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIPdEENS1_23quick_sort_pretest_bodyIS4_St4lessIdEEEEEvRKT_RKT0_RKNS1_16auto_partitionerERNS1_18task_group_contextE.exit: ; preds = %.noexc21, %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 15
  %i.ax = load atomic i8, ptr %i.aw monotonic, align 1
  %i.ay = icmp eq i8 %i.ax, -1
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %.0.i.i = select i1 %i.ay, ptr %i.ba, ptr %11
  %i.bb = invoke noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
          to label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit unwind label %bb.k

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIPdEENS1_23quick_sort_pretest_bodyIS4_St4lessIdEEEEEvRKT_RKT0_RKNS1_16auto_partitionerERNS1_18task_group_contextE.exit
  br i1 %i.bb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = ptrtoint ptr %0 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  store ptr %2, ptr %3, align 8, !tbaa !506
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !508
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.bh, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE3runERKS7_RKS9_RSB_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN3tbb6detail2d122do_parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_.exit24 unwind label %bb.k

_ZN3tbb6detail2d122do_parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_.exit24: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.o

bb.n:                                             ; preds = %.noexc20, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %_ZN3tbb6detail2d122do_parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_.exit24, %_ZN3tbb6detail2d122do_parallel_quick_sortIPdSt4lessIdEEEvT_S6_RKT0_.exit, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 15
  %i.bk = load atomic i8, ptr %i.bj monotonic, align 1
  %i.bl = icmp eq i8 %i.bk, -1
  br i1 %i.bl, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #27
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  ret void

bb.r:                                             ; preds = %bb.n, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.bi, %bb.n ]
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_.exit
  %i.g = icmp eq i64 %i.as, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50, !llvm.loop !841

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %.025.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i ], [ %.025.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !124 ; 2 uses
  %i.j = load double, ptr %0, align 8, !tbaa !124
  store double %i.j, ptr %i.h, align 8, !tbaa !124
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 4 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.s, align 8, !tbaa !124
  %i.w = load double, ptr %i.u, align 8, !tbaa !124
  %i.x = fcmp olt double %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.r ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !124
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !124
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !32

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %4 = trunc i64 %i.m to i1
  br i1 %4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = add nsw i64 %i.m, -2
  %i.ae = ashr exact i64 %i.ad, 1
  %i.af = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ae
  br i1 %i.af, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ag = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !124
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.aj, ptr %i.ak, align 8, !tbaa !124
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ah, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i89.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i89.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i89.i.i.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !124 ; 2 uses
  %i.an = fcmp olt double %i.am, %i.i
  br i1 %i.an, label %bb.e, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store double %i.am, ptr %i.ao, align 8, !tbaa !124
  %.not10.i.i.i = icmp eq i64 %.018.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !33

_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store double %i.i, ptr %i.ap, align 8, !tbaa !124
  %i.aq = icmp sgt i64 %i.l, 8
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_.exit, !llvm.loop !842

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %.0172449 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %.02548 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.ar = phi i64 [ %i.bq, %bb.b ], [ %i.c, %.lr.ph ]
  %i.as = add nsw i64 %.0172449, -1               ; 3 uses
  %i.at = lshr i64 %i.ar, 4
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.02548, i64 -8 ; 3 uses
  %i.aw = load double, ptr %i.e, align 8, !tbaa !124 ; 5 uses
  %i.ax = load double, ptr %i.au, align 8, !tbaa !124 ; 5 uses
  %i.ay = fcmp olt double %i.aw, %i.ax
  %i.az = load double, ptr %i.av, align 8, !tbaa !124 ; 6 uses
  br i1 %i.ay, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph50
  %i.ba = fcmp olt double %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = load double, ptr %0, align 8, !tbaa !124
  store double %i.ax, ptr %0, align 8, !tbaa !124
  store double %i.bb, ptr %i.au, align 8, !tbaa !124
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bc = fcmp olt double %i.aw, %i.az
  %i.bd = load double, ptr %0, align 8, !tbaa !124 ; 2 uses
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.az, ptr %0, align 8, !tbaa !124
  store double %i.bd, ptr %i.av, align 8, !tbaa !124
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store double %i.aw, ptr %0, align 8, !tbaa !124
  store double %i.bd, ptr %i.e, align 8, !tbaa !124
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph50
  %i.be = fcmp olt double %i.aw, %i.az
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load double, ptr %0, align 8, !tbaa !124
  store double %i.aw, ptr %0, align 8, !tbaa !124
  store double %i.bf, ptr %i.e, align 8, !tbaa !124
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bg = fcmp olt double %i.ax, %i.az
  %i.bh = load double, ptr %0, align 8, !tbaa !124 ; 2 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.az, ptr %0, align 8, !tbaa !124
  store double %i.bh, ptr %i.av, align 8, !tbaa !124
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store double %i.ax, ptr %0, align 8, !tbaa !124
  store double %i.bh, ptr %i.au, align 8, !tbaa !124
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i

_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02548, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bl, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i.preheader ]
  %i.bi = load double, ptr %0, align 8, !tbaa !124 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i ], [ %i.bl, %bb.p ] ; 8 uses
  %i.bj = load double, ptr %.1.i.i, align 8, !tbaa !124 ; 2 uses
  %i.bk = fcmp olt double %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bk, label %bb.p, label %.preheader.i.i, !llvm.loop !843

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bm = load double, ptr %.114.i.i, align 8, !tbaa !124 ; 2 uses
  %i.bn = fcmp olt double %i.bi, %i.bm
  br i1 %i.bn, label %.preheader.i.i, label %bb.q, !llvm.loop !844

bb.q:                                             ; preds = %.preheader.i.i
  %i.bo = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bo, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_.exit

bb.r:                                             ; preds = %bb.q
  store double %i.bm, ptr %.1.i.i, align 8, !tbaa !124
  store double %i.bj, ptr %.114.i.i, align 8, !tbaa !124
  br label %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_S7_T0_.exit.i, !llvm.loop !845

_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02548, i64 noundef %i.as)
  %i.bp = ptrtoint ptr %.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a                     ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 128
  br i1 %i.br, label %bb.b, label %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_.exit, !llvm.loop !841

_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEET_S7_S7_T0_.exit, %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_S7_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.020.i.idx = phi i64 [ 8, %bb.b ], [ %.020.i.add, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.e = load double, ptr %.020.i.ptr, align 8, !tbaa !124 ; 4 uses
  %i.f = load double, ptr %0, align 8, !tbaa !124 ; 2 uses
  %i.g = fcmp olt double %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !391

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store double %i.f, ptr %i.i, align 8, !tbaa !124
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load double, ptr %.pn19.i, align 8, !tbaa !124 ; 2 uses
  %i.k = fcmp olt double %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi double [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store double %i.l, ptr %.0912.i.i, align 8, !tbaa !124
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load double, ptr %.0.i.i, align 8, !tbaa !124 ; 2 uses
  %i.n = fcmp olt double %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i, !llvm.loop !846

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store double %i.e, ptr %.sink.i, align 8, !tbaa !124
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit, label %bb.c, !llvm.loop !847

_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not6.i = icmp eq ptr %i.o, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_.exit.i
  %.07.i = phi ptr [ %i.v, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_.exit.i ], [ %i.o, %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit ] ; 5 uses
  %i.p = load double, ptr %.07.i, align 8, !tbaa !124 ; 3 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.07.i, i64 -8 ; 2 uses
  %i.q = load double, ptr %.011.i.i, align 8, !tbaa !124 ; 2 uses
  %i.r = fcmp olt double %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_.exit.i

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i14
  %i.s = phi double [ %i.t, %.lr.ph.i.i14 ], [ %i.q, %.lr.ph.i ]
  %.013.i.i15 = phi ptr [ %.0.i.i17, %.lr.ph.i.i14 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0912.i.i16 = phi ptr [ %.013.i.i15, %.lr.ph.i.i14 ], [ %.07.i, %.lr.ph.i ]
  store double %i.s, ptr %.0912.i.i16, align 8, !tbaa !124
  %.0.i.i17 = getelementptr inbounds i8, ptr %.013.i.i15, i64 -8 ; 2 uses
  %i.t = load double, ptr %.0.i.i17, align 8, !tbaa !124 ; 2 uses
  %i.u = fcmp olt double %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_.exit.i, !llvm.loop !846

_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i14, %.lr.ph.i
  %.09.lcssa.i.i = phi ptr [ %.07.i, %.lr.ph.i ], [ %.013.i.i15, %.lr.ph.i.i14 ]
  store double %i.p, ptr %.09.lcssa.i.i, align 8, !tbaa !124
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.v, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !848

bb.h:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.017.i18 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i18, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.not18.i
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.h, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22
  %.020.i20 = phi ptr [ %.0.i24, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22 ], [ %.017.i18, %bb.h ] ; 6 uses
  %.pn19.i21 = phi ptr [ %.020.i20, %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22 ], [ %0, %bb.h ] ; 4 uses
  %i.x = load double, ptr %.020.i20, align 8, !tbaa !124 ; 4 uses
  %i.y = load double, ptr %0, align 8, !tbaa !124 ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i19
  %i.aa = ptrtoint ptr %.020.i20 to i64
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.k, !prof !391

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn19.i21, i64 16
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ab, i1 false)
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp eq i64 %i.ab, 8
  br i1 %i.ah, label %bb.l, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn19.i21, i64 8
  store double %i.y, ptr %i.ai, align 8, !tbaa !124
  br label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22

bb.m:                                             ; preds = %.lr.ph.i19
  %i.aj = load double, ptr %.pn19.i21, align 8, !tbaa !124 ; 2 uses
  %i.ak = fcmp olt double %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i26, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22

.lr.ph.i.i26:                                     ; preds = %bb.m, %.lr.ph.i.i26
  %i.al = phi double [ %i.am, %.lr.ph.i.i26 ], [ %i.aj, %bb.m ]
  %.013.i.i27 = phi ptr [ %.0.i.i29, %.lr.ph.i.i26 ], [ %.pn19.i21, %bb.m ] ; 3 uses
  %.0912.i.i28 = phi ptr [ %.013.i.i27, %.lr.ph.i.i26 ], [ %.020.i20, %bb.m ]
  store double %i.al, ptr %.0912.i.i28, align 8, !tbaa !124
  %.0.i.i29 = getelementptr inbounds i8, ptr %.013.i.i27, i64 -8 ; 2 uses
  %i.am = load double, ptr %.0.i.i29, align 8, !tbaa !124 ; 2 uses
  %i.an = fcmp olt double %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i26, label %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22, !llvm.loop !846

_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22:   ; preds = %.lr.ph.i.i26, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i23 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.020.i20, %bb.m ], [ %.013.i.i27, %.lr.ph.i.i26 ]
  store double %i.x, ptr %.sink.i23, align 8, !tbaa !124
  %.0.i24 = getelementptr inbounds nuw i8, ptr %.020.i20, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit, label %.lr.ph.i19, !llvm.loop !847

_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit: ; preds = %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i22, %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIdEEEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_S7_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr i64 %i.c, 3                         ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %3 = trunc i64 %i.d to i1
  %i.j = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %3, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.b
  %i.k = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.us
  %i.o = load double, ptr %i.n, align 8, !tbaa !124 ; 2 uses
  %i.p = icmp slt i64 %.014.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.014.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.s, align 8, !tbaa !124
  %i.w = load double, ptr %i.u, align 8, !tbaa !124
  %i.x = fcmp olt double %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.us = select i1 %i.x, i64 %i.y, i64 %i.r ; 6 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load double, ptr %i.z, align 8, !tbaa !124
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  store double %i.aa, ptr %i.ab, align 8, !tbaa !124
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !32

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i.us
  %i.af = load double, ptr %i.ae, align 8, !tbaa !124 ; 2 uses
  %i.ag = fcmp olt double %i.af, %i.o
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i.us
  store double %i.af, ptr %i.ah, align 8, !tbaa !124
  %i.ai = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us, !llvm.loop !33

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.014.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store double %i.o, ptr %i.aj, align 8, !tbaa !124
  %.not.us = icmp eq i64 %.014.us, 0
  %i.ak = add nsw i64 %.014.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !849

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit
  %.014 = phi i64 [ %i.bk, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.am = load double, ptr %i.al, align 8, !tbaa !124 ; 2 uses
  %i.an = icmp slt i64 %.014, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.014, %.split ] ; 2 uses
  %i.ao = shl i64 %.029.i, 1                      ; 3 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ap
  %i.ar = getelementptr [8 x i8], ptr %0, i64 %i.ao
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load double, ptr %i.aq, align 8, !tbaa !124
  %i.au = load double, ptr %i.as, align 8, !tbaa !124
  %i.av = fcmp olt double %i.at, %i.au
  %i.aw = or disjoint i64 %i.ao, 1
  %spec.select.i = select i1 %i.av, i64 %i.aw, i64 %i.ap ; 4 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !124
  %i.az = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  store double %i.ay, ptr %i.az, align 8, !tbaa !124
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !32

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.014, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.j
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load double, ptr %i.l, align 8, !tbaa !124
  store double %i.bc, ptr %i.m, align 8, !tbaa !124
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.k, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.128.i, %.014
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !124 ; 2 uses
  %i.bg = fcmp olt double %i.bf, %i.am
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01317.i.i
  store double %i.bf, ptr %i.bh, align 8, !tbaa !124
  %i.bi = icmp sgt i64 %.018.i.i, %.014
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit, !llvm.loop !33

_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store double %i.am, ptr %i.bj, align 8, !tbaa !124
  %.not = icmp eq i64 %.014, 0
  %i.bk = add nsw i64 %.014, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !849

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit, %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIdEEEEvT_T0_S8_T1_T2_.exit.us, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE3runERKS7_RKS9_RSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !203
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !204
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !121
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !508
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE3runERKS7_RKS9_RSB_RNS1_18task_group_contextE.exit, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !394
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 9 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !515
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.k, align 32, !tbaa !518
  %i.l = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %i.o, align 16, !tbaa !407
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i8 5, ptr %i.p, align 4, !tbaa !408
  %i.q = shl nsw i64 %i.n, 1
  %i.r = and i64 %i.q, 9223372036854775806
  store i64 %i.r, ptr %i.m, align 8, !tbaa !409
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.t = load i64, ptr %3, align 8, !tbaa !410
  store i64 %i.t, ptr %i.s, align 8, !tbaa !410
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !414
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !415
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.v, align 8, !tbaa !419
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.w, align 8, !tbaa !420
  store ptr %4, ptr %i.k, align 32, !tbaa !518
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE3runERKS7_RKS9_RSB_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE3runERKS7_RKS9_RSB_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.y = load atomic i8, ptr %i.x monotonic, align 1
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE3runERKS7_RKS9_RSB_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #27
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE3runERKS7_RKS9_RSB_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.ac
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !424  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !409
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !409
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !425
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !518
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 32, !tbaa !518
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !408
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !408
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS8_SA_EEKNS1_16auto_partitionerEEESB_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !518 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load i64, ptr %i.y, align 8, !tbaa !410
  %i.aa = load ptr, ptr %0, align 64, !tbaa !103
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(128) dereferenceable(128) %0) #21, !inline_history !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = atomicrmw sub ptr %i.ac, i32 1 seq_cst, align 4
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.ag = load ptr, ptr %.019.i.i, align 8, !tbaa !414 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !410
  %i.aj = inttoptr i64 %i.ai to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = atomicrmw sub ptr %i.ak, i32 1 seq_cst, align 4
  %i.am = add i32 %i.al, -1
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.ap, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPdSt4lessIdEEENS1_15quick_sort_bodyIS4_S6_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree10LeafBufferIdLj3EEaSERKS3_:bb.a

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load atomic i32, ptr %i.d seq_cst, align 8
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE10deallocateEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !121
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE10deallocateEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load atomic i32, ptr %i.a seq_cst, align 8
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %bb.g, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE10deallocateEv.exit

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %0, align 8, !tbaa !121
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE10deallocateEv.exit

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE10deallocateEv.exit: ; preds = %bb.i, %bb.f, %bb.e, %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load atomic i32, ptr %i.j seq_cst, align 8
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE10deallocateEv.exit
  %i.l = load atomic i32, ptr %i.j acquire, align 8
  store atomic i32 %i.l, ptr %i.a release, align 8
  %i.m = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !121    ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !341  ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !440
  store <2 x ptr> %i.s, ptr %i.o, align 8, !tbaa !440
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load i32, ptr %i.t, align 4, !tbaa !226
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !226
  br label %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i

_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i: ; preds = %bb.m, %bb.l, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !341 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !440
  store <2 x ptr> %i.ac, ptr %i.y, align 8, !tbaa !440
  %.not.i.i.i4.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i4.i, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoC2ERKS4_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i.i5.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i5.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !226
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !226
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoC2ERKS4_.exit

bb.p:                                             ; preds = %bb.n
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoC2ERKS4_.exit

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoC2ERKS4_.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_02io10MappedFileEEC2ERKS4_.exit.i, %bb.o, %bb.p
  store ptr %i.m, ptr %0, align 8, !tbaa !121
  br label %.loopexit

bb.q:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE10deallocateEv.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !121   ; 2 uses
  %.not14 = icmp eq ptr %i.ai, null
  br i1 %.not14, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr %0, align 8, !tbaa !121   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.s, label %vector.memcheck

bb.s:                                             ; preds = %bb.r
  %i.al = tail call noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #26 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !121
  %.pre = load ptr, ptr %1, align 8, !tbaa !121
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.s, %bb.r
  %i.am = phi ptr [ %i.ai, %bb.r ], [ %.pre, %bb.s ] ; 4 uses
  %i.an = phi ptr [ %i.aj, %bb.r ], [ %i.al, %bb.s ] ; 4 uses
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %diff.check = icmp ugt i64 %i.aq, -32
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ar = shl nuw nsw i64 %index, 3               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ar ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.an, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !124
  %wide.load29 = load <2 x double>, ptr %i.as, align 8, !tbaa !124
  %i.at = getelementptr i8, ptr %next.gep28, i64 16
  store <2 x double> %wide.load, ptr %next.gep28, align 8, !tbaa !124
  store <2 x double> %wide.load29, ptr %i.at, align 8, !tbaa !124
  %index.next = shl i64 %index, 3
  %i.au = or disjoint i64 %index.next, 32         ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.am, i64 %i.au ; 2 uses
  %next.gep28.1 = getelementptr i8, ptr %i.an, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep.1, i64 16
  %wide.load.1 = load <2 x double>, ptr %next.gep.1, align 8, !tbaa !124
  %wide.load29.1 = load <2 x double>, ptr %i.av, align 8, !tbaa !124
  %i.aw = getelementptr i8, ptr %next.gep28.1, i64 16
  store <2 x double> %wide.load.1, ptr %next.gep28.1, align 8, !tbaa !124
  store <2 x double> %wide.load29.1, ptr %i.aw, align 8, !tbaa !124
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next.1, 512
  br i1 %i.ax, label %.loopexit, label %vector.body, !llvm.loop !948

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %.021 = phi i32 [ %i.bt, %scalar.ph ], [ 512, %vector.memcheck ]
  %.01020 = phi ptr [ %i.bu, %scalar.ph ], [ %i.am, %vector.memcheck ] ; 9 uses
  %.01119 = phi ptr [ %i.bw, %scalar.ph ], [ %i.an, %vector.memcheck ] ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01020, i64 8
  %i.az = load double, ptr %.01020, align 8, !tbaa !124
  %i.ba = getelementptr inbounds nuw i8, ptr %.01119, i64 8
  store double %i.az, ptr %.01119, align 8, !tbaa !124
  %i.bb = getelementptr inbounds nuw i8, ptr %.01020, i64 16
  %i.bc = load double, ptr %i.ay, align 8, !tbaa !124
  %i.bd = getelementptr inbounds nuw i8, ptr %.01119, i64 16
  store double %i.bc, ptr %i.ba, align 8, !tbaa !124
  %i.be = getelementptr inbounds nuw i8, ptr %.01020, i64 24
  %i.bf = load double, ptr %i.bb, align 8, !tbaa !124
  %i.bg = getelementptr inbounds nuw i8, ptr %.01119, i64 24
  store double %i.bf, ptr %i.bd, align 8, !tbaa !124
  %i.bh = getelementptr inbounds nuw i8, ptr %.01020, i64 32
  %i.bi = load double, ptr %i.be, align 8, !tbaa !124
  %i.bj = getelementptr inbounds nuw i8, ptr %.01119, i64 32
  store double %i.bi, ptr %i.bg, align 8, !tbaa !124
  %i.bk = getelementptr inbounds nuw i8, ptr %.01020, i64 40
  %i.bl = load double, ptr %i.bh, align 8, !tbaa !124
  %i.bm = getelementptr inbounds nuw i8, ptr %.01119, i64 40
  store double %i.bl, ptr %i.bj, align 8, !tbaa !124
  %i.bn = getelementptr inbounds nuw i8, ptr %.01020, i64 48
  %i.bo = load double, ptr %i.bk, align 8, !tbaa !124
  %i.bp = getelementptr inbounds nuw i8, ptr %.01119, i64 48
  store double %i.bo, ptr %i.bm, align 8, !tbaa !124
  %i.bq = getelementptr inbounds nuw i8, ptr %.01020, i64 56
  %i.br = load double, ptr %i.bn, align 8, !tbaa !124
  %i.bs = getelementptr inbounds nuw i8, ptr %.01119, i64 56
  store double %i.br, ptr %i.bp, align 8, !tbaa !124
  %i.bt = add nsw i32 %.021, -8                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01020, i64 64
  %i.bv = load double, ptr %i.bq, align 8, !tbaa !124
  %i.bw = getelementptr inbounds nuw i8, ptr %.01119, i64 64
  store double %i.bv, ptr %i.bs, align 8, !tbaa !124
  %.not15.7 = icmp eq i32 %i.bt, 0
  br i1 %.not15.7, label %.loopexit, label %scalar.ph, !llvm.loop !949

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoC2ERKS4_.exit, %bb.q, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEESt5_BindIFMSE_FvSM_ESt12_PlaceholderILi1EESR_ILi2EEEEE9_M_invokeERKSt9_Any_dataOSF_SM_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !558    ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !275
  %.unpack.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !121 ; 3 uses
  %.elt3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.unpack4.i.i.i.i.i.i = load i64, ptr %.elt3.i.i.i.i.i.i, align 8, !tbaa !121
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.unpack4.i.i.i.i.i.i ; 2 uses
  %3 = trunc i64 %.unpack.i.i.i.i.i.i to i1
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr i8, ptr %i.d, i64 %.unpack.i.i.i.i.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load ptr, ptr %i.f, align 8, !nosanitize !76
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESP_ILi2EEEEJPSF_SM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESX_E4typeEOSY_DpOSZ_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %.unpack.i.i.i.i.i.i to ptr
  br label %_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESP_ILi2EEEEJPSF_SM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESX_E4typeEOSY_DpOSZ_.exit

_ZSt10__invoke_rIvRSt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESP_ILi2EEEEJPSF_SM_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESX_E4typeEOSY_DpOSZ_.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !950
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEESt5_BindIFMSE_FvSM_ESt12_PlaceholderILi1EESR_ILi2EEEEE10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESO_ILi2EEEE, ptr %0, align 8, !tbaa !442
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !558
  store ptr %i.a, ptr %0, align 8, !tbaa !558
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !558
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !558
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !558    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #24
  br label %_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerISt5_BindIFMN7openvdb5v13_04tree11LeafManagerIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEESt12_PlaceholderILi1EESQ_ILi2EEEEE10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFvPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEEEclESF_SM_.exit

_ZNKSt8functionIFvPN7openvdb5v13_04tree11LeafManagerIKNS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEEEclESF_SM_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !275
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !952
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !120
  store i8 0, ptr %i.g, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.48, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #21 ; 0 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !122    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !121
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.q, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.p, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.s = call ptr @__cxa_begin_catch(ptr %.1) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.t, align 8, !tbaa !103
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #25
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !122    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.k
  %i.x = load i64, ptr %i.g, align 8, !tbaa !121
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.u

bb.l:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEE3runERKS4_RKSJ_RSL_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %5 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !368
  %i.c = load i64, ptr %0, align 8, !tbaa !367
  %.not = icmp ult i64 %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !394
  %i.d = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 256) ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.d, align 64, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !395
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  call void @_ZN7openvdb5v13_04tree11LeafManagerIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !560
  %i.i = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj3EEEEEvRSiPT_jRKT0_b:bb.a

bb.t:                                             ; preds = %bb.q
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.u unwind label %bb.p       ; 0 uses

bb.u:                                             ; preds = %.invoke, %bb.t, %bb.n
  %i.bi = load ptr, ptr %0, align 8, !tbaa !103
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  %i.bm = invoke noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.bl)
          to label %bb.v unwind label %bb.x       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !124
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.y:                                             ; preds = %bb.w, %bb.v
  %.0146 = phi double [ 0.000000e+00, %bb.v ], [ %i.bn, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store double %.0146, ptr %i.c, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.bp = load i8, ptr %i.b, align 1, !tbaa !121  ; 3 uses
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %.thread179, label %bb.z

.thread179:                                       ; preds = %bb.y
  store double %.0146, ptr %i.d, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !229
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.z:                                             ; preds = %bb.y
  %i.br = fneg double %.0146
  store double %i.br, ptr %i.d, align 8, !tbaa !124
  switch i8 %i.bp, label %bb.ag [
    i8 5, label %bb.aa
    i8 4, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.t, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 8, i32 noundef 1)
          to label %.thread147 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.af, %.thread148, %bb.ad, %bb.ab
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ad:                                            ; preds = %bb.aa
  %i.bu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.d, i64 noundef 8)
          to label %bb.ae unwind label %bb.ac     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load i8, ptr %i.b, align 1, !tbaa !121  ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 5
  br i1 %i.bw, label %bb.af, label %.thread181

.thread147:                                       ; preds = %bb.ab
  %i.bx = load i8, ptr %i.b, align 1, !tbaa !121  ; 2 uses
  %i.by = icmp eq i8 %i.bx, 5
  br i1 %i.by, label %.thread148, label %bb.ag

.thread148:                                       ; preds = %.thread147
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 8, i32 noundef 1)
          to label %.thread148._crit_edge unwind label %bb.ac ; 0 uses

.thread148._crit_edge:                            ; preds = %.thread148
  %.pre162 = load i8, ptr %i.b, align 1, !tbaa !121
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ca = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c, i64 noundef 8)
          to label %.thread149 unwind label %bb.ac ; 0 uses

bb.ag:                                            ; preds = %.thread148._crit_edge, %bb.z, %.thread147
  %i.cb = phi i8 [ %.pre162, %.thread148._crit_edge ], [ %i.bx, %.thread147 ], [ %i.bp, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !229
  %i.cc = add i8 %i.cb, -3
  %or.cond13 = icmp ult i8 %i.cc, 3
  br i1 %or.cond13, label %bb.ah, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread181:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !229
  %i.cd = add i8 %i.bv, -3
  %or.cond13182 = icmp ult i8 %i.cd, 3
  br i1 %or.cond13182, label %.thread151, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

.thread149:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false), !tbaa !229
  %i.ce = load i8, ptr %i.b, align 1, !tbaa !121
  %i.cf = add i8 %i.ce, -3
  %or.cond13150 = icmp ult i8 %i.cf, 3
  br i1 %or.cond13150, label %.thread151, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.t, label %.thread151, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 64, i32 noundef 1)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %.thread151, %bb.ai
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit

.thread151:                                       ; preds = %.thread181, %.thread149, %bb.ah
  %i.ci = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %9, i64 noundef 64)
          to label %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit unwind label %bb.aj ; 0 uses

_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit: ; preds = %.thread181, %.thread179, %.thread151, %.thread149, %bb.ai, %bb.ag
  %i.cj = load i8, ptr %i.b, align 1
  %i.ck = icmp ne i8 %i.cj, 6
  %or.cond16 = select i1 %i.s, i1 %i.ck, i1 false
  br i1 %or.cond16, label %bb.ak, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EE5resetIPdvEEvT_.exit

bb.ak:                                            ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %i.cl = load <8 x i64>, ptr %3, align 8, !tbaa !229
  %i.cm = call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.cl)
  %i.cn = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.cm) ; 2 uses
  %i.co = trunc nuw nsw i64 %i.cn to i32          ; 3 uses
  br i1 %i.t, label %bb.al, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EE5resetIPdvEEvT_.exit

bb.al:                                            ; preds = %bb.ak
  %.not105 = icmp eq i32 %2, %i.co
  br i1 %.not105, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EE5resetIPdvEEvT_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = shl nuw nsw i64 %i.cn, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #26
          to label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EE5resetIPdvEEvT_.exit unwind label %.thread152 ; 2 uses

.thread152:                                       ; preds = %bb.am
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit

bb.an:                                            ; preds = %.invoke185, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #24
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EE5resetIPdvEEvT_.exit: ; preds = %bb.am, %bb.ak, %bb.al, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit
  %.sroa.0.1 = phi ptr [ null, %bb.al ], [ null, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.cq, %bb.am ] ; 4 uses
  %.085 = phi ptr [ %1, %bb.al ], [ %1, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ null, %bb.ak ], [ %i.cq, %bb.am ] ; 3 uses
  %.084 = phi i32 [ %2, %bb.al ], [ %2, %_ZN7openvdb5v13_04util8NodeMaskILj3EE4loadERSi.exit ], [ %i.co, %bb.ak ], [ %i.co, %bb.am ] ; 4 uses
  %i.ct = select i1 %i.t, ptr %.085, ptr null     ; 4 uses
  br i1 %4, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EE5resetIPdvEEvT_.exit
  invoke void @_ZN7openvdb5v13_02io10HalfReaderILb1EdE4readERSiPdjjPNS1_19DelayedLoadMetadataEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ct, i32 noundef %.084, i32 noundef %i.q, ptr noundef %i.ax, i64 noundef %.086)
          to label %_ZN7openvdb5v13_02io8readDataIdEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EE5resetIPdvEEvT_.exit
  %i.cu = icmp eq ptr %i.ct, null                 ; 2 uses
  %i.cv = and i32 %i.q, 5
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = icmp ne ptr %i.ax, null
  %i.cy = and i1 %i.cw, %i.cx
  %or.cond3.i = and i1 %i.cu, %i.cy
  br i1 %or.cond3.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cz = invoke noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, i64 noundef %.086)
          to label %.invoke185 unwind label %bb.an

bb.ar:                                            ; preds = %bb.ap
  %i.da = and i32 %i.q, 4
  %.not.i121 = icmp eq i32 %i.da, 0
  br i1 %.not.i121, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.db = zext i32 %.084 to i64
  %i.dc = shl nuw nsw i64 %i.db, 3
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ct, i64 noundef %i.dc)
          to label %_ZN7openvdb5v13_02io8readDataIdEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.at:                                            ; preds = %bb.ar
  %10 = trunc i32 %i.q to i1
  %i.dd = zext i32 %.084 to i64
  %i.de = shl nuw nsw i64 %i.dd, 3                ; 3 uses
  br i1 %10, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ct, i64 noundef %i.de)
          to label %_ZN7openvdb5v13_02io8readDataIdEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.at
  br i1 %i.cu, label %.invoke185, label %bb.aw

.invoke185:                                       ; preds = %bb.av, %bb.aq
  %i.df = phi i64 [ %i.cz, %bb.aq ], [ %i.de, %bb.av ]
  %i.dg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.df, i32 noundef 1)
          to label %_ZN7openvdb5v13_02io8readDataIdEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.dh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %.085, i64 noundef %i.de)
          to label %_ZN7openvdb5v13_02io8readDataIdEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit unwind label %bb.an ; 0 uses

_ZN7openvdb5v13_02io8readDataIdEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %.invoke185, %bb.as, %bb.au, %bb.aw, %bb.ao
  %.not114 = icmp ne i32 %.084, %2
  %i.di = and i1 %i.s, %.not114
  %or.cond115.not = and i1 %i.t, %i.di
  br i1 %or.cond115.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN7openvdb5v13_02io8readDataIdEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit
  %i.dj = load double, ptr %i.c, align 8
  %i.dk = load double, ptr %i.d, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %bb.ba
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ba ] ; 4 uses
  %.0160 = phi i32 [ 0, %.preheader ], [ %.1, %bb.ba ] ; 3 uses
  %i.dl = lshr i64 %indvars.iv, 6
  %i.dm = and i64 %i.dl, 67108863                 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !229
  %i.dp = and i64 %indvars.iv, 63
  %i.dq = shl nuw i64 1, %i.dp                    ; 2 uses
  %i.dr = and i64 %i.do, %i.dq
  %.not157 = icmp eq i64 %i.dr, 0
  br i1 %.not157, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ds = zext i32 %.0160 to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.085, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !124
  %i.dv = add i32 %.0160, 1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.dm
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !229
  %i.dy = and i64 %i.dx, %i.dq
  %.not158 = icmp eq i64 %i.dy, 0
  %i.dz = select i1 %.not158, double %i.dk, double %i.dj
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %.sink = phi double [ %i.dz, %bb.az ], [ %i.du, %bb.ay ]
  %.1 = phi i32 [ %.0160, %bb.az ], [ %i.dv, %bb.ay ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store double %.sink, ptr %i.ea, align 8, !tbaa !124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.loopexit, label %bb.ax, !llvm.loop !983

.loopexit:                                        ; preds = %bb.ba, %_ZN7openvdb5v13_02io8readDataIdEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit
  %.not.i128 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i128, label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit130, label %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i129

_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i129: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #24
  br label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit130

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit130: ; preds = %.loopexit, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.not.i.i131 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i131, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit130
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.eb, align 8, !tbaa !343
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !344
  %i.eg = load ptr, ptr %i.aw, align 8, !tbaa !103
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #21, !inline_history !29
  %i.ej = load ptr, ptr %i.aw, align 8, !tbaa !103
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #21, !inline_history !29
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

bb.bd:                                            ; preds = %bb.bb
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i132 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i132, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !226
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

bb.bf:                                            ; preds = %bb.bd
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i134 = phi i32 [ %i.ee, %bb.be ], [ %i.eo, %bb.bf ]
  %i.ep = icmp eq i32 %.0.i.i.i.i134, 1
  br i1 %i.ep, label %bb.bg, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, !prof !345

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #21
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135

_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135: ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit130, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i133, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !341 ; 8 uses
  %.not.i.i136 = icmp eq ptr %i.er, null
  br i1 %.not.i.i136, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 4 uses
  %i.et = load atomic i64, ptr %i.es acquire, align 8 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 4294967297
  %i.ev = trunc i64 %i.et to i32                  ; 2 uses
  br i1 %i.eu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.es, align 8, !tbaa !343
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store i32 0, ptr %i.ew, align 4, !tbaa !344
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !103
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #21, !inline_history !30
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !103
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #21, !inline_history !30
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.fd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i137 = icmp eq i8 %i.fd, 0
  br i1 %.not.i.i.i137, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fe = add nsw i32 %i.ev, -1
  store i32 %i.fe, ptr %i.es, align 8, !tbaa !226
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138

bb.bl:                                            ; preds = %bb.bj
  %i.ff = atomicrmw volatile add ptr %i.es, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i139 = phi i32 [ %i.ev, %bb.bk ], [ %i.ff, %bb.bl ]
  %i.fg = icmp eq i32 %.0.i.i.i.i139, 1
  br i1 %i.fg, label %bb.bm, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !345

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.er) #21
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit135, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i138, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.aj, %.thread152, %bb.an, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %.pn106.pn = phi { ptr, i32 } [ %i.cs, %_ZNKSt14default_deleteIA_dEclIdEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ], [ %i.ch, %bb.aj ], [ %i.cr, %.thread152 ], [ %i.cs, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit, %bb.ac
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit ], [ %i.bt, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.x, %bb.bn, %bb.p
  %.pn106.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.p ], [ %.pn106.pn.pn, %bb.bn ], [ %i.bo, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.l, %bb.h
  %.pn106.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn, %bb.bo ], [ %i.ao, %bb.h ], [ %.pn.pn, %bb.l ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.g
  %.pn106.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn.pn, %bb.bp ], [ %i.an, %bb.g ]
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn106.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_02io10HalfReaderILb1EdE4readERSiPdjjPNS1_19DelayedLoadMetadataEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %.noexc

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %3, 5
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp ne ptr %4, null
  %i.f = and i1 %i.e, %i.d
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %4, i64 noundef %5)
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g, i32 noundef 1) ; 0 uses
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %3, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = zext i32 %2 to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  tail call void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i64 noundef %i.k)
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.g:                                             ; preds = %bb.e
  %6 = trunc i32 %3 to i1
  %i.l = zext i32 %2 to i64
  %i.m = shl nuw nsw i64 %i.l, 1                  ; 2 uses
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, i64 noundef %i.m)
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

bb.i:                                             ; preds = %bb.g
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.m, i32 noundef 1) ; 0 uses
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

.noexc:                                           ; preds = %bb.b
  %i.o = zext i32 %2 to i64                       ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 1                  ; 6 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 9 uses
  store i16 0, ptr %i.q, align 2
  %i.r = getelementptr i8, ptr %i.q, i64 2        ; 3 uses
  %i.s = add nsw i64 %i.o, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.j, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 1   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !496
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %.noexc, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.r, %.noexc ]
  %i.v = and i32 %3, 4
  %.not.i20 = icmp eq i32 %i.v, 0
  br i1 %.not.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7openvdb5v13_02io15bloscFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit30

bb.l:                                             ; preds = %bb.j
  %7 = trunc i32 %3 to i1
  br i1 %7, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN7openvdb5v13_02io15unzipFromStreamERSiPcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit30

bb.n:                                             ; preds = %bb.l
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i64 noundef %i.p)
          to label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 unwind label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit30 ; 0 uses

_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28: ; preds = %bb.k, %bb.m, %bb.n
  %i.x = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.y = ptrtoint ptr %i.q to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 1                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28, %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ax, %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i ], [ %i.aa, %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aw, %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i ], [ %1, %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.av, %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i ], [ %i.q, %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28 ] ; 2 uses
  %i.ac = load i16, ptr %.0910.i.i.i.i.i, align 2, !tbaa !498 ; 2 uses
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 13
  %i.af = and i32 %i.ae, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i = sext i16 %i.ac to i32
  %i.ag = and i32 %.signext.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.ah = icmp samesign ugt i32 %i.af, 8388607
  br i1 %i.ah, label %bb.o, label %bb.r, !prof !391

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = or disjoint i32 %i.af, %i.ag            ; 2 uses
  %i.aj = icmp samesign ult i32 %i.af, 260046848
  br i1 %i.aj, label %bb.p, label %bb.q, !prof !391

bb.p:                                             ; preds = %bb.o
  %i.ak = add nuw nsw i32 %i.ai, 939524096
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.al = or i32 %i.ai, 2139095040
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.an = add nsw i32 %i.am, -8                   ; 2 uses
  %i.ao = shl i32 %i.af, %i.an
  %i.ap = or i32 %i.ag, %i.ao
  %i.aq = or i32 %i.ap, 947912704
  %i.ar = shl nuw nsw i32 %i.an, 23
  %i.as = sub nuw i32 %i.aq, %i.ar
  br label %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i

_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i = phi i32 [ %i.ak, %bb.p ], [ %i.al, %bb.q ], [ %i.as, %bb.s ], [ %i.ag, %bb.r ]
  %i.at = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i to float
  %i.au = fpext float %i.at to double
  store double %i.au, ptr %.0811.i.i.i.i.i, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ax = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit, !llvm.loop !984

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit: ; preds = %_ZNK7openvdb5v13_04math8internal4halfcvfEv.exit.i.i.i.i.i, %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #24
  br label %_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit

_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit30: ; preds = %bb.n, %bb.m, %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #24
  resume { ptr, i32 } %i.az

_ZN7openvdb5v13_02io8readDataINS0_4math8internal4halfEEEvRSiPT_jjPNS1_19DelayedLoadMetadataEm.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.a, %_ZNSt6vectorIN7openvdb5v13_04math8internal4halfESaIS4_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoEEclEPS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !341  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !343
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !344
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21, !inline_history !16
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21, !inline_history !16
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !226
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !345

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #21
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !341  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !343
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !344
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21, !inline_history !17
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21, !inline_history !17
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i2.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !226
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ai, label %bb.n, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit, !prof !345

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #21
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 48) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE8FileInfoD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_5
