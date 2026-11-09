Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t26create_from_tuple_var_dataENS3_16tuple_iterator_tEjjbPK8hb_map_tRK11hb_vector_tIjLb0EE10hb_array_tIKNS_7HBFixedINS1_ILb1EsLj2EEELj14EEEEP15hb_alloc_pool_tb:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 18 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 28 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 8 uses
  %.not.i70 = icmp eq ptr %8, null
  %i.aa = zext i32 %3 to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 68 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 84 ; 6 uses
  %i.ah = icmp slt i32 %3, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 52 ; 3 uses
  %i.aj = load i8, ptr @_hb_NullPool, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.al = load i32, ptr @_hb_NullPool, align 16   ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 100 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 116 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 132 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre = load i32, ptr %i.e, align 8, !tbaa !3185
  %.pre455 = load ptr, ptr %i.f, align 8, !tbaa !3186
  %.pre456 = load ptr, ptr %i.g, align 8, !tbaa !550
  br label %bb.b

bb.b:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, %bb.a
  %i.az = phi ptr [ %.pre456, %bb.a ], [ %i.wt, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 2 uses
  %i.ba = phi ptr [ %.pre455, %bb.a ], [ %i.wo, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 3 uses
  %i.bb = phi i32 [ %.pre, %bb.a ], [ %i.wl, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ]
  %.sroa.0183.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0183.1, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 12 uses
  %.sroa.7186.0 = phi i32 [ 0, %bb.a ], [ %.sroa.7186.1, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 7 uses
  %.sroa.12189.0 = phi ptr [ null, %bb.a ], [ %.sroa.12189.1, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 11 uses
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0.2, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 20 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.a ], [ %.sroa.7.2, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 16 uses
  %.sroa.12.0 = phi ptr [ null, %bb.a ], [ %.sroa.12.2, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !3187
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !268
  %i.bf = load i16, ptr %i.bd, align 1, !tbaa !240 ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 0
  %i.bh = call i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi
  %.0.i.i.i = select i1 %i.bg, ptr @_hb_NullPool, ptr %i.bj, !prof !103
  %i.bk = zext i32 %i.bb to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.bk ; 4 uses
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !796
  %i.bm = load i16, ptr %i.ba, align 1, !tbaa !240
  %i.bn = call noundef i16 @llvm.bswap.i16(i16 %i.bm) ; 2 uses
  %.not.i = icmp ugt ptr %i.az, %i.bl
  br i1 %.not.i, label %.thread272, label %bb.c, !prof !243

bb.c:                                             ; preds = %bb.b
  %i.bo = zext i16 %i.bn to i32
  %i.bp = load i32, ptr %i.h, align 8, !tbaa !551
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bq ; 2 uses
  %.not6.i = icmp ule ptr %i.bl, %i.br
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bl to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = icmp ule i32 %i.bo, %i.bv
  %or.cond = and i1 %.not6.i, %i.bw
  br i1 %or.cond, label %bb.d, label %.thread272, !prof !3188

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store atomic i32 1, ptr %11 monotonic, align 8
  store atomic i8 1, ptr %i.i monotonic, align 4
  store atomic ptr null, ptr %i.j monotonic, align 8
  store i8 1, ptr %i.k, align 8, !tbaa !363
  store ptr null, ptr %i.m, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.l, i8 0, i64 18, i1 false)
  %i.bx = load i32, ptr %i.n, align 8, !tbaa !3189
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.by = call noundef zeroext i1 @_ZNK2OT20TupleVariationHeader18unpack_axis_tuplesEj10hb_array_tIKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPK8hb_map_tR12hb_hashmap_tIj6TripleLb0EE(ptr noundef nonnull align 1 dereferenceable(4) %i.ba, i32 noundef %i.bx, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %11)
  %i.bz = load i32, ptr %i.o, align 4
  %i.ca = icmp ne i32 %i.bz, 0
  %or.cond381.not = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond381.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.cb = load i32, ptr %10, align 8, !tbaa !359  ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.f, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit, !prof !103

bb.f:                                             ; preds = %bb.e
  %i.cd = xor i32 %i.cb, -1
  store i32 %i.cd, ptr %10, align 8, !tbaa !359
  br label %_ZN11hb_vector_tIjLb0EE5resetEv.exit

_ZN11hb_vector_tIjLb0EE5resetEv.exit:             ; preds = %bb.e, %bb.f
  store i32 0, ptr %.sroa.gep, align 4, !tbaa !360
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.cf = load i16, ptr %i.ce, align 1, !tbaa !240
  %i.cg = and i16 %i.cf, 32
  %.not292 = icmp eq i16 %i.cg, 0
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !796
  %i.ci = zext i16 %i.bn to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci ; 9 uses
  br i1 %.not292, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5resetEv.exit
  %i.ck = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16decompile_pointsERPKNS1_ILb1EhLj1EEER11hb_vector_tIjLb0EES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.cj)
  br i1 %i.ck, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %_ZN11hb_vector_tIjLb0EE5resetEv.exit
  %.sroa.phi = phi ptr [ %.sroa.gep, %bb.g ], [ %.sroa.gep210, %_ZN11hb_vector_tIjLb0EE5resetEv.exit ] ; 2 uses
  %.sroa.phi214 = phi ptr [ %.sroa.gep215, %bb.g ], [ %.sroa.gep216, %_ZN11hb_vector_tIjLb0EE5resetEv.exit ]
  %i.cl = load i32, ptr %.sroa.phi, align 4, !tbaa !360 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0                    ; 2 uses
  %. = select i1 %i.cm, i32 %3, i32 %i.cl         ; 31 uses
  %i.cn = icmp slt i32 %., 0
  %i.co = icmp slt i32 %.sroa.0183.0, 0
  %or.cond290 = select i1 %i.cn, i1 true, i1 %i.co, !prof !205
  br i1 %or.cond290, label %.critedge, label %bb.i, !prof !205

bb.i:                                             ; preds = %bb.h
  %.not.i98 = icmp samesign ugt i32 %., %.sroa.0183.0
  br i1 %.not.i98, label %.preheader.i, label %bb.o, !prof !103

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.043.i = phi i32 [ %i.cr, %.preheader.i ], [ %.sroa.0183.0, %bb.i ] ; 2 uses
  %i.cp = lshr i32 %.043.i, 1
  %i.cq = add nuw i32 %.043.i, 8
  %i.cr = add nuw i32 %i.cq, %i.cp                ; 8 uses
  %i.cs = icmp ugt i32 %., %i.cr
  br i1 %i.cs, label %.preheader.i, label %.thread.i, !llvm.loop !43

.thread.i:                                        ; preds = %.preheader.i
  %i.ct = icmp ugt i32 %i.cr, 1073741823
  br i1 %i.ct, label %.critedge.i101, label %bb.j, !prof !103

.critedge.i101:                                   ; preds = %.thread.i
  %i.cu = xor i32 %.sroa.0183.0, -1
  br label %.critedge

bb.j:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %.sroa.0183.0, 0
  br i1 %.not49.i, label %bb.k, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i

bb.k:                                             ; preds = %bb.j
  %.not9.i.i.i = icmp eq ptr %.sroa.12189.0, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = shl nuw i32 %i.cr, 2
  %i.cw = zext i32 %i.cv to i64
  %i.cx = call ptr @hb_malloc(i64 noundef %i.cw) #18 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i, label %bb.m, !prof !103

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i = icmp eq i32 %.sroa.7186.0, 0
  br i1 %.not.i.i.i.i, label %.lr.ph348.preheader, label %bb.n, !prof !103

bb.n:                                             ; preds = %bb.m
  %i.cy = zext nneg i32 %.sroa.7186.0 to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull readonly align 1 %.sroa.12189.0, i64 %i.cz, i1 false), !alias.scope !3190
  br label %.lr.ph348.preheader

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i: ; preds = %bb.k, %bb.j
  %i.da = phi ptr [ null, %bb.k ], [ %.sroa.12189.0, %bb.j ]
  %i.db = shl nuw i32 %i.cr, 2
  %i.dc = zext i32 %i.db to i64
  %i.dd = call ptr @hb_realloc(ptr noundef %i.da, i64 noundef %i.dc) #18 ; 2 uses
  %.not22.i = icmp eq ptr %i.dd, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i, label %.lr.ph348.preheader, !prof !190

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, %bb.l
  %i.de = xor i32 %.sroa.0183.0, -1
  br label %.critedge

bb.o:                                             ; preds = %bb.i
  %.not383 = icmp eq i32 %., 0
  br i1 %.not383, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit, label %.lr.ph348.preheader

.lr.ph348.preheader:                              ; preds = %bb.m, %bb.n, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, %bb.o
  %.sroa.12189.3.ph503 = phi ptr [ %.sroa.12189.0, %bb.o ], [ %i.cx, %bb.n ], [ %i.dd, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ %i.cx, %bb.m ] ; 22 uses
  %.sroa.0183.3.ph501 = phi i32 [ %.sroa.0183.0, %bb.o ], [ %i.cr, %bb.n ], [ %i.cr, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ %i.cr, %bb.m ] ; 6 uses
  %.sroa.12189.3.ph503646 = ptrtoaddr ptr %.sroa.12189.3.ph503 to i64
  %.pre458 = load ptr, ptr %i.a, align 8, !tbaa !796
  br label %.lr.ph348

.lr.ph348:                                        ; preds = %.lr.ph348.preheader, %.loopexit298
  %i.df = phi ptr [ %i.jg, %.loopexit298 ], [ %.pre458, %.lr.ph348.preheader ] ; 3 uses
  %.0101.i347 = phi i32 [ %.9.i, %.loopexit298 ], [ 0, %.lr.ph348.preheader ] ; 11 uses
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 13 uses
  %i.di = icmp ugt ptr %i.dh, %i.cj
  br i1 %i.di, label %.critedge, label %bb.p, !prof !103

bb.p:                                             ; preds = %.lr.ph348
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !796
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !246 ; 3 uses
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = and i32 %i.dk, 63                       ; 3 uses
  %i.dm = add nuw nsw i32 %i.dl, 1                ; 5 uses
  %i.dn = add nuw i32 %i.dm, %.0101.i347          ; 11 uses
  %i.do = icmp ugt i32 %i.dn, %.
  br i1 %i.do, label %.critedge, label %bb.q, !prof !103

bb.q:                                             ; preds = %bb.p
  %i.dp = lshr i32 %i.dk, 6
  switch i32 %i.dp, label %.unreachabledefault [
    i32 2, label %_ZL9hb_memsetPvij.exit
    i32 1, label %bb.r
    i32 3, label %bb.u
    i32 0, label %bb.v
  ]

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.q
  %i.dq = zext nneg i32 %.0101.i347 to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.dq
  %i.ds = shl nuw nsw i32 %i.dm, 2
  %i.dt = zext nneg i32 %i.ds to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dr, i8 0, i64 %i.dt, i1 false)
  %.pre457 = load ptr, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit298

bb.r:                                             ; preds = %bb.q
  %i.du = shl nuw nsw i32 %i.dm, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dv
  %i.dx = icmp ugt ptr %i.dw, %i.cj
  br i1 %i.dx, label %.critedge, label %bb.s, !prof !103

bb.s:                                             ; preds = %bb.r
  %i.dy = icmp samesign ugt i32 %i.dl, 2
  br i1 %i.dy, label %.lr.ph338, label %.lr.ph343

.lr.ph338:                                        ; preds = %bb.s
  %i.dz = add nuw i32 %.0101.i347, 3
  br label %bb.t

.preheader297:                                    ; preds = %bb.t
  store ptr %i.fu, ptr %i.a, align 8, !tbaa !796
  %i.ea = icmp ult i32 %i.fv, %i.dn
  br i1 %i.ea, label %.lr.ph343, label %.loopexit298

.lr.ph343:                                        ; preds = %bb.s, %.preheader297
  %.1102.i.lcssa511 = phi i32 [ %i.fv, %.preheader297 ], [ %.0101.i347, %bb.s ]
  %.promoted345510 = phi ptr [ %i.fu, %.preheader297 ], [ %i.dh, %bb.s ] ; 3 uses
  %i.eb = zext i32 %.1102.i.lcssa511 to i64       ; 4 uses
  %wide.trip.count435 = zext nneg i32 %i.dn to i64
  %i.ec = zext nneg i32 %.0101.i347 to i64
  %i.ed = and i8 %i.dj, 63
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = add nuw nsw i64 %i.ec, %i.ee
  %i.eg = add nuw nsw i64 %i.ef, 1
  %i.eh = sub nsw i64 %i.eg, %i.eb                ; 3 uses
  %min.iters.check630 = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check630, label %scalar.ph629.preheader, label %vector.ph631

vector.ph631:                                     ; preds = %.lr.ph343
  %n.vec632 = and i64 %i.eh, -8                   ; 4 uses
  %i.ei = add nsw i64 %n.vec632, %i.eb
  %i.ej = shl nsw i64 %n.vec632, 1
  %i.ek = getelementptr i8, ptr %.promoted345510, i64 %i.ej ; 2 uses
  %invariant.gep759 = getelementptr [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.eb
  br label %vector.body633

vector.body633:                                   ; preds = %vector.body633, %vector.ph631
  %index634 = phi i64 [ 0, %vector.ph631 ], [ %index.next638, %vector.body633 ] ; 3 uses
  %i.el = shl i64 %index634, 1
  %next.gep635 = getelementptr i8, ptr %.promoted345510, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep635, i64 8
  %wide.load636 = load <4 x i16>, ptr %next.gep635, align 1, !tbaa !240
  %wide.load637 = load <4 x i16>, ptr %i.em, align 1, !tbaa !240
  %i.en = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load636)
  %i.eo = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load637)
  %i.ep = sext <4 x i16> %i.en to <4 x i32>
  %i.eq = sext <4 x i16> %i.eo to <4 x i32>
  %gep760 = getelementptr [4 x i8], ptr %invariant.gep759, i64 %index634 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %gep760, i64 16
  store <4 x i32> %i.ep, ptr %gep760, align 4, !tbaa !206
  store <4 x i32> %i.eq, ptr %i.er, align 4, !tbaa !206
  %index.next638 = add nuw i64 %index634, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next638, %n.vec632
  br i1 %i.es, label %middle.block639, label %vector.body633, !llvm.loop !3156

