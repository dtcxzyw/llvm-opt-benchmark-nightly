Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-serialize?download=true
inline.NumInlined: 5839
inline.NumDeleted: 2553
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5graph7graph_tC2I11hb_vector_tIPK28hb_subset_serialize_object_tLb0EEEERKT_:bb.a
  br i1 %.not.i39, label %.preheader.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, !prof !11

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.039.i = phi i32 [ %i.t, %.preheader.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = lshr i32 %.039.i, 1
  %i.s = add i32 %.039.i, 8
  %i.t = add i32 %i.s, %i.r                       ; 6 uses
  %i.u = icmp ugt i32 %i.o, %i.t
  br i1 %i.u, label %.preheader.i, label %.thread.i, !llvm.loop !71

.thread.i:                                        ; preds = %.preheader.i
  %i.v = icmp ugt i32 %i.t, 19884107
  br i1 %i.v, label %.critedge.i40, label %bb.e, !prof !11

.critedge.i40:                                    ; preds = %.thread.i
  %i.w = xor i32 %i.p, -1
  br label %.sink.split.i

bb.e:                                             ; preds = %.thread.i
  %i.x = tail call noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.t) ; 2 uses
  %.not22.i = icmp eq ptr %i.x, null
  br i1 %.not22.i, label %bb.f, label %bb.h, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %0, align 8, !tbaa !70     ; 2 uses
  %.not23.i = icmp ugt i32 %i.t, %i.y
  br i1 %.not23.i, label %bb.g, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exitthread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.z = xor i32 %i.y, -1
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !72
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g, %.critedge.i40
  %.sink.i = phi i32 [ %i.z, %bb.g ], [ %i.t, %bb.h ], [ %i.w, %.critedge.i40 ]
  store i32 %.sink.i, ptr %0, align 8, !tbaa !70
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exitthread-pre-split

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exitthread-pre-split: ; preds = %.sink.split.i, %bb.f
  %.pr = load i32, ptr %i.f, align 4, !tbaa !19
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exitthread-pre-split, %_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit
  %i.ab = phi i32 [ %.pr, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exitthread-pre-split ], [ %i.o, %_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit ] ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, !prof !73

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread: ; preds = %bb.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit
  %i.ad = phi i32 [ %i.ab, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit ], [ %i.o, %bb.d ] ; 4 uses
  %i.ae = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.ad, i1 noundef zeroext false)
  br i1 %i.ae, label %bb.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

bb.i:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39 ; 3 uses
  %i.ah = icmp ugt i32 %i.ad, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = sub nuw nsw i32 %i.ad, %i.ag
  %i.aj = shl i32 %i.ai, 2                        ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.am = zext nneg i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = zext i32 %i.aj to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 0, i64 %i.ao, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !39
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !19
  %i.aq = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.ap, i1 noundef zeroext false) ; 0 uses
  %i.ar = load i32, ptr %i.f, align 4, !tbaa !19  ; 4 uses
  %.not82 = icmp eq i32 %i.ar, 0
  br i1 %.not82, label %.loopexit77, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.bc = load i32, ptr @_hb_NullPool, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %wide.trip.count = zext i32 %i.ar to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %.081 = phi i1 [ false, %.lr.ph ], [ %.1, %.loopexit ] ; 2 uses
  %.03279 = phi i32 [ 0, %.lr.ph ], [ %.133, %.loopexit ] ; 4 uses
  %.03478 = phi i32 [ %i.ar, %.lr.ph ], [ %.135, %.loopexit ] ; 2 uses
  %i.be = icmp eq i64 %indvars.iv, 0
  br i1 %i.be, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !13
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !20
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bh = add i32 %.03478, -1
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !19
  %i.bj = add i32 %i.bi, -1                       ; 5 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit44, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bl = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.bj, i1 noundef zeroext false)
  br i1 %i.bl, label %bb.p, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit44

bb.p:                                             ; preds = %bb.o
  %i.bm = load i32, ptr %i.bb, align 4, !tbaa !39 ; 3 uses
  %i.bn = icmp ugt i32 %i.bj, %i.bm
  br i1 %i.bn, label %bb.q, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i42

bb.q:                                             ; preds = %bb.p
  %i.bo = sub nuw nsw i32 %i.bj, %i.bm
  %i.bp = shl i32 %i.bo, 2                        ; 2 uses
  %.not.i.i.i.i43 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i43, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i42, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !69
  %i.br = zext nneg i32 %i.bm to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = zext i32 %i.bp to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bs, i8 0, i64 %i.bt, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i42

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i42: ; preds = %bb.r, %bb.q, %bb.p
  store i32 %i.bj, ptr %i.bb, align 4, !tbaa !39
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit44

_ZN11hb_vector_tIjLb0EE6resizeEi.exit44:          ; preds = %bb.n, %bb.o, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i42
  %i.bu = add i32 %.03279, 1
  br label %.loopexit

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.bv = load i32, ptr %i.at, align 4, !tbaa !41
  %i.bw = add i32 %i.bv, 1
  %i.bx = call noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bw, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.bx, label %bb.u, label %bb.t, !prof !8

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit

bb.u:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.bz = load i32, ptr %i.at, align 4, !tbaa !41
  %i.ca = add i32 %i.bz, -1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [216 x i8], ptr %i.by, i64 %i.cb
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit: ; preds = %bb.t, %bb.u
  %.0.i45 = phi ptr [ @_hb_CrapPool, %bb.t ], [ %i.cc, %bb.u ] ; 12 uses
  %i.cd = load i32, ptr %0, align 8, !tbaa !70
  %i.ce = icmp slt i32 %i.cd, 0
  %i.cf = load i8, ptr %i.d, align 1, !tbaa !28, !range !37, !noundef !38
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  %brmerge.i.not = and i1 %i.ce, %i.cg
  br i1 %brmerge.i.not, label %_ZN5graph7graph_t13check_successEb.exit47.thread, label %_ZN5graph7graph_t13check_successEb.exit47

_ZN5graph7graph_t13check_successEb.exit47.thread: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit
  store i8 0, ptr %i.d, align 1, !tbaa !28
  br label %bb.y

_ZN5graph7graph_t13check_successEb.exit47:        ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE4pushEv.exit
  br i1 %i.cg, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZN5graph7graph_t13check_successEb.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ch = load ptr, ptr %i.as, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !20
  call void @_ZN22hb_serialize_context_t8object_tC2ERK28hb_subset_serialize_object_t(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.cj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i45, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 16, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i45, i64 16 ; 3 uses
  %i.cl = load i32, ptr %i.av, align 8, !tbaa !40
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i45, i64 20
  %i.cn = load <2 x i32>, ptr %i.ck, align 4, !tbaa !40
  %i.co = load i32, ptr %i.ck, align 4, !tbaa !40
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !40
  %i.cp = load i32, ptr %i.aw, align 4, !tbaa !40
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !40
  store <2 x i32> %i.cn, ptr %i.av, align 8, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i45, i64 24 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !74
  %i.cs = load ptr, ptr %i.ax, align 8, !tbaa !74
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !74
  store ptr %i.cr, ptr %i.ax, align 8, !tbaa !74
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i45, i64 32 ; 3 uses
  %i.cu = load i32, ptr %i.ay, align 8, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i45, i64 36
  %i.cw = load <2 x i32>, ptr %i.ct, align 8, !tbaa !40
  %i.cx = load i32, ptr %i.ct, align 8, !tbaa !40
  store i32 %i.cu, ptr %i.ct, align 8, !tbaa !40
  %i.cy = load i32, ptr %i.az, align 4, !tbaa !40
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !40
  store <2 x i32> %i.cw, ptr %i.ay, align 8, !tbaa !40
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i45, i64 40 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !74 ; 2 uses
  %i.db = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !75
  store <2 x ptr> %i.db, ptr %i.cz, align 8, !tbaa !75
  store ptr %i.da, ptr %i.ba, align 8, !tbaa !74
  %i.dc = add i32 %i.cx, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.dc, -2
  br i1 %spec.select.i.i.i.i, label %bb.w, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.az, align 4, !tbaa !76
  call void @hb_free(ptr noundef %i.da) #15
  %.pre83 = load i32, ptr %i.av, align 8, !tbaa !77
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i: ; preds = %bb.w, %bb.v
  %i.dd = phi i32 [ %.pre83, %bb.w ], [ %i.co, %bb.v ]
  %i.de = add i32 %i.dd, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.de, -2
  br i1 %spec.select.i.i.i1.i, label %bb.x, label %_ZN22hb_serialize_context_t8object_tD2Ev.exit

bb.x:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i
  store i32 0, ptr %i.aw, align 4, !tbaa !76
  %i.df = load ptr, ptr %i.ax, align 8, !tbaa !78
  call void @hb_free(ptr noundef %i.df) #15
  br label %_ZN22hb_serialize_context_t8object_tD2Ev.exit

_ZN22hb_serialize_context_t8object_tD2Ev.exit:    ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.y

bb.y:                                             ; preds = %_ZN5graph7graph_t13check_successEb.exit47.thread, %_ZN22hb_serialize_context_t8object_tD2Ev.exit, %_ZN5graph7graph_t13check_successEb.exit47
  %i.dg = call noundef zeroext i1 @_ZN5graph7graph_t8vertex_t20link_positions_validEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i45, i32 noundef %i.ar, i1 noundef zeroext %.081)
  %i.dh = load i8, ptr %i.d, align 1, !tbaa !28, !range !37, !noundef !38
  %i.di = trunc nuw i8 %i.dh to i1
  %.not.i48 = xor i1 %i.di, true
  %brmerge.i49 = or i1 %i.dg, %.not.i48
  br i1 %brmerge.i49, label %_ZN5graph7graph_t13check_successEb.exit50, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.d, align 1, !tbaa !28
  br label %_ZN5graph7graph_t13check_successEb.exit50

_ZN5graph7graph_t13check_successEb.exit50:        ; preds = %bb.y, %bb.z
  %i.dj = trunc nuw i64 %indvars.iv to i32
  %i.dk = sub i32 %i.dj, %.03279
  %i.dl = add i32 %.03478, -1                     ; 4 uses
  %i.dm = load i32, ptr %i.bb, align 4, !tbaa !39
  %.not.i51 = icmp ult i32 %i.dl, %i.dm
  br i1 %.not.i51, label %bb.ab, label %bb.aa, !prof !8

