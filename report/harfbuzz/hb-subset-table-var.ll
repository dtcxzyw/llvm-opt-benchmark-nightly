Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE16sanitize_shallowEP21hb_sanitize_context_t:bb.a
  %or.cond21 = or i1 %i.bj, %.not.i.i.i7
  %.not12.i.i.i8 = icmp ugt i32 %i.bi, %i.bf
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %.not12.i.i.i8
  br i1 %or.cond23, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EjLj4EEEEEbPKT_j.exit, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EjLj4EEEEEbPKT_j.exit.sink.split

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EjLj4EEEEEbPKT_j.exit.sink.split: ; preds = %bb.i, %bb.h
  %.sink25 = phi i32 [ %i.bg, %bb.h ], [ %i.bi, %bb.i ]
  %i.bk = sub i32 %i.av, %.sink25                 ; 2 uses
  store i32 %i.bk, ptr %i.at, align 4, !tbaa !236
  %i.bl = icmp sgt i32 %i.bk, 0
  br label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EjLj4EEEEEbPKT_j.exit

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EjLj4EEEEEbPKT_j.exit: ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EjLj4EEEEEbPKT_j.exit.sink.split, %bb.f, %bb.d, %bb.e, %bb.c, %bb.i, %bb.h, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.b, %bb.a
  %i.bm = phi i1 [ false, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJjEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.b ], [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.f ], [ %i.bl, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EjLj4EEEEEbPKT_j.exit.sink.split ]
  ret i1 %i.bm
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE6subsetEP19hb_subset_context_t(ptr noundef nonnull align 1 dereferenceable(21) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_set_t, align 8           ; 21 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.e = load i8, ptr %i.d, align 4, !tbaa !271, !range !201, !noundef !210
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN11hb_vector_tIS_IcLb0EELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2356
  %i.h = load i32, ptr %i.g, align 4, !tbaa !211
  %.not502 = icmp eq i32 %i.h, 0
  br i1 %.not502, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE11instantiateEP19hb_subset_context_t(ptr noundef nonnull align 1 dereferenceable(21) %0, ptr noundef nonnull %1)
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %0, align 1
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZNK9hb_face_t14get_num_glyphsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !158  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load atomic i32, ptr %i.m monotonic, align 4 ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.f, label %_ZNK9hb_face_t14get_num_glyphsEv.exit, !prof !103

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.l) #18
  br label %_ZNK9hb_face_t14get_num_glyphsEv.exit

_ZNK9hb_face_t14get_num_glyphsEv.exit:            ; preds = %bb.f, %bb.e, %bb.d
  %i.q = phi i32 [ 0, %bb.d ], [ %i.p, %bb.f ], [ %i.n, %bb.e ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !200  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !182
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN11hb_vector_tIS_IcLb0EELb0EED2Ev.exit, !prof !207

bb.g:                                             ; preds = %_ZNK9hb_face_t14get_num_glyphsEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !184
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !183  ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp slt i64 %i.ab, 20
  br i1 %i.ac, label %.critedge.i.i, label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit, !prof !103

.critedge.i.i:                                    ; preds = %bb.g
  store i32 4, ptr %i.t, align 4, !tbaa !182
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EED2Ev.exit

_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit: ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !183 ; 15 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 20
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !183
  %.not187 = icmp eq ptr %.pre.i.i, null
  br i1 %.not187, label %_ZN11hb_vector_tIS_IcLb0EELb0EED2Ev.exit, label %bb.h, !prof !203

bb.h:                                             ; preds = %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit
  store i16 256, ptr %.pre.i.i, align 1, !tbaa !277
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 2
  store i16 0, ptr %i.ae, align 1, !tbaa !277
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %i.ah = load i16, ptr %i.af, align 1, !tbaa !277
  store i16 %i.ah, ptr %i.ag, align 1, !tbaa !277
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 6
  %i.ak = load i16, ptr %i.ai, align 1, !tbaa !277
  store i16 %i.ak, ptr %i.aj, align 1, !tbaa !277
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load i32, ptr %i.am, align 8, !tbaa !789 ; 13 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.an, i32 65535)
  %i.ao = trunc nuw i32 %.sroa.speculated to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 12
  %i.aq = tail call i16 @llvm.bswap.i16(i16 %i.ao)
  store i16 %i.aq, ptr %i.ap, align 1, !tbaa !277
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store atomic i32 1, ptr %2 monotonic, align 8
  store atomic i8 1, ptr %i.ar monotonic, align 4
  store atomic ptr null, ptr %i.as monotonic, align 8
  store i8 1, ptr %i.at, align 8, !tbaa !306
  store i32 0, ptr %i.au, align 4, !tbaa !252
  store atomic i32 0, ptr %i.av monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aw, i8 0, i64 33, i1 false)
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !199 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 98
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !209, !range !201, !noundef !210
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.i, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 2580
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !208
  %.not188 = icmp eq i32 %i.bc, 0
  br i1 %.not188, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !242
  %i.bf = tail call noundef i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  %i.bi = load i16, ptr %i.ai, align 1, !tbaa !240
  %i.bj = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = zext i16 %i.bj to i64
  %i.bl = load i16, ptr %i.af, align 1, !tbaa !240
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i64
  %.sroa.2.8.insert.ext.i.i = mul nuw nsw i64 %i.bn, %i.bk
  %i.bo = icmp slt i32 %i.an, 0
  br i1 %i.bo, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458.thread, label %bb.k, !prof !103

bb.k:                                             ; preds = %bb.j
  %.not.i321.not = icmp eq i32 %i.an, 0
  br i1 %.not.i321.not, label %bb.m, label %.preheader.i, !prof !207

