Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN2OT22hvarvvar_subset_plan_t4finiEv:bb.a

.lr.ph.i.i:                                       ; preds = %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.07.i.i = phi ptr [ %i.w, %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i.i ], [ %i.u, %.lr.ph.preheader.i.i ] ; 7 uses
  %.046.i.i = phi i32 [ %i.v, %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i.i ], [ %i.q, %.lr.ph.preheader.i.i ]
  %i.v = add i32 %.046.i.i, -1                    ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.07.i.i, i64 -56
  %i.x = getelementptr inbounds i8, ptr %.07.i.i, i64 -16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !359
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds i8, ptr %.07.i.i, i64 -12
  store i32 0, ptr %i.aa, align 4, !tbaa !360
  %i.ab = getelementptr inbounds i8, ptr %.07.i.i, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !361
  tail call void @hb_free(ptr noundef %i.ac) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i:           ; preds = %bb.d, %.lr.ph.i.i
  %i.ad = getelementptr inbounds i8, ptr %.07.i.i, i64 -40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !359
  %i.af = add i32 %i.ae, -1
  %spec.select.i.i.i1.i.i.i = icmp ult i32 %i.af, -2
  br i1 %spec.select.i.i.i1.i.i.i, label %bb.e, label %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i.i

bb.e:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %.07.i.i, i64 -36
  store i32 0, ptr %i.ag, align 4, !tbaa !360
  %i.ah = getelementptr inbounds i8, ptr %.07.i.i, i64 -32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !361
  tail call void @hb_free(ptr noundef %i.ai) #18
  br label %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i.i

_ZN2OT23index_map_subset_plan_tD2Ev.exit.i.i:     ; preds = %bb.e, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i.i.i
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE13shrink_vectorEj.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE13shrink_vectorEj.exit.i: ; preds = %_ZN2OT23index_map_subset_plan_tD2Ev.exit.i.i, %bb.c
  store i32 0, ptr %i.p, align 4, !tbaa !309
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !305
  tail call void @hb_free(ptr noundef %i.ak) #18
  br label %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE4finiEv.exit: ; preds = %_ZN11hb_vector_tI14hb_inc_bimap_tLb0EE4finiEv.exit, %_ZN11hb_vector_tIN2OT23index_map_subset_plan_tELb0EE13shrink_vectorEj.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIP8hb_set_tLb0EEixEi.exit
  %i.al = phi i32 [ %i.b, %.lr.ph ], [ %i.aq, %_ZN11hb_vector_tIP8hb_set_tLb0EEixEi.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIP8hb_set_tLb0EEixEi.exit ] ; 3 uses
  %i.am = zext i32 %i.al to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.am
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !207

bb.g:                                             ; preds = %bb.f
  store i64 %i.c, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIP8hb_set_tLb0EEixEi.exit

bb.h:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !314
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !308
  br label %_ZN11hb_vector_tIP8hb_set_tLb0EEixEi.exit

_ZN11hb_vector_tIP8hb_set_tLb0EEixEi.exit:        ; preds = %bb.g, %bb.h
  %i.ap = phi ptr [ %i.e, %bb.g ], [ %.pre, %bb.h ]
  tail call void @hb_set_destroy(ptr noundef %i.ap) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !316 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.f, label %._crit_edge, !llvm.loop !1682
}

declare void @hb_set_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t13resolve_linksEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 11 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !182
  %.not66 = icmp eq i32 %i.b, 0
  br i1 %.not66, label %_ZNO9hb_iter_tI10hb_array_tIKPN22hb_serialize_context_t8object_tEERS4_EppEv.exit, label %.loopexit, !prof !207

_ZNO9hb_iter_tI10hb_array_tIKPN22hb_serialize_context_t8object_tEERS4_EppEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %.val = load i32, ptr %i.c, align 4, !tbaa !187 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !189
  %.not.i.i = icmp eq i32 %.val, 0
  %narrow = tail call i32 @llvm.usub.sat.i32(i32 %.val, i32 1)
  %.sroa.5.0 = zext i32 %narrow to i64
  %.sroa.0.0.copyload.i.idx = select i1 %.not.i.i, i64 0, i64 8, !prof !103
  %.sroa.0.0.copyload.i = getelementptr inbounds nuw i8, ptr %.val57, i64 %.sroa.0.0.copyload.i.idx ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.5.0, 3
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.idx
  %.not70 = icmp ult i32 %.val, 2
  br i1 %.not70, label %.loopexit, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZNO9hb_iter_tI10hb_array_tIKPN22hb_serialize_context_t8object_tEERS4_EppEv.exit
  %i.f = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph72, %.critedge
  %.05271 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph72 ], [ %i.co, %.critedge ] ; 2 uses
  %i.j = load ptr, ptr %.05271, align 8, !tbaa !192 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !264  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !263  ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx73 = mul nuw nsw i64 %i.o, 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx73
  %.not5468 = icmp eq i32 %i.n, 0
  br i1 %.not5468, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.v
  %.05069 = phi ptr [ %i.l, %.lr.ph ], [ %i.cl, %bb.v ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05069, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !335  ; 2 uses
  %i.t = load i32, ptr %i.c, align 4, !tbaa !187
  %.not.i = icmp ult i32 %i.s, %i.t
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !207

bb.d:                                             ; preds = %bb.c
  store i64 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !189
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %.pr = load ptr, ptr %i.w, align 8, !tbaa !192
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit: ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.g, %bb.d ], [ %.pr, %bb.e ] ; 4 uses
  %.not55.not = icmp eq ptr %i.x, null
  br i1 %.not55.not, label %bb.w, label %bb.f, !prof !103

