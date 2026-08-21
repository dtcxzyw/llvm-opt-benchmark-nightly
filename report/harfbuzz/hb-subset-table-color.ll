inline.NumInlined: 12641
inline.NumDeleted: 5098
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN5graph9serializeERKNS_7graph_tE:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !108
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.bt, align 8, !tbaa !109
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 5 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !110 ; 3 uses
  %i.bw = load i32, ptr %i.bi, align 8, !tbaa !111 ; 6 uses
  %.not.i.i.i = icmp slt i32 %i.bv, %i.bw
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i
  %i.bx = add i32 %i.bv, 1                        ; 2 uses
  %i.by = icmp slt i32 %i.bw, 0
  br i1 %i.by, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %.not.i56 = icmp ugt i32 %i.bx, %i.bw
  br i1 %.not.i56, label %.preheader.i58, label %..critedge_crit_edge.i.i.i, !prof !21

.preheader.i58:                                   ; preds = %bb.d, %.preheader.i58
  %.043.i = phi i32 [ %i.cb, %.preheader.i58 ], [ %i.bw, %bb.d ] ; 2 uses
  %i.bz = lshr i32 %.043.i, 1
  %i.ca = add i32 %.043.i, 8
  %i.cb = add i32 %i.ca, %i.bz                    ; 7 uses
  %i.cc = icmp ugt i32 %i.bx, %i.cb
  br i1 %i.cc, label %.preheader.i58, label %.thread.i, !llvm.loop !112

.thread.i:                                        ; preds = %.preheader.i58
  %i.cd = icmp ugt i32 %i.cb, 536870911
  br i1 %i.cd, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104, label %bb.e, !prof !21

bb.e:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.bw, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !113 ; 2 uses
  br i1 %.not49.i, label %bb.f, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i65 = icmp eq ptr %i.cf, null
  br i1 %.not9.i.i.i65, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = shl nuw i32 %i.cb, 3
  %i.ch = zext i32 %i.cg to i64
  %i.ci = call ptr @hb_malloc(i64 noundef %i.ch) #20 ; 4 uses
  %.not10.i.i.i66 = icmp eq ptr %i.ci, null
  br i1 %.not10.i.i.i66, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.cj = load i32, ptr %i.bu, align 4, !tbaa !110 ; 2 uses
  %.not.i.i.i.i67 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i67, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr readonly align 1 %i.cm, i64 %i.cl, i1 false), !alias.scope !517
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.f, %bb.e
  %i.cn = phi ptr [ null, %bb.f ], [ %i.cf, %bb.e ]
  %i.co = shl nuw i32 %i.cb, 3
  %i.cp = zext i32 %i.co to i64
  %i.cq = call ptr @hb_realloc(ptr noundef %i.cn, i64 noundef %i.cp) #20 ; 2 uses
  %.not22.i60 = icmp eq ptr %i.cq, null
  br i1 %.not22.i60, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.g
  %i.cr = load i32, ptr %i.bi, align 8, !tbaa !111 ; 2 uses
  %.not23.i64 = icmp ugt i32 %i.cb, %i.cr
  br i1 %.not23.i64, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104, label %..critedge_crit_edge.i.i.i, !prof !119

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i62.ph.in = phi i32 [ %i.bw, %.thread.i ], [ %i.cr, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i62.ph = xor i32 %.sink.i62.ph.in, -1
  store i32 %.sink.i62.ph, ptr %i.bi, align 8, !tbaa !111
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit: ; preds = %bb.h, %bb.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.cq, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %i.ci, %bb.i ], [ %i.ci, %bb.h ]
  store ptr %.1.i.i42.i, ptr %i.ce, align 8, !tbaa !113
  store i32 %i.cb, ptr %i.bi, align 8, !tbaa !111
  br label %..critedge_crit_edge.i.i.i

..critedge_crit_edge.i.i.i:                       ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %bb.d, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit
  %.pre.i.i.i = load i32, ptr %i.bu, align 4, !tbaa !110
  br label %.critedge.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101: ; preds = %bb.c, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104
  %i.cs = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cs, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i
  %i.ct = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.bv, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !113
  %i.cw = add i32 %i.ct, 1
  store i32 %i.cw, ptr %i.bu, align 4, !tbaa !110
  %i.cx = zext i32 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  store ptr null, ptr %i.cy, align 8, !tbaa !120
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

