Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev:bb.a
  br i1 %spec.select.i.i1.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !126
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !127
  tail call void @hb_free(ptr noundef %i.p) #10
  %.pre = load i32, ptr %i.e, align 8, !tbaa !122
  %i.q = add i32 %.pre, -1
  %i.r = icmp ult i32 %i.q, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !124
  tail call void @hb_free(ptr noundef %i.u) #10
  br label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN23hb_bit_set_invertible_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_Z23normalize_axes_locationP9hb_face_tP16hb_subset_plan_t(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %2 = alloca %struct.TripleDistances, align 8    ; 5 uses
  %3 = alloca %struct.Triple, align 16            ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.Triple, align 16            ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.hb_pair_t.204, align 8      ; 5 uses
  %6 = alloca %struct.Triple, align 8             ; 6 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.Triple, align 16            ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2388
  %i.j = load i32, ptr %i.i, align 4, !tbaa !128
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN11hb_vector_tIfLb0EED2Ev.exit455, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %.loopexit, !prof !129

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !130
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef ptr @hb_blob_get_empty() #10
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.q = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj18EE11call_createI9hb_blob_t22hb_table_lazy_loader_tIN2OT4fvarELj18ELb1EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not10.i.i.i, label %bb.f, label %bb.g, !prof !32

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef ptr @hb_blob_get_empty() #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.07.i.i.i = phi ptr [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 3 uses
  %i.s = cmpxchg weak ptr %i.l, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.t = extractvalue { ptr, i1 } %i.s, 1
  br i1 %i.t, label %.loopexit, label %bb.h, !prof !33

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN16hb_lazy_loader_tIN2OT4fvarE22hb_table_lazy_loader_tIS1_Lj18ELb1EE9hb_face_tLj18E9hb_blob_tE10do_destroyEPS5_(ptr noundef %.07.i.i.i)
  %i.u = load atomic ptr, ptr %i.l acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.c, label %.loopexit, !prof !131

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  %.19.ph.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.m, %bb.b ], [ %i.u, %bb.h ], [ %.07.i.i.i, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !79
  %i.z = icmp ult i32 %i.y, 16
  %spec.select.i.i.i.i.i = select i1 %i.z, ptr @_hb_NullPool, ptr %i.w ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 4
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !62 ; 2 uses
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = tail call i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 %i.ae
  %.0.i.i.i = select i1 %i.ac, ptr @_hb_NullPool, ptr %i.af, !prof !32 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 8
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !62 ; 3 uses
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 2 uses
  %.sroa.2.8.insert.ext.i.i = zext i16 %i.ai to i64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2352 ; 3 uses
  %.sroa.9697.8.extract.trunc709 = zext i16 %i.ai to i32 ; 15 uses
  %i.ak = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i32 noundef %.sroa.9697.8.extract.trunc709, i1 noundef zeroext false)
  br i1 %i.ak, label %bb.i, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread

_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread:     ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.al, align 8, !tbaa !132
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit455

bb.i:                                             ; preds = %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2356 ; 7 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !70 ; 3 uses
  %i.ao = icmp ult i32 %i.an, %.sroa.9697.8.extract.trunc709
  br i1 %i.ao, label %bb.j, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw nsw i32 %.sroa.9697.8.extract.trunc709, %i.an
  %i.aq = shl nuw nsw i32 %i.ap, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2360
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69
  %i.at = zext nneg i32 %i.an to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = zext nneg i32 %i.aq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 0, i64 %i.av, i1 false)
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

_ZN11hb_vector_tIiLb0EE6resizeEi.exit:            ; preds = %bb.i, %bb.j
  store i32 %.sroa.9697.8.extract.trunc709, ptr %i.am, align 4, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 20 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !132, !range !30, !noundef !31
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %_ZN11hb_vector_tIfLb0EED2Ev.exit455

bb.k:                                             ; preds = %_ZN11hb_vector_tIiLb0EE6resizeEi.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  %i.ba = load atomic ptr, ptr %i.az acquire, align 8 ; 2 uses
  %.not14.i.i.i187 = icmp eq ptr %i.ba, null
  br i1 %.not14.i.i.i187, label %.lr.ph.i.i.i190, label %_ZNK16hb_lazy_loader_tIN2OT4avarE22hb_table_lazy_loader_tIS1_Lj19ELb1EE9hb_face_tLj19E9hb_blob_tEptEv.exit, !prof !129

.lr.ph.i.i.i190:                                  ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %.lr.ph.i.i.i190
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !130
  %.not.i.i.i.i191 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i191, label %bb.m, label %bb.n, !prof !32

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call noundef ptr @hb_blob_get_empty() #10
  br label %_ZNK16hb_lazy_loader_tIN2OT4avarE22hb_table_lazy_loader_tIS1_Lj19ELb1EE9hb_face_tLj19E9hb_blob_tEptEv.exit

bb.n:                                             ; preds = %bb.l
  %i.be = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj19EE11call_createI9hb_blob_t22hb_table_lazy_loader_tIN2OT4avarELj19ELb1EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.az) ; 2 uses
  %.not10.i.i.i192 = icmp eq ptr %i.be, null
  br i1 %.not10.i.i.i192, label %bb.o, label %bb.p, !prof !32

bb.o:                                             ; preds = %bb.n
  %i.bf = tail call noundef ptr @hb_blob_get_empty() #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.07.i.i.i193 = phi ptr [ %i.bf, %bb.o ], [ %i.be, %bb.n ] ; 3 uses
  %i.bg = cmpxchg weak ptr %i.az, ptr null, ptr %.07.i.i.i193 acq_rel monotonic, align 8
  %i.bh = extractvalue { ptr, i1 } %i.bg, 1
  br i1 %i.bh, label %_ZNK16hb_lazy_loader_tIN2OT4avarE22hb_table_lazy_loader_tIS1_Lj19ELb1EE9hb_face_tLj19E9hb_blob_tEptEv.exit, label %bb.q, !prof !33

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN16hb_lazy_loader_tIN2OT4avarE22hb_table_lazy_loader_tIS1_Lj19ELb1EE9hb_face_tLj19E9hb_blob_tE10do_destroyEPS5_(ptr noundef %.07.i.i.i193)
  %i.bi = load atomic ptr, ptr %i.az acquire, align 8 ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i194, label %bb.l, label %_ZNK16hb_lazy_loader_tIN2OT4avarE22hb_table_lazy_loader_tIS1_Lj19ELb1EE9hb_face_tLj19E9hb_blob_tEptEv.exit, !prof !131