middle.block639:                                  ; preds = %vector.body633
  %cmp.n640 = icmp eq i64 %i.eh, %n.vec632
  br i1 %cmp.n640, label %..loopexit298_crit_edge, label %scalar.ph629.preheader

scalar.ph629.preheader:                           ; preds = %.lr.ph343, %middle.block639
  %indvars.iv432.ph = phi i64 [ %i.eb, %.lr.ph343 ], [ %i.ei, %middle.block639 ]
  %.ph679 = phi ptr [ %.promoted345510, %.lr.ph343 ], [ %i.ek, %middle.block639 ]
  br label %scalar.ph629

bb.t:                                             ; preds = %.lr.ph338, %bb.t
  %i.et = phi ptr [ %i.dh, %.lr.ph338 ], [ %i.fu, %bb.t ] ; 5 uses
  %i.eu = phi i32 [ %i.dz, %.lr.ph338 ], [ %i.fw, %bb.t ]
  %.1102.i337 = phi i32 [ %.0101.i347, %.lr.ph338 ], [ %i.fv, %bb.t ] ; 5 uses
  %i.ev = load i16, ptr %i.et, align 1, !tbaa !240
  %i.ew = call noundef i16 @llvm.bswap.i16(i16 %i.ev)
  %i.ex = sext i16 %i.ew to i32
  %i.ey = zext i32 %.1102.i337 to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.ey
  store i32 %i.ex, ptr %i.ez, align 4, !tbaa !206
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.fb = load i16, ptr %i.fa, align 1, !tbaa !240
  %i.fc = call noundef i16 @llvm.bswap.i16(i16 %i.fb)
  %i.fd = sext i16 %i.fc to i32
  %i.fe = add i32 %.1102.i337, 1
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.ff
  store i32 %i.fd, ptr %i.fg, align 4, !tbaa !206
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.fi = load i16, ptr %i.fh, align 1, !tbaa !240
  %i.fj = call noundef i16 @llvm.bswap.i16(i16 %i.fi)
  %i.fk = sext i16 %i.fj to i32
  %i.fl = add i32 %.1102.i337, 2
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.fm
  store i32 %i.fk, ptr %i.fn, align 4, !tbaa !206
  %i.fo = getelementptr inbounds nuw i8, ptr %i.et, i64 6
  %i.fp = load i16, ptr %i.fo, align 1, !tbaa !240
  %i.fq = call noundef i16 @llvm.bswap.i16(i16 %i.fp)
  %i.fr = sext i16 %i.fq to i32
  %i.fs = zext i32 %i.eu to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.fs
  store i32 %i.fr, ptr %i.ft, align 4, !tbaa !206
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 4 uses
  %i.fv = add i32 %.1102.i337, 4                  ; 4 uses
  %i.fw = add i32 %.1102.i337, 7                  ; 2 uses
  %i.fx = icmp ult i32 %i.fw, %i.dn
  br i1 %i.fx, label %bb.t, label %.preheader297, !llvm.loop !3157