_ZN22hb_serialize_context_tC2EPvm.exit:           ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101, %.critedge.i.i.i
  store atomic i32 1, ptr %i.bj monotonic, align 8
  store atomic i8 1, ptr %i.bk monotonic, align 4
  store atomic ptr null, ptr %i.bl monotonic, align 8
  store i8 1, ptr %i.bm, align 8, !tbaa !103
  store ptr null, ptr %i.bo, align 8, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bn, i8 0, i64 18, i1 false)
  %i.cz = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !521 ; 6 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %bb.j, !prof !21

bb.j:                                             ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit
  %.not.i69.not = icmp eq i32 %i.db, 0
  br i1 %.not.i69.not, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread, label %.preheader.i71, !prof !137

.preheader.i71:                                   ; preds = %bb.j, %.preheader.i71
  %.043.i72 = phi i32 [ %i.df, %.preheader.i71 ], [ 0, %bb.j ] ; 2 uses
  %i.dd = lshr i32 %.043.i72, 1
  %i.de = add nuw i32 %.043.i72, 8
  %i.df = add nuw i32 %i.de, %i.dd                ; 6 uses
  %i.dg = icmp ugt i32 %i.db, %i.df
  br i1 %i.dg, label %.preheader.i71, label %.thread.i73, !llvm.loop !295

.thread.i73:                                      ; preds = %.preheader.i71
  %i.dh = icmp ugt i32 %i.df, 1073741823
  br i1 %i.dh, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i73
  %i.di = shl nuw i32 %i.df, 2
  %i.dj = zext i32 %i.di to i64
  %i.dk = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.dj) #20 ; 2 uses
  %.not22.i76 = icmp eq ptr %i.dk, null
  br i1 %.not22.i76, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre = load i32, ptr %2, align 8, !tbaa !350   ; 2 uses
  %.not23.i81 = icmp ugt i32 %i.df, %.pre
  br i1 %.not23.i81, label %bb.k, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread

bb.k:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i
  %i.dl = xor i32 %.pre, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109:  ; preds = %bb.k, %.thread.i73
  %.sink.i79.ph = phi i32 [ -1, %.thread.i73 ], [ %i.dl, %bb.k ]
  store i32 %.sink.i79.ph, ptr %2, align 8, !tbaa !350
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !351
  store i32 %i.df, ptr %2, align 8, !tbaa !350
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread:     ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !352 ; 3 uses
  %i.dp = icmp ugt i32 %i.db, %i.do
  br i1 %i.dp, label %bb.l, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.l:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread
  %i.dq = sub nuw nsw i32 %i.db, %i.do
  %i.dr = shl i32 %i.dq, 2                        ; 2 uses
  %.not.i.i.i.i43 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i43, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !351
  %i.du = zext nneg i32 %i.do to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = zext i32 %i.dr to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.dv, i8 0, i64 %i.dw, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.m, %bb.l, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread
  store i32 %i.db, ptr %i.dn, align 4, !tbaa !352
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109, %_ZN22hb_serialize_context_tC2EPvm.exit, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.dx = load i32, ptr %i.da, align 4, !tbaa !521
  %.035138 = add i32 %i.dx, -1                    ; 2 uses
  %i.dy = icmp slt i32 %.035138, 0
  br i1 %i.dy, label %.critedge, label %.lr.ph140

.lr.ph140:                                        ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eb = load i32, ptr @_hb_NullPool, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph140, %bb.v
  %.035139 = phi i32 [ %.035138, %.lr.ph140 ], [ %.035, %bb.v ] ; 4 uses
  %i.ed = load i32, ptr %i.da, align 4, !tbaa !352
  %.not.i44 = icmp ult i32 %.035139, %i.ed
  %i.ee = load ptr, ptr %i.dz, align 8
  %3 = zext nneg i32 %.035139 to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %3
  %.0.i = select i1 %.not.i44, ptr %i.ef, ptr @_hb_NullPool, !prof !137
  %i.eg = load i32, ptr %.0.i, align 4, !tbaa !147 ; 3 uses
  %i.eh = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !369
  %.not.i45 = icmp ult i32 %i.eg, %i.ei
  %i.ej = load ptr, ptr %i.c, align 8
  %i.ek = zext i32 %i.eg to i64                   ; 2 uses
  %i.el = getelementptr inbounds nuw [216 x i8], ptr %i.ej, i64 %i.ek
  %.0.i46 = select i1 %.not.i45, ptr %i.el, ptr @_hb_NullPool, !prof !137 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i46, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !445 ; 2 uses
  %i.eo = load ptr, ptr %.0.i46, align 8, !tbaa !446 ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 7 uses
  %i.es = load i32, ptr %i.bp, align 4, !tbaa !105
  %.not.i47 = icmp eq i32 %i.es, 0
  br i1 %.not.i47, label %bb.o, label %.thread122, !prof !137