bb.aa:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit50
  store i32 %i.bc, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.ab:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit50
  %i.dn = load ptr, ptr %i.bd, align 8, !tbaa !69
  %i.do = zext i32 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.do
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.aa, %bb.ab
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.dp, %bb.ab ]
  store i32 %i.dk, ptr %.0.i52, align 4, !tbaa !40
  br i1 %.081, label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit, label %.loopexit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit: ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i45, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !78, !noalias !79 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i45, i64 20
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !76, !noalias !79 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.dt to i64
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i45, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !78, !noalias !79 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i45, i64 36
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !76, !noalias !79 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i5.i = zext i32 %i.dx to i64
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dr, i64 %.sroa.2.8.insert.ext.i.i.i.i
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %.sroa.2.8.insert.ext.i.i.i5.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit, %bb.ac
  %.sroa.17.0.ph.ph = phi i32 [ %i.dx, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit ], [ %i.eo, %bb.ac ]
  %.sroa.13.0.ph.ph = phi ptr [ %i.dv, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit ], [ %i.ep, %bb.ac ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %i.dt, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit ], [ 0, %bb.ac ]
  %.sroa.056.0.ph.ph = phi ptr [ %i.dr, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit ], [ %.sroa.056.0, %bb.ac ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.dz
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer, %.thread
  %.sroa.17.0.ph = phi i32 [ 0, %.thread ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %.thread ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer ]
  %.sroa.056.0.ph = phi ptr [ %.sroa.056.0, %.thread ], [ %.sroa.056.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer ]
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i
  %.sroa.7.0 = phi i32 [ %i.ej, %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer ] ; 3 uses
  %.sroa.056.0 = phi ptr [ %i.ek, %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i ], [ %.sroa.056.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer ] ; 5 uses
  %.not.i.i = icmp ne ptr %.sroa.056.0, %i.dy
  %i.ea = icmp ne i32 %.sroa.7.0, 0
  %i.eb = select i1 %.not.i.i, i1 true, i1 %i.ea
  br i1 %i.eb, label %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread, label %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit
  %i.ec = icmp ne i32 %.sroa.17.0.ph, 0
  %i.ed = select i1 %.not.i3.i, i1 true, i1 %i.ec
  br i1 %i.ed, label %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit
  %.not.i.i53 = icmp eq i32 %.sroa.7.0, 0
  br i1 %.not.i.i53, label %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread, label %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit
  %.not.i.i.i.i54 = icmp eq i32 %.sroa.17.0.ph, 0
  br i1 %.not.i.i.i.i54, label %.thread, label %bb.ac, !prof !11

.thread:                                          ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 8), align 8, !tbaa !82
  %i.ef = add i32 %i.ee, -1
  store i32 %i.ef, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 8), align 8, !tbaa !82
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer

_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.056.0, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !82
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !82
  %i.ej = add i32 %.sroa.7.0, -1
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.056.0, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit

bb.ac:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.ph, i64 8 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !82
  %i.en = add i32 %i.em, -1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !82
  %i.eo = add i32 %.sroa.17.0.ph, -1
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.ph, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer

.loopexit:                                        ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit, %_ZN11hb_vector_tIjLb0EEixEi.exit, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit44
  %.135 = phi i32 [ %i.bh, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit44 ], [ %i.dl, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %i.dl, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit ]
  %.133 = phi i32 [ %i.bu, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit44 ], [ %.03279, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.03279, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit ]
  %.1 = phi i1 [ true, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit44 ], [ false, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ true, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit77, label %bb.l, !llvm.loop !84

.loopexit77:                                      ; preds = %.loopexit, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, %_ZN5graph7graph_t13check_successEb.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z26hb_resolve_graph_overflowsjjbRN5graph7graph_tE(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(88) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.hb_set_t, align 8           ; 19 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %5 = alloca %struct.hb_set_t, align 8           ; 18 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %6 = alloca %class.anon, align 8                ; 7 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %7 = alloca %class.anon, align 8                ; 7 uses
  %8 = alloca %struct.lookup_size_t, align 8      ; 4 uses
  %9 = alloca %struct.hb_set_t, align 8           ; 11 uses
  %10 = alloca %struct.hb_set_t, align 8          ; 11 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  %11 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 3 uses
  %12 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %13 = alloca %struct.hb_set_t, align 8          ; 13 uses
  %14 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 7 uses
  %15 = alloca %"struct.graph::gsubgpos_graph_context_t", align 8 ; 16 uses
  %16 = alloca %struct.hb_vector_t.51, align 8    ; 9 uses
  %17 = alloca %struct.hb_set_t, align 8          ; 16 uses
  tail call void @_ZN5graph7graph_t22sort_shortest_distanceEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
end_hunk_0
begin_hunk_1_@_ZN22hb_serialize_context_t8object_tC2ERK28hb_subset_serialize_object_t:bb.a
  br i1 %i.bp, label %bb.e, label %._crit_edge25, !llvm.loop !295
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph7graph_t8vertex_t20link_positions_validEjb(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.hb_set_t, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store atomic i32 1, ptr %3 monotonic, align 8
  store atomic i8 1, ptr %i.d monotonic, align 4
  store atomic ptr null, ptr %i.e monotonic, align 8
  store i8 1, ptr %i.f, align 8, !tbaa !101
  store i32 0, ptr %i.g, align 4, !tbaa !102
  store atomic i32 0, ptr %i.h monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.i, i8 0, i64 33, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !76   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = mul nuw nsw i64 %i.n, 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not37 = icmp eq i32 %i.m, 0
  br i1 %.not37, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit
  %.02638 = phi ptr [ %i.k, %.lr.ph ], [ %i.ay, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02638, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82   ; 2 uses
  %.not32 = icmp uge i32 %i.s, %1
  %.not33 = icmp eq i32 %i.s, 0
  %or.cond = and i1 %2, %.not33
  %or.cond36 = or i1 %.not32, %or.cond
  br i1 %or.cond36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.02638, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !291  ; 5 uses
  %i.v = load i32, ptr %.02638, align 4
  %i.w = and i32 %i.v, 7                          ; 2 uses
  %i.x = add i32 %i.u, -1                         ; 6 uses
  %i.y = add i32 %i.x, %i.w                       ; 4 uses
  %i.z = add nsw i32 %i.w, -5
  %spec.select = icmp ult i32 %i.z, -3
  br i1 %spec.select, label %.critedge, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.aa = zext i32 %i.y to i64
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !143
  %i.ac = load ptr, ptr %0, align 8, !tbaa !144
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not34 = icmp ugt i64 %i.af, %i.aa
  br i1 %.not34, label %bb.e, label %.critedge, !prof !8

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 %i.x, ptr %i.c, align 4, !tbaa !40
  %i.ag = load i8, ptr %i.q, align 8, !tbaa !104, !range !37, !noundef !38
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.c)
  %.pre.i.i = load i32, ptr %i.c, align 4
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 %i.x, ptr %i.a, align 4, !tbaa !40
  %i.aj = icmp eq i32 %i.x, -2
  br i1 %i.aj, label %bb.k, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.x, ptr %i.b, align 4, !tbaa !40
  %i.ak = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.b) ; 0 uses
  %i.al = load i32, ptr %i.b, align 4, !tbaa !40
  %i.am = icmp ult i32 %i.u, %i.al
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.x, ptr %i.b, align 4, !tbaa !40
  %i.an = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !40
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
  br i1 %i.au, label %.critedge, label %bb.l, !prof !11

bb.l:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10intersectsEjj.exit
  %i.av = load i8, ptr %i.q, align 8, !tbaa !104, !range !37, !noundef !38
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %bb.n, !prof !11

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
  %.pre = load i8, ptr %i.f, align 8, !tbaa !101, !range !37
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
  %i.a = load i32, ptr %0, align 8, !tbaa !70
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 216
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #15 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.k, label %.preheader, !prof !11

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !41
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !70
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
  store i32 -1, ptr %i.n, align 4, !tbaa !171
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store atomic i32 1, ptr %i.o monotonic, align 4
  store atomic i8 1, ptr %i.p monotonic, align 4
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i8 1, ptr %i.r, align 8, !tbaa !296
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 114 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !176
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
  store i8 1, ptr %i.x, align 8, !tbaa !101
  store i32 0, ptr %i.y, align 4, !tbaa !102
  store atomic i32 0, ptr %i.z monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aa, i8 0, i64 33, i1 false)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw [216 x i8], ptr %i.ab, i64 %indvars.iv ; 17 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, ptr noundef nonnull align 8 dereferenceable(216) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !40
  store i32 0, ptr %i.ad, align 4, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !40
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !40
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !74
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !74
  store ptr null, ptr %i.ak, align 8, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !40
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !40
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !40
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !40
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !40
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !40
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !74
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !75
  store <2 x ptr> %i.ax, ptr %i.au, align 8, !tbaa !75
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !74
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.m, ptr noundef nonnull align 8 dereferenceable(33) %i.ay, i64 33, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ba = load i8, ptr %i.az, align 8, !range !37
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 114 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !297
  store i16 %i.bd, ptr %i.s, align 2, !tbaa !297
  store i16 0, ptr %i.bc, align 2, !tbaa !297
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 116 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 116 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !40
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !40
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !40
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !40
  %i.bl = load i32, ptr %i.bj, align 8, !tbaa !40
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !40
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 124 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 124 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !40
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !40
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !40
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 8, !tbaa !40
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !40
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !40
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !298
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !298
  store ptr null, ptr %i.bu, align 8, !tbaa !298
  br label %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i

_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i:          ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !range !37
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.f, label %_ZN5graph7graph_t8vertex_taSEOS1_.exit, !prof !11

bb.f:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !299, !range !37, !noundef !38
  store i8 %i.cb, ptr %i.bz, align 8, !tbaa !299
  store i8 0, ptr %i.ca, align 8, !tbaa !299
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.x, ptr noundef nonnull align 8 dereferenceable(49) %i.bw)
  br label %_ZN5graph7graph_t8vertex_taSEOS1_.exit

