Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-cff?download=true
inline.NumInlined: 7369
inline.NumDeleted: 3187
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5graph7graph_t8vertex_t20link_positions_validEjb:bb.a
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not34 = icmp ugt i64 %i.af, %i.aa
  br i1 %.not34, label %bb.e, label %.critedge, !prof !121

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 %i.x, ptr %i.c, align 4, !tbaa !192
  %i.ag = load i8, ptr %i.q, align 8, !tbaa !298, !range !187, !noundef !274
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.f, !prof !120

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.c)
  %.pre.i.i = load i32, ptr %i.c, align 4
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 %i.x, ptr %i.a, align 4, !tbaa !192
  %i.aj = icmp eq i32 %i.x, -2
  br i1 %i.aj, label %bb.k, label %bb.h, !prof !120

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.x, ptr %i.b, align 4, !tbaa !192
  %i.ak = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.b) ; 0 uses
  %i.al = load i32, ptr %i.b, align 4, !tbaa !192
  %i.am = icmp ult i32 %i.u, %i.al
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.x, ptr %i.b, align 4, !tbaa !192
  %i.an = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !192
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = icmp ne i32 %i.ap, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i.i.i = phi i32 [ %i.ap, %bb.i ], [ %i.u, %bb.h ]
  %.0.i.i.i = phi i1 [ %i.aq, %bb.i ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.ar = phi i32 [ %.sink.i.i.i, %bb.j ], [ -1, %bb.g ]
  %.1.i.i.i = phi i1 [ %.0.i.i.i, %bb.j ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit: ; preds = %bb.f, %bb.k
  %i.as = phi i32 [ %.pre.i.i, %bb.f ], [ %i.ar, %bb.k ]
  %.2.i.i.i = phi i1 [ %i.ai, %bb.f ], [ %.1.i.i.i, %bb.k ]
  %i.at = icmp ule i32 %i.as, %i.y
  %i.au = select i1 %.2.i.i.i, i1 %i.at, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br i1 %i.au, label %.critedge, label %bb.l, !prof !120

bb.l:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit
  %i.av = load i8, ptr %i.q, align 8, !tbaa !298, !range !187, !noundef !274
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %bb.n, !prof !120

bb.m:                                             ; preds = %bb.l
  call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.u, i32 noundef %i.y)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.u, i32 noundef %i.y) ; 0 uses
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit: ; preds = %bb.m, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.02638, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.o
  br i1 %.not, label %.critedge35.loopexit, label %bb.b

.critedge35.loopexit:                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit
  %.pre = load i8, ptr %i.f, align 8, !tbaa !354, !range !187
  %i.az = trunc nuw i8 %.pre to i1
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.d, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit, %bb.a, %.critedge35.loopexit
  %.4 = phi i1 [ true, %bb.a ], [ %i.az, %.critedge35.loopexit ], [ false, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !348
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 216
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #15 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.k, label %.preheader, !prof !120

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !342
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !348
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.k

bb.d:                                             ; preds = %.lr.ph, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5graph7graph_t8vertex_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %indvars.iv ; 28 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.n, align 4, !tbaa !392
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store atomic i32 1, ptr %i.o monotonic, align 8
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 1, ptr %i.r, align 8, !tbaa !421
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !394
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.s, i8 0, i64 18, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 148
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 164
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store atomic i32 1, ptr %i.u monotonic, align 8
  store atomic i8 1, ptr %i.v monotonic, align 4
  store atomic ptr null, ptr %i.w monotonic, align 8
  store i8 1, ptr %i.x, align 8, !tbaa !354
  store i32 0, ptr %i.y, align 4, !tbaa !299
  store atomic i32 0, ptr %i.z monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aa, i8 0, i64 33, i1 false)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !349
  %i.ac = getelementptr inbounds nuw [216 x i8], ptr %i.ab, i64 %indvars.iv ; 17 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, ptr noundef nonnull align 8 dereferenceable(216) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !192
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !192
  store i32 0, ptr %i.ad, align 8, !tbaa !192
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !192
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !192
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !192
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !192
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !422
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !422
  store ptr null, ptr %i.ak, align 8, !tbaa !422
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !192
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !192
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !192
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !192
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !192
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !192
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !192
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !192
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !422
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !315
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !315
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !422
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.m, ptr noundef nonnull align 8 dereferenceable(33) %i.ay, i64 33, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ba = load i8, ptr %i.az, align 8, !range !187
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, !prof !121

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 114 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !899
  store i16 %i.bd, ptr %i.s, align 2, !tbaa !899
  store i16 0, ptr %i.bc, align 2, !tbaa !899
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 116 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 116 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !192
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !192
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !192
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !192
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !192
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !192
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !192
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !192
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 124 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 124 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !192
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !192
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !192
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !192
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 8, !tbaa !192
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !192
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !192
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !192
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !900
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !900
  store ptr null, ptr %i.bu, align 8, !tbaa !900
  br label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i

_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i:          ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !187
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.f, label %_ZN5graph7graph_t8vertex_taSEOS1_.exit, !prof !120

bb.f:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !212, !range !187, !noundef !274
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !212
  store i8 0, ptr %i.ca, align 8, !tbaa !212
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull align 8 dereferenceable(49) %i.bw)
  br label %_ZN5graph7graph_t8vertex_taSEOS1_.exit

_ZN5graph7graph_t8vertex_taSEOS1_.exit:           ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, %bb.f
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !349
  %i.cd = getelementptr inbounds nuw [216 x i8], ptr %i.cc, i64 %indvars.iv ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ce) #15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  store atomic i32 -57005, ptr %i.cf monotonic, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 104 ; 2 uses
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %i.ch)
  %i.cj = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.ch) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.ch) #15
  store atomic ptr null, ptr %i.cg monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN5graph7graph_t8vertex_taSEOS1_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !394 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.h, !prof !120

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.cl) #15
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.h, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !310
  %i.co = add i32 %i.cn, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.co, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.i:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store i32 0, ptr %i.cp, align 4, !tbaa !311
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !312
  tail call void @hb_free(ptr noundef %i.cr) #15
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.i, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !310
  %i.cu = add i32 %i.ct, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.cu, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.j, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 0, ptr %i.cv, align 4, !tbaa !311
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !312
  tail call void @hb_free(ptr noundef %i.cx) #15
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.f, align 4, !tbaa !342
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge, !llvm.loop !898

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !349
  tail call void @hb_free(ptr noundef %i.dc) #15
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !354, !range !187, !noundef !274
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !range !187
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %_Z4swapR12hb_bit_set_tS0_.exit, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !192
  %i.i = load i32, ptr %i.g, align 4, !tbaa !192
  store i32 %i.i, ptr %i.f, align 4, !tbaa !192
  store i32 %i.h, ptr %i.g, align 4, !tbaa !192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 8, !tbaa !192
  %i.l = load i32, ptr %i.k, align 8, !tbaa !192
  store i32 %i.l, ptr %i.j, align 8, !tbaa !192
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !192
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !192
  %i.p = load i32, ptr %i.n, align 8, !tbaa !192
  store i32 %i.p, ptr %i.m, align 8, !tbaa !192
  store i32 %i.o, ptr %i.n, align 8, !tbaa !192
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !192
  %i.t = load i32, ptr %i.r, align 4, !tbaa !192
  store i32 %i.t, ptr %i.q, align 4, !tbaa !192
  store i32 %i.s, ptr %i.r, align 4, !tbaa !192
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !901
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !901
  store ptr %i.x, ptr %i.u, align 8, !tbaa !901
  store ptr %i.w, ptr %i.v, align 8, !tbaa !901
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !192
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !192
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !192
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !192
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !192
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !192
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !192
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !902
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !902
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !902
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !902
  br label %_Z4swapR12hb_bit_set_tS0_.exit