.preheader.i:                                     ; preds = %bb.k, %.preheader.i
  %.043.i = phi i32 [ %i.br, %.preheader.i ], [ 0, %bb.k ] ; 2 uses
  %i.bp = lshr i32 %.043.i, 1
  %i.bq = add nuw i32 %.043.i, 8
  %i.br = add nuw i32 %i.bq, %i.bp                ; 5 uses
  %i.bs = icmp ugt i32 %i.an, %i.br
  br i1 %i.bs, label %.preheader.i, label %.thread.i, !llvm.loop !42

.thread.i:                                        ; preds = %.preheader.i
  %i.bt = icmp ugt i32 %i.br, 268435455
  br i1 %i.bt, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458.thread, label %_ZN11hb_vector_tIS_IcLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.i, !prof !103

_ZN11hb_vector_tIS_IcLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.i: ; preds = %.thread.i
  %i.bu = shl nuw i32 %i.br, 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.bv) #18 ; 3 uses
  %.not22.i = icmp eq ptr %i.bw, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458.thread, label %bb.l, !prof !190

bb.l:                                             ; preds = %_ZN11hb_vector_tIS_IcLb0EELb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.i
  %i.bx = shl nuw i32 %i.an, 4
  %i.by = zext i32 %i.bx to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bw, i8 0, i64 %i.by, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !199
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bz = phi ptr [ %i.ax, %bb.k ], [ %.pre, %bb.l ] ; 3 uses
  %.sroa.16.2.ph = phi ptr [ null, %bb.k ], [ %i.bw, %bb.l ] ; 4 uses
  %.sroa.0373.2.ph = phi i32 [ 0, %bb.k ], [ %i.br, %bb.l ] ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 196
  %.val205 = load i32, ptr %i.ca, align 4, !tbaa !324 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 200
  %.val206 = load ptr, ptr %i.cb, align 8, !tbaa !323 ; 4 uses
  %.not.i.i.i207 = icmp eq i32 %.val205, 0        ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i207, ptr @_hb_NullPool, ptr %.val206, !prof !103
  %i.cc = load i32, ptr %spec.select.i.i.i, align 4, !tbaa !384
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.n, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !317
  %i.cg = and i32 %i.cf, 64
  %.not189 = icmp ne i32 %i.cg, 0                 ; 2 uses
  %brmerge = or i1 %.not.i.i.i207, %.not189
  %.sroa.2.8.insert.ext.i.i.i.i.mux = select i1 %.not189, i32 %.val205, i32 0, !prof !532
  br i1 %brmerge, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit, label %bb.o, !prof !159

bb.o:                                             ; preds = %bb.n
  %i.ch = add i32 %.val205, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %.val206, i64 8
  br label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit

_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit: ; preds = %bb.n, %bb.o, %bb.m
  %.sroa.0365.0 = phi ptr [ %.val206, %bb.m ], [ %.val206, %bb.n ], [ %i.ci, %bb.o ] ; 2 uses
  %.sroa.8.0 = phi i32 [ %.val205, %bb.m ], [ %.sroa.2.8.insert.ext.i.i.i.i.mux, %bb.n ], [ %i.ch, %bb.o ] ; 2 uses
  %i.cj = zext i32 %.sroa.8.0 to i64
  %.idx = shl nuw nsw i64 %i.cj, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0365.0, i64 %.idx
  %.not190521 = icmp eq i32 %.sroa.8.0, 0
  br i1 %.not190521, label %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %.thread444
  %.0183522 = phi ptr [ %.sroa.0365.0, %.lr.ph ], [ %i.es, %.thread444 ] ; 4 uses
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !198 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0183522, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !326 ; 3 uses
  %i.ct = icmp ugt i32 %i.cs, %i.q
  br i1 %i.ct, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i, label %bb.q, !prof !103

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !238
  %i.cu = load i16, ptr %i.cm, align 1, !tbaa !240
  %i.cv = and i16 %i.cu, 256
  %.not.i.i209 = icmp eq i16 %i.cv, 0
  %i.cw = zext i32 %i.cs to i64                   ; 2 uses
  br i1 %.not.i.i209, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 1, !tbaa !242
  %i.cz = call noundef i32 @llvm.bswap.i32(i32 %i.cy)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i

bb.s:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.cw
  %i.db = load i16, ptr %i.da, align 1, !tbaa !240
  %i.dc = call noundef i16 @llvm.bswap.i16(i16 %i.db)
  %i.dd = zext i16 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i: ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i210 = phi i32 [ 0, %bb.p ], [ %i.cz, %bb.r ], [ %i.de, %bb.s ] ; 3 uses
  %i.df = add i32 %i.cs, 1                        ; 2 uses
  %i.dg = icmp ugt i32 %i.df, %i.q
  br i1 %i.dg, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i, label %bb.t, !prof !103

bb.t:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !238
  %i.dh = load i16, ptr %i.cm, align 1, !tbaa !240
  %i.di = and i16 %i.dh, 256
  %.not.i12.i = icmp eq i16 %i.di, 0
  %i.dj = zext i32 %i.df to i64                   ; 2 uses
  br i1 %.not.i12.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !242
  %i.dm = call noundef i32 @llvm.bswap.i32(i32 %i.dl)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i

bb.v:                                             ; preds = %bb.t
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.dj
  %i.do = load i16, ptr %i.dn, align 1, !tbaa !240
  %i.dp = call noundef i16 @llvm.bswap.i16(i16 %i.do)
  %i.dq = zext i16 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i: ; preds = %bb.v, %bb.u, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i
  %.0.i13.i = phi i32 [ 0, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i ], [ %i.dm, %bb.u ], [ %i.dr, %bb.v ] ; 2 uses
  %i.ds = icmp ult i32 %.0.i13.i, %.0.i.i210
  br i1 %i.ds, label %.thread444, label %bb.w, !prof !103