_ZN5graph7graph_t8vertex_taSEOS1_.exit:           ; preds = %_ZN12hb_hashmap_tIjjLb0EEaSEOS0_.exit.i, %bb.f
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !72
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
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.cl) #15
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.h, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !77
  %i.co = add i32 %i.cn, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.co, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.i:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  store i32 0, ptr %i.cp, align 4, !tbaa !76
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78
  tail call void @hb_free(ptr noundef %i.cr) #15
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.i, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !77
  %i.cu = add i32 %i.ct, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.cu, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.j, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  store i32 0, ptr %i.cv, align 4, !tbaa !76
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !78
  tail call void @hb_free(ptr noundef %i.cx) #15
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.f, align 4, !tbaa !41
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge, !llvm.loop !300

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !72
  tail call void @hb_free(ptr noundef %i.dc) #15
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !101, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !range !37
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 %i.d, i1 false
  br i1 %i.e, label %bb.b, label %_Z4swapR12hb_bit_set_tS0_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !40
  %i.i = load i32, ptr %i.g, align 4, !tbaa !40
  store i32 %i.i, ptr %i.f, align 4, !tbaa !40
  store i32 %i.h, ptr %i.g, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.j, align 8, !tbaa !40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40
  store i32 %i.l, ptr %i.j, align 8, !tbaa !40
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.k, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !40
  %i.p = load i32, ptr %i.n, align 8, !tbaa !40
  store i32 %i.p, ptr %i.m, align 8, !tbaa !40
  store i32 %i.o, ptr %i.n, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !40
  %i.t = load i32, ptr %i.r, align 4, !tbaa !40
  store i32 %i.t, ptr %i.q, align 4, !tbaa !40
  store i32 %i.s, ptr %i.r, align 4, !tbaa !40
end_hunk_1
begin_hunk_2_@_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !307
  tail call void @hb_free(ptr noundef %i.p) #15
  %.pre = load i32, ptr %i.e, align 8, !tbaa !303
  %i.q = add i32 %.pre, -1
  %i.r = icmp ult i32 %i.q, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %_ZN23hb_bit_set_invertible_tD2Ev.exit

bb.d:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !304
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !189
  tail call void @hb_free(ptr noundef %i.u) #15
  br label %_ZN23hb_bit_set_invertible_tD2Ev.exit

_ZN23hb_bit_set_invertible_tD2Ev.exit:            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE4finiEv.exit.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE4finiEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !308
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !312
  %i.d = add i32 %i.c, -1
  %spec.select.i.i = icmp ult i32 %i.d, -2
  br i1 %spec.select.i.i, label %bb.c, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !313
  tail call void @hb_free(ptr noundef %i.f) #15
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #15 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !308  ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !313
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !75
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !75 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !314, !noalias !315
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #15 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #15, !inline_history !318
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #15 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !308  ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !319

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !312
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !314
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !313
  tail call void @hb_free(ptr noundef %i.u) #15
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !70     ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread, !prof !11

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !71

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 19884107
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %bb.f, !prof !11

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !70     ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !70
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !72
  store i32 %.138.i, ptr %0, align 8, !tbaa !70
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41   ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.al, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [216 x i8], ptr %i.t, i64 %i.u ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.v, i8 0, i64 216, i1 false)
  store i32 -1, ptr %i.w, align 4, !tbaa !171
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store atomic i32 1, ptr %i.x monotonic, align 4
  store atomic i8 1, ptr %i.y monotonic, align 4
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i8 1, ptr %i.aa, align 8, !tbaa !296
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store ptr null, ptr %i.ac, align 8, !tbaa !176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ab, i8 0, i64 18, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 148
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  store atomic i32 1, ptr %i.ad monotonic, align 8
  store atomic i8 1, ptr %i.ae monotonic, align 4
  store atomic ptr null, ptr %i.af monotonic, align 8
  store i8 1, ptr %i.ag, align 8, !tbaa !101
  store i32 0, ptr %i.ah, align 4, !tbaa !102
  store atomic i32 0, ptr %i.ai monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aj, i8 0, i64 33, i1 false)
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !41
  %i.al = add i32 %i.ak, 1                        ; 3 uses
  store i32 %i.al, ptr %i.o, align 4, !tbaa !41
  %i.am = icmp ult i32 %i.al, %1
  br i1 %i.am, label %bb.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !320

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread
  %i.an = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.an
  br i1 %or.cond, label %bb.k, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !41
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread17: ; preds = %bb.b, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE5allocEjb.exit.thread20 ], [ true, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5graph7graph_t8vertex_tD2Ev.exit
  %.07 = phi ptr [ %i.i, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.g, %.lr.ph.preheader ] ; 11 uses
  %.046 = phi i32 [ %i.h, %_ZN5graph7graph_t8vertex_tD2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.h = add i32 %.046, -1                        ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -216
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -72
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.j) #15
  %i.k = getelementptr inbounds i8, ptr %.07, i64 -120
  store atomic i32 -57005, ptr %i.k monotonic, align 4
  %i.l = getelementptr inbounds i8, ptr %.07, i64 -112 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.m)
  %i.o = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.m) #15
  store atomic ptr null, ptr %i.l monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !176  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.q) #15
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i:             ; preds = %bb.c, %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.07, i64 -184
  %i.s = load i32, ptr %i.r, align 8, !tbaa !77
  %i.t = add i32 %i.s, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.t, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -180
  store i32 0, ptr %i.u, align 4, !tbaa !76
  %i.v = getelementptr inbounds i8, ptr %.07, i64 -176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  tail call void @hb_free(ptr noundef %i.w) #15
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit.i
  %i.x = getelementptr inbounds i8, ptr %.07, i64 -200
  %i.y = load i32, ptr %i.x, align 8, !tbaa !77
  %i.z = add i32 %i.y, -1
  %spec.select.i.i.i1.i.i = icmp ult i32 %i.z, -2
  br i1 %spec.select.i.i.i1.i.i, label %bb.e, label %_ZN5graph7graph_t8vertex_tD2Ev.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %.07, i64 -196
  store i32 0, ptr %i.aa, align 4, !tbaa !76
  %i.ab = getelementptr inbounds i8, ptr %.07, i64 -192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78
  tail call void @hb_free(ptr noundef %i.ac) #15
  br label %_ZN5graph7graph_t8vertex_tD2Ev.exit

_ZN5graph7graph_t8vertex_tD2Ev.exit:              ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit.i.i, %bb.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !321

._crit_edge:                                      ; preds = %_ZN5graph7graph_t8vertex_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !77     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !11

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !322

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !11

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  tail call void @hb_free(ptr noundef %i.m) #15
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 12
end_hunk_2
begin_hunk_3_@_ZN5graph7graph_t22sort_shortest_distanceEv:bb.a
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28, !range !37, !noundef !38
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !385

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  store i8 0, ptr %i.ae, align 1, !tbaa !28
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !217 ; 6 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread396.sink.split, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %.not.i92.not = icmp eq i32 %i.ah, 0
  br i1 %.not.i92.not, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread, label %.preheader.i94, !prof !8

.preheader.i94:                                   ; preds = %bb.g, %.preheader.i94
  %.043.i95 = phi i32 [ %i.al, %.preheader.i94 ], [ 0, %bb.g ] ; 2 uses
  %i.aj = lshr i32 %.043.i95, 1
  %i.ak = add nuw i32 %.043.i95, 8
  %i.al = add nuw i32 %i.ak, %i.aj                ; 6 uses
  %i.am = icmp ugt i32 %i.ah, %i.al
  br i1 %i.am, label %.preheader.i94, label %.thread.i96, !llvm.loop !255

.thread.i96:                                      ; preds = %.preheader.i94
  %i.an = icmp ugt i32 %i.al, 1073741823
  br i1 %i.an, label %.thread396.sink.split, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !11

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i96
  %i.ao = shl nuw i32 %i.al, 2
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #15 ; 4 uses
  %.not22.i99 = icmp eq ptr %i.aq, null
  br i1 %.not22.i99, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38, label %bb.h, !prof !12

bb.h:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.ar = shl i32 %i.ah, 2                        ; 2 uses
  %.not.i.i.i.i37 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i37, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.as = zext i32 %i.ar to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.as, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread

_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread:   ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.0189.0.ph = phi i32 [ 0, %bb.g ], [ %i.al, %bb.h ], [ %i.al, %bb.i ] ; 5 uses
  %.sroa.13196.0.ph = phi ptr [ null, %bb.g ], [ %i.aq, %bb.h ], [ %i.aq, %bb.i ] ; 7 uses
  %i.at = load i8, ptr %i.ab, align 1, !tbaa !28, !range !37, !noundef !38
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread396, !prof !264

_ZN11hb_vector_tIjLb0EE6resizeEi.exit38:          ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre472 = load i8, ptr %i.ab, align 1, !tbaa !28, !range !37
  %i.av = trunc nuw i8 %.pre472 to i1
  br i1 %i.av, label %.thread396.sink.split, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !375

bb.j:                                             ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread
  tail call void @_ZN5graph7graph_t14update_parentsEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !39
  %.not.i.not.i.i = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.0.i.i.i = select i1 %.not.i.not.i.i, ptr @_hb_NullPool, ptr %i.az, !prof !11
  %i.ba = load i32, ptr %.0.i.i.i, align 4, !tbaa !40 ; 3 uses
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.ba, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = zext i32 %i.ba to i64
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.bd, i64 %i.be
  %.0.i.i = select i1 %.not.i.i, ptr %i.bf, ptr @_hb_NullPool, !prof !8 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !386
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 76
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !207 ; 3 uses
  %.not.i.i42 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i42, label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !143
  %i.bm = load ptr, ptr %.0.i.i, align 8, !tbaa !144
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp eq i32 %i.bj, 1
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = sdiv i64 %i.bp, -2
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit

bb.m:                                             ; preds = %bb.k
  %i.bs = sub nsw i64 0, %i.bp
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit

_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.1.i.i43 = phi i64 [ 0, %bb.j ], [ %i.br, %bb.l ], [ %i.bs, %bb.m ]
  %i.bt = add nsw i64 %.1.i.i43, %i.bh
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.bt, i64 0)
  %i.bu = tail call i64 @llvm.umin.i64(i64 %.sroa.speculate.load.false.sroa.speculated.i, i64 8796093022207)
  %i.bv = icmp ugt i32 %i.bj, 2
  %i.bw = shl nuw nsw i64 %i.bu, 18
  %i.bx = select i1 %i.bv, i64 0, i64 %i.bw
  %.not.i45 = icmp sgt i32 %.sroa.0208.11296, 0
  br i1 %.not.i45, label %.lr.ph439, label %bb.n

bb.n:                                             ; preds = %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit
  %i.by = icmp slt i32 %.sroa.0208.11296, 0
  br i1 %i.by, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.thread.i113, !prof !11

.thread.i113:                                     ; preds = %bb.n
  %.not9.i.i.i125 = icmp eq ptr %.sroa.42.12298, null
  br i1 %.not9.i.i.i125, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, label %bb.o

