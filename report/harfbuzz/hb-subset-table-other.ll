Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN2OT9glyf_impl14CompositeGlyph25compile_bytes_with_deltasERK10hb_array_tIKcERK22contour_point_vector_tRS4_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.l = load i16, ptr %.ptr121, align 1, !tbaa !180
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32                     ; 4 uses
  %i.o = and i32 %i.n, 8
  %.not6.i6.i.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i6.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %i.n, 64
  %.not7.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not7.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = lshr i32 %i.n, 4
  %i.r = and i32 %i.q, 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sink.i.i.i = phi i32 [ %i.r, %bb.h ], [ 2, %bb.f ], [ 4, %bb.g ]
  %i.s = and i32 %i.n, 1
  %.not.i7.i.i = icmp eq i32 %i.s, 0
  %..i.i.i = select i1 %.not.i7.i.i, i32 6, i32 8
  %spec.select.i.i.i = add nuw nsw i32 %.sink.i.i.i, %..i.i.i ; 2 uses
  %.not.i.i = icmp ugt i32 %spec.select.i.i.i, %i.f
  br i1 %.not.i.i, label %_ZL9hb_memcpyPvPKvm.exit73, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = add nuw nsw i64 %.sroa.2.8.insert.ext, 10
  %i.w = add nuw nsw i64 %.sroa.2.8.insert.ext, 10
  br label %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit

_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit: ; preds = %bb.u, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 4 uses
  %.050104 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %bb.u ]
  %.055102 = phi ptr [ %i.i, %.lr.ph ], [ %.156, %bb.u ] ; 3 uses
  %.sroa.579.0101.idx = phi i64 [ 10, %.lr.ph ], [ %.sroa.579.0101.add, %bb.u ] ; 2 uses
  %.sroa.12.0100 = phi i32 [ %spec.select.i.i.i, %.lr.ph ], [ %spec.select.i.i.i.i, %bb.u ]
  %.sroa.579.0101.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.579.0101.idx ; 4 uses
  %i.x = load i32, ptr %i.t, align 4, !tbaa !311  ; 2 uses
  %i.y = add i32 %i.x, -4
  %i.z = zext i32 %i.y to i64
  %.not64 = icmp samesign ult i64 %indvars.iv, %i.z
  br i1 %.not64, label %bb.j, label %.thread92

bb.j:                                             ; preds = %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit
  %i.aa = load i16, ptr %.sroa.579.0101.ptr, align 1, !tbaa !180 ; 2 uses
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32                   ; 4 uses
  %i.ad = and i32 %i.ac, 8
  %.not6.i = icmp eq i32 %i.ad, 0
  br i1 %.not6.i, label %bb.k, label %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = and i32 %i.ac, 64
  %.not7.i = icmp eq i32 %i.ae, 0
  br i1 %.not7.i, label %bb.l, label %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit

bb.l:                                             ; preds = %bb.k
  %i.af = lshr i32 %i.ac, 4
  %i.ag = and i32 %i.af, 8
  %i.ah = zext nneg i32 %i.ag to i64
  br label %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit

_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sink.i65 = phi i64 [ %i.ah, %bb.l ], [ 2, %bb.j ], [ 4, %bb.k ]
  %i.ai = and i32 %i.ac, 1
  %.not.i = icmp eq i32 %i.ai, 0
  %..i66 = select i1 %.not.i, i64 6, i64 8
  %spec.select.i = add nuw nsw i64 %.sink.i65, %..i66 ; 3 uses
  %i.aj = trunc nuw nsw i64 %spec.select.i to i32
  %i.ak = and i16 %i.aa, 512
  %.not.i67 = icmp eq i16 %i.ak, 0
  br i1 %.not.i67, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.055102, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.579.0101.ptr, i64 %spec.select.i, i1 false), !alias.scope !1016
  br label %bb.o

