inline.NumInlined: 2118
inline.NumDeleted: 1345
begin_hunk_0_@_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE
define linkonce_odr void @_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector", align 8    ; 6 uses
  %4 = alloca %"class.duckdb::vector.757", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::unique_ptr.263", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !423
end_hunk_0
begin_hunk_1_@_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit, %bb.g
end_hunk_1
begin_hunk_2_@_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE:bb.a
  br label %bb.x

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit
  %6 = phi ptr [ null, %.lr.ph ], [ %9, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %7 = phi ptr [ null, %.lr.ph ], [ %10, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %8 = phi ptr [ null, %.lr.ph ], [ %11, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %.01438 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %.01438)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !148 ; 2 uses
  %.not.i.i = icmp eq ptr %8, %7
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.al, ptr %8, align 8, !tbaa !148
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.af, align 8, !tbaa !531
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.an = ptrtoint ptr %7 to i64
  %i.ao = ptrtoint ptr %6 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.n, label %_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE:bb.a
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #22
          to label %.noexc29 unwind label %.loopexit ; 5 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE:bb.a
  br i1 %i.az, label %bb.o, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc29
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %6, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.o, %.noexc29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %6, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %6) #20
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ax, ptr %4, align 8, !tbaa !534
  store ptr %i.ba, ptr %i.af, align 8, !tbaa !531
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av ; 2 uses
  store ptr %i.bb, ptr %i.ag, align 8, !tbaa !535
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.l
  %9 = phi ptr [ %i.ax, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %6, %bb.l ]
  %10 = phi ptr [ %i.bb, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %7, %bb.l ]
  %11 = phi ptr [ %i.ba, %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.am, %bb.l ]
  %i.bc = add nuw i64 %.01438, 1                  ; 2 uses
  %i.bd = load ptr, ptr %i.ac, align 8, !tbaa !147
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !146
end_hunk_4
begin_hunk_5_@_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE:bb.a

_ZNSt10unique_ptrIN6duckdb25GroupedAggregateHashTableESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.s, %_ZN6duckdb10unique_ptrINS_25GroupedAggregateHashTableESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb25GroupedAggregateHashTableEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bv = load ptr, ptr %4, align 8, !tbaa !534   ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit, label %bb.t

end_hunk_5
begin_hunk_6_@_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE:bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.pre = load ptr, ptr %4, align 8, !tbaa !534
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.u
  %12 = phi ptr [ %.pre, %bb.u ], [ %6, %bb.q ], [ %6, %.loopexit ], [ %6, %.loopexit.split-lp ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.bk, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i31 = icmp eq ptr %12, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit32, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPv(ptr noundef nonnull %12) #20
  br label %_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit32

_ZNSt6vectorIPN6duckdb24BoundAggregateExpressionESaIS2_EED2Ev.exit32: ; preds = %bb.v, %bb.w
end_hunk_6
begin_hunk_7_@llvm.umin.i64
!531 = !{!532, !533, i64 8}
!532 = !{!"_ZTSNSt12_Vector_baseIPN6duckdb24BoundAggregateExpressionESaIS2_EE17_Vector_impl_dataE", !533, i64 0, !533, i64 8, !533, i64 16}
!533 = !{!"p2 _ZTSN6duckdb24BoundAggregateExpressionE", !235, i64 0}
!534 = !{!532, !533, i64 0}
!535 = !{!532, !533, i64 16}
!536 = distinct !{!536, !15}
!537 = distinct !{null, null, null, null, null, null}
!538 = distinct !{null, null}
end_hunk_7