scalar.ph629:                                     ; preds = %scalar.ph629.preheader, %scalar.ph629
  %indvars.iv432 = phi i64 [ %indvars.iv.next433, %scalar.ph629 ], [ %indvars.iv432.ph, %scalar.ph629.preheader ] ; 2 uses
  %i.fy = phi ptr [ %i.gd, %scalar.ph629 ], [ %.ph679, %scalar.ph629.preheader ] ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 1, !tbaa !240
  %i.ga = call noundef i16 @llvm.bswap.i16(i16 %i.fz)
  %i.gb = sext i16 %i.ga to i32
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %indvars.iv432
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !206
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 2 ; 2 uses
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %exitcond436.not = icmp eq i64 %indvars.iv.next433, %wide.trip.count435
  br i1 %exitcond436.not, label %..loopexit298_crit_edge, label %scalar.ph629, !llvm.loop !3158

bb.u:                                             ; preds = %bb.q
  %i.ge = shl nuw nsw i32 %i.dm, 2
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.gf
  %i.gh = icmp ugt ptr %i.gg, %i.cj
  br i1 %i.gh, label %.critedge, label %.lr.ph333, !prof !103

.lr.ph333:                                        ; preds = %bb.u
  %i.gi = zext nneg i32 %.0101.i347 to i64        ; 7 uses
  %i.gj = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.gk = add nuw nsw i64 %i.gi, 1
  %i.gl = call i64 @llvm.umax.i64(i64 %i.gj, i64 %i.gk)
  %i.gm = sub nsw i64 %i.gl, %i.gi                ; 3 uses
  %min.iters.check648 = icmp ult i64 %i.gm, 8
  br i1 %min.iters.check648, label %scalar.ph647.preheader, label %vector.memcheck649

vector.memcheck649:                               ; preds = %.lr.ph333
  %i.gn = shl nuw nsw i64 %i.gi, 2
  %13 = add i64 %i.gn, %.sroa.12189.3.ph503646
  %i.go = sub i64 %13, %i.dg
  %i.gp = add i64 %i.go, -2
  %diff.check650 = icmp ult i64 %i.gp, 31
  br i1 %diff.check650, label %scalar.ph647.preheader, label %vector.ph651

vector.ph651:                                     ; preds = %vector.memcheck649
  %n.vec652 = and i64 %i.gm, -8                   ; 4 uses
  %i.gq = add nsw i64 %n.vec652, %i.gi            ; 2 uses
  %i.gr = shl nsw i64 %n.vec652, 2
  %i.gs = getelementptr i8, ptr %i.dh, i64 %i.gr  ; 2 uses
  %invariant.gep757 = getelementptr [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.gi
  br label %vector.body653

vector.body653:                                   ; preds = %vector.body653, %vector.ph651
  %index654 = phi i64 [ 0, %vector.ph651 ], [ %index.next658, %vector.body653 ] ; 3 uses
  %i.gt = shl i64 %index654, 2
  %next.gep655 = getelementptr i8, ptr %i.dh, i64 %i.gt ; 2 uses
  %i.gu = getelementptr i8, ptr %next.gep655, i64 16
  %wide.load656 = load <4 x i32>, ptr %next.gep655, align 1, !tbaa !242
  %wide.load657 = load <4 x i32>, ptr %i.gu, align 1, !tbaa !242
  %i.gv = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load656)
  %i.gw = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load657)
  %gep758 = getelementptr [4 x i8], ptr %invariant.gep757, i64 %index654 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %gep758, i64 16
  store <4 x i32> %i.gv, ptr %gep758, align 4, !tbaa !206
  store <4 x i32> %i.gw, ptr %i.gx, align 4, !tbaa !206
  %index.next658 = add nuw i64 %index654, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next658, %n.vec652
  br i1 %i.gy, label %middle.block659, label %vector.body653, !llvm.loop !3159

middle.block659:                                  ; preds = %vector.body653
  %cmp.n660 = icmp eq i64 %i.gm, %n.vec652
  br i1 %cmp.n660, label %..loopexit299_crit_edge, label %scalar.ph647.preheader

scalar.ph647.preheader:                           ; preds = %vector.memcheck649, %.lr.ph333, %middle.block659
  %indvars.iv429.ph = phi i64 [ %i.gi, %vector.memcheck649 ], [ %i.gi, %.lr.ph333 ], [ %i.gq, %middle.block659 ]
  %.ph680.a = phi ptr [ %i.dh, %vector.memcheck649 ], [ %i.dh, %.lr.ph333 ], [ %i.gs, %middle.block659 ]
  br label %scalar.ph647

