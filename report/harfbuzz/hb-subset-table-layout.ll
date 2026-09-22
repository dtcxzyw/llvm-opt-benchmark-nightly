Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2OT13VarRegionList9serializeEP22hb_serialize_context_tPKS0_RK14hb_inc_bimap_t:bb.a
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !345
  %i.bg = zext i32 %i.bf to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv, %i.bg
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %.0.i.i31 = select i1 %.not.i.i, ptr %i.bi, ptr @_hb_NullPool, !prof !219
  %i.bj = load i32, ptr %.0.i.i31, align 4, !tbaa !218 ; 2 uses
  %.not23 = icmp ult i32 %i.bj, %i.az             ; 3 uses
  br i1 %.not23, label %bb.m, label %_ZL9hb_memcpyPvPKvm.exit

bb.m:                                             ; preds = %bb.l
  %i.bk = load i16, ptr %0, align 1, !tbaa !211   ; 2 uses
  %.not.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !112

bb.n:                                             ; preds = %bb.m
  %i.bl = tail call noundef i16 @llvm.bswap.i16(i16 %i.bk) ; 2 uses
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = mul nuw nsw i32 %i.bm, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = mul nuw i32 %i.bj, %i.bm
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [6 x i8], ptr %i.be, i64 %i.bq
  %i.bs = zext i16 %i.bl to i64
  %i.bt = mul nuw i64 %indvars.iv, %i.bs
  %i.bu = getelementptr inbounds nuw [6 x i8], ptr %i.c, i64 %i.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 1 %i.br, i64 %i.bo, i1 false), !alias.scope !1604
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.l, !llvm.loop !1603

_ZL9hb_memcpyPvPKvm.exit.sink.split:              ; preds = %bb.h, %bb.i, %bb.g, %bb.b, %bb.c
  %.sink = phi i32 [ 1, %bb.g ], [ 4, %bb.b ], [ 4, %bb.c ], [ 4, %bb.i ], [ 4, %bb.h ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !190
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.o, %bb.l, %_ZL9hb_memcpyPvPKvm.exit.sink.split, %_ZN22hb_serialize_context_t6extendIN2OT13VarRegionListEJEEEPT_S4_DpOT0_.exit, %_ZL9hb_memsetPvij.exit.i.i.i29, %_ZL9hb_memsetPvij.exit.i.i.i, %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT13VarRegionListEEEPT_S4_.exit, %bb.a
  %.4 = phi i1 [ false, %_ZL9hb_memsetPvij.exit.i.i.i29 ], [ true, %_ZN22hb_serialize_context_t6extendIN2OT13VarRegionListEJEEEPT_S4_DpOT0_.exit ], [ false, %_ZN22hb_serialize_context_t10extend_minIN2OT13VarRegionListEEEPT_S4_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %bb.a ], [ false, %_ZL9hb_memcpyPvPKvm.exit.sink.split ], [ false, %bb.f ], [ %.not23, %bb.l ], [ %.not23, %bb.o ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT7VarData9serializeEP22hb_serialize_context_tPKS0_RK14hb_inc_bimap_tS7_PK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !190
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EED2Ev.exit, !prof !219

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191  ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %.critedge.i.i.i, label %bb.c, !prof !112

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %.critedge.i.i.i, label %bb.d, !prof !112

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.a, align 4, !tbaa !190
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !252

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !191
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %i.d, align 8, !tbaa !191
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EED2Ev.exit, label %bb.f, !prof !112

bb.f:                                             ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !521
  %i.t = trunc i32 %i.s to i16
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.t)
  store i16 %i.u, ptr %0, align 1, !tbaa !282
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  %i.w = load i16, ptr %i.v, align 1, !tbaa !211  ; 2 uses
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w) ; 3 uses
  %i.y = zext i16 %i.x to i32                     ; 6 uses
  %.not.i207.not = icmp eq i16 %i.w, 0            ; 2 uses
  br i1 %.not.i207.not, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %.preheader.i, !prof !219

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.043.i = phi i32 [ %i.ab, %.preheader.i ], [ 0, %bb.f ] ; 2 uses
  %i.z = lshr i32 %.043.i, 1
  %i.aa = add nuw nsw i32 %.043.i, 8
  %i.ab = add nuw nsw i32 %i.aa, %i.z             ; 4 uses
  %i.ac = icmp samesign ult i32 %i.ab, %i.y
  br i1 %i.ac, label %.preheader.i, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE14realloc_vectorISC_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSC_j11hb_priorityILj0EE.exit.i, !llvm.loop !1605

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE14realloc_vectorISC_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSC_j11hb_priorityILj0EE.exit.i: ; preds = %.preheader.i
  %i.ad = shl nuw nsw i32 %i.ab, 2
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ae) #21 ; 4 uses
  %.not22.i = icmp eq ptr %i.af, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE6resizeEi.exit, label %bb.g, !prof !198