_ZNK16hb_lazy_loader_tIN2OT4avarE22hb_table_lazy_loader_tIS1_Lj19ELb1EE9hb_face_tLj19E9hb_blob_tEptEv.exit: ; preds = %bb.p, %bb.q, %bb.k, %bb.m
  %.19.ph.i.i.i188 = phi ptr [ %i.bd, %bb.m ], [ %i.ba, %bb.k ], [ %i.bi, %bb.q ], [ %.07.i.i.i193, %bb.p ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i188, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !78
  %i.bl = getelementptr inbounds nuw i8, ptr %.19.ph.i.i.i188, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !79
  %i.bn = icmp ult i32 %i.bm, 8
  %spec.select.i.i.i.i.i189 = select i1 %i.bn, ptr @_hb_NullPool, ptr %i.bk
  %i.bo = load i32, ptr %spec.select.i.i.i.i.i189, align 1
  %.not874 = icmp eq i32 %i.bo, 0                 ; 3 uses
  br i1 %.not874, label %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK16hb_lazy_loader_tIN2OT4avarE22hb_table_lazy_loader_tIS1_Lj19ELb1EE9hb_face_tLj19E9hb_blob_tEptEv.exit
  %.not.i456.not = icmp eq i16 %i.ah, 0
  br i1 %.not.i456.not, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread730, label %.preheader.i, !prof !33

.preheader.i:                                     ; preds = %bb.r, %.preheader.i
  %.043.i = phi i32 [ %i.br, %.preheader.i ], [ 0, %bb.r ] ; 2 uses
  %i.bp = lshr i32 %.043.i, 1
  %i.bq = add i32 %.043.i, 8
  %i.br = add i32 %i.bq, %i.bp                    ; 10 uses
  %i.bs = icmp ult i32 %i.br, %.sroa.9697.8.extract.trunc709
  br i1 %i.bs, label %.preheader.i, label %.thread.i, !llvm.loop !374

.thread.i:                                        ; preds = %.preheader.i
  %8 = icmp ugt i32 %i.br, 1073741823
  br i1 %8, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i, !prof !32

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.bt = shl nuw i32 %i.br, 2
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.bu) #10 ; 8 uses
  %.not22.i = icmp eq ptr %i.bv, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit, !prof !133

_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread:     ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i, %.thread.i
  store i8 0, ptr %i.aw, align 8, !tbaa !132
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit455

_ZN11hb_vector_tIfLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i
  %i.bw = shl nuw nsw i32 %.sroa.9697.8.extract.trunc709, 2
  %i.bx = zext nneg i32 %i.bw to i64              ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bv, i8 0, i64 %i.bx, i1 false)
  %i.by = load i8, ptr %i.aw, align 8, !tbaa !132, !range !30, !noundef !31
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.preheader.i463, label %_ZN11hb_vector_tIfLb0EED2Ev.exit453

_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread730:  ; preds = %bb.r
  %i.ca = load i8, ptr %i.aw, align 8, !tbaa !132, !range !30, !noundef !31
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %._crit_edge.thread1056, label %_ZN11hb_vector_tIfLb0EED2Ev.exit455

._crit_edge.thread1056:                           ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !19
  %.idx1008 = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 20
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %.idx1008
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  store i8 1, ptr %i.cd, align 4, !tbaa !121
  br label %bb.as

.preheader.i463:                                  ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit, %.preheader.i463
  %.043.i464 = phi i32 [ %i.cg, %.preheader.i463 ], [ 0, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit ] ; 2 uses
  %i.ce = lshr i32 %.043.i464, 1
  %i.cf = add i32 %.043.i464, 8
  %i.cg = add i32 %i.cf, %i.ce                    ; 8 uses
  %i.ch = icmp ult i32 %i.cg, %.sroa.9697.8.extract.trunc709
  br i1 %i.ch, label %.preheader.i463, label %.thread.i465, !llvm.loop !374

.thread.i465:                                     ; preds = %.preheader.i463
  %9 = icmp ugt i32 %i.cg, 1073741823
  br i1 %9, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200.thread, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i468, !prof !32

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i468: ; preds = %.thread.i465
  %i.ci = shl nuw i32 %i.cg, 2
  %i.cj = zext i32 %i.ci to i64
  %i.ck = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.cj) #10 ; 6 uses
  %.not22.i469 = icmp eq ptr %i.ck, null
  br i1 %.not22.i469, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200.thread, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200, !prof !133

_ZN11hb_vector_tIfLb0EE6resizeEi.exit200.thread:  ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i468, %.thread.i465
  store i8 0, ptr %i.aw, align 8, !tbaa !132
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit453

_ZN11hb_vector_tIfLb0EE6resizeEi.exit200:         ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i468
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ck, i8 0, i64 %i.bx, i1 false)
  %i.cl = load i8, ptr %i.aw, align 8, !tbaa !132, !range !30, !noundef !31
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %.preheader.i484, label %_ZN11hb_vector_tIfLb0EED2Ev.exit

.preheader.i484:                                  ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200, %.preheader.i484
  %.043.i485 = phi i32 [ %i.cp, %.preheader.i484 ], [ 0, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200 ] ; 2 uses
  %i.cn = lshr i32 %.043.i485, 1
  %i.co = add i32 %.043.i485, 8
  %i.cp = add i32 %i.co, %i.cn                    ; 6 uses
  %i.cq = icmp ult i32 %i.cp, %.sroa.9697.8.extract.trunc709
  br i1 %i.cq, label %.preheader.i484, label %.thread.i486, !llvm.loop !374