bb.w:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i
  %i.dt = sub nuw i32 %.0.i13.i, %.0.i.i210
  %i.du = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !101
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !102
  %i.dy = load i32, ptr %i.co, align 1, !tbaa !242
  %i.dz = call noundef i32 @llvm.bswap.i32(i32 %i.dy)
  %i.ea = add i32 %i.dz, %.0.i.i210               ; 2 uses
  %storemerge.i.i.i = call i32 @llvm.usub.sat.i32(i32 %i.dx, i32 %i.ea)
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.dt) ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eb ; 2 uses
  %.sroa.3.8.insert.ext.i.i.i = zext i32 %.sroa.speculated.i.i.i to i64
  %.not.i211 = icmp ult i32 %.sroa.speculated.i.i.i, 4
  br i1 %.not.i211, label %.thread444, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit, !prof !103

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !212
  %i.ed = load i16, ptr %i.af, align 1, !tbaa !240
  %i.ee = call noundef i16 @llvm.bswap.i16(i16 %i.ed)
  %i.ef = zext i16 %i.ee to i32
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !199 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2656
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 2560
  %i.ej = load i32, ptr %.0183522, align 4, !tbaa !384 ; 2 uses
  %.not.i214 = icmp ult i32 %i.ej, %i.an
  br i1 %.not.i214, label %bb.y, label %bb.x, !prof !207

bb.x:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit

bb.y:                                             ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.2.ph, i64 %i.ek
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit:         ; preds = %bb.x, %bb.y
  %.0.i215 = phi ptr [ @_hb_CrapPool, %bb.x ], [ %i.el, %bb.y ]
  %i.em = call noundef zeroext i1 @_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE21cull_tuple_variationsE10hb_array_tIKcEjS4_IKNS_7HBFixedINS1_ILb1EsLj2EEELj14EEEEPK8hb_map_tRK12hb_hashmap_tIj6TripleLb0EER11hb_vector_tIcLb0EEPb(ptr noundef nonnull align 1 dereferenceable(4) %i.ec, ptr %i.ec, i64 %.sroa.3.8.insert.ext.i.i.i, i32 noundef %i.ef, ptr nonnull %i.bh, i64 %.sroa.2.8.insert.ext.i.i, ptr noundef nonnull %i.eh, ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %.0.i215, ptr noundef nonnull %i.a)
  br i1 %i.em, label %bb.z, label %bb.ad, !prof !207

bb.z:                                             ; preds = %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit
  %i.en = load i8, ptr %i.a, align 1, !tbaa !212, !range !201, !noundef !210
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.aa, label %.thread449

bb.aa:                                            ; preds = %bb.z
  %i.ep = load i32, ptr %.0183522, align 4, !tbaa !384 ; 2 uses
  %i.eq = load i8, ptr %i.cp, align 8, !tbaa !251, !range !201, !noundef !210
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.ab, label %bb.ac, !prof !103

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.at, i32 noundef %i.ep)
  br label %.thread449

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.at, i32 noundef %i.ep)
  br label %.thread449

.thread449:                                       ; preds = %bb.z, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread444

.thread444:                                       ; preds = %bb.w, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i, %.thread449
  %i.es = getelementptr inbounds nuw i8, ptr %.0183522, i64 8 ; 2 uses
  %.not190 = icmp eq ptr %i.es, %i.ck
  br i1 %.not190, label %._crit_edge, label %bb.p

bb.ad:                                            ; preds = %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

._crit_edge:                                      ; preds = %.thread444
  %.pre582 = load i8, ptr %i.at, align 8, !tbaa !306, !range !201
  %i.et = trunc nuw i8 %.pre582 to i1
  br i1 %i.et, label %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, !prof !3105

._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge: ; preds = %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit, %._crit_edge
  %.pre583 = load ptr, ptr %i.b, align 8, !tbaa !199
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit

_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit:    ; preds = %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge, %bb.i, %bb.h
  %i.eu = phi ptr [ %i.ax, %bb.i ], [ %i.ax, %bb.h ], [ %.pre583, %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge ] ; 3 uses
  %.sroa.16.0 = phi ptr [ null, %bb.i ], [ null, %bb.h ], [ %.sroa.16.2.ph, %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge ] ; 18 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.h ], [ %i.an, %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge ] ; 18 uses
  %.sroa.0373.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.h ], [ %.sroa.0373.2.ph, %._crit_edge._ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit_crit_edge ] ; 16 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 196
  %.val203 = load i32, ptr %i.ev, align 4, !tbaa !324 ; 4 uses
  %i.ew = getelementptr i8, ptr %i.eu, i64 200
  %.val204 = load ptr, ptr %i.ew, align 8, !tbaa !323 ; 4 uses
  %.not.i.i.i219 = icmp eq i32 %.val203, 0        ; 2 uses
  %spec.select.i.i.i220 = select i1 %.not.i.i.i219, ptr @_hb_NullPool, ptr %.val204, !prof !103
  %i.ex = load i32, ptr %spec.select.i.i.i220, align 4, !tbaa !384
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ae, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227

bb.ae:                                            ; preds = %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !317
  %i.fb = and i32 %i.fa, 64
  %.not191 = icmp ne i32 %i.fb, 0                 ; 2 uses
  %brmerge500 = or i1 %.not.i.i.i219, %.not191
  %.sroa.2.8.insert.ext.i.i.i.i217.mux = select i1 %.not191, i32 %.val203, i32 0, !prof !532
  br i1 %brmerge500, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227, label %bb.af, !prof !159

bb.af:                                            ; preds = %bb.ae
  %i.fc = add i32 %.val203, -1
  %i.fd = getelementptr inbounds nuw i8, ptr %.val204, i64 8
  br label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227

