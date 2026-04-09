inline.NumInlined: 2219
inline.NumDeleted: 425
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i: ; preds = %.preheader.i.i, %middle.block
  %.lcssa1412 = phi i64 [ %i.nj, %middle.block ], [ %i.nq, %.preheader.i.i ]
  %i.nt = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.nu = add i64 %.0811.i.i.i, 1
  %i.nv = add i64 %i.nu, %.lcssa1412              ; 2 uses
  %i.nw = invoke noundef ptr %i.nt(i64 noundef %i.nv)
          to label %.noexc41 unwind label %bb.bw  ; 4 uses

end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_117string_to_integerIjEET_PKcS3_S3_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ac = shl i32 %.048, 4
  %i.ad = add i32 %i.ac, -87
  %i.ae = add i32 %i.ad, %i.z
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
end_hunk_1
begin_hunk_2_@_ZN4pugi4impl12_GLOBAL__N_114strconv_escapeEPcRNS1_3gapE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.s = shl i32 %.072, 4
  %i.t = add i32 %i.s, -87
  %i.u = add i32 %i.t, %i.p
  br label %bb.h

bb.g:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm:bb.a
  %i.cw = and i32 %i.cv, 3072
  %i.cx = and i32 %i.co, 63
  %i.cy = or disjoint i32 %i.cx, %i.cv
  %3 = add nuw nsw i32 %i.cs, 67043328
  %i.cz = add nuw nsw i32 %3, %i.cu
  %i.da = or disjoint i32 %i.cz, %i.cw
  %i.db = lshr exact i32 %i.da, 10
  %i.dc = trunc i32 %i.db to i16
end_hunk_3
begin_hunk_4_@_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm:bb.a

.lr.ph.i24.i.preheader:                           ; preds = %bb.u
  %i.eg = ptrtoint ptr %i.ef to i64
  %4 = add i64 %i.eg, -2052
  %5 = sub i64 %4, %i.a                           ; 2 uses
  %i.eh = lshr i64 %5, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
end_hunk_4
begin_hunk_5_@_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw17remove_duplicatesEPNS1_15xpath_allocatorE:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.02734.i = phi i64 [ 0, %bb.n ], [ %i.bh, %bb.q ]
  %.02833.i = phi i64 [ %i.bc, %bb.n ], [ %i.bj, %bb.q ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.02833.i
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw17remove_duplicatesEPNS1_15xpath_allocatorE:bb.a
  br i1 %i.bg, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = add i64 %.02734.i, 1                    ; 3 uses
  %i.bi = add i64 %i.bh, %.02833.i
  %i.bj = and i64 %i.bi, %i.am
  %.not.not.i = icmp ugt i64 %i.bh, %i.am
  br i1 %.not.not.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.o, !llvm.loop !448

bb.r:                                             ; preds = %bb.o
end_hunk_6
begin_hunk_7_@_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw14push_back_growERKNS_10xpath_nodeEPNS1_15xpath_allocatorE:bb.a
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %i.i = lshr i64 %i.h, 1
  %i.j = add nsw i64 %i.h, 1
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = shl i64 %i.k, 4                          ; 4 uses
  %i.m = add i64 %i.g, 7
  %i.n = and i64 %i.m, -8                         ; 2 uses
end_hunk_7
