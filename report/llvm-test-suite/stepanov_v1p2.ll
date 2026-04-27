inline.NumInlined: 195
inline.NumDeleted: 111
begin_hunk_0_@_Z4testI14double_pointerdEvT_S1_T0_:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.03.07.i = phi ptr [ %i.k, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %.06.i = phi double [ %i.l, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8 ; 2 uses
  %.val1.i = load double, ptr %.sroa.03.07.i, align 8, !tbaa !8
  %i.l = fadd double %.06.i, %.val1.i             ; 2 uses
  %.not4.i = icmp eq ptr %i.k, %1
end_hunk_0
begin_hunk_1_@_Z4testI14Double_pointer6DoubleEvT_S2_T0_:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.k, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.03.08.i = phi double [ %i.l, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.val2.i = load double, ptr %.sroa.05.09.i, align 8, !tbaa !36
  %i.l = fadd double %.sroa.03.08.i, %.val2.i     ; 2 uses
  %.not6.i = icmp eq ptr %i.k, %1
end_hunk_1
begin_hunk_2_@_Z4testI16reverse_iteratorIS0_IPddEdEdEvT_S4_T0_:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.03.07.i = phi ptr [ %i.k, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %.06.i = phi double [ %i.l, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8 ; 2 uses
  %.val1.i = load double, ptr %.sroa.03.07.i, align 8, !tbaa !8
  %i.l = fadd double %.06.i, %.val1.i             ; 2 uses
  %.not4.i = icmp eq ptr %i.k, %1
end_hunk_2
begin_hunk_3_@_Z4testI16reverse_iteratorIS0_IP6DoubleS1_ES1_ES1_EvT_S5_T0_:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.k, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.03.08.i = phi double [ %i.l, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.val2.i = load double, ptr %.sroa.05.09.i, align 8, !tbaa !36
  %i.l = fadd double %.sroa.03.08.i, %.val2.i     ; 2 uses
  %.not6.i = icmp eq ptr %i.k, %1
end_hunk_3
begin_hunk_4_@_Z4testI16reverse_iteratorIS0_I14double_pointerdEdEdEvT_S4_T0_:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.03.07.i = phi ptr [ %i.k, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %.06.i = phi double [ %i.l, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8 ; 2 uses
  %.val1.i = load double, ptr %.sroa.03.07.i, align 8, !tbaa !8
  %i.l = fadd double %.06.i, %.val1.i             ; 2 uses
  %.not4.i = icmp eq ptr %i.k, %1
end_hunk_4
begin_hunk_5_@_Z4testI16reverse_iteratorIS0_I14Double_pointer6DoubleES2_ES2_EvT_S5_T0_:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.k, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.03.08.i = phi double [ %i.l, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %.val2.i = load double, ptr %.sroa.05.09.i, align 8, !tbaa !36
  %i.l = fadd double %.sroa.03.08.i, %.val2.i     ; 2 uses
  %.not6.i = icmp eq ptr %i.k, %1
end_hunk_5
