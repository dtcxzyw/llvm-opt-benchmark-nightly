inline.NumInlined: 1067
inline.NumDeleted: 575
begin_hunk_0_@_ZN2v88internal17ReadOnlyPromotion7PromoteEPNS0_7IsolateERKNS0_14SafepointScopeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS8_2EEEE:bb.a
  %i.jw = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 %i.jv) #18 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.jx = call i64 @_ZN2v88internal13ReadOnlySpace11AllocateRawEiNS0_19AllocationAlignmentE(ptr noundef nonnull align 8 dereferenceable(120) %.val, i32 noundef %i.jw, i8 noundef zeroext 0) #18 ; 3 uses
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %bb.an, label %_ZNK2v88internal16AllocationResult15ToObjectCheckedEv.exit.i, !prof !13

end_hunk_0
begin_hunk_1_@_ZN2v88internal17ReadOnlyPromotion7PromoteEPNS0_7IsolateERKNS0_14SafepointScopeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS8_2EEEE:bb.a
_ZNK2v88internal16AllocationResult15ToObjectCheckedEv.exit.i: ; preds = %.lr.ph.i
  store i64 %i.jx, ptr %9, align 8
  %i.jz = add i64 %i.jx, -1
  %i.ka = load i64, ptr %7, align 8
  %i.kb = add i64 %i.ka, -1
  %i.kc = sext i32 %i.jw to i64                   ; 2 uses
  %i.kd = lshr i64 %i.kc, 3                       ; 4 uses
  %i.ke = inttoptr i64 %i.jz to ptr               ; 3 uses
  %i.kf = inttoptr i64 %i.kb to ptr               ; 3 uses
  %i.kg = icmp eq i64 %i.kd, 0
  br i1 %i.kg, label %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i, label %.preheader.i.i.i.i.preheader.a

.preheader.i.i.i.i.preheader.a:                   ; preds = %_ZNK2v88internal16AllocationResult15ToObjectCheckedEv.exit.i
  %diff.check108 = icmp ult i32 %i.jw, 128
  br i1 %diff.check108, label %.preheader.i.i.i.i.preheader134, label %bb.ao

.preheader.i.i.i.i.preheader134:                  ; preds = %.preheader.i.i.i.i.preheader.a
  %xtraiter = and i64 %i.kd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol

.preheader.i.i.i.i.prol:                          ; preds = %.preheader.i.i.i.i.preheader134, %.preheader.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ki, %.preheader.i.i.i.i.prol ], [ %i.kf, %.preheader.i.i.i.i.preheader134 ] ; 2 uses
  %.08.i.i.i.i.prol = phi i64 [ %i.kh, %.preheader.i.i.i.i.prol ], [ %i.kd, %.preheader.i.i.i.i.preheader134 ]
  %.0.i.i.i.i.prol = phi ptr [ %i.kk, %.preheader.i.i.i.i.prol ], [ %i.ke, %.preheader.i.i.i.i.preheader134 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.preheader134 ]
  %i.kh = add nsw i64 %.08.i.i.i.i.prol, -1       ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal17ReadOnlyPromotion7PromoteEPNS0_7IsolateERKNS0_14SafepointScopeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS8_2EEEE:bb.a
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.prol, !llvm.loop !34

.preheader.i.i.i.i.prol.loopexit:                 ; preds = %.preheader.i.i.i.i.prol, %.preheader.i.i.i.i.preheader134
  %.09.i.i.i.i.unr = phi ptr [ %i.kf, %.preheader.i.i.i.i.preheader134 ], [ %i.ki, %.preheader.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi i64 [ %i.kd, %.preheader.i.i.i.i.preheader134 ], [ %i.kh, %.preheader.i.i.i.i.prol ]
  %.0.i.i.i.i.unr = phi ptr [ %i.ke, %.preheader.i.i.i.i.preheader134 ], [ %i.kk, %.preheader.i.i.i.i.prol ]
  %i.kl = icmp ult i32 %i.jw, 64
  br i1 %i.kl, label %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal17ReadOnlyPromotion7PromoteEPNS0_7IsolateERKNS0_14SafepointScopeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS8_2EEEE:bb.a
  %.not.i.i.i.i.7 = icmp eq i64 %i.lh, 0
  br i1 %.not.i.i.i.i.7, label %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i, label %.preheader.i.i.i.i, !llvm.loop !36

bb.ao:                                            ; preds = %.preheader.i.i.i.i.preheader.a
  %i.ll = and i64 %i.kc, -8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr align 1 %i.kf, i64 %i.ll, i1 false)
  br label %_ZN2v88internal4Heap9CopyBlockEmmm.exit.i

_ZN2v88internal4Heap9CopyBlockEmmm.exit.i:        ; preds = %.preheader.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i, %bb.ao, %_ZNK2v88internal16AllocationResult15ToObjectCheckedEv.exit.i
  %i.lm = call { ptr, i8 } @_ZNSt10_HashtableIN2v88internal6TaggedINS1_10HeapObjectEEESt4pairIKS4_S4_ESaIS7_ENSt8__detail10_Select1stENS1_6Object12KeyEqualSafeENSB_6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS4_SL_EEES5_INS9_14_Node_iteratorIS7_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 0 uses
  %i.ln = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1634), align 2, !range !11, !noundef !12
  %i.lo = trunc nuw i8 %i.ln to i1
end_hunk_3
begin_hunk_4_@llvm.assume
!33 = distinct !{!33, !15, !31}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
end_hunk_4