_Z4swapR12hb_bit_set_tS0_.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #15
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i

_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !423
  %i.g = add i32 %i.f, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.g, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.c, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

bb.c:                                             ; preds = %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !424
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !396
  tail call void @hb_free(ptr noundef %i.j) #15
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i: ; preds = %bb.c, %_ZL14hb_object_finiI14hb_sparseset_tI23hb_bit_set_invertible_tEEvPT_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !425
  %i.m = add i32 %i.l, -1
  %spec.select.i.i1.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i1.i.i.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.n, align 4, !tbaa !426
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !427
  tail call void @hb_free(ptr noundef %i.p) #15
  %.pre = load i32, ptr %i.e, align 8, !tbaa !423
  %i.q = add i32 %.pre, -1
  %i.r = icmp ult i32 %i.q, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !424
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !396
  tail call void @hb_free(ptr noundef %i.u) #15
  br label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN23hb_bit_set_invertible_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !348    ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !120

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, !prof !120

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !6

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 19884107
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %bb.f, !prof !120

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit, !prof !120

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !348    ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !348
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !349
  store i32 %.138.i, ptr %0, align 8, !tbaa !348
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !342  ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.al, %bb.i ]
end_hunk_0
begin_hunk_1_@_ZN5graph7graph_t14update_parentsEv:bb.a
  %.not.i31.i164 = icmp eq i64 %i.xx, 0
  br i1 %.not.i31.i164, label %_ZL9hb_memsetPvij.exit.i165, label %bb.db, !prof !120

bb.db:                                            ; preds = %bb.da
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.xw, i8 0, i64 %i.xx, i1 false)
  br label %_ZL9hb_memsetPvij.exit.i165

_ZL9hb_memsetPvij.exit.i165:                      ; preds = %bb.db, %bb.da
  %i.xy = load i32, ptr %i.xo, align 4, !tbaa !393 ; 2 uses
  %.not.i32.i166 = icmp eq i32 %i.xy, 0
  %i.xz = add i32 %i.xy, 1
  %spec.select.i.i167 = select i1 %.not.i32.i166, i32 0, i32 %i.xz ; 2 uses
  %i.ya = load ptr, ptr %i.vz, align 8, !tbaa !394 ; 2 uses
  store i32 0, ptr %i.xk, align 8, !tbaa !434
  store i32 0, ptr %i.xq, align 4, !tbaa !402
  %notmask.i168 = shl nsw i32 -1, %narrow.i.i162
  %i.yb = xor i32 %notmask.i168, -1
  store i32 %i.yb, ptr %i.xo, align 4, !tbaa !393
  %i.yc = icmp eq i32 %i.xt, 0
  br i1 %i.yc, label %_ZN12hb_hashmap_tIjjLb0EE9prime_forEj.exit.i169, label %bb.dc, !prof !120

bb.dc:                                            ; preds = %_ZL9hb_memsetPvij.exit.i165
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE9prime_forEj.prime_mod, i64 %i.xu
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !192
  br label %_ZN12hb_hashmap_tIjjLb0EE9prime_forEj.exit.i169

_ZN12hb_hashmap_tIjjLb0EE9prime_forEj.exit.i169:  ; preds = %bb.dc, %_ZL9hb_memsetPvij.exit.i165
  %.0.i.i170 = phi i32 [ %i.ye, %bb.dc ], [ 2147483647, %_ZL9hb_memsetPvij.exit.i165 ]
  %i.yf = getelementptr inbounds nuw i8, ptr %.0.i37, i64 128
  store i32 %.0.i.i170, ptr %i.yf, align 8, !tbaa !435
  %.tr.i171 = trunc nuw nsw i32 %narrow.i.i162 to i16
  %i.yg = shl nuw nsw i16 %.tr.i171, 1
  %i.yh = getelementptr inbounds nuw i8, ptr %.0.i37, i64 114
  store i16 %i.yg, ptr %i.yh, align 2, !tbaa !436
  store ptr %i.xw, ptr %i.vz, align 8, !tbaa !394
  %.not43.i172 = icmp eq i32 %spec.select.i.i167, 0
  br i1 %.not43.i172, label %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread, label %.lr.ph.preheader.i173

.lr.ph.preheader.i173:                            ; preds = %_ZN12hb_hashmap_tIjjLb0EE9prime_forEj.exit.i169
  %wide.trip.count.i174 = zext i32 %spec.select.i.i167 to i64
  br label %.lr.ph.i175

_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread: ; preds = %bb.de, %_ZN12hb_hashmap_tIjjLb0EE9prime_forEj.exit.i169
  tail call void @hb_free(ptr noundef %i.ya) #15, !inline_history !933
  %.pre340 = load ptr, ptr %i.vz, align 8, !tbaa !394
  br label %.critedge.i79

