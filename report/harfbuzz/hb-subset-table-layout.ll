inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b:bb.a
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.l = load i32, ptr %i.c, align 8, !tbaa !139  ; 5 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !139
  %i.m = icmp eq i32 %i.l, -2
  br i1 %i.m, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.c, align 8, !tbaa !139
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.l, ptr %i.b, align 4, !tbaa !139
  %i.n = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull %i.b) ; 0 uses
  %i.o = add i32 %i.l, 1                          ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !139
  %i.q = icmp ult i32 %i.o, %i.p
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.l, ptr %i.b, align 4, !tbaa !139
  %i.r = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.s = load i32, ptr %i.b, align 4, !tbaa !139
  %i.t = add i32 %i.s, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.t, %bb.g ], [ %i.o, %bb.f ]
  store i32 %.sink.i.i, ptr %i.c, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i:     ; preds = %bb.i, %bb.c
  %i.u = load i32, ptr %i.d, align 4, !tbaa !1153 ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZN23hb_bit_set_invertible_t6iter_t8__next__Ev.exit, label %bb.j, !prof !21

bb.j:                                             ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.d, align 4, !tbaa !1153
  br label %_ZN23hb_bit_set_invertible_t6iter_t8__next__Ev.exit

_ZN23hb_bit_set_invertible_t6iter_t8__next__Ev.exit: ; preds = %bb.j, %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT13VarRegionList9serializeEP22hb_serialize_context_tPKS0_RK14hb_inc_bimap_t(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !104
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %_ZL9hb_memcpyPvPKvm.exit, !prof !144

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %_ZL9hb_memcpyPvPKvm.exit.sink.split, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %_ZL9hb_memcpyPvPKvm.exit.sink.split, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !237

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !105
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %i.d, align 8, !tbaa !105
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %_ZL9hb_memcpyPvPKvm.exit, label %_ZN22hb_serialize_context_t10extend_minIN2OT13VarRegionListEEEPT_S4_.exit, !prof !21

_ZN22hb_serialize_context_t10extend_minIN2OT13VarRegionListEEEPT_S4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.r = load i16, ptr %2, align 1, !tbaa !312    ; 2 uses
  store i16 %i.r, ptr %0, align 1, !tbaa !312
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !396  ; 2 uses
  %i.u = trunc i32 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.u)
  store i16 %i.w, ptr %i.v, align 1, !tbaa !312
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.r) ; 2 uses
  %i.y = zext i16 %i.x to i32
  %i.z = and i32 %i.t, 65535                      ; 2 uses
  %i.aa = mul nuw i32 %i.z, %i.y
  %i.ab = icmp ugt i32 %i.aa, 715827882
  br i1 %i.ab, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.f, !prof !21

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT13VarRegionListEEEPT_S4_.exit
  %i.ac = zext i16 %i.x to i64
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = mul nuw nsw i64 %i.ac, 6
  %i.af = mul nuw nsw i64 %i.ae, %i.ad            ; 2 uses
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !104
  %.not11.i.i25 = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i25, label %bb.g, label %_ZL9hb_memcpyPvPKvm.exit, !prof !144

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp samesign ugt i64 %i.af, 2147483642
  br i1 %i.ah, label %_ZL9hb_memcpyPvPKvm.exit.sink.split, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !105 ; 4 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 2147483647
  br i1 %i.ao, label %_ZL9hb_memcpyPvPKvm.exit.sink.split, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.am
  %i.as = icmp slt i64 %i.ar, %i.an
  br i1 %i.as, label %_ZL9hb_memcpyPvPKvm.exit.sink.split, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.not.i27 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.not.i27, label %_ZL9hb_memsetPvij.exit.i.i.i29, label %bb.k, !prof !237

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.an, i1 false)
  %.pre.i.i.i28 = load ptr, ptr %i.d, align 8, !tbaa !105
  br label %_ZL9hb_memsetPvij.exit.i.i.i29