.thread.i486:                                     ; preds = %.preheader.i484
  %10 = icmp ugt i32 %i.cp, 1073741823
  br i1 %10, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204.thread, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i489, !prof !32

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i489: ; preds = %.thread.i486
  %i.cr = shl nuw i32 %i.cp, 2
  %i.cs = zext i32 %i.cr to i64
  %i.ct = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.cs) #10 ; 4 uses
  %.not22.i490 = icmp eq ptr %i.ct, null
  br i1 %.not22.i490, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204.thread, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204, !prof !133

_ZN11hb_vector_tIfLb0EE6resizeEi.exit204.thread:  ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i489, %.thread.i486
  store i8 0, ptr %i.aw, align 8, !tbaa !132
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit

_ZN11hb_vector_tIfLb0EE6resizeEi.exit204:         ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i489
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ct, i8 0, i64 %i.bx, i1 false)
  %.pre = load i8, ptr %i.aw, align 8, !tbaa !132, !range !30
  %i.cu = trunc nuw i8 %.pre to i1
  br i1 %i.cu, label %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022, label %bb.cu

_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022: ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !19
  br label %.lr.ph

_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit: ; preds = %_ZNK16hb_lazy_loader_tIN2OT4avarE22hb_table_lazy_loader_tIS1_Lj19ELb1EE9hb_face_tLj19E9hb_blob_tEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !19
  %.not.i.i890.not = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i890.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i8 1, ptr %i.cv, align 4, !tbaa !121
  br label %.critedge

.lr.ph:                                           ; preds = %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit
  %.sroa.0672.01040 = phi i32 [ %i.br, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022 ], [ 0, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit ] ; 2 uses
  %.sroa.14680.01039 = phi ptr [ %i.bv, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022 ], [ null, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit ] ; 3 uses
  %.sroa.0645.01038 = phi i32 [ %i.cg, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022 ], [ 0, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit ] ; 2 uses
  %.sroa.7648.01037 = phi i32 [ %.sroa.9697.8.extract.trunc709, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022 ], [ 0, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit ] ; 3 uses
  %.sroa.15654.01036 = phi ptr [ %i.ck, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022 ], [ null, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit ] ; 3 uses
  %.sroa.0621.01035 = phi i32 [ %i.cp, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022 ], [ 0, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit ] ; 2 uses
  %.sroa.14629.01033 = phi ptr [ %i.ct, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit.thread1022 ], [ null, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit ] ; 3 uses
  %.idx1031.pn = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 20
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %.idx1031.pn ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 2656
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 2408 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 2400 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 2396 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 2464
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 2704 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 2708 ; 3 uses
  %i.de = load i32, ptr @_hb_NullPool, align 16   ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 2712
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 2416
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 2360
  br label %bb.s

._crit_edge:                                      ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit232.thread
  %i.dm = xor i8 %.11511083, 1
  %i.dn = add i32 %.2149, 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  store i8 %i.dm, ptr %i.do, align 4, !tbaa !121
  br i1 %.not874, label %.critedge, label %bb.as

bb.s:                                             ; preds = %.lr.ph, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit232.thread
  %.0147895 = phi i32 [ 0, %.lr.ph ], [ %.2149, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit232.thread ] ; 5 uses
  %.0150894 = phi i8 [ 0, %.lr.ph ], [ %.11511083, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit232.thread ]
  %.sroa.0602.0893 = phi i32 [ 0, %.lr.ph ], [ %i.ky, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit232.thread ] ; 3 uses
  %.sroa.7604.0892 = phi ptr [ %.0.i.i.i, %.lr.ph ], [ %.sroa.7604.1, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit232.thread ] ; 2 uses
  %.sroa.11607.0891 = phi i32 [ %.sroa.9697.8.extract.trunc709, %.lr.ph ], [ %.sroa.11607.1, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit232.thread ] ; 3 uses
  %.not.i.i.i.i205.not = icmp eq i32 %.sroa.11607.0891, 0 ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i205.not, ptr @_hb_NullPool, ptr %.sroa.7604.0892, !prof !32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %.sroa.0602.0893, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.dp = load i32, ptr %spec.select.i.i.i.i, align 1, !tbaa !64
  %i.dq = call noundef i32 @llvm.bswap.i32(i32 %i.dp)
  store i32 %i.dq, ptr %i.c, align 4, !tbaa !19
  %i.dr = mul i32 %.sroa.0602.0893, -1640531535
  %i.ds = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dr, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 0 uses
  %i.dt = load ptr, ptr %i.cy, align 8, !tbaa !134 ; 7 uses
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val.i208 = load i32, ptr %i.c, align 4, !tbaa !19 ; 5 uses
  %i.du = mul i32 %.val.i208, 506952113
  %i.dv = and i32 %i.du, 1073741823
  %i.dw = load i32, ptr %i.cz, align 8, !tbaa !135
  %i.dx = urem i32 %i.dv, %i.dw                   ; 4 uses
  %i.dy = zext nneg i32 %i.dx to i64              ; 3 uses
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4            ; 2 uses
  %i.ec = and i32 %i.eb, 2
  %.not15.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i209

.lr.ph.i.i.i209:                                  ; preds = %bb.t
  %i.ed = load i32, ptr %i.da, align 4            ; 2 uses
  %i.ee = load i32, ptr %i.dz, align 4, !tbaa !19
  %i.ef = icmp eq i32 %i.ee, %.val.i208
  br i1 %i.ef, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread1078, label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.eg = load i32, ptr %i.em, align 4, !tbaa !19
  %i.eh = icmp eq i32 %i.eg, %.val.i208
  br i1 %i.eh, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit, label %.lr.ph.i.i, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i209, %bb.u
  %.01016.i20.i.i = phi i32 [ %i.ek, %bb.u ], [ %i.dx, %.lr.ph.i.i.i209 ]
  %.017.i19.i.i = phi i32 [ %i.ei, %bb.u ], [ 0, %.lr.ph.i.i.i209 ]
  %i.ei = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.ej = add i32 %i.ei, %.01016.i20.i.i
  %i.ek = and i32 %i.ej, %i.ed                    ; 2 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = and i32 %i.eo, 2
  %.not.i.i.i210 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i.i210, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %bb.u, !llvm.loop !3

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit: ; preds = %bb.u
  %i.eq = trunc i32 %i.eo to i1
  br i1 %i.eq, label %.lr.ph.i.i215, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread1078: ; preds = %.lr.ph.i.i.i209
  %i.er = trunc i32 %i.eb to i1
  br i1 %i.er, label %._crit_edge.i.i.thread, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