.lr.ph.i175:                                      ; preds = %bb.de, %.lr.ph.preheader.i173
  %indvars.iv.i176 = phi i64 [ 0, %.lr.ph.preheader.i173 ], [ %indvars.iv.next.i177, %bb.de ] ; 2 uses
  %i.yi = getelementptr inbounds nuw [12 x i8], ptr %i.ya, i64 %indvars.iv.i176 ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yk = load i32, ptr %i.yj, align 4            ; 2 uses
  %i.yl = trunc i32 %i.yk to i1
  br i1 %i.yl, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph.i175
  %i.ym = lshr i32 %i.yk, 2
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yo = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIjjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.vy, ptr noundef nonnull align 4 dereferenceable(4) %i.yi, i32 noundef %i.ym, ptr noundef nonnull align 4 dereferenceable(4) %i.yn, i1 noundef zeroext true) #16, !inline_history !933 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.lr.ph.i175
  %indvars.iv.next.i177 = add nuw nsw i64 %indvars.iv.i176, 1 ; 2 uses
  %exitcond.not.i178 = icmp eq i64 %indvars.iv.next.i177, %wide.trip.count.i174
  br i1 %exitcond.not.i178, label %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread, label %.lr.ph.i175, !llvm.loop !17

_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180:        ; preds = %bb.cz
  store i8 0, ptr %i.xh, align 8, !tbaa !421
  br label %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit52

.critedge.i79:                                    ; preds = %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread, %bb.cy
  %i.yp = phi ptr [ %.pre340, %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread ], [ %i.wa, %bb.cy ] ; 5 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.0.i37, i64 128
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !435
  %i.ys = urem i32 %i.bp, %i.yr                   ; 2 uses
  %i.yt = zext nneg i32 %i.ys to i64              ; 2 uses
  %i.yu = getelementptr inbounds nuw [12 x i8], ptr %i.yp, i64 %i.yt ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.yw = load i32, ptr %i.yv, align 4            ; 2 uses
  %i.yx = and i32 %i.yw, 2
  %.not44.i80 = icmp eq i32 %i.yx, 0
  br i1 %.not44.i80, label %.loopexit.thread.i94.thread, label %.lr.ph.i81

.loopexit.thread.i94.thread:                      ; preds = %.critedge.i79
  %i.yy = getelementptr inbounds nuw [12 x i8], ptr %i.yp, i64 %i.yt ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  br label %bb.dh

.lr.ph.i81:                                       ; preds = %.critedge.i79, %bb.df
  %i.za = phi i32 [ %i.zo, %bb.df ], [ %i.yw, %.critedge.i79 ]
  %i.zb = phi ptr [ %i.zm, %bb.df ], [ %i.yu, %.critedge.i79 ]
  %.048.i82 = phi i32 [ %i.zh, %bb.df ], [ 0, %.critedge.i79 ] ; 2 uses
  %.02946.i83 = phi i32 [ %i.zk, %bb.df ], [ %i.ys, %.critedge.i79 ] ; 3 uses
  %.03045.i84 = phi i32 [ %spec.select.i86, %bb.df ], [ -1, %.critedge.i79 ] ; 3 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !192
  %i.zd = zext i32 %i.zc to i64
  %i.ze = icmp eq i64 %indvars.iv317, %i.zd
  br i1 %i.ze, label %.loopexit.thread.i94, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i81
  %i.zf = trunc i32 %i.za to i1
  %i.zg = icmp ne i32 %.03045.i84, -1
  %or.cond.not.i85 = select i1 %i.zf, i1 true, i1 %i.zg
  %spec.select.i86 = select i1 %or.cond.not.i85, i32 %.03045.i84, i32 %.02946.i83 ; 2 uses
  %i.zh = add i32 %.048.i82, 1                    ; 3 uses
  %i.zi = add i32 %i.zh, %.02946.i83
  %i.zj = load i32, ptr %i.xo, align 4, !tbaa !393
  %i.zk = and i32 %i.zj, %i.zi                    ; 3 uses
  %i.zl = zext i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [12 x i8], ptr %i.yp, i64 %i.zl ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.zo = load i32, ptr %i.zn, align 4            ; 2 uses
  %i.zp = and i32 %i.zo, 2
  %.not.i87 = icmp eq i32 %i.zp, 0
  br i1 %.not.i87, label %.loopexit.thread.i94, label %.lr.ph.i81, !llvm.loop !18

.loopexit.thread.i94:                             ; preds = %bb.df, %.lr.ph.i81
  %.03043.i89 = phi i32 [ %spec.select.i86, %bb.df ], [ %.03045.i84, %.lr.ph.i81 ]
  %.02941.i90 = phi i32 [ %i.zk, %bb.df ], [ %.02946.i83, %.lr.ph.i81 ]
  %.02839.i91 = phi i32 [ %i.zh, %bb.df ], [ %.048.i82, %.lr.ph.i81 ] ; 2 uses
  %.03043.fr.i92 = freeze i32 %.03043.i89         ; 2 uses
  %i.zq = icmp eq i32 %.03043.fr.i92, -1
  %spec.select67.i93 = select i1 %i.zq, i32 %.02941.i90, i32 %.03043.fr.i92
  %.phi.trans.insert341 = zext i32 %spec.select67.i93 to i64 ; 2 uses
  %.phi.trans.insert342 = getelementptr inbounds nuw [12 x i8], ptr %i.yp, i64 %.phi.trans.insert341
  %.phi.trans.insert343 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert342, i64 4
  %.pre344 = load i32, ptr %.phi.trans.insert343, align 4
  %.pre345 = and i32 %.pre344, 2
  %i.zr = icmp eq i32 %.pre345, 0
  %i.zs = getelementptr inbounds nuw [12 x i8], ptr %i.yp, i64 %.phi.trans.insert341 ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 4 ; 3 uses
  br i1 %i.zr, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.loopexit.thread.i94
  %i.zu = load i32, ptr %i.xk, align 8, !tbaa !434
  %i.zv = add i32 %i.zu, -1
  store i32 %i.zv, ptr %i.xk, align 8, !tbaa !434
  %i.zw = load i32, ptr %i.zt, align 4
  %i.zx = and i32 %i.zw, 1
  %i.zy = getelementptr inbounds nuw i8, ptr %.0.i37, i64 116 ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !402
  %i.aaa = sub i32 %i.zz, %i.zx
  store i32 %i.aaa, ptr %i.zy, align 4, !tbaa !402
  br label %bb.dh