bb.g:                                             ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE14realloc_vectorISC_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSC_j11hb_priorityILj0EE.exit.i
  %i.ag = shl nuw nsw i32 %i.y, 2
  %i.ah = zext nneg i32 %i.ag to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.af, i8 0, i64 %i.ah, i1 false)
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE6resizeEi.exit

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE6resizeEi.exit: ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE14realloc_vectorISC_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSC_j11hb_priorityILj0EE.exit.i, %bb.g
  %.sroa.0252.0288 = phi i32 [ -1, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE14realloc_vectorISC_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSC_j11hb_priorityILj0EE.exit.i ], [ %i.ab, %bb.g ] ; 2 uses
  %.sroa.7255.0 = phi i32 [ 0, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE14realloc_vectorISC_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSC_j11hb_priorityILj0EE.exit.i ], [ %i.y, %bb.g ] ; 2 uses
  br label %.preheader.i212

.preheader.i212:                                  ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE6resizeEi.exit, %.preheader.i212
  %.043.i213 = phi i32 [ %i.ak, %.preheader.i212 ], [ 0, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE6resizeEi.exit ] ; 2 uses
  %i.ai = lshr i32 %.043.i213, 1
  %i.aj = add nuw nsw i32 %.043.i213, 8
  %i.ak = add nuw nsw i32 %i.aj, %i.ai            ; 3 uses
  %i.al = icmp samesign ult i32 %i.ak, %i.y
  br i1 %i.al, label %.preheader.i212, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !llvm.loop !18

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.preheader.i212
  %i.am = shl nuw nsw i32 %i.ak, 2
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.an) #21 ; 3 uses
  %.not22.i217 = icmp eq ptr %i.ao, null
  br i1 %.not22.i217, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %bb.h, !prof !198

bb.h:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.ap = shl nuw nsw i32 %i.y, 2
  %i.aq = zext nneg i32 %i.ap to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 0, i64 %i.aq, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE6resizeEi.exit:            ; preds = %bb.h, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.sroa.14.1317 = phi ptr [ null, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %i.ao, %bb.h ], [ null, %bb.f ] ; 4 uses
  %.sroa.0232.0315 = phi i1 [ false, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ true, %bb.h ], [ false, %bb.f ]
  %.sroa.0252.0288300313 = phi i32 [ %.sroa.0252.0288, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.0252.0288, %bb.h ], [ 0, %bb.f ]
  %.sroa.16.1286301311 = phi ptr [ %i.af, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %i.af, %bb.h ], [ null, %bb.f ] ; 4 uses
  %.sroa.7255.0302309 = phi i32 [ %.sroa.7255.0, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.7255.0, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.sroa.7.0 = phi i32 [ 0, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %i.y, %bb.h ], [ 0, %bb.f ] ; 3 uses
  %i.ar = load i16, ptr %i.v, align 1, !tbaa !211
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar) ; 3 uses
  %i.at = zext i16 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.ay = load i16, ptr %i.ax, align 1, !tbaa !211 ; 3 uses
  %i.az = and i16 %i.ay, -129                     ; 2 uses
  %i.ba = tail call i16 @llvm.bswap.i16(i16 %i.az) ; 3 uses
  %i.bb = zext nneg i16 %i.ba to i32
  %i.bc = zext i16 %i.as to i32
  %i.bd = add nuw nsw i32 %i.bb, %i.bc
  %.mask.i.i = lshr i16 %i.ay, 7
  %.mask.i.lobit.i = and i16 %.mask.i.i, 1
  %i.be = zext nneg i16 %.mask.i.lobit.i to i32
  %i.bf = shl nuw nsw i32 %i.bd, %i.be            ; 3 uses
  %.mask.i = and i16 %i.ay, 128
  %i.bg = icmp ne i16 %.mask.i, 0                 ; 2 uses
  %i.bh = icmp ne i16 %i.az, 0
  %or.cond390 = and i1 %i.bg, %i.bh
  br i1 %or.cond390, label %.lr.ph363, label %.thread

.lr.ph363:                                        ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !346 ; 2 uses
  %i.bk = load i32, ptr %i.r, align 4, !tbaa !345 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.bk to i64
  %.idx = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  %.not146358 = icmp eq i32 %i.bk, 0
  br i1 %.not146358, label %.thread, label %.lr.ph363.split