._crit_edge.i.i.thread:                           ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread1078
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.dy
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit

bb.v:                                             ; preds = %.lr.ph.i.i215
  %i.eu = load i32, ptr %i.fc, align 4, !tbaa !19
  %i.ev = icmp eq i32 %i.eu, %.val.i208
  br i1 %i.ev, label %._crit_edge.i.i, label %.lr.ph.i.i215, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %bb.v
  %.pre1141 = trunc i32 %.fr to i1
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.fb
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %spec.select = select i1 %.pre1141, ptr %i.ex, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit

.lr.ph.i.i215:                                    ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit, %bb.v
  %.01016.i13.i.i = phi i32 [ %i.fa, %bb.v ], [ %i.dx, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit ]
  %.017.i12.i.i = phi i32 [ %i.ey, %bb.v ], [ 0, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit ]
  %i.ey = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.ez = add i32 %i.ey, %.01016.i13.i.i
  %i.fa = and i32 %i.ez, %i.ed                    ; 2 uses
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4
  %.fr = freeze i32 %i.fe                         ; 2 uses
  %i.ff = and i32 %.fr, 2
  %.not.i.i.i216 = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i.i216, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit, label %bb.v, !llvm.loop !3

_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit:    ; preds = %.lr.ph.i.i215, %._crit_edge.i.i, %._crit_edge.i.i.thread
  %.0.i217 = phi ptr [ %i.et, %._crit_edge.i.i.thread ], [ %spec.select, %._crit_edge.i.i ], [ @_hb_NullPool, %.lr.ph.i.i215 ] ; 3 uses
  %i.fg = load double, ptr %.0.i217, align 8, !tbaa !138
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i217, i64 8
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !139 ; 2 uses
  %i.fj = fcmp oeq double %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i217, i64 16
  %i.fl = load double, ptr %i.fk, align 8
  %i.fm = fcmp oeq double %i.fi, %i.fl
  %i.fn = select i1 %i.fj, i1 %i.fm, i1 false
  br i1 %i.fn, label %.thread, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread1078, %bb.t, %bb.s, %_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit
  %.val.i218 = load i32, ptr %i.b, align 4, !tbaa !19
  %i.fo = mul i32 %.val.i218, -1640531535
  %i.fp = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.fo, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.fq = load i32, ptr %i.dd, align 4, !tbaa !58 ; 3 uses
  %i.fr = load i32, ptr %i.dc, align 8, !tbaa !59
  %.not.i219 = icmp slt i32 %i.fq, %i.fr
  br i1 %.not.i219, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread
  %i.fs = add i32 %i.fq, 1
  %i.ft = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i32 noundef %i.fs, i1 noundef zeroext false)
  br i1 %i.ft, label %..critedge_crit_edge.i, label %bb.x, !prof !33

..critedge_crit_edge.i:                           ; preds = %bb.w
  %.pre.i = load i32, ptr %i.dd, align 4, !tbaa !58
  br label %.critedge.i

bb.x:                                             ; preds = %bb.w
  store i32 %i.de, ptr @_hb_CrapPool, align 16
  br label %bb.y

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread
  %i.fu = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.fq, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ] ; 2 uses
  %i.fv = load ptr, ptr %i.df, align 8, !tbaa !60
  %i.fw = add i32 %i.fu, 1
  store i32 %i.fw, ptr %i.dd, align 4, !tbaa !58
  %i.fx = zext i32 %i.fu to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.fx
  %i.fz = load i32, ptr %i.c, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@_Z23normalize_axes_locationP9hb_face_tP16hb_subset_plan_t:bb.a
  %i.uh = load i8, ptr %i.aw, align 8, !tbaa !132, !range !30, !noundef !31
  %i.ui = trunc nuw i8 %i.uh to i1
  %i.uj = and i1 %i.ug, %i.ui                     ; 2 uses
  %i.uk = zext i1 %i.uj to i8
  store i8 %i.uk, ptr %i.aw, align 8, !tbaa !132
  br i1 %i.uj, label %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader, label %.critedge

_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader: ; preds = %bb.cf
  br i1 %.not.i.i890.not10211068, label %.critedge, label %.lr.ph930

.lr.ph930:                                        ; preds = %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 2408
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 2400
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 2396
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %i.up = load i32, ptr @_hb_NullPool, align 16   ; 5 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 2360
  %i.ut = bitcast i32 %i.up to float              ; 4 uses
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph930, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread
  %.sroa.0503.0928 = phi i32 [ 0, %.lr.ph930 ], [ %i.wu, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ] ; 8 uses
  %.sroa.7.0927 = phi ptr [ %.0.i.i.i, %.lr.ph930 ], [ %.sroa.7.1, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ] ; 2 uses
  %.sroa.11.0926 = phi i32 [ %.sroa.9697.8.extract.trunc709, %.lr.ph930 ], [ %.sroa.11.1, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ] ; 3 uses
  %.not.i.i.i.i418.not = icmp eq i32 %.sroa.11.0926, 0 ; 2 uses
  %spec.select.i.i.i.i419 = select i1 %.not.i.i.i.i418.not, ptr @_hb_NullPool, ptr %.sroa.7.0927, !prof !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.uu = load i32, ptr %spec.select.i.i.i.i419, align 1, !tbaa !64
  %i.uv = call noundef i32 @llvm.bswap.i32(i32 %i.uu) ; 5 uses
  store i32 %i.uv, ptr %i.h, align 4, !tbaa !19
  %i.uw = load ptr, ptr %i.ul, align 8, !tbaa !134 ; 3 uses
  %.not.i422 = icmp eq ptr %i.uw, null
  br i1 %.not.i422, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ux = mul i32 %i.uv, 506952113
  %i.uy = and i32 %i.ux, 1073741823
  %i.uz = load i32, ptr %i.um, align 8, !tbaa !135
  %i.va = urem i32 %i.uy, %i.uz                   ; 2 uses
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw [32 x i8], ptr %i.uw, i64 %i.vb ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  %i.ve = load i32, ptr %i.vd, align 4            ; 2 uses
  %i.vf = and i32 %i.ve, 2
  %.not15.i.i.i424 = icmp eq i32 %i.vf, 0
  br i1 %.not15.i.i.i424, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread, label %.lr.ph.i.i.i425

