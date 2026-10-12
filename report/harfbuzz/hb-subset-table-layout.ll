Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2OTL16intersects_classEPK8hb_set_tjPKvPv:bb.a
  %i.s = load i32, ptr %i.y, align 4, !tbaa !218
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !6

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
  br i1 %.not.i.i.i, label %.loopexit, label %bb.c, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i ], [ %i.aa, %bb.c ]
  %i.ac = phi i64 [ %i.j, %.lr.ph.i.i.i ], [ %i.x, %bb.c ]
  %i.ad = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.ad, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !218
  %i.ah = icmp ne i32 %i.ag, 0
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ai = load i16, ptr %2, align 1, !tbaa !211
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  switch i16 %i.aj, label %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit [
    i16 1, label %bb.e
    i16 2, label %bb.f
  ]

bb.e:                                             ; preds = %.loopexit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ak = trunc i32 %1 to i16
  %i.al = tail call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef %0, i16 noundef zeroext %i.ak)
  br label %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit

bb.f:                                             ; preds = %.loopexit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.am = trunc i32 %1 to i16
  %i.an = tail call noundef zeroext i1 @_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE16intersects_classEPK8hb_set_tt(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef %0, i16 noundef zeroext %i.am)
  br label %_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit

_ZNK2OT8ClassDef16intersects_classEPK8hb_set_tj.exit: ; preds = %.loopexit, %bb.e, %bb.f
  %.0.i7 = phi i1 [ %i.an, %bb.f ], [ %i.al, %bb.e ], [ false, %.loopexit ]
  %i.ao = zext i1 %.0.i7 to i8
  store i8 %i.ao, ptr %i.b, align 1, !tbaa !220
  %i.ap = mul i32 %1, -1640531535
  %i.aq = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRbEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i1 noundef zeroext true) ; 0 uses
  %i.ar = load i8, ptr %i.b, align 1, !tbaa !220, !range !213, !noundef !229
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
  %i.g = load i16, ptr %i.f, align 1, !tbaa !211  ; 2 uses
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g) ; 2 uses
  %i.i = zext i16 %i.h to i32
  %i.j = icmp eq i16 %2, 0
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 -1, ptr %i.e, align 4, !tbaa !218
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !259, !range !213, !noundef !229
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %.split, !prof !112

.split:                                           ; preds = %bb.b
  %i.o = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.e)
  br i1 %i.o, label %.split._crit_edge, label %.loopexit.sink.split

.split._crit_edge:                                ; preds = %.split
  %.pre = load i32, ptr %i.e, align 4, !tbaa !218
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 -1, ptr %i.c, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 -1, ptr %i.d, align 4, !tbaa !218
  %i.p = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.d) ; 0 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !218
  %.not29 = icmp eq i32 %i.q, 0
  br i1 %.not29, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.d

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.c
  store i32 -1, ptr %i.d, align 4, !tbaa !218
  %i.r = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.s = load i32, ptr %i.d, align 4, !tbaa !218
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %.not30 = icmp eq i32 %i.t, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br i1 %.not30, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %.split._crit_edge, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.u = phi i32 [ %.pre, %.split._crit_edge ], [ 0, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread ], [ %i.t, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !211
  %i.x = call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = icmp ult i32 %i.u, %i.y
  br i1 %i.z, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nuw nsw i32 %i.y, %i.i              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1                   ; 4 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !218
  %i.ac = load i8, ptr %i.l, align 8, !tbaa !259, !range !213, !noundef !229
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %.split48, !prof !112

.split48:                                         ; preds = %bb.e
  %i.ae = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br i1 %i.ae, label %.loopexit, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !218
  %i.af = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.b) ; 0 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !218
  %i.ah = icmp ult i32 %i.aa, %i.ag
  br i1 %i.ah, label %.thread49, label %bb.g

.thread49:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.f
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !218
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !218
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
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !211
  %i.as = call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = icmp eq i16 %i.as, %2
  br i1 %i.at, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.au = load i16, ptr %i.al, align 1, !tbaa !211
  %i.av = call noundef i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = zext i16 %i.av to i32
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = add nuw i32 %i.ax, %i.aw                ; 3 uses
  %i.az = lshr i32 %i.ay, 9                       ; 3 uses
  %i.ba = load atomic i32, ptr %i.am monotonic, align 4 ; 2 uses
  %i.bb = load i32, ptr %i.an, align 4, !tbaa !408 ; 3 uses
  %i.bc = icmp ult i32 %i.ba, %i.bb
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !409 ; 3 uses
  br i1 %i.bc, label %bb.k, label %._crit_edge.i.i.i.i.i.i, !prof !219

bb.k:                                             ; preds = %bb.j
  %i.be = zext i32 %i.ba to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !411
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
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !411 ; 2 uses
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
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !17

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.m
  store atomic i32 %i.bj, ptr %i.am monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.k
  %i.br = phi i64 [ %i.bk, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.be, %bb.k ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !412 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !413
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = lshr i32 %i.ay, 6
  %i.bz = and i32 %i.by, 7
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !266
  %i.cd = and i32 %i.ay, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cc, %i.ce
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = and i8 %i.cg, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.o, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.p
  %.0.i.i.i.i.i = phi i8 [ %i.ch, %bb.p ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.o ]
  %i.ci = load i8, ptr %i.ap, align 8, !tbaa !259, !range !213, !noundef !229
  %.not31 = icmp eq i8 %i.ci, %.0.i.i.i.i.i
  br i1 %.not31, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.i, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !3990

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
  store i32 -1, ptr %i.h, align 4, !tbaa !218
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = load i16, ptr %i.j, align 1, !tbaa !211  ; 2 uses
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
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_Null_OT_RangeRecord, ptr %.sroa.0.081, !prof !112
  %i.t = load i16, ptr %spec.select.i.i.i, align 1, !tbaa !211
  %i.u = call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = add nsw i32 %i.r, 1                      ; 3 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i, label %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit, label %bb.e, !prof !112

bb.e:                                             ; preds = %bb.d
  %i.y = add i64 %.sroa.8.080, 4294967295
  %.sroa.8.12.insert.insert = or i64 %i.y, 4294967296
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 6
  br label %_ZN9hb_iter_tI17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS2_10SmallTypesEEEERS7_EppEi.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.q, align 8, !tbaa !259, !range !213, !noundef !229
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %.split, !prof !112

.split:                                           ; preds = %bb.f
  %i.ac = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.h)
  %.pr.pre.pre = load i32, ptr %i.h, align 4, !tbaa !218 ; 2 uses
  br i1 %i.ac, label %.split._crit_edge, label %.thread59

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 %i.r, ptr %i.f, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i32 %i.r, ptr %i.g, align 4, !tbaa !218
  %i.ad = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.g) ; 0 uses
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !218
  %i.af = icmp ult i32 %i.w, %i.ae
  br i1 %i.af, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br label %.split._crit_edge

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit: ; preds = %bb.g
  store i32 %i.r, ptr %i.g, align 4, !tbaa !218
  %i.ag = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.p, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) ; 0 uses
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !218
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  %.not77 = icmp eq i32 %i.ai, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  br i1 %.not77, label %.thread59.thread, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit
  %i.aj = phi i32 [ %i.ai, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit ], [ %i.w, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE4nextEPj.exit.thread52 ], [ %.pr.pre.pre, %.split ]
  %i.ak = load i16, ptr %.03782, align 1, !tbaa !211
  %i.al = call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = icmp ult i32 %i.aj, %i.am
  br i1 %i.an, label %.thread72, label %bb.h
end_hunk_0