bb.o:                                             ; preds = %.thread.i113
  %i.bz = tail call ptr @hb_malloc(i64 noundef 128) #15 ; 2 uses
  %.not10.i.i.i126 = icmp eq ptr %i.bz, null
  br i1 %.not10.i.i.i126, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !11

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116: ; preds = %.thread.i113
  %i.ca = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #15 ; 2 uses
  %.not22.i117 = icmp eq ptr %i.ca, null
  br i1 %.not22.i117, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !12

_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread: ; preds = %bb.n, %bb.o, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116
  %.sroa.42.14 = phi ptr [ %.sroa.42.12298, %bb.n ], [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %.sroa.42.12298, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %.critedge

.lr.ph439:                                        ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, %bb.o, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit
  %.sroa.0208.6 = phi i32 [ %.sroa.0208.11296, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ 8, %bb.o ]
  %.sroa.42.6 = phi ptr [ %.sroa.42.12298, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ %i.ca, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %i.bz, %bb.o ] ; 3 uses
  store i64 %i.bx, ptr %.sroa.42.6, align 8, !tbaa !134
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42.6, i64 8
  store i32 %i.ba, ptr %.sroa.4292.0..sroa_idx, align 8, !tbaa !40
  %i.cb = load i32, ptr @_hb_NullPool, align 16   ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.p

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %i.cd = icmp slt i32 %.sroa.0208.1, 0
  br i1 %i.cd, label %.critedge, label %bb.p, !llvm.loop !387

bb.p:                                             ; preds = %.lr.ph439, %.loopexit
  %.022438 = phi i32 [ 1, %.lr.ph439 ], [ %.1, %.loopexit ]
  %.023437 = phi i32 [ 0, %.lr.ph439 ], [ %i.dx, %.loopexit ] ; 6 uses
  %.sroa.42.0436 = phi ptr [ %.sroa.42.6, %.lr.ph439 ], [ %.sroa.42.1, %.loopexit ] ; 11 uses
  %.sroa.22.0435 = phi i32 [ 1, %.lr.ph439 ], [ %.sroa.22.1, %.loopexit ] ; 7 uses
  %.sroa.0208.0434 = phi i32 [ %.sroa.0208.6, %.lr.ph439 ], [ %.sroa.0208.1, %.loopexit ] ; 9 uses
  %i.ce = icmp eq i32 %.sroa.22.0435, 0
  br i1 %i.ce, label %_ZN5graph7graph_t13check_successEb.exit81, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.42.0436, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40 ; 3 uses
  %i.cf = add i32 %.sroa.22.0435, -1              ; 6 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.0436, i64 %i.cg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.42.0436, ptr noundef nonnull align 8 dereferenceable(12) %i.ch, i64 12, i1 false), !tbaa.struct !388
  %i.ci = icmp slt i32 %i.cf, 0
  br i1 %i.ci, label %.lr.ph428.preheader, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %.not.i130 = icmp samesign ugt i32 %i.cf, %.sroa.0208.0434
  br i1 %.not.i130, label %.preheader.i132, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !11

.preheader.i132:                                  ; preds = %bb.r, %.preheader.i132
  %.043.i133 = phi i32 [ %i.cl, %.preheader.i132 ], [ %.sroa.0208.0434, %bb.r ] ; 2 uses
  %i.cj = lshr i32 %.043.i133, 1
  %i.ck = add nuw i32 %.043.i133, 8
  %i.cl = add nuw i32 %i.ck, %i.cj                ; 6 uses
  %i.cm = icmp ugt i32 %i.cf, %i.cl
  br i1 %i.cm, label %.preheader.i132, label %.thread.i134, !llvm.loop !384

.thread.i134:                                     ; preds = %.preheader.i132
  %i.cn = icmp ugt i32 %i.cl, 268435455
  br i1 %i.cn, label %.critedge.i149, label %bb.s, !prof !11

.critedge.i149:                                   ; preds = %.thread.i134
  %i.co = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

bb.s:                                             ; preds = %.thread.i134
  %.not49.i136 = icmp eq i32 %.sroa.0208.0434, 0
  %i.cp = shl nuw i32 %i.cl, 4
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  br i1 %.not49.i136, label %bb.t, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137

bb.t:                                             ; preds = %bb.s
  %i.cr = tail call ptr @hb_malloc(i64 noundef %i.cq) #15 ; 3 uses
  %.not10.i.i.i147 = icmp eq ptr %i.cr, null
  br i1 %.not10.i.i.i147, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.cs = zext i32 %.sroa.22.0435 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull readonly align 1 %.sroa.42.0436, i64 %i.ct, i1 false), !alias.scope !389
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137: ; preds = %bb.s
  %i.cu = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.42.0436, i64 noundef %i.cq) #15 ; 2 uses
  %.not22.i138 = icmp eq ptr %i.cu, null
  br i1 %.not22.i138, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !12

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144: ; preds = %bb.t, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137
  %i.cv = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit: ; preds = %bb.u, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137, %bb.r
  %.sroa.0208.13.ph = phi i32 [ %i.cl, %bb.u ], [ %i.cl, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.0208.0434, %bb.r ] ; 2 uses
  %.sroa.42.16.ph = phi ptr [ %i.cr, %bb.u ], [ %i.cu, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.42.0436, %bb.r ] ; 2 uses
  %switch = icmp ult i32 %.sroa.22.0435, 3
  br i1 %switch, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, %.critedge.i149, %bb.q
  %.sroa.0208.8364518 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.cv, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %i.co, %.critedge.i149 ], [ %.sroa.0208.0434, %bb.q ] ; 3 uses
  %.sroa.22.5366517 = phi i32 [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.0435, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.22.0435, %.critedge.i149 ], [ %.sroa.22.0435, %bb.q ] ; 5 uses
  %.sroa.42.8368516 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.0436, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.42.0436, %.critedge.i149 ], [ %.sroa.42.0436, %bb.q ] ; 10 uses
  %.pre = load i64, ptr %.sroa.42.8368516, align 8, !tbaa !393 ; 3 uses
  br label %.lr.ph428

.lr.ph428:                                        ; preds = %.lr.ph428.preheader, %bb.y
  %i.cw = phi i32 [ %i.dr, %bb.y ], [ 2, %.lr.ph428.preheader ] ; 4 uses
  %i.cx = phi i32 [ %i.dq, %bb.y ], [ 1, %.lr.ph428.preheader ] ; 3 uses
  %.020.i427 = phi i32 [ %.0.i33, %bb.y ], [ 0, %.lr.ph428.preheader ]
  %i.cy = icmp ult i32 %i.cw, %.sroa.22.5366517   ; 2 uses
  %i.cz = zext i32 %.020.i427 to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.cz ; 2 uses
  %i.db = zext i32 %i.cx to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !393 ; 3 uses
  %.not.i32 = icmp sgt i64 %.pre, %i.dd
  br i1 %.not.i32, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph428
  br i1 %i.cy, label %bb.w, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.w:                                             ; preds = %bb.v
  %i.de = zext i32 %i.cw to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !393 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.dg
  br i1 %.not27.i, label %.thread370, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.x:                                             ; preds = %.lr.ph428
  br i1 %i.cy, label %..thread370_crit_edge, label %bb.y

..thread370_crit_edge:                            ; preds = %bb.x
  %.phi.trans.insert = zext i32 %i.cw to i64
  %.phi.trans.insert460 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.phi.trans.insert
  %.pre461 = load i64, ptr %.phi.trans.insert460, align 8, !tbaa !393
  br label %.thread370

.thread370:                                       ; preds = %..thread370_crit_edge, %bb.w
  %i.dh = phi i64 [ %.pre461, %..thread370_crit_edge ], [ %i.dg, %bb.w ]
  %i.di = icmp slt i64 %i.dd, %i.dh
  %spec.select.i = select i1 %i.di, i32 %i.cx, i32 %i.cw ; 2 uses
  %.pre462 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert463 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre462
  %.pre464 = load i64, ptr %.phi.trans.insert463, align 8, !tbaa !134
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread370
  %i.dj = phi i64 [ %i.dd, %bb.x ], [ %.pre464, %.thread370 ]
  %.pre-phi = phi i64 [ %i.db, %bb.x ], [ %.pre462, %.thread370 ]
  %.0.i33 = phi i32 [ %i.cx, %bb.x ], [ %spec.select.i, %.thread370 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre-phi ; 2 uses
  store i64 %i.dj, ptr %i.da, align 8, !tbaa !134
  store i64 %.pre, ptr %i.dk, align 8, !tbaa !134
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dl, align 8, !tbaa !40
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !40
  store i32 %i.do, ptr %i.dl, align 8, !tbaa !40
  store i32 %i.dn, ptr %i.dm, align 8, !tbaa !40
  %i.dp = shl i32 %.0.i33, 1                      ; 2 uses
  %i.dq = or disjoint i32 %i.dp, 1                ; 2 uses
  %i.dr = add nuw i32 %i.dp, 2
  %i.ds = icmp ult i32 %i.dq, %.sroa.22.5366517
  br i1 %i.ds, label %.lr.ph428, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.y, %bb.w, %bb.v, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.42.8369 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.8368516, %bb.v ], [ %.sroa.42.8368516, %bb.w ], [ %.sroa.42.8368516, %bb.y ] ; 3 uses
  %.sroa.22.5367 = phi i32 [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.5366517, %bb.v ], [ %.sroa.22.5366517, %bb.w ], [ %.sroa.22.5366517, %bb.y ]
  %.sroa.0208.8365 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0208.8364518, %bb.v ], [ %.sroa.0208.8364518, %bb.w ], [ %.sroa.0208.8364518, %bb.y ] ; 3 uses
  %i.dt = load i32, ptr %i.r, align 4, !tbaa !39  ; 2 uses
  %i.du = icmp uge i32 %.023437, %i.dt
  %i.dv = load i8, ptr %i.ab, align 1, !tbaa !28, !range !37, !noundef !38
  %i.dw = trunc nuw i8 %i.dv to i1                ; 2 uses
  %brmerge.i49.not = and i1 %i.du, %i.dw
  br i1 %brmerge.i49.not, label %.thread396.sink.split, label %_ZN5graph7graph_t13check_successEb.exit50, !prof !385

_ZN5graph7graph_t13check_successEb.exit50:        ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  br i1 %i.dw, label %bb.z, label %.thread396, !prof !264

bb.z:                                             ; preds = %_ZN5graph7graph_t13check_successEb.exit50
  %i.dx = add i32 %.023437, 1                     ; 2 uses
  %.not.i51 = icmp ult i32 %.023437, %i.dt
  br i1 %.not.i51, label %bb.ab, label %bb.aa, !prof !8