bb.n:                                             ; preds = %_ZNK2OT9glyf_impl20CompositeGlyphRecord8get_sizeEv.exit
  %i.al = zext i32 %i.x to i64
  %.not.i69 = icmp samesign ult i64 %indvars.iv, %i.al
  %i.am = load ptr, ptr %i.u, align 8
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv
  %.0.i = select i1 %.not.i69, ptr %i.an, ptr @_hb_NullPool, !prof !175
  %i.ao = tail call noundef i32 @_ZNK2OT9glyf_impl20CompositeGlyphRecord18compile_with_pointERK15contour_point_tPc(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.579.0101.ptr, ptr noundef nonnull align 4 dereferenceable(12) %.0.i, ptr noundef %.055102)
  %i.ap = zext i32 %i.ao to i64
  br label %bb.o

.thread92:                                        ; preds = %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit
  tail call void @hb_free(ptr noundef nonnull %i.i) #15
  br label %bb.w

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi i64 [ %i.ap, %bb.n ], [ %spec.select.i, %bb.m ]
  %.156 = getelementptr inbounds nuw i8, ptr %.055102, i64 %.pn ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aq = add i32 %.050104, %i.aj                 ; 3 uses
  %i.ar = load i16, ptr %.sroa.579.0101.ptr, align 1, !tbaa !180
  %i.as = and i16 %i.ar, 8192
  %.not.i.i70 = icmp eq i16 %i.as, 0
  br i1 %.not.i.i70, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = zext nneg i32 %.sroa.12.0100 to i64
  %.sroa.579.0101.add = add nuw nsw i64 %.sroa.579.0101.idx, %i.at ; 5 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.579.0101.add
  %.not.i.i.i.i = icmp samesign ult i64 %.sroa.579.0101.add, 10
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not6.i.i.i.i = icmp samesign ule i64 %.sroa.579.0101.add, %i.v
  %gepdiff = sub nsw i64 %i.w, %.sroa.579.0101.add ; 2 uses
  %i.au = and i64 %gepdiff, 4294967292
  %i.av = icmp ne i64 %i.au, 0
  %or.cond.i.i.i = and i1 %.not6.i.i.i.i, %i.av
  br i1 %or.cond.i.i.i, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.aw = load i16, ptr %.ptr, align 1, !tbaa !180
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i32                   ; 4 uses
  %i.az = and i32 %i.ay, 8
  %.not6.i6.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not6.i6.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ba = and i32 %i.ay, 64
  %.not7.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not7.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bb = lshr i32 %i.ay, 4
  %i.bc = and i32 %i.bb, 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sink.i.i.i.i = phi i32 [ %i.bc, %bb.t ], [ 2, %bb.r ], [ 4, %bb.s ]
  %i.bd = and i32 %i.ay, 1
  %.not.i7.i.i.i = icmp eq i32 %i.bd, 0
  %..i.i.i.i = select i1 %.not.i7.i.i.i, i32 6, i32 8
  %spec.select.i.i.i.i = add nuw nsw i32 %.sink.i.i.i.i, %..i.i.i.i ; 2 uses
  %i.be = trunc i64 %gepdiff to i32
  %.not.i.i.i71 = icmp ugt i32 %spec.select.i.i.i.i, %i.be
  br i1 %.not.i.i.i71, label %._crit_edge, label %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit

._crit_edge:                                      ; preds = %bb.u, %bb.q, %bb.p, %bb.o
  %i.bf = icmp ugt i32 %i.f, %i.aq
  br i1 %i.bf, label %_ZL9hb_memcpyPvPKvm.exit73, label %bb.v

