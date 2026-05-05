inline.NumInlined: 5152
inline.NumDeleted: 1417
begin_hunk_0_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO64EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a

bb.aw:                                            ; preds = %.lr.ph413, %._crit_edge409
  %.sroa.0270.0412 = phi ptr [ %i.mg, %.lr.ph413 ], [ %i.ql, %._crit_edge409 ] ; 6 uses
  %.sroa.0244.0411 = phi i64 [ undef, %.lr.ph413 ], [ %.sroa.0244.1, %._crit_edge409 ] ; 4 uses
  %i.ml = load ptr, ptr %.sroa.0270.0412, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO64EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a
  %i.pc = load ptr, ptr %.sroa.0270.0412, align 8 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pe = load i32, ptr %i.pd, align 8
  %i.pf = and i32 %i.pe, 65535
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = and i64 %.sroa.0244.0411, 4294836224
  %i.pi = or disjoint i64 %i.ph, %i.pg
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 40
  %i.pk = load i8, ptr %i.pj, align 8, !range !6, !noundef !7
end_hunk_1
begin_hunk_2_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO64EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a
  %i.pn = or disjoint i64 %i.pi, %i.pm
  %i.po = zext i32 %.0132 to i64
  %i.pp = shl nuw i64 %i.po, 32
  %i.pq = or disjoint i64 %i.pn, %i.pp            ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.ps = load i64, ptr %i.pr, align 8
  %.sroa.0.0.copyload.i.i168 = load i64, ptr %i.mi, align 8 ; 2 uses
  %i.pt = load ptr, ptr %i.ic, align 8            ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
end_hunk_2
begin_hunk_3_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO64EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a
_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit: ; preds = %bb.bi, %bb.bh
  %i.qc = load ptr, ptr %i.ic, align 8
  %i.qd = load ptr, ptr %i.qc, align 8
  %9 = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.sroa.0.0.copyload.i.i168 ; 2 uses
  store i64 %i.pq, ptr %9, align 1
  %.sroa.8.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ps, ptr %.sroa.8.0..sroa_idx247, align 1
  %i.qe = load i64, ptr %i.mi, align 8
  %i.qf = add nsw i64 %i.qe, 16
  store i64 %i.qf, ptr %i.mi, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details26dyld_chained_import_addendEvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details19dyld_chained_importEvEERS0_RKT_.exit, %bb.az
  %.sroa.0244.1 = phi i64 [ %.sroa.0244.0411, %bb.az ], [ %.sroa.0244.0411, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details19dyld_chained_importEvEERS0_RKT_.exit ], [ %.sroa.0244.0411, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details26dyld_chained_import_addendEvEERS0_RKT_.exit ], [ %i.pq, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit ]
  %i.qg = load ptr, ptr %.sroa.0270.0412, align 8 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 88
  %i.qi = load ptr, ptr %i.qh, align 8            ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO32EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a

bb.aw:                                            ; preds = %.lr.ph413, %._crit_edge409
  %.sroa.0270.0412 = phi ptr [ %i.mg, %.lr.ph413 ], [ %i.ql, %._crit_edge409 ] ; 6 uses
  %.sroa.0244.0411 = phi i64 [ undef, %.lr.ph413 ], [ %.sroa.0244.1, %._crit_edge409 ] ; 4 uses
  %i.ml = load ptr, ptr %.sroa.0270.0412, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8            ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO32EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a
  %i.pc = load ptr, ptr %.sroa.0270.0412, align 8 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pe = load i32, ptr %i.pd, align 8
  %i.pf = and i32 %i.pe, 65535
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = and i64 %.sroa.0244.0411, 4294836224
  %i.pi = or disjoint i64 %i.ph, %i.pg
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 40
  %i.pk = load i8, ptr %i.pj, align 8, !range !6, !noundef !7
end_hunk_5
begin_hunk_6_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO32EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a
  %i.pn = or disjoint i64 %i.pi, %i.pm
  %i.po = zext i32 %.0132 to i64
  %i.pp = shl nuw i64 %i.po, 32
  %i.pq = or disjoint i64 %i.pn, %i.pp            ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.ps = load i64, ptr %i.pr, align 8
  %.sroa.0.0.copyload.i.i168 = load i64, ptr %i.mi, align 8 ; 2 uses
  %i.pt = load ptr, ptr %i.ic, align 8            ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
end_hunk_6
begin_hunk_7_@_ZN4LIEF5MachO7Builder5buildINS0_7details7MachO32EEENS_10ok_error_tERNS0_17DyldChainedFixupsE:bb.a
_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit: ; preds = %bb.bi, %bb.bh
  %i.qc = load ptr, ptr %i.ic, align 8
  %i.qd = load ptr, ptr %i.qc, align 8
  %9 = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.sroa.0.0.copyload.i.i168 ; 2 uses
  store i64 %i.pq, ptr %9, align 1
  %.sroa.8.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ps, ptr %.sroa.8.0..sroa_idx247, align 1
  %i.qe = load i64, ptr %i.mi, align 8
  %i.qf = add nsw i64 %i.qe, 16
  store i64 %i.qf, ptr %i.mi, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details26dyld_chained_import_addendEvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details19dyld_chained_importEvEERS0_RKT_.exit, %bb.az
  %.sroa.0244.1 = phi i64 [ %.sroa.0244.0411, %bb.az ], [ %.sroa.0244.0411, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details19dyld_chained_importEvEERS0_RKT_.exit ], [ %.sroa.0244.0411, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details26dyld_chained_import_addendEvEERS0_RKT_.exit ], [ %i.pq, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit ]
  %i.qg = load ptr, ptr %.sroa.0270.0412, align 8 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 88
  %i.qi = load ptr, ptr %i.qh, align 8            ; 2 uses
end_hunk_7
