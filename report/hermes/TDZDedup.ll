inline.NumInlined: 693
inline.NumDeleted: 401
begin_hunk_0_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE
define hidden noundef zeroext i1 @_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::IRBuilder::InstructionDestroyer", align 8 ; 14 uses
  %i.a = alloca ptr, align 8                      ; 14 uses
  %3 = alloca %"class.llvh::SmallVector.68", align 8 ; 12 uses
  %4 = alloca %"class.hermes::DominanceInfo", align 8 ; 9 uses
  %5 = alloca %"class.hermes::(anonymous namespace)::TDZDedupContext", align 8 ; 29 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a

bb.l:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !97 ; 3 uses
  %.not.i61.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i61.i.i.i.i, label %._crit_edge.i62.i.i.i.i, label %bb.m

end_hunk_1
begin_hunk_2_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store i32 %i.cv, ptr %i.cz, align 8, !tbaa !99
  %6 = load ptr, ptr %i.cl, align 8, !tbaa !97
  store ptr %6, ptr %i.cy, align 8, !tbaa !106
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !107
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
end_hunk_2
begin_hunk_3_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a

bb.s:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit71.i.i.i.i
  %i.ef = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !97 ; 3 uses
  %.not.i75.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i75.i.i.i.i, label %._crit_edge.i76.i.i.i.i, label %bb.t

end_hunk_3
begin_hunk_4_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store i32 %i.eq, ptr %i.eu, align 8, !tbaa !99
  %7 = load ptr, ptr %i.eg, align 8, !tbaa !97
  store ptr %7, ptr %i.et, align 8, !tbaa !106
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !107
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
end_hunk_4
begin_hunk_5_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
  br label %_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit89.i.i.i.i

_ZN6hermes15ScopedHashTableIPNS_5ValueEbE17setInCurrentScopeERKS2_RKb.exit.i.i.i.i: ; preds = %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit71.i.i.i.i, %_ZNK4llvh6detail12DenseSetImplIPN6hermes5ValueENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5countEPKS3_.exit.i.i.i.i, %bb.g
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !79  ; 6 uses
  %i.ez = load ptr, ptr %i.am, align 8, !tbaa !109 ; 6 uses
  %i.fa = load i32, ptr %i.an, align 8, !tbaa !110 ; 10 uses
  %i.fb = icmp eq i32 %i.fa, 0                    ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %i.ip = load ptr, ptr %i.a, align 8, !tbaa !79
  store ptr %i.ip, ptr %i.ii, align 8, !tbaa !79
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr null, ptr %i.iq, align 8, !tbaa !97
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_.exit.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16FindAndConstructERKS4_.exit.i.i.i: ; preds = %bb.aa, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i, %bb.y
  %.0.i.i.i.i = phi ptr [ %i.ii, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueEPNS2_19ScopedHashTableNodeIS4_bEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JEEEPSC_SI_OT_DpOT0_.exit.i.i.i.i ], [ %i.gl, %bb.y ], [ %i.gx, %bb.aa ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !97 ; 3 uses
  %.not.i85.i.i.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i85.i.i.i.i, label %._crit_edge.i86.i.i.i.i, label %bb.ai

end_hunk_6
begin_hunk_7_@_ZN6hermes8TDZDedup13runOnFunctionEPNS_8FunctionE:bb.a
  %i.iz = phi ptr [ %.pre.i88.i.i.i.i, %._crit_edge.i86.i.i.i.i ], [ %i.iv, %bb.ai ] ; 2 uses
  %i.ja = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 7 uses
  %i.jb = load i32, ptr %i.iz, align 8, !tbaa !101
  %8 = load ptr, ptr %i.a, align 8, !tbaa !79
  store ptr %8, ptr %i.ja, align 8, !tbaa !105
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i8 1, ptr %i.jc, align 8, !tbaa !104
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  store i32 %i.jb, ptr %i.je, align 8, !tbaa !99
  %9 = load ptr, ptr %i.ir, align 8, !tbaa !97
  store ptr %9, ptr %i.jd, align 8, !tbaa !106
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !107
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
end_hunk_7