scalar.ph647:                                     ; preds = %scalar.ph647.preheader, %scalar.ph647
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %scalar.ph647 ], [ %indvars.iv429.ph, %scalar.ph647.preheader ] ; 2 uses
  %i.gz = phi ptr [ %i.hd, %scalar.ph647 ], [ %.ph680.a, %scalar.ph647.preheader ] ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 1, !tbaa !242
  %i.hb = call noundef i32 @llvm.bswap.i32(i32 %i.ha)
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %indvars.iv429
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !206
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 4 ; 2 uses
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 3 uses
  %i.he = icmp samesign ult i64 %indvars.iv.next430, %i.gj
  br i1 %i.he, label %scalar.ph647, label %..loopexit299_crit_edge, !llvm.loop !3160

bb.v:                                             ; preds = %bb.q
  %i.hf = zext nneg i32 %i.dm to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.hf
  %i.hh = icmp ugt ptr %i.hg, %i.cj
  br i1 %i.hh, label %.critedge, label %bb.w, !prof !103

bb.w:                                             ; preds = %bb.v
  %i.hi = icmp samesign ugt i32 %i.dl, 2
  br i1 %i.hi, label %.lr.ph, label %.lr.ph328

.lr.ph:                                           ; preds = %bb.w
  %i.hj = add nuw i32 %.0101.i347, 3
  br label %bb.x

.preheader300:                                    ; preds = %bb.x
  store ptr %i.is, ptr %i.a, align 8, !tbaa !796
  %i.hk = icmp ult i32 %i.ix, %i.dn
  br i1 %i.hk, label %.lr.ph328, label %.loopexit298

.lr.ph328:                                        ; preds = %bb.w, %.preheader300
  %.4.i.lcssa515 = phi i32 [ %i.ix, %.preheader300 ], [ %.0101.i347, %bb.w ]
  %.promoted330514 = phi ptr [ %i.is, %.preheader300 ], [ %i.dh, %bb.w ] ; 3 uses
  %i.hl = zext i32 %.4.i.lcssa515 to i64          ; 4 uses
  %wide.trip.count = zext nneg i32 %i.dn to i64
  %i.hm = zext nneg i32 %.0101.i347 to i64
  %i.hn = and i8 %i.dj, 63
  %i.ho = zext nneg i8 %i.hn to i64
  %i.hp = add nuw nsw i64 %i.hm, %i.ho
  %i.hq = add nuw nsw i64 %i.hp, 1
  %i.hr = sub nsw i64 %i.hq, %i.hl                ; 3 uses
  %min.iters.check664 = icmp ult i64 %i.hr, 8
  br i1 %min.iters.check664, label %scalar.ph663.preheader, label %vector.ph665

vector.ph665:                                     ; preds = %.lr.ph328
  %n.vec666 = and i64 %i.hr, -8                   ; 4 uses
  %i.hs = add nsw i64 %n.vec666, %i.hl
  %i.ht = getelementptr i8, ptr %.promoted330514, i64 %n.vec666 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.hl
  br label %vector.body667

vector.body667:                                   ; preds = %vector.body667, %vector.ph665
  %index668 = phi i64 [ 0, %vector.ph665 ], [ %index.next672, %vector.body667 ] ; 3 uses
  %next.gep669 = getelementptr i8, ptr %.promoted330514, i64 %index668 ; 2 uses
  %i.hu = getelementptr i8, ptr %next.gep669, i64 4
  %wide.load670 = load <4 x i8>, ptr %next.gep669, align 1, !tbaa !477
  %wide.load671 = load <4 x i8>, ptr %i.hu, align 1, !tbaa !477
  %i.hv = sext <4 x i8> %wide.load670 to <4 x i32>
  %i.hw = sext <4 x i8> %wide.load671 to <4 x i32>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index668 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.hv, ptr %gep, align 4, !tbaa !206
  store <4 x i32> %i.hw, ptr %i.hx, align 4, !tbaa !206
  %index.next672 = add nuw i64 %index668, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next672, %n.vec666
  br i1 %i.hy, label %middle.block673, label %vector.body667, !llvm.loop !3161

middle.block673:                                  ; preds = %vector.body667
  %cmp.n674 = icmp eq i64 %i.hr, %n.vec666
  br i1 %cmp.n674, label %..loopexit301_crit_edge, label %scalar.ph663.preheader

scalar.ph663.preheader:                           ; preds = %.lr.ph328, %middle.block673
  %indvars.iv.ph = phi i64 [ %i.hl, %.lr.ph328 ], [ %i.hs, %middle.block673 ]
  %.ph681.a = phi ptr [ %.promoted330514, %.lr.ph328 ], [ %i.ht, %middle.block673 ]
  br label %scalar.ph663

bb.x:                                             ; preds = %.lr.ph, %bb.x
  %i.hz = phi ptr [ %i.dh, %.lr.ph ], [ %i.is, %bb.x ] ; 5 uses
  %i.ia = phi i32 [ %i.hj, %.lr.ph ], [ %i.iy, %bb.x ]
  %.4.i325 = phi i32 [ %.0101.i347, %.lr.ph ], [ %i.ix, %bb.x ] ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 1
  %i.ic = load i8, ptr %i.hz, align 1, !tbaa !477
  %i.id = sext i8 %i.ic to i32
  %i.ie = zext i32 %.4.i325 to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.ie
  store i32 %i.id, ptr %i.if, align 4, !tbaa !206
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  %i.ih = load i8, ptr %i.ib, align 1, !tbaa !477
  %i.ii = sext i8 %i.ih to i32
  %i.ij = add i32 %.4.i325, 1
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.ik
  store i32 %i.ii, ptr %i.il, align 4, !tbaa !206
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 3
  %i.in = load i8, ptr %i.ig, align 1, !tbaa !477
  %i.io = sext i8 %i.in to i32
  %i.ip = add i32 %.4.i325, 2
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.iq
  store i32 %i.io, ptr %i.ir, align 4, !tbaa !206
  %i.is = getelementptr inbounds nuw i8, ptr %i.hz, i64 4 ; 4 uses
  %i.it = load i8, ptr %i.im, align 1, !tbaa !477
  %i.iu = sext i8 %i.it to i32
  %i.iv = zext i32 %i.ia to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %i.iv
  store i32 %i.iu, ptr %i.iw, align 4, !tbaa !206
  %i.ix = add i32 %.4.i325, 4                     ; 4 uses
  %i.iy = add i32 %.4.i325, 7                     ; 2 uses
  %i.iz = icmp ult i32 %i.iy, %i.dn
  br i1 %i.iz, label %bb.x, label %.preheader300, !llvm.loop !3162