bb.o:                                             ; preds = %bb.n
  %i.et = icmp ugt i64 %i.er, 2147483647
  br i1 %i.et, label %.critedge.i, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.eu = load ptr, ptr %i.br, align 8, !tbaa !107
  %i.ev = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 5 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp slt i64 %i.ey, %i.er
  br i1 %i.ez, label %.critedge.i, label %bb.q, !prof !21

.critedge.i:                                      ; preds = %bb.p, %bb.o
  store i32 4, ptr %i.bp, align 4, !tbaa !105
  br label %.thread122

bb.q:                                             ; preds = %bb.p
  %.not.i.i.not = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i.not, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, !prof !77

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit: ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr align 1 %i.ev, i8 0, i64 %i.er, i1 false)
  %.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.er
  store ptr %i.fa, ptr %i.bq, align 8, !tbaa !106
  %.not40.not = icmp eq ptr %.pre.i, null
  br i1 %.not40.not, label %.thread122, label %bb.r

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116: ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er
  store ptr %i.fb, ptr %i.bq, align 8, !tbaa !106
  %.not40.not117 = icmp eq ptr %i.ev, null
  br i1 %.not40.not117, label %.thread122, label %_ZL9hb_memcpyPvPKvm.exit

bb.r:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit
  %i.fc = load ptr, ptr %.0.i46, align 8, !tbaa !446
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre.i, ptr readonly align 1 %i.fc, i64 %i.er, i1 false), !alias.scope !522
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, %bb.r
  %i.fd = phi ptr [ %.pre.i, %bb.r ], [ %i.ev, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i46, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !261 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i46, i64 20
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !260 ; 2 uses
  %i.fi = zext i32 %i.fh to i64
  %.idx = mul nuw nsw i64 %i.fi, 12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx
  %.not41136 = icmp eq i32 %i.fh, 0
  br i1 %.not41136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.fk = trunc nuw nsw i64 %i.er to i32
  br label %bb.u

._crit_edge:                                      ; preds = %bb.u, %_ZL9hb_memcpyPvPKvm.exit
  %i.fl = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false)
  %i.fm = load i32, ptr %i.ea, align 4, !tbaa !352
  %.not.i50 = icmp ult i32 %i.eg, %i.fm
  br i1 %.not.i50, label %bb.t, label %bb.s, !prof !137

bb.s:                                             ; preds = %._crit_edge
  store i32 %i.eb, ptr @_hb_CrapPool, align 16
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge
  %i.fn = load ptr, ptr %i.ec, align 8, !tbaa !351
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.ek
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph, %bb.u
  %.034137 = phi ptr [ %i.ff, %.lr.ph ], [ %i.fp, %bb.u ] ; 2 uses
  call void @_ZN5graph14serialize_linkERKN22hb_serialize_context_t8object_t6link_tEPcjRK11hb_vector_tIjLb0EEPS0_(ptr noundef nonnull align 4 dereferenceable(12) %.034137, ptr noundef nonnull %i.fd, i32 noundef %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
  %i.fp = getelementptr inbounds nuw i8, ptr %.034137, i64 12 ; 2 uses
  %.not41 = icmp eq ptr %i.fp, %i.fj
  br i1 %.not41, label %._crit_edge, label %bb.u

bb.v:                                             ; preds = %bb.t, %bb.s
  %.0.i51 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.fo, %bb.t ]
  store i32 %i.fl, ptr %.0.i51, align 4, !tbaa !147
  %.035 = add nsw i32 %.035139, -1
  %i.fq = icmp slt i32 %.035139, 1
  br i1 %i.fq, label %.critedge, label %bb.n, !llvm.loop !526

