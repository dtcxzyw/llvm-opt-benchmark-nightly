begin_hunk_0

bb.aw:                                            ; preds = %.lr.ph413, %._crit_edge409
  %.sroa.0270.0412 = phi ptr [ %i.lx, %.lr.ph413 ], [ %i.qc, %._crit_edge409 ] ; 6 uses
  %.sroa.0245.0413 = phi <2 x i64> [ undef, %.lr.ph413 ], [ %.sroa.0245.1, %._crit_edge409 ] ; 4 uses
  %i.mc = load ptr, ptr %.sroa.0270.0412, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8            ; 2 uses
end_hunk_0
begin_hunk_1
  %i.ot = load ptr, ptr %.sroa.0270.0412, align 8 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load i32, ptr %i.ou, align 8
  %.sroa.0245.0.vec.extract = extractelement <2 x i64> %.sroa.0245.0413, i64 0
  %i.ow = and i32 %i.ov, 65535
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = and i64 %.sroa.0245.0.vec.extract, 4294836224
  %i.oz = or disjoint i64 %i.oy, %i.ox
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  %i.pb = load i8, ptr %i.pa, align 8, !range !6, !noundef !7
end_hunk_1
begin_hunk_2
  %i.pe = or disjoint i64 %i.oz, %i.pd
  %i.pf = zext i32 %.0132 to i64
  %i.pg = shl nuw i64 %i.pf, 32
  %i.ph = or disjoint i64 %i.pe, %i.pg
  %.sroa.0245.0.vec.insert251 = insertelement <2 x i64> poison, i64 %i.ph, i64 0
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.pj = load i64, ptr %i.pi, align 8
  %.sroa.0245.8.vec.insert = insertelement <2 x i64> %.sroa.0245.0.vec.insert251, i64 %i.pj, i64 1 ; 2 uses
  %.sroa.0.0.copyload.i.i168 = load i64, ptr %i.lz, align 8 ; 2 uses
  %i.pk = load ptr, ptr %i.ht, align 8            ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
end_hunk_2
begin_hunk_3
_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit: ; preds = %bb.bi, %bb.bh
  %i.pt = load ptr, ptr %i.ht, align 8
  %i.pu = load ptr, ptr %i.pt, align 8
  %.sroa.8.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.sroa.0.0.copyload.i.i168
  store <2 x i64> %.sroa.0245.8.vec.insert, ptr %.sroa.8.0..sroa_idx247, align 1
  %i.pv = load i64, ptr %i.lz, align 8
  %i.pw = add nsw i64 %i.pv, 16
  store i64 %i.pw, ptr %i.lz, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details26dyld_chained_import_addendEvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details19dyld_chained_importEvEERS0_RKT_.exit, %bb.az
  %.sroa.0245.1 = phi <2 x i64> [ %.sroa.0245.0413, %bb.az ], [ %.sroa.0245.0413, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details19dyld_chained_importEvEERS0_RKT_.exit ], [ %.sroa.0245.0413, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details26dyld_chained_import_addendEvEERS0_RKT_.exit ], [ %.sroa.0245.8.vec.insert, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit ]
  %i.px = load ptr, ptr %.sroa.0270.0412, align 8 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 88
  %i.pz = load ptr, ptr %i.py, align 8            ; 2 uses
end_hunk_3
begin_hunk_4

bb.aw:                                            ; preds = %.lr.ph413, %._crit_edge409
  %.sroa.0270.0412 = phi ptr [ %i.lx, %.lr.ph413 ], [ %i.qc, %._crit_edge409 ] ; 6 uses
  %.sroa.0245.0413 = phi <2 x i64> [ undef, %.lr.ph413 ], [ %.sroa.0245.1, %._crit_edge409 ] ; 4 uses
  %i.mc = load ptr, ptr %.sroa.0270.0412, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8            ; 2 uses
end_hunk_4
begin_hunk_5
  %i.ot = load ptr, ptr %.sroa.0270.0412, align 8 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load i32, ptr %i.ou, align 8
  %.sroa.0245.0.vec.extract = extractelement <2 x i64> %.sroa.0245.0413, i64 0
  %i.ow = and i32 %i.ov, 65535
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = and i64 %.sroa.0245.0.vec.extract, 4294836224
  %i.oz = or disjoint i64 %i.oy, %i.ox
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  %i.pb = load i8, ptr %i.pa, align 8, !range !6, !noundef !7
end_hunk_5
begin_hunk_6
  %i.pe = or disjoint i64 %i.oz, %i.pd
  %i.pf = zext i32 %.0132 to i64
  %i.pg = shl nuw i64 %i.pf, 32
  %i.ph = or disjoint i64 %i.pe, %i.pg
  %.sroa.0245.0.vec.insert251 = insertelement <2 x i64> poison, i64 %i.ph, i64 0
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.pj = load i64, ptr %i.pi, align 8
  %.sroa.0245.8.vec.insert = insertelement <2 x i64> %.sroa.0245.0.vec.insert251, i64 %i.pj, i64 1 ; 2 uses
  %.sroa.0.0.copyload.i.i168 = load i64, ptr %i.lz, align 8 ; 2 uses
  %i.pk = load ptr, ptr %i.ht, align 8            ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
end_hunk_6
begin_hunk_7
_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit: ; preds = %bb.bi, %bb.bh
  %i.pt = load ptr, ptr %i.ht, align 8
  %i.pu = load ptr, ptr %i.pt, align 8
  %.sroa.8.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.sroa.0.0.copyload.i.i168
  store <2 x i64> %.sroa.0245.8.vec.insert, ptr %.sroa.8.0..sroa_idx247, align 1
  %i.pv = load i64, ptr %i.lz, align 8
  %i.pw = add nsw i64 %i.pv, 16
  store i64 %i.pw, ptr %i.lz, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details26dyld_chained_import_addendEvEERS0_RKT_.exit, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details19dyld_chained_importEvEERS0_RKT_.exit, %bb.az
  %.sroa.0245.1 = phi <2 x i64> [ %.sroa.0245.0413, %bb.az ], [ %.sroa.0245.0413, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details19dyld_chained_importEvEERS0_RKT_.exit ], [ %.sroa.0245.0413, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details26dyld_chained_import_addendEvEERS0_RKT_.exit ], [ %.sroa.0245.8.vec.insert, %_ZN4LIEF15vector_iostream5writeINS_5MachO7details28dyld_chained_import_addend64EvEERS0_RKT_.exit ]
  %i.px = load ptr, ptr %.sroa.0270.0412, align 8 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 88
  %i.pz = load ptr, ptr %i.py, align 8            ; 2 uses
end_hunk_7