_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227: ; preds = %bb.ae, %bb.af, %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit
  %.sroa.14.0 = phi i32 [ %.val203, %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit ], [ %.sroa.2.8.insert.ext.i.i.i.i217.mux, %bb.ae ], [ %i.fc, %bb.af ] ; 2 uses
  %.sroa.0335.0 = phi ptr [ %.val204, %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit ], [ %.val204, %bb.ae ], [ %i.fd, %bb.af ] ; 2 uses
  %i.fe = zext i32 %.sroa.14.0 to i64
  %.idx549 = shl nuw nsw i64 %i.fe, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0335.0, i64 %.idx549
  %.not192523 = icmp eq i32 %.sroa.14.0, 0
  br i1 %.not192523, label %.thread470, label %.lr.ph527

.lr.ph527:                                        ; preds = %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph527, %bb.az
  %.0179526 = phi ptr [ %.sroa.0335.0, %.lr.ph527 ], [ %i.ir, %bb.az ] ; 4 uses
  %.0180525 = phi i32 [ 0, %.lr.ph527 ], [ %.1181, %bb.az ]
  %.0413524 = phi i32 [ 0, %.lr.ph527 ], [ %i.iq, %bb.az ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.0179526, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !326 ; 3 uses
  %i.fp = load i32, ptr %.0179526, align 4, !tbaa !384 ; 3 uses
  %i.fq = lshr i32 %i.fp, 9                       ; 3 uses
  %i.fr = load atomic i32, ptr %i.av monotonic, align 8 ; 2 uses
  %i.fs = load i32, ptr %i.fg, align 4, !tbaa !399 ; 3 uses
  %i.ft = icmp ult i32 %i.fr, %i.fs
  %i.fu = load ptr, ptr %i.fh, align 8, !tbaa !368 ; 3 uses
  br i1 %i.ft, label %bb.ah, label %._crit_edge.i.i.i.i.i.i, !prof !207

bb.ah:                                            ; preds = %bb.ag
  %i.fv = zext i32 %i.fr to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !401
  %.not.i.i.i.i.i.i = icmp eq i32 %i.fx, %i.fq
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ah, %bb.ag
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.fs, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fy = add nsw i32 %i.fs, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.al, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %i.fy, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fz = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.ga = lshr i32 %i.fz, 1                       ; 4 uses
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !401 ; 2 uses
  %i.gf = icmp slt i32 %i.fq, %i.ge
  br i1 %i.gf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.gg = add nsw i32 %i.ga, -1
  br label %bb.al

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fq, %i.ge
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = add nuw nsw i32 %i.ga, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gh, %bb.ak ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.ak ], [ %i.gg, %bb.ai ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !18

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.aj
  store atomic i32 %i.ga, ptr %i.av monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.ah
  %i.gi = phi i64 [ %i.gb, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.fv, %bb.ah ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !402 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !404
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = lshr i32 %i.fp, 6
  %i.gq = and i32 %i.gp, 7
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !258
  %i.gu = and i32 %i.fp, 63
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = lshr i64 %i.gt, %i.gv
  %i.gx = trunc i64 %i.gw to i8
  %i.gy = and i8 %i.gx, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.al, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.am
  %.0.i.i.i.i.i = phi i8 [ %i.gy, %bb.am ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.al ]
  %i.gz = load i8, ptr %i.fi, align 8, !tbaa !251, !range !201, !noundef !210
  %.not503 = icmp eq i8 %i.gz, %.0.i.i.i.i.i
  br i1 %.not503, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.ha = load i32, ptr %.0179526, align 4, !tbaa !384 ; 2 uses
  %.not.i228 = icmp ult i32 %i.ha, %.sroa.7.0
  br i1 %.not.i228, label %bb.ap, label %bb.ao, !prof !207

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit230

bb.ap:                                            ; preds = %bb.an
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.16.0, i64 %i.hb
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit230

_ZN11hb_vector_tIS_IcLb0EELb0EEixEi.exit230:      ; preds = %bb.ao, %bb.ap
  %.0.i229 = phi ptr [ @_hb_CrapPool, %bb.ao ], [ %i.hc, %bb.ap ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i229, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !164
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit245

bb.aq:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.hf = load ptr, ptr %i.fj, align 8, !tbaa !198
  %i.hg = icmp ugt i32 %i.fo, %i.q
  br i1 %i.hg, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232, label %bb.ar, !prof !103

bb.ar:                                            ; preds = %bb.aq
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !238
  %i.hh = load i16, ptr %i.fk, align 1, !tbaa !240
  %i.hi = and i16 %i.hh, 256
  %.not.i.i231 = icmp eq i16 %i.hi, 0
  %i.hj = zext i32 %i.fo to i64                   ; 2 uses
  br i1 %.not.i.i231, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 1, !tbaa !242
  %i.hm = call noundef i32 @llvm.bswap.i32(i32 %i.hl)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232

bb.at:                                            ; preds = %bb.ar
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.hj
  %i.ho = load i16, ptr %i.hn, align 1, !tbaa !240
  %i.hp = call noundef i16 @llvm.bswap.i16(i16 %i.ho)
  %i.hq = zext i16 %i.hp to i32
  %i.hr = shl nuw nsw i32 %i.hq, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232: ; preds = %bb.at, %bb.as, %bb.aq
  %.0.i.i233 = phi i32 [ 0, %bb.aq ], [ %i.hm, %bb.as ], [ %i.hr, %bb.at ] ; 3 uses
  %i.hs = add i32 %i.fo, 1                        ; 2 uses
  %i.ht = icmp ugt i32 %i.hs, %i.q
  br i1 %i.ht, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235, label %bb.au, !prof !103

bb.au:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !238
  %i.hu = load i16, ptr %i.fk, align 1, !tbaa !240
  %i.hv = and i16 %i.hu, 256
  %.not.i12.i234 = icmp eq i16 %i.hv, 0
  %i.hw = zext i32 %i.hs to i64                   ; 2 uses
  br i1 %.not.i12.i234, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 1, !tbaa !242
  %i.hz = call noundef i32 @llvm.bswap.i32(i32 %i.hy)
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235

bb.aw:                                            ; preds = %bb.au
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.hw
  %i.ib = load i16, ptr %i.ia, align 1, !tbaa !240
  %i.ic = call noundef i16 @llvm.bswap.i16(i16 %i.ib)
  %i.id = zext i16 %i.ic to i32
  %i.ie = shl nuw nsw i32 %i.id, 1
  br label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235

_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit14.i235: ; preds = %bb.aw, %bb.av, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232
  %.0.i13.i236 = phi i32 [ 0, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE10get_offsetEjj.exit.i232 ], [ %i.hz, %bb.av ], [ %i.ie, %bb.aw ] ; 2 uses
  %i.if = icmp ult i32 %.0.i13.i236, %.0.i.i233
  br i1 %i.if, label %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit245, label %bb.ax, !prof !103
end_hunk_0
begin_hunk_1_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE6subsetEP19hb_subset_context_t:bb.a
  %i.io = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0413524, i32 %.0178) ; 2 uses
  %i.ip = extractvalue { i32, i1 } %i.io, 1
  br i1 %i.ip, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %bb.az, !prof !103

bb.az:                                            ; preds = %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit245
  %i.iq = extractvalue { i32, i1 } %i.io, 0       ; 2 uses
  %.1181 = add i32 %i.in, %.0180525               ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0179526, i64 8 ; 2 uses
  %.not192 = icmp eq ptr %i.ir, %i.ff
  br i1 %.not192, label %.thread470, label %bb.ag

.thread470:                                       ; preds = %bb.az, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227
  %.0413.lcssa = phi i32 [ 0, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227 ], [ %i.iq, %bb.az ] ; 2 uses
  %.0180.lcssa = phi i32 [ 0, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit227 ], [ %.1181, %bb.az ]
  %i.is = icmp ugt i32 %.0413.lcssa, 131070       ; 8 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 14
  %i.iu = select i1 %i.is, i16 256, i16 0
  store i16 %i.iu, ptr %i.it, align 1, !tbaa !277
  %i.iv = load ptr, ptr %i.r, align 8, !tbaa !200 ; 3 uses
  %i.iw = add i32 %i.an, 1
  %i.ix = select i1 %i.is, i32 2, i32 1
  %i.iy = shl i32 %i.iw, %i.ix                    ; 2 uses
  %i.iz = zext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 44 ; 3 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !182
  %.not.i246 = icmp eq i32 %i.jb, 0
  br i1 %.not.i246, label %bb.ba, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, !prof !207

bb.ba:                                            ; preds = %.thread470
  %i.jc = icmp slt i32 %i.iy, 0
  br i1 %i.jc, label %.critedge.i, label %bb.bb, !prof !103

bb.bb:                                            ; preds = %bb.ba
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !184
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 8 ; 5 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !183 ; 6 uses
  %i.jh = ptrtoint ptr %i.je to i64               ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = icmp slt i64 %i.jj, %i.iz
  br i1 %i.jk, label %.critedge.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, !prof !103

.critedge.i:                                      ; preds = %bb.bb, %bb.ba
  store i32 4, ptr %i.ja, align 4, !tbaa !182
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit: ; preds = %bb.bb
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.iz ; 5 uses
  store ptr %i.jl, ptr %i.jf, align 8, !tbaa !183
  %.not194 = icmp eq ptr %i.jg, null
  br i1 %.not194, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %bb.bc

bb.bc:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit
  %i.jm = load i16, ptr %i.ai, align 1, !tbaa !240 ; 2 uses
  %i.jn = call noundef i16 @llvm.bswap.i16(i16 %i.jm)
  %i.jo = zext i16 %i.jn to i64
  %.not195 = icmp eq i16 %i.jm, 0
  br i1 %.not195, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 1, !tbaa !242
  %.not196 = icmp eq i32 %i.jq, 0
  br i1 %.not196, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jr = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  store i32 0, ptr %i.jr, align 1, !tbaa !277
  br label %_ZL9hb_memcpyPvPKvm.exit

bb.bf:                                            ; preds = %bb.bd
  %i.js = load i16, ptr %i.af, align 1, !tbaa !240
  %i.jt = call noundef i16 @llvm.bswap.i16(i16 %i.js)
  %i.ju = zext i16 %i.jt to i64
  %i.jv = shl nuw nsw i64 %i.jo, 1
  %i.jw = mul nuw nsw i64 %i.jv, %i.ju
  %i.jx = and i64 %i.jw, 4294967294               ; 7 uses
  %i.jy = icmp samesign ugt i64 %i.jx, 2147483647
  %i.jz = ptrtoint ptr %i.jl to i64
  %i.ka = sub i64 %i.jh, %i.jz
  %i.kb = icmp slt i64 %i.ka, %i.jx
  %or.cond644 = select i1 %i.jy, i1 true, i1 %i.kb, !prof !205
  br i1 %or.cond644, label %.critedge.i252, label %bb.bg, !prof !205

.critedge.i252:                                   ; preds = %bb.bf
  store i32 4, ptr %i.ja, align 4, !tbaa !182
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i251.not = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i251.not, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit.thread, !prof !159

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit: ; preds = %bb.bg
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jx
  store ptr %i.kc, ptr %i.jf, align 8, !tbaa !183
  %i.kd = ptrtoint ptr %i.jl to i64
  %i.ke = ptrtoint ptr %.pre.i.i to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = trunc i64 %i.kf to i32
  %i.kh = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %i.ki = call i32 @llvm.bswap.i32(i32 %i.kg)
  store i32 %i.ki, ptr %i.kh, align 1, !tbaa !277
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit.thread: ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jl, i8 0, i64 %i.jx, i1 false)
  %.pre.i = load ptr, ptr %i.jf, align 8, !tbaa !183 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.jx
  store ptr %i.kj, ptr %i.jf, align 8, !tbaa !183
  %.not197.not615 = icmp eq ptr %.pre.i, null
  br i1 %.not197.not615, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %bb.bh

bb.bh:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit.thread
  %i.kk = ptrtoint ptr %.pre.i to i64
  %i.kl = ptrtoint ptr %.pre.i.i to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = trunc i64 %i.km to i32
  %i.ko = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %i.kp = call i32 @llvm.bswap.i32(i32 %i.kn)
  store i32 %i.kp, ptr %i.ko, align 1, !tbaa !277
  %i.kq = load i32, ptr %i.jp, align 1, !tbaa !242
  %i.kr = call noundef i32 @llvm.bswap.i32(i32 %i.kq)
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ks
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre.i, ptr nonnull readonly align 1 %i.kt, i64 %i.jx, i1 false), !alias.scope !3106
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_mb.exit, %bb.bh, %bb.be
  %i.ku = select i1 %i.is, i32 %.0180.lcssa, i32 0
  %spec.select = sub i32 %.0413.lcssa, %i.ku      ; 2 uses
  %i.kv = load ptr, ptr %i.r, align 8, !tbaa !200 ; 3 uses
  %i.kw = zext i32 %spec.select to i64            ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 44 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !182
  %.not.i254 = icmp eq i32 %i.ky, 0
  br i1 %.not.i254, label %bb.bi, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, !prof !207