.lr.ph363.split:                                  ; preds = %.lr.ph363
  %i.bm = load i16, ptr %2, align 1, !tbaa !211
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bo = zext i16 %i.bn to i32
  %i.bp = zext i16 %i.as to i64
  %wide.trip.count = zext nneg i16 %i.ba to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph363.split, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph363.split ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0120360 = phi i8 [ 0, %.lr.ph363.split ], [ %.3, %._crit_edge ] ; 2 uses
  %.not27.i = icmp samesign ult i64 %indvars.iv, %i.bp
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  br i1 %.not27.i, label %.lr.ph.split, label %._crit_edge, !prof !470

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread
  %.0119359 = phi ptr [ %i.bw, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread ], [ %i.bj, %.lr.ph ] ; 2 uses
  %i.bq = load i32, ptr %.0119359, align 4, !tbaa !218 ; 2 uses
  %.not.i = icmp ult i32 %i.bq, %i.bo
  br i1 %.not.i, label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit, label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread, !prof !470

_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit: ; preds = %.lr.ph.split
  %i.br = mul i32 %i.bq, %i.bf
  %i.bs = zext i32 %i.br to i64
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.bs
  %i.bt = load i32, ptr %gep, align 1, !tbaa !251
  %i.bu = tail call noundef i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = add i32 %i.bu, 65536
  %or.cond = icmp ult i32 %i.bv, 131072
  br i1 %or.cond, label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread, label %._crit_edge

_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread: ; preds = %.lr.ph.split, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.0119359, i64 4 ; 2 uses
  %.not146 = icmp eq ptr %i.bw, %i.bl
  br i1 %.not146, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread, %.lr.ph
  %.3 = phi i8 [ %.0120360, %.lr.ph ], [ %.0120360, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread ], [ 1, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1606

.thread:                                          ; preds = %._crit_edge, %.lr.ph363, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %.4 = phi i8 [ 0, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit ], [ 0, %.lr.ph363 ], [ %.3, %._crit_edge ] ; 2 uses
  %6 = trunc nuw i8 %.4 to i1                     ; 3 uses
  %7 = select i1 %6, i32 -65536, i32 -128
  %8 = select i1 %6, i32 65535, i32 127
  br i1 %.not.i207.not, label %._crit_edge379, label %.lr.ph372

.lr.ph372:                                        ; preds = %.thread
  %9 = zext i1 %i.bg to i8
  %10 = icmp eq i8 %.4, %9
  %i.bx = load i32, ptr @_hb_NullPool, align 16   ; 3 uses
  %.not143.a = icmp eq ptr %5, null
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ce = zext i32 %.sroa.7255.0302309 to i64
  %i.cf = zext nneg i16 %i.ba to i64
  %wide.trip.count412 = zext i16 %i.x to i64
  br label %bb.i

.lr.ph378:                                        ; preds = %.thread339
  %i.cg = load i32, ptr @_hb_NullPool, align 16   ; 4 uses
  %.not140343 = icmp eq i32 %i.cg, 0
  %i.ch = zext i32 %.sroa.7255.0302309 to i64
  %wide.trip.count418 = zext i16 %i.x to i64
  br label %bb.ai

bb.i:                                             ; preds = %.lr.ph372, %.thread339
  %indvars.iv408 = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next409, %.thread339 ] ; 13 uses
  %.0127368 = phi i32 [ 0, %.lr.ph372 ], [ %.4131, %.thread339 ] ; 5 uses
  %11 = icmp samesign uge i64 %indvars.iv408, %i.cf
  %12 = and i1 %10, %11
  %.not.i151 = icmp samesign ult i64 %indvars.iv408, %i.ce ; 3 uses
  br i1 %.not.i151, label %bb.k, label %bb.j, !prof !219

bb.j:                                             ; preds = %bb.i
  store i32 %i.bx, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit

bb.k:                                             ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.1286301311, i64 %indvars.iv408
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit: ; preds = %bb.j, %bb.k
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.ci, %bb.k ]
  store i32 0, ptr %.0.i, align 4, !tbaa !1613
  br i1 %.not143.a, label %bb.t, label %bb.l

bb.l:                                             ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit
  %i.cj = load i16, ptr %i.v, align 1, !tbaa !211
  %i.ck = tail call noundef i16 @llvm.bswap.i16(i16 %i.cj)
  %i.cl = zext i16 %i.ck to i64
  %.not.i152 = icmp samesign ult i64 %indvars.iv408, %i.cl
  br i1 %.not.i152, label %bb.m, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit, !prof !219

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv408
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit: ; preds = %bb.l, %bb.m
  %.0.i153 = phi ptr [ %i.cm, %bb.m ], [ @_hb_NullPool, %bb.l ]
  %i.cn = load i16, ptr %.0.i153, align 1, !tbaa !211
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32                   ; 3 uses
  %i.cq = lshr i32 %i.cp, 9                       ; 3 uses
  %i.cr = load atomic i32, ptr %i.bz monotonic, align 4 ; 2 uses
  %i.cs = load i32, ptr %i.ca, align 4, !tbaa !409 ; 3 uses
  %i.ct = icmp ult i32 %i.cr, %i.cs
  %i.cu = load ptr, ptr %i.cb, align 8, !tbaa !410 ; 3 uses
  br i1 %i.ct, label %bb.n, label %._crit_edge.i.i.i.i.i.i, !prof !219