bb.dh:                                            ; preds = %.loopexit.thread.i94.thread, %bb.dg, %.loopexit.thread.i94
  %i.aab = phi ptr [ %i.yz, %.loopexit.thread.i94.thread ], [ %i.zt, %bb.dg ], [ %i.zt, %.loopexit.thread.i94 ]
  %i.aac = phi ptr [ %i.yy, %.loopexit.thread.i94.thread ], [ %i.zs, %bb.dg ], [ %i.zs, %.loopexit.thread.i94 ] ; 2 uses
  %.0283961.i95433 = phi i32 [ 0, %.loopexit.thread.i94.thread ], [ %.02839.i91, %bb.dg ], [ %.02839.i91, %.loopexit.thread.i94 ]
  store i32 %i.bh, ptr %i.aac, align 4, !tbaa !438
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store i32 1, ptr %i.aad, align 4, !tbaa !439
  store i32 %i.br, ptr %i.aab, align 4
  %i.aae = getelementptr inbounds nuw i8, ptr %.0.i37, i64 116 ; 2 uses
  %i.aaf = load <2 x i32>, ptr %i.aae, align 4, !tbaa !192
  %i.aag = add <2 x i32> %i.aaf, splat (i32 1)    ; 2 uses
  store <2 x i32> %i.aag, ptr %i.aae, align 4, !tbaa !192
  %i.aah = getelementptr inbounds nuw i8, ptr %.0.i37, i64 114
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !436
  %i.aaj = zext i16 %i.aai to i32
  %i.aak = icmp ugt i32 %.0283961.i95433, %i.aaj
  br i1 %i.aak, label %bb.di, label %bb.dk, !prof !120

bb.di:                                            ; preds = %bb.dh
  %i.aal = extractelement <2 x i32> %i.aag, i64 1
  %i.aam = shl i32 %i.aal, 3
  %i.aan = load i32, ptr %i.xo, align 4, !tbaa !393 ; 2 uses
  %i.aao = icmp ugt i32 %i.aam, %i.aan
  br i1 %i.aao, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aap = add i32 %i.aan, -8
  %i.aaq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.vy, i32 noundef %i.aap) ; 0 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dh, %bb.dj, %bb.di
  %i.aar = load i32, ptr %i.sb, align 8, !tbaa !346
  %i.aas = add i32 %i.aar, 1
  br label %.sink.split.i50

.sink.split.i50:                                  ; preds = %bb.dk, %bb.cx, %bb.cd
  %.sink.i51 = phi i32 [ %i.xg, %bb.cx ], [ %i.aas, %bb.dk ], [ 1, %bb.cd ]
  store i32 %.sink.i51, ptr %i.sb, align 8, !tbaa !346
  br label %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit52

_ZN5graph7graph_t8vertex_t10add_parentEjb.exit52: ; preds = %.loopexit.i49, %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180, %bb.cf, %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit201, %.sink.split.i50
  %i.aat = getelementptr inbounds nuw i8, ptr %.029287, i64 12 ; 2 uses
  %.not34 = icmp eq ptr %i.aat, %i.bg
  br i1 %.not34, label %._crit_edge290, label %bb.ar

._crit_edge295.loopexit.unr-lcssa:                ; preds = %_ZN5graph7graph_t13check_successEb.exit.1
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %._crit_edge295, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge295.loopexit.unr-lcssa, %.lr.ph294
  %indvars.iv322.epil.init = phi i64 [ 0, %.lr.ph294 ], [ %indvars.iv.next323.1, %._crit_edge295.loopexit.unr-lcssa ]
  %.epil.init = phi i8 [ %.promoted, %.lr.ph294 ], [ %i.abi, %._crit_edge295.loopexit.unr-lcssa ]
  %lcmp.mod489 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod489)
  %i.aau = getelementptr inbounds nuw [216 x i8], ptr %i.aj, i64 %indvars.iv322.epil.init ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.aau, i64 112
  %2 = load i8, ptr %1, align 8, !tbaa !421, !range !187, !noundef !274
  %3 = trunc nuw i8 %2 to i1
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 160
  %i.aaw = load i8, ptr %i.aav, align 8, !range !187
  %4 = trunc nuw i8 %i.aaw to i1
  %5 = select i1 %3, i1 %4, i1 false
  %i.aax = trunc nuw i8 %.epil.init to i1
  %.not.i53.epil = xor i1 %i.aax, true
  %brmerge.i.epil = or i1 %5, %.not.i53.epil
  br i1 %brmerge.i.epil, label %._crit_edge295, label %bb.dl

bb.dl:                                            ; preds = %.epil.preheader
  store i8 0, ptr %i.ak, align 1, !tbaa !340
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit.unr-lcssa, %bb.dl, %.epil.preheader, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !932
  br label %bb.dp

bb.dm:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit.1, %.lr.ph294.new
  %indvars.iv322 = phi i64 [ 0, %.lr.ph294.new ], [ %indvars.iv.next323.1, %_ZN5graph7graph_t13check_successEb.exit.1 ] ; 3 uses
  %i.aay = phi i8 [ %.promoted, %.lr.ph294.new ], [ %i.abi, %_ZN5graph7graph_t13check_successEb.exit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph294.new ], [ %niter.next.1, %_ZN5graph7graph_t13check_successEb.exit.1 ]
  %i.aaz = getelementptr inbounds nuw [216 x i8], ptr %i.aj, i64 %indvars.iv322 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.aaz, i64 112
  %7 = load i8, ptr %6, align 8, !tbaa !421, !range !187, !noundef !274
  %8 = trunc nuw i8 %7 to i1
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 160
  %i.abb = load i8, ptr %i.aba, align 8, !range !187
  %9 = trunc nuw i8 %i.abb to i1
  %10 = select i1 %8, i1 %9, i1 false
  %i.abc = trunc nuw i8 %i.aay to i1
  %.not.i53 = xor i1 %i.abc, true
  %brmerge.i = or i1 %10, %.not.i53
  br i1 %brmerge.i, label %_ZN5graph7graph_t13check_successEb.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i8 0, ptr %i.ak, align 1, !tbaa !340
  br label %_ZN5graph7graph_t13check_successEb.exit

_ZN5graph7graph_t13check_successEb.exit:          ; preds = %bb.dm, %bb.dn
  %i.abd = phi i8 [ %i.aay, %bb.dm ], [ 0, %bb.dn ] ; 2 uses
  %i.abe = getelementptr inbounds nuw [216 x i8], ptr %i.aj, i64 %indvars.iv322 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.abe, i64 328
  %12 = load i8, ptr %11, align 8, !tbaa !421, !range !187, !noundef !274
  %13 = trunc nuw i8 %12 to i1
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 376
  %i.abg = load i8, ptr %i.abf, align 8, !range !187
  %14 = trunc nuw i8 %i.abg to i1
  %15 = select i1 %13, i1 %14, i1 false
  %i.abh = trunc nuw i8 %i.abd to i1
  %.not.i53.1 = xor i1 %i.abh, true
  %brmerge.i.1 = or i1 %15, %.not.i53.1
  br i1 %brmerge.i.1, label %_ZN5graph7graph_t13check_successEb.exit.1, label %bb.do

bb.do:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit
  store i8 0, ptr %i.ak, align 1, !tbaa !340
  br label %_ZN5graph7graph_t13check_successEb.exit.1