bb.bi:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.kz = icmp slt i32 %spec.select, 0
  br i1 %i.kz, label %.critedge.i259, label %bb.bj, !prof !103

bb.bj:                                            ; preds = %bb.bi
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !184
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !183 ; 4 uses
  %i.le = ptrtoint ptr %i.lb to i64
  %i.lf = ptrtoint ptr %i.ld to i64               ; 2 uses
  %i.lg = sub i64 %i.le, %i.lf
  %i.lh = icmp slt i64 %i.lg, %i.kw
  br i1 %i.lh, label %.critedge.i259, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, !prof !103

.critedge.i259:                                   ; preds = %bb.bj, %bb.bi
  store i32 4, ptr %i.kx, align 4, !tbaa !182
  br label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit: ; preds = %bb.bj
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.kw
  store ptr %i.li, ptr %i.lc, align 8, !tbaa !183
  %.not198 = icmp eq ptr %i.ld, null
  br i1 %.not198, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %bb.bk

bb.bk:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit
  %i.lj = ptrtoint ptr %.pre.i.i to i64
  %i.lk = sub i64 %i.lf, %i.lj
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %i.ln = call i32 @llvm.bswap.i32(i32 %i.ll)
  store i32 %i.ln, ptr %i.lm, align 1, !tbaa !277
  br i1 %i.is, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.jg, align 1, !tbaa !277
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  store i16 0, ptr %i.jg, align 1, !tbaa !277
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sink = phi i64 [ 2, %bb.bm ], [ 4, %bb.bl ]
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sink ; 12 uses
  %i.lp = load ptr, ptr %i.b, align 8, !tbaa !199 ; 3 uses
  %i.lq = getelementptr i8, ptr %i.lp, i64 196
  %.val = load i32, ptr %i.lq, align 4, !tbaa !324 ; 4 uses
  %i.lr = getelementptr i8, ptr %i.lp, i64 200
  %.val202 = load ptr, ptr %i.lr, align 8, !tbaa !323 ; 4 uses
  %.not.i.i.i263 = icmp eq i32 %.val, 0           ; 2 uses
  %spec.select.i.i.i264 = select i1 %.not.i.i.i263, ptr @_hb_NullPool, ptr %.val202, !prof !103
  %i.ls = load i32, ptr %spec.select.i.i.i264, align 4, !tbaa !384
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.bo, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271