bb.n:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit
  %i.cv = zext i32 %i.cr to i64                   ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !412
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cx, %i.cq
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.n, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cs, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cy = add nsw i32 %i.cs, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.r, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %i.cy, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cz = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.da = lshr i32 %i.cz, 1                       ; 4 uses
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !412 ; 2 uses
  %i.df = icmp slt i32 %i.cq, %i.de
  br i1 %i.df, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.dg = add nsw i32 %i.da, -1
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cq, %i.de
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = add nuw nsw i32 %i.da, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dh, %bb.q ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.o ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.dg, %bb.o ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !17

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.p
  store atomic i32 %i.da, ptr %i.bz monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.n
  %i.di = phi i64 [ %i.db, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.cv, %bb.n ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !414
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = lshr i32 %i.cp, 6
  %i.dq = and i32 %i.dp, 7
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !266
  %i.du = and i32 %i.cp, 63
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = lshr i64 %i.dt, %i.dv
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = and i8 %i.dx, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.s
  %.0.i.i.i.i.i = phi i8 [ %i.dy, %bb.s ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.r ]
  %i.dz = load i8, ptr %i.cc, align 8, !tbaa !259, !range !213, !noundef !230
  %.not = icmp eq i8 %i.dz, %.0.i.i.i.i.i
  br i1 %.not, label %bb.t, label %.thread339

bb.t:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit
  %i.ea = load ptr, ptr %i.cd, align 8, !tbaa !346 ; 2 uses
  %i.eb = load i32, ptr %i.r, align 4, !tbaa !345 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i155 = zext i32 %i.eb to i64
  %.idx393 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i155, 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx393 ; 2 uses
  %.not144364 = icmp eq i32 %i.eb, 0
  br i1 %.not144364, label %.thread339, label %.lr.ph367

.lr.ph367:                                        ; preds = %bb.t
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.1286301311, i64 %indvars.iv408 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph367
  %.0118365 = phi ptr [ %i.ea, %.lr.ph367 ], [ %.0118365.be, %.backedge.backedge ] ; 3 uses
  %i.ee = load i32, ptr %.0118365, align 4, !tbaa !218 ; 2 uses
  %i.ef = load i16, ptr %2, align 1, !tbaa !211
  %i.eg = tail call noundef i16 @llvm.bswap.i16(i16 %i.ef)
  %i.eh = zext i16 %i.eg to i32
  %.not.i157 = icmp ult i32 %i.ee, %i.eh
  br i1 %.not.i157, label %bb.u, label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit162, !prof !219

bb.u:                                             ; preds = %.backedge
  %i.ei = load i16, ptr %i.v, align 1, !tbaa !211
  %i.ej = tail call noundef i16 @llvm.bswap.i16(i16 %i.ei)
  %i.ek = zext i16 %i.ej to i64
  %.not27.i159 = icmp samesign ult i64 %indvars.iv408, %i.ek
  br i1 %.not27.i159, label %bb.v, label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit162, !prof !219

bb.v:                                             ; preds = %bb.u
  %i.el = mul i32 %i.ee, %i.bf
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.em ; 4 uses
  %i.eo = load i16, ptr %i.ax, align 1, !tbaa !211 ; 2 uses
  %i.ep = and i16 %i.eo, -129
  %i.eq = tail call i16 @llvm.bswap.i16(i16 %i.ep) ; 2 uses
  %i.er = zext nneg i16 %i.eq to i32              ; 2 uses
  %.mask.i.i160 = and i16 %i.eo, 128
  %.not28.i161 = icmp eq i16 %.mask.i.i160, 0
  %i.es = zext nneg i16 %i.eq to i64              ; 3 uses
  %i.et = icmp samesign ult i64 %indvars.iv408, %i.es ; 2 uses
  br i1 %.not28.i161, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv408
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !251
  %i.ew = tail call noundef i32 @llvm.bswap.i32(i32 %i.ev)
  br label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit162

bb.y:                                             ; preds = %bb.w
  %i.ex = shl nuw nsw i32 %i.er, 2
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ey
  %i.fa = sub nuw nsw i64 %indvars.iv408, %i.es
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 1, !tbaa !211
  %i.fd = tail call noundef i16 @llvm.bswap.i16(i16 %i.fc)
  %i.fe = sext i16 %i.fd to i32
  br label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit162

bb.z:                                             ; preds = %bb.v
  br i1 %i.et, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %indvars.iv408
  %i.fg = load i16, ptr %i.ff, align 1, !tbaa !211
  %i.fh = tail call noundef i16 @llvm.bswap.i16(i16 %i.fg)
  %i.fi = sext i16 %i.fh to i32
  br label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit162

bb.ab:                                            ; preds = %bb.z
  %i.fj = shl nuw nsw i32 %i.er, 1
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fk
  %i.fm = sub nuw nsw i64 %indvars.iv408, %i.es
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !432
  %i.fp = sext i8 %i.fo to i32
  br label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit162

_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit162: ; preds = %.backedge, %bb.u, %bb.x, %bb.y, %bb.aa, %bb.ab
  %.1.i158 = phi i32 [ 0, %bb.u ], [ %i.fp, %bb.ab ], [ %i.ew, %bb.x ], [ %i.fe, %bb.y ], [ %i.fi, %bb.aa ], [ 0, %.backedge ] ; 3 uses
  %i.fq = icmp slt i32 %.1.i158, %7
  %i.fr = icmp slt i32 %8, %.1.i158
  %or.cond147 = or i1 %i.fq, %i.fr
  br i1 %or.cond147, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit162
  br i1 %.not.i151, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit165, label %bb.ad, !prof !219

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.bx, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit165

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit165: ; preds = %bb.ac, %bb.ad
  %.0.i164 = phi ptr [ @_hb_CrapPool, %bb.ad ], [ %i.ed, %bb.ac ]
  store i32 2, ptr %.0.i164, align 4, !tbaa !1613
  %i.fs = add i32 %.0127368, 1
  br label %.thread339

bb.ae:                                            ; preds = %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit162
  %.not145 = icmp eq i32 %.1.i158, 0
  br i1 %.not145, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i151, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit168, label %bb.ag, !prof !219

bb.ag:                                            ; preds = %bb.af
  store i32 %i.bx, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit168

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit168: ; preds = %bb.af, %bb.ag
  %.0.i167 = phi ptr [ @_hb_CrapPool, %bb.ag ], [ %i.ed, %bb.af ]
  store i32 1, ptr %.0.i167, align 4, !tbaa !1613
  %i.ft = getelementptr inbounds nuw i8, ptr %.0118365, i64 4 ; 2 uses
  %.not142 = icmp eq ptr %i.ft, %i.ec
  %or.cond391.not = select i1 %12, i1 true, i1 %.not142
  br i1 %or.cond391.not, label %.thread339, label %.backedge.backedge

bb.ah:                                            ; preds = %bb.ae
  %.old = getelementptr inbounds nuw i8, ptr %.0118365, i64 4 ; 2 uses
  %.not144.old = icmp eq ptr %.old, %i.ec
  br i1 %.not144.old, label %.thread339, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ah, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit168
  %.0118365.be = phi ptr [ %.old, %bb.ah ], [ %i.ft, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit168 ]
  br label %.backedge

.thread339:                                       ; preds = %bb.ah, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit168, %bb.t, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit165, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %.4131 = phi i32 [ %.0127368, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ %i.fs, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit165 ], [ %.0127368, %bb.t ], [ %.0127368, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit168 ], [ %.0127368, %bb.ah ] ; 3 uses
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count412
  br i1 %exitcond413.not, label %.lr.ph378, label %bb.i, !llvm.loop !1607

bb.ai:                                            ; preds = %.lr.ph378, %bb.al
  %indvars.iv414 = phi i64 [ 0, %.lr.ph378 ], [ %indvars.iv.next415, %bb.al ] ; 4 uses
  %.0112377 = phi i32 [ 0, %.lr.ph378 ], [ %.1, %bb.al ] ; 3 uses
  %.0113376 = phi i32 [ %.4131, %.lr.ph378 ], [ %.2, %bb.al ] ; 4 uses
  %.0115375 = phi i32 [ 0, %.lr.ph378 ], [ %.2117, %bb.al ] ; 4 uses
  %.not.i169 = icmp samesign ult i64 %indvars.iv414, %i.ch
  br i1 %.not.i169, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171.thread, !prof !219

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171: ; preds = %bb.ai
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.1286301311, i64 %indvars.iv414
  %.pr = load i32, ptr %i.fu, align 4, !tbaa !1613 ; 2 uses
  %.not140 = icmp eq i32 %.pr, 0
  br i1 %.not140, label %bb.al, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit174

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171.thread: ; preds = %bb.ai
  store i32 %i.cg, ptr @_hb_CrapPool, align 16
  br i1 %.not140343, label %bb.al, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit174

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit174: ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171.thread, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171
  %i.fv = phi i32 [ %.pr, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171 ], [ %i.cg, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171.thread ]
  %i.fw = icmp eq i32 %i.fv, 2                    ; 3 uses
  %i.fx = zext i1 %i.fw to i32
  %.1116 = add i32 %.0115375, %i.fx
  %not. = xor i1 %i.fw, true
  %i.fy = zext i1 %not. to i32
  %.1114 = add i32 %.0113376, %i.fy
  %i.fz = select i1 %i.fw, i32 %.0115375, i32 %.0113376 ; 2 uses
  %.not.i175 = icmp ult i32 %i.fz, %.sroa.7.0
  br i1 %.not.i175, label %bb.ak, label %bb.aj, !prof !219

bb.aj:                                            ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit174
  store i32 %i.cg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.ak:                                            ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit174
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.1317, i64 %i.ga
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.aj, %bb.ak
  %.0.i176 = phi ptr [ @_hb_CrapPool, %bb.aj ], [ %i.gb, %bb.ak ]
  %i.gc = trunc nuw nsw i64 %indvars.iv414 to i32
  store i32 %i.gc, ptr %.0.i176, align 4, !tbaa !218
  %i.gd = add i32 %.0112377, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171.thread, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171, %_ZN11hb_vector_tIjLb0EEixEi.exit
  %.2117 = phi i32 [ %.1116, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.0115375, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171 ], [ %.0115375, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171.thread ]
  %.2 = phi i32 [ %.1114, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.0113376, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171 ], [ %.0113376, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171.thread ]
  %.1 = phi i32 [ %i.gd, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.0112377, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171 ], [ %.0112377, %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EEixEi.exit171.thread ] ; 2 uses
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next415, %wide.trip.count418
  br i1 %exitcond419.not, label %._crit_edge379, label %bb.ai, !llvm.loop !1608

._crit_edge379:                                   ; preds = %bb.al, %.thread
  %.0127.lcssa478 = phi i32 [ 0, %.thread ], [ %.4131, %bb.al ]
  %.0112.lcssa = phi i32 [ 0, %.thread ], [ %.1, %bb.al ] ; 6 uses
  %i.ge = select i1 %6, i32 32768, i32 0
  %i.gf = or i32 %.0127.lcssa478, %i.ge
  %i.gg = trunc i32 %i.gf to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.gi = tail call i16 @llvm.bswap.i16(i16 %i.gg) ; 3 uses
  store i16 %i.gi, ptr %i.gh, align 1, !tbaa !282
  %i.gj = trunc i32 %.0112.lcssa to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.gl = tail call i16 @llvm.bswap.i16(i16 %i.gj)
  store i16 %i.gl, ptr %i.gk, align 1, !tbaa !282
  %.mask = shl i32 %.0112.lcssa, 1
  %i.gm = and i32 %.mask, 131070
  %i.gn = load i16, ptr %0, align 1, !tbaa !211
  %i.go = tail call noundef i16 @llvm.bswap.i16(i16 %i.gn)
  %i.gp = zext i16 %i.go to i64
  %i.gq = and i16 %i.gi, -129
  %i.gr = tail call i16 @llvm.bswap.i16(i16 %i.gq)
  %i.gs = zext nneg i16 %i.gr to i32
  %i.gt = and i32 %.0112.lcssa, 65535
  %i.gu = add nuw nsw i32 %i.gt, %i.gs
  %.mask.i.i.i.i = lshr i16 %i.gi, 7
  %.mask.i.lobit.i.i.i = and i16 %.mask.i.i.i.i, 1
  %i.gv = zext nneg i16 %.mask.i.lobit.i.i.i to i32
  %i.gw = shl nuw nsw i32 %i.gu, %i.gv
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = mul nuw nsw i64 %i.gp, %i.gx
  %narrow = add nuw nsw i32 %i.gm, 6
  %i.gz = zext nneg i32 %narrow to i64
  %i.ha = add nuw nsw i64 %i.gy, %i.gz            ; 2 uses
  %i.hb = load i32, ptr %i.a, align 4, !tbaa !190
  %.not11.i.i177 = icmp eq i32 %i.hb, 0
  br i1 %.not11.i.i177, label %bb.am, label %select.unfold345, !prof !219

bb.am:                                            ; preds = %._crit_edge379
  %i.hc = icmp samesign ugt i64 %i.ha, 2147483646
  br i1 %i.hc, label %select.unfold345.sink.split, label %bb.an, !prof !112

bb.an:                                            ; preds = %bb.am
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ha ; 2 uses
  %i.he = load ptr, ptr %i.d, align 8, !tbaa !191 ; 4 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64               ; 2 uses
  %i.hh = sub i64 %i.hf, %i.hg                    ; 4 uses
  %i.hi = icmp ugt i64 %i.hh, 2147483647
  br i1 %i.hi, label %select.unfold345.sink.split, label %bb.ao, !prof !112

bb.ao:                                            ; preds = %bb.an
  %i.hj = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = sub i64 %i.hk, %i.hg
  %i.hm = icmp slt i64 %i.hl, %i.hh
  br i1 %i.hm, label %select.unfold345.sink.split, label %bb.ap, !prof !112

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i.not.i179 = icmp eq ptr %i.hd, %i.he
  br i1 %.not.i.i.i.not.i179, label %_ZL9hb_memsetPvij.exit.i.i.i181, label %bb.aq, !prof !252

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.he, i8 0, i64 %i.hh, i1 false)
  %.pre.i.i.i180 = load ptr, ptr %i.d, align 8, !tbaa !191
  br label %_ZL9hb_memsetPvij.exit.i.i.i181