_ZN5graph7graph_t13check_successEb.exit.1:        ; preds = %bb.do, %_ZN5graph7graph_t13check_successEb.exit
  %i.abi = phi i8 [ %i.abd, %_ZN5graph7graph_t13check_successEb.exit ], [ 0, %bb.do ] ; 2 uses
  %indvars.iv.next323.1 = add nuw nsw i64 %indvars.iv322, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge295.loopexit.unr-lcssa, label %bb.dm, !llvm.loop !931

bb.dp:                                            ; preds = %bb.a, %._crit_edge295
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !433, !range !187, !noundef !274
  %i.f = zext i1 %2 to i8
  %i.g = or i8 %i.e, %i.f
  store i8 %i.g, ptr %i.d, align 8, !tbaa !433
  br i1 %2, label %bb.b, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load i8, ptr %i.i, align 8, !tbaa !298, !range !187, !noundef !274
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !120

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !346
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  store i32 %1, ptr %i.o, align 4, !tbaa !392
  br label %.sink.split

bb.f:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.p = load i32, ptr %i.o, align 4, !tbaa !392  ; 2 uses
  %.not = icmp eq i32 %i.p, -1
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 1, ptr %i.b, align 4, !tbaa !192
  %i.r = mul i32 %i.p, -1640531535
  %i.s = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjiEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.o, i32 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.s, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %i.o, align 4, !tbaa !392
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !394  ; 4 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = mul i32 %1, 506952113
  %i.x = and i32 %i.w, 1073741823
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i32, ptr %i.y, align 8, !tbaa !435
  %i.aa = urem i32 %i.x, %i.z                     ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i32 %i.ae, 2
  %.not15.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not15.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !192
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %i.aq, align 4, !tbaa !192
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.k
  %.01016.i20.i.i = phi i32 [ %i.ao, %bb.k ], [ %i.aa, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.am, %bb.k ], [ 0, %.lr.ph.i.i.i ]
  %i.am = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.an = add i32 %i.am, %.01016.i20.i.i
  %i.ao = and i32 %i.an, %i.ah                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 2
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %.loopexit, label %bb.k, !llvm.loop !19

_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.k, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %i.as, %bb.k ]
  %i.au = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.ap, %bb.k ]
  %i.av = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.av, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !192
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !192
  %i.ba = load i32, ptr %i.l, align 8, !tbaa !346
  %i.bb = add i32 %i.ba, 1
  br label %.sink.split

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.i, %bb.j, %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4, !tbaa !192
  %i.bc = mul i32 %1, -1640531535
  %i.bd = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjiEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.be = load i32, ptr %i.l, align 8, !tbaa !346
  %i.bf = add i32 %i.be, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.m, %bb.l
  %.sink = phi i32 [ %i.bb, %bb.l ], [ %i.bf, %bb.m ], [ 1, %bb.e ]
  store i32 %.sink, ptr %i.l, align 8, !tbaa !346
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %.loopexit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !354, !range !187, !noundef !274
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 9                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !395  ; 3 uses
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !396  ; 3 uses
  br i1 %i.h, label %bb.c, label %._crit_edge.i, !prof !121

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !398
  %.not.i = icmp eq i32 %i.m, %i.c
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %.not1.i.i.i.i.i = icmp sgt i32 %i.g, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.n = add nsw i32 %i.g, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.g ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.o = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.p = lshr i32 %i.o, 1                         ; 4 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !398  ; 2 uses
  %i.u = icmp slt i32 %i.c, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = add nsw i32 %i.p, -1
  br label %bb.g
end_hunk_1
begin_hunk_2_@_ZNK13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat215split_subtablesERNS5_24gsubgpos_graph_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EE8__item__Ev:bb.a
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  %.not.i.i.i.i.i.i.i.i = icmp ult i32 %i.z, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i, !prof !121

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.val, i64 6
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ae
  br label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i

_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.f ], [ @_hb_NullPool, %bb.e ]
  %i.ag = load i16, ptr %.0.i.i.i.i.i.i.i.i, align 1, !tbaa !240
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  br label %"_ZNK4$_20clIRZN5graph14PairPosFormat215split_subtablesERNS1_24gsubgpos_graph_context_tEjEUljE_jEEDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEOS7_OS8_.exit"

bb.g:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEdeEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !238
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.val, i64 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.val, i64 4 ; 2 uses
  %i.ak = load i16, ptr %i.ai, align 1, !tbaa !240 ; 2 uses
  %.not1.i.i.i.i.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not1.i.i.i.i.not.i.i.i.i.i.i.i.i, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.g
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %.sroa.4.8.extract.trunc.i.i.i.i.i.i.i.i = zext i16 %i.al to i32
  %i.am = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i.i.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.an = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = lshr i32 %i.an, 1                       ; 3 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !240
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i32
  %i.av = icmp ult i32 %.0.i.i.i, %i.au
  br i1 %i.av, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !240
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i32
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i32 %.0.i.i.i, %i.az
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = add nsw i32 %i.ao, -1
  br label %bb.i

bb.h:                                             ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = add nuw nsw i32 %i.ao, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.223.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.h ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.ba, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !32

_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw [6 x i8], ptr %i.aj, i64 %i.ap
  br label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i

_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i: ; preds = %bb.i, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i, %bb.g
  %i.bd = phi ptr [ %i.bc, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.g ], [ @_hb_Null_OT_RangeRecord, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !240
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  br label %"_ZNK4$_20clIRZN5graph14PairPosFormat215split_subtablesERNS1_24gsubgpos_graph_context_tEjEUljE_jEEDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEOS7_OS8_.exit"

"_ZNK4$_20clIRZN5graph14PairPosFormat215split_subtablesERNS1_24gsubgpos_graph_context_tEjEUljE_jEEDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEOS7_OS8_.exit": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEdeEv.exit, %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i
  %.0.shrunk.i.i.i.i.i.i = phi i16 [ %i.bg, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i ], [ %i.ah, %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i.i.i.i.i.i ], [ 0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEdeEv.exit ]
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i16 %.0.shrunk.i.i.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %.0.i.i.i to i64
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  ret i64 %.sroa.0.0.insert.insert.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE13set_with_hashIRKjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !518, !range !187, !noundef !274
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !524  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !523
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.l, !prof !121

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !522
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !519  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !192
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !192
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !523
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !1364

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !524
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !524
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !525
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !525
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !192
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !527
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !454, !range !187, !noundef !274
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i8, ptr %i.ba, align 8, !range !187
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %i.bg, label %bb.i, label %_ZN8hb_set_taSEOS_.exit, !prof !120

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 72 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 8, !tbaa !212, !range !187, !noundef !274
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !212, !range !187, !noundef !274
  store i8 %i.bk, ptr %i.bh, align 8, !tbaa !212
  store i8 %i.bj, ptr %i.bi, align 8, !tbaa !212
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.bb, ptr noundef nonnull align 8 dereferenceable(49) %i.ba)
  br label %_ZN8hb_set_taSEOS_.exit