bb.bo:                                            ; preds = %bb.bn
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 20
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !317
  %i.lw = and i32 %i.lv, 64
  %.not199 = icmp ne i32 %i.lw, 0                 ; 2 uses
  %brmerge501 = or i1 %.not.i.i.i263, %.not199
  %.sroa.2.8.insert.ext.i.i.i.i261.mux = select i1 %.not199, i32 %.val, i32 0, !prof !532
  br i1 %brmerge501, label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271, label %bb.bp, !prof !159

bb.bp:                                            ; preds = %bb.bo
  %i.lx = add i32 %.val, -1
  %i.ly = getelementptr inbounds nuw i8, ptr %.val202, i64 8
  br label %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271

_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271: ; preds = %bb.bo, %bb.bp, %bb.bn
  %.sroa.14.1 = phi i32 [ %.val, %bb.bn ], [ %.sroa.2.8.insert.ext.i.i.i.i261.mux, %bb.bo ], [ %i.lx, %bb.bp ] ; 2 uses
  %.sroa.0335.1 = phi ptr [ %.val202, %bb.bn ], [ %.val202, %bb.bo ], [ %i.ly, %bb.bp ] ; 2 uses
  %i.lz = zext i32 %.sroa.14.1 to i64
  %.idx550 = shl nuw nsw i64 %i.lz, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0335.1, i64 %.idx550
  %.not200535 = icmp eq i32 %.sroa.14.1, 0
  br i1 %.not200535, label %._crit_edge542, label %.lr.ph541

.lr.ph541:                                        ; preds = %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sink.in.i.i.i.i.i.i285 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.bq