_ZL9hb_memsetPvij.exit.i.i.i181:                  ; preds = %bb.aq, %bb.ap
  %i.hn = phi ptr [ %.pre.i.i.i180, %bb.aq ], [ %i.he, %bb.ap ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hh
  store ptr %i.ho, ptr %i.d, align 8, !tbaa !191
  %i.hp = icmp eq ptr %i.hn, null
  br i1 %i.hp, label %select.unfold345, label %_ZN22hb_serialize_context_t6extendIN2OT7VarDataEJEEEPT_S4_DpOT0_.exit.preheader, !prof !112

_ZN22hb_serialize_context_t6extendIN2OT7VarDataEJEEEPT_S4_DpOT0_.exit.preheader: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i181
  %.not395 = icmp eq i32 %.0112.lcssa, 0          ; 2 uses
  br i1 %.not395, label %_ZN22hb_serialize_context_t6extendIN2OT7VarDataEJEEEPT_S4_DpOT0_.exit._crit_edge, label %.lr.ph382

.lr.ph382:                                        ; preds = %_ZN22hb_serialize_context_t6extendIN2OT7VarDataEJEEEPT_S4_DpOT0_.exit.preheader
  %i.hq = load i32, ptr @_hb_NullPool, align 16   ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.hv = trunc i32 %i.hq to i16
  %i.hw = zext nneg i32 %.sroa.7.0 to i64
  %wide.trip.count423 = zext i32 %.0112.lcssa to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph382, %_ZN2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit
  %indvars.iv420 = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next421, %_ZN2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit ] ; 5 uses
  %.not.i183 = icmp samesign ult i64 %indvars.iv420, %i.hw
  br i1 %.not.i183, label %bb.at, label %bb.as, !prof !219