_ZL9hb_memcpyPvPKvm.exit73:                       ; preds = %bb.e, %bb.i, %._crit_edge
  %.050.lcssa120 = phi i32 [ %i.aq, %._crit_edge ], [ 0, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %.055.lcssa119 = phi ptr [ %.156, %._crit_edge ], [ %i.i, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.bg = sub nuw i32 %i.f, %.050.lcssa120
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = zext i32 %.050.lcssa120 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.ptr121, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.055.lcssa119, ptr nonnull readonly align 1 %i.bj, i64 %i.bh, i1 false), !alias.scope !1017
  %i.bk = getelementptr inbounds nuw i8, ptr %.055.lcssa119, i64 %i.bh
  br label %bb.v

bb.v:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit73, %._crit_edge
  %.459 = phi ptr [ %i.bk, %_ZL9hb_memcpyPvPKvm.exit73 ], [ %.156, %._crit_edge ]
  %i.bl = ptrtoint ptr %.459 to i64
  %i.bm = ptrtoint ptr %i.i to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  store ptr %i.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bo, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread92, %bb.d, %bb.c
  %.5 = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %.thread92 ], [ true, %bb.v ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT9glyf_impl11SimpleGlyph25compile_bytes_with_deltasERK22contour_point_vector_tbR10hb_array_tIKcE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !344, !nonnull !193
  %i.b = load i16, ptr %i.a, align 1, !tbaa !180
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !311  ; 2 uses
  %i.f = icmp ult i32 %i.e, 5
  br i1 %i.f, label %bb.c, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit115

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.b
  %i.g = add i32 %i.e, -4                         ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.h) #15 ; 5 uses
  %.not22.i.i = icmp eq ptr %i.i, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIhLb0EED2Ev.exit115, label %bb.d, !prof !133

bb.d:                                             ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i
  %i.j = shl i32 %i.g, 1                          ; 2 uses
  %.not19.i.i59.not = icmp eq i32 %i.j, 0         ; 2 uses
  br i1 %.not19.i.i59.not, label %.lr.ph, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i66

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i66: ; preds = %bb.d
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.k) #15 ; 3 uses
  %.not22.i.i67 = icmp eq ptr %i.l, null
  br i1 %.not22.i.i67, label %_ZN11hb_vector_tIhLb0EED2Ev.exit113, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i87, !prof !133

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i87: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i66
  %i.m = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.k) #15 ; 2 uses
  %.not22.i.i88 = icmp eq ptr %i.m, null
  br i1 %.not22.i.i88, label %bb.ab, label %.lr.ph, !prof !133

.lr.ph:                                           ; preds = %bb.d, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i87
  %.sroa.19.2.ph226.ph = phi ptr [ null, %bb.d ], [ %i.l, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i87 ] ; 5 uses
  %.sroa.18.2.ph = phi ptr [ null, %bb.d ], [ %i.m, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i87 ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !344, !nonnull !193
  %i.p = load i16, ptr %i.o, align 1, !tbaa !180
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = sext i16 %i.q to i32
  %i.s = shl nsw i32 %i.r, 1                      ; 3 uses
  %i.t = add nsw i32 %i.s, 2                      ; 3 uses
  %i.u = add nsw i32 %i.s, 12                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !345  ; 2 uses
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %_ZNK2OT9glyf_impl11SimpleGlyph19instructions_lengthEv.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %._crit_edge
  %i.y = add nsw i32 %i.s, 10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !180
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = add nsw i32 %i.u, %i.af
  %i.ah = icmp ugt i32 %i.ag, %i.w
  %spec.select.i = select i1 %i.ah, i32 0, i32 %i.af, !prof !74
  br label %_ZNK2OT9glyf_impl11SimpleGlyph19instructions_lengthEv.exit

_ZNK2OT9glyf_impl11SimpleGlyph19instructions_lengthEv.exit: ; preds = %._crit_edge, %bb.e
  %.1.i = phi i32 [ 0, %._crit_edge ], [ %spec.select.i, %bb.e ] ; 3 uses
  %i.ai = select i1 %2, i32 0, i32 %.1.i
  %i.aj = add i32 %.sroa.7.1, %.sroa.7150.1
  %i.ak = add i32 %i.aj, %.sroa.7177.1
  %i.al = add i32 %i.ak, %i.t
  %spec.select = add i32 %i.al, %i.ai             ; 2 uses
  %i.am = zext i32 %spec.select to i64
  %i.an = tail call ptr @hb_malloc(i64 noundef %i.am) #15 ; 4 uses
  %.not.not = icmp ne ptr %i.an, null             ; 3 uses
  br i1 %.not.not, label %bb.s, label %_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit, !prof !175

bb.f:                                             ; preds = %.lr.ph, %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit ] ; 2 uses
  %.054271 = phi i32 [ 0, %.lr.ph ], [ %i.bc, %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit ] ; 2 uses
  %.055270 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit ] ; 2 uses
  %.056269 = phi i32 [ 255, %.lr.ph ], [ %.3, %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit ] ; 3 uses
  %.sroa.7177.0268 = phi i32 [ 0, %.lr.ph ], [ %.sroa.7177.1, %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit ] ; 7 uses
  %.0206267 = phi i32 [ 0, %.lr.ph ], [ %.1207, %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit ] ; 3 uses
  %.sroa.7.0266 = phi i32 [ 0, %.lr.ph ], [ %.sroa.7.1, %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit ] ; 6 uses
  %.sroa.7150.0265 = phi i32 [ 0, %.lr.ph ], [ %.sroa.7150.1, %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit ] ; 6 uses
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !312
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %indvars.iv ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !346
  %i.as = and i8 %i.ar, -63
  %i.at = zext i8 %i.as to i32                    ; 3 uses
  %i.au = load float, ptr %i.ap, align 4, !tbaa !335
  %i.av = fadd float %i.au, 5.000000e-01
  %i.aw = tail call noundef float @llvm.floor.f32(float %i.av)
  %i.ax = fptosi float %i.aw to i32               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !336
  %i.ba = fadd float %i.az, 5.000000e-01
  %i.bb = tail call noundef float @llvm.floor.f32(float %i.ba)
  %i.bc = fptosi float %i.bb to i32               ; 3 uses
  %i.bd = sub nsw i32 %i.ax, %.055270             ; 5 uses
  %i.be = icmp eq i32 %.055270, %i.ax
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = or disjoint i32 %i.at, 16
  br label %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit

