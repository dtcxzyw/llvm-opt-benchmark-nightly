inline.NumInlined: 3236
inline.NumDeleted: 1424
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGenC2EPNS_6ESTree4NodeERKSt6vectorIPNS2_11ProgramNodeESaIS7_EEPNS_6ModuleERKNS_10ScopeChainE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a

.lr.ph38:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph38, %_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.g = phi ptr [ %i.b, %.lr.ph38 ], [ %i.o, %_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #17, !noalias !217 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 8 uses
  store i32 1, ptr %i.i, align 8, !tbaa !222, !noalias !224
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  store i32 1, ptr %i.j, align 4, !tbaa !225, !noalias !224
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes15SerializedScopeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !226, !noalias !224
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.k, i8 0, i64 304, i1 false), !noalias !224
  store ptr %i.m, ptr %i.l, align 8, !tbaa !228, !noalias !224
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 60 ; 2 uses
  store i32 16, ptr %i.n, align 4, !tbaa !229, !noalias !224
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 -24 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 -16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !230  ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !233  ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
end_hunk_1
begin_hunk_2_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a
  br label %bb.ac

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes15SerializedScope11DeclarationELb1EE9push_backERKS3_.exit, %_ZN4llvh15SmallVectorImplIN6hermes15SerializedScope11DeclarationEE7reserveEm.exit
  %3 = load ptr, ptr %0, align 8, !tbaa !235
  store ptr %3, ptr %i.k, align 8, !tbaa !235
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %4 = load ptr, ptr %i.f, align 8, !tbaa !236    ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !236 ; 3 uses
  %.not.i.i.i = icmp eq ptr %4, %i.ab
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %.not7.i.i.i = icmp eq ptr %4, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g
end_hunk_2
begin_hunk_3_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %4, ptr %i.aa, align 8, !tbaa !236
  %.pre41 = load ptr, ptr %i.f, align 8, !tbaa !236
  br label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit

_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit: ; preds = %._crit_edge, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %5 = phi ptr [ %4, %._crit_edge ], [ %.pre41, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !235
  %.not.i.i.i7 = icmp eq ptr %i.h, %5
  br i1 %.not.i.i.i7, label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit
end_hunk_3
begin_hunk_4_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a

bb.q:                                             ; preds = %bb.o
  %i.ba = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i16 = load ptr, ptr %i.f, align 8, !tbaa !236
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10: ; preds = %bb.q, %bb.p
  %6 = phi ptr [ %.pr.pre.i.i.i16, %bb.q ], [ %5, %bb.p ] ; 8 uses
  %.not8.i.i.i11 = icmp eq ptr %6, null
  br i1 %.not8.i.i.i11, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15, label %bb.r

bb.r:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bb, align 8, !tbaa !222
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !225
  %i.bg = load ptr, ptr %6, align 8, !tbaa !226
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %6) #16, !inline_history !239
  %i.bj = load ptr, ptr %6, align 8, !tbaa !226
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %6) #16, !inline_history !239
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15

bb.t:                                             ; preds = %bb.r
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
end_hunk_5
begin_hunk_6_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i14 = phi i32 [ %i.be, %bb.u ], [ %i.bo, %bb.v ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i14, 1
  br i1 %i.bp, label %bb.w, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15, !prof !238

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13, %bb.s, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i10
  store ptr %i.h, ptr %i.f, align 8, !tbaa !236
  br label %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit

_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i15, %_ZNSt10shared_ptrIKN6hermes15SerializedScopeEEaSERKS3_.exit
  %i.bq = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6hermes5irgen11ESTreeIRGen23resolveScopeIdentifiersERKNS_10ScopeChainE:bb.a

_ZNSt12__shared_ptrIN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  %i.cd = icmp ult ptr %i.c, %i.o
  br i1 %i.cd, label %bb.c, label %bb.b, !llvm.loop !241

bb.ac:                                            ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes15SerializedScope11DeclarationELb1EE9push_backERKS3_.exit
  %.sroa.022.035 = phi ptr [ %i.y, %.lr.ph ], [ %i.cn, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes15SerializedScope11DeclarationELb1EE9push_backERKS3_.exit ] ; 3 uses
end_hunk_7