_ZL9hb_memsetPvij.exit.i.i.i29:                   ; preds = %bb.k, %bb.j
  %i.at = phi ptr [ %.pre.i.i.i28, %bb.k ], [ %i.ak, %bb.j ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an
  store ptr %i.au, ptr %i.d, align 8, !tbaa !105
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %_ZL9hb_memcpyPvPKvm.exit, label %_ZN22hb_serialize_context_t6extendIN2OT13VarRegionListEJEEEPT_S4_DpOT0_.exit, !prof !21

_ZN22hb_serialize_context_t6extendIN2OT13VarRegionListEJEEEPT_S4_DpOT0_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i29
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !131
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.bb = load i16, ptr %i.v, align 1, !tbaa !131 ; 2 uses
  %.not2445.not = icmp eq i16 %i.bb, 0
  br i1 %.not2445.not, label %_ZL9hb_memcpyPvPKvm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN22hb_serialize_context_t6extendIN2OT13VarRegionListEJEEEPT_S4_DpOT0_.exit
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 4
  %wide.trip.count = zext i16 %i.bc to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !391
  %i.bg = zext i32 %i.bf to i64
  %.not.i.i = icmp samesign ult i64 %indvars.iv, %i.bg
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %.0.i.i31 = select i1 %.not.i.i, ptr %i.bi, ptr @_hb_NullPool, !prof !144
  %i.bj = load i32, ptr %.0.i.i31, align 4, !tbaa !139 ; 2 uses
  %.not23 = icmp ult i32 %i.bj, %i.az             ; 3 uses
  br i1 %.not23, label %bb.m, label %_ZL9hb_memcpyPvPKvm.exit

bb.m:                                             ; preds = %bb.l
  %i.bk = load i16, ptr %0, align 1, !tbaa !131   ; 2 uses
  %.not.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.bl = tail call noundef i16 @llvm.bswap.i16(i16 %i.bk) ; 2 uses
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = mul nuw nsw i32 %i.bm, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = mul nuw i32 %i.bj, %i.bm
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [6 x i8], ptr %i.be, i64 %i.bq
  %i.bs = zext i16 %i.bl to i64
  %i.bt = mul nuw nsw i64 %indvars.iv, %i.bs
  %i.bu = getelementptr inbounds nuw [6 x i8], ptr %i.c, i64 %i.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 1 %i.br, i64 %i.bo, i1 false), !alias.scope !1164
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.l, !llvm.loop !1168

_ZL9hb_memcpyPvPKvm.exit.sink.split:              ; preds = %bb.h, %bb.i, %bb.g, %bb.b, %bb.c
  %.sink = phi i32 [ 1, %bb.g ], [ 4, %bb.b ], [ 4, %bb.c ], [ 4, %bb.i ], [ 4, %bb.h ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !104
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.o, %bb.l, %_ZL9hb_memcpyPvPKvm.exit.sink.split, %_ZN22hb_serialize_context_t6extendIN2OT13VarRegionListEJEEEPT_S4_DpOT0_.exit, %_ZL9hb_memsetPvij.exit.i.i.i29, %_ZL9hb_memsetPvij.exit.i.i.i, %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT13VarRegionListEEEPT_S4_.exit, %bb.a
  %.4 = phi i1 [ false, %_ZL9hb_memsetPvij.exit.i.i.i29 ], [ true, %_ZN22hb_serialize_context_t6extendIN2OT13VarRegionListEJEEEPT_S4_DpOT0_.exit ], [ false, %_ZN22hb_serialize_context_t10extend_minIN2OT13VarRegionListEEEPT_S4_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %bb.a ], [ false, %_ZL9hb_memcpyPvPKvm.exit.sink.split ], [ false, %bb.f ], [ %.not23, %bb.l ], [ %.not23, %bb.o ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT7VarData9serializeEP22hb_serialize_context_tPKS0_RK14hb_inc_bimap_tS7_PK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !104
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EED2Ev.exit, !prof !144

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %.critedge.i.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %.critedge.i.i.i, label %bb.d, !prof !21

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.a, align 4, !tbaa !104
  br label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !237

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !105
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %i.d, align 8, !tbaa !105
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EED2Ev.exit, label %bb.f, !prof !21

bb.f:                                             ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1156
  %i.t = trunc i32 %i.s to i16
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.t)
  store i16 %i.u, ptr %0, align 1, !tbaa !312
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 7 uses
  %i.w = load i16, ptr %i.v, align 1, !tbaa !131  ; 2 uses
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w) ; 3 uses
  %i.y = zext i16 %i.x to i32                     ; 6 uses
  %.not.i207.not = icmp eq i16 %i.w, 0            ; 2 uses
  br i1 %.not.i207.not, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %.preheader.i, !prof !144

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.043.i = phi i32 [ %i.ab, %.preheader.i ], [ 0, %bb.f ] ; 2 uses
  %i.z = lshr i32 %.043.i, 1
  %i.aa = add nuw nsw i32 %.043.i, 8
  %i.ab = add nuw nsw i32 %i.aa, %i.z             ; 4 uses
  %i.ac = icmp samesign ult i32 %i.ab, %i.y
  br i1 %i.ac, label %.preheader.i, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE14realloc_vectorISC_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSC_j11hb_priorityILj0EE.exit.i, !llvm.loop !1169