bb.aa:                                            ; preds = %bb.z
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.dy = load ptr, ptr %i.cc, align 8, !tbaa !69
  %i.dz = zext i32 %.023437 to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.aa, %bb.ab
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.ea, %bb.ab ]
  store i32 %.sroa.2.0.copyload.i, ptr %.0.i52, align 4, !tbaa !40
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.i53 = icmp ult i32 %.sroa.2.0.copyload.i, %i.eb
  br i1 %.not.i53, label %bb.ad, label %bb.ac, !prof !8

bb.ac:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.ec = load ptr, ptr %i.bc, align 8, !tbaa !72
  %i.ed = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ee = getelementptr inbounds nuw [216 x i8], ptr %i.ec, i64 %i.ed
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.ac, %bb.ad
  %.0.i54 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.ee, %bb.ad ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i54, i64 20
  %.val.i = load i32, ptr %i.ef, align 4, !tbaa !76, !noalias !395 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i54, i64 24
  %.val1.i = load ptr, ptr %i.eg, align 8, !tbaa !78, !noalias !395 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i54, i64 36
  %.val2.i = load i32, ptr %i.eh, align 4, !tbaa !76, !noalias !395 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i54, i64 40
  %.val3.i = load ptr, ptr %i.ei, align 8, !tbaa !78, !noalias !395 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i to i64
  %.sroa.2.8.insert.ext.i.i.i.i6.i.i = zext i32 %.val2.i to i64
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %.val1.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %.val3.i, i64 %.sroa.2.8.insert.ext.i.i.i.i6.i.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit, %bb.ay
  %.sroa.0208.1.ph.ph = phi i32 [ %.sroa.0208.8365, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0208.2, %bb.ay ]
  %.sroa.22.1.ph.ph = phi i32 [ %.sroa.22.5367, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.22.2, %bb.ay ]
  %.sroa.42.1.ph.ph = phi ptr [ %.sroa.42.8369, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.42.2, %bb.ay ]
  %.sroa.17.0.ph.ph = phi i32 [ %.val2.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.ho, %bb.ay ]
  %.sroa.13.0.ph.ph = phi ptr [ %.val3.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.hp, %bb.ay ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %.val.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ 0, %bb.ay ]
  %.sroa.0172.0.ph.ph = phi ptr [ %.val1.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0172.0, %bb.ay ]
  %.1.ph.ph = phi i32 [ %.022438, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.2, %bb.ay ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.ek
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer, %bb.ax
  %.sroa.0208.1.ph = phi i32 [ %.sroa.0208.2, %bb.ax ], [ %.sroa.0208.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.22.1.ph = phi i32 [ %.sroa.22.2, %bb.ax ], [ %.sroa.22.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.42.1.ph = phi ptr [ %.sroa.42.2, %bb.ax ], [ %.sroa.42.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.17.0.ph = phi i32 [ 0, %bb.ax ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %bb.ax ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.0172.0.ph = phi ptr [ %.sroa.0172.0, %bb.ax ], [ %.sroa.0172.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.1.ph = phi i32 [ %.2, %bb.ax ], [ %.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %i.el = icmp ne i32 %.sroa.17.0.ph, 0
  %i.em = select i1 %.not.i3.i, i1 true, i1 %i.el
  %.not.i.i.i.i58 = icmp eq i32 %.sroa.17.0.ph, 0 ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i58, ptr @_hb_NullPool, ptr %.sroa.13.0.ph.ph, !prof !11
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i
  %.sroa.0208.1 = phi i32 [ %.sroa.0208.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0208.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 16 uses
  %.sroa.22.1 = phi i32 [ %.sroa.22.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.22.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.42.1 = phi ptr [ %.sroa.42.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.42.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.7.0 = phi i32 [ %i.hm, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 3 uses
  %.sroa.0172.0 = phi ptr [ %i.hn, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0172.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 5 uses
  %.1 = phi i32 [ %.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 4 uses
  %.not.i.i55 = icmp ne ptr %.sroa.0172.0, %i.ej
  %i.en = icmp ne i32 %.sroa.7.0, 0
  %i.eo = select i1 %.not.i.i55, i1 true, i1 %i.en
  %brmerge = select i1 %i.eo, i1 true, i1 %i.em
  br i1 %brmerge, label %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %.not.i.i56 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  %.0.i.i57 = select i1 %.not.i.i56, ptr %spec.select.i.i.i.i, ptr %.sroa.0172.0
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i57, i64 8 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !82 ; 2 uses
  %.not.i59 = icmp ult i32 %i.eq, %i.ah
  br i1 %.not.i59, label %bb.af, label %bb.ae, !prof !8

bb.ae:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit61

bb.af:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13196.0.ph, i64 %i.er ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5graph7graph_t16update_distancesEv:bb.a
  %.0.i.i = select i1 %.not.i.not.i, ptr @_hb_NullPool, ptr %i.n, !prof !11
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !40 ; 2 uses
  %.not.i42 = icmp ult i32 %i.o, %i.e
  br i1 %.not.i42, label %.thread, label %bb.d, !prof !8

.thread:                                          ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [216 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 0, ptr %i.t, align 8, !tbaa !386
  br label %.preheader.i.preheader

bb.d:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 56), align 8, !tbaa !386
  br i1 %.not366, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85, label %.preheader.i.preheader, !prof !264

.preheader.i.preheader:                           ; preds = %.thread, %bb.d
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.w, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.u = lshr i32 %.043.i, 1
  %i.v = add i32 %.043.i, 8
  %i.w = add i32 %i.v, %i.u                       ; 5 uses
  %i.x = icmp ugt i32 %i.e, %i.w
  br i1 %i.x, label %.preheader.i, label %.thread.i, !llvm.loop !384

.thread.i:                                        ; preds = %.preheader.i
  %i.y = icmp ugt i32 %i.w, 268435455
  br i1 %i.y, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !11

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.z = shl nuw i32 %i.w, 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aa) #15 ; 2 uses
  %.not22.i = icmp eq ptr %i.ab, null
  br i1 %.not22.i, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, !prof !12

_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !39
  %.not.i.not.i44 = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr %i.m, align 8
  %.0.i.i45 = select i1 %.not.i.not.i44, ptr @_hb_NullPool, ptr %i.ad, !prof !11
  %i.ae = load i32, ptr %.0.i.i45, align 4, !tbaa !40
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85: ; preds = %bb.d
  %i.af = load i32, ptr %i.k, align 4, !tbaa !39
  %.not.i.not.i44268 = icmp eq i32 %i.af, 0
  %i.ag = load ptr, ptr %i.m, align 8
  %.0.i.i45269 = select i1 %.not.i.not.i44268, ptr @_hb_NullPool, ptr %i.ag, !prof !11
  %i.ah = load i32, ptr %.0.i.i45269, align 4, !tbaa !40
  %i.ai = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #15 ; 2 uses
  %.not22.i86 = icmp eq ptr %i.ai, null
  br i1 %.not22.i86, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, !prof !12

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %.thread.i, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  %i.aj = phi i32 [ %i.ae, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ah, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.0178.4 = phi i32 [ %i.w, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.43.4 = phi ptr [ %i.ab, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ai, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ] ; 3 uses
  store i64 0, ptr %.sroa.43.4, align 8, !tbaa !134
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.43.4, i64 8
  store i32 %i.aj, ptr %.sroa.4264.0..sroa_idx, align 8, !tbaa !40
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33:     ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread
  %.sroa.43.5284 = phi ptr [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.43.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %.sroa.22.4283 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ 1, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ]
  %.sroa.0178.5282 = phi i32 [ -1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.0178.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !217 ; 4 uses
  %or.cond = icmp sgt i32 %i.ak, 0
  br i1 %or.cond, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, !prof !418

.preheader.i.i:                                   ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.an, %.preheader.i.i ], [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ] ; 2 uses
  %i.al = lshr i32 %.053.i.i, 1
  %i.am = add nuw i32 %.053.i.i, 8
  %i.an = add nuw i32 %i.am, %i.al                ; 3 uses
  %i.ao = icmp ugt i32 %i.ak, %i.an
  br i1 %i.ao, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, !llvm.loop !419

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %.preheader.i.i
  %i.ap = zext i32 %i.an to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #15 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.aq, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, label %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, !prof !226

_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i
  %i.ar = zext nneg i32 %i.ak to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit

_ZN11hb_vector_tIbLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %_ZN19hb_priority_queue_tIlE6insertElj.exit33
  %.sroa.0158.1 = phi i1 [ false, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ false, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ true, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ]
  %.sroa.8161.0 = phi i32 [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ 0, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.ak, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 2 uses
  %.sroa.15.1 = phi ptr [ null, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ null, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.aq, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 4 uses
  %i.as = icmp slt i32 %.sroa.0178.5282, 0
  br i1 %i.as, label %.critedge, label %.lr.ph363

.lr.ph363:                                        ; preds = %_ZN11hb_vector_tIbLb0EE6resizeEi.exit
  %i.at = load i8, ptr @_hb_NullPool, align 16    ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 9223372036854775807, ptr %i.aw, align 8, !tbaa !386
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  store i64 9223372036854775807, ptr %i.ay, align 8, !tbaa !386
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 488
  store i64 9223372036854775807, ptr %i.ba, align 8, !tbaa !386
  %i.bb = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 704
  store i64 9223372036854775807, ptr %i.bc, align 8, !tbaa !386
  %i.bd = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 920
  store i64 9223372036854775807, ptr %i.be, align 8, !tbaa !386
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1136
  store i64 9223372036854775807, ptr %i.bg, align 8, !tbaa !386
  %i.bh = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1352
  store i64 9223372036854775807, ptr %i.bi, align 8, !tbaa !386
  %i.bj = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1568
  store i64 9223372036854775807, ptr %i.bk, align 8, !tbaa !386
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !420

bb.f:                                             ; preds = %.lr.ph363, %.loopexit
  %.sroa.43.0362 = phi ptr [ %.sroa.43.5284, %.lr.ph363 ], [ %.sroa.43.3, %.loopexit ] ; 12 uses
  %.sroa.22.0361 = phi i32 [ %.sroa.22.4283, %.lr.ph363 ], [ %.sroa.22.3, %.loopexit ] ; 6 uses
  %.sroa.0178.0360 = phi i32 [ %.sroa.0178.5282, %.lr.ph363 ], [ %.sroa.0178.3, %.loopexit ] ; 10 uses
  %i.bl = icmp eq i32 %.sroa.22.0361, 0
  br i1 %i.bl, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %bb.g

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !28, !range !37, !noundef !38
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.am, label %_ZN5graph7graph_t13check_successEb.exit73

bb.g:                                             ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.43.0362, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40 ; 5 uses
  %i.bp = add i32 %.sroa.22.0361, -1              ; 7 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.0362, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.43.0362, ptr noundef nonnull align 8 dereferenceable(12) %i.br, i64 12, i1 false), !tbaa.struct !388
  %i.bs = icmp slt i32 %i.bp, 0
  br i1 %i.bs, label %.lr.ph353.preheader, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %.not.i99 = icmp samesign ugt i32 %i.bp, %.sroa.0178.0360
  br i1 %.not.i99, label %.preheader.i101, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !11

.preheader.i101:                                  ; preds = %bb.h, %.preheader.i101
  %.043.i102 = phi i32 [ %i.bv, %.preheader.i101 ], [ %.sroa.0178.0360, %bb.h ] ; 2 uses
  %i.bt = lshr i32 %.043.i102, 1
  %i.bu = add nuw i32 %.043.i102, 8
  %i.bv = add nuw i32 %i.bu, %i.bt                ; 6 uses
  %i.bw = icmp ugt i32 %i.bp, %i.bv
  br i1 %i.bw, label %.preheader.i101, label %.thread.i103, !llvm.loop !384

.thread.i103:                                     ; preds = %.preheader.i101
  %i.bx = icmp ugt i32 %i.bv, 268435455
  br i1 %i.bx, label %.critedge.i118, label %bb.i, !prof !11

.critedge.i118:                                   ; preds = %.thread.i103
  %i.by = xor i32 %.sroa.0178.0360, -1
  br label %.lr.ph353.preheader

bb.i:                                             ; preds = %.thread.i103
  %.not49.i105 = icmp eq i32 %.sroa.0178.0360, 0
  %i.bz = shl nuw i32 %i.bv, 4
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  br i1 %.not49.i105, label %bb.j, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106

bb.j:                                             ; preds = %bb.i
  %i.cb = tail call ptr @hb_malloc(i64 noundef %i.ca) #15 ; 3 uses
  %.not10.i.i.i116 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i116, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.cc = zext i32 %.sroa.22.0361 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %.sroa.43.0362, i64 %i.cd, i1 false), !alias.scope !421
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106: ; preds = %bb.i
  %i.ce = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.43.0362, i64 noundef %i.ca) #15 ; 2 uses
  %.not22.i107 = icmp eq ptr %i.ce, null
  br i1 %.not22.i107, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, !prof !12

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113: ; preds = %bb.j, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106
  %i.cf = xor i32 %.sroa.0178.0360, -1
  br label %.lr.ph353.preheader

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit: ; preds = %bb.h
  %i.cg = icmp eq i32 %i.bp, 0
  br i1 %i.cg, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106, %bb.k, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.43.6305 = phi ptr [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.ce, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106 ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.0178.6301 = phi i32 [ %.sroa.0178.0360, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.bv, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106 ], [ %i.bv, %bb.k ] ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.bp, 1
  br i1 %i.ch, label %.lr.ph353.preheader, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

.lr.ph353.preheader:                              ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, %.critedge.i118, %bb.g, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread
  %.sroa.0178.6301419 = phi i32 [ %.sroa.0178.6301, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %i.by, %.critedge.i118 ], [ %.sroa.0178.0360, %bb.g ] ; 3 uses
  %.sroa.22.5303418 = phi i32 [ %i.bp, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.22.0361, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %.sroa.22.0361, %.critedge.i118 ], [ %.sroa.22.0361, %bb.g ] ; 5 uses
  %.sroa.43.6305417 = phi ptr [ %.sroa.43.6305, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %.sroa.43.0362, %.critedge.i118 ], [ %.sroa.43.0362, %bb.g ] ; 10 uses
  %.pre = load i64, ptr %.sroa.43.6305417, align 8, !tbaa !393 ; 3 uses
  br label %.lr.ph353

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %bb.o
  %i.ci = phi i32 [ %i.dd, %bb.o ], [ 2, %.lr.ph353.preheader ] ; 4 uses
  %i.cj = phi i32 [ %i.dc, %bb.o ], [ 1, %.lr.ph353.preheader ] ; 3 uses
  %.020.i352 = phi i32 [ %.0.i41, %bb.o ], [ 0, %.lr.ph353.preheader ]
  %i.ck = icmp ult i32 %i.ci, %.sroa.22.5303418   ; 2 uses
  %i.cl = zext i32 %.020.i352 to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cl ; 2 uses
  %i.cn = zext i32 %i.cj to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !393 ; 3 uses
  %.not.i40 = icmp sgt i64 %.pre, %i.cp
  br i1 %.not.i40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %bb.m, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cq = zext i32 %i.ci to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !393 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.cs
  br i1 %.not27.i, label %.thread307, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.n:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %..thread307_crit_edge, label %bb.o

..thread307_crit_edge:                            ; preds = %bb.n
  %.phi.trans.insert = zext i32 %i.ci to i64
  %.phi.trans.insert373 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.phi.trans.insert
  %.pre374 = load i64, ptr %.phi.trans.insert373, align 8, !tbaa !393
  br label %.thread307

.thread307:                                       ; preds = %..thread307_crit_edge, %bb.m
  %i.ct = phi i64 [ %.pre374, %..thread307_crit_edge ], [ %i.cs, %bb.m ]
  %i.cu = icmp slt i64 %i.cp, %i.ct
  %spec.select.i = select i1 %i.cu, i32 %i.cj, i32 %i.ci ; 2 uses
  %.pre375 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert376 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre375
  %.pre377 = load i64, ptr %.phi.trans.insert376, align 8, !tbaa !134
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread307
  %i.cv = phi i64 [ %i.cp, %bb.n ], [ %.pre377, %.thread307 ]
  %.pre-phi = phi i64 [ %i.cn, %bb.n ], [ %.pre375, %.thread307 ]
  %.0.i41 = phi i32 [ %i.cj, %bb.n ], [ %spec.select.i, %.thread307 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre-phi ; 2 uses
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !134
  store i64 %.pre, ptr %i.cw, align 8, !tbaa !134
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !40
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !40
  store i32 %i.da, ptr %i.cx, align 8, !tbaa !40
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !40
  %i.db = shl i32 %.0.i41, 1                      ; 2 uses
  %i.dc = or disjoint i32 %i.db, 1                ; 2 uses
  %i.dd = add nuw i32 %i.db, 2
  %i.de = icmp ult i32 %i.dc, %.sroa.22.5303418
  br i1 %i.de, label %.lr.ph353, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.o, %bb.m, %bb.l, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.43.6306 = phi ptr [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.43.6305, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.43.6305417, %bb.l ], [ %.sroa.43.6305417, %bb.m ], [ %.sroa.43.6305417, %bb.o ] ; 2 uses
  %.sroa.22.5304 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ 1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.22.5303418, %bb.l ], [ %.sroa.22.5303418, %bb.m ], [ %.sroa.22.5303418, %bb.o ] ; 2 uses
  %.sroa.0178.6302 = phi i32 [ %.sroa.0178.0360, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0178.6301, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.0178.6301419, %bb.l ], [ %.sroa.0178.6301419, %bb.m ], [ %.sroa.0178.6301419, %bb.o ] ; 2 uses
  %.not.i49 = icmp ult i32 %.sroa.2.0.copyload.i, %.sroa.8161.0 ; 2 uses
  br i1 %.not.i49, label %bb.q, label %bb.p, !prof !8

bb.p:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

bb.q:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  %i.df = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.df
  %.pre378 = load i8, ptr %i.dg, align 1, !tbaa !299, !range !37
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

_ZN11hb_vector_tIbLb0EEixEi.exit:                 ; preds = %bb.p, %bb.q
  %i.dh = phi i8 [ %i.at, %bb.p ], [ %.pre378, %bb.q ]
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.loopexit, label %bb.r, !llvm.loop !425

bb.r:                                             ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !41
  %.not.i51 = icmp ult i32 %.sroa.2.0.copyload.i, %i.dj
  br i1 %.not.i51, label %bb.t, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

bb.t:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.dl = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dm = getelementptr inbounds nuw [216 x i8], ptr %i.dk, i64 %i.dl
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53: ; preds = %bb.s, %bb.t
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.dm, %bb.t ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i52, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !386
  br i1 %.not.i49, label %bb.v, label %bb.u, !prof !8

bb.u:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.v:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  %i.dp = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.dp
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.u, %bb.v
  %.0.i55 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.dq, %bb.v ]
  store i8 1, ptr %.0.i55, align 1, !tbaa !299
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i52, i64 20
  %.val.i = load i32, ptr %i.dr, align 4, !tbaa !76, !noalias !426 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i52, i64 24
  %.val1.i = load ptr, ptr %i.ds, align 8, !tbaa !78, !noalias !426 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i52, i64 36
  %.val2.i = load i32, ptr %i.dt, align 4, !tbaa !76, !noalias !426 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i52, i64 40
  %.val3.i = load ptr, ptr %i.du, align 8, !tbaa !78, !noalias !426 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i to i64
  %.sroa.2.8.insert.ext.i.i.i.i6.i.i = zext i32 %.val2.i to i64
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %.val1.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %.val3.i, i64 %.sroa.2.8.insert.ext.i.i.i.i6.i.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit, %bb.ak
  %.sroa.0178.1.ph.ph = phi i32 [ %.sroa.0178.6302, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0178.2, %bb.ak ]
  %.sroa.22.1.ph.ph = phi i32 [ %.sroa.22.5304, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.22.2, %bb.ak ]
  %.sroa.43.1.ph.ph = phi ptr [ %.sroa.43.6306, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.43.2, %bb.ak ]
  %.sroa.17.0.ph.ph = phi i32 [ %.val2.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.gq, %bb.ak ]
  %.sroa.13.0.ph.ph = phi ptr [ %.val3.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.gr, %bb.ak ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %.val.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ 0, %bb.ak ]
  %.sroa.0141.0.ph.ph = phi ptr [ %.val1.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0141.0, %bb.ak ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.dw
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer, %bb.aj
  %.sroa.0178.1.ph = phi i32 [ %.sroa.0178.2, %bb.aj ], [ %.sroa.0178.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.22.1.ph = phi i32 [ %.sroa.22.2, %bb.aj ], [ %.sroa.22.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.43.1.ph = phi ptr [ %.sroa.43.2, %bb.aj ], [ %.sroa.43.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.17.0.ph = phi i32 [ 0, %bb.aj ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %bb.aj ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.0141.0.ph = phi ptr [ %.sroa.0141.0, %bb.aj ], [ %.sroa.0141.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %i.dx = icmp ne i32 %.sroa.17.0.ph, 0
  %i.dy = select i1 %.not.i3.i, i1 true, i1 %i.dx
  %.not.i.i.i.i = icmp eq i32 %.sroa.17.0.ph, 0   ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %.sroa.13.0.ph.ph, !prof !11
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i
  %.sroa.0178.1 = phi i32 [ %.sroa.0178.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0178.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 15 uses
  %.sroa.22.1 = phi i32 [ %.sroa.22.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.22.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 12 uses
  %.sroa.43.1 = phi ptr [ %.sroa.43.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.43.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.7.0 = phi i32 [ %i.go, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 3 uses
  %.sroa.0141.0 = phi ptr [ %i.gp, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0141.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 5 uses
  %.not.i.i57 = icmp ne ptr %.sroa.0141.0, %i.dv
  %i.dz = icmp ne i32 %.sroa.7.0, 0
  %i.ea = select i1 %.not.i.i57, i1 true, i1 %i.dz
  %brmerge = select i1 %i.ea, i1 true, i1 %i.dy
  br i1 %brmerge, label %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %.not.i.i58 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  %.0.i.i59 = select i1 %.not.i.i58, ptr %spec.select.i.i.i.i, ptr %.sroa.0141.0 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !82 ; 5 uses
  %.not.i60 = icmp ult i32 %i.ec, %.sroa.8161.0
  br i1 %.not.i60, label %bb.x, label %bb.w, !prof !8
end_hunk_4
begin_hunk_5_@_ZN5graph22actuate_subtable_splitINS_18MarkBasePosFormat115split_context_tEEE11hb_vector_tIjLb0EERT_RKS4_:bb.a
  br i1 %i.ay, label %bb.m, label %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.az = xor i32 %i.ax, -1
  br label %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32

_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32:   ; preds = %bb.l, %bb.m
  %i.ba = phi i32 [ %i.ax, %bb.l ], [ %i.az, %bb.m ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !39
  br label %.critedge.sink.split

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.bc = phi i32 [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  store i32 0, ptr %i.f, align 4, !tbaa !39
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32, %bb.n
  %.sink45 = phi i32 [ %i.bc, %bb.n ], [ %i.ba, %_ZN11hb_vector_tIjLb0EE12ensure_errorEv.exit32 ]
  %i.bd = xor i32 %.sink45, -1
  store i32 %i.bd, ptr %0, align 8, !tbaa !256
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.a, %.critedge24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph18MarkBasePosFormat115split_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i32 -57005, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.e = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.c) #15
  store atomic ptr null, ptr %i.b monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i
  tail call void @hb_free(ptr noundef nonnull %i.g) #15
  br label %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit

_ZN12hb_hashmap_tIjjLb0EED2Ev.exit:               ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb0EEEvPT_.exit.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1366
  %i.j = add i32 %i.i, -1
  %spec.select.i.i.i = icmp ult i32 %i.j, -2
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1360 ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1356
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.o
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.r, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.046.i.i.i = phi i32 [ %i.q, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.l, %.lr.ph.preheader.i.i.i ]
  %i.q = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -88 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !256
  %i.u = add i32 %i.t, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.u, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.e, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.v, align 4, !tbaa !39
  %i.w = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69
  tail call void @hb_free(ptr noundef %i.x) #15
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.r) #15
  %.not.i.i.i1 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i1, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1367

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %bb.d
  store i32 0, ptr %i.k, align 4, !tbaa !1360
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1356
  tail call void @hb_free(ptr noundef %i.z) #15
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit: ; preds = %_ZN12hb_hashmap_tIjjLb0EED2Ev.exit, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !1366   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread, !prof !11

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !1376

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 48806446
  br i1 %i.k, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, label %bb.f, !prof !11

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !1366   ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread22: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !1366
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread19

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !1356
  store i32 %.138.i, ptr %0, align 8, !tbaa !1366
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1360 ; 5 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.ae, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !1356
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [88 x i8], ptr %i.t, i64 %i.u ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.v, i8 0, i64 72, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store atomic i32 1, ptr %i.v monotonic, align 4
  store atomic i8 1, ptr %i.w monotonic, align 4
  store atomic ptr null, ptr %i.x monotonic, align 8
  store i8 1, ptr %i.y, align 8, !tbaa !101
  store i32 0, ptr %i.z, align 4, !tbaa !102
  store atomic i32 0, ptr %i.aa monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ab, i8 0, i64 33, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !1360
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.o, align 4, !tbaa !1360
  %i.af = icmp ult i32 %i.ae, %1
  br i1 %i.af, label %bb.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !1377

bb.j:                                             ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE5allocEjb.exit.thread
  %i.ag = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.ag
  br i1 %or.cond, label %.lr.ph.preheader.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ah = sub nuw i32 %i.p, %1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1356
  %i.ak = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.ak
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.an, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.al, %.lr.ph.preheader.i ] ; 4 uses
  %.046.i = phi i32 [ %i.am, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i ], [ %i.ah, %.lr.ph.preheader.i ]
  %i.am = add i32 %.046.i, -1                     ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.07.i, i64 -88 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.07.i, i64 -16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !256
  %i.aq = add i32 %i.ap, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.aq, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.k, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

bb.k:                                             ; preds = %.lr.ph.i15
  %i.ar = getelementptr inbounds i8, ptr %.07.i, i64 -12
  store i32 0, ptr %i.ar, align 4, !tbaa !39
  %i.as = getelementptr inbounds i8, ptr %.07.i, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69
  tail call void @hb_free(ptr noundef %i.at) #15
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i: ; preds = %bb.k, %.lr.ph.i15
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.an) #15
  %.not.i16 = icmp eq i32 %i.am, 0
  br i1 %.not.i16, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, label %.lr.ph.i15, !llvm.loop !1367

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11grow_vectorIS2_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i, %bb.i, %bb.j, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !1360
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
  %i.a = load i32, ptr %0, align 8, !tbaa !1366
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 88
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #15 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.g, label %.preheader, !prof !11

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1360
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !1366
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
  store atomic i32 1, ptr %i.k monotonic, align 4
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  store i8 1, ptr %i.n, align 8, !tbaa !101
  store i32 0, ptr %i.o, align 4, !tbaa !102
  store atomic i32 0, ptr %i.p monotonic, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.q, i8 0, i64 33, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !1356 ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %indvars.iv ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !37
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !299, !range !37, !noundef !38
  store i8 %i.z, ptr %i.x, align 8, !tbaa !299
  store i8 0, ptr %i.y, align 8, !tbaa !299
  tail call fastcc void @"_ZNK3$_9clI12hb_bit_set_tEEvRT_S3_"(ptr noundef nonnull align 8 dereferenceable(49) %i.n, ptr noundef nonnull align 8 dereferenceable(49) %i.u)
  %.pre = load i32, ptr %i.r, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !151
  %.pre22 = load ptr, ptr %i.h, align 8, !tbaa !1356
  br label %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit

_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit: ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.s, %bb.d ], [ %.pre22, %bb.e ]
  %i.ab = phi ptr [ null, %bb.d ], [ %.pre21, %bb.e ]
  %i.ac = phi i32 [ 0, %bb.d ], [ %.pre, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !40
  store i32 %i.ae, ptr %i.r, align 8, !tbaa !40
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 76 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !40
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !40
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !151
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !151
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !151
  %i.am = getelementptr inbounds nuw [88 x i8], ptr %i.aa, i64 %indvars.iv ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !256
  %i.ap = add i32 %i.ao, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.ap, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

bb.f:                                             ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 76
  store i32 0, ptr %i.aq, align 4, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69
  tail call void @hb_free(ptr noundef %i.as) #15
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_taSEOS1_.exit, %bb.f
  tail call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.am) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i32, ptr %i.f, align 4, !tbaa !1360
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.d, label %._crit_edge, !llvm.loop !1378

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1356
  tail call void @hb_free(ptr noundef %i.ax) #15
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5graph18MarkBasePosFormat111clone_rangeERNS0_15split_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %struct.hb_map_iter_t.303, align 8  ; 6 uses
  %6 = alloca %struct.hb_zip_iter_t.309, align 8  ; 11 uses
  %7 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %8 = alloca %struct.hb_sink_t.318, align 8      ; 4 uses
  %9 = alloca %"struct.graph::graph_t::vertex_and_table_t.302", align 8 ; 5 uses
  %10 = alloca %struct.hb_set_t, align 8          ; 13 uses
  %.sroa.0113 = alloca %struct.hb_filter_iter_t.305, align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1379, !nonnull !38, !align !141 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136, !nonnull !38, !align !141 ; 4 uses
  %i.d = tail call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i32 noundef 12) #15 ; 12 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.d, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i32 %i.d to i64                     ; 5 uses
  %i.k = getelementptr inbounds nuw [216 x i8], ptr %i.i, i64 %i.j
  %.0.i.i = select i1 %.not.i.i, ptr %i.k, ptr @_hb_NullPool, !prof !8
  %i.l = load ptr, ptr %.0.i.i, align 8, !tbaa !220 ; 5 uses
  %i.m = load i16, ptr %0, align 1, !tbaa !353
  store i16 %i.m, ptr %i.l, align 1, !tbaa !353
  %i.n = sub i32 %4, %3
  %i.o = trunc i32 %i.n to i16
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  store i16 %i.q, ptr %i.p, align 1, !tbaa !353
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1355 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.f, align 4, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.s, %i.u
  %i.v = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.w = zext i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.w
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.x, ptr @_hb_NullPool, !prof !8 ; 4 uses
  %i.y = load ptr, ptr %.0.i.i.i, align 8, !tbaa !220 ; 2 uses
  %i.z = icmp uge ptr %i.t, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i = icmp ult ptr %i.t, %i.ab
  %or.cond.i = select i1 %i.z, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !449 ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !450
  %wide.trip.count.i = zext i32 %i.ad to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.e, !llvm.loop !451

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !291
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aj
  %.not23.not.i = icmp eq ptr %i.t, %i.ak
  br i1 %.not23.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !82
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.d, %bb.b, %bb.c, %.thread.i
  %.4.i = phi i32 [ -1, %bb.b ], [ %i.am, %.thread.i ], [ -1, %bb.c ], [ -1, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.not.i.i51 = icmp ult i32 %i.d, %i.u
  br i1 %.not.i.i51, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.g:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  %i.ao = getelementptr inbounds nuw [216 x i8], ptr %i.v, i64 %i.j
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i52 = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.ao, %bb.g ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 20 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !76 ; 2 uses
  %i.ar = add i32 %i.aq, 1                        ; 5 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.h, !prof !11

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 16
  %i.au = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i32 noundef %i.ar, i1 noundef zeroext false)
  br i1 %i.au, label %bb.i, label %bb.l, !prof !337

bb.i:                                             ; preds = %bb.h
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !76 ; 3 uses
  %i.aw = icmp ugt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nuw nsw i32 %i.ar, %i.av
  %i.ay = mul i32 %i.ax, 12                       ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5graph7graph_t9duplicateEPK8hb_set_tj:bb.a
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73: ; preds = %bb.ar, %bb.al
  %i.er = load i32, ptr %i.dg, align 4, !tbaa !113 ; 2 uses
  %.not.i.i74 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i74, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit76, label %bb.as, !prof !11

bb.as:                                            ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr %i.dg, align 4, !tbaa !113
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit76

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit76: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i73, %bb.as
  %i.et = load i32, ptr %i.dc, align 8, !tbaa !114 ; 2 uses
  %.not103 = icmp eq i32 %i.et, -1
  br i1 %.not103, label %._crit_edge112, label %bb.ah

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit
  %.not.i.i77 = icmp eq i32 %.sroa.7.0, 0
  %.not.i.i77.not = xor i1 %.not.i.i77, true      ; 3 uses
  %.not.i.i.i.i78.not = xor i1 %.not.i.i.i.i78, true
  %brmerge = select i1 %.not.i.i77.not, i1 true, i1 %.not.i.i.i.i78.not, !prof !212
  %.mux = select i1 %.not.i.i77.not, i1 false, i1 true, !prof !212
  %.sroa.082.0.mux = select i1 %.not.i.i77.not, ptr %.sroa.082.0, ptr %.sroa.13.0.ph.ph, !prof !212
  br i1 %brmerge, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit, label %bb.at, !prof !213

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit
  br i1 %.not.i.i.i.i78, label %bb.at, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit, !prof !11

bb.at:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit

_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread, %bb.at
  %.not.i.i77132 = phi i1 [ true, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread ], [ true, %bb.at ], [ %.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread ]
  %.0.i.i = phi ptr [ %.sroa.13.0.ph.ph, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread ], [ @_hb_CrapPool, %bb.at ], [ %.sroa.082.0.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread ]
  %i.eu = add i32 %.0, 1                          ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !82
  %.not48 = icmp eq i32 %i.ew, %2
  br i1 %.not48, label %bb.au, label %bb.az

bb.au:                                            ; preds = %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit
  %i.ex = icmp ugt i32 %i.eu, %i.dq
  store i32 %i.da, ptr %i.ev, align 4, !tbaa !82
  %i.ey = load i32, ptr %i.z, align 4, !tbaa !41
  %.not.i.i79 = icmp ult i32 %2, %i.ey
  br i1 %.not.i.i79, label %bb.aw, label %bb.av, !prof !8

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.ez = load ptr, ptr %i.de, align 8, !tbaa !72
  %i.fa = getelementptr inbounds nuw [216 x i8], ptr %i.ez, i64 %i.dh
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.aw, %bb.av
  %.0.i.i80 = phi ptr [ @_hb_CrapPool, %bb.av ], [ %i.fa, %bb.aw ]
  call void @_ZN5graph7graph_t8vertex_t13remove_parentEj(ptr noundef nonnull align 8 dereferenceable(216) %.0.i.i80, i32 noundef %spec.select)
  %i.fb = load i32, ptr %i.z, align 4, !tbaa !41
  %.not.i8.i = icmp ult i32 %i.da, %i.fb
  br i1 %.not.i8.i, label %bb.ay, label %bb.ax, !prof !8

bb.ax:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit

bb.ay:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.fc = load ptr, ptr %i.de, align 8, !tbaa !72
  %i.fd = getelementptr inbounds nuw [216 x i8], ptr %i.fc, i64 %i.df
  br label %_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit

_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit: ; preds = %bb.ax, %bb.ay
  %.0.i9.i = phi ptr [ @_hb_CrapPool, %bb.ax ], [ %i.fd, %bb.ay ]
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i9.i, i32 noundef %spec.select, i1 noundef zeroext %i.ex)
  br label %bb.az

bb.az:                                            ; preds = %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit, %_ZN5graph7graph_t13reassign_linkERN22hb_serialize_context_t8object_t6link_tEjjb.exit
  br i1 %.not.i.i77132, label %bb.ba, label %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i: ; preds = %bb.az
  %i.fe = add i32 %.sroa.7.0, -1
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.082.0, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit

bb.ba:                                            ; preds = %bb.az
  %.not.i.i1.i.i = icmp eq i32 %.sroa.17.0.ph, 0
  br i1 %.not.i.i1.i.i, label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer, label %bb.bb, !prof !11

bb.bb:                                            ; preds = %bb.ba
  %i.fg = add i32 %.sroa.17.0.ph, -1
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.ph, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.outer.outer

bb.bc:                                            ; preds = %._crit_edge, %bb.ae, %bb.af, %._crit_edge112, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit
  %.2 = phi i32 [ -1, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE8is_emptyEv.exit ], [ 0, %bb.af ], [ %i.da, %._crit_edge112 ], [ -1, %bb.ae ], [ -1, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store atomic i32 -57005, ptr %0 monotonic, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #15 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.b) #15
  store atomic ptr null, ptr %i.a monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit

_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !452  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1771
  %i.i = add i32 %i.h, 1                          ; 2 uses
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.i to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !452
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.c ]
  tail call void @hb_free(ptr noundef %i.j) #15
  store ptr null, ptr %i.e, align 8, !tbaa !452
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !452
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !256
  %i.o = add i32 %i.n, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.o, -2
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69
  tail call void @hb_free(ptr noundef %i.r) #15
  br label %_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit

_ZN12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EE6item_tD2Ev.exit: ; preds = %.lr.ph, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1959

bb.e:                                             ; preds = %._crit_edge, %_ZL14hb_object_finiI12hb_hashmap_tIj11hb_vector_tIjLb0EELb0EEEvPT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !1770
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !1773
  ret void
}

declare ptr @hb_blob_get_empty() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !240
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !709  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !11

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !253
  store ptr %i.f, ptr %i.d, align 8, !tbaa !709
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1960
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !8

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #15 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !712
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !712
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !253
  store ptr %i.p, ptr %i.d, align 8, !tbaa !709
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !240
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !240
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !277
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !277
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !263
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !282
  store ptr %i.r, ptr %i.u, align 8, !tbaa !263
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !241
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph14serialize_linkERKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS0_(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 3 uses
  %i.b = and i32 %i.a, 7
  switch i32 %i.b, label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit [
    i32 3, label %bb.az
    i32 4, label %bb.b
    i32 2, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 8
  %.not27 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !291  ; 3 uses
  %i.f = add i32 %i.e, 4
  %i.g = icmp ugt i32 %i.f, %2                    ; 2 uses
  br i1 %.not27, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !240
  %i.j = or i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !240
  br label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  store i32 0, ptr %i.l, align 1, !tbaa !353
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !82   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !39
  %.not.i.i = icmp ult i32 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = zext i32 %i.n to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %.0.i.i = select i1 %.not.i.i, ptr %i.t, ptr @_hb_NullPool, !prof !8
  %i.u = load i32, ptr %.0.i.i, align 4, !tbaa !40 ; 2 uses
  %i.v = load i32, ptr %0, align 4                ; 2 uses
  %i.w = and i32 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !240
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = icmp eq i32 %i.u, 0
  %or.cond.not.i.i = or i1 %i.aa, %i.z
  br i1 %or.cond.not.i.i, label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit, label %bb.f, !prof !257

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !263 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !76 ; 2 uses
  %i.af = add i32 %i.ae, 1                        ; 5 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef %i.af, i1 noundef zeroext false)
  br i1 %i.ai, label %bb.h, label %bb.k, !prof !337

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !76 ; 3 uses
  %i.ak = icmp ugt i32 %i.af, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.al = sub nuw nsw i32 %i.af, %i.aj
  %i.am = mul i32 %i.al, 12                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !78
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = zext i32 %i.am to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !78
  %i.au = zext i32 %i.ae to i64
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %i.au
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.av, %bb.l ] ; 5 uses
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !77
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.ba = load i32, ptr %i.x, align 4, !tbaa !240
  %i.bb = or i32 %i.ba, 1
  store i32 %i.bb, ptr %i.x, align 4, !tbaa !240
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.bc = load i32, ptr %.0.i.i.i, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.u, ptr %i.bd, align 4, !tbaa !82
  %i.be = and i32 %i.bc, -64
  %i.bf = or disjoint i32 %i.w, %i.be
  %i.bg = or disjoint i32 %i.bf, 12
  store i32 %i.bg, ptr %.0.i.i.i, align 4
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !263
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !220
  %i.bj = ptrtoint ptr %i.l to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !291
  %i.bo = and i32 %i.v, -16
  %i.bp = or disjoint i32 %i.bo, 12
  store i32 %i.bp, ptr %.0.i.i.i, align 4
  br label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit

bb.o:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !240
  %i.bs = or i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !240
  br label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit

bb.q:                                             ; preds = %bb.o
  %i.bt = zext i32 %i.e to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt ; 2 uses
  store i32 0, ptr %i.bu, align 1, !tbaa !353
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !82 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !39
  %.not.i.i28 = icmp ult i32 %i.bw, %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = zext i32 %i.bw to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %.0.i.i29 = select i1 %.not.i.i28, ptr %i.cc, ptr @_hb_NullPool, !prof !8
  %i.cd = load i32, ptr %.0.i.i29, align 4, !tbaa !40 ; 2 uses
  %i.ce = load i32, ptr %0, align 4               ; 2 uses
  %i.cf = and i32 %i.ce, 48
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !240
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = icmp eq i32 %i.cd, 0
  %or.cond.not.i.i30 = or i1 %i.cj, %i.ci
  br i1 %or.cond.not.i.i30, label %_ZN5graph22serialize_link_of_typeIN2OT7NumTypeILb1EiLj4EEEEEvRKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS4_.exit, label %bb.r, !prof !257

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
end_hunk_6