bb.f:                                             ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit
  %i.y = load i32, ptr %.05069, align 4           ; 4 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 3
  switch i32 %i.aa, label %default.unreachable78 [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !336
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !336
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !336
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !548
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !183
  %i.ao = load ptr, ptr %0, align 8, !tbaa !178
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !336
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !184
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = add i64 %i.ap, %i.at
  %i.aw = add i64 %i.aq, %i.au
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  br label %bb.j

default.unreachable78:                            ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ %i.ag, %bb.g ], [ %i.am, %bb.h ], [ %i.ay, %bb.i ], [ 0, %bb.f ]
  %i.az = lshr i32 %i.y, 6
  %i.ba = sub i32 %.0, %i.az                      ; 13 uses
  %i.bb = and i32 %i.y, 8
  %.not56 = icmp eq i32 %i.bb, 0
  %i.bc = and i32 %i.y, 7                         ; 2 uses
  br i1 %.not56, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bc, 4
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !336
  %i.bf = getelementptr inbounds nuw i8, ptr %.05069, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !337
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %i.bj, ptr %i.bi, align 1, !tbaa !277
  %i.bk = sext i32 %i.ba to i64
  %i.bl = zext i32 %i.ba to i64
  %.not.i.i.i = icmp eq i64 %i.bk, %i.bl
  br i1 %.not.i.i.i, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !182
  %i.bn = or i32 %i.bm, 2
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !182
  br label %bb.v

bb.n:                                             ; preds = %bb.k
  %i.bo = trunc i32 %i.ba to i16                  ; 2 uses
  %i.bp = tail call i16 @llvm.bswap.i16(i16 %i.bo)
  store i16 %i.bp, ptr %i.bi, align 1, !tbaa !277
  %i.bq = sext i16 %i.bo to i64
  %i.br = zext i32 %i.ba to i64
  %.not.i.i.i59 = icmp eq i64 %i.bq, %i.br
  br i1 %.not.i.i.i59, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !182
  %i.bt = or i32 %i.bs, 2
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !182
  br label %bb.v