_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE14realloc_vectorISC_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPSC_j11hb_priorityILj0EE.exit.i: ; preds = %.preheader.i
  %i.ad = shl nuw nsw i32 %i.ab, 2
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ae) #21 ; 4 uses
  %.not22.i = icmp eq ptr %i.af, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIZN2OT7VarData9serializeEP22hb_serialize_context_tPKS1_RK14hb_inc_bimap_tS8_PK8hb_set_tE12delta_size_tLb0EE6resizeEi.exit, label %bb.g, !prof !117

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
  br i1 %i.al, label %.preheader.i212, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !llvm.loop !538

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.preheader.i212
  %i.am = shl nuw nsw i32 %i.ak, 2
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.an) #21 ; 3 uses
  %.not22.i217 = icmp eq ptr %i.ao, null
  br i1 %.not22.i217, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %bb.h, !prof !117

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
  %i.ar = load i16, ptr %i.v, align 1, !tbaa !131
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar) ; 3 uses
  %i.at = zext i16 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.ay = load i16, ptr %i.ax, align 1, !tbaa !131 ; 3 uses
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
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !392 ; 2 uses
  %i.bk = load i32, ptr %i.r, align 4, !tbaa !391 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.bk to i64
  %.idx = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  %.not146358 = icmp eq i32 %i.bk, 0
  br i1 %.not146358, label %.thread, label %.lr.ph363.split

.lr.ph363.split:                                  ; preds = %.lr.ph363
  %i.bm = load i16, ptr %2, align 1, !tbaa !131
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bo = zext i16 %i.bn to i32
  %i.bp = zext i16 %i.as to i64
  %wide.trip.count = zext nneg i16 %i.ba to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph363.split, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph363.split ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0120362 = phi i1 [ false, %.lr.ph363.split ], [ %.3, %._crit_edge ] ; 2 uses
  %.not27.i = icmp samesign ult i64 %indvars.iv, %i.bp
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  br i1 %.not27.i, label %.lr.ph.split, label %._crit_edge, !prof !882

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread
  %.0119359 = phi ptr [ %i.bw, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread ], [ %i.bj, %.lr.ph ] ; 2 uses
  %i.bq = load i32, ptr %.0119359, align 4, !tbaa !139 ; 2 uses
  %.not.i = icmp ult i32 %i.bq, %i.bo
  br i1 %.not.i, label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit, label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread, !prof !882

_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit: ; preds = %.lr.ph.split
  %i.br = mul i32 %i.bq, %i.bf
  %i.bs = zext i32 %i.br to i64
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.bs
  %i.bt = load i32, ptr %gep, align 1, !tbaa !233
  %i.bu = tail call noundef i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = add i32 %i.bu, 65536
  %or.cond = icmp ult i32 %i.bv, 131072
  br i1 %or.cond, label %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread, label %._crit_edge

_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit.thread: ; preds = %.lr.ph.split, %_ZNK2OT7VarData19get_item_delta_fastEjjPKNS_7NumTypeILb1EhLj1EEEj.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.0119359, i64 4 ; 2 uses
  %.not146 = icmp eq ptr %i.bw, %i.bl
  br i1 %.not146, label %._crit_edge, label %.lr.ph.split
end_hunk_0
begin_hunk_1_@_ZN2OTL16intersects_classEPK8hb_set_tjPKvPv:bb.a
  %i.s = load i32, ptr %i.y, align 4, !tbaa !139
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !366

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.c
  %.01016.i20.i.i = phi i32 [ %i.w, %bb.c ], [ %i.i, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.u, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %i.u = add i32 %.017.i19.i.i, 1                 ; 2 uses
  %i.v = add i32 %i.u, %.01016.i20.i.i
  %i.w = and i32 %i.v, %i.p                       ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = and i32 %i.aa, 2
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %.loopexit, label %bb.c, !llvm.loop !366

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i ], [ %i.aa, %bb.c ]
  %i.ac = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ %i.x, %bb.c ]
  %i.ad = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.ad, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !139
  %i.ah = icmp ne i32 %i.ag, 0
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ai = load i16, ptr %2, align 1, !tbaa !131
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  switch i16 %i.aj, label %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit [
    i16 1, label %bb.e
    i16 2, label %bb.f
  ]

