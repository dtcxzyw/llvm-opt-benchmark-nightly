inline.NumInlined: 7106
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN2OT18glyf_accelerator_tC2EP9hb_face_t:bb.a
  %.pre = load i32, ptr %i.d, align 4, !tbaa !162
  br label %_ZNK9hb_face_t14get_num_glyphsEv.exit

_ZNK9hb_face_t14get_num_glyphsEv.exit:            ; preds = %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EcvPKT_IS1_EEv.exit, %bb.ah
  %i.ct = phi i32 [ %.pre, %bb.ah ], [ %i.co, %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EcvPKT_IS1_EEv.exit ]
  %.0.i = phi i32 [ %i.cs, %bb.ah ], [ %i.cq, %_ZNK16hb_lazy_loader_tIN2OT18vmtx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj12EE9hb_face_tLj12ES1_EcvPKT_IS1_EEv.exit ]
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 %.0.i)
  store i32 %.sroa.speculated, ptr %i.d, align 4, !tbaa !346
  br label %_ZN2OT4glyf21has_valid_glyf_formatEPK9hb_face_t.exit.thread

_ZN2OT4glyf21has_valid_glyf_formatEPK9hb_face_t.exit.thread: ; preds = %_ZNK16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tEdeIS1_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_vEE5valueEvE4typeELPv0EEERKS9_v.exit.i, %_ZN2OT4glyf21has_valid_glyf_formatEPK9hb_face_t.exit, %_ZNK9hb_face_t14get_num_glyphsEv.exit
  ret void
}