._crit_edge542:                                   ; preds = %bb.ck, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271
  %.0173.lcssa = phi i32 [ 0, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271 ], [ %.1174493, %bb.ck ] ; 2 uses
  %.0167.lcssa = phi i32 [ 0, %_ZN9hb_iter_tI17hb_sorted_array_tIK9hb_pair_tIjjEERS3_EppEi.exit271 ], [ %i.ro, %bb.ck ] ; 3 uses
  %i.mi = icmp ult i32 %.0167.lcssa, %i.an        ; 2 uses
  br i1 %i.is, label %.preheader, label %.preheader505

.preheader505:                                    ; preds = %._crit_edge542
  br i1 %i.mi, label %iter.check694, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

iter.check694:                                    ; preds = %.preheader505
  %i.mj = lshr i32 %.0173.lcssa, 1
  %i.mk = trunc i32 %i.mj to i16
  %i.ml = call i16 @llvm.bswap.i16(i16 %i.mk)     ; 3 uses
  %i.mm = zext i32 %.0167.lcssa to i64            ; 6 uses
  %wide.trip.count575 = zext i32 %i.an to i64     ; 2 uses
  %i.mn = sub nsw i64 %wide.trip.count575, %i.mm  ; 7 uses
  %min.iters.check680 = icmp ult i64 %i.mn, 4
  br i1 %min.iters.check680, label %vec.epilog.scalar.ph695.preheader, label %vector.main.loop.iter.check681

vector.main.loop.iter.check681:                   ; preds = %iter.check694
  %min.iters.check682 = icmp ult i64 %i.mn, 16
  br i1 %min.iters.check682, label %vec.epilog.ph698, label %vector.ph683

vector.ph683:                                     ; preds = %vector.main.loop.iter.check681
  %i.mo = and i64 %i.mn, 12
  %n.vec684 = and i64 %i.mn, -16                  ; 4 uses
  %i.mp = add nsw i64 %n.vec684, %i.mm
  %broadcast.splatinsert685 = insertelement <8 x i16> poison, i16 %i.ml, i64 0
  %broadcast.splat686 = shufflevector <8 x i16> %broadcast.splatinsert685, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep747 = getelementptr [2 x i8], ptr %i.lo, i64 %i.mm
  br label %vector.body687

vector.body687:                                   ; preds = %vector.ph683, %vector.body687
  %index688 = phi i64 [ 0, %vector.ph683 ], [ %index.next689, %vector.body687 ] ; 2 uses
  %gep748 = getelementptr [2 x i8], ptr %invariant.gep747, i64 %index688 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %gep748, i64 16
  store <8 x i16> %broadcast.splat686, ptr %gep748, align 1, !tbaa !277
  store <8 x i16> %broadcast.splat686, ptr %i.mq, align 1, !tbaa !277
  %index.next689 = add nuw i64 %index688, 16      ; 2 uses
  %i.mr = icmp eq i64 %index.next689, %n.vec684
  br i1 %i.mr, label %middle.block690, label %vector.body687, !llvm.loop !3092

middle.block690:                                  ; preds = %vector.body687
  %cmp.n691 = icmp eq i64 %i.mn, %n.vec684
  br i1 %cmp.n691, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %vec.epilog.iter.check696

vec.epilog.iter.check696:                         ; preds = %middle.block690
  %min.epilog.iters.check697 = icmp eq i64 %i.mo, 0
  br i1 %min.epilog.iters.check697, label %vec.epilog.scalar.ph695.preheader, label %vec.epilog.ph698, !prof !790

vec.epilog.ph698:                                 ; preds = %vector.main.loop.iter.check681, %vec.epilog.iter.check696
  %vec.epilog.resume.val692 = phi i64 [ %n.vec684, %vec.epilog.iter.check696 ], [ 0, %vector.main.loop.iter.check681 ]
  %n.vec699 = and i64 %i.mn, -4                   ; 3 uses
  %i.ms = add nsw i64 %n.vec699, %i.mm
  %broadcast.splatinsert700 = insertelement <4 x i16> poison, i16 %i.ml, i64 0
  %broadcast.splat701 = shufflevector <4 x i16> %broadcast.splatinsert700, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep749 = getelementptr [2 x i8], ptr %i.lo, i64 %i.mm
  br label %vec.epilog.vector.body702

vec.epilog.vector.body702:                        ; preds = %vec.epilog.vector.body702, %vec.epilog.ph698
  %index703 = phi i64 [ %vec.epilog.resume.val692, %vec.epilog.ph698 ], [ %index.next704, %vec.epilog.vector.body702 ] ; 2 uses
  %gep750 = getelementptr [2 x i8], ptr %invariant.gep749, i64 %index703
  store <4 x i16> %broadcast.splat701, ptr %gep750, align 1, !tbaa !277
  %index.next704 = add nuw i64 %index703, 4       ; 2 uses
  %i.mt = icmp eq i64 %index.next704, %n.vec699
  br i1 %i.mt, label %vec.epilog.middle.block705, label %vec.epilog.vector.body702, !llvm.loop !3093

vec.epilog.middle.block705:                       ; preds = %vec.epilog.vector.body702
  %cmp.n706 = icmp eq i64 %i.mn, %n.vec699
  br i1 %cmp.n706, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %vec.epilog.scalar.ph695.preheader

vec.epilog.scalar.ph695.preheader:                ; preds = %iter.check694, %vec.epilog.iter.check696, %vec.epilog.middle.block705
  %indvars.iv572.ph = phi i64 [ %i.mm, %iter.check694 ], [ %i.mp, %vec.epilog.iter.check696 ], [ %i.ms, %vec.epilog.middle.block705 ]
  br label %vec.epilog.scalar.ph695

.preheader:                                       ; preds = %._crit_edge542
  br i1 %i.mi, label %.lr.ph548, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458