bb.as:                                            ; preds = %bb.ar
  store i32 %i.hq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit185

bb.at:                                            ; preds = %bb.ar
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.1317, i64 %indvars.iv420
  %.pre = load i32, ptr %i.hx, align 4, !tbaa !218
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit185

_ZN11hb_vector_tIjLb0EEixEi.exit185:              ; preds = %bb.as, %bb.at
  %i.hy = phi i32 [ %i.hq, %bb.as ], [ %.pre, %bb.at ] ; 2 uses
  %i.hz = load i16, ptr %i.v, align 1, !tbaa !211
  %i.ia = tail call noundef i16 @llvm.bswap.i16(i16 %i.hz)
  %i.ib = zext i16 %i.ia to i32
  %.not.i186 = icmp ult i32 %i.hy, %i.ib
  br i1 %.not.i186, label %bb.au, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit188, !prof !219

bb.au:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit185
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ic = zext nneg i32 %i.hy to i64
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %i.ic
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit188

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit188: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit185, %bb.au
  %.0.i187 = phi ptr [ %i.id, %bb.au ], [ @_hb_NullPool, %_ZN11hb_vector_tIjLb0EEixEi.exit185 ]
  %i.ie = load i16, ptr %.0.i187, align 1, !tbaa !211
  %i.if = tail call noundef i16 @llvm.bswap.i16(i16 %i.ie)
  %i.ig = zext i16 %i.if to i32                   ; 3 uses
  %i.ih = load ptr, ptr %i.hs, align 8, !tbaa !288 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.av

