inline.NumInlined: 3236
inline.NumDeleted: 1424
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGenC2EPNS_6ESTree4NodeERKSt6vectorIPNS2_11ProgramNodeESaIS7_EEPNS_6ModuleERKNS_10ScopeChainE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a

.lr.ph38:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge39:                                    ; preds = %_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %.pr41, ptr %i.f, align 8
  br label %._crit_edge39.a

._crit_edge39.a:                                  ; preds = %._crit_edge39, %bb.a
  %.lcssa = phi ptr [ %i.j, %._crit_edge39 ], [ null, %bb.a ]
  store ptr %.lcssa, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph38, %_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pr42 = phi ptr [ null, %.lr.ph38 ], [ %.pr41, %_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 14 uses
  %.sroa.031.036 = phi ptr [ %i.b, %.lr.ph38 ], [ %i.n, %_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.sroa.031.036.a = phi ptr [ null, %.lr.ph38 ], [ %i.j, %_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.g = tail call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #17, !noalias !217 ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 8 uses
  store i32 1, ptr %i.h, align 8, !tbaa !222, !noalias !224
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  store i32 1, ptr %i.i, align 4, !tbaa !225, !noalias !224
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes15SerializedScopeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !226, !noalias !224
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.j, i8 0, i64 304, i1 false), !noalias !224
  store ptr %i.l, ptr %i.k, align 8, !tbaa !228, !noalias !224
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 60 ; 2 uses
  store i32 16, ptr %i.m, align 4, !tbaa !229, !noalias !224
  %i.n = getelementptr inbounds i8, ptr %.sroa.031.036, i64 -24 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.031.036, i64 -16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !230  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !233  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
end_hunk_1
begin_hunk_2_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a
  br label %bb.ab

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes15SerializedScope11DeclarationELb1EE9push_backERKS3_.exit, %_ZN4llvh15SmallVectorImplIN6hermes15SerializedScope11DeclarationEE7reserveEm.exit
  store ptr %.sroa.031.036.a, ptr %i.j, align 8, !tbaa !235
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !236 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr42, %i.aa
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %.not7.i.i.i = icmp eq ptr %.pr42, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.pr42, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f
end_hunk_2
begin_hunk_3_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %.pr42, ptr %i.z, align 8, !tbaa !236
  br label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit

_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit: ; preds = %._crit_edge, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %.not.i.i.i7 = icmp eq ptr %i.g, %.pr42
  br i1 %.not.i.i.i7, label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit
end_hunk_3
begin_hunk_4_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a

bb.p:                                             ; preds = %bb.n
  %i.az = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10: ; preds = %bb.p, %bb.o
  %.not8.i.i.i11 = icmp eq ptr %.pr42, null
  br i1 %.not8.i.i.i11, label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10
  %i.ba = getelementptr inbounds nuw i8, ptr %.pr42, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ba, align 8, !tbaa !222
  %i.be = getelementptr inbounds nuw i8, ptr %.pr42, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !225
  %i.bf = load ptr, ptr %.pr42, align 8, !tbaa !226
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %.pr42) #16, !inline_history !239
  %i.bi = load ptr, ptr %.pr42, align 8, !tbaa !226
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %.pr42) #16, !inline_history !239
  br label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit

bb.s:                                             ; preds = %bb.q
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
end_hunk_5
begin_hunk_6_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i14 = phi i32 [ %i.bd, %bb.t ], [ %i.bn, %bb.u ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i14, 1
  br i1 %i.bo, label %bb.v, label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit, !prof !238

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr42) #16
  br label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit

_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13, %bb.v, %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit
  %.pr41 = phi ptr [ %.pr42, %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit ], [ %i.g, %bb.v ], [ %i.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13 ], [ %i.g, %bb.r ], [ %i.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10 ] ; 2 uses
  %i.bp = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a

_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aa
  %i.cc = icmp ult ptr %i.c, %i.n
  br i1 %i.cc, label %bb.b, label %._crit_edge39, !llvm.loop !241

bb.ab:                                            ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes15SerializedScope11DeclarationELb1EE9push_backERKS3_.exit
  %.sroa.022.035 = phi ptr [ %i.x, %.lr.ph ], [ %i.cm, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes15SerializedScope11DeclarationELb1EE9push_backERKS3_.exit ] ; 3 uses
end_hunk_7