bb.h:                                             ; preds = %bb.f
  %i.bg = add i32 %i.bd, 255
  %or.cond.i = icmp ult i32 %i.bg, 511
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = icmp sgt i32 %i.bd, 0
  %.0203.v = select i1 %i.bh, i32 18, i32 2
  %.0203 = or disjoint i32 %.0203.v, %i.at
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bi = trunc nuw i32 %.0.i to i8
  %i.bj = add i32 %.sroa.7150.0265, 1
  %i.bk = zext i32 %.sroa.7150.0265 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.19.2.ph226.ph, i64 %i.bk
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !239
  br label %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bm = lshr i32 %i.bd, 8
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = add i32 %.sroa.7150.0265, 1
  %i.bp = zext i32 %.sroa.7150.0265 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.19.2.ph226.ph, i64 %i.bp
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !239
  %i.br = trunc i32 %i.bd to i8
  %i.bs = add i32 %.sroa.7150.0265, 2
  %i.bt = zext i32 %i.bo to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.19.2.ph226.ph, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !239
  br label %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit

_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit: ; preds = %bb.g, %bb.i, %bb.j
  %.sroa.7150.1 = phi i32 [ %.sroa.7150.0265, %bb.g ], [ %i.bj, %bb.i ], [ %i.bs, %bb.j ] ; 4 uses
  %.1204 = phi i32 [ %i.bf, %bb.g ], [ %.0203, %bb.i ], [ %i.at, %bb.j ] ; 3 uses
  %i.bv = sub nsw i32 %i.bc, %.054271             ; 5 uses
  %i.bw = icmp eq i32 %.054271, %i.bc
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit
  %i.bx = or i32 %.1204, 32
  br label %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit102