bb.e:                                             ; preds = %.loopexit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ak = trunc i32 %1 to i16
  %i.al = tail call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef %0, i16 noundef zeroext %i.ak)
  br label %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit

bb.f:                                             ; preds = %.loopexit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.am = trunc i32 %1 to i16
  %i.an = tail call noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef %0, i16 noundef zeroext %i.am)
  br label %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit

_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit: ; preds = %.loopexit, %bb.e, %bb.f
  %.0.i7 = phi i1 [ %i.an, %bb.f ], [ %i.al, %bb.e ], [ false, %.loopexit ]
  %i.ao = zext i1 %.0.i7 to i8
  store i8 %i.ao, ptr %i.b, align 1, !tbaa !193
  %i.ap = mul i32 %1, -1640531535
  %i.aq = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRbEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i1 noundef zeroext true) ; 0 uses
  %i.ar = load i8, ptr %i.b, align 1, !tbaa !193, !range !134, !noundef !212
  %i.as = trunc nuw i8 %i.ar to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit, %bb.d
  %.0 = phi i1 [ %i.ah, %bb.d ], [ %i.as, %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i16, ptr %i.f, align 1, !tbaa !131  ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 2 uses
  %i.i = zext i16 %i.h to i32
  %i.j = icmp eq i16 %2, 0
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 -1, ptr %i.e, align 4, !tbaa !139
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !252, !range !134, !noundef !212
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %.split, !prof !21

.split:                                           ; preds = %bb.b
  %i.o = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.e)
  br i1 %i.o, label %.split._crit_edge, label %.loopexit.sink.split

.split._crit_edge:                                ; preds = %.split
  %.pre = load i32, ptr %i.e, align 4, !tbaa !139
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 -1, ptr %i.c, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 -1, ptr %i.d, align 4, !tbaa !139
  %i.p = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.d) ; 0 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !139
  %.not29 = icmp eq i32 %i.q, 0
  br i1 %.not29, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.d

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.c
  store i32 -1, ptr %i.d, align 4, !tbaa !139
  %i.r = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !139
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %.not30 = icmp eq i32 %i.t, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br i1 %.not30, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %.split._crit_edge, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.u = phi i32 [ %.pre, %.split._crit_edge ], [ 0, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread ], [ %i.t, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !131
  %i.x = call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = icmp ult i32 %i.u, %i.y
  br i1 %i.z, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i32 %i.y, %i.i              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1                   ; 4 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !139
  %i.ac = load i8, ptr %i.l, align 8, !tbaa !252, !range !134, !noundef !212
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %.split48, !prof !21

.split48:                                         ; preds = %bb.e
  %i.ae = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br i1 %i.ae, label %.loopexit, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !139
  %i.af = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.b) ; 0 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !139
  %i.ah = icmp ult i32 %i.aa, %i.ag
  br i1 %i.ah, label %.thread49, label %bb.g

.thread49:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.f
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !139
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !139
  %.not = icmp eq i32 %i.aj, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br i1 %.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.split48, %bb.g, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.not35.not = icmp eq i16 %i.g, 0
  br i1 %.not35.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count = zext i16 %i.h to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !131
  %i.as = call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = icmp eq i16 %i.as, %2
  br i1 %i.at, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.au = load i16, ptr %i.al, align 1, !tbaa !131
  %i.av = call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i32
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = add nuw nsw i32 %i.ax, %i.aw            ; 3 uses
  %i.az = lshr i32 %i.ay, 9                       ; 3 uses
  %i.ba = load atomic i32, ptr %i.am monotonic, align 4 ; 2 uses
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !502 ; 3 uses
  %i.bc = icmp ult i32 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !503 ; 3 uses
  br i1 %i.bc, label %bb.k, label %._crit_edge.i.i.i.i.i.i, !prof !144