scalar.ph663:                                     ; preds = %scalar.ph663.preheader, %scalar.ph663
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph663 ], [ %indvars.iv.ph, %scalar.ph663.preheader ] ; 2 uses
  %i.ja = phi ptr [ %i.jb, %scalar.ph663 ], [ %.ph681.a, %scalar.ph663.preheader ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 1 ; 2 uses
  %i.jc = load i8, ptr %i.ja, align 1, !tbaa !477
  %i.jd = sext i8 %i.jc to i32
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph503, i64 %indvars.iv
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !206
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit301_crit_edge, label %scalar.ph663, !llvm.loop !3163

.unreachabledefault:                              ; preds = %bb.q
  unreachable

default.unreachable:                              ; preds = %bb.ah
  unreachable

..loopexit298_crit_edge:                          ; preds = %scalar.ph629, %middle.block639
  %.lcssa568 = phi ptr [ %i.ek, %middle.block639 ], [ %i.gd, %scalar.ph629 ] ; 2 uses
  store ptr %.lcssa568, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit298

..loopexit299_crit_edge:                          ; preds = %scalar.ph647, %middle.block659
  %.lcssa565 = phi ptr [ %i.gs, %middle.block659 ], [ %i.hd, %scalar.ph647 ] ; 2 uses
  %indvars.iv.next430.lcssa = phi i64 [ %i.gq, %middle.block659 ], [ %indvars.iv.next430, %scalar.ph647 ]
  %i.jf = trunc nuw i64 %indvars.iv.next430.lcssa to i32
  store ptr %.lcssa565, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit298

..loopexit301_crit_edge:                          ; preds = %scalar.ph663, %middle.block673
  %.lcssa564 = phi ptr [ %i.ht, %middle.block673 ], [ %i.jb, %scalar.ph663 ] ; 2 uses
  store ptr %.lcssa564, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit298

.loopexit298:                                     ; preds = %.preheader300, %..loopexit301_crit_edge, %..loopexit299_crit_edge, %.preheader297, %..loopexit298_crit_edge, %_ZL9hb_memsetPvij.exit
  %i.jg = phi ptr [ %.pre457, %_ZL9hb_memsetPvij.exit ], [ %i.fu, %.preheader297 ], [ %i.is, %.preheader300 ], [ %.lcssa568, %..loopexit298_crit_edge ], [ %.lcssa565, %..loopexit299_crit_edge ], [ %.lcssa564, %..loopexit301_crit_edge ]
  %.9.i = phi i32 [ %i.dn, %_ZL9hb_memsetPvij.exit ], [ %i.fv, %.preheader297 ], [ %i.ix, %.preheader300 ], [ %i.dn, %..loopexit298_crit_edge ], [ %i.jf, %..loopexit299_crit_edge ], [ %i.dn, %..loopexit301_crit_edge ] ; 2 uses
  %i.jh = icmp ult i32 %.9.i, %.
  br i1 %i.jh, label %.lr.ph348, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit, !llvm.loop !3164

_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit: ; preds = %.loopexit298, %bb.o
  %.not383507 = phi i1 [ true, %bb.o ], [ false, %.loopexit298 ] ; 2 uses
  %.sroa.12189.3.ph504 = phi ptr [ %.sroa.12189.0, %bb.o ], [ %.sroa.12189.3.ph503, %.loopexit298 ] ; 10 uses
  %.sroa.0183.3.ph502 = phi i32 [ %.sroa.0183.0, %bb.o ], [ %.sroa.0183.3.ph501, %.loopexit298 ] ; 9 uses
  br i1 %4, label %bb.y, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit64

bb.y:                                             ; preds = %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit
  %i.ji = icmp slt i32 %.sroa.0.0, 0
  br i1 %i.ji, label %.critedge, label %bb.z, !prof !205

bb.z:                                             ; preds = %bb.y
  %.not.i102 = icmp samesign ugt i32 %., %.sroa.0.0
  br i1 %.not.i102, label %.preheader.i104, label %bb.af, !prof !103

.preheader.i104:                                  ; preds = %bb.z, %.preheader.i104
  %.043.i105 = phi i32 [ %i.jl, %.preheader.i104 ], [ %.sroa.0.0, %bb.z ] ; 2 uses
  %i.jj = lshr i32 %.043.i105, 1
  %i.jk = add nuw i32 %.043.i105, 8
  %i.jl = add nuw i32 %i.jk, %i.jj                ; 8 uses
  %i.jm = icmp ugt i32 %., %i.jl
  br i1 %i.jm, label %.preheader.i104, label %.thread.i106, !llvm.loop !43

.thread.i106:                                     ; preds = %.preheader.i104
  %i.jn = icmp ugt i32 %i.jl, 1073741823
  br i1 %i.jn, label %.critedge.i121, label %bb.aa, !prof !103

.critedge.i121:                                   ; preds = %.thread.i106
  %i.jo = xor i32 %.sroa.0.0, -1
  br label %.critedge

bb.aa:                                            ; preds = %.thread.i106
  %.not49.i108 = icmp eq i32 %.sroa.0.0, 0
  br i1 %.not49.i108, label %bb.ab, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109

bb.ab:                                            ; preds = %bb.aa
  %.not9.i.i.i118 = icmp eq ptr %.sroa.12.0, null
  br i1 %.not9.i.i.i118, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jp = shl nuw i32 %i.jl, 2
  %i.jq = zext i32 %i.jp to i64
  %i.jr = call ptr @hb_malloc(i64 noundef %i.jq) #18 ; 4 uses
  %.not10.i.i.i119 = icmp eq ptr %i.jr, null
  br i1 %.not10.i.i.i119, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116, label %bb.ad, !prof !103

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i120 = icmp eq i32 %.sroa.7.0, 0
  br i1 %.not.i.i.i.i120, label %bb.af, label %bb.ae, !prof !103

bb.ae:                                            ; preds = %bb.ad
  %i.js = zext nneg i32 %.sroa.7.0 to i64
  %i.jt = shl nuw nsw i64 %i.js, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jr, ptr nonnull readonly align 1 %.sroa.12.0, i64 %i.jt, i1 false), !alias.scope !3191
  br label %bb.af

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109: ; preds = %bb.ab, %bb.aa
  %i.ju = phi ptr [ null, %bb.ab ], [ %.sroa.12.0, %bb.aa ]
  %i.jv = shl nuw i32 %i.jl, 2
  %i.jw = zext i32 %i.jv to i64
  %i.jx = call ptr @hb_realloc(ptr noundef %i.ju, i64 noundef %i.jw) #18 ; 2 uses
  %.not22.i110 = icmp eq ptr %i.jx, null
  br i1 %.not22.i110, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116, label %bb.af, !prof !190

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116: ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109, %bb.ac
  %i.jy = xor i32 %.sroa.0.0, -1
  br label %.critedge

bb.af:                                            ; preds = %bb.z, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109, %bb.ae, %bb.ad
  %.sroa.0.4.ph = phi i32 [ %.sroa.0.0, %bb.z ], [ %i.jl, %bb.ad ], [ %i.jl, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109 ], [ %i.jl, %bb.ae ] ; 7 uses
  %.sroa.12.4.ph = phi ptr [ %.sroa.12.0, %bb.z ], [ %i.jr, %bb.ad ], [ %i.jx, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109 ], [ %i.jr, %bb.ae ] ; 23 uses
  %.sroa.12.4.ph600 = ptrtoaddr ptr %.sroa.12.4.ph to i64
  br i1 %.not383507, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit64, label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %bb.af
  %.pre461 = load ptr, ptr %i.a, align 8, !tbaa !796
  br label %.lr.ph375

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.loopexit
  %i.jz = phi ptr [ %i.qa, %.loopexit ], [ %.pre461, %.lr.ph375.preheader ] ; 3 uses
  %.0101.i53374 = phi i32 [ %.9.i57, %.loopexit ], [ 0, %.lr.ph375.preheader ] ; 11 uses
  %i.ka = ptrtoaddr ptr %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 1 ; 13 uses
  %i.kc = icmp ugt ptr %i.kb, %i.cj
  br i1 %i.kc, label %.critedge, label %bb.ag, !prof !103