bb.l:                                             ; preds = %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit
  %i.by = add i32 %i.bv, 255
  %or.cond.i100 = icmp ult i32 %i.by, 511
  br i1 %or.cond.i100, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = icmp sgt i32 %i.bv, 0
  %.2205.v = select i1 %i.bz, i32 36, i32 4
  %.2205 = or i32 %.1204, %.2205.v
  %.0.i101 = tail call i32 @llvm.abs.i32(i32 %i.bv, i1 true)
  %i.ca = trunc nuw i32 %.0.i101 to i8
  %i.cb = add i32 %.sroa.7.0266, 1
  %i.cc = zext i32 %.sroa.7.0266 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.18.2.ph, i64 %i.cc
  store i8 %i.ca, ptr %i.cd, align 1, !tbaa !239
  br label %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit102

bb.n:                                             ; preds = %bb.l
  %i.ce = lshr i32 %i.bv, 8
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = add i32 %.sroa.7.0266, 1
  %i.ch = zext i32 %.sroa.7.0266 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.18.2.ph, i64 %i.ch
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !239
  %i.cj = trunc i32 %i.bv to i8
  %i.ck = add i32 %.sroa.7.0266, 2
  %i.cl = zext i32 %i.cg to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.18.2.ph, i64 %i.cl
  store i8 %i.cj, ptr %i.cm, align 1, !tbaa !239
  br label %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit102

_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit102: ; preds = %bb.k, %bb.m, %bb.n
  %.sroa.7.1 = phi i32 [ %.sroa.7.0266, %bb.k ], [ %i.cb, %bb.m ], [ %i.ck, %bb.n ] ; 4 uses
  %.3 = phi i32 [ %i.bx, %bb.k ], [ %.2205, %bb.m ], [ %.1204, %bb.n ] ; 3 uses
  %i.cn = icmp ne i32 %.3, %.056269
  %.not.i = icmp eq i32 %.0206267, 255
  %or.cond = select i1 %i.cn, i1 true, i1 %.not.i
  br i1 %or.cond, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit102
  %i.co = icmp eq i32 %.0206267, 0
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = add i32 %.sroa.7177.0268, 1
  br label %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit

bb.q:                                             ; preds = %bb.o
  %i.cq = add i32 %.0206267, 1                    ; 2 uses
  %i.cr = trunc nuw i32 %.056269 to i8
  %i.cs = or i8 %i.cr, 8
  %i.ct = add i32 %.sroa.7177.0268, -2
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cu
  store i8 %i.cs, ptr %i.cv, align 1, !tbaa !239
  %i.cw = add i32 %.sroa.7177.0268, -1
  br label %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit

bb.r:                                             ; preds = %_ZN2OT9glyf_impl11SimpleGlyph12encode_coordEiRjNS1_19simple_glyph_flag_tES3_R11hb_vector_tIhLb0EE.exit102
  %i.cx = add i32 %.sroa.7177.0268, 1
  br label %_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit

_ZN2OT9glyf_impl11SimpleGlyph11encode_flagEjRjjR11hb_vector_tIhLb0EE.exit: ; preds = %bb.p, %bb.q, %bb.r
  %.1207 = phi i32 [ 0, %bb.r ], [ 1, %bb.p ], [ %i.cq, %bb.q ]
  %.sroa.7177.1 = phi i32 [ %i.cx, %bb.r ], [ %i.cp, %bb.p ], [ %.sroa.7177.0268, %bb.q ] ; 4 uses
  %.sink23.i = phi i32 [ %.sroa.7177.0268, %bb.r ], [ %.sroa.7177.0268, %bb.p ], [ %i.cw, %bb.q ]
  %.sink.in.i = phi i32 [ %.3, %bb.r ], [ %.056269, %bb.p ], [ %i.cq, %bb.q ]
  %.sink.i = trunc i32 %.sink.in.i to i8
  %i.cy = zext i32 %.sink23.i to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cy
  store i8 %.sink.i, ptr %i.cz, align 1, !tbaa !239
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !1018