.lr.ph.i.i.i425:                                  ; preds = %bb.ch
  %i.vg = load i32, ptr %i.un, align 4
  %i.vh = load i32, ptr %i.vc, align 4, !tbaa !19
  %i.vi = icmp eq i32 %i.vh, %i.uv
  br i1 %i.vi, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433, label %.lr.ph.i.i426

bb.ci:                                            ; preds = %.lr.ph.i.i426
  %i.vj = load i32, ptr %i.vp, align 4, !tbaa !19
  %i.vk = icmp eq i32 %i.vj, %i.uv
  br i1 %i.vk, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433, label %.lr.ph.i.i426, !llvm.loop !3

.lr.ph.i.i426:                                    ; preds = %.lr.ph.i.i.i425, %bb.ci
  %.01016.i20.i.i427 = phi i32 [ %i.vn, %bb.ci ], [ %i.va, %.lr.ph.i.i.i425 ]
  %.017.i19.i.i428 = phi i32 [ %i.vl, %bb.ci ], [ 0, %.lr.ph.i.i.i425 ]
  %i.vl = add i32 %.017.i19.i.i428, 1             ; 2 uses
  %i.vm = add i32 %i.vl, %.01016.i20.i.i427
  %i.vn = and i32 %i.vm, %i.vg                    ; 2 uses
  %i.vo = zext i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [32 x i8], ptr %i.uw, i64 %i.vo ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vr = load i32, ptr %i.vq, align 4            ; 2 uses
  %i.vs = and i32 %i.vr, 2
  %.not.i.i.i429 = icmp eq i32 %i.vs, 0
  br i1 %.not.i.i.i429, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread, label %bb.ci, !llvm.loop !3

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433: ; preds = %bb.ci, %.lr.ph.i.i.i425
  %.lcssa17.i.i431 = phi i32 [ %i.ve, %.lr.ph.i.i.i425 ], [ %i.vr, %bb.ci ]
  %i.vt = trunc i32 %.lcssa17.i.i431 to i1
  br i1 %i.vt, label %bb.cj, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread

bb.cj:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %.not.i434 = icmp ult i32 %.sroa.0503.0928, %.sroa.7648.010161072 ; 2 uses
  br i1 %.not.i434, label %bb.cl, label %bb.ck, !prof !33

bb.ck:                                            ; preds = %bb.cj
  store i32 %i.up, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit439

bb.cl:                                            ; preds = %bb.cj
  %i.vu = zext nneg i32 %.sroa.0503.0928 to i64   ; 2 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14680.010181070, i64 %i.vu
  %.pre950 = load float, ptr %i.vv, align 4, !tbaa !142
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15654.010141073, i64 %i.vu
  %.pre951 = load float, ptr %i.vw, align 4, !tbaa !142
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit439

_ZN11hb_vector_tIfLb0EEixEi.exit439:              ; preds = %bb.ck, %bb.cl
  %.in1100 = phi float [ %i.ut, %bb.ck ], [ %.pre950, %bb.cl ]
  %i.vx = phi float [ %i.ut, %bb.ck ], [ %.pre951, %bb.cl ]
  %i.vy = insertelement <2 x float> poison, float %.in1100, i64 0
  %i.vz = insertelement <2 x float> %i.vy, float %i.vx, i64 1
  %i.wa = fpext <2 x float> %i.vz to <2 x double>
  %.not.i440 = icmp ult i32 %.sroa.0503.0928, %.sroa.7624.010121075
  br i1 %.not.i440, label %bb.cn, label %bb.cm, !prof !33

bb.cm:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit439
  store i32 %i.up, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit442

bb.cn:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit439
  %i.wb = zext i32 %.sroa.0503.0928 to i64
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14629.010101076, i64 %i.wb
  %.pre952 = load float, ptr %i.wc, align 4, !tbaa !142
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit442

_ZN11hb_vector_tIfLb0EEixEi.exit442:              ; preds = %bb.cm, %bb.cn
  %i.wd = phi float [ %i.ut, %bb.cm ], [ %.pre952, %bb.cn ]
  %i.we = fpext float %i.wd to double
  store <2 x double> %i.wa, ptr %7, align 16, !tbaa !143
  store double %i.we, ptr %i.uq, align 16, !tbaa !140
  %i.wf = mul i32 %i.uv, -1640531535
  %i.wg = call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE13set_with_hashIRKjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.uo, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %i.wf, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br i1 %.not.i434, label %bb.cp, label %bb.co, !prof !33

bb.co:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit442
  store i32 %i.up, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit446

bb.cp:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit442
  %i.wh = zext nneg i32 %.sroa.0503.0928 to i64
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15654.010141073, i64 %i.wh
  %.pre953 = load float, ptr %i.wi, align 4, !tbaa !142
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit446

_ZN11hb_vector_tIfLb0EEixEi.exit446:              ; preds = %bb.co, %bb.cp
  %i.wj = phi float [ %i.ut, %bb.co ], [ %.pre953, %bb.cp ] ; 2 uses
  %i.wk = fcmp oeq float %i.wj, 0.000000e+00
  %spec.store.select4 = select i1 %i.wk, float 0.000000e+00, float %i.wj ; 2 uses
  %i.wl = fcmp une float %spec.store.select4, 0.000000e+00
  br i1 %i.wl, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit446
  store i8 0, ptr %i.ur, align 1, !tbaa !120
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %_ZN11hb_vector_tIfLb0EEixEi.exit446
  %i.wm = fmul float %spec.store.select4, 1.638400e+04
  %i.wn = fadd float %i.wm, 5.000000e-01
  %i.wo = call noundef float @llvm.floor.f32(float %i.wn)
  %i.wp = fptosi float %i.wo to i32
  %i.wq = load i32, ptr %i.am, align 4, !tbaa !70
  %.not.i447 = icmp ult i32 %.sroa.0503.0928, %i.wq
  br i1 %.not.i447, label %bb.ct, label %bb.cs, !prof !33