bb.av:                                            ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit188
  %i.ii = mul i32 %i.ig, 506952113
  %i.ij = and i32 %i.ii, 1073741823
  %i.ik = load i32, ptr %i.ht, align 8, !tbaa !322
  %i.il = urem i32 %i.ij, %i.ik                   ; 2 uses
  %i.im = zext nneg i32 %i.il to i64              ; 2 uses
  %i.in = getelementptr inbounds nuw [12 x i8], ptr %i.ih, i64 %i.im ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = load i32, ptr %i.io, align 4            ; 2 uses
  %i.iq = and i32 %i.ip, 2
  %.not15.i.i.i.i.i = icmp eq i32 %i.iq, 0
  br i1 %.not15.i.i.i.i.i, label %_ZNK14hb_inc_bimap_tixEj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.av
  %i.ir = load i32, ptr %i.hu, align 4
  %i.is = load i32, ptr %i.in, align 4, !tbaa !218
  %i.it = icmp eq i32 %i.is, %i.ig
  br i1 %i.it, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.iu = load i32, ptr %i.je, align 4, !tbaa !218
  %i.iv = icmp eq i32 %i.iu, %i.ig
  br i1 %i.iv, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

._crit_edge.i.i.i.i:                              ; preds = %bb.aw, %.lr.ph.i.i.i.i.i
  %.lcssa10.i.i.i.i = phi i32 [ %i.ip, %.lr.ph.i.i.i.i.i ], [ %i.jg, %bb.aw ]
  %i.iw = phi i64 [ %i.im, %.lr.ph.i.i.i.i.i ], [ %i.jd, %bb.aw ]
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %i.ih, i64 %i.iw
  %i.iy = trunc i32 %.lcssa10.i.i.i.i to i1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %spec.select.i.i.i.i = select i1 %i.iy, ptr %i.iz, ptr @minus_1
  br label %_ZNK14hb_inc_bimap_tixEj.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i, %bb.aw
  %.01016.i13.i.i.i.i = phi i32 [ %i.jc, %bb.aw ], [ %i.il, %.lr.ph.i.i.i.i.i ]
  %.017.i12.i.i.i.i = phi i32 [ %i.ja, %bb.aw ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.ja = add i32 %.017.i12.i.i.i.i, 1            ; 2 uses
  %i.jb = add i32 %i.ja, %.01016.i13.i.i.i.i
  %i.jc = and i32 %i.jb, %i.ir                    ; 2 uses
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = getelementptr inbounds nuw [12 x i8], ptr %i.ih, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jg = load i32, ptr %i.jf, align 4            ; 2 uses
  %i.jh = and i32 %i.jg, 2
  %.not.i.i.i.i.i189 = icmp eq i32 %i.jh, 0
  br i1 %.not.i.i.i.i.i189, label %_ZNK14hb_inc_bimap_tixEj.exit, label %bb.aw, !llvm.loop !6

_ZNK14hb_inc_bimap_tixEj.exit:                    ; preds = %.lr.ph.i.i.i.i, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit188, %bb.av, %._crit_edge.i.i.i.i
  %.0.i.i.i = phi ptr [ @minus_1, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit188 ], [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i ], [ @minus_1, %bb.av ], [ @minus_1, %.lr.ph.i.i.i.i ]
  %i.ji = load i32, ptr %.0.i.i.i, align 4, !tbaa !218
  %i.jj = trunc i32 %i.ji to i16
  %i.jk = load i16, ptr %i.gk, align 1, !tbaa !211
  %i.jl = tail call noundef i16 @llvm.bswap.i16(i16 %i.jk)
  %i.jm = zext i16 %i.jl to i64
  %.not.i190 = icmp samesign ult i64 %indvars.iv420, %i.jm
  br i1 %.not.i190, label %bb.ay, label %bb.ax, !prof !219

bb.ax:                                            ; preds = %_ZNK14hb_inc_bimap_tixEj.exit
  store i16 %i.hv, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit

bb.ay:                                            ; preds = %_ZNK14hb_inc_bimap_tixEj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv420
  br label %_ZN2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit

_ZN2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit: ; preds = %bb.ax, %bb.ay
  %.0.i191 = phi ptr [ @_hb_CrapPool, %bb.ax ], [ %i.jn, %bb.ay ]
  %i.jo = tail call i16 @llvm.bswap.i16(i16 %i.jj)
  store i16 %i.jo, ptr %.0.i191, align 1, !tbaa !282
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond424.not = icmp eq i64 %indvars.iv.next421, %wide.trip.count423
  br i1 %exitcond424.not, label %_ZN22hb_serialize_context_t6extendIN2OT7VarDataEJEEEPT_S4_DpOT0_.exit._crit_edge, label %bb.ar, !llvm.loop !1609

_ZN22hb_serialize_context_t6extendIN2OT7VarDataEJEEEPT_S4_DpOT0_.exit._crit_edge: ; preds = %_ZN2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit, %_ZN22hb_serialize_context_t6extendIN2OT7VarDataEJEEEPT_S4_DpOT0_.exit.preheader
  %i.jp = load i16, ptr %i.gk, align 1, !tbaa !211
  %i.jq = tail call noundef i16 @llvm.bswap.i16(i16 %i.jp) ; 2 uses
  %i.jr = zext i16 %i.jq to i64
  %i.js = shl nuw nsw i64 %i.jr, 1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.js
end_hunk_0