bb.s:                                             ; preds = %_ZNK2OT9glyf_impl11SimpleGlyph19instructions_lengthEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !347
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 10 ; 2 uses
  %i.dd = zext i32 %i.t to i64                    ; 3 uses
  %.not.i103 = icmp eq i32 %i.t, 0
  br i1 %.not.i103, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.t, !prof !74

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %i.dc, i64 %i.dd, i1 false), !alias.scope !1034
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.s, %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.dd ; 3 uses
  br i1 %2, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.df = zext nneg i32 %.1.i to i64              ; 2 uses
  %.not.i104 = icmp eq i32 %.1.i, 0
  br i1 %.not.i104, label %_ZL9hb_memcpyPvPKvm.exit105, label %bb.v, !prof !74

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull readonly align 1 %i.dg, i64 %i.df, i1 false), !alias.scope !1035
  br label %_ZL9hb_memcpyPvPKvm.exit105

_ZL9hb_memcpyPvPKvm.exit105:                      ; preds = %bb.u, %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  br label %bb.w

bb.w:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit105, %_ZL9hb_memcpyPvPKvm.exit
  %.0 = phi ptr [ %i.de, %_ZL9hb_memcpyPvPKvm.exit ], [ %i.dh, %_ZL9hb_memcpyPvPKvm.exit105 ] ; 2 uses
  %i.di = zext i32 %.sroa.7177.1 to i64           ; 2 uses
  %.not.i106 = icmp eq i32 %.sroa.7177.1, 0
  br i1 %.not.i106, label %_ZL9hb_memcpyPvPKvm.exit107, label %bb.x, !prof !74

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr nonnull readonly align 1 %i.i, i64 %i.di, i1 false), !alias.scope !1036
  br label %_ZL9hb_memcpyPvPKvm.exit107

_ZL9hb_memcpyPvPKvm.exit107:                      ; preds = %bb.w, %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %.0, i64 %i.di ; 2 uses
  %i.dk = zext i32 %.sroa.7150.1 to i64           ; 2 uses
  %.not.i108 = icmp eq i32 %.sroa.7150.1, 0
  br i1 %.not.i108, label %_ZL9hb_memcpyPvPKvm.exit109, label %bb.y, !prof !74

bb.y:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit107
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr readonly align 1 %.sroa.19.2.ph226.ph, i64 %i.dk, i1 false), !alias.scope !1037
  br label %_ZL9hb_memcpyPvPKvm.exit109

_ZL9hb_memcpyPvPKvm.exit109:                      ; preds = %_ZL9hb_memcpyPvPKvm.exit107, %bb.y
  %.not.i110 = icmp eq i32 %.sroa.7.1, 0
  br i1 %.not.i110, label %_ZL9hb_memcpyPvPKvm.exit111, label %bb.z, !prof !74

bb.z:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit109
  %i.dl = zext i32 %.sroa.7.1 to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr readonly align 1 %.sroa.18.2.ph, i64 %i.dl, i1 false), !alias.scope !1038
  br label %_ZL9hb_memcpyPvPKvm.exit111

_ZL9hb_memcpyPvPKvm.exit111:                      ; preds = %_ZL9hb_memcpyPvPKvm.exit109, %bb.z
  store ptr %i.an, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %spec.select, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit

_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit:      ; preds = %_ZL9hb_memcpyPvPKvm.exit111, %_ZNK2OT9glyf_impl11SimpleGlyph19instructions_lengthEv.exit
  br i1 %.not19.i.i59.not, label %_ZN11hb_vector_tIhLb0EED2Ev.exit113, label %bb.aa

bb.aa:                                            ; preds = %_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit
  tail call void @hb_free(ptr noundef %.sroa.18.2.ph) #15
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i87, %bb.aa
  %.1251.ph = phi i1 [ false, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i87 ], [ %.not.not, %bb.aa ]
  %.sroa.19.0250.ph = phi ptr [ %i.l, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i87 ], [ %.sroa.19.2.ph226.ph, %bb.aa ]
  tail call void @hb_free(ptr noundef %.sroa.19.0250.ph) #15
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit113