bb.p:                                             ; preds = %bb.j
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !336
  %i.bv = getelementptr inbounds nuw i8, ptr %.05069, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !337
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx ; 6 uses
  switch i32 %i.bc, label %bb.t [
    i32 4, label %bb.q
    i32 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %i.bz, ptr %i.by, align 1, !tbaa !277
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ca = lshr i32 %i.ba, 16
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = lshr i32 %i.ba, 8
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = trunc i32 %i.ba to i8
  store i8 %i.cb, ptr %i.by, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.cd, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 %i.ce, ptr %.sroa.5.0..sroa_idx.i.i, align 1, !tbaa !277
  %1 = load i16, ptr %i.by, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  %5 = and i32 %i.ba, 255
  %6 = or disjoint i32 %4, %5
  %.not.i.i.i60 = icmp eq i32 %6, %i.ba
  br i1 %.not.i.i.i60, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !182
  %i.cg = or i32 %i.cf, 2
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !182
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.ch = trunc i32 %i.ba to i16
  %i.ci = tail call i16 @llvm.bswap.i16(i16 %i.ch)
  store i16 %i.ci, ptr %i.by, align 1, !tbaa !277
  %.not.i.i.i61 = icmp ult i32 %i.ba, 65536
  br i1 %.not.i.i.i61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !182
  %i.ck = or i32 %i.cj, 2
  store i32 %i.ck, ptr %i.a, align 4, !tbaa !182
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.05069, i64 12 ; 2 uses
  %.not54 = icmp eq ptr %i.cl, %i.p
  br i1 %.not54, label %.critedge, label %bb.c

bb.w:                                             ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !182
  %i.cn = or i32 %i.cm, 1
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !182
  br label %.loopexit

.critedge:                                        ; preds = %bb.v, %bb.b
  %i.co = getelementptr inbounds nuw i8, ptr %.05271, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.e
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.critedge, %_ZNO9hb_iter_tI10hb_array_tIKPN22hb_serialize_context_t8object_tEERS4_EppEv.exit, %bb.w, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_Z20hb_resolve_overflowsI11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEEP9hb_blob_tRKT_jjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 comdat {
bb.a:
  %4 = alloca %"struct.graph::graph_t", align 8   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN5graph7graph_tC2I11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEEERKT_(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 51 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !574, !range !201, !noundef !210
  %i.c = trunc nuw i8 %i.b to i1
  %.not.i = xor i1 %i.c, true
  %i.d = load i32, ptr %4, align 8
  %i.e = icmp slt i32 %i.d, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp slt i32 %i.g, 0
  %or.cond4.i = select i1 %or.cond.i, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp slt i32 %i.j, 0
  %i.l = select i1 %or.cond4.i, i1 true, i1 %i.k
  br i1 %i.l, label %_ZN5graph7graph_t18is_fully_connectedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5graph7graph_t14update_parentsEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !360
  %.not.i.not.i.i.i = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %.0.i.i.i.i = select i1 %.not.i.not.i.i.i, ptr @_hb_NullPool, ptr %i.p, !prof !103 ; 2 uses
  %i.q = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !206 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !575  ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.q, %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = zext i32 %i.q to i64
  %i.w = getelementptr inbounds nuw [216 x i8], ptr %i.u, i64 %i.v
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.w, ptr @_hb_NullPool, !prof !207
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  %i.y = load i32, ptr %i.x, align 8, !tbaa !579
  %.not.i4 = icmp eq i32 %i.y, 0
  br i1 %.not.i4, label %.preheader.i, label %_ZN5graph7graph_t18is_fully_connectedEv.exit

.preheader.i:                                     ; preds = %bb.b
  %i.z = icmp eq i32 %i.q, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.aa = zext i32 %i.s to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = load i32, ptr %.0.i.i.i.i, align 4, !tbaa !206
  %i.ac = zext i32 %i.ab to i64
  %.not13.i = icmp samesign ult i64 %indvars.iv.next.i, %i.ac
  br i1 %.not13.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !1683

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.not.i.i = icmp samesign ult i64 %indvars.iv.i, %i.aa
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !207

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw [216 x i8], ptr %i.u, i64 %indvars.iv.i
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !579
  %.not7.not.i = icmp eq i32 %i.af, 0
  br i1 %.not7.not.i, label %_ZN5graph7graph_t18is_fully_connectedEv.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %.preheader.i
  %i.ag = load i8, ptr %i.a, align 1, !tbaa !574, !range !201, !noundef !210
  %i.ah = trunc nuw i8 %i.ag to i1
  %.not.i5 = xor i1 %i.ah, true
  %i.ai = load i32, ptr %4, align 8
  %i.aj = icmp slt i32 %i.ai, 0
  %or.cond.i6 = select i1 %.not.i5, i1 true, i1 %i.aj
  %i.ak = load i32, ptr %i.f, align 8
  %i.al = icmp slt i32 %i.ak, 0
  %or.cond4.i7 = select i1 %or.cond.i6, i1 true, i1 %i.al
  %i.am = load i32, ptr %i.i, align 8
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = select i1 %or.cond4.i7, i1 true, i1 %i.an
  br i1 %i.ao, label %_ZN5graph7graph_t18is_fully_connectedEv.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ap = call noundef zeroext i1 @_Z26hb_resolve_graph_overflowsjjbRN5graph7graph_tE(i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(88) %4)
  br i1 %i.ap, label %bb.g, label %_ZN5graph7graph_t18is_fully_connectedEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = call noundef ptr @_ZN5graph9serializeERKNS_7graph_tE(ptr noundef nonnull align 8 dereferenceable(88) %4)
  br label %_ZN5graph7graph_t18is_fully_connectedEv.exit

_ZN5graph7graph_t18is_fully_connectedEv.exit:     ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i, %.loopexit, %bb.b, %bb.f, %bb.a, %bb.g
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.b ], [ %i.aq, %bb.g ], [ null, %bb.a ], [ null, %.loopexit ], [ null, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i ]
  call void @_ZN5graph7graph_tD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %.0
}

declare ptr @hb_blob_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_tC2I11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEEERKT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 16843009, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.g = load i32, ptr %i.f, align 4, !tbaa !187
  %i.h = icmp ugt i32 %i.g, 800000
  br i1 %i.h, label %_ZN5graph7graph_t13check_successEb.exit, label %bb.b

_ZN5graph7graph_t13check_successEb.exit:          ; preds = %bb.a
  store i8 0, ptr %i.d, align 1, !tbaa !574
  br label %.loopexit78

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 1, i1 noundef zeroext false)
  br i1 %i.i, label %.critedge.i, label %bb.c, !prof !207

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.j, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !361
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !360 ; 2 uses
  %i.l = add i32 %.pre.i, 1
  store i32 %i.l, ptr %i.k, align 4, !tbaa !360
  %i.m = zext i32 %.pre.i to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.m
  store i32 1, ptr %i.n, align 4, !tbaa !206
  br label %_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit:   ; preds = %bb.c, %.critedge.i
  %i.o = load i32, ptr %i.f, align 4, !tbaa !187  ; 4 uses
  %i.p = load i32, ptr %0, align 8, !tbaa !580    ; 4 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit, label %bb.d, !prof !103

end_hunk_0
