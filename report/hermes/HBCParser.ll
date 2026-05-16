inline.NumInlined: 971
inline.NumDeleted: 551
begin_hunk_0_@_ZN6hermes19ProfileIndexVisitorD2Ev:bb.a
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.p, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !63
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #12, !inline_history !79
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #12, !inline_history !79
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i1 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 4, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.h, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !39

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #12, !inline_history !80
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %_ZNSt13unordered_mapIPKhtSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_tEEED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes22BasicBlockRangeVisitorD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes22BasicBlockRangeVisitorE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !18 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #13
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !103

_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !88
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !88
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #13
  br label %_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKhS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.p, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !63
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #12, !inline_history !79
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #12, !inline_history !79
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i1 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 4, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.h, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, !prof !39

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #12, !inline_history !80
  br label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit

_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit:         ; preds = %_ZNSt13unordered_setIPKhSt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes9HBCParser27generateFunctionChecksumMapB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_map") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.llvh::MD5::MD5Result", align 16 ; 4 uses
  %3 = alloca %"class.llvh::MD5", align 4         ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.llvh::SmallString", align 8 ; 7 uses
  %6 = alloca %"struct.llvh::MD5::MD5Result", align 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %0, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !4
  %i.h = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !109
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit
  %i.o = phi ptr [ %i.h, %.lr.ph ], [ %i.bu, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ] ; 2 uses
  %storemerge7 = phi i32 [ 0, %.lr.ph ], [ %i.bt, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ]
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call ptr %i.r(ptr noundef nonnull align 8 dereferenceable(280) %i.o, i32 noundef %storemerge7) #12 ; 3 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.u = load i32, ptr %i.b, align 4, !tbaa !4
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(280) %i.t, i32 noundef %i.u) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.c, label %bb.d, !prof !39

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !125
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

bb.d:                                             ; preds = %bb.b
  %7 = load i64, ptr %i.s, align 1
  %8 = lshr i64 %7, 32
  %9 = trunc nuw i64 %8 to i32
  %i.ad = and i32 %9, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.ac, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = zext i32 %.0.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN4llvh3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %3) #12
  call void @_ZN4llvh3MD56updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr %i.y, i64 %i.ae) #12
  call void @_ZN4llvh3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %3, ptr noundef nonnull align 1 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.af = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x i64> %i.af, ptr %6, align 16
  call void @_ZNK4llvh3MD59MD5Result6digestEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::SmallString") align 8 %5, ptr noundef nonnull align 1 dereferenceable(16) %6) #12
  %i.ag = load ptr, ptr %5, align 8, !tbaa !127   ; 3 uses
  %i.ah = load i32, ptr %i.k, align 8, !tbaa !129 ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %.not.i.i = icmp eq ptr %i.ag, null
  store ptr %i.l, ptr %4, align 8, !tbaa !136, !alias.scope !137
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit
  store i64 0, ptr %i.m, align 8, !tbaa !138, !alias.scope !137
  store i8 0, ptr %i.l, align 8, !tbaa !32, !alias.scope !137
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.f:                                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !137
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !47, !noalias !137
  %i.aj = icmp ugt i32 %i.ah, 15
  br i1 %i.aj, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ak = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !139, !alias.scope !137
  %i.al = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !137
  store i64 %i.al, ptr %i.l, align 8, !tbaa !32, !alias.scope !137
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %i.ak, %bb.g ], [ %i.l, %bb.f ] ; 2 uses
  switch i32 %i.ah, label %bb.i [
    i32 1, label %bb.h
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !32
  store i8 %i.an, ptr %i.am, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr nonnull align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !137 ; 2 uses
  store i64 %i.ao, ptr %i.m, align 8, !tbaa !138, !alias.scope !137
  %i.ap = load ptr, ptr %4, align 8, !tbaa !139, !alias.scope !137
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !137
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  %i.ar = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS9_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 9 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !139 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 4 uses
  %i.au = icmp eq ptr %i.as, %i.at
  %i.av = load ptr, ptr %4, align 8, !tbaa !139   ; 6 uses
  %i.aw = icmp eq ptr %i.av, %i.l                 ; 2 uses
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.aw, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.aw, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !138 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %.not21.i = icmp eq ptr %4, %i.ar
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.k, !prof !39

bb.k:                                             ; preds = %bb.j
  switch i64 %i.ax, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = load i8, ptr %i.av, align 1, !tbaa !32
  store i8 %i.az, ptr %i.as, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !138 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !138
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !139
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !32
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !139
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !138
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !138
  %i.bg = load i64, ptr %i.l, align 8, !tbaa !32
  store i64 %i.bg, ptr %i.at, align 8, !tbaa !32
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bh = load i64, ptr %i.at, align 8, !tbaa !32
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !139
  %i.bi = load i64, ptr %i.m, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !138
  %i.bk = load i64, ptr %i.l, align 8, !tbaa !32
  store i64 %i.bk, ptr %i.at, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.as, ptr %4, align 8, !tbaa !139
  store i64 %i.bh, ptr %i.l, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %4, align 8, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bl = phi ptr [ %i.as, %bb.n ], [ %i.l, %bb.o ], [ %i.av, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.m, align 8, !tbaa !138
  store i8 0, ptr %i.bl, align 1, !tbaa !32
  %i.bm = load ptr, ptr %4, align 8, !tbaa !139   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.l
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bo = load i64, ptr %i.l, align 8, !tbaa !32
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bq = load ptr, ptr %5, align 8, !tbaa !127   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.n
  br i1 %i.br, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @free(ptr noundef %i.bq) #12
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bt = add i32 %i.bs, 1                        ; 3 uses
  store i32 %i.bt, ptr %i.b, align 4, !tbaa !4
  %i.bu = load ptr, ptr %1, align 8, !tbaa !53    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !109
  %i.bx = icmp ult i32 %i.bt, %i.bw
  br i1 %i.bx, label %bb.b, label %._crit_edge, !llvm.loop !140
}

declare void @_ZNK4llvh3MD59MD5Result6digestEv(ptr dead_on_unwind writable sret(%"class.llvh::SmallString") align 8, ptr noundef nonnull align 1 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes9HBCParser19getBasicBlockOffsetEjt(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6hermes9HBCParser18getProfileIndexMapEj(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i, label %"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKPKhtELb0ELb0EEEZN6hermes9HBCParser19getBasicBlockOffsetEjtE3$_0ET_SB_SB_T0_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.03.06.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.e = load i16, ptr %i.d, align 8, !tbaa !141
  %i.f = icmp eq i16 %i.e, %2
  br i1 %i.f, label %"_ZSt7find_ifINSt8__detail14_Node_iteratorISt4pairIKPKhtELb0ELb0EEEZN6hermes9HBCParser19getBasicBlockOffsetEjtE3$_0ET_SB_SB_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !18 ; 2 uses
end_hunk_0