_ZN8hb_set_taSEOS_.exit:                          ; preds = %bb.h, %bb.i
  %i.bl = shl nuw i32 %i.k, 2
  %i.bm = or disjoint i32 %i.bl, 3
  store i32 %i.bm, ptr %i.ap, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bn, align 4, !tbaa !192
  %i.bp = add <2 x i32> %i.bo, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !192
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !528
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp ugt i32 %.0283961, %i.bs
  br i1 %i.bt, label %bb.j, label %bb.l, !prof !120

bb.j:                                             ; preds = %_ZN8hb_set_taSEOS_.exit
  %i.bu = extractelement <2 x i32> %i.bp, i64 1
  %i.bv = shl i32 %i.bu, 3
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !523 ; 2 uses
  %i.bx = icmp ugt i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = add i32 %i.bw, -8
  %i.bz = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.by) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.j, %_ZN8hb_set_taSEOS_.exit, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.k ], [ true, %bb.j ], [ true, %_ZN8hb_set_taSEOS_.exit ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !518, !range !187, !noundef !274
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i, !prof !121

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 1
  %i.e = add i32 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !523
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !525
  %.sroa.speculated46 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %1)
  %i.k = shl i32 %.sroa.speculated46, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.k, i32 4)
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated, i1 true) ; 2 uses
  %narrow.i = sub nuw nsw i32 32, %i.l            ; 3 uses
  %i.m = zext nneg i32 %narrow.i to i64           ; 2 uses
  %i.n = shl nuw nsw i64 80, %i.m                 ; 2 uses
  %i.o = tail call noundef ptr @hb_malloc(i64 noundef %i.n) #15 ; 4 uses
  %.not39.not = icmp eq ptr %i.o, null
  br i1 %.not39.not, label %bb.e, label %.lr.ph.preheader, !prof !120

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.a, align 8, !tbaa !518
  br label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !523  ; 2 uses
  %.not.i42 = icmp eq i32 %i.r, 0
  %i.s = add i32 %i.r, 1
  %spec.select.i = select i1 %.not.i42, i32 0, i32 %i.s ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !519  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !524
  store i32 0, ptr %i.i, align 4, !tbaa !525
  %notmask = shl nsw i32 -1, %narrow.i
  %i.w = xor i32 %notmask, -1
  store i32 %i.w, ptr %i.q, align 4, !tbaa !523
  %i.x = icmp eq i32 %i.l, 0
  br i1 %i.x, label %_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit, label %bb.f, !prof !120

bb.f:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE9prime_forEj.prime_mod, i64 %i.m
  %i.z = load i32, ptr %i.y, align 4, !tbaa !192
  br label %_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit

_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit: ; preds = %._crit_edge, %bb.f
  %.0.i = phi i32 [ %i.z, %bb.f ], [ 2147483647, %._crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.aa, align 8, !tbaa !522
  %.tr = trunc nuw nsw i32 %narrow.i to i16
  %i.ab = shl nuw nsw i16 %.tr, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !528
  store ptr %i.o, ptr %i.t, align 8, !tbaa !519
  %.not60 = icmp eq i32 %spec.select.i, 0
  br i1 %.not60, label %._crit_edge59, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit
  %wide.trip.count = zext i32 %spec.select.i to i64
  br label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03654 = phi ptr [ %i.al, %.lr.ph ], [ %i.o, %.lr.ph.preheader ] ; 10 uses
  store i32 0, ptr %.03654, align 8, !tbaa !527
  %i.ad = getelementptr inbounds nuw i8, ptr %.03654, i64 4
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.03654, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.03654, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.03654, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.03654, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.03654, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %.03654, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.03654, i64 40
  store atomic i32 1, ptr %i.ae monotonic, align 8
  store atomic i8 1, ptr %i.af monotonic, align 4
  store atomic ptr null, ptr %i.ag monotonic, align 8
  store i8 1, ptr %i.ah, align 8, !tbaa !354
  store i32 0, ptr %i.ai, align 4, !tbaa !299
  store atomic i32 0, ptr %i.aj monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ak, i8 0, i64 33, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.03654, i64 80 ; 2 uses
  %.not40 = icmp eq ptr %i.al, %i.p
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph58.preheader:                               ; preds = %bb.h
  %wide.trip.count66 = zext i32 %spec.select.i to i64
  br label %.lr.ph58

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph56
  %i.aq = lshr i32 %i.ao, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.am, i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.ar, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph56, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph58.preheader, label %.lr.ph56, !llvm.loop !1365

._crit_edge59:                                    ; preds = %.lr.ph58, %_ZN12hb_hashmap_tIj8hb_set_tLb0EE9prime_forEj.exit
  tail call void @hb_free(ptr noundef %i.u) #15
  br label %bb.i

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv63 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next64, %.lr.ph58 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %indvars.iv63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.au) #15
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge59, label %.lr.ph58, !llvm.loop !1366

bb.i:                                             ; preds = %bb.e, %._crit_edge59, %bb.c, %bb.a
  %.1 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ true, %._crit_edge59 ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE13set_with_hashIjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !518, !range !187, !noundef !274
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !524  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !523
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.l, !prof !121

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !522
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !519  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !192
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !192
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !523
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !1367

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !524
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !524
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !525
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !525
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !192
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !527
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !454, !range !187, !noundef !274
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i8, ptr %i.ba, align 8, !range !187
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %i.bg, label %bb.i, label %_ZN8hb_set_taSEOS_.exit, !prof !120

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 72 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 8, !tbaa !212, !range !187, !noundef !274
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !212, !range !187, !noundef !274
  store i8 %i.bk, ptr %i.bh, align 8, !tbaa !212
  store i8 %i.bj, ptr %i.bi, align 8, !tbaa !212
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.bb, ptr noundef nonnull align 8 dereferenceable(49) %i.ba)
  br label %_ZN8hb_set_taSEOS_.exit