bb.k:                                             ; preds = %bb.j
  %i.be = zext i32 %i.ba to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !504
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, %i.az
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.k, %bb.j
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bb, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bh = add nsw i32 %i.bb, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.o, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.bj = lshr i32 %i.bi, 1                       ; 4 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !504 ; 2 uses
  %i.bo = icmp slt i32 %i.az, %i.bn
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bp = add nsw i32 %i.bj, -1
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.az, %i.bn
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = add nuw nsw i32 %i.bj, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.n ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.l ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.n ], [ %i.bp, %bb.l ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !506

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.m
  store atomic i32 %i.bj, ptr %i.am monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.k
  %i.br = phi i64 [ %i.bk, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.be, %bb.k ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !507 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !508
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = lshr i32 %i.ay, 6
  %i.bz = and i32 %i.by, 7
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !258
  %i.cd = and i32 %i.ay, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = and i8 %i.cg, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.p
  %.0.i.i.i.i.i = phi i8 [ %i.ch, %bb.p ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.o ]
  %i.ci = load i8, ptr %i.ap, align 8, !tbaa !252, !range !134, !noundef !212
  %.not31 = icmp eq i8 %i.ci, %.0.i.i.i.i.i
  br i1 %.not31, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.i, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !3902

.loopexit.sink.split:                             ; preds = %.split, %bb.d, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, %.thread49
  %.4.ph = phi i1 [ true, %.thread49 ], [ false, %.split ], [ true, %bb.d ], [ false, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, %bb.q, %.loopexit.sink.split, %.split48, %bb.h, %bb.g
  %.4 = phi i1 [ true, %.split48 ], [ true, %bb.g ], [ false, %bb.h ], [ %.4.ph, %.loopexit.sink.split ], [ true, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ false, %bb.q ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = icmp eq i16 %2, 0
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i32 -1, ptr %i.h, align 4, !tbaa !139
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = load i16, ptr %i.j, align 1, !tbaa !131  ; 2 uses
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not79 = icmp eq i16 %i.l, 0
  br i1 %.not79, label %.thread59.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit
  %i.r = phi i32 [ -1, %.lr.ph ], [ %.131, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 6 uses
  %.03782 = phi ptr [ %i.k, %.lr.ph ], [ %i.as, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 3 uses
  %.sroa.0.081 = phi ptr [ %i.k, %.lr.ph ], [ %.sroa.0.1, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 4 uses
  %.sroa.8.080 = phi i64 [ %i.n, %.lr.ph ], [ %.sroa.8.1, %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit ] ; 4 uses
  %i.s = and i64 %.sroa.8.080, 4294967295
  %.not.i.i.i = icmp eq i64 %i.s, 0               ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_Null_OT_RangeRecord, ptr %.sroa.0.081, !prof !21
  %i.t = load i16, ptr %spec.select.i.i.i, align 1, !tbaa !131
  %i.u = call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = add nsw i32 %i.r, 1                      ; 3 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i, label %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.y = add i64 %.sroa.8.080, 4294967295
  %.sroa.8.12.insert.insert = or i64 %i.y, 4294967296
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 6
  br label %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.q, align 8, !tbaa !252, !range !134, !noundef !212
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %.split, !prof !21

.split:                                           ; preds = %bb.f
  %i.ac = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.h)
  %.pr.pre.pre = load i32, ptr %i.h, align 4, !tbaa !139 ; 2 uses
  br i1 %i.ac, label %.split._crit_edge, label %.thread59

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 %i.r, ptr %i.f, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i32 %i.r, ptr %i.g, align 4, !tbaa !139
  %i.ad = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.g) ; 0 uses
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !139
  %i.af = icmp ult i32 %i.w, %i.ae
  br i1 %i.af, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %.split._crit_edge

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.g
  store i32 %i.r, ptr %i.g, align 4, !tbaa !139
  %i.ag = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) ; 0 uses
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !139
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  %.not77 = icmp eq i32 %i.ai, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br i1 %.not77, label %.thread59.thread, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.aj = phi i32 [ %i.ai, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ], [ %i.w, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52 ], [ %.pr.pre.pre, %.split ]
  %i.ak = load i16, ptr %.03782, align 1, !tbaa !131
  %i.al = call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = icmp ult i32 %i.aj, %i.am
  br i1 %i.an, label %.thread72, label %bb.h
end_hunk_1