bb.cs:                                            ; preds = %bb.cr
  store i32 %i.up, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit449

bb.ct:                                            ; preds = %bb.cr
  %i.wr = load ptr, ptr %i.us, align 8, !tbaa !69
  %i.ws = zext i32 %.sroa.0503.0928 to i64
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.ws
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit449

_ZN11hb_vector_tIiLb0EEixEi.exit449:              ; preds = %bb.cs, %bb.ct
  %.0.i448 = phi ptr [ @_hb_CrapPool, %bb.cs ], [ %i.wt, %bb.ct ]
  store i32 %i.wp, ptr %.0.i448, align 4, !tbaa !19
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread: ; preds = %.lr.ph.i.i426, %bb.ch, %bb.cg, %_ZN11hb_vector_tIiLb0EEixEi.exit449, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  %i.wu = add i32 %.sroa.0503.0928, 1
  %.sroa.11.1 = call i32 @llvm.usub.sat.i32(i32 %.sroa.11.0926, i32 1)
  %.sroa.7.1.idx = select i1 %.not.i.i.i.i418.not, i64 0, i64 20, !prof !32
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.sroa.7.0927, i64 %.sroa.7.1.idx ; 2 uses
  %.not.i.i416 = icmp ne ptr %.sroa.7.1, %i.lc
  %i.wv = icmp ugt i32 %.sroa.11.0926, 1
  %i.ww = or i1 %i.wv, %.not.i.i416
  br i1 %i.ww, label %bb.cg, label %.critedge