.lr.ph548:                                        ; preds = %.preheader
  %i.mu = call i32 @llvm.bswap.i32(i32 %.0173.lcssa) ; 2 uses
  %i.mv = zext i32 %.0167.lcssa to i64            ; 4 uses
  %wide.trip.count580 = zext i32 %i.an to i64     ; 2 uses
  %i.mw = sub nsw i64 %wide.trip.count580, %i.mv  ; 3 uses
  %min.iters.check709 = icmp ult i64 %i.mw, 8
  br i1 %min.iters.check709, label %scalar.ph708.preheader, label %vector.ph710

vector.ph710:                                     ; preds = %.lr.ph548
  %n.vec711 = and i64 %i.mw, -8                   ; 3 uses
  %i.mx = add nsw i64 %n.vec711, %i.mv
  %broadcast.splatinsert712 = insertelement <4 x i32> poison, i32 %i.mu, i64 0
  %broadcast.splat713 = shufflevector <4 x i32> %broadcast.splatinsert712, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep751 = getelementptr [4 x i8], ptr %i.lo, i64 %i.mv
  br label %vector.body714

vector.body714:                                   ; preds = %vector.body714, %vector.ph710
  %index715 = phi i64 [ 0, %vector.ph710 ], [ %index.next716, %vector.body714 ] ; 2 uses
  %gep752 = getelementptr [4 x i8], ptr %invariant.gep751, i64 %index715 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %gep752, i64 16
  store <4 x i32> %broadcast.splat713, ptr %gep752, align 1, !tbaa !277
  store <4 x i32> %broadcast.splat713, ptr %i.my, align 1, !tbaa !277
  %index.next716 = add nuw i64 %index715, 8       ; 2 uses
  %i.mz = icmp eq i64 %index.next716, %n.vec711
  br i1 %i.mz, label %middle.block717, label %vector.body714, !llvm.loop !3094

middle.block717:                                  ; preds = %vector.body714
  %cmp.n718 = icmp eq i64 %i.mw, %n.vec711
  br i1 %cmp.n718, label %_ZN11hb_vector_tIS_IcLb0EELb0EE6resizeEi.exit.thread458, label %scalar.ph708.preheader

scalar.ph708.preheader:                           ; preds = %.lr.ph548, %middle.block717
  %indvars.iv577.ph = phi i64 [ %i.mv, %.lr.ph548 ], [ %i.mx, %middle.block717 ]
  br label %scalar.ph708

bb.bq:                                            ; preds = %.lr.ph541, %bb.ck
  %.0540 = phi ptr [ %.sroa.0335.1, %.lr.ph541 ], [ %i.rp, %bb.ck ] ; 3 uses
  %.0167539 = phi i32 [ 0, %.lr.ph541 ], [ %i.ro, %bb.ck ] ; 5 uses
  %.0173537 = phi i32 [ 0, %.lr.ph541 ], [ %.1174493, %bb.ck ] ; 6 uses
  %.0175536 = phi ptr [ %i.ld, %.lr.ph541 ], [ %.1176491, %bb.ck ] ; 5 uses
  %i.na = load i32, ptr %.0540, align 4, !tbaa !384 ; 15 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0540, i64 4
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !326 ; 3 uses
  %i.nd = icmp ult i32 %.0167539, %i.na           ; 2 uses
  br i1 %i.is, label %.preheader507, label %.preheader508

.preheader508:                                    ; preds = %bb.bq
  br i1 %i.nd, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader508
  %i.ne = lshr i32 %.0173537, 1
  %i.nf = trunc i32 %i.ne to i16
  %i.ng = call i16 @llvm.bswap.i16(i16 %i.nf)     ; 3 uses
  %i.nh = zext i32 %.0167539 to i64               ; 6 uses
  %wide.trip.count = zext i32 %i.na to i64        ; 2 uses
  %i.ni = sub nsw i64 %wide.trip.count, %i.nh     ; 7 uses
  %min.iters.check660 = icmp ult i64 %i.ni, 4
  br i1 %min.iters.check660, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check661 = icmp ult i64 %i.ni, 16
  br i1 %min.iters.check661, label %vec.epilog.ph, label %vector.ph662

vector.ph662:                                     ; preds = %vector.main.loop.iter.check
  %i.nj = and i64 %i.ni, 12
  %n.vec663 = and i64 %i.ni, -16                  ; 4 uses
  %i.nk = add nsw i64 %n.vec663, %i.nh
  %broadcast.splatinsert664 = insertelement <8 x i16> poison, i16 %i.ng, i64 0
  %broadcast.splat665 = shufflevector <8 x i16> %broadcast.splatinsert664, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.lo, i64 %i.nh
  br label %vector.body666

vector.body666:                                   ; preds = %vector.ph662, %vector.body666
  %index667 = phi i64 [ 0, %vector.ph662 ], [ %index.next668, %vector.body666 ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index667 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat665, ptr %gep, align 1, !tbaa !277
  store <8 x i16> %broadcast.splat665, ptr %i.nl, align 1, !tbaa !277
  %index.next668 = add nuw i64 %index667, 16      ; 2 uses
  %i.nm = icmp eq i64 %index.next668, %n.vec663
  br i1 %i.nm, label %middle.block669, label %vector.body666, !llvm.loop !3095

middle.block669:                                  ; preds = %vector.body666
  %cmp.n670 = icmp eq i64 %i.ni, %n.vec663
  br i1 %cmp.n670, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block669
  %min.epilog.iters.check = icmp eq i64 %i.nj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !790

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec663, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec672 = and i64 %i.ni, -4                   ; 3 uses
  %i.nn = add nsw i64 %n.vec672, %i.nh
  %broadcast.splatinsert673 = insertelement <4 x i16> poison, i16 %i.ng, i64 0
  %broadcast.splat674 = shufflevector <4 x i16> %broadcast.splatinsert673, <4 x i16> poison, <4 x i32> zeroinitializer
end_hunk_1
