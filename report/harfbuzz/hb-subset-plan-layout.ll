Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-layout?download=true
inline.NumInlined: 8393
inline.NumDeleted: 3725
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_":bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !197, !alias.scope !636
  switch i32 %i.g, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSB_9GPOS_impl10MarkRecordEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_S3_S6_LDnEESM_.exit" [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.h = load i32, ptr %i.e, align 8, !tbaa !91, !alias.scope !636
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !172, !alias.scope !636
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i16, ptr %i.j, align 1, !tbaa !56
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i32
  %i.n = icmp ult i32 %i.h, %i.m
  br i1 %i.n, label %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEcvbEv.exit.i.i, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSB_9GPOS_impl10MarkRecordEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_S3_S6_LDnEESM_.exit"

_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEcvbEv.exit.i.i: ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i
  %i.o = load i32, ptr %i.c, align 8, !tbaa !230, !alias.scope !636
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSB_9GPOS_impl10MarkRecordEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_S3_S6_LDnEESM_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEcvbEv.exit.i.i
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !207, !alias.scope !636
  %i.q = load i32, ptr %0, align 8, !tbaa !197, !alias.scope !636
  switch i32 %i.q, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i [
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !216, !alias.scope !636 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i32, ptr %i.e, align 8, !tbaa !215, !alias.scope !636 ; 2 uses
  %i.u = load i16, ptr %i.s, align 1, !tbaa !56
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.t, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, !prof !79

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = zext nneg i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.aa = load i16, ptr %.0.i.i.i.i.i.i.i.i.i, align 1, !tbaa !56
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !217, !alias.scope !636
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i: ; preds = %bb.h, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.h ], [ %i.ac, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !156 ; 5 uses
  %i.af = lshr i32 %.0.i.i.i.i.i.i.i, 9           ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !78 ; 3 uses
  %i.ak = icmp ult i32 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74 ; 3 uses
  br i1 %i.ak, label %bb.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !prof !79

bb.i:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i
  %i.an = zext i32 %i.ah to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !81
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ap, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.i, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aj, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aq = add nsw i32 %i.aj, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ar = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.as = lshr i32 %i.ar, 1                       ; 4 uses
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !81 ; 2 uses
  %i.ax = icmp slt i32 %i.af, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = add nsw i32 %i.as, -1
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, %i.aw
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = add nuw nsw i32 %i.as, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.az, %bb.l ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.ay, %bb.j ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  store atomic i32 %i.as, ptr %i.ag monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.ba = phi i64 [ %i.at, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.an, %bb.i ]
  %.sink.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i, label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i", label %bb.n

bb.n:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !84
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = lshr i32 %.0.i.i.i.i.i.i.i, 6
  %i.bi = and i32 %i.bh, 7
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !86
  %i.bm = and i32 %.0.i.i.i.i.i.i.i, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 %i.bl, %i.bn
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = and i8 %i.bp, 1
  br label %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i"

"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i": ; preds = %bb.m, %bb.n, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i = phi i8 [ %i.bq, %bb.n ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.m ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !69, !range !70, !noundef !71
  %.not8.i.i = icmp eq i8 %i.bs, %.0.i.i.i.i.i.i.i5.i.i
  br i1 %.not8.i.i, label %bb.o, label %"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSB_9GPOS_impl10MarkRecordEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_S3_S6_LDnEESM_.exit"

bb.o:                                             ; preds = %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i"
  tail call void @_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.b, !llvm.loop !635

"_ZN24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNSB_9GPOS_impl10MarkRecordEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_S3_S6_LDnEESM_.exit": ; preds = %bb.b, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i, %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEcvbEv.exit.i.i, %"_ZNK4$_23clIRPK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS6_OS7_.exit.i.i"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT6Layout9GPOS_impl35Markclass_closure_and_remap_indexesERKNS0_6Common8CoverageERKNS1_9MarkArrayERK8hb_set_tP8hb_map_t(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %5 = alloca %struct.hb_set_t, align 8           ; 11 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  store atomic i32 1, ptr %5 monotonic, align 8
  store atomic i8 1, ptr %i.e monotonic, align 4
  store atomic ptr null, ptr %i.f monotonic, align 8
  store i8 1, ptr %i.g, align 8, !tbaa !63
  store i32 0, ptr %i.h, align 4, !tbaa !64
  store atomic i32 0, ptr %i.i monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.j, i8 0, i64 33, i1 false)
  %i.k = load i16, ptr %0, align 1, !tbaa !56, !noalias !647 ; 2 uses
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  switch i16 %i.l, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS4_9GPOS_impl10MarkRecordEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSK_0EEMSA_KFjvELSP_0ELSK_0EE9hb_sink_tIRSE_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSY_6item_tEEE5valueEvE4typeELSK_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISY_Efp_EEEOSY_OS13_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !647, !srcloc !53
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !647, !srcloc !53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !56, !noalias !647
  %.not.i.i.i.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !647, !srcloc !53
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !56, !noalias !647
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.m, align 1, !tbaa !56, !noalias !647
  %i.s = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !193

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.r, %bb.d ], [ 0, %bb.c ]
  %i.t = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !56, !noalias !647
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !647, !srcloc !53
  %.pre11.i.i.i.i.i = load i16, ptr %i.m, align 1, !tbaa !56, !noalias !647
  %i.v = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.w = load i16, ptr %i.o, align 1, !tbaa !56, !noalias !647
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w) ; 2 uses
  br i1 %i.v, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !193

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !647, !srcloc !53
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.r, %bb.e ]
  %i.y = phi i16 [ %i.u, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.x, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.x, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.o, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !56, !noalias !647
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = icmp ugt i16 %i.y, %i.ab
  br i1 %i.ac, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader", !prof !65

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.ad = load i16, ptr %i.m, align 1, !tbaa !56, !noalias !647
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader": ; preds = %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i.ph = phi i32 [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ], [ 0, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.7.0.i.ph = phi i32 [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ], [ %i.af, %bb.f ], [ 0, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 12 uses
  %i.ah = icmp eq i16 %i.k, 256                   ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i190 = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.an = load i16, ptr %1, align 1, !tbaa !56, !noalias !648 ; 2 uses
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %.sroa.37.sroa.0.0.extract.trunc = zext i16 %i.ao to i32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  %i.aq = load i16, ptr %i.ag, align 1, !tbaa !56
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i32
  %i.at = icmp samesign uge i32 %.sroa.7.0.i.ph, %i.as
  %.not.i.i.i233 = icmp eq i16 %i.an, 0
  %or.cond234 = select i1 %i.at, i1 true, i1 %.not.i.i.i233
  br i1 %or.cond234, label %.split.preheader.i, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader", %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit
  %.sroa.13.0239 = phi i32 [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit ], [ %.sroa.7.0.i.ph, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader" ] ; 9 uses
  %.sroa.22.0238 = phi i32 [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit ], [ 0, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader" ] ; 6 uses
  %.sroa.27.0237 = phi i32 [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit ], [ %.sroa.11.2.i.ph, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader" ] ; 6 uses
  %.sroa.34.0236 = phi ptr [ %i.dp, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit ], [ %i.ap, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader" ] ; 2 uses
  %.sroa.37.sroa.0.0235 = phi i32 [ %i.do, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit ], [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit.split.preheader" ] ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10
  br i1 %i.ah, label %bb.g, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.au = load i16, ptr %i.ag, align 1, !tbaa !56
  %i.av = tail call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0239, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i, !prof !79

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.ax = zext nneg i32 %.sroa.13.0239 to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ax
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.h ], [ @_hb_NullPool, %bb.g ]
  %i.az = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !56
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = zext i16 %i.ba to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i: ; preds = %.lr.ph, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bb, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.27.0237, %.lr.ph ] ; 3 uses
  %i.bc = lshr i32 %.0.i.i.i.i.i.i.i.i, 9         ; 3 uses
  %i.bd = load atomic i32, ptr %i.aj monotonic, align 8 ; 2 uses
  %i.be = load i32, ptr %i.ak, align 4, !tbaa !78 ; 3 uses
  %i.bf = icmp ult i32 %i.bd, %i.be
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !74 ; 3 uses
  br i1 %i.bf, label %bb.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !prof !79

bb.i:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i
  %i.bh = zext i32 %i.bd to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !81
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bj, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.i, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE9hb_pair_tIjRS9_EEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.be, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bk = add nsw i32 %i.be, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %i.bk, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bl = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = lshr i32 %i.bl, 1                       ; 4 uses
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !81 ; 2 uses
  %i.br = icmp slt i32 %i.bc, %i.bq
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bs = add nsw i32 %i.bm, -1
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bc, %i.bq
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = add nuw nsw i32 %i.bm, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.l ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.bs, %bb.j ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  store atomic i32 %i.bm, ptr %i.aj monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.bu = phi i64 [ %i.bn, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bh, %bb.i ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i190, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i, label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %bb.n

bb.n:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !84
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = lshr i32 %.0.i.i.i.i.i.i.i.i, 6
  %i.cc = and i32 %i.cb, 7
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !86
  %i.cg = and i32 %.0.i.i.i.i.i.i.i.i, 63
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = lshr i64 %i.cf, %i.ch
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = and i8 %i.cj, 1
  br label %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i": ; preds = %bb.m, %bb.n, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i.i = phi i8 [ %i.ck, %bb.n ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.m ]
  %i.cl = load i8, ptr %i.am, align 8, !tbaa !69, !range !70, !noundef !71
  %.not8.i.i.i = icmp eq i8 %i.cl, %.0.i.i.i.i.i.i.i5.i.i.i
  br i1 %.not8.i.i.i, label %bb.o, label %.split.preheader.i

bb.o:                                             ; preds = %"_ZNK4$_23clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"
  switch i16 %i.l, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit [
    i16 1, label %bb.p
    i16 2, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.cm = add nuw nsw i32 %.sroa.13.0239, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit

bb.q:                                             ; preds = %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.cn = load i16, ptr %i.ag, align 1, !tbaa !56
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32
  %.not.i.i.i.i.i20 = icmp ult i32 %.sroa.13.0239, %i.cp
  br i1 %.not.i.i.i.i.i20, label %bb.r, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !79

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.cq = zext nneg i32 %.sroa.13.0239 to i64
  %i.cr = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.cq
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi ptr [ %i.cr, %bb.r ], [ @_hb_Null_OT_RangeRecord, %bb.q ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.ct = load i16, ptr %i.cs, align 1, !tbaa !56
  %i.cu = tail call noundef i16 @llvm.bswap.i16(i16 %i.ct)
  %i.cv = zext i16 %i.cu to i32
  %.not.i.i.i.i = icmp ult i32 %.sroa.27.0237, %i.cv
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.cw = add nuw nsw i32 %.sroa.13.0239, 1       ; 4 uses
  %i.cx = load i16, ptr %i.ag, align 1, !tbaa !56
  %i.cy = tail call noundef i16 @llvm.bswap.i16(i16 %i.cx)
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = icmp ult i32 %i.cw, %i.cz
  br i1 %i.da, label %bb.t, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.db = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.dc = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 1, !tbaa !56
  %i.de = tail call noundef i16 @llvm.bswap.i16(i16 %i.dd)
  %i.df = zext i16 %i.de to i32
  %i.dg = getelementptr inbounds nuw [6 x i8], ptr %0, i64 %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i16, ptr %i.dh, align 1, !tbaa !56
  %i.dj = tail call noundef i16 @llvm.bswap.i16(i16 %i.di)
  %i.dk = zext i16 %i.dj to i32                   ; 3 uses
  %i.dl = add i32 %.sroa.22.0238, 1
  %.not1.i.i.i.i = icmp eq i32 %i.dl, %i.dk
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !79

bb.u:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.dm = add i32 %.sroa.22.0238, 1
  %i.dn = add nuw nsw i32 %.sroa.27.0237, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_9GPOS_impl10MarkRecordEEE8__next__Ev.exit

.sink.split.i.i.i.i:                              ; preds = %bb.t
end_hunk_0