.critedge:                                        ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread, %._crit_edge.thread, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader, %bb.cc, %bb.cb, %bb.ca, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit372._crit_edge, %._crit_edge, %bb.bc, %bb.bb, %bb.ba, %bb.cf, %bb.ce, %bb.cd, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit280._crit_edge
  %.sroa.0621.010131055 = phi i32 [ %.sroa.0621.01035, %._crit_edge ], [ %.sroa.0621.010131074, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit280._crit_edge ], [ %.sroa.0621.010131074, %bb.cd ], [ %.sroa.0621.010131074, %bb.ce ], [ %.sroa.0621.010131074, %bb.cf ], [ %.sroa.0621.010131074, %bb.ba ], [ %.sroa.0621.010131074, %bb.bb ], [ %.sroa.0621.010131074, %bb.bc ], [ %.sroa.0621.010131074, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit372._crit_edge ], [ %.sroa.0621.010131074, %bb.ca ], [ %.sroa.0621.010131074, %bb.cb ], [ %.sroa.0621.010131074, %bb.cc ], [ %.sroa.0621.010131074, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader ], [ 0, %._crit_edge.thread ], [ %.sroa.0621.010131074, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ]
  %.sroa.0645.010171054 = phi i32 [ %.sroa.0645.01038, %._crit_edge ], [ %.sroa.0645.010171071, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit280._crit_edge ], [ %.sroa.0645.010171071, %bb.cd ], [ %.sroa.0645.010171071, %bb.ce ], [ %.sroa.0645.010171071, %bb.cf ], [ %.sroa.0645.010171071, %bb.ba ], [ %.sroa.0645.010171071, %bb.bb ], [ %.sroa.0645.010171071, %bb.bc ], [ %.sroa.0645.010171071, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit372._crit_edge ], [ %.sroa.0645.010171071, %bb.ca ], [ %.sroa.0645.010171071, %bb.cb ], [ %.sroa.0645.010171071, %bb.cc ], [ %.sroa.0645.010171071, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader ], [ 0, %._crit_edge.thread ], [ %.sroa.0645.010171071, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ]
  %.sroa.0672.010201053 = phi i32 [ %.sroa.0672.01040, %._crit_edge ], [ %.sroa.0672.010201069, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit280._crit_edge ], [ %.sroa.0672.010201069, %bb.cd ], [ %.sroa.0672.010201069, %bb.ce ], [ %.sroa.0672.010201069, %bb.cf ], [ %.sroa.0672.010201069, %bb.ba ], [ %.sroa.0672.010201069, %bb.bb ], [ %.sroa.0672.010201069, %bb.bc ], [ %.sroa.0672.010201069, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit372._crit_edge ], [ %.sroa.0672.010201069, %bb.ca ], [ %.sroa.0672.010201069, %bb.cb ], [ %.sroa.0672.010201069, %bb.cc ], [ %.sroa.0672.010201069, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader ], [ 0, %._crit_edge.thread ], [ %.sroa.0672.010201069, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ]
  %.sroa.14680.01019 = phi ptr [ %.sroa.14680.01039, %._crit_edge ], [ %.sroa.14680.010181070, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit280._crit_edge ], [ %.sroa.14680.010181070, %bb.cd ], [ %.sroa.14680.010181070, %bb.ce ], [ %.sroa.14680.010181070, %bb.cf ], [ %.sroa.14680.010181070, %bb.ba ], [ %.sroa.14680.010181070, %bb.bb ], [ %.sroa.14680.010181070, %bb.bc ], [ %.sroa.14680.010181070, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit372._crit_edge ], [ %.sroa.14680.010181070, %bb.ca ], [ %.sroa.14680.010181070, %bb.cb ], [ %.sroa.14680.010181070, %bb.cc ], [ %.sroa.14680.010181070, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader ], [ null, %._crit_edge.thread ], [ %.sroa.14680.010181070, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ]
  %.sroa.15654.01015 = phi ptr [ %.sroa.15654.01036, %._crit_edge ], [ %.sroa.15654.010141073, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit280._crit_edge ], [ %.sroa.15654.010141073, %bb.cd ], [ %.sroa.15654.010141073, %bb.ce ], [ %.sroa.15654.010141073, %bb.cf ], [ %.sroa.15654.010141073, %bb.ba ], [ %.sroa.15654.010141073, %bb.bb ], [ %.sroa.15654.010141073, %bb.bc ], [ %.sroa.15654.010141073, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit372._crit_edge ], [ %.sroa.15654.010141073, %bb.ca ], [ %.sroa.15654.010141073, %bb.cb ], [ %.sroa.15654.010141073, %bb.cc ], [ %.sroa.15654.010141073, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader ], [ null, %._crit_edge.thread ], [ %.sroa.15654.010141073, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ]
  %.sroa.14629.01011 = phi ptr [ %.sroa.14629.01033, %._crit_edge ], [ %.sroa.14629.010101076, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit280._crit_edge ], [ %.sroa.14629.010101076, %bb.cd ], [ %.sroa.14629.010101076, %bb.ce ], [ %.sroa.14629.010101076, %bb.cf ], [ %.sroa.14629.010101076, %bb.ba ], [ %.sroa.14629.010101076, %bb.bb ], [ %.sroa.14629.010101076, %bb.bc ], [ %.sroa.14629.010101076, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit372._crit_edge ], [ %.sroa.14629.010101076, %bb.ca ], [ %.sroa.14629.010101076, %bb.cb ], [ %.sroa.14629.010101076, %bb.cc ], [ %.sroa.14629.010101076, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader ], [ null, %._crit_edge.thread ], [ %.sroa.14629.010101076, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ]
  %.3 = phi i1 [ true, %._crit_edge ], [ false, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit280._crit_edge ], [ false, %bb.cd ], [ false, %bb.ce ], [ false, %bb.cf ], [ false, %bb.ba ], [ false, %bb.bb ], [ false, %bb.bc ], [ true, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit372._crit_edge ], [ true, %bb.ca ], [ true, %bb.cb ], [ true, %bb.cc ], [ true, %_ZNK9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tIKN2OT10AxisRecordEEE9hb_pair_tIjRS6_EE3endEv.exit415.preheader ], [ true, %._crit_edge.thread ], [ true, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit433.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204, %.critedge
  %.sroa.14629.1 = phi ptr [ %.sroa.14629.01011, %.critedge ], [ %i.ct, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204 ]
  %.sroa.0621.1 = phi i32 [ %.sroa.0621.010131055, %.critedge ], [ %i.cp, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204 ]
  %.sroa.15654.1 = phi ptr [ %.sroa.15654.01015, %.critedge ], [ %i.ck, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204 ] ; 2 uses
  %.sroa.0645.1 = phi i32 [ %.sroa.0645.010171054, %.critedge ], [ %i.cg, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204 ] ; 2 uses
  %.sroa.14680.1 = phi ptr [ %.sroa.14680.01019, %.critedge ], [ %i.bv, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204 ] ; 2 uses
  %.sroa.0672.1 = phi i32 [ %.sroa.0672.010201053, %.critedge ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204 ] ; 2 uses
  %.4 = phi i1 [ %.3, %.critedge ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204 ] ; 2 uses
  %.not = icmp eq i32 %.sroa.0621.1, 0
  br i1 %.not, label %_ZN11hb_vector_tIfLb0EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @hb_free(ptr noundef %.sroa.14629.1) #10
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit

_ZN11hb_vector_tIfLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204.thread, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200, %bb.cu, %bb.cv
  %.4860 = phi i1 [ %.4, %bb.cv ], [ %.4, %bb.cu ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200 ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204.thread ] ; 2 uses
  %.sroa.0672.1859 = phi i32 [ %.sroa.0672.1, %bb.cv ], [ %.sroa.0672.1, %bb.cu ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200 ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204.thread ] ; 2 uses
  %.sroa.14680.1858 = phi ptr [ %.sroa.14680.1, %bb.cv ], [ %.sroa.14680.1, %bb.cu ], [ %i.bv, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200 ], [ %i.bv, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204.thread ] ; 2 uses
  %.sroa.0645.1857 = phi i32 [ %.sroa.0645.1, %bb.cv ], [ %.sroa.0645.1, %bb.cu ], [ %i.cg, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200 ], [ %i.cg, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204.thread ]
  %.sroa.15654.1856 = phi ptr [ %.sroa.15654.1, %bb.cv ], [ %.sroa.15654.1, %bb.cu ], [ %i.ck, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200 ], [ %i.ck, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit204.thread ]
  %.not990 = icmp eq i32 %.sroa.0645.1857, 0
  br i1 %.not990, label %_ZN11hb_vector_tIfLb0EED2Ev.exit453, label %bb.cw

bb.cw:                                            ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit
  call void @hb_free(ptr noundef %.sroa.15654.1856) #10
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit453

_ZN11hb_vector_tIfLb0EED2Ev.exit453:              ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200.thread, %_ZN11hb_vector_tIfLb0EED2Ev.exit, %bb.cw
  %.sroa.14680.1858869 = phi ptr [ %.sroa.14680.1858, %bb.cw ], [ %.sroa.14680.1858, %_ZN11hb_vector_tIfLb0EED2Ev.exit ], [ %i.bv, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit ], [ %i.bv, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200.thread ]
  %.sroa.0672.1859868 = phi i32 [ %.sroa.0672.1859, %bb.cw ], [ %.sroa.0672.1859, %_ZN11hb_vector_tIfLb0EED2Ev.exit ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit ], [ %i.br, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200.thread ]
  %.4860867 = phi i1 [ %.4860, %bb.cw ], [ %.4860, %_ZN11hb_vector_tIfLb0EED2Ev.exit ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit200.thread ] ; 2 uses
  %.not991 = icmp eq i32 %.sroa.0672.1859868, 0
  br i1 %.not991, label %_ZN11hb_vector_tIfLb0EED2Ev.exit455, label %bb.cx

bb.cx:                                            ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit453
  call void @hb_free(ptr noundef %.sroa.14680.1858869) #10
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit455

_ZN11hb_vector_tIfLb0EED2Ev.exit455:              ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread730, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread, %_ZN11hb_vector_tIfLb0EED2Ev.exit453, %bb.cx, %bb.a
  %.6 = phi i1 [ true, %bb.a ], [ false, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread ], [ false, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %.4860867, %_ZN11hb_vector_tIfLb0EED2Ev.exit453 ], [ %.4860867, %bb.cx ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread ], [ false, %_ZN11hb_vector_tIfLb0EE6resizeEi.exit.thread730 ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58   ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !59
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, 1
  %i.e = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %..critedge_crit_edge, label %bb.c, !prof !33

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !58
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.f, ptr @_hb_CrapPool, align 16
  br label %bb.d

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.j = add i32 %i.g, 1
  store i32 %i.j, ptr %i.a, align 4, !tbaa !58
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !19
  store i32 %i.m, ptr %i.l, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.0 = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.l, %.critedge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4avar15map_coords_2_14EPfjb(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br i1 %3, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %_ZN11hb_vector_tIiLb0EED2Ev.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  %.not.i50.not = icmp eq i32 %2, 0
  br i1 %.not.i50.not, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread, label %.preheader.i, !prof !33

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.043.i = phi i32 [ %i.d, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %i.b = lshr i32 %.043.i, 1
  %i.c = add nuw i32 %.043.i, 8
  %i.d = add nuw i32 %i.c, %i.b                   ; 4 uses
  %i.e = icmp ugt i32 %2, %i.d
  br i1 %i.e, label %.preheader.i, label %.thread.i, !llvm.loop !4

.thread.i:                                        ; preds = %.preheader.i
  %i.f = icmp ugt i32 %i.d, 1073741823
  br i1 %i.f, label %_ZN11hb_vector_tIiLb0EED2Ev.exit, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, !prof !32

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.g = shl nuw i32 %i.d, 2
  %i.h = zext i32 %i.g to i64
  %i.i = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.h) #10 ; 3 uses
  %.not22.i = icmp eq ptr %i.i, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIiLb0EED2Ev.exit, label %bb.d, !prof !133

bb.d:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  %i.j = shl nuw i32 %2, 2
  %i.k = zext i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.k, i1 false)
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread

_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread:     ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.14.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %2, %bb.d ] ; 3 uses
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %.val40 = load i16, ptr %i.l, align 1, !tbaa !62
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %.val40)
  %i.n = zext i16 %i.m to i32
  %spec.select.i = tail call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %2, i32 %i.n) ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not = icmp eq i32 %spec.select.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread
  %i.p = load i32, ptr @_hb_NullPool, align 16
  %i.q = zext nneg i32 %.sroa.7.0 to i64
  %wide.trip.count = zext nneg i32 %spec.select.i to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.i, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread
  %.037.lcssa = phi ptr [ %i.o, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit.thread ], [ %i.ag, %bb.i ] ; 3 uses
  br i1 %3, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, label %bb.j

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.037107 = phi ptr [ %i.o, %.lr.ph ], [ %i.ag, %bb.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !142
  %i.t = tail call noundef float @_ZNK2OT11SegmentMaps9map_floatEfjj(ptr noundef nonnull align 1 dereferenceable(6) %.037107, float noundef %i.s, i32 noundef 0, i32 noundef 1)
  %i.u = fmul float %i.t, 1.638400e+04
  %i.v = fadd float %i.u, 5.000000e-01
  %i.w = tail call noundef float @llvm.floor.f32(float %i.v)
  %i.x = fptosi float %i.w to i32                 ; 2 uses
  br i1 %3, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.q
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !33

bb.g:                                             ; preds = %bb.f
  store i32 %i.p, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.0, i64 %indvars.iv
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

_ZN11hb_vector_tIiLb0EEixEi.exit:                 ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.y, %bb.h ]
  store i32 %i.x, ptr %.0.i, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit, %bb.e
  %i.z = sitofp i32 %i.x to float
  %i.aa = fmul nnan float %i.z, f0x38800000
  store float %i.aa, ptr %i.r, align 4, !tbaa !142
  %i.ab = load i16, ptr %.037107, align 1, !tbaa !62
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %.037107, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !406