bb.ag:                                            ; preds = %.lr.ph375
  store ptr %i.kb, ptr %i.a, align 8, !tbaa !796
  %i.kd = load i8, ptr %i.jz, align 1, !tbaa !246 ; 3 uses
  %i.ke = zext i8 %i.kd to i32                    ; 2 uses
  %i.kf = and i32 %i.ke, 63                       ; 3 uses
  %i.kg = add nuw nsw i32 %i.kf, 1                ; 5 uses
  %i.kh = add nuw i32 %i.kg, %.0101.i53374        ; 11 uses
  %i.ki = icmp ugt i32 %i.kh, %.
  br i1 %i.ki, label %.critedge, label %bb.ah, !prof !103

bb.ah:                                            ; preds = %bb.ag
  %i.kj = lshr i32 %i.ke, 6
  switch i32 %i.kj, label %default.unreachable [
    i32 2, label %_ZL9hb_memsetPvij.exit69
    i32 1, label %bb.ai
    i32 3, label %bb.al
    i32 0, label %bb.am
  ]

_ZL9hb_memsetPvij.exit69:                         ; preds = %bb.ah
  %i.kk = zext nneg i32 %.0101.i53374 to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.kk
  %i.km = shl nuw nsw i32 %i.kg, 2
  %i.kn = zext nneg i32 %i.km to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.kl, i8 0, i64 %i.kn, i1 false)
  %.pre460 = load ptr, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.ko = shl nuw nsw i32 %i.kg, 1
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kp
  %i.kr = icmp ugt ptr %i.kq, %i.cj
  br i1 %i.kr, label %.critedge, label %bb.aj, !prof !103

bb.aj:                                            ; preds = %bb.ai
  %i.ks = icmp samesign ugt i32 %i.kf, 2
  br i1 %i.ks, label %.lr.ph365, label %.lr.ph370

.lr.ph365:                                        ; preds = %bb.aj
  %i.kt = add nuw i32 %.0101.i53374, 3
  br label %bb.ak

.preheader:                                       ; preds = %bb.ak
  store ptr %i.mo, ptr %i.a, align 8, !tbaa !796
  %i.ku = icmp ult i32 %i.mp, %i.kh
  br i1 %i.ku, label %.lr.ph370, label %.loopexit

.lr.ph370:                                        ; preds = %bb.aj, %.preheader
  %.1102.i61.lcssa519 = phi i32 [ %i.mp, %.preheader ], [ %.0101.i53374, %bb.aj ]
  %.promoted372518 = phi ptr [ %i.mo, %.preheader ], [ %i.kb, %bb.aj ] ; 3 uses
  %i.kv = zext i32 %.1102.i61.lcssa519 to i64     ; 4 uses
  %wide.trip.count448 = zext nneg i32 %i.kh to i64
  %i.kw = zext nneg i32 %.0101.i53374 to i64
  %i.kx = and i8 %i.kd, 63
  %i.ky = zext nneg i8 %i.kx to i64
  %i.kz = add nuw nsw i64 %i.kw, %i.ky
  %i.la = add nuw nsw i64 %i.kz, 1
  %i.lb = sub nsw i64 %i.la, %i.kv                ; 3 uses
  %min.iters.check = icmp ult i64 %i.lb, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph370
  %n.vec = and i64 %i.lb, -8                      ; 4 uses
  %i.lc = add nsw i64 %n.vec, %i.kv
  %i.ld = shl nsw i64 %n.vec, 1
  %i.le = getelementptr i8, ptr %.promoted372518, i64 %i.ld ; 2 uses
  %invariant.gep765 = getelementptr [4 x i8], ptr %.sroa.12.4.ph, i64 %i.kv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lf = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted372518, i64 %i.lf ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !240
  %wide.load597 = load <4 x i16>, ptr %i.lg, align 1, !tbaa !240
  %i.lh = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.li = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load597)
  %i.lj = sext <4 x i16> %i.lh to <4 x i32>
  %i.lk = sext <4 x i16> %i.li to <4 x i32>
  %gep766 = getelementptr [4 x i8], ptr %invariant.gep765, i64 %index ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %gep766, i64 16
  store <4 x i32> %i.lj, ptr %gep766, align 4, !tbaa !206
  store <4 x i32> %i.lk, ptr %i.ll, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lm = icmp eq i64 %index.next, %n.vec
  br i1 %i.lm, label %middle.block, label %vector.body, !llvm.loop !3168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lb, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph370, %middle.block
  %indvars.iv445.ph = phi i64 [ %i.kv, %.lr.ph370 ], [ %i.lc, %middle.block ]
  %.ph = phi ptr [ %.promoted372518, %.lr.ph370 ], [ %i.le, %middle.block ]
  br label %scalar.ph