.critedge:                                        ; preds = %bb.v, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.fr = load i32, ptr %i.bp, align 4, !tbaa !105 ; 5 uses
  %i.fs = load i32, ptr %i.bi, align 8, !tbaa !111
  %i.ft = icmp sgt i32 %i.fs, -1
  %.not.i.i.i.i.i = icmp ne i32 %i.fr, 0
  %i.fu = load i8, ptr %i.bm, align 8, !range !142
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = select i1 %i.ft, i1 %i.fv, i1 false
  %or.cond6.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.fw
  br i1 %or.cond6.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i: ; preds = %.critedge
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !143
  %.not.i52 = icmp eq ptr %i.fy, null
  br i1 %.not.i52, label %_ZN22hb_serialize_context_t13end_serializeEv.exit, label %bb.w, !prof !21

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i: ; preds = %.critedge
  store i32 1, ptr %i.bp, align 4, !tbaa !105
  br label %.thread122

bb.w:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i
  %.not7.i = icmp eq i32 %i.fr, 0
  br i1 %.not7.i, label %bb.z, label %bb.x, !prof !144

bb.x:                                             ; preds = %bb.w
  %i.fz = and i32 %i.fr, 2
  %.not8.i = icmp eq i32 %i.fz, 0
  br i1 %.not8.i, label %.thread122, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = or i32 %i.fr, 1
  store i32 %i.ga, ptr %i.bp, align 4, !tbaa !105
  br label %.thread122

bb.z:                                             ; preds = %bb.w
  %i.gb = load i32, ptr %i.bu, align 4, !tbaa !145
  %i.gc = icmp ult i32 %i.gb, 2
  br i1 %i.gc, label %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gd = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext false) ; 0 uses
  call void @_ZN22hb_serialize_context_t13resolve_linksEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %.pr.pre = load i32, ptr %i.bp, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t13end_serializeEv.exit

_ZN22hb_serialize_context_t13end_serializeEv.exit: ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i, %bb.aa
  %.pr = phi i32 [ %i.fr, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i ], [ %.pr.pre, %bb.aa ]
  %.not129 = icmp eq i32 %.pr, 0
  br i1 %.not129, label %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread, label %.thread122

_ZN22hb_serialize_context_t13end_serializeEv.exit.thread: ; preds = %bb.z, %_ZN22hb_serialize_context_t13end_serializeEv.exit
  %i.ge = load ptr, ptr %i.bq, align 8, !tbaa !106
  %i.gf = load ptr, ptr %1, align 8, !tbaa !90
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = load ptr, ptr %i.bf, align 8, !tbaa !102
  %i.gj = load ptr, ptr %i.br, align 8, !tbaa !107
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = add i64 %i.gg, %i.gk
  %i.gn = add i64 %i.gh, %i.gl
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = and i64 %i.go, 4294967295               ; 4 uses
  %.not.i.i53 = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i53, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread
  %i.gq = call ptr @hb_malloc(i64 noundef %i.gp) #20 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.gq, null
  br i1 %.not7.i.i, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.ac, !prof !21

bb.ac:                                            ; preds = %bb.ab
  %i.gr = load ptr, ptr %1, align 8, !tbaa !90    ; 3 uses
  %i.gs = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.gs, %i.gr
  br i1 %.not.i.i.i54, label %_ZL9hb_memcpyPvPKvm.exit.i.i, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gu, %i.gt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr readonly align 1 %i.gr, i64 %i.gv, i1 false), !alias.scope !527
  br label %_ZL9hb_memcpyPvPKvm.exit.i.i

_ZL9hb_memcpyPvPKvm.exit.i.i:                     ; preds = %bb.ad, %bb.ac
  %i.gw = load ptr, ptr %i.br, align 8, !tbaa !107 ; 3 uses
  %i.gx = load ptr, ptr %i.bf, align 8, !tbaa !102 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.gx, %i.gw
  br i1 %.not.i8.i.i, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gz, %i.gy
  %i.hb = load ptr, ptr %i.bq, align 8, !tbaa !106
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = load ptr, ptr %1, align 8, !tbaa !90
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.hc, %i.he
  %i.hg = getelementptr inbounds i8, ptr %i.gq, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr readonly align 1 %i.gw, i64 %i.ha, i1 false), !alias.scope !531
  br label %_ZNK22hb_serialize_context_t9copy_blobEv.exit