_ZN8hb_set_taSEOS_.exit:                          ; preds = %bb.h, %bb.i
  %i.bl = shl nuw i32 %i.k, 2
  %i.bm = or disjoint i32 %i.bl, 3
  store i32 %i.bm, ptr %i.ap, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.bn, align 4, !tbaa !192
  %i.bp = add <2 x i32> %i.bo, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !192
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !528
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp ugt i32 %.0283961, %i.bs
  br i1 %i.bt, label %bb.j, label %bb.l, !prof !120

bb.j:                                             ; preds = %_ZN8hb_set_taSEOS_.exit
  %i.bu = extractelement <2 x i32> %i.bp, i64 1
  %i.bv = shl i32 %i.bu, 3
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !523 ; 2 uses
  %i.bx = icmp ugt i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = add i32 %i.bw, -8
  %i.bz = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj8hb_set_tLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.by) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.j, %_ZN8hb_set_taSEOS_.exit, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.k ], [ true, %bb.j ], [ true, %_ZN8hb_set_taSEOS_.exit ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3setERKS_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !354, !range !187, !noundef !274
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEaSERKS1_.exit, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !300  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !300
  %i.h = icmp ult i32 %i.g, %i.d
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 8, !tbaa !430
  %i.j = icmp ult i32 %i.i, %i.d
  %i.k = icmp ult i32 %i.d, 3
  %or.cond.i = and i1 %i.k, %i.j
  %spec.select.i = or i1 %2, %or.cond.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.shrunk.i = phi i1 [ %2, %bb.b ], [ %spec.select.i, %bb.c ] ; 2 uses
  %i.l = icmp slt i32 %i.d, 0
  br i1 %i.l, label %.critedge.i, label %bb.e, !prof !120

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.d, i1 noundef zeroext %.0.shrunk.i)
  br i1 %i.m, label %bb.f, label %.critedge.i, !prof !296

bb.f:                                             ; preds = %bb.e
  store i32 %i.d, ptr %i.f, align 4, !tbaa !426
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.o = tail call noundef zeroext i1 @_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.o, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !395  ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %_ZN12hb_bit_set_t6resizeEjbb.exit, label %bb.g, !prof !120

bb.g:                                             ; preds = %.critedge.i
  %i.s = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.q, i1 noundef zeroext %.0.shrunk.i)
  br i1 %i.s, label %bb.h, label %_ZN12hb_bit_set_t6resizeEjbb.exit

bb.h:                                             ; preds = %bb.g
  store i32 %i.q, ptr %i.f, align 4, !tbaa !426
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit

_ZN12hb_bit_set_t6resizeEjbb.exit:                ; preds = %bb.h, %bb.g, %.critedge.i
  store i8 0, ptr %0, align 8, !tbaa !354
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEaSERKS1_.exit

bb.i:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !299
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !299
  %i.x = load i32, ptr %i.n, align 8, !tbaa !423  ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5resetEv.exit.i, !prof !120

bb.j:                                             ; preds = %bb.i
  %i.z = xor i32 %i.x, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !423
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5resetEv.exit.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5resetEv.exit.i: ; preds = %bb.j, %bb.i
  store i32 0, ptr %i.t, align 4, !tbaa !424
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !424
  %i.ac = tail call noundef zeroext i1 @_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.ab, i1 noundef zeroext true) ; 0 uses
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !423
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEaSERKS2_.exit, label %bb.k, !prof !120

bb.k:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5resetEv.exit.i
  store i32 0, ptr %i.t, align 4, !tbaa !424
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !424 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.af to i64
  %i.ag = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i, 3
  %i.ah = and i64 %i.ag, 4294967288               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i, label %bb.l, !prof !120

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !396
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !396
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr readonly align 1 %i.aj, i64 %i.ah, i1 false), !alias.scope !1374
  %.pre.i = load i32, ptr %i.t, align 4, !tbaa !424
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i: ; preds = %bb.l, %bb.k
  %i.am = phi i32 [ 0, %bb.k ], [ %.pre.i, %bb.l ]
  %i.an = add i32 %i.am, %i.af
  store i32 %i.an, ptr %i.t, align 4, !tbaa !424
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEaSERKS2_.exit

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEaSERKS2_.exit: ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5resetEv.exit.i, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !425 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5resetEv.exit.i, !prof !120

bb.m:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEaSERKS2_.exit
  %i.aq = xor i32 %i.ao, -1
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !425
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5resetEv.exit.i

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5resetEv.exit.i: ; preds = %bb.m, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EEaSERKS2_.exit
  store i32 0, ptr %i.f, align 4, !tbaa !426
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !426
  %i.as = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.ar, i1 noundef zeroext true) ; 0 uses
  %i.at = load i32, ptr %i.e, align 8, !tbaa !425
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEaSERKS1_.exit, label %bb.n, !prof !120

bb.n:                                             ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5resetEv.exit.i
  store i32 0, ptr %i.f, align 4, !tbaa !426
  %i.av = load i32, ptr %i.c, align 4, !tbaa !426 ; 2 uses
  %i.aw = mul i32 %i.av, 72                       ; 2 uses
  %.not.i.i.i6 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i6, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i, label %bb.o, !prof !120

bb.o:                                             ; preds = %bb.n
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !427
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !427
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr readonly align 1 %i.az, i64 %i.ax, i1 false), !alias.scope !1375
  %.pre.i7 = load i32, ptr %i.f, align 4, !tbaa !426
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i

_ZN11hb_vector_tI13hb_bit_page_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i: ; preds = %bb.o, %bb.n
  %i.bc = phi i32 [ 0, %bb.n ], [ %.pre.i7, %bb.o ]
  %i.bd = add i32 %i.bc, %i.av
  store i32 %i.bd, ptr %i.f, align 4, !tbaa !426
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EEaSERKS1_.exit

_ZN11hb_vector_tI13hb_bit_page_tLb0EEaSERKS1_.exit: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE10copy_arrayIS0_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS0_E.exit.i, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5resetEv.exit.i, %_ZN12hb_bit_set_t6resizeEjbb.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !421, !range !187, !noundef !274
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !121

