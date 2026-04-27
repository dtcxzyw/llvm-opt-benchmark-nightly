inline.NumInlined: 13950
inline.NumDeleted: 6687
begin_hunk_0_@_ZN6duckdb16PhysicalHashJoinC2ERNS_12PhysicalPlanERNS_15LogicalOperatorERNS_16PhysicalOperatorES6_NS_6vectorINS_13JoinConditionELb1ESaIS8_EEENS_8JoinTypeEm:bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.s) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  %.pre22 = load ptr, ptr %9, align 8, !tbaa !186 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %.not.i.i.i9 = icmp eq ptr %.pre22, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorImSaImEED2Ev.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.pre22) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit10

_ZNSt6vectorImSaImEED2Ev.exit10:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.g
end_hunk_0
begin_hunk_1_@_ZN6duckdb16PhysicalHashJoinC2ERNS_12PhysicalPlanERNS_15LogicalOperatorERNS_16PhysicalOperatorES6_NS_6vectorINS_13JoinConditionELb1ESaIS8_EEENS_8JoinTypeEm:bb.a
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb22JoinFilterPushdownInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #31
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #31
  %.pre = load ptr, ptr %9, align 8, !tbaa !186   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %.not.i.i.i20 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorImSaImEED2Ev.exit21, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit19
  call void @_ZdlPv(ptr noundef nonnull %.pre) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit21

_ZNSt6vectorImSaImEED2Ev.exit21:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit19, %bb.i
end_hunk_1
begin_hunk_2_@_ZN6duckdb24HashJoinRepartitionEvent8ScheduleEv:bb.a

_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE11_M_allocateEm.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre103.pre = load ptr, ptr %i.bw, align 8, !tbaa !1445
  %.pre.pre = load ptr, ptr %i.bv, align 8, !tbaa !1445
  store ptr %i.cg, ptr %1, align 8, !tbaa !2738
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !2741
  %6 = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cc ; 2 uses
  store ptr %6, ptr %i.ce, align 8, !tbaa !2742
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.d
  %i.ci = phi ptr [ %6, %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.d ]
  %i.cj = phi ptr [ %i.cg, %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.d ] ; 2 uses
  %i.ck = phi ptr [ %.pre103.pre, %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.bx, %bb.d ] ; 2 uses
  %i.cl = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_4TaskELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.by, %bb.d ] ; 2 uses
  %.not8596 = icmp eq ptr %i.cl, %i.ck
  %i.cm = insertelement <2 x ptr> poison, ptr %i.cj, i64 0
  %i.cn = insertelement <2 x ptr> %i.cm, ptr %i.ci, i64 1
end_hunk_2