_ZNK22hb_serialize_context_t9copy_blobEv.exit:    ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread, %bb.ab, %_ZL9hb_memcpyPvPKvm.exit.i.i, %bb.ae
  %.sroa.0.0.i.i = phi ptr [ null, %bb.ab ], [ null, %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread ], [ %i.gq, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.gq, %bb.ae ] ; 2 uses
  %.sroa.6.0.i.i = phi i64 [ 0, %bb.ab ], [ 0, %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread ], [ %i.gp, %_ZL9hb_memcpyPvPKvm.exit.i.i ], [ %i.gp, %bb.ae ]
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.6.0.i.i to i32
  %i.hh = call noundef ptr @hb_blob_create(ptr noundef %.sroa.0.0.i.i, i32 noundef %.sroa.5.8.extract.trunc.i, i32 noundef 2, ptr noundef %.sroa.0.0.i.i, ptr noundef nonnull @hb_free) #20
  br label %.thread122

.thread122:                                       ; preds = %bb.n, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, %bb.x, %bb.y, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i, %.critedge.i, %_ZN22hb_serialize_context_t13end_serializeEv.exit, %_ZNK22hb_serialize_context_t9copy_blobEv.exit
  %.3 = phi ptr [ null, %bb.y ], [ %i.hh, %_ZNK22hb_serialize_context_t9copy_blobEv.exit ], [ null, %_ZN22hb_serialize_context_t13end_serializeEv.exit ], [ null, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i ], [ null, %.critedge.i ], [ null, %bb.x ], [ null, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit ], [ null, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116 ], [ null, %bb.n ] ; 2 uses
  %i.hi = load i32, ptr %2, align 8, !tbaa !350
  %i.hj = add i32 %i.hi, -1
  %spec.select.i.i.i = icmp ult i32 %i.hj, -2
  br i1 %spec.select.i.i.i, label %bb.af, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit

bb.af:                                            ; preds = %.thread122
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.hk, align 4, !tbaa !352
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !351
  call void @hb_free(ptr noundef %i.hm) #20
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit:            ; preds = %bb.af, %.thread122
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.hn = add i32 %.sroa.0.1.ph, -1
  %spec.select.i.i.i55 = icmp ult i32 %i.hn, -2
  br i1 %spec.select.i.i.i55, label %bb.ag, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.ag:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit
  call void @hb_free(ptr noundef %.sroa.9.2.ph) #20
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i, %_ZNK5graph7graph_t19total_size_in_bytesEv.exit.thread, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit, %bb.ag
  %.4128 = phi ptr [ %.3, %bb.ag ], [ %.3, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit ], [ null, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i ], [ %i.ax, %_ZNK5graph7graph_t19total_size_in_bytesEv.exit.thread ]
  ret ptr %.4128
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_tD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !535  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !536  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not14 = icmp eq i32 %i.e, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = load i32, ptr %i.a, align 8, !tbaa !537
  %i.i = add i32 %i.h, -1
  %spec.select.i.i.i = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZN11hb_vector_tIPcLb0EED2Ev.exit

bb.b:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.d, align 4, !tbaa !536
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !535
  tail call void @hb_free(ptr noundef %i.j) #20
  br label %_ZN11hb_vector_tIPcLb0EED2Ev.exit

_ZN11hb_vector_tIPcLb0EED2Ev.exit:                ; preds = %._crit_edge, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !350
  %i.m = add i32 %i.l, -1
  %spec.select.i.i.i8 = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i.i8, label %bb.c, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIPcLb0EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !352
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !351
  tail call void @hb_free(ptr noundef %i.p) #20
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIPcLb0EED2Ev.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !350
  %i.s = add i32 %i.r, -1
  %spec.select.i.i.i9 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i.i9, label %bb.d, label %_ZN11hb_vector_tIjLb0EED2Ev.exit10

bb.d:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !352
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !351
  tail call void @hb_free(ptr noundef %i.v) #20
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit10
end_hunk_0