_ZN11hb_vector_tIhLb0EED2Ev.exit113:              ; preds = %bb.ab, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i66, %_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit
  %.1251258 = phi i1 [ %.1251.ph, %bb.ab ], [ false, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i66 ], [ %.not.not, %_ZN11hb_vector_tIhLb0EE11alloc_exactEj.exit ]
  tail call void @hb_free(ptr noundef nonnull %i.i) #15
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit115

_ZN11hb_vector_tIhLb0EED2Ev.exit115:              ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, %_ZN11hb_vector_tIhLb0EED2Ev.exit113, %bb.c
  %.2 = phi i1 [ true, %bb.c ], [ false, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i ], [ %.1251258, %_ZN11hb_vector_tIhLb0EED2Ev.exit113 ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9glyf_impl5Glyph20compile_header_bytesEPK16hb_subset_plan_tRK22contour_point_vector_tR10hb_array_tIKcE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.b = load i8, ptr %i.a, align 1, !tbaa !240, !range !169, !noundef !193
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp ne i32 %i.e, 0
  %not. = xor i1 %i.c, true
  %or.cond = select i1 %not., i1 %.not, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ugt i32 %i.g, 3
  %or.cond41 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond41, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 10) #15 ; 2 uses
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %bb.h, label %thread-pre-split, !prof !74

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i32, ptr %i.f, align 4, !tbaa !311
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.j = phi i32 [ %.pr, %thread-pre-split ], [ %i.g, %bb.a ] ; 2 uses
  %.033 = phi ptr [ %i.i, %thread-pre-split ], [ null, %bb.a ] ; 4 uses
  %i.k = icmp ugt i32 %i.j, 4
  br i1 %i.k, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !319
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.p = add i32 %i.j, -4                         ; 3 uses
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext i32 %i.p to i64
  %i.r = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = icmp eq i32 %i.p, 2
  br i1 %i.s, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.r, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %i.t = phi <4 x float> [ %i.o, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !319
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.x = fcmp ole <4 x float> %i.t, %i.w
  %i.y = fcmp oge <4 x float> %i.t, %i.w
  %i.z = shufflevector <4 x i1> %i.x, <4 x i1> %i.y, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aa = select <4 x i1> %i.z, <4 x float> %i.t, <4 x float> %i.w ; 3 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load <2 x float>, ptr %i.ac, align 4, !tbaa !319
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.af = fcmp ole <4 x float> %i.aa, %i.ae
  %i.ag = fcmp oge <4 x float> %i.aa, %i.ae
  %i.ah = shufflevector <4 x i1> %i.af, <4 x i1> %i.ag, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ai = select <4 x i1> %i.ah, <4 x float> %i.aa, <4 x float> %i.ae ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1039

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x float> [ %i.o, %.lr.ph.preheader ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod152 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !319
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.am = fcmp ole <4 x float> %.epil.init, %i.al
  %i.an = fcmp oge <4 x float> %.epil.init, %i.al
  %i.ao = shufflevector <4 x i1> %i.am, <4 x i1> %i.an, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ap = select <4 x i1> %i.ao, <4 x float> %.epil.init, <4 x float> %i.al
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.aq = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.o, %bb.d ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph.epil.preheader ]
  %i.ar = fadd <4 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ar) ; 2 uses
  %i.at = fcmp oge <4 x float> %i.as, splat (float -3.276800e+04)
  %i.au = select <4 x i1> %i.at, <4 x float> %i.as, <4 x float> splat (float -3.276800e+04) ; 2 uses
  %i.av = fcmp ole <4 x float> %i.au, splat (float 3.276700e+04)
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.au, <4 x float> splat (float 3.276700e+04)
  %i.ax = fptosi <4 x float> %i.aw to <4 x i32>   ; 5 uses
  %i.ay = extractelement <4 x i32> %i.ax, i64 0   ; 2 uses
  %i.az = extractelement <4 x i32> %i.ax, i64 1   ; 2 uses
  %i.ba = extractelement <4 x i32> %i.ax, i64 2   ; 2 uses
  %i.bb = extractelement <4 x i32> %i.ax, i64 3   ; 2 uses
end_hunk_0