bb.ak:                                            ; preds = %.lr.ph365, %bb.ak
  %i.ln = phi ptr [ %i.kb, %.lr.ph365 ], [ %i.mo, %bb.ak ] ; 5 uses
  %i.lo = phi i32 [ %i.kt, %.lr.ph365 ], [ %i.mq, %bb.ak ]
  %.1102.i61364 = phi i32 [ %.0101.i53374, %.lr.ph365 ], [ %i.mp, %bb.ak ] ; 5 uses
  %i.lp = load i16, ptr %i.ln, align 1, !tbaa !240
  %i.lq = call noundef i16 @llvm.bswap.i16(i16 %i.lp)
  %i.lr = sext i16 %i.lq to i32
  %i.ls = zext i32 %.1102.i61364 to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.ls
  store i32 %i.lr, ptr %i.lt, align 4, !tbaa !206
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.lv = load i16, ptr %i.lu, align 1, !tbaa !240
  %i.lw = call noundef i16 @llvm.bswap.i16(i16 %i.lv)
  %i.lx = sext i16 %i.lw to i32
  %i.ly = add i32 %.1102.i61364, 1
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.lz
  store i32 %i.lx, ptr %i.ma, align 4, !tbaa !206
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.mc = load i16, ptr %i.mb, align 1, !tbaa !240
  %i.md = call noundef i16 @llvm.bswap.i16(i16 %i.mc)
  %i.me = sext i16 %i.md to i32
  %i.mf = add i32 %.1102.i61364, 2
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.mg
  store i32 %i.me, ptr %i.mh, align 4, !tbaa !206
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ln, i64 6
  %i.mj = load i16, ptr %i.mi, align 1, !tbaa !240
  %i.mk = call noundef i16 @llvm.bswap.i16(i16 %i.mj)
  %i.ml = sext i16 %i.mk to i32
  %i.mm = zext i32 %i.lo to i64
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.mm
  store i32 %i.ml, ptr %i.mn, align 4, !tbaa !206
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 4 uses
  %i.mp = add i32 %.1102.i61364, 4                ; 4 uses
  %i.mq = add i32 %.1102.i61364, 7                ; 2 uses
  %i.mr = icmp ult i32 %i.mq, %i.kh
  br i1 %i.mr, label %bb.ak, label %.preheader, !llvm.loop !3157

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv445 = phi i64 [ %indvars.iv.next446, %scalar.ph ], [ %indvars.iv445.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ms = phi ptr [ %i.mx, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.mt = load i16, ptr %i.ms, align 1, !tbaa !240
  %i.mu = call noundef i16 @llvm.bswap.i16(i16 %i.mt)
  %i.mv = sext i16 %i.mu to i32
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %indvars.iv445
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !206
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 2 ; 2 uses
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %exitcond449.not = icmp eq i64 %indvars.iv.next446, %wide.trip.count448
  br i1 %exitcond449.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !3169

bb.al:                                            ; preds = %bb.ah
  %i.my = shl nuw nsw i32 %i.kg, 2
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.mz
  %i.nb = icmp ugt ptr %i.na, %i.cj
  br i1 %i.nb, label %.critedge, label %.lr.ph360, !prof !103

.lr.ph360:                                        ; preds = %bb.al
  %i.nc = zext nneg i32 %.0101.i53374 to i64      ; 7 uses
  %i.nd = zext nneg i32 %i.kh to i64              ; 2 uses
  %i.ne = add nuw nsw i64 %i.nc, 1
  %i.nf = call i64 @llvm.umax.i64(i64 %i.nd, i64 %i.ne)
  %i.ng = sub nsw i64 %i.nf, %i.nc                ; 3 uses
  %min.iters.check602 = icmp ult i64 %i.ng, 8
  br i1 %min.iters.check602, label %scalar.ph601.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph360
  %i.nh = shl nuw nsw i64 %i.nc, 2
  %14 = add i64 %i.nh, %.sroa.12.4.ph600
  %i.ni = sub i64 %14, %i.ka
  %i.nj = add i64 %i.ni, -2
  %diff.check = icmp ult i64 %i.nj, 31
  br i1 %diff.check, label %scalar.ph601.preheader, label %vector.ph603

vector.ph603:                                     ; preds = %vector.memcheck
  %n.vec604 = and i64 %i.ng, -8                   ; 4 uses
  %i.nk = add nsw i64 %n.vec604, %i.nc            ; 2 uses
  %i.nl = shl nsw i64 %n.vec604, 2
  %i.nm = getelementptr i8, ptr %i.kb, i64 %i.nl  ; 2 uses
  %invariant.gep763 = getelementptr [4 x i8], ptr %.sroa.12.4.ph, i64 %i.nc
  br label %vector.body605

vector.body605:                                   ; preds = %vector.body605, %vector.ph603
  %index606 = phi i64 [ 0, %vector.ph603 ], [ %index.next610, %vector.body605 ] ; 3 uses
  %i.nn = shl i64 %index606, 2
  %next.gep607 = getelementptr i8, ptr %i.kb, i64 %i.nn ; 2 uses
  %i.no = getelementptr i8, ptr %next.gep607, i64 16
  %wide.load608 = load <4 x i32>, ptr %next.gep607, align 1, !tbaa !242
  %wide.load609 = load <4 x i32>, ptr %i.no, align 1, !tbaa !242
  %i.np = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load608)
  %i.nq = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load609)
  %gep764 = getelementptr [4 x i8], ptr %invariant.gep763, i64 %index606 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %gep764, i64 16
  store <4 x i32> %i.np, ptr %gep764, align 4, !tbaa !206
  store <4 x i32> %i.nq, ptr %i.nr, align 4, !tbaa !206
  %index.next610 = add nuw i64 %index606, 8       ; 2 uses
  %i.ns = icmp eq i64 %index.next610, %n.vec604
  br i1 %i.ns, label %middle.block611, label %vector.body605, !llvm.loop !3170

middle.block611:                                  ; preds = %vector.body605
  %cmp.n612 = icmp eq i64 %i.ng, %n.vec604
  br i1 %cmp.n612, label %..loopexit294_crit_edge, label %scalar.ph601.preheader

scalar.ph601.preheader:                           ; preds = %vector.memcheck, %.lr.ph360, %middle.block611
  %indvars.iv442.ph = phi i64 [ %i.nc, %vector.memcheck ], [ %i.nc, %.lr.ph360 ], [ %i.nk, %middle.block611 ]
  %.ph677 = phi ptr [ %i.kb, %vector.memcheck ], [ %i.kb, %.lr.ph360 ], [ %i.nm, %middle.block611 ]
  br label %scalar.ph601

scalar.ph601:                                     ; preds = %scalar.ph601.preheader, %scalar.ph601
  %indvars.iv442 = phi i64 [ %indvars.iv.next443, %scalar.ph601 ], [ %indvars.iv442.ph, %scalar.ph601.preheader ] ; 2 uses
  %i.nt = phi ptr [ %i.nx, %scalar.ph601 ], [ %.ph677, %scalar.ph601.preheader ] ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 1, !tbaa !242
  %i.nv = call noundef i32 @llvm.bswap.i32(i32 %i.nu)
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %indvars.iv442
  store i32 %i.nv, ptr %i.nw, align 4, !tbaa !206
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 4 ; 2 uses
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 3 uses
  %i.ny = icmp samesign ult i64 %indvars.iv.next443, %i.nd
  br i1 %i.ny, label %scalar.ph601, label %..loopexit294_crit_edge, !llvm.loop !3171

bb.am:                                            ; preds = %bb.ah
  %i.nz = zext nneg i32 %i.kg to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.nz
  %i.ob = icmp ugt ptr %i.oa, %i.cj
  br i1 %i.ob, label %.critedge, label %bb.an, !prof !103

bb.an:                                            ; preds = %bb.am
  %i.oc = icmp samesign ugt i32 %i.kf, 2
  br i1 %i.oc, label %.lr.ph350, label %.lr.ph355

.lr.ph350:                                        ; preds = %bb.an
  %i.od = add nuw i32 %.0101.i53374, 3
  br label %bb.ao

.preheader295:                                    ; preds = %bb.ao
  store ptr %i.pm, ptr %i.a, align 8, !tbaa !796
  %i.oe = icmp ult i32 %i.pr, %i.kh
  br i1 %i.oe, label %.lr.ph355, label %.loopexit

.lr.ph355:                                        ; preds = %bb.an, %.preheader295
  %.4.i55.lcssa523 = phi i32 [ %i.pr, %.preheader295 ], [ %.0101.i53374, %bb.an ]
  %.promoted357522 = phi ptr [ %i.pm, %.preheader295 ], [ %i.kb, %bb.an ] ; 3 uses
  %i.of = zext i32 %.4.i55.lcssa523 to i64        ; 4 uses
  %wide.trip.count440 = zext nneg i32 %i.kh to i64
  %i.og = zext nneg i32 %.0101.i53374 to i64
  %i.oh = and i8 %i.kd, 63
  %i.oi = zext nneg i8 %i.oh to i64
  %i.oj = add nuw nsw i64 %i.og, %i.oi
  %i.ok = add nuw nsw i64 %i.oj, 1
  %i.ol = sub nsw i64 %i.ok, %i.of                ; 3 uses
  %min.iters.check616 = icmp ult i64 %i.ol, 8
  br i1 %min.iters.check616, label %scalar.ph615.preheader, label %vector.ph617

vector.ph617:                                     ; preds = %.lr.ph355
  %n.vec618 = and i64 %i.ol, -8                   ; 4 uses
  %i.om = add nsw i64 %n.vec618, %i.of
  %i.on = getelementptr i8, ptr %.promoted357522, i64 %n.vec618 ; 2 uses
  %invariant.gep761 = getelementptr [4 x i8], ptr %.sroa.12.4.ph, i64 %i.of
  br label %vector.body619