bb.j:                                             ; preds = %._crit_edge
  %i.ah = load i16, ptr %0, align 1, !tbaa !62
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = icmp ult i16 %i.ai, 2
  br i1 %i.aj, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.ak = load i16, ptr %i.l, align 1, !tbaa !62
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32                   ; 4 uses
  %i.an = icmp samesign ult i32 %spec.select.i, %i.am
  br i1 %i.an, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %bb.k
  %i.ao = sub nuw nsw i32 %i.am, %spec.select.i
  %xtraiter = and i32 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader, %.lr.ph112.prol
  %.138110.prol = phi ptr [ %i.au, %.lr.ph112.prol ], [ %.037.lcssa, %.lr.ph112.preheader ] ; 2 uses
  %.039109.prol = phi i32 [ %i.av, %.lr.ph112.prol ], [ %spec.select.i, %.lr.ph112.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph112.prol ], [ 0, %.lr.ph112.preheader ]
  %i.ap = load i16, ptr %.138110.prol, align 1, !tbaa !62
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.138110.prol, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 3 uses
  %i.av = add nuw nsw i32 %.039109.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol, !llvm.loop !407

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol, %.lr.ph112.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph112.preheader ], [ %i.au, %.lr.ph112.prol ]
  %.138110.unr = phi ptr [ %.037.lcssa, %.lr.ph112.preheader ], [ %i.au, %.lr.ph112.prol ]
  %.039109.unr = phi i32 [ %spec.select.i, %.lr.ph112.preheader ], [ %i.av, %.lr.ph112.prol ]
  %i.aw = sub nsw i32 %spec.select.i, %i.am
  %i.ax = icmp ugt i32 %i.aw, -4
  br i1 %i.ax, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112
  %.138110 = phi ptr [ %i.bv, %.lr.ph112 ], [ %.138110.unr, %.lr.ph112.prol.loopexit ] ; 2 uses
  %.039109 = phi i32 [ %i.bw, %.lr.ph112 ], [ %.039109.unr, %.lr.ph112.prol.loopexit ]
end_hunk_1