end_hunk_2
begin_hunk_3_@_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11resize_fullEibb:bb.a

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread, !prof !120

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !1757

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 48806446
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, label %bb.f, !prof !120

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit, !prof !120

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !557    ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !557
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !555
  store i32 %.138.i, ptr %0, align 8, !tbaa !557
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !556  ; 5 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.ae, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !555
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %i.u ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, i8 0, i64 72, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store atomic i32 1, ptr %i.v monotonic, align 8
  store atomic i8 1, ptr %i.w monotonic, align 4
  store atomic ptr null, ptr %i.x monotonic, align 8
  store i8 1, ptr %i.y, align 8, !tbaa !354
  store i32 0, ptr %i.z, align 4, !tbaa !299
  store atomic i32 0, ptr %i.aa monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ab, i8 0, i64 33, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !556
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.o, align 4, !tbaa !556
  %i.af = icmp ult i32 %i.ae, %1
  br i1 %i.af, label %bb.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !1758

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  %i.ag = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.ag
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ah = sub nuw i32 %i.p, %1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !555
  %i.ak = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.ak
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.an, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.al, %.lr.ph.preheader.i ] ; 4 uses
  %.046.i = phi i32 [ %i.am, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.ah, %.lr.ph.preheader.i ]
  %i.am = add i32 %.046.i, -1                     ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.07.i, i64 -88 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.07.i, i64 -16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !416
  %i.aq = add i32 %i.ap, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.aq, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.k, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

bb.k:                                             ; preds = %.lr.ph.i15
  %i.ar = getelementptr inbounds i8, ptr %.07.i, i64 -12
  store i32 0, ptr %i.ar, align 4, !tbaa !341
  %i.as = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !347
  tail call void @hb_free(ptr noundef %i.at) #15
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i: ; preds = %bb.k, %.lr.ph.i15
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.an) #15
  %.not.i16 = icmp eq i32 %i.am, 0
  br i1 %.not.i16, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, label %.lr.ph.i15, !llvm.loop !37

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %bb.i, %bb.j, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !556
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22 ], [ true, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !557
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 88
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #15 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %.preheader, !prof !120

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !556
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !557
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.g

bb.d:                                             ; preds = %.lr.ph, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, i8 0, i64 72, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store atomic i32 1, ptr %i.k monotonic, align 8
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  store i8 1, ptr %i.n, align 8, !tbaa !354
  store i32 0, ptr %i.o, align 4, !tbaa !299
  store atomic i32 0, ptr %i.p monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.q, i8 0, i64 33, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !555  ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !187
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, !prof !120

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !212, !range !187, !noundef !274
  store i8 %i.z, ptr %i.x, align 8, !tbaa !212
  store i8 0, ptr %i.y, align 8, !tbaa !212
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.n, ptr noundef nonnull align 8 dereferenceable(49) %i.u)
  %.pre = load i32, ptr %i.r, align 8, !tbaa !192
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !382
  %.pre22 = load ptr, ptr %i.h, align 8, !tbaa !555
  br label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit

_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit: ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.s, %bb.d ], [ %.pre22, %bb.e ]
  %i.ab = phi ptr [ null, %bb.d ], [ %.pre21, %bb.e ]
  %i.ac = phi i32 [ 0, %bb.d ], [ %.pre, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !192
  store i32 %i.ae, ptr %i.r, align 8, !tbaa !192
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !192
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 76 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !192
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !192
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !192
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !192
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !382
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !382
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !382
  %i.am = getelementptr inbounds nuw [88 x i8], ptr %i.aa, i64 %indvars.iv ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !416
  %i.ap = add i32 %i.ao, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ap, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

bb.f:                                             ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  store i32 0, ptr %i.aq, align 4, !tbaa !341
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !347
  tail call void @hb_free(ptr noundef %i.as) #15
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, %bb.f
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.am) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i32, ptr %i.f, align 4, !tbaa !556
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.d, label %._crit_edge, !llvm.loop !1759

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !555
  tail call void @hb_free(ptr noundef %i.ax) #15
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5graph18MarkBasePosFormat111clone_rangeERNS0_15split_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %struct.hb_map_iter_t.499, align 8  ; 6 uses
  %6 = alloca %struct.hb_zip_iter_t.505, align 8  ; 11 uses
  %7 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %8 = alloca %struct.hb_sink_t.514, align 8      ; 4 uses
  %9 = alloca %"struct.graph::graph_t::vertex_and_table_t.498", align 8 ; 5 uses
  %10 = alloca %struct.hb_set_t, align 8          ; 13 uses
  %.sroa.0113 = alloca %struct.hb_filter_iter_t.501, align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !558, !nonnull !274, !align !275 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !373, !nonnull !274, !align !275 ; 4 uses
  %i.d = tail call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i32 noundef 12) #15 ; 12 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !342
  %.not.i.i = icmp ult i32 %i.d, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i32 %i.d to i64                     ; 5 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.i, i64 %i.j
  %.0.i.i = select i1 %.not.i.i, ptr %i.k, ptr @_hb_NullPool, !prof !121
  %i.l = load ptr, ptr %.0.i.i, align 8, !tbaa !318 ; 5 uses
  %i.m = load i16, ptr %0, align 1, !tbaa !241
  store i16 %i.m, ptr %i.l, align 1, !tbaa !241
  %i.n = sub i32 %4, %3
  %i.o = trunc i32 %i.n to i16
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  store i16 %i.q, ptr %i.p, align 1, !tbaa !241
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !554  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.f, align 4, !tbaa !342  ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.s, %i.u
  %i.v = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.w
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.x, ptr @_hb_NullPool, !prof !121 ; 4 uses
  %i.y = load ptr, ptr %.0.i.i.i, align 8, !tbaa !318 ; 2 uses
  %i.z = icmp uge ptr %i.t, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i = icmp ult ptr %i.t, %i.ab
  %or.cond.i = select i1 %i.z, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !330 ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !464
  %wide.trip.count.i = zext i32 %i.ad to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.e, !llvm.loop !21

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !325
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aj
  %.not23.not.i = icmp eq ptr %i.t, %i.ak
  br i1 %.not23.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !324
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.d, %bb.b, %bb.c, %.thread.i
  %.4.i = phi i32 [ -1, %bb.b ], [ %i.am, %.thread.i ], [ -1, %bb.c ], [ -1, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.not.i.i51 = icmp ult i32 %i.d, %i.u
  br i1 %.not.i.i51, label %bb.g, label %bb.f, !prof !121

bb.f:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.g:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  %i.ao = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.j
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i52 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.ao, %bb.g ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 20 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !311 ; 2 uses
  %i.ar = add i32 %i.aq, 1                        ; 5 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.h, !prof !120

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 16
  %i.au = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i32 noundef %i.ar, i1 noundef zeroext false)
  br i1 %i.au, label %bb.i, label %bb.l, !prof !296

bb.i:                                             ; preds = %bb.h
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !311 ; 3 uses
  %i.aw = icmp ugt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nuw nsw i32 %i.ar, %i.av
  %i.ay = mul i32 %i.ax, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.k, !prof !120

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !312
  %i.bb = zext nneg i32 %i.av to i64
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = zext i32 %i.ay to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bc, i8 0, i64 %i.bd, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
end_hunk_3
