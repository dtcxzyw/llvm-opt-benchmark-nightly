inline.NumInlined: 356
inline.NumDeleted: 183
begin_hunk_0_@_ZN6hermes11ScopeMerger13optimizeScopeEPNS_8FunctionEPNS_9ScopeDescE:bb.a
  br i1 %.not.not.i, label %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit, label %.lr.ph.i

_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit: ; preds = %.loopexit.i, %bb.b, %bb.a
  %.not6.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %.loopexit.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !10   ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit
  %3 = zext i32 %i.y to i64
  %i.z = add nuw nsw i64 %3, 63                   ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = and i64 %i.aa, 1073741816
end_hunk_0
begin_hunk_1_@_ZN6hermes11ScopeMerger13optimizeScopeEPNS_8FunctionEPNS_9ScopeDescE:bb.a
  %i.ad = lshr i64 %i.z, 6                        ; 2 uses
  %.idx.i.i42 = shl nuw nsw i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %.idx.i.i42, i1 false)
  %.pre = load i32, ptr %i.x, align 8, !tbaa !10  ; 2 uses
  %4 = zext i32 %.pre to i64
  %.not65 = icmp eq i32 %.pre, 0
  br i1 %.not65, label %bb.j, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %.pre.a = load i32, ptr %i.x, align 8, !tbaa !10 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes11ScopeMerger13optimizeScopeEPNS_8FunctionEPNS_9ScopeDescE:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %.3 = phi i8 [ %.058, %.lr.ph ], [ %.058, %bb.c ], [ %spec.select, %bb.d ] ; 3 uses
  %i.av = add nuw nsw i64 %.03857, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge63:                                    ; preds = %bb.m, %._crit_edge
end_hunk_2
begin_hunk_3_@_ZN6hermes11ScopeMerger13optimizeScopeEPNS_8FunctionEPNS_9ScopeDescE:bb.a
  store i32 %i.bi, ptr %i.x, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.f, %.lr.ph.preheader
  %.0.lcssa96101122 = phi i8 [ %.not6.i, %.lr.ph.preheader ], [ %.3, %.sink.split.i ], [ %.3, %bb.f ]
  %.idx = shl nuw nsw i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %.idx) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit, %bb.j
  %.0.lcssa9499121 = phi i8 [ %.0.lcssa96101122, %bb.j ], [ %.not6.i, %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit ]
  %i.bj = zext nneg i8 %.0.lcssa9499121 to i32
  ret i32 %i.bj

end_hunk_3