declare hidden void @_Z30layout_populate_gids_to_retainP16hb_subset_plan_tP8hb_set_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL26_glyf_add_gid_and_childrenRKN2OT18glyf_accelerator_tEjP8hb_set_tij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 9                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !289  ; 3 uses
  %i.f = icmp ult i32 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !148  ; 3 uses
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i.i.i.i, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %i.c to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !290
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, %i.a
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.b, %bb.a
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.e, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.l = add nsw i32 %i.e, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.l, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.m = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.n = lshr i32 %i.m, 1                         ; 4 uses
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !290  ; 2 uses
  %i.s = icmp slt i32 %i.a, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.t = add nsw i32 %i.n, -1
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.a, %i.r
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nuw nsw i32 %i.n, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.e ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.e ], [ %i.t, %bb.c ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !302

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.d
  store atomic i32 %i.n, ptr %i.b monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.b
  %i.v = phi i64 [ %i.o, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.i, %bb.b ]
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !292 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !295
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = lshr i32 %1, 6
  %i.ad = and i32 %i.ac, 7
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !296
  %i.ah = and i32 %1, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 %i.ag, %i.ai
  %i.ak = trunc i64 %i.aj to i8
  %i.al = and i8 %i.ak, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.f, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.g
  %.0.i.i.i.i.i = phi i8 [ %i.al, %bb.g ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.an = load i8, ptr %i.am, align 8, !tbaa !33, !range !34, !noundef !35
  %.not = icmp eq i8 %i.an, %.0.i.i.i.i.i
  br i1 %.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = trunc nuw i8 %.0.i.i.i.i.i to i1
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !36

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ao, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ao, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.i, %bb.j
  %i.aq = add i32 %4, 1
  %i.ar = icmp ugt i32 %4, 64
  br i1 %i.ar, label %.loopexit, label %bb.k, !prof !36

bb.k:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.as = add nsw i32 %3, -1                      ; 9 uses
  %i.at = icmp slt i32 %3, 1
  br i1 %i.at, label %.loopexit, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !346, !noalias !585
  %.not.i = icmp ult i32 %1, %i.av
  br i1 %.not.i, label %bb.m, label %.loopexit, !prof !38

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !581, !range !34, !noalias !585, !noundef !35
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !271, !noalias !585 ; 2 uses
  %.not.i.i.i.i.i21 = icmp eq ptr %i.ba, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i21, ptr @_hb_NullPool, ptr %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !275, !noalias !585 ; 4 uses
  %i.bd = zext i32 %1 to i64                      ; 2 uses
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !44, !noalias !585
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = add nuw i32 %1, 1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !44, !noalias !585
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bo = zext i16 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !8, !noalias !585
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = add nuw i32 %1, 1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !8, !noalias !585
  %i.bx = tail call noundef i32 @llvm.bswap.i32(i32 %i.bw)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.018.i = phi i32 [ %i.bp, %bb.n ], [ %i.bx, %bb.o ] ; 3 uses
  %.0.i = phi i32 [ %i.bi, %bb.n ], [ %i.bs, %bb.o ] ; 3 uses
  %i.by = icmp ugt i32 %.0.i, %.018.i
  br i1 %i.by, label %.loopexit, label %bb.q, !prof !36

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !271, !noalias !585 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %i.ca ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !272, !noalias !585
  %i.cd = icmp ugt i32 %.018.i, %i.cc
  br i1 %i.cd, label %.loopexit, label %bb.r, !prof !36

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !275, !noalias !585
  %i.cg = zext i32 %.0.i to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg ; 5 uses
  %i.ci = sub i32 %.018.i, %.0.i                  ; 3 uses
  %.sroa.2.8.insert.ext.i = zext i32 %i.ci to i64
  %i.cj = icmp ult i32 %i.ci, 10
  %spec.select.i.i24.i = select i1 %i.cj, ptr @_hb_NullPool, ptr %i.ch ; 2 uses
  %i.ck = load i16, ptr %spec.select.i.i24.i, align 1, !tbaa !44, !noalias !585 ; 2 uses
  %i.cl = icmp eq i16 %i.ck, 0
  %i.cm = tail call i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cn = icmp sgt i16 %i.cm, 0
  %or.cond = or i1 %i.cl, %i.cn
  br i1 %or.cond, label %.loopexit, label %bb.s, !prof !520

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %spec.select.i.i24.i, i64 10 ; 5 uses
  %.not.i.i.i.i.i23 = icmp ugt ptr %i.ch, %i.co
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.2.8.insert.ext.i ; 2 uses
  %.not6.i.i.i.i.i = icmp ule ptr %i.co, %i.cp
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = and i64 %i.cs, 4294967292
  %i.cu = icmp ne i64 %i.ct, 0
  %or.cond.i.i.i.i = and i1 %.not6.i.i.i.i.i, %i.cu
  br i1 %or.cond.i.i.i.i, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cv = load i16, ptr %i.co, align 1, !tbaa !44, !noalias !588
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cx = zext i16 %i.cw to i32                   ; 4 uses
  %i.cy = and i32 %i.cx, 8
  %.not6.i6.i.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not6.i6.i.i.i.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cz = and i32 %i.cx, 64
  %.not7.i.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not7.i.i.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.da = lshr i32 %i.cx, 4
  %i.db = and i32 %i.da, 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.sink.i.i.i.i.i = phi i32 [ %i.db, %bb.w ], [ 2, %bb.u ], [ 4, %bb.v ]
  %i.dc = and i32 %i.cx, 1
  %.not.i7.i.i.i.i = icmp eq i32 %i.dc, 0
  %..i.i.i.i.i = select i1 %.not.i7.i.i.i.i, i32 6, i32 8
  %spec.select.i.i.i.i.i24 = add nuw nsw i32 %.sink.i.i.i.i.i, %..i.i.i.i.i ; 2 uses
  %i.dd = trunc i64 %i.cs to i32
  %.not.i.i.i.i = icmp ugt i32 %spec.select.i.i.i.i.i24, %i.dd
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.de = zext i32 %i.ci to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.de ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  br label %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit

_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit: ; preds = %bb.ad, %.lr.ph
  %.01957 = phi i32 [ %i.as, %.lr.ph ], [ %i.dl, %bb.ad ]
  %.sroa.529.056 = phi ptr [ %i.co, %.lr.ph ], [ %i.dp, %bb.ad ] ; 3 uses
  %.sroa.12.055 = phi i32 [ %spec.select.i.i.i.i.i24, %.lr.ph ], [ %spec.select.i.i.i.i, %bb.ad ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.529.056, i64 2
  %i.di = load i16, ptr %i.dh, align 1, !tbaa !44
  %i.dj = tail call noundef i16 @llvm.bswap.i16(i16 %i.di)
  %i.dk = zext i16 %i.dj to i32
  %i.dl = tail call fastcc noundef i32 @_ZL26_glyf_add_gid_and_childrenRKN2OT18glyf_accelerator_tEjP8hb_set_tij(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.dk, ptr noundef %2, i32 noundef %.01957, i32 noundef %i.aq) ; 5 uses
  %i.dm = load i16, ptr %.sroa.529.056, align 1, !tbaa !44
  %i.dn = and i16 %i.dm, 8192
  %.not.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit
  %i.do = zext nneg i32 %.sroa.12.055 to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.529.056, i64 %i.do ; 5 uses
  %.not.i.i.i.i25 = icmp ugt ptr %i.ch, %i.dp
  br i1 %.not.i.i.i.i25, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not6.i.i.i.i = icmp ule ptr %i.dp, %i.df
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dg, %i.dq                    ; 2 uses
  %i.ds = and i64 %i.dr, 4294967292
  %i.dt = icmp ne i64 %i.ds, 0
  %or.cond.i.i.i = and i1 %.not6.i.i.i.i, %i.dt
  br i1 %or.cond.i.i.i, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.du = load i16, ptr %i.dp, align 1, !tbaa !44
  %i.dv = tail call noundef i16 @llvm.bswap.i16(i16 %i.du)
  %i.dw = zext i16 %i.dv to i32                   ; 4 uses
  %i.dx = and i32 %i.dw, 8
  %.not6.i6.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not6.i6.i.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dy = and i32 %i.dw, 64
  %.not7.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not7.i.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dz = lshr i32 %i.dw, 4
  %i.ea = and i32 %i.dz, 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.sink.i.i.i.i = phi i32 [ %i.ea, %bb.ac ], [ 2, %bb.aa ], [ 4, %bb.ab ]
  %i.eb = and i32 %i.dw, 1
  %.not.i7.i.i.i = icmp eq i32 %i.eb, 0
  %..i.i.i.i = select i1 %.not.i7.i.i.i, i32 6, i32 8
  %spec.select.i.i.i.i = add nuw nsw i32 %.sink.i.i.i.i, %..i.i.i.i ; 2 uses
  %i.ec = trunc i64 %i.dr to i32
  %.not.i.i.i26 = icmp ugt i32 %spec.select.i.i.i.i, %i.ec
  br i1 %.not.i.i.i26, label %.loopexit, label %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit

.loopexit:                                        ; preds = %bb.ad, %bb.z, %bb.y, %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit, %bb.x, %bb.r, %bb.q, %bb.p, %bb.l, %bb.t, %bb.s, %bb.k, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %.0 = phi i32 [ %i.as, %bb.k ], [ %3, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ %3, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit ], [ %i.as, %bb.x ], [ %i.as, %bb.p ], [ %i.as, %bb.q ], [ %i.as, %bb.r ], [ %i.as, %bb.s ], [ %i.as, %bb.t ], [ %i.as, %bb.l ], [ %i.dl, %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit ], [ %i.dl, %bb.y ], [ %i.dl, %bb.z ], [ %i.dl, %bb.ad ]
  ret i32 %.0
}

declare hidden void @_Z32collect_layout_variation_indicesP16hb_subset_plan_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj1EE11call_createI9hb_blob_t22hb_table_lazy_loader_tIN2OT4headELj1ELb1EEEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store i32 0, ptr %1, align 8, !tbaa !341
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !342
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.c, i8 0, i64 33, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 0, ptr %i.g, align 1, !tbaa !343
  store i32 0, ptr %i.e, align 8, !tbaa !344
  store i8 1, ptr %i.f, align 4, !tbaa !345
  %i.h = tail call ptr @hb_face_reference_table(ptr noundef %i.b, i32 noundef 1751474532) #14
  %i.i = call noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4headEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef %i.h)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !342  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN22hb_table_lazy_loader_tIN2OT4headELj1ELb1EE6createEP9hb_face_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @hb_blob_destroy(ptr noundef nonnull %i.j) #14
  br label %_ZN22hb_table_lazy_loader_tIN2OT4headELj1ELb1EE6createEP9hb_face_t.exit

_ZN22hb_table_lazy_loader_tIN2OT4headELj1ELb1EE6createEP9hb_face_t.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tIN2OT4headE22hb_table_lazy_loader_tIS1_Lj1ELb1EE9hb_face_tLj1E9hb_blob_tE10do_destroyEPS5_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @hb_blob_get_empty() #14
  %.not3 = icmp eq ptr %0, %i.a
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hb_blob_destroy(ptr noundef nonnull %0) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4headEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_blob_reference(ptr noundef %1) #14 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !342
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.c, align 8, !tbaa !512
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !513
  %.pre2.i.i = load ptr, ptr %i.d, align 8, !tbaa !514
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !275  ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !514
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !272
end_hunk_0
begin_hunk_1_@_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t:bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.k = load i16, ptr %0, align 1, !tbaa !44     ; 2 uses
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %i.m = icmp eq i16 %i.k, 0
  br i1 %i.m, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext i16 %i.l to i32
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 5 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = load i32, ptr %i.g, align 8, !tbaa !515
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %.not6 = icmp ugt i64 %i.t, %i.v
  br i1 %.not6, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.a, align 1, !tbaa !10    ; 4 uses
  %i.x = add i8 %i.w, -1
  %or.cond = icmp ult i8 %i.x, 4
  br i1 %or.cond, label %bb.e, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = zext nneg i8 %i.w to i32
  %i.z = mul nuw nsw i32 %i.o, %i.y               ; 2 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !513
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = sub i64 %i.ab, %i.r
  %i.ad = trunc i64 %i.ac to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.z, %i.ad
  br i1 %.not12.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !516
  %i.ag = sub i32 %i.af, %i.z                     ; 3 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !516
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.f:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit
  %i.ai = zext nneg i8 %i.w to i64
  %i.aj = zext i16 %i.l to i64                    ; 5 uses
  %i.ak = add nuw nsw i64 %i.aj, 1
  %i.al = mul nuw nsw i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  switch i8 %i.w, label %default.unreachable [
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aj
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !10
  %i.ap = zext i8 %i.ao to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.aj
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !44
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.i:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.aj ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !73
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !73
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 8
  %i.bc = or disjoint i32 %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !73
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.j:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aj
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !8
  %i.bj = tail call noundef i32 @llvm.bswap.i32(i32 %i.bi)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

default.unreachable:                              ; preds = %bb.f
  unreachable

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.bj, %bb.j ], [ %i.ap, %bb.g ], [ %i.at, %bb.h ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bk = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.bl = sub i64 %i.bk, %i.s
  %.not.i = icmp ugt i64 %i.bl, %i.v
  %i.bm = sub i64 %i.ab, %i.bk
  %i.bn = trunc i64 %i.bm to i32
  %.not12.i = icmp ugt i32 %.0.i, %i.bn
  %or.cond10 = select i1 %.not.i, i1 true, i1 %.not12.i
  br i1 %or.cond10, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit
  %i.bo = sub i32 %i.ag, %.0.i                    ; 2 uses
  store i32 %i.bo, ptr %i.ae, align 4, !tbaa !516
  %i.bp = icmp sgt i32 %i.bo, 0
  br label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread: ; preds = %bb.k, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit, %bb.e, %bb.b, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, %bb.d, %bb.c, %bb.a
  %i.bq = phi i1 [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit ], [ %i.bp, %bb.k ], [ false, %bb.d ], [ false, %bb.c ], [ false, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit ]
  ret i1 %i.bq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE8get_sizeEv(ptr noundef nonnull align 1 dereferenceable(4) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !44     ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = add nuw nsw i64 %i.c, 1
  %i.h = mul nuw nsw i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 4 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.c
  %i.n = load i16, ptr %i.m, align 1, !tbaa !44
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [3 x i8], ptr %i.i, i64 %i.c ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !73
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !73
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = or disjoint i32 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !73
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.c
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !8
  %i.af = tail call noundef i32 @llvm.bswap.i32(i32 %i.ae)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.af, %bb.f ], [ %i.l, %bb.c ], [ %i.p, %bb.d ], [ %i.ac, %bb.e ], [ 0, %bb.b ]
  %i.ag = add i32 %.0.i, -1
  %i.ah = zext i32 %i.ag to i64
  %narrow = add nuw nsw i64 %i.h, 3
  %i.ai = add nuw nsw i64 %narrow, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit
  %.0 = phi i64 [ %i.ai, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit ], [ 2, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !44
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.b, label %.critedge, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 12 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread [
    i8 1, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread
    i8 2, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17
    i8 3, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20
    i8 4, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  ]

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread: ; preds = %bb.b
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %2 = zext nneg i32 %1 to i64
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 %2
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10
  %i.m = zext i8 %i.l to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17: ; preds = %bb.b
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.n
  %i.p = load i16, ptr %i.o, align 1, !tbaa !44
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %4
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !44
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.w = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.w ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !73
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !73
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !73
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %6 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !73
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !73
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !73
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23: ; preds = %bb.b
  %i.ax = zext nneg i32 %1 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !8
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %8
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !8
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  %.0.i16 = phi i32 [ %i.ba, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.j, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.r, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aj, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %.0.i10 = phi i32 [ %i.bd, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.m, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.v, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aw, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %i.be = icmp ult i32 %.0.i10, %.0.i16
  br i1 %i.be, label %.critedge, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, !prof !664

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread: ; preds = %bb.b, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11
  %.0.i1029 = phi i32 [ %.0.i10, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %.0.i1628 = phi i32 [ %.0.i16, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %i.bf = load i16, ptr %0, align 1, !tbaa !44
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf) ; 5 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !10
  %i.bk = zext i8 %i.bj to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.d:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bl = zext i16 %i.bg to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 1, !tbaa !44
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bp = zext i16 %i.bo to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.e:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bq = zext i16 %i.bg to i64
  %i.br = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.bq ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !73
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !73
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = or disjoint i32 %i.by, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !73
  %i.cc = zext i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.bz, %i.cc
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.f:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.ce = zext i16 %i.bg to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !8
  %i.ch = tail call noundef i32 @llvm.bswap.i32(i32 %i.cg)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i12 = phi i32 [ %i.ch, %bb.f ], [ %i.bk, %bb.c ], [ %i.bp, %bb.d ], [ %i.cd, %bb.e ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread ]
  %i.ci = icmp ugt i32 %.0.i1029, %.0.i12
  br i1 %i.ci, label %.critedge, label %bb.g, !prof !36

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13
  %i.cj = zext i8 %i.e to i64
  %i.ck = zext i16 %i.bg to i64
  %i.cl = add nuw nsw i64 %i.ck, 1
  %i.cm = mul nuw nsw i64 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.co = zext i32 %.0.i1628 to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  %i.cq = sub i32 %.0.i1029, %.0.i1628
  %.sroa.6.8.insert.ext = zext i32 %i.cq to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.cp, %bb.g ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ %.sroa.6.8.insert.ext, %bb.g ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 1 dereferenceable(6) ptr @_ZN3CFFL20StructAtOffsetOrNullINS_12CFF1FDSelectEJRKN2OT7NumTypeILb1EtLj2EEEEEERKT_PKviR21hb_sanitize_context_tDpOT0_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(62) %2, i16 %.0.val) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !514
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !515
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.not2 = icmp ugt i64 %i.g, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  br i1 %.not2, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %.0.val)
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.p = sub i64 %i.o, %i.f
  %.not.i = icmp ugt i64 %i.p, %i.j
  br i1 %.not.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %bb.d, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.q = load i8, ptr %i.b, align 1, !tbaa !10
  switch i8 %i.q, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread [
    i8 0, label %bb.e
    i8 3, label %.split
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !514
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.o, %i.s
  %i.u = load i32, ptr %i.h, align 8, !tbaa !515
  %i.v = zext i32 %i.u to i64
  %.not.i.i = icmp ugt i64 %i.t, %i.v
  br i1 %.not.i.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %bb.f, !prof !36

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !344  ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !514
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.o, %i.z
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !515
  %i.ac = zext i32 %i.ab to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %bb.g, !prof !518

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !513
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.o
  %i.ag = trunc i64 %i.af to i32
  %.not12.i.i.i.i.i = icmp ugt i32 %i.x, %i.ag
  br i1 %.not12.i.i.i.i.i, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit, !prof !518

.split:                                           ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.ah = tail call noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(5) %i.n, ptr noundef nonnull %2, i32 noundef %i.m)
  br i1 %i.ah, label %bb.h, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread

_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !516
  %i.ak = sub i32 %i.aj, %i.x                     ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !516
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread

_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread: ; preds = %bb.g, %bb.e, %bb.f, %bb.d, %bb.c, %.split, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.b, %bb.a, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread
  %.2 = phi ptr [ %i.b, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit ], [ @_hb_NullPool, %bb.a ], [ @_hb_NullPool, %_ZNK3CFF8FDSelect8sanitizeEP21hb_sanitize_context_tj.exit.thread ], [ @_hb_NullPool, %bb.b ], [ %i.b, %.split ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF18dict_interpreter_tINS_32cff1_private_dict_opset_subset_tENS_31cff1_private_dict_values_base_tINS_8op_str_tEEENS_12interp_env_tINS_8number_tEEEE9interpretERS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %1, align 8, !tbaa !647
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store ptr @_hb_NullPool, ptr %i.b, align 8, !tbaa !648
  %.pre = load ptr, ptr %0, align 8, !tbaa !665   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %.pre4 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !618
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre6 = load i32, ptr %.phi.trans.insert5, align 8, !tbaa !628
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit, %bb.a
  %i.c = phi i32 [ %i.x, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit ], [ %.pre6, %bb.a ] ; 2 uses
  %i.d = phi i32 [ %i.v, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit ], [ %.pre4, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.t, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit ], [ %.pre, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %.not = icmp ugt i32 %i.g, %i.c                 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_1