vector.body619:                                   ; preds = %vector.body619, %vector.ph617
  %index620 = phi i64 [ 0, %vector.ph617 ], [ %index.next624, %vector.body619 ] ; 3 uses
  %next.gep621 = getelementptr i8, ptr %.promoted357522, i64 %index620 ; 2 uses
  %i.oo = getelementptr i8, ptr %next.gep621, i64 4
  %wide.load622 = load <4 x i8>, ptr %next.gep621, align 1, !tbaa !477
  %wide.load623 = load <4 x i8>, ptr %i.oo, align 1, !tbaa !477
  %i.op = sext <4 x i8> %wide.load622 to <4 x i32>
  %i.oq = sext <4 x i8> %wide.load623 to <4 x i32>
  %gep762 = getelementptr [4 x i8], ptr %invariant.gep761, i64 %index620 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %gep762, i64 16
  store <4 x i32> %i.op, ptr %gep762, align 4, !tbaa !206
  store <4 x i32> %i.oq, ptr %i.or, align 4, !tbaa !206
  %index.next624 = add nuw i64 %index620, 8       ; 2 uses
  %i.os = icmp eq i64 %index.next624, %n.vec618
  br i1 %i.os, label %middle.block625, label %vector.body619, !llvm.loop !3172

middle.block625:                                  ; preds = %vector.body619
  %cmp.n626 = icmp eq i64 %i.ol, %n.vec618
  br i1 %cmp.n626, label %..loopexit296_crit_edge, label %scalar.ph615.preheader

scalar.ph615.preheader:                           ; preds = %.lr.ph355, %middle.block625
  %indvars.iv437.ph = phi i64 [ %i.of, %.lr.ph355 ], [ %i.om, %middle.block625 ]
  %.ph678 = phi ptr [ %.promoted357522, %.lr.ph355 ], [ %i.on, %middle.block625 ]
  br label %scalar.ph615

bb.ao:                                            ; preds = %.lr.ph350, %bb.ao
  %i.ot = phi ptr [ %i.kb, %.lr.ph350 ], [ %i.pm, %bb.ao ] ; 5 uses
  %i.ou = phi i32 [ %i.od, %.lr.ph350 ], [ %i.ps, %bb.ao ]
  %.4.i55349 = phi i32 [ %.0101.i53374, %.lr.ph350 ], [ %i.pr, %bb.ao ] ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  %i.ow = load i8, ptr %i.ot, align 1, !tbaa !477
  %i.ox = sext i8 %i.ow to i32
  %i.oy = zext i32 %.4.i55349 to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.oy
  store i32 %i.ox, ptr %i.oz, align 4, !tbaa !206
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 2
  %i.pb = load i8, ptr %i.ov, align 1, !tbaa !477
  %i.pc = sext i8 %i.pb to i32
  %i.pd = add i32 %.4.i55349, 1
  %i.pe = zext i32 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.pe
  store i32 %i.pc, ptr %i.pf, align 4, !tbaa !206
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ot, i64 3
  %i.ph = load i8, ptr %i.pa, align 1, !tbaa !477
  %i.pi = sext i8 %i.ph to i32
  %i.pj = add i32 %.4.i55349, 2
  %i.pk = zext i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.pk
  store i32 %i.pi, ptr %i.pl, align 4, !tbaa !206
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ot, i64 4 ; 4 uses
  %i.pn = load i8, ptr %i.pg, align 1, !tbaa !477
  %i.po = sext i8 %i.pn to i32
  %i.pp = zext i32 %i.ou to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.pp
  store i32 %i.po, ptr %i.pq, align 4, !tbaa !206
  %i.pr = add i32 %.4.i55349, 4                   ; 4 uses
  %i.ps = add i32 %.4.i55349, 7                   ; 2 uses
  %i.pt = icmp ult i32 %i.ps, %i.kh
  br i1 %i.pt, label %bb.ao, label %.preheader295, !llvm.loop !3162

scalar.ph615:                                     ; preds = %scalar.ph615.preheader, %scalar.ph615
  %indvars.iv437 = phi i64 [ %indvars.iv.next438, %scalar.ph615 ], [ %indvars.iv437.ph, %scalar.ph615.preheader ] ; 2 uses
  %i.pu = phi ptr [ %i.pv, %scalar.ph615 ], [ %.ph678, %scalar.ph615.preheader ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 1 ; 2 uses
  %i.pw = load i8, ptr %i.pu, align 1, !tbaa !477
  %i.px = sext i8 %i.pw to i32
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %indvars.iv437
  store i32 %i.px, ptr %i.py, align 4, !tbaa !206
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %exitcond441.not = icmp eq i64 %indvars.iv.next438, %wide.trip.count440
  br i1 %exitcond441.not, label %..loopexit296_crit_edge, label %scalar.ph615, !llvm.loop !3173

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %.lcssa576 = phi ptr [ %i.le, %middle.block ], [ %i.mx, %scalar.ph ] ; 2 uses
  store ptr %.lcssa576, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit

..loopexit294_crit_edge:                          ; preds = %scalar.ph601, %middle.block611
  %.lcssa573 = phi ptr [ %i.nm, %middle.block611 ], [ %i.nx, %scalar.ph601 ] ; 2 uses
  %indvars.iv.next443.lcssa = phi i64 [ %i.nk, %middle.block611 ], [ %indvars.iv.next443, %scalar.ph601 ]
  %i.pz = trunc nuw i64 %indvars.iv.next443.lcssa to i32
  store ptr %.lcssa573, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit

..loopexit296_crit_edge:                          ; preds = %scalar.ph615, %middle.block625
  %.lcssa572 = phi ptr [ %i.on, %middle.block625 ], [ %i.pv, %scalar.ph615 ] ; 2 uses
  store ptr %.lcssa572, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader295, %..loopexit296_crit_edge, %..loopexit294_crit_edge, %.preheader, %..loopexit_crit_edge, %_ZL9hb_memsetPvij.exit69
  %i.qa = phi ptr [ %.pre460, %_ZL9hb_memsetPvij.exit69 ], [ %i.mo, %.preheader ], [ %i.pm, %.preheader295 ], [ %.lcssa576, %..loopexit_crit_edge ], [ %.lcssa573, %..loopexit294_crit_edge ], [ %.lcssa572, %..loopexit296_crit_edge ]
  %.9.i57 = phi i32 [ %i.kh, %_ZL9hb_memsetPvij.exit69 ], [ %i.mp, %.preheader ], [ %i.pr, %.preheader295 ], [ %i.kh, %..loopexit_crit_edge ], [ %i.pz, %..loopexit294_crit_edge ], [ %i.kh, %..loopexit296_crit_edge ] ; 2 uses
  %i.qb = icmp ult i32 %.9.i57, %.
  br i1 %i.qb, label %.lr.ph375, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit64, !llvm.loop !3164

_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit64: ; preds = %.loopexit, %bb.af, %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit ], [ %.sroa.0.4.ph, %bb.af ], [ %.sroa.0.4.ph, %.loopexit ]
  %.sroa.7.1 = phi i32 [ %.sroa.7.0, %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit ], [ 0, %bb.af ], [ %., %.loopexit ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit ], [ %.sroa.12.4.ph, %bb.af ], [ %.sroa.12.4.ph, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store atomic i32 1, ptr %12 monotonic, align 8
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  store i8 1, ptr %i.r, align 8, !tbaa !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.s, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.t, i8 0, i64 120, i1 false)
  %i.qc = load i8, ptr %i.k, align 8, !range !201
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.ap, label %_ZN12hb_hashmap_tIj6TripleLb0EEaSEOS1_.exit, !prof !207

bb.ap:                                            ; preds = %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit64
end_hunk_0
