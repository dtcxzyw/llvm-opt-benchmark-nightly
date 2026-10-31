Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN2OT13tuple_delta_t14compile_deltasE10hb_array_tIKbES1_IKfES5_R11hb_vector_tIhLb0EERS6_IiLb0EEP15hb_alloc_pool_t:bb.a
  br i1 %exitcond109.not, label %._crit_edge101, label %.lr.ph100, !llvm.loop !1453

._crit_edge101:                                   ; preds = %bb.o, %.preheader
  %.056.lcssa = phi i32 [ 0, %.preheader ], [ %.258, %bb.o ] ; 2 uses
  %i.cc = load i32, ptr %i.c, align 4, !tbaa !211
  %.not64 = icmp eq i32 %.056.lcssa, %i.cc
  br i1 %.not64, label %_ZNK10hb_array_tIhE9sub_arrayEjPj.exit, label %.critedge

_ZNK10hb_array_tIhE9sub_arrayEjPj.exit:           ; preds = %._crit_edge101
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !349
  %i.ce = zext i32 %i.bo to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = load ptr, ptr %i.bl, align 8, !tbaa !354
  %.sroa.2.8.insert.ext.i.i.i.i73 = zext i32 %.056.lcssa to i64
  %i.ch = tail call noundef i32 @_ZN2OT11TupleValues14compile_unsafeE10hb_array_tIKiEPh(ptr %i.cg, i64 %.sroa.2.8.insert.ext.i.i.i.i73, ptr noundef %i.cf)
  %i.ci = add i32 %i.ch, %i.bo
  br label %bb.p

bb.p:                                             ; preds = %_ZNK10hb_array_tIhE9sub_arrayEjPj.exit, %bb.m
  %.162 = phi i32 [ %i.ci, %_ZNK10hb_array_tIhE9sub_arrayEjPj.exit ], [ %i.bo, %bb.m ]
  %i.cj = load i32, ptr %i.bk, align 4, !tbaa !348 ; 3 uses
  %i.ck = tail call i32 @llvm.smax.i32(i32 %.162, i32 0) ; 3 uses
  %.not.i.i75 = icmp ult i32 %i.ck, %i.cj
  br i1 %.not.i.i75, label %bb.q, label %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i

bb.q:                                             ; preds = %bb.p
  store i32 %i.ck, ptr %i.bk, align 4, !tbaa !348
  br label %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i

_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i:         ; preds = %bb.q, %bb.p
  %i.cl = phi i32 [ %i.cj, %bb.p ], [ %i.ck, %bb.q ] ; 2 uses
  %.not.i76 = icmp eq ptr %8, null
  br i1 %.not.i76, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i
  %i.cm = load i32, ptr %6, align 8, !tbaa !347
  %i.cn = add i32 %i.cm, -1
  %spec.select.i.i = icmp ult i32 %i.cn, -2
  br i1 %spec.select.i.i, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !349
  %i.cp = zext nneg i32 %i.cl to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  %i.cr = sub i32 %i.cj, %i.cl                    ; 4 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !523 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cw = icmp ne ptr %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not.i4.i = icmp ugt i32 %i.cr, %i.cy
  %or.cond.i.i = select i1 %i.cw, i1 true, i1 %.not.i4.i
  br i1 %or.cond.i.i, label %.critedge, label %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i:   ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !525
  %i.db = add i32 %i.da, %i.cr
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !525
  %i.dc = sub nuw i32 %i.cy, %i.cr
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !524
  %i.dd = sub nsw i64 0, %i.cs
  %i.de = getelementptr inbounds i8, ptr %i.cu, i64 %i.dd
  store ptr %i.de, ptr %i.ct, align 8, !tbaa !526
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.b, %bb.a, %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i, %bb.s, %bb.r, %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, %._crit_edge101, %bb.l
  %.8 = phi i1 [ true, %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i ], [ true, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ false, %bb.l ], [ false, %bb.b ], [ false, %._crit_edge101 ], [ true, %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i ], [ true, %bb.r ], [ true, %bb.s ], [ false, %bb.a ], [ false, %bb.n ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !353    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !103

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !43

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !103

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !354
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !354  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !103

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !211  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !103

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !354
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1457
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, !prof !190

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !353   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !354
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !353
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2OT11TupleValues14compile_unsafeE10hb_array_tIKiEPh(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.6.8.extract.trunc = trunc i64 %1 to i32  ; 10 uses
  %.not = icmp eq i32 %.sroa.6.8.extract.trunc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.a
  %i.a = and i64 %1, 4294967295                   ; 4 uses
  %scevgep242 = getelementptr i8, ptr %2, i64 65
  %scevgep287 = getelementptr i8, ptr %2, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph127, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit
  %.0126 = phi i32 [ 0, %.lr.ph127 ], [ %.1, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit ] ; 4 uses
  %.083125 = phi i32 [ 0, %.lr.ph127 ], [ %.184, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit ] ; 12 uses
  %i.b = zext i32 %.083125 to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !206  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.lr.ph120.preheader, label %bb.d

.lr.ph120.preheader:                              ; preds = %bb.b
  %i.f = zext i32 %.0126 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 3 uses
  %i.h = sub nuw i32 %.sroa.6.8.extract.trunc, %.083125 ; 3 uses
  %exitcond.not.i232 = icmp eq i32 %i.h, 1
  br i1 %exitcond.not.i232, label %..critedge.i_crit_edge, label %.lr.ph.i.lr.ph, !llvm.loop !1458

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph120.preheader
  br label %.lr.ph.i, !llvm.loop !1458

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph120
  %i.i = phi i32 [ 1, %.lr.ph.i.lr.ph ], [ %i.m, %.lr.ph120 ] ; 2 uses
  %indvars.iv.i118233 = phi i64 [ %i.b, %.lr.ph.i.lr.ph ], [ %indvars.iv.next.i, %.lr.ph120 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i118233, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !206
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.lr.ph120, label %.critedge.i.loopexit, !llvm.loop !1458

.lr.ph120:                                        ; preds = %.lr.ph.i
  %i.m = add i32 %i.i, 1                          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.m, %i.h
  br i1 %exitcond.not.i, label %.lr.ph120...critedge.i_crit_edge_crit_edge, label %.lr.ph.i, !llvm.loop !1458

.lr.ph120...critedge.i_crit_edge_crit_edge:       ; preds = %.lr.ph120
  br label %..critedge.i_crit_edge, !llvm.loop !1458

..critedge.i_crit_edge:                           ; preds = %.lr.ph120...critedge.i_crit_edge_crit_edge, %.lr.ph120.preheader
  br label %.critedge.i, !llvm.loop !1458

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  %i.n = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %..critedge.i_crit_edge
  %.3 = phi i32 [ %.sroa.6.8.extract.trunc, %..critedge.i_crit_edge ], [ %i.n, %.critedge.i.loopexit ] ; 2 uses
  %.013.lcssa.i = phi i32 [ %i.h, %..critedge.i_crit_edge ], [ %i.i, %.critedge.i.loopexit ] ; 4 uses
  %i.o = icmp ugt i32 %.013.lcssa.i, 63
  br i1 %i.o, label %.lr.ph23.preheader.i, label %._crit_edge.i

.lr.ph23.preheader.i:                             ; preds = %.critedge.i
  %i.p = add i32 %.013.lcssa.i, -64
  %i.q = lshr i32 %i.p, 6
  %narrow.i = add nuw nsw i32 %i.q, 1             ; 2 uses
  %i.r = zext nneg i32 %narrow.i to i64           ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 -65, i64 %i.r, i1 false), !tbaa !277
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.r
  %i.s = and i32 %.013.lcssa.i, 63
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph23.preheader.i, %.critedge.i
  %.015.lcssa.i = phi ptr [ %i.g, %.critedge.i ], [ %scevgep.i, %.lr.ph23.preheader.i ]
  %.114.lcssa.i = phi i32 [ %.013.lcssa.i, %.critedge.i ], [ %i.s, %.lr.ph23.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %.critedge.i ], [ %narrow.i, %.lr.ph23.preheader.i ] ; 2 uses
  %.not.i = icmp eq i32 %.114.lcssa.i, 0
  br i1 %.not.i, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.t = trunc nuw nsw i32 %.114.lcssa.i to i8
  %i.u = add nuw i8 %i.t, 127
  %i.v = or i8 %i.u, -128
  store i8 %i.v, ptr %.015.lcssa.i, align 1, !tbaa !277
  %i.w = add nuw nsw i32 %.0.lcssa.i, 1
  br label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit

bb.d:                                             ; preds = %bb.b
  %i.x = add i32 %i.d, 128
  %i.y = icmp ult i32 %i.x, 256
  br i1 %i.y, label %.lr.ph114.preheader, label %bb.g

.lr.ph114.preheader:                              ; preds = %bb.d
  %i.z = zext i32 %.0126 to i64                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.z ; 2 uses
  br label %.lr.ph114

.lr.ph.i51:                                       ; preds = %._crit_edge79.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !206 ; 2 uses
  %i.ad = add i32 %i.ac, 128
  %.not.i53 = icmp ult i32 %i.ad, 256
  br i1 %.not.i53, label %.lr.ph114, label %.thread.i.split.loop.exit

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph.i51
  %i.ae = phi i32 [ %i.ac, %.lr.ph.i51 ], [ 1, %.lr.ph114.preheader ]
  %indvars.iv.i52113 = phi i64 [ %i.ag, %.lr.ph.i51 ], [ %i.b, %.lr.ph114.preheader ] ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = add nuw i64 %indvars.iv.i52113, 1       ; 6 uses
  %i.ah = icmp samesign ult i64 %i.ag, %i.a
  %or.cond.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %bb.e, label %._crit_edge79.i

bb.e:                                             ; preds = %.lr.ph114
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !206
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.thread.i.split.loop.exit196, label %._crit_edge79.i

._crit_edge79.i:                                  ; preds = %bb.e, %.lr.ph114
  %exitcond.not.i54 = icmp eq i64 %i.ag, %i.a
  br i1 %exitcond.not.i54, label %.thread.i, label %.lr.ph.i51

.thread.i.split.loop.exit:                        ; preds = %.lr.ph.i51
  %indvars150.le = trunc i64 %i.ag to i32
  br label %.thread.i

.thread.i.split.loop.exit196:                     ; preds = %bb.e
  %indvars151.le = trunc i64 %indvars.iv.i52113 to i32
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge79.i, %.thread.i.split.loop.exit196, %.thread.i.split.loop.exit
  %.5.ph = phi i32 [ %indvars151.le, %.thread.i.split.loop.exit196 ], [ %indvars150.le, %.thread.i.split.loop.exit ], [ %.sroa.6.8.extract.trunc, %._crit_edge79.i ] ; 4 uses
  %i.al = sub i32 %.5.ph, %.083125                ; 3 uses
  %i.am = icmp ugt i32 %i.al, 63
  br i1 %i.am, label %.lr.ph61.i.preheader, label %._crit_edge.i48

.lr.ph61.i.preheader:                             ; preds = %.thread.i
  %i.an = add i32 %.5.ph, -64
  %i.ao = sub i32 %i.an, %.083125
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 65
  %3 = getelementptr i8, ptr %scevgep242, i64 %i.ar
  %i.as = getelementptr i8, ptr %3, i64 %i.z
  %scevgep243 = getelementptr i8, ptr %scevgep287, i64 %i.z
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %middle.block257
  %.04460.i = phi i32 [ %i.di, %middle.block257 ], [ 0, %.lr.ph61.i.preheader ]
  %.04559.i = phi i32 [ %i.dk, %middle.block257 ], [ %i.al, %.lr.ph61.i.preheader ]
  %.04758.i = phi i32 [ %i.dj, %middle.block257 ], [ %.083125, %.lr.ph61.i.preheader ] ; 15 uses
  %.04857.i = phi ptr [ %i.dh, %middle.block257 ], [ %i.aa, %.lr.ph61.i.preheader ] ; 18 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04857.i, i64 1 ; 5 uses
  store i8 63, ptr %.04857.i, align 1, !tbaa !277
  %i.au = icmp ugt i32 %.04758.i, -64
  br i1 %i.au, label %scalar.ph250.preheader, label %vector.memcheck239

scalar.ph250.preheader:                           ; preds = %vector.memcheck239, %.lr.ph61.i
  br label %scalar.ph250

vector.memcheck239:                               ; preds = %.lr.ph61.i
  %i.av = zext i32 %.04758.i to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  %4 = getelementptr i8, ptr %0, i64 %i.aw
  %scevgep246 = getelementptr i8, ptr %0, i64 %i.aw
  %scevgep244 = getelementptr i8, ptr %scevgep246, i64 256
  %bound0247 = icmp ult ptr %scevgep243, %scevgep244
  %bound1248 = icmp ult ptr %4, %i.as
  %found.conflict249 = and i1 %bound0247, %bound1248
  br i1 %found.conflict249, label %scalar.ph250.preheader, label %vector.body252

vector.body252:                                   ; preds = %vector.memcheck239
  %i.ax = zext i32 %.04758.i to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load254 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !206, !alias.scope !1485
  %wide.load255 = load <4 x i32>, ptr %i.az, align 4, !tbaa !206, !alias.scope !1485
  %i.ba = trunc <4 x i32> %wide.load254 to <4 x i8>
  %i.bb = trunc <4 x i32> %wide.load255 to <4 x i8>
  %i.bc = getelementptr inbounds nuw i8, ptr %.04857.i, i64 5
  store <4 x i8> %i.ba, ptr %i.at, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  %i.bd = add i32 %.04758.i, 8
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load254.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !206, !alias.scope !1485
  %wide.load255.1 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !206, !alias.scope !1485
  %i.bh = trunc <4 x i32> %wide.load254.1 to <4 x i8>
  %i.bi = trunc <4 x i32> %wide.load255.1 to <4 x i8>
  %i.bj = getelementptr inbounds nuw i8, ptr %.04857.i, i64 9
  %i.bk = getelementptr inbounds nuw i8, ptr %.04857.i, i64 13
  store <4 x i8> %i.bh, ptr %i.bj, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  store <4 x i8> %i.bi, ptr %i.bk, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  %i.bl = add i32 %.04758.i, 16
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load254.2 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !206, !alias.scope !1485
  %wide.load255.2 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !206, !alias.scope !1485
  %i.bp = trunc <4 x i32> %wide.load254.2 to <4 x i8>
  %i.bq = trunc <4 x i32> %wide.load255.2 to <4 x i8>
  %i.br = getelementptr inbounds nuw i8, ptr %.04857.i, i64 17
  %i.bs = getelementptr inbounds nuw i8, ptr %.04857.i, i64 21
  store <4 x i8> %i.bp, ptr %i.br, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  store <4 x i8> %i.bq, ptr %i.bs, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  %i.bt = add i32 %.04758.i, 24
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load254.3 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !206, !alias.scope !1485
  %wide.load255.3 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !206, !alias.scope !1485
  %i.bx = trunc <4 x i32> %wide.load254.3 to <4 x i8>
  %i.by = trunc <4 x i32> %wide.load255.3 to <4 x i8>
  %i.bz = getelementptr inbounds nuw i8, ptr %.04857.i, i64 25
  %i.ca = getelementptr inbounds nuw i8, ptr %.04857.i, i64 29
  store <4 x i8> %i.bx, ptr %i.bz, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  store <4 x i8> %i.by, ptr %i.ca, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  %i.cb = add i32 %.04758.i, 32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load254.4 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !206, !alias.scope !1485
  %wide.load255.4 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !206, !alias.scope !1485
  %i.cf = trunc <4 x i32> %wide.load254.4 to <4 x i8>
  %i.cg = trunc <4 x i32> %wide.load255.4 to <4 x i8>
  %i.ch = getelementptr inbounds nuw i8, ptr %.04857.i, i64 33
  %i.ci = getelementptr inbounds nuw i8, ptr %.04857.i, i64 37
  store <4 x i8> %i.cf, ptr %i.ch, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  store <4 x i8> %i.cg, ptr %i.ci, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  %i.cj = add i32 %.04758.i, 40
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load254.5 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !206, !alias.scope !1485
  %wide.load255.5 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !206, !alias.scope !1485
  %i.cn = trunc <4 x i32> %wide.load254.5 to <4 x i8>
  %i.co = trunc <4 x i32> %wide.load255.5 to <4 x i8>
  %i.cp = getelementptr inbounds nuw i8, ptr %.04857.i, i64 41
  %i.cq = getelementptr inbounds nuw i8, ptr %.04857.i, i64 45
  store <4 x i8> %i.cn, ptr %i.cp, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  store <4 x i8> %i.co, ptr %i.cq, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  %i.cr = add i32 %.04758.i, 48
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load254.6 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !206, !alias.scope !1485
  %wide.load255.6 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !206, !alias.scope !1485
  %i.cv = trunc <4 x i32> %wide.load254.6 to <4 x i8>
  %i.cw = trunc <4 x i32> %wide.load255.6 to <4 x i8>
  %i.cx = getelementptr inbounds nuw i8, ptr %.04857.i, i64 49
  %i.cy = getelementptr inbounds nuw i8, ptr %.04857.i, i64 53
  store <4 x i8> %i.cv, ptr %i.cx, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  store <4 x i8> %i.cw, ptr %i.cy, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  %i.cz = add i32 %.04758.i, 56
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load254.7 = load <4 x i32>, ptr %i.db, align 4, !tbaa !206, !alias.scope !1485
  %wide.load255.7 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !206, !alias.scope !1485
  %i.dd = trunc <4 x i32> %wide.load254.7 to <4 x i8>
  %i.de = trunc <4 x i32> %wide.load255.7 to <4 x i8>
  %i.df = getelementptr inbounds nuw i8, ptr %.04857.i, i64 57
  %i.dg = getelementptr inbounds nuw i8, ptr %.04857.i, i64 61
  store <4 x i8> %i.dd, ptr %i.df, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  store <4 x i8> %i.de, ptr %i.dg, align 1, !tbaa !277, !alias.scope !1486, !noalias !1485
  br label %middle.block257

middle.block257:                                  ; preds = %scalar.ph250, %vector.body252
  %i.dh = getelementptr inbounds nuw i8, ptr %.04857.i, i64 65 ; 2 uses
  %i.di = add i32 %.04460.i, 65                   ; 2 uses
  %i.dj = add i32 %.04758.i, 64                   ; 2 uses
  %i.dk = add i32 %.04559.i, -64                  ; 3 uses
  %i.dl = icmp ugt i32 %i.dk, 63
  br i1 %i.dl, label %.lr.ph61.i, label %._crit_edge.i48, !llvm.loop !1462

scalar.ph250:                                     ; preds = %scalar.ph250, %scalar.ph250.preheader
  %indvars.iv70.i = phi i64 [ 0, %scalar.ph250.preheader ], [ %indvars.iv.next71.i.3, %scalar.ph250 ] ; 6 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv70.i to i32
  %i.dn = add i32 %.04758.i, %i.dm
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !206
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv70.i
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !277
  %indvars.iv.next71.i = or disjoint i64 %indvars.iv70.i, 1 ; 2 uses
  %i.dt = trunc nuw nsw i64 %indvars.iv.next71.i to i32
  %i.du = add i32 %.04758.i, %i.dt
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !206
  %i.dy = trunc i32 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next71.i
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !277
  %indvars.iv.next71.i.1 = or disjoint i64 %indvars.iv70.i, 2 ; 2 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv.next71.i.1 to i32
  %i.eb = add i32 %.04758.i, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !206
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next71.i.1
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !277
  %indvars.iv.next71.i.2 = or disjoint i64 %indvars.iv70.i, 3 ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv.next71.i.2 to i32
  %i.ei = add i32 %.04758.i, %i.eh
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !206
  %i.em = trunc i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next71.i.2
  store i8 %i.em, ptr %i.en, align 1, !tbaa !277
  %indvars.iv.next71.i.3 = add nuw nsw i64 %indvars.iv70.i, 4 ; 2 uses
  %exitcond73.not.i.3 = icmp eq i64 %indvars.iv.next71.i.3, 64
  br i1 %exitcond73.not.i.3, label %middle.block257, label %scalar.ph250, !llvm.loop !1463

._crit_edge.i48:                                  ; preds = %middle.block257, %.thread.i
  %.048.lcssa.i = phi ptr [ %i.aa, %.thread.i ], [ %i.dh, %middle.block257 ] ; 3 uses
  %.047.lcssa.i = phi i32 [ %.083125, %.thread.i ], [ %i.dj, %middle.block257 ] ; 8 uses
  %.045.lcssa.i = phi i32 [ %i.al, %.thread.i ], [ %i.dk, %middle.block257 ] ; 5 uses
  %.044.lcssa.i = phi i32 [ 0, %.thread.i ], [ %i.di, %middle.block257 ] ; 2 uses
  %.not52.i = icmp eq i32 %.045.lcssa.i, 0
  br i1 %.not52.i, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i48
  %i.eo = trunc nuw nsw i32 %.045.lcssa.i to i8
  %i.ep = add nsw i8 %i.eo, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.lcssa.i, i64 1 ; 7 uses
  store i8 %i.ep, ptr %.048.lcssa.i, align 1, !tbaa !277
  %wide.trip.count77.i = zext nneg i32 %.045.lcssa.i to i64 ; 8 uses
  %min.iters.check = icmp samesign ult i32 %.045.lcssa.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.f
  %i.er = add nsw i64 %wide.trip.count77.i, -1    ; 2 uses
  %i.es = trunc nsw i64 %i.er to i32
  %i.et = xor i32 %.047.lcssa.i, -1
  %i.eu = icmp ult i32 %i.et, %i.es
  %i.ev = icmp ugt i64 %i.er, 4294967295
  %i.ew = or i1 %i.eu, %i.ev
  br i1 %i.ew, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %.048.lcssa.i, i64 %wide.trip.count77.i
  %scevgep234 = getelementptr i8, ptr %scevgep, i64 1
  %i.ex = zext i32 %.047.lcssa.i to i64           ; 2 uses
  %i.ey = shl nuw nsw i64 %i.ex, 2
  %scevgep235 = getelementptr i8, ptr %0, i64 %i.ey
  %i.ez = add nuw nsw i64 %i.ex, %wide.trip.count77.i
  %i.fa = shl nuw nsw i64 %i.ez, 2
  %scevgep236 = getelementptr i8, ptr %0, i64 %i.fa
  %bound0 = icmp ult ptr %i.eq, %scevgep236
  %bound1 = icmp ult ptr %scevgep235, %scevgep234
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count77.i, 56       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fb = trunc nuw nsw i64 %index to i32
  %i.fc = add i32 %.047.lcssa.i, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load = load <4 x i32>, ptr %i.fe, align 4, !tbaa !206, !alias.scope !1487
  %wide.load237 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !206, !alias.scope !1487
  %i.fg = trunc <4 x i32> %wide.load to <4 x i8>
  %i.fh = trunc <4 x i32> %wide.load237 to <4 x i8>
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eq, i64 %index ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store <4 x i8> %i.fg, ptr %i.fi, align 1, !tbaa !277, !alias.scope !1488, !noalias !1487
  store <4 x i8> %i.fh, ptr %i.fj, align 1, !tbaa !277, !alias.scope !1488, !noalias !1487
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !1467

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count77.i
  br i1 %cmp.n, label %.loopexit307, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %bb.f, %middle.block
  %indvars.iv74.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %bb.f ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter342 = and i64 %wide.trip.count77.i, 3  ; 2 uses
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv74.i.prol = phi i64 [ %indvars.iv.next75.i.prol, %scalar.ph.prol ], [ %indvars.iv74.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter344 = phi i64 [ %prol.iter344.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fl = trunc nuw nsw i64 %indvars.iv74.i.prol to i32
  %i.fm = add i32 %.047.lcssa.i, %i.fl
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !206
  %i.fq = trunc i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv74.i.prol
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !277
  %indvars.iv.next75.i.prol = add nuw nsw i64 %indvars.iv74.i.prol, 1 ; 2 uses
  %prol.iter344.next = add i64 %prol.iter344, 1   ; 2 uses
  %prol.iter344.cmp.not = icmp eq i64 %prol.iter344.next, %xtraiter342
  br i1 %prol.iter344.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1468

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv74.i.unr = phi i64 [ %indvars.iv74.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next75.i.prol, %scalar.ph.prol ]
  %i.fs = sub nsw i64 %indvars.iv74.i.ph, %wide.trip.count77.i
  %i.ft = icmp ugt i64 %i.fs, -4
  br i1 %i.ft, label %.loopexit307, label %scalar.ph

.loopexit307:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fu = add nuw nsw i32 %.045.lcssa.i, 1
  %i.fv = add i32 %i.fu, %.044.lcssa.i
  br label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.3, %scalar.ph ], [ %indvars.iv74.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fw = trunc nuw nsw i64 %indvars.iv74.i to i32
  %i.fx = add i32 %.047.lcssa.i, %i.fw
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !206
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv74.i
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !277
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.gd = trunc nuw nsw i64 %indvars.iv.next75.i to i32
  %i.ge = add i32 %.047.lcssa.i, %i.gd
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !206
  %i.gi = trunc i32 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv.next75.i
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !277
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %i.gk = trunc nuw nsw i64 %indvars.iv.next75.i.1 to i32
  %i.gl = add i32 %.047.lcssa.i, %i.gk
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !206
  %i.gp = trunc i32 %i.go to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv.next75.i.1
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !277
  %indvars.iv.next75.i.2 = add nuw nsw i64 %indvars.iv74.i, 3 ; 2 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next75.i.2 to i32
  %i.gs = add i32 %.047.lcssa.i, %i.gr
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !206
  %i.gw = trunc i32 %i.gv to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv.next75.i.2
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !277
  %indvars.iv.next75.i.3 = add nuw nsw i64 %indvars.iv74.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next75.i.3, %wide.trip.count77.i
  br i1 %exitcond78.not.i.3, label %.loopexit307, label %scalar.ph, !llvm.loop !1469

bb.g:                                             ; preds = %bb.d
  %i.gy = add i32 %i.d, 32768
  %i.gz = icmp ult i32 %i.gy, 65536
  %i.ha = zext i32 %.0126 to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ha ; 4 uses
  br i1 %i.gz, label %.lr.ph107, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %indvars.iv.next.i73228 = add nuw nsw i64 %i.b, 1 ; 2 uses
  %i.hc = trunc i64 %indvars.iv.next.i73228 to i32 ; 2 uses
  %exitcond.not.i74229 = icmp eq i32 %i.hc, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not.i74229, label %.thread.i65, label %.lr.ph.i71

.lr.ph.i60:                                       ; preds = %._crit_edge91.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hk
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !206 ; 3 uses
  %i.hf = add i32 %i.he, -32768
  %.not.i62 = icmp ult i32 %i.hf, -65536
  %i.hg = icmp eq i32 %i.he, 0
  %or.cond.i63 = or i1 %i.hg, %.not.i62
  br i1 %or.cond.i63, label %.thread.i55.split.loop.exit, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.g, %.lr.ph.i60
  %i.hh = phi i32 [ %i.he, %.lr.ph.i60 ], [ %i.d, %bb.g ]
  %indvars.iv.i61106 = phi i64 [ %i.hk, %.lr.ph.i60 ], [ %i.b, %bb.g ] ; 2 uses
  %i.hi = add nsw i32 %i.hh, 128
  %i.hj = icmp ult i32 %i.hi, 256
  %i.hk = add nuw i64 %indvars.iv.i61106, 1       ; 6 uses
  %i.hl = icmp samesign ult i64 %i.hk, %i.a
  %or.cond103.i = select i1 %i.hj, i1 %i.hl, i1 false
  br i1 %or.cond103.i, label %bb.h, label %._crit_edge91.i

bb.h:                                             ; preds = %.lr.ph107
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hk
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !206
  %i.ho = add i32 %i.hn, 128
  %i.hp = icmp ult i32 %i.ho, 256
  br i1 %i.hp, label %.thread.i55.split.loop.exit191, label %._crit_edge91.i

._crit_edge91.i:                                  ; preds = %bb.h, %.lr.ph107
  %exitcond.not.i64 = icmp eq i64 %i.hk, %i.a
  br i1 %exitcond.not.i64, label %.thread.i55, label %.lr.ph.i60

.thread.i55.split.loop.exit:                      ; preds = %.lr.ph.i60
  %indvars.le = trunc i64 %i.hk to i32
  br label %.thread.i55

.thread.i55.split.loop.exit191:                   ; preds = %bb.h
  %indvars148.le = trunc i64 %indvars.iv.i61106 to i32
  br label %.thread.i55

.thread.i55:                                      ; preds = %._crit_edge91.i, %.thread.i55.split.loop.exit191, %.thread.i55.split.loop.exit
  %.7 = phi i32 [ %indvars.le, %.thread.i55.split.loop.exit ], [ %indvars148.le, %.thread.i55.split.loop.exit191 ], [ %.sroa.6.8.extract.trunc, %._crit_edge91.i ] ; 8 uses
  %i.hq = sub i32 %.7, %.083125                   ; 3 uses
  %i.hr = icmp ugt i32 %i.hq, 63
  br i1 %i.hr, label %.lr.ph69.i, label %._crit_edge.i56

.lr.ph69.i:                                       ; preds = %.thread.i55, %middle.block303
  %.068.i = phi ptr [ %.lcssa212, %middle.block303 ], [ %i.hb, %.thread.i55 ] ; 19 uses
  %.04767.i = phi i32 [ %i.kj, %middle.block303 ], [ %.083125, %.thread.i55 ] ; 15 uses
  %.05066.i = phi i32 [ %i.ki, %middle.block303 ], [ 0, %.thread.i55 ]
  %.05365.i = phi i32 [ %i.kk, %middle.block303 ], [ %i.hq, %.thread.i55 ]
  %i.hs = getelementptr i8, ptr %.068.i, i64 1    ; 3 uses
  store i8 127, ptr %.068.i, align 1, !tbaa !277
  %i.ht = icmp ugt i32 %.04767.i, -64
  br i1 %i.ht, label %scalar.ph292.preheader, label %vector.memcheck284

scalar.ph292.preheader:                           ; preds = %vector.memcheck284, %.lr.ph69.i
  br label %scalar.ph292

vector.memcheck284:                               ; preds = %.lr.ph69.i
  %5 = getelementptr i8, ptr %.068.i, i64 129
  %i.hu = zext i32 %.04767.i to i64
  %i.hv = shl nuw nsw i64 %i.hu, 2                ; 2 uses
  %scevgep288 = getelementptr i8, ptr %0, i64 %i.hv
  %scevgep286 = getelementptr i8, ptr %0, i64 %i.hv
  %scevgep285 = getelementptr i8, ptr %scevgep286, i64 256
  %bound0289 = icmp ult ptr %i.hs, %scevgep285
  %bound1290 = icmp ult ptr %scevgep288, %5
  %found.conflict291 = and i1 %bound0289, %bound1290
  br i1 %found.conflict291, label %scalar.ph292.preheader, label %vector.body294

vector.body294:                                   ; preds = %vector.memcheck284
  %i.hw = getelementptr i8, ptr %.068.i, i64 129
  %next.gep297 = getelementptr i8, ptr %.068.i, i64 9
  %i.hx = zext i32 %.04767.i to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hx ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %wide.load298 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %wide.load299 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %i.ia = lshr <4 x i32> %wide.load298, splat (i32 8)
  %i.ib = lshr <4 x i32> %wide.load299, splat (i32 8)
  %i.ic = shufflevector <4 x i32> %i.ia, <4 x i32> %wide.load298, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec300 = trunc <8 x i32> %i.ic to <8 x i8>
  store <8 x i8> %interleaved.vec300, ptr %i.hs, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %i.id = shufflevector <4 x i32> %i.ib, <4 x i32> %wide.load299, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec301 = trunc <8 x i32> %i.id to <8 x i8>
  store <8 x i8> %interleaved.vec301, ptr %next.gep297, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %next.gep296.1 = getelementptr i8, ptr %.068.i, i64 17
  %next.gep297.1 = getelementptr i8, ptr %.068.i, i64 25
  %i.ie = add i32 %.04767.i, 8
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load298.1 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %wide.load299.1 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %i.ii = lshr <4 x i32> %wide.load298.1, splat (i32 8)
  %i.ij = lshr <4 x i32> %wide.load299.1, splat (i32 8)
  %i.ik = shufflevector <4 x i32> %i.ii, <4 x i32> %wide.load298.1, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec300.1 = trunc <8 x i32> %i.ik to <8 x i8>
  store <8 x i8> %interleaved.vec300.1, ptr %next.gep296.1, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %i.il = shufflevector <4 x i32> %i.ij, <4 x i32> %wide.load299.1, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec301.1 = trunc <8 x i32> %i.il to <8 x i8>
  store <8 x i8> %interleaved.vec301.1, ptr %next.gep297.1, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %next.gep296.2 = getelementptr i8, ptr %.068.i, i64 33
  %next.gep297.2 = getelementptr i8, ptr %.068.i, i64 41
  %i.im = add i32 %.04767.i, 16
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load298.2 = load <4 x i32>, ptr %i.io, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %wide.load299.2 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %i.iq = lshr <4 x i32> %wide.load298.2, splat (i32 8)
  %i.ir = lshr <4 x i32> %wide.load299.2, splat (i32 8)
  %i.is = shufflevector <4 x i32> %i.iq, <4 x i32> %wide.load298.2, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec300.2 = trunc <8 x i32> %i.is to <8 x i8>
  store <8 x i8> %interleaved.vec300.2, ptr %next.gep296.2, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %i.it = shufflevector <4 x i32> %i.ir, <4 x i32> %wide.load299.2, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec301.2 = trunc <8 x i32> %i.it to <8 x i8>
  store <8 x i8> %interleaved.vec301.2, ptr %next.gep297.2, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %next.gep296.3 = getelementptr i8, ptr %.068.i, i64 49
  %next.gep297.3 = getelementptr i8, ptr %.068.i, i64 57
  %i.iu = add i32 %.04767.i, 24
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load298.3 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %wide.load299.3 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %i.iy = lshr <4 x i32> %wide.load298.3, splat (i32 8)
  %i.iz = lshr <4 x i32> %wide.load299.3, splat (i32 8)
  %i.ja = shufflevector <4 x i32> %i.iy, <4 x i32> %wide.load298.3, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec300.3 = trunc <8 x i32> %i.ja to <8 x i8>
  store <8 x i8> %interleaved.vec300.3, ptr %next.gep296.3, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %i.jb = shufflevector <4 x i32> %i.iz, <4 x i32> %wide.load299.3, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec301.3 = trunc <8 x i32> %i.jb to <8 x i8>
  store <8 x i8> %interleaved.vec301.3, ptr %next.gep297.3, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %next.gep296.4 = getelementptr i8, ptr %.068.i, i64 65
  %next.gep297.4 = getelementptr i8, ptr %.068.i, i64 73
  %i.jc = add i32 %.04767.i, 32
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load298.4 = load <4 x i32>, ptr %i.je, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %wide.load299.4 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %i.jg = lshr <4 x i32> %wide.load298.4, splat (i32 8)
  %i.jh = lshr <4 x i32> %wide.load299.4, splat (i32 8)
  %i.ji = shufflevector <4 x i32> %i.jg, <4 x i32> %wide.load298.4, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec300.4 = trunc <8 x i32> %i.ji to <8 x i8>
  store <8 x i8> %interleaved.vec300.4, ptr %next.gep296.4, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %i.jj = shufflevector <4 x i32> %i.jh, <4 x i32> %wide.load299.4, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec301.4 = trunc <8 x i32> %i.jj to <8 x i8>
  store <8 x i8> %interleaved.vec301.4, ptr %next.gep297.4, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %next.gep296.5 = getelementptr i8, ptr %.068.i, i64 81
  %next.gep297.5 = getelementptr i8, ptr %.068.i, i64 89
  %i.jk = add i32 %.04767.i, 40
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load298.5 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %wide.load299.5 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %i.jo = lshr <4 x i32> %wide.load298.5, splat (i32 8)
  %i.jp = lshr <4 x i32> %wide.load299.5, splat (i32 8)
  %i.jq = shufflevector <4 x i32> %i.jo, <4 x i32> %wide.load298.5, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec300.5 = trunc <8 x i32> %i.jq to <8 x i8>
  store <8 x i8> %interleaved.vec300.5, ptr %next.gep296.5, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %i.jr = shufflevector <4 x i32> %i.jp, <4 x i32> %wide.load299.5, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec301.5 = trunc <8 x i32> %i.jr to <8 x i8>
  store <8 x i8> %interleaved.vec301.5, ptr %next.gep297.5, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %next.gep296.6 = getelementptr i8, ptr %.068.i, i64 97
  %next.gep297.6 = getelementptr i8, ptr %.068.i, i64 105
  %i.js = add i32 %.04767.i, 48
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jt ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %wide.load298.6 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %wide.load299.6 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %i.jw = lshr <4 x i32> %wide.load298.6, splat (i32 8)
  %i.jx = lshr <4 x i32> %wide.load299.6, splat (i32 8)
  %i.jy = shufflevector <4 x i32> %i.jw, <4 x i32> %wide.load298.6, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec300.6 = trunc <8 x i32> %i.jy to <8 x i8>
  store <8 x i8> %interleaved.vec300.6, ptr %next.gep296.6, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %i.jz = shufflevector <4 x i32> %i.jx, <4 x i32> %wide.load299.6, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec301.6 = trunc <8 x i32> %i.jz to <8 x i8>
  store <8 x i8> %interleaved.vec301.6, ptr %next.gep297.6, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %next.gep296.7 = getelementptr i8, ptr %.068.i, i64 113
  %next.gep297.7 = getelementptr i8, ptr %.068.i, i64 121
  %i.ka = add i32 %.04767.i, 56
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kb ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %wide.load298.7 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %wide.load299.7 = load <4 x i32>, ptr %i.kd, align 4, !tbaa !206, !alias.scope !1489 ; 2 uses
  %i.ke = lshr <4 x i32> %wide.load298.7, splat (i32 8)
  %i.kf = lshr <4 x i32> %wide.load299.7, splat (i32 8)
  %i.kg = shufflevector <4 x i32> %i.ke, <4 x i32> %wide.load298.7, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec300.7 = trunc <8 x i32> %i.kg to <8 x i8>
  store <8 x i8> %interleaved.vec300.7, ptr %next.gep296.7, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  %i.kh = shufflevector <4 x i32> %i.kf, <4 x i32> %wide.load299.7, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec301.7 = trunc <8 x i32> %i.kh to <8 x i8>
  store <8 x i8> %interleaved.vec301.7, ptr %next.gep297.7, align 1, !tbaa !277, !alias.scope !1490, !noalias !1489
  br label %middle.block303

middle.block303:                                  ; preds = %scalar.ph292, %vector.body294
  %.lcssa212 = phi ptr [ %i.hw, %vector.body294 ], [ %i.mc, %scalar.ph292 ] ; 2 uses
  %i.ki = add i32 %.05066.i, 129                  ; 2 uses
  %i.kj = add i32 %.04767.i, 64                   ; 2 uses
  %i.kk = add i32 %.05365.i, -64                  ; 3 uses
  %i.kl = icmp ugt i32 %i.kk, 63
  br i1 %i.kl, label %.lr.ph69.i, label %._crit_edge.i56, !llvm.loop !1473

scalar.ph292:                                     ; preds = %scalar.ph292, %scalar.ph292.preheader
  %indvars.iv84.i = phi i64 [ 0, %scalar.ph292.preheader ], [ %indvars.iv.next85.i.3, %scalar.ph292 ] ; 5 uses
  %.164.i = phi ptr [ %i.hs, %scalar.ph292.preheader ], [ %i.mc, %scalar.ph292 ] ; 9 uses
  %i.km = trunc nuw nsw i64 %indvars.iv84.i to i32
  %i.kn = add i32 %.04767.i, %i.km
  %i.ko = zext i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !206 ; 2 uses
  %i.kr = lshr i32 %i.kq, 8
  %i.ks = trunc i32 %i.kr to i8
  %i.kt = getelementptr inbounds nuw i8, ptr %.164.i, i64 1
  store i8 %i.ks, ptr %.164.i, align 1, !tbaa !277
  %i.ku = trunc i32 %i.kq to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %.164.i, i64 2
  store i8 %i.ku, ptr %i.kt, align 1, !tbaa !277
  %i.kw = trunc i64 %indvars.iv84.i to i32
  %i.kx = or disjoint i32 %i.kw, 1
  %i.ky = add i32 %.04767.i, %i.kx
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !206 ; 2 uses
  %i.lc = lshr i32 %i.lb, 8
  %i.ld = trunc i32 %i.lc to i8
  %i.le = getelementptr inbounds nuw i8, ptr %.164.i, i64 3
  store i8 %i.ld, ptr %i.kv, align 1, !tbaa !277
  %i.lf = trunc i32 %i.lb to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %.164.i, i64 4
  store i8 %i.lf, ptr %i.le, align 1, !tbaa !277
  %i.lh = trunc i64 %indvars.iv84.i to i32
  %i.li = or disjoint i32 %i.lh, 2
  %i.lj = add i32 %.04767.i, %i.li
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !206 ; 2 uses
  %i.ln = lshr i32 %i.lm, 8
  %i.lo = trunc i32 %i.ln to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %.164.i, i64 5
  store i8 %i.lo, ptr %i.lg, align 1, !tbaa !277
  %i.lq = trunc i32 %i.lm to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %.164.i, i64 6
  store i8 %i.lq, ptr %i.lp, align 1, !tbaa !277
  %i.ls = trunc i64 %indvars.iv84.i to i32
  %i.lt = or disjoint i32 %i.ls, 3
  %i.lu = add i32 %.04767.i, %i.lt
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !206 ; 2 uses
  %i.ly = lshr i32 %i.lx, 8
  %i.lz = trunc i32 %i.ly to i8
  %i.ma = getelementptr inbounds nuw i8, ptr %.164.i, i64 7
  store i8 %i.lz, ptr %i.lr, align 1, !tbaa !277
  %i.mb = trunc i32 %i.lx to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %.164.i, i64 8 ; 2 uses
  store i8 %i.mb, ptr %i.ma, align 1, !tbaa !277
  %indvars.iv.next85.i.3 = add nuw nsw i64 %indvars.iv84.i, 4 ; 2 uses
  %exitcond87.not.i.3 = icmp eq i64 %indvars.iv.next85.i.3, 64
  br i1 %exitcond87.not.i.3, label %middle.block303, label %scalar.ph292, !llvm.loop !1474

._crit_edge.i56:                                  ; preds = %middle.block303, %.thread.i55
  %.053.lcssa.i = phi i32 [ %i.hq, %.thread.i55 ], [ %i.kk, %middle.block303 ] ; 2 uses
  %.050.lcssa.i = phi i32 [ 0, %.thread.i55 ], [ %i.ki, %middle.block303 ] ; 2 uses
  %.047.lcssa.i57 = phi i32 [ %.083125, %.thread.i55 ], [ %i.kj, %middle.block303 ] ; 2 uses
  %.0.lcssa.i58 = phi ptr [ %i.hb, %.thread.i55 ], [ %.lcssa212, %middle.block303 ] ; 3 uses
  %.not58.i = icmp eq i32 %.053.lcssa.i, 0
  br i1 %.not58.i, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i56
  %i.md = trunc nuw nsw i32 %.053.lcssa.i to i8
  %i.me = add nsw i8 %i.md, -1
  %i.mf = or i8 %i.me, 64
  store i8 %i.mf, ptr %.0.lcssa.i58, align 1, !tbaa !277
  %i.mg = add i32 %.050.lcssa.i, 1                ; 4 uses
  %i.mh = icmp ult i32 %.047.lcssa.i57, %.7
  br i1 %i.mh, label %.lr.ph77.preheader.i, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit

.lr.ph77.preheader.i:                             ; preds = %bb.i
  %i.mi = getelementptr i8, ptr %.0.lcssa.i58, i64 1 ; 6 uses
  %i.mj = zext i32 %.047.lcssa.i57 to i64         ; 7 uses
  %i.mk = zext i32 %.7 to i64                     ; 6 uses
  %i.ml = sub nsw i64 %i.mk, %i.mj                ; 3 uses
  %min.iters.check268 = icmp ult i64 %i.ml, 8
  br i1 %min.iters.check268, label %.lr.ph77.i.preheader, label %vector.memcheck259

vector.memcheck259:                               ; preds = %.lr.ph77.preheader.i
  %6 = shl nuw nsw i64 %i.mk, 1
  %7 = shl nuw nsw i64 %i.mj, 1
  %8 = or disjoint i64 %6, 1
  %9 = sub nsw i64 %8, %7
  %scevgep261 = getelementptr i8, ptr %.0.lcssa.i58, i64 %9
  %i.mm = shl nuw nsw i64 %i.mj, 2
  %scevgep262 = getelementptr i8, ptr %0, i64 %i.mm
  %i.mn = shl nuw nsw i64 %i.mk, 2
  %scevgep263 = getelementptr i8, ptr %0, i64 %i.mn
  %bound0264 = icmp ult ptr %i.mi, %scevgep263
  %bound1265 = icmp ult ptr %scevgep262, %scevgep261
  %found.conflict266 = and i1 %bound0264, %bound1265
  br i1 %found.conflict266, label %.lr.ph77.i.preheader, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck259
  %n.vec270 = and i64 %i.ml, -8                   ; 4 uses
  %i.mo = add nsw i64 %n.vec270, %i.mj
  %i.mp = shl nsw i64 %n.vec270, 1
  %i.mq = getelementptr i8, ptr %i.mi, i64 %i.mp
  %i.mr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.mg, i64 0
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.mj
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph269
  %index272 = phi i64 [ 0, %vector.ph269 ], [ %index.next278, %vector.body271 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.mr, %vector.ph269 ], [ %i.mz, %vector.body271 ]
  %vec.phi273 = phi <4 x i32> [ zeroinitializer, %vector.ph269 ], [ %i.na, %vector.body271 ]
  %i.ms = shl i64 %index272, 1                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.mi, i64 %i.ms
  %i.mt = getelementptr i8, ptr %i.mi, i64 %i.ms
  %next.gep274 = getelementptr i8, ptr %i.mt, i64 8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index272 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load275 = load <4 x i32>, ptr %gep, align 4, !tbaa !206, !alias.scope !1491 ; 2 uses
  %wide.load276 = load <4 x i32>, ptr %i.mu, align 4, !tbaa !206, !alias.scope !1491 ; 2 uses
  %i.mv = lshr <4 x i32> %wide.load275, splat (i32 8)
  %i.mw = lshr <4 x i32> %wide.load276, splat (i32 8)
  %i.mx = shufflevector <4 x i32> %i.mv, <4 x i32> %wide.load275, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.mx to <8 x i8>
  store <8 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !277, !alias.scope !1492, !noalias !1491
  %i.my = shufflevector <4 x i32> %i.mw, <4 x i32> %wide.load276, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec277 = trunc <8 x i32> %i.my to <8 x i8>
  store <8 x i8> %interleaved.vec277, ptr %next.gep274, align 1, !tbaa !277, !alias.scope !1492, !noalias !1491
  %i.mz = add <4 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.na = add <4 x i32> %vec.phi273, splat (i32 2) ; 2 uses
  %index.next278 = add nuw i64 %index272, 8       ; 2 uses
  %i.nb = icmp eq i64 %index.next278, %n.vec270
  br i1 %i.nb, label %middle.block279, label %vector.body271, !llvm.loop !1478

middle.block279:                                  ; preds = %vector.body271
  %bin.rdx = add <4 x i32> %i.na, %i.mz
  %i.nc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n280 = icmp eq i64 %i.ml, %n.vec270
  br i1 %cmp.n280, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph77.i.preheader

.lr.ph77.i.preheader:                             ; preds = %vector.memcheck259, %.lr.ph77.preheader.i, %middle.block279
  %indvars.iv88.i.ph = phi i64 [ %i.mj, %vector.memcheck259 ], [ %i.mj, %.lr.ph77.preheader.i ], [ %i.mo, %middle.block279 ] ; 4 uses
  %.275.i.ph = phi ptr [ %i.mi, %vector.memcheck259 ], [ %i.mi, %.lr.ph77.preheader.i ], [ %i.mq, %middle.block279 ] ; 2 uses
  %.25273.i.ph = phi i32 [ %i.mg, %vector.memcheck259 ], [ %i.mg, %.lr.ph77.preheader.i ], [ %i.nc, %middle.block279 ] ; 2 uses
  %i.nd = sub nsw i64 %i.mk, %indvars.iv88.i.ph
  %xtraiter340 = and i64 %i.nd, 3                 ; 2 uses
  %lcmp.mod341.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod341.not, label %.lr.ph77.i.prol.loopexit, label %.lr.ph77.i.prol

.lr.ph77.i.prol:                                  ; preds = %.lr.ph77.i.preheader, %.lr.ph77.i.prol
  %indvars.iv88.i.prol = phi i64 [ %indvars.iv.next89.i.prol, %.lr.ph77.i.prol ], [ %indvars.iv88.i.ph, %.lr.ph77.i.preheader ] ; 2 uses
  %.275.i.prol = phi ptr [ %i.nk, %.lr.ph77.i.prol ], [ %.275.i.ph, %.lr.ph77.i.preheader ] ; 3 uses
  %.25273.i.prol = phi i32 [ %i.nl, %.lr.ph77.i.prol ], [ %.25273.i.ph, %.lr.ph77.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph77.i.prol ], [ 0, %.lr.ph77.i.preheader ]
  %indvars.iv.next89.i.prol = add nuw nsw i64 %indvars.iv88.i.prol, 1 ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv88.i.prol
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !206 ; 2 uses
  %i.ng = lshr i32 %i.nf, 8
  %i.nh = trunc i32 %i.ng to i8
  %i.ni = getelementptr inbounds nuw i8, ptr %.275.i.prol, i64 1
  store i8 %i.nh, ptr %.275.i.prol, align 1, !tbaa !277
  %i.nj = trunc i32 %i.nf to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %.275.i.prol, i64 2 ; 2 uses
  store i8 %i.nj, ptr %i.ni, align 1, !tbaa !277
  %i.nl = add i32 %.25273.i.prol, 2               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter340
  br i1 %prol.iter.cmp.not, label %.lr.ph77.i.prol.loopexit, label %.lr.ph77.i.prol, !llvm.loop !1479

.lr.ph77.i.prol.loopexit:                         ; preds = %.lr.ph77.i.prol, %.lr.ph77.i.preheader
  %.lcssa327.unr = phi i32 [ poison, %.lr.ph77.i.preheader ], [ %i.nl, %.lr.ph77.i.prol ]
  %indvars.iv88.i.unr = phi i64 [ %indvars.iv88.i.ph, %.lr.ph77.i.preheader ], [ %indvars.iv.next89.i.prol, %.lr.ph77.i.prol ]
  %.275.i.unr = phi ptr [ %.275.i.ph, %.lr.ph77.i.preheader ], [ %i.nk, %.lr.ph77.i.prol ]
  %.25273.i.unr = phi i32 [ %.25273.i.ph, %.lr.ph77.i.preheader ], [ %i.nl, %.lr.ph77.i.prol ]
  %i.nm = sub nsw i64 %indvars.iv88.i.ph, %i.mk
  %i.nn = icmp ugt i64 %i.nm, -4
  br i1 %i.nn, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph77.i

.lr.ph77.i:                                       ; preds = %.lr.ph77.i.prol.loopexit, %.lr.ph77.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i.3, %.lr.ph77.i ], [ %indvars.iv88.i.unr, %.lr.ph77.i.prol.loopexit ] ; 5 uses
  %.275.i = phi ptr [ %i.os, %.lr.ph77.i ], [ %.275.i.unr, %.lr.ph77.i.prol.loopexit ] ; 9 uses
  %.25273.i = phi i32 [ %i.ot, %.lr.ph77.i ], [ %.25273.i.unr, %.lr.ph77.i.prol.loopexit ]
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv88.i
  %i.np = load i32, ptr %i.no, align 4, !tbaa !206 ; 2 uses
  %i.nq = lshr i32 %i.np, 8
  %i.nr = trunc i32 %i.nq to i8
  %i.ns = getelementptr inbounds nuw i8, ptr %.275.i, i64 1
  store i8 %i.nr, ptr %.275.i, align 1, !tbaa !277
  %i.nt = trunc i32 %i.np to i8
  %i.nu = getelementptr inbounds nuw i8, ptr %.275.i, i64 2
  store i8 %i.nt, ptr %i.ns, align 1, !tbaa !277
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv88.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !206 ; 2 uses
  %i.ny = lshr i32 %i.nx, 8
  %i.nz = trunc i32 %i.ny to i8
  %i.oa = getelementptr inbounds nuw i8, ptr %.275.i, i64 3
  store i8 %i.nz, ptr %i.nu, align 1, !tbaa !277
  %i.ob = trunc i32 %i.nx to i8
  %i.oc = getelementptr inbounds nuw i8, ptr %.275.i, i64 4
  store i8 %i.ob, ptr %i.oa, align 1, !tbaa !277
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv88.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !206 ; 2 uses
  %i.og = lshr i32 %i.of, 8
  %i.oh = trunc i32 %i.og to i8
  %i.oi = getelementptr inbounds nuw i8, ptr %.275.i, i64 5
  store i8 %i.oh, ptr %i.oc, align 1, !tbaa !277
  %i.oj = trunc i32 %i.of to i8
  %i.ok = getelementptr inbounds nuw i8, ptr %.275.i, i64 6
  store i8 %i.oj, ptr %i.oi, align 1, !tbaa !277
  %indvars.iv.next89.i.3 = add nuw nsw i64 %indvars.iv88.i, 4 ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv88.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  %i.on = load i32, ptr %i.om, align 4, !tbaa !206 ; 2 uses
  %i.oo = lshr i32 %i.on, 8
  %i.op = trunc i32 %i.oo to i8
  %i.oq = getelementptr inbounds nuw i8, ptr %.275.i, i64 7
  store i8 %i.op, ptr %i.ok, align 1, !tbaa !277
  %i.or = trunc i32 %i.on to i8
  %i.os = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  store i8 %i.or, ptr %i.oq, align 1, !tbaa !277
  %i.ot = add i32 %.25273.i, 8                    ; 2 uses
  %exitcond149.not.3 = icmp eq i64 %indvars.iv.next89.i.3, %i.mk
  br i1 %exitcond149.not.3, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph77.i, !llvm.loop !1480

.lr.ph.i71:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ou = phi i32 [ %i.oz, %.lr.ph ], [ %i.hc, %.lr.ph.preheader ]
  %indvars.iv.next.i73230 = phi i64 [ %indvars.iv.next.i73, %.lr.ph ], [ %indvars.iv.next.i73228, %.lr.ph.preheader ] ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i73230
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !206
  %i.ox = add i32 %i.ow, 32768
  %i.oy = icmp ult i32 %i.ox, 65536
  br i1 %i.oy, label %.thread.i65, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i71
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.next.i73230, 1 ; 2 uses
  %i.oz = trunc i64 %indvars.iv.next.i73 to i32   ; 2 uses
  %exitcond.not.i74 = icmp eq i32 %i.oz, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not.i74, label %.thread.i65, label %.lr.ph.i71

.thread.i65:                                      ; preds = %.lr.ph, %.lr.ph.i71, %.lr.ph.preheader
  %.lcssa = phi i32 [ %.sroa.6.8.extract.trunc, %.lr.ph.preheader ], [ %.sroa.6.8.extract.trunc, %.lr.ph ], [ %i.ou, %.lr.ph.i71 ] ; 7 uses
  %i.pa = sub i32 %.lcssa, %.083125               ; 3 uses
  %i.pb = icmp ugt i32 %i.pa, 63
  br i1 %i.pb, label %.lr.ph64.i, label %._crit_edge.i66

.lr.ph64.i:                                       ; preds = %.thread.i65, %bb.j
  %.063.i = phi ptr [ %i.qn, %bb.j ], [ %i.hb, %.thread.i65 ] ; 2 uses
  %.04662.i = phi i32 [ %i.pe, %bb.j ], [ %.083125, %.thread.i65 ] ; 3 uses
  %.04961.i = phi i32 [ %i.pd, %bb.j ], [ 0, %.thread.i65 ]
  %.05260.i = phi i32 [ %i.pf, %bb.j ], [ %i.pa, %.thread.i65 ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.063.i, i64 1
  store i8 -1, ptr %.063.i, align 1, !tbaa !277
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.pd = add i32 %.04961.i, 257                  ; 2 uses
  %i.pe = add i32 %.04662.i, 64                   ; 2 uses
  %i.pf = add i32 %.05260.i, -64                  ; 3 uses
  %i.pg = icmp ugt i32 %i.pf, 63
  br i1 %i.pg, label %.lr.ph64.i, label %._crit_edge.i66, !llvm.loop !1481

bb.k:                                             ; preds = %bb.k, %.lr.ph64.i
  %indvars.iv79.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next80.i.1, %bb.k ] ; 3 uses
  %.159.i = phi ptr [ %i.pc, %.lr.ph64.i ], [ %i.qn, %bb.k ] ; 9 uses
  %i.ph = trunc nuw nsw i64 %indvars.iv79.i to i32
  %i.pi = add i32 %.04662.i, %i.ph
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !206 ; 4 uses
  %i.pm = lshr i32 %i.pl, 24
  %i.pn = trunc nuw i32 %i.pm to i8
  %i.po = getelementptr inbounds nuw i8, ptr %.159.i, i64 1
  store i8 %i.pn, ptr %.159.i, align 1, !tbaa !277
  %i.pp = lshr i32 %i.pl, 16
  %i.pq = trunc i32 %i.pp to i8
  %i.pr = getelementptr inbounds nuw i8, ptr %.159.i, i64 2
  store i8 %i.pq, ptr %i.po, align 1, !tbaa !277
  %i.ps = lshr i32 %i.pl, 8
  %i.pt = trunc i32 %i.ps to i8
  %i.pu = getelementptr inbounds nuw i8, ptr %.159.i, i64 3
  store i8 %i.pt, ptr %i.pr, align 1, !tbaa !277
  %i.pv = trunc i32 %i.pl to i8
  %i.pw = getelementptr inbounds nuw i8, ptr %.159.i, i64 4
  store i8 %i.pv, ptr %i.pu, align 1, !tbaa !277
  %i.px = trunc i64 %indvars.iv79.i to i32
  %i.py = or disjoint i32 %i.px, 1
  %i.pz = add i32 %.04662.i, %i.py
  %i.qa = zext i32 %i.pz to i64
end_hunk_0
begin_hunk_1_@_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t26create_from_tuple_var_dataENS3_16tuple_iterator_tEjjbPK8hb_map_tRK11hb_vector_tIjLb0EE10hb_array_tIKNS_7HBFixedINS1_ILb1EsLj2EEELj14EEEEP15hb_alloc_pool_tb:bb.a
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
  %.pre = load i32, ptr %i.e, align 8, !tbaa !3182
  %.pre459 = load ptr, ptr %i.f, align 8, !tbaa !3183
  %.pre460 = load ptr, ptr %i.g, align 8, !tbaa !550
  br label %bb.b

bb.b:                                             ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit, %bb.a
  %i.az = phi ptr [ %.pre460, %bb.a ], [ %i.aad, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 2 uses
  %i.ba = phi ptr [ %.pre459, %bb.a ], [ %i.zy, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 3 uses
  %i.bb = phi i32 [ %.pre, %bb.a ], [ %i.zv, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ]
  %.sroa.0183.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0183.1, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 12 uses
  %.sroa.7186.0 = phi i32 [ 0, %bb.a ], [ %.sroa.7186.1, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 7 uses
  %.sroa.12189.0 = phi ptr [ null, %bb.a ], [ %.sroa.12189.1, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 11 uses
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0.2, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 20 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.a ], [ %.sroa.7.2, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 16 uses
  %.sroa.12.0 = phi ptr [ null, %bb.a ], [ %.sroa.12.2, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !3184
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
  br i1 %or.cond, label %bb.d, label %.thread272, !prof !3185

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store atomic i32 1, ptr %11 monotonic, align 8
  store atomic i8 1, ptr %i.i monotonic, align 4
  store atomic ptr null, ptr %i.j monotonic, align 8
  store i8 1, ptr %i.k, align 8, !tbaa !363
  store ptr null, ptr %i.m, align 8, !tbaa !364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.l, i8 0, i64 18, i1 false)
  %i.bx = load i32, ptr %i.n, align 8, !tbaa !3186
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull readonly align 1 %.sroa.12189.0, i64 %i.cz, i1 false), !alias.scope !3187
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
  %.sroa.12189.3.ph509 = phi ptr [ %.sroa.12189.0, %bb.o ], [ %i.cx, %bb.n ], [ %i.dd, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ %i.cx, %bb.m ] ; 29 uses
  %.sroa.0183.3.ph507 = phi i32 [ %.sroa.0183.0, %bb.o ], [ %i.cr, %bb.n ], [ %i.cr, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ %i.cr, %bb.m ] ; 6 uses
  %.sroa.12189.3.ph509649 = ptrtoaddr ptr %.sroa.12189.3.ph509 to i64
  %.pre462 = load ptr, ptr %i.a, align 8, !tbaa !796
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.12189.3.ph509, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.12189.3.ph509, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.12189.3.ph509, i64 96
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.12189.3.ph509, i64 128
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.12189.3.ph509, i64 160
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.12189.3.ph509, i64 192
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.12189.3.ph509, i64 224
  br label %.lr.ph348

.lr.ph348:                                        ; preds = %.lr.ph348.preheader, %.loopexit298
  %i.dm = phi ptr [ %i.ky, %.loopexit298 ], [ %.pre462, %.lr.ph348.preheader ] ; 18 uses
  %.0101.i347 = phi i32 [ %.9.i, %.loopexit298 ], [ 0, %.lr.ph348.preheader ] ; 11 uses
  %i.dn = ptrtoaddr ptr %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 1 ; 13 uses
  %i.dp = icmp ugt ptr %i.do, %i.cj
  br i1 %i.dp, label %.critedge, label %bb.p, !prof !103

bb.p:                                             ; preds = %.lr.ph348
  store ptr %i.do, ptr %i.a, align 8, !tbaa !796
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !246 ; 4 uses
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = and i32 %i.dr, 63                       ; 3 uses
  %i.dt = add nuw nsw i32 %i.ds, 1                ; 5 uses
  %i.du = add nuw i32 %i.dt, %.0101.i347          ; 12 uses
  %i.dv = icmp ugt i32 %i.du, %.
  br i1 %i.dv, label %.critedge, label %bb.q, !prof !103

bb.q:                                             ; preds = %bb.p
  %i.dw = lshr i32 %i.dr, 6
  switch i32 %i.dw, label %.unreachabledefault [
    i32 2, label %_ZL9hb_memsetPvij.exit
    i32 1, label %bb.r
    i32 3, label %bb.u
    i32 0, label %bb.v
  ]

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.q
  %i.dx = zext nneg i32 %.0101.i347 to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.dx
  %i.dz = shl nuw nsw i32 %i.dt, 2
  %i.ea = zext nneg i32 %i.dz to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dy, i8 0, i64 %i.ea, i1 false)
  %.pre461 = load ptr, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit298

bb.r:                                             ; preds = %bb.q
  %i.eb = shl nuw nsw i32 %i.dt, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ec
  %i.ee = icmp ugt ptr %i.ed, %i.cj
  br i1 %i.ee, label %.critedge, label %bb.s, !prof !103

bb.s:                                             ; preds = %bb.r
  %i.ef = icmp samesign ugt i32 %i.ds, 2
  br i1 %i.ef, label %.lr.ph338, label %.lr.ph343

.lr.ph338:                                        ; preds = %bb.s
  %i.eg = add nuw i32 %.0101.i347, 3
  br label %bb.t

.preheader297:                                    ; preds = %bb.t
  store ptr %i.gb, ptr %i.a, align 8, !tbaa !796
  %i.eh = icmp ult i32 %i.gc, %i.du
  br i1 %i.eh, label %.lr.ph343, label %.loopexit298

.lr.ph343:                                        ; preds = %bb.s, %.preheader297
  %.1102.i.lcssa517 = phi i32 [ %i.gc, %.preheader297 ], [ %.0101.i347, %bb.s ]
  %.promoted345516 = phi ptr [ %i.gb, %.preheader297 ], [ %i.do, %bb.s ] ; 3 uses
  %i.ei = zext i32 %.1102.i.lcssa517 to i64       ; 4 uses
  %wide.trip.count437 = zext nneg i32 %i.du to i64
  %i.ej = zext i32 %.0101.i347 to i64
  %i.ek = and i8 %i.dq, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = add nuw nsw i64 %i.ej, %i.el
  %i.en = add nuw nsw i64 %i.em, 1
  %i.eo = sub nsw i64 %i.en, %i.ei                ; 3 uses
  %min.iters.check635 = icmp ult i64 %i.eo, 8
  br i1 %min.iters.check635, label %scalar.ph634.preheader, label %vector.ph636

vector.ph636:                                     ; preds = %.lr.ph343
  %n.vec637 = and i64 %i.eo, -8                   ; 4 uses
  %i.ep = add nsw i64 %n.vec637, %i.ei
  %i.eq = shl nsw i64 %n.vec637, 1
  %i.er = getelementptr i8, ptr %.promoted345516, i64 %i.eq ; 2 uses
  %invariant.gep756 = getelementptr [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.ei
  br label %vector.body638

vector.body638:                                   ; preds = %vector.body638, %vector.ph636
  %index639 = phi i64 [ 0, %vector.ph636 ], [ %index.next643, %vector.body638 ] ; 3 uses
  %i.es = shl i64 %index639, 1
  %next.gep640 = getelementptr i8, ptr %.promoted345516, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep640, i64 8
  %wide.load641 = load <4 x i16>, ptr %next.gep640, align 1, !tbaa !240
  %wide.load642 = load <4 x i16>, ptr %i.et, align 1, !tbaa !240
  %i.eu = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load641)
  %i.ev = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load642)
  %i.ew = sext <4 x i16> %i.eu to <4 x i32>
  %i.ex = sext <4 x i16> %i.ev to <4 x i32>
  %gep757 = getelementptr [4 x i8], ptr %invariant.gep756, i64 %index639 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %gep757, i64 16
  store <4 x i32> %i.ew, ptr %gep757, align 4, !tbaa !206
  store <4 x i32> %i.ex, ptr %i.ey, align 4, !tbaa !206
  %index.next643 = add nuw i64 %index639, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next643, %n.vec637
  br i1 %i.ez, label %middle.block644, label %vector.body638, !llvm.loop !3155

middle.block644:                                  ; preds = %vector.body638
  %cmp.n645 = icmp eq i64 %i.eo, %n.vec637
  br i1 %cmp.n645, label %..loopexit298_crit_edge, label %scalar.ph634.preheader

scalar.ph634.preheader:                           ; preds = %.lr.ph343, %middle.block644
  %indvars.iv434.ph = phi i64 [ %i.ei, %.lr.ph343 ], [ %i.ep, %middle.block644 ]
  %.ph682 = phi ptr [ %.promoted345516, %.lr.ph343 ], [ %i.er, %middle.block644 ]
  br label %scalar.ph634

bb.t:                                             ; preds = %.lr.ph338, %bb.t
  %i.fa = phi ptr [ %i.do, %.lr.ph338 ], [ %i.gb, %bb.t ] ; 5 uses
  %i.fb = phi i32 [ %i.eg, %.lr.ph338 ], [ %i.gd, %bb.t ]
  %.1102.i337 = phi i32 [ %.0101.i347, %.lr.ph338 ], [ %i.gc, %bb.t ] ; 5 uses
  %i.fc = load i16, ptr %i.fa, align 1, !tbaa !240
  %i.fd = call noundef i16 @llvm.bswap.i16(i16 %i.fc)
  %i.fe = sext i16 %i.fd to i32
  %i.ff = zext i32 %.1102.i337 to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.ff
  store i32 %i.fe, ptr %i.fg, align 4, !tbaa !206
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fi = load i16, ptr %i.fh, align 1, !tbaa !240
  %i.fj = call noundef i16 @llvm.bswap.i16(i16 %i.fi)
  %i.fk = sext i16 %i.fj to i32
  %i.fl = add i32 %.1102.i337, 1
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.fm
  store i32 %i.fk, ptr %i.fn, align 4, !tbaa !206
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fp = load i16, ptr %i.fo, align 1, !tbaa !240
  %i.fq = call noundef i16 @llvm.bswap.i16(i16 %i.fp)
  %i.fr = sext i16 %i.fq to i32
  %i.fs = add i32 %.1102.i337, 2
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.ft
  store i32 %i.fr, ptr %i.fu, align 4, !tbaa !206
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fa, i64 6
  %i.fw = load i16, ptr %i.fv, align 1, !tbaa !240
  %i.fx = call noundef i16 @llvm.bswap.i16(i16 %i.fw)
  %i.fy = sext i16 %i.fx to i32
  %i.fz = zext i32 %i.fb to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.fz
  store i32 %i.fy, ptr %i.ga, align 4, !tbaa !206
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.gc = add i32 %.1102.i337, 4                  ; 4 uses
  %i.gd = add i32 %.1102.i337, 7                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, %i.du
  br i1 %i.ge, label %bb.t, label %.preheader297, !llvm.loop !3156

scalar.ph634:                                     ; preds = %scalar.ph634.preheader, %scalar.ph634
  %indvars.iv434 = phi i64 [ %indvars.iv.next435, %scalar.ph634 ], [ %indvars.iv434.ph, %scalar.ph634.preheader ] ; 2 uses
  %i.gf = phi ptr [ %i.gk, %scalar.ph634 ], [ %.ph682, %scalar.ph634.preheader ] ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 1, !tbaa !240
  %i.gh = call noundef i16 @llvm.bswap.i16(i16 %i.gg)
  %i.gi = sext i16 %i.gh to i32
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %indvars.iv434
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !206
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 2 uses
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next435, %wide.trip.count437
  br i1 %exitcond438.not, label %..loopexit298_crit_edge, label %scalar.ph634, !llvm.loop !3157

bb.u:                                             ; preds = %bb.q
  %i.gl = shl nuw nsw i32 %i.dt, 2
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gm
  %i.go = icmp ugt ptr %i.gn, %i.cj
  br i1 %i.go, label %.critedge, label %.lr.ph333, !prof !103

.lr.ph333:                                        ; preds = %bb.u
  %i.gp = zext i32 %.0101.i347 to i64             ; 12 uses
  %wide.trip.count432 = zext nneg i32 %i.du to i64
  %i.gq = and i8 %i.dq, 63                        ; 2 uses
  %narrow = add nuw nsw i8 %i.gq, 1
  %i.gr = zext nneg i8 %narrow to i64             ; 2 uses
  %min.iters.check652 = icmp samesign ult i8 %i.gq, 7
  br i1 %min.iters.check652, label %scalar.ph651.preheader, label %vector.memcheck648

vector.memcheck648:                               ; preds = %.lr.ph333
  %i.gs = shl nuw nsw i64 %i.gp, 2
  %i.gt = add i64 %i.gs, %.sroa.12189.3.ph509649
  %i.gu = sub i64 %i.gt, %i.dn
  %13 = add i64 %i.gu, -2
  %diff.check656 = icmp ult i64 %13, 31
  br i1 %diff.check656, label %scalar.ph651.preheader, label %vector.ph653

vector.ph653:                                     ; preds = %vector.memcheck648
  %n.vec654 = and i64 %i.gr, 120                  ; 10 uses
  %i.gv = add nuw nsw i64 %n.vec654, %i.gp
  %i.gw = shl nuw nsw i64 %n.vec654, 2
  %i.gx = getelementptr i8, ptr %i.do, i64 %i.gw  ; 2 uses
  %i.gy = getelementptr i8, ptr %i.dm, i64 17
  %wide.load658 = load <4 x i32>, ptr %i.do, align 1, !tbaa !242
  %wide.load659 = load <4 x i32>, ptr %i.gy, align 1, !tbaa !242
  %i.gz = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load658)
  %i.ha = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load659)
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.gp ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <4 x i32> %i.gz, ptr %i.hb, align 4, !tbaa !206
  store <4 x i32> %i.ha, ptr %i.hc, align 4, !tbaa !206
  %i.hd = icmp eq i64 %n.vec654, 8
  br i1 %i.hd, label %middle.block661, label %vector.body655.1

vector.body655.1:                                 ; preds = %vector.ph653
  %next.gep657.1 = getelementptr i8, ptr %i.dm, i64 33
  %i.he = getelementptr i8, ptr %i.dm, i64 49
  %wide.load658.1 = load <4 x i32>, ptr %next.gep657.1, align 1, !tbaa !242
  %wide.load659.1 = load <4 x i32>, ptr %i.he, align 1, !tbaa !242
  %i.hf = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load658.1)
  %i.hg = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load659.1)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.gp ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x i32> %i.hf, ptr %i.hh, align 4, !tbaa !206
  store <4 x i32> %i.hg, ptr %i.hi, align 4, !tbaa !206
  %i.hj = icmp eq i64 %n.vec654, 16
  br i1 %i.hj, label %middle.block661, label %vector.body655.2

vector.body655.2:                                 ; preds = %vector.body655.1
  %next.gep657.2 = getelementptr i8, ptr %i.dm, i64 65
  %i.hk = getelementptr i8, ptr %i.dm, i64 81
  %wide.load658.2 = load <4 x i32>, ptr %next.gep657.2, align 1, !tbaa !242
  %wide.load659.2 = load <4 x i32>, ptr %i.hk, align 1, !tbaa !242
  %i.hl = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load658.2)
  %i.hm = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load659.2)
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.gp ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <4 x i32> %i.hl, ptr %i.hn, align 4, !tbaa !206
  store <4 x i32> %i.hm, ptr %i.ho, align 4, !tbaa !206
  %i.hp = icmp eq i64 %n.vec654, 24
  br i1 %i.hp, label %middle.block661, label %vector.body655.3

vector.body655.3:                                 ; preds = %vector.body655.2
  %next.gep657.3 = getelementptr i8, ptr %i.dm, i64 97
  %i.hq = getelementptr i8, ptr %i.dm, i64 113
  %wide.load658.3 = load <4 x i32>, ptr %next.gep657.3, align 1, !tbaa !242
  %wide.load659.3 = load <4 x i32>, ptr %i.hq, align 1, !tbaa !242
  %i.hr = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load658.3)
  %i.hs = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load659.3)
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.gp ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store <4 x i32> %i.hr, ptr %i.ht, align 4, !tbaa !206
  store <4 x i32> %i.hs, ptr %i.hu, align 4, !tbaa !206
  %i.hv = icmp eq i64 %n.vec654, 32
  br i1 %i.hv, label %middle.block661, label %vector.body655.4

vector.body655.4:                                 ; preds = %vector.body655.3
  %next.gep657.4 = getelementptr i8, ptr %i.dm, i64 129
  %i.hw = getelementptr i8, ptr %i.dm, i64 145
  %wide.load658.4 = load <4 x i32>, ptr %next.gep657.4, align 1, !tbaa !242
  %wide.load659.4 = load <4 x i32>, ptr %i.hw, align 1, !tbaa !242
  %i.hx = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load658.4)
  %i.hy = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load659.4)
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.gp ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <4 x i32> %i.hx, ptr %i.hz, align 4, !tbaa !206
  store <4 x i32> %i.hy, ptr %i.ia, align 4, !tbaa !206
  %i.ib = icmp eq i64 %n.vec654, 40
  br i1 %i.ib, label %middle.block661, label %vector.body655.5

vector.body655.5:                                 ; preds = %vector.body655.4
  %next.gep657.5 = getelementptr i8, ptr %i.dm, i64 161
  %i.ic = getelementptr i8, ptr %i.dm, i64 177
  %wide.load658.5 = load <4 x i32>, ptr %next.gep657.5, align 1, !tbaa !242
  %wide.load659.5 = load <4 x i32>, ptr %i.ic, align 1, !tbaa !242
  %i.id = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load658.5)
  %i.ie = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load659.5)
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.gp ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store <4 x i32> %i.id, ptr %i.if, align 4, !tbaa !206
  store <4 x i32> %i.ie, ptr %i.ig, align 4, !tbaa !206
  %i.ih = icmp eq i64 %n.vec654, 48
  br i1 %i.ih, label %middle.block661, label %vector.body655.6

vector.body655.6:                                 ; preds = %vector.body655.5
  %next.gep657.6 = getelementptr i8, ptr %i.dm, i64 193
  %i.ii = getelementptr i8, ptr %i.dm, i64 209
  %wide.load658.6 = load <4 x i32>, ptr %next.gep657.6, align 1, !tbaa !242
  %wide.load659.6 = load <4 x i32>, ptr %i.ii, align 1, !tbaa !242
  %i.ij = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load658.6)
  %i.ik = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load659.6)
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.gp ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <4 x i32> %i.ij, ptr %i.il, align 4, !tbaa !206
  store <4 x i32> %i.ik, ptr %i.im, align 4, !tbaa !206
  %i.in = icmp eq i64 %n.vec654, 56
  br i1 %i.in, label %middle.block661, label %vector.body655.7

vector.body655.7:                                 ; preds = %vector.body655.6
  %next.gep657.7 = getelementptr i8, ptr %i.dm, i64 225
  %i.io = getelementptr i8, ptr %i.dm, i64 241
  %wide.load658.7 = load <4 x i32>, ptr %next.gep657.7, align 1, !tbaa !242
  %wide.load659.7 = load <4 x i32>, ptr %i.io, align 1, !tbaa !242
  %i.ip = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load658.7)
  %i.iq = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load659.7)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.gp ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store <4 x i32> %i.ip, ptr %i.ir, align 4, !tbaa !206
  store <4 x i32> %i.iq, ptr %i.is, align 4, !tbaa !206
  br label %middle.block661

middle.block661:                                  ; preds = %vector.body655.7, %vector.body655.6, %vector.body655.5, %vector.body655.4, %vector.body655.3, %vector.body655.2, %vector.body655.1, %vector.ph653
  %cmp.n662 = icmp eq i64 %n.vec654, %i.gr
  br i1 %cmp.n662, label %..loopexit299_crit_edge, label %scalar.ph651.preheader

scalar.ph651.preheader:                           ; preds = %vector.memcheck648, %.lr.ph333, %middle.block661
  %indvars.iv429.ph = phi i64 [ %i.gp, %vector.memcheck648 ], [ %i.gp, %.lr.ph333 ], [ %i.gv, %middle.block661 ]
  %.ph683 = phi ptr [ %i.do, %vector.memcheck648 ], [ %i.do, %.lr.ph333 ], [ %i.gx, %middle.block661 ]
  br label %scalar.ph651

scalar.ph651:                                     ; preds = %scalar.ph651.preheader, %scalar.ph651
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %scalar.ph651 ], [ %indvars.iv429.ph, %scalar.ph651.preheader ] ; 2 uses
  %i.it = phi ptr [ %i.ix, %scalar.ph651 ], [ %.ph683, %scalar.ph651.preheader ] ; 2 uses
  %i.iu = load i32, ptr %i.it, align 1, !tbaa !242
  %i.iv = call noundef i32 @llvm.bswap.i32(i32 %i.iu)
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %indvars.iv429
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !206
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 4 ; 2 uses
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count432
  br i1 %exitcond433.not, label %..loopexit299_crit_edge, label %scalar.ph651, !llvm.loop !3158

bb.v:                                             ; preds = %bb.q
  %i.iy = zext nneg i32 %i.dt to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.iy
  %i.ja = icmp ugt ptr %i.iz, %i.cj
  br i1 %i.ja, label %.critedge, label %bb.w, !prof !103

bb.w:                                             ; preds = %bb.v
  %i.jb = icmp samesign ugt i32 %i.ds, 2
  br i1 %i.jb, label %.lr.ph, label %.lr.ph328

.lr.ph:                                           ; preds = %bb.w
  %i.jc = add nuw i32 %.0101.i347, 3
  br label %bb.x

.preheader300:                                    ; preds = %bb.x
  store ptr %i.kl, ptr %i.a, align 8, !tbaa !796
  %i.jd = icmp ult i32 %i.kq, %i.du
  br i1 %i.jd, label %.lr.ph328, label %.loopexit298

.lr.ph328:                                        ; preds = %bb.w, %.preheader300
  %.4.i.lcssa521 = phi i32 [ %i.kq, %.preheader300 ], [ %.0101.i347, %bb.w ]
  %.promoted330520 = phi ptr [ %i.kl, %.preheader300 ], [ %i.do, %bb.w ] ; 3 uses
  %i.je = zext i32 %.4.i.lcssa521 to i64          ; 4 uses
  %wide.trip.count = zext nneg i32 %i.du to i64
  %i.jf = zext i32 %.0101.i347 to i64
  %i.jg = and i8 %i.dq, 63
  %i.jh = zext nneg i8 %i.jg to i64
  %i.ji = add nuw nsw i64 %i.jf, %i.jh
  %i.jj = add nuw nsw i64 %i.ji, 1
  %i.jk = sub nsw i64 %i.jj, %i.je                ; 3 uses
  %min.iters.check666 = icmp ult i64 %i.jk, 8
  br i1 %min.iters.check666, label %scalar.ph665.preheader, label %vector.ph667

vector.ph667:                                     ; preds = %.lr.ph328
  %n.vec668 = and i64 %i.jk, -8                   ; 4 uses
  %i.jl = add nsw i64 %n.vec668, %i.je
  %i.jm = getelementptr i8, ptr %.promoted330520, i64 %n.vec668 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.je
  br label %vector.body669

vector.body669:                                   ; preds = %vector.body669, %vector.ph667
  %index670 = phi i64 [ 0, %vector.ph667 ], [ %index.next674, %vector.body669 ] ; 3 uses
  %next.gep671 = getelementptr i8, ptr %.promoted330520, i64 %index670 ; 2 uses
  %i.jn = getelementptr i8, ptr %next.gep671, i64 4
  %wide.load672 = load <4 x i8>, ptr %next.gep671, align 1, !tbaa !477
  %wide.load673 = load <4 x i8>, ptr %i.jn, align 1, !tbaa !477
  %i.jo = sext <4 x i8> %wide.load672 to <4 x i32>
  %i.jp = sext <4 x i8> %wide.load673 to <4 x i32>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index670 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.jo, ptr %gep, align 4, !tbaa !206
  store <4 x i32> %i.jp, ptr %i.jq, align 4, !tbaa !206
  %index.next674 = add nuw i64 %index670, 8       ; 2 uses
  %i.jr = icmp eq i64 %index.next674, %n.vec668
  br i1 %i.jr, label %middle.block675, label %vector.body669, !llvm.loop !3159

middle.block675:                                  ; preds = %vector.body669
  %cmp.n676 = icmp eq i64 %i.jk, %n.vec668
  br i1 %cmp.n676, label %..loopexit301_crit_edge, label %scalar.ph665.preheader

scalar.ph665.preheader:                           ; preds = %.lr.ph328, %middle.block675
  %indvars.iv.ph = phi i64 [ %i.je, %.lr.ph328 ], [ %i.jl, %middle.block675 ]
  %.ph684.a = phi ptr [ %.promoted330520, %.lr.ph328 ], [ %i.jm, %middle.block675 ]
  br label %scalar.ph665

bb.x:                                             ; preds = %.lr.ph, %bb.x
  %i.js = phi ptr [ %i.do, %.lr.ph ], [ %i.kl, %bb.x ] ; 5 uses
  %i.jt = phi i32 [ %i.jc, %.lr.ph ], [ %i.kr, %bb.x ]
  %.4.i325 = phi i32 [ %.0101.i347, %.lr.ph ], [ %i.kq, %bb.x ] ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.jv = load i8, ptr %i.js, align 1, !tbaa !477
  %i.jw = sext i8 %i.jv to i32
  %i.jx = zext i32 %.4.i325 to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.jx
  store i32 %i.jw, ptr %i.jy, align 4, !tbaa !206
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.ka = load i8, ptr %i.ju, align 1, !tbaa !477
  %i.kb = sext i8 %i.ka to i32
  %i.kc = add i32 %.4.i325, 1
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.kd
  store i32 %i.kb, ptr %i.ke, align 4, !tbaa !206
  %i.kf = getelementptr inbounds nuw i8, ptr %i.js, i64 3
  %i.kg = load i8, ptr %i.jz, align 1, !tbaa !477
  %i.kh = sext i8 %i.kg to i32
  %i.ki = add i32 %.4.i325, 2
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.kj
  store i32 %i.kh, ptr %i.kk, align 4, !tbaa !206
  %i.kl = getelementptr inbounds nuw i8, ptr %i.js, i64 4 ; 4 uses
  %i.km = load i8, ptr %i.kf, align 1, !tbaa !477
  %i.kn = sext i8 %i.km to i32
  %i.ko = zext i32 %i.jt to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %i.ko
  store i32 %i.kn, ptr %i.kp, align 4, !tbaa !206
  %i.kq = add i32 %.4.i325, 4                     ; 4 uses
  %i.kr = add i32 %.4.i325, 7                     ; 2 uses
  %i.ks = icmp ult i32 %i.kr, %i.du
  br i1 %i.ks, label %bb.x, label %.preheader300, !llvm.loop !3160

scalar.ph665:                                     ; preds = %scalar.ph665.preheader, %scalar.ph665
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph665 ], [ %indvars.iv.ph, %scalar.ph665.preheader ] ; 2 uses
  %i.kt = phi ptr [ %i.ku, %scalar.ph665 ], [ %.ph684.a, %scalar.ph665.preheader ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1 ; 2 uses
  %i.kv = load i8, ptr %i.kt, align 1, !tbaa !477
  %i.kw = sext i8 %i.kv to i32
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12189.3.ph509, i64 %indvars.iv
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !206
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit301_crit_edge, label %scalar.ph665, !llvm.loop !3161

.unreachabledefault:                              ; preds = %bb.q
  unreachable

default.unreachable:                              ; preds = %bb.ah
  unreachable

..loopexit298_crit_edge:                          ; preds = %scalar.ph634, %middle.block644
  %.lcssa574 = phi ptr [ %i.er, %middle.block644 ], [ %i.gk, %scalar.ph634 ] ; 2 uses
  store ptr %.lcssa574, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit298

..loopexit299_crit_edge:                          ; preds = %scalar.ph651, %middle.block661
  %.lcssa571 = phi ptr [ %i.gx, %middle.block661 ], [ %i.ix, %scalar.ph651 ] ; 2 uses
  store ptr %.lcssa571, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit298

..loopexit301_crit_edge:                          ; preds = %scalar.ph665, %middle.block675
  %.lcssa570 = phi ptr [ %i.jm, %middle.block675 ], [ %i.ku, %scalar.ph665 ] ; 2 uses
  store ptr %.lcssa570, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit298

.loopexit298:                                     ; preds = %.preheader300, %..loopexit301_crit_edge, %..loopexit299_crit_edge, %.preheader297, %..loopexit298_crit_edge, %_ZL9hb_memsetPvij.exit
  %i.ky = phi ptr [ %.pre461, %_ZL9hb_memsetPvij.exit ], [ %i.gb, %.preheader297 ], [ %i.kl, %.preheader300 ], [ %.lcssa574, %..loopexit298_crit_edge ], [ %.lcssa571, %..loopexit299_crit_edge ], [ %.lcssa570, %..loopexit301_crit_edge ]
  %.9.i = phi i32 [ %i.du, %_ZL9hb_memsetPvij.exit ], [ %i.gc, %.preheader297 ], [ %i.kq, %.preheader300 ], [ %i.du, %..loopexit298_crit_edge ], [ %i.du, %..loopexit299_crit_edge ], [ %i.du, %..loopexit301_crit_edge ] ; 2 uses
  %i.kz = icmp ult i32 %.9.i, %.
  br i1 %i.kz, label %.lr.ph348, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit, !llvm.loop !3162

_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit: ; preds = %.loopexit298, %bb.o
  %.not383513 = phi i1 [ true, %bb.o ], [ false, %.loopexit298 ] ; 2 uses
  %.sroa.12189.3.ph510 = phi ptr [ %.sroa.12189.0, %bb.o ], [ %.sroa.12189.3.ph509, %.loopexit298 ] ; 10 uses
  %.sroa.0183.3.ph508 = phi i32 [ %.sroa.0183.0, %bb.o ], [ %.sroa.0183.3.ph507, %.loopexit298 ] ; 9 uses
  br i1 %4, label %bb.y, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit64

bb.y:                                             ; preds = %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit
  %i.la = icmp slt i32 %.sroa.0.0, 0
  br i1 %i.la, label %.critedge, label %bb.z, !prof !205

bb.z:                                             ; preds = %bb.y
  %.not.i102 = icmp samesign ugt i32 %., %.sroa.0.0
  br i1 %.not.i102, label %.preheader.i104, label %bb.af, !prof !103

.preheader.i104:                                  ; preds = %bb.z, %.preheader.i104
  %.043.i105 = phi i32 [ %i.ld, %.preheader.i104 ], [ %.sroa.0.0, %bb.z ] ; 2 uses
  %i.lb = lshr i32 %.043.i105, 1
  %i.lc = add nuw i32 %.043.i105, 8
  %i.ld = add nuw i32 %i.lc, %i.lb                ; 8 uses
  %i.le = icmp ugt i32 %., %i.ld
  br i1 %i.le, label %.preheader.i104, label %.thread.i106, !llvm.loop !43

.thread.i106:                                     ; preds = %.preheader.i104
  %i.lf = icmp ugt i32 %i.ld, 1073741823
  br i1 %i.lf, label %.critedge.i121, label %bb.aa, !prof !103

.critedge.i121:                                   ; preds = %.thread.i106
  %i.lg = xor i32 %.sroa.0.0, -1
  br label %.critedge

bb.aa:                                            ; preds = %.thread.i106
  %.not49.i108 = icmp eq i32 %.sroa.0.0, 0
  br i1 %.not49.i108, label %bb.ab, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109

bb.ab:                                            ; preds = %bb.aa
  %.not9.i.i.i118 = icmp eq ptr %.sroa.12.0, null
  br i1 %.not9.i.i.i118, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lh = shl nuw i32 %i.ld, 2
  %i.li = zext i32 %i.lh to i64
  %i.lj = call ptr @hb_malloc(i64 noundef %i.li) #18 ; 4 uses
  %.not10.i.i.i119 = icmp eq ptr %i.lj, null
  br i1 %.not10.i.i.i119, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116, label %bb.ad, !prof !103

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i120 = icmp eq i32 %.sroa.7.0, 0
  br i1 %.not.i.i.i.i120, label %bb.af, label %bb.ae, !prof !103

bb.ae:                                            ; preds = %bb.ad
  %i.lk = zext nneg i32 %.sroa.7.0 to i64
  %i.ll = shl nuw nsw i64 %i.lk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lj, ptr nonnull readonly align 1 %.sroa.12.0, i64 %i.ll, i1 false), !alias.scope !3188
  br label %bb.af

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109: ; preds = %bb.ab, %bb.aa
  %i.lm = phi ptr [ null, %bb.ab ], [ %.sroa.12.0, %bb.aa ]
  %i.ln = shl nuw i32 %i.ld, 2
  %i.lo = zext i32 %i.ln to i64
  %i.lp = call ptr @hb_realloc(ptr noundef %i.lm, i64 noundef %i.lo) #18 ; 2 uses
  %.not22.i110 = icmp eq ptr %i.lp, null
  br i1 %.not22.i110, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116, label %bb.af, !prof !190

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53.i116: ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109, %bb.ac
  %i.lq = xor i32 %.sroa.0.0, -1
  br label %.critedge

bb.af:                                            ; preds = %bb.z, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109, %bb.ae, %bb.ad
  %.sroa.0.4.ph = phi i32 [ %.sroa.0.0, %bb.z ], [ %i.ld, %bb.ad ], [ %i.ld, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109 ], [ %i.ld, %bb.ae ] ; 7 uses
  %.sroa.12.4.ph = phi ptr [ %.sroa.12.0, %bb.z ], [ %i.lj, %bb.ad ], [ %i.lp, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i109 ], [ %i.lj, %bb.ae ] ; 30 uses
  %.sroa.12.4.ph606 = ptrtoaddr ptr %.sroa.12.4.ph to i64
  br i1 %.not383513, label %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit64, label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %bb.af
  %.pre464 = load ptr, ptr %i.a, align 8, !tbaa !796
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.12.4.ph, i64 32
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.12.4.ph, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.12.4.ph, i64 96
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.12.4.ph, i64 128
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.12.4.ph, i64 160
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.12.4.ph, i64 192
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.12.4.ph, i64 224
  br label %.lr.ph375

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.loopexit
  %i.ly = phi ptr [ %i.tk, %.loopexit ], [ %.pre464, %.lr.ph375.preheader ] ; 18 uses
  %.0101.i53374 = phi i32 [ %.9.i57, %.loopexit ], [ 0, %.lr.ph375.preheader ] ; 11 uses
  %i.lz = ptrtoaddr ptr %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 1 ; 13 uses
  %i.mb = icmp ugt ptr %i.ma, %i.cj
  br i1 %i.mb, label %.critedge, label %bb.ag, !prof !103

bb.ag:                                            ; preds = %.lr.ph375
  store ptr %i.ma, ptr %i.a, align 8, !tbaa !796
  %i.mc = load i8, ptr %i.ly, align 1, !tbaa !246 ; 4 uses
  %i.md = zext i8 %i.mc to i32                    ; 2 uses
  %i.me = and i32 %i.md, 63                       ; 3 uses
  %i.mf = add nuw nsw i32 %i.me, 1                ; 5 uses
  %i.mg = add nuw i32 %i.mf, %.0101.i53374        ; 12 uses
  %i.mh = icmp ugt i32 %i.mg, %.
  br i1 %i.mh, label %.critedge, label %bb.ah, !prof !103

bb.ah:                                            ; preds = %bb.ag
  %i.mi = lshr i32 %i.md, 6
  switch i32 %i.mi, label %default.unreachable [
    i32 2, label %_ZL9hb_memsetPvij.exit69
    i32 1, label %bb.ai
    i32 3, label %bb.al
    i32 0, label %bb.am
  ]

_ZL9hb_memsetPvij.exit69:                         ; preds = %bb.ah
  %i.mj = zext nneg i32 %.0101.i53374 to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.mj
  %i.ml = shl nuw nsw i32 %i.mf, 2
  %i.mm = zext nneg i32 %i.ml to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.mk, i8 0, i64 %i.mm, i1 false)
  %.pre463 = load ptr, ptr %i.a, align 8, !tbaa !796
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.mn = shl nuw nsw i32 %i.mf, 1
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mo
  %i.mq = icmp ugt ptr %i.mp, %i.cj
  br i1 %i.mq, label %.critedge, label %bb.aj, !prof !103

bb.aj:                                            ; preds = %bb.ai
  %i.mr = icmp samesign ugt i32 %i.me, 2
  br i1 %i.mr, label %.lr.ph365, label %.lr.ph370

.lr.ph365:                                        ; preds = %bb.aj
  %i.ms = add nuw i32 %.0101.i53374, 3
  br label %bb.ak

.preheader:                                       ; preds = %bb.ak
  store ptr %i.on, ptr %i.a, align 8, !tbaa !796
  %i.mt = icmp ult i32 %i.oo, %i.mg
  br i1 %i.mt, label %.lr.ph370, label %.loopexit

.lr.ph370:                                        ; preds = %bb.aj, %.preheader
  %.1102.i61.lcssa525 = phi i32 [ %i.oo, %.preheader ], [ %.0101.i53374, %bb.aj ]
  %.promoted372524 = phi ptr [ %i.on, %.preheader ], [ %i.ma, %bb.aj ] ; 3 uses
  %i.mu = zext i32 %.1102.i61.lcssa525 to i64     ; 4 uses
  %wide.trip.count452 = zext nneg i32 %i.mg to i64
  %i.mv = zext i32 %.0101.i53374 to i64
  %i.mw = and i8 %i.mc, 63
  %i.mx = zext nneg i8 %i.mw to i64
  %i.my = add nuw nsw i64 %i.mv, %i.mx
  %i.mz = add nuw nsw i64 %i.my, 1
  %i.na = sub nsw i64 %i.mz, %i.mu                ; 3 uses
  %min.iters.check = icmp ult i64 %i.na, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph370
  %n.vec = and i64 %i.na, -8                      ; 4 uses
  %i.nb = add nsw i64 %n.vec, %i.mu
  %i.nc = shl nsw i64 %n.vec, 1
  %i.nd = getelementptr i8, ptr %.promoted372524, i64 %i.nc ; 2 uses
  %invariant.gep760 = getelementptr [4 x i8], ptr %.sroa.12.4.ph, i64 %i.mu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ne = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted372524, i64 %i.ne ; 2 uses
  %i.nf = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !240
  %wide.load603 = load <4 x i16>, ptr %i.nf, align 1, !tbaa !240
  %i.ng = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.nh = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load603)
  %i.ni = sext <4 x i16> %i.ng to <4 x i32>
  %i.nj = sext <4 x i16> %i.nh to <4 x i32>
  %gep761 = getelementptr [4 x i8], ptr %invariant.gep760, i64 %index ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %gep761, i64 16
  store <4 x i32> %i.ni, ptr %gep761, align 4, !tbaa !206
  store <4 x i32> %i.nj, ptr %i.nk, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nl = icmp eq i64 %index.next, %n.vec
  br i1 %i.nl, label %middle.block, label %vector.body, !llvm.loop !3166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.na, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph370, %middle.block
  %indvars.iv449.ph = phi i64 [ %i.mu, %.lr.ph370 ], [ %i.nb, %middle.block ]
  %.ph = phi ptr [ %.promoted372524, %.lr.ph370 ], [ %i.nd, %middle.block ]
  br label %scalar.ph

bb.ak:                                            ; preds = %.lr.ph365, %bb.ak
  %i.nm = phi ptr [ %i.ma, %.lr.ph365 ], [ %i.on, %bb.ak ] ; 5 uses
  %i.nn = phi i32 [ %i.ms, %.lr.ph365 ], [ %i.op, %bb.ak ]
  %.1102.i61364 = phi i32 [ %.0101.i53374, %.lr.ph365 ], [ %i.oo, %bb.ak ] ; 5 uses
  %i.no = load i16, ptr %i.nm, align 1, !tbaa !240
  %i.np = call noundef i16 @llvm.bswap.i16(i16 %i.no)
  %i.nq = sext i16 %i.np to i32
  %i.nr = zext i32 %.1102.i61364 to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.nr
  store i32 %i.nq, ptr %i.ns, align 4, !tbaa !206
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nm, i64 2
  %i.nu = load i16, ptr %i.nt, align 1, !tbaa !240
  %i.nv = call noundef i16 @llvm.bswap.i16(i16 %i.nu)
  %i.nw = sext i16 %i.nv to i32
  %i.nx = add i32 %.1102.i61364, 1
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.ny
  store i32 %i.nw, ptr %i.nz, align 4, !tbaa !206
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.ob = load i16, ptr %i.oa, align 1, !tbaa !240
  %i.oc = call noundef i16 @llvm.bswap.i16(i16 %i.ob)
  %i.od = sext i16 %i.oc to i32
  %i.oe = add i32 %.1102.i61364, 2
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.of
  store i32 %i.od, ptr %i.og, align 4, !tbaa !206
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nm, i64 6
  %i.oi = load i16, ptr %i.oh, align 1, !tbaa !240
  %i.oj = call noundef i16 @llvm.bswap.i16(i16 %i.oi)
  %i.ok = sext i16 %i.oj to i32
  %i.ol = zext i32 %i.nn to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.ol
  store i32 %i.ok, ptr %i.om, align 4, !tbaa !206
  %i.on = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 4 uses
  %i.oo = add i32 %.1102.i61364, 4                ; 4 uses
  %i.op = add i32 %.1102.i61364, 7                ; 2 uses
  %i.oq = icmp ult i32 %i.op, %i.mg
  br i1 %i.oq, label %bb.ak, label %.preheader, !llvm.loop !3156

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %scalar.ph ], [ %indvars.iv449.ph, %scalar.ph.preheader ] ; 2 uses
  %i.or = phi ptr [ %i.ow, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.os = load i16, ptr %i.or, align 1, !tbaa !240
  %i.ot = call noundef i16 @llvm.bswap.i16(i16 %i.os)
  %i.ou = sext i16 %i.ot to i32
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %indvars.iv449
  store i32 %i.ou, ptr %i.ov, align 4, !tbaa !206
  %i.ow = getelementptr inbounds nuw i8, ptr %i.or, i64 2 ; 2 uses
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next450, %wide.trip.count452
  br i1 %exitcond453.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !3167

bb.al:                                            ; preds = %bb.ah
  %i.ox = shl nuw nsw i32 %i.mf, 2
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.oy
  %i.pa = icmp ugt ptr %i.oz, %i.cj
  br i1 %i.pa, label %.critedge, label %.lr.ph360, !prof !103

.lr.ph360:                                        ; preds = %bb.al
  %i.pb = zext i32 %.0101.i53374 to i64           ; 12 uses
  %wide.trip.count447 = zext nneg i32 %i.mg to i64
  %i.pc = and i8 %i.mc, 63                        ; 2 uses
  %narrow679 = add nuw nsw i8 %i.pc, 1
  %i.pd = zext nneg i8 %narrow679 to i64          ; 2 uses
  %min.iters.check607 = icmp samesign ult i8 %i.pc, 7
  br i1 %min.iters.check607, label %scalar.ph606.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph360
  %i.pe = shl nuw nsw i64 %i.pb, 2
  %i.pf = add i64 %i.pe, %.sroa.12.4.ph606
  %i.pg = sub i64 %i.pf, %i.lz
  %14 = add i64 %i.pg, -2
  %diff.check = icmp ult i64 %14, 31
  br i1 %diff.check, label %scalar.ph606.preheader, label %vector.ph608

vector.ph608:                                     ; preds = %vector.memcheck
  %n.vec609 = and i64 %i.pd, 120                  ; 10 uses
  %i.ph = add nuw nsw i64 %n.vec609, %i.pb
  %i.pi = shl nuw nsw i64 %n.vec609, 2
  %i.pj = getelementptr i8, ptr %i.ma, i64 %i.pi  ; 2 uses
  %i.pk = getelementptr i8, ptr %i.ly, i64 17
  %wide.load613 = load <4 x i32>, ptr %i.ma, align 1, !tbaa !242
  %wide.load614 = load <4 x i32>, ptr %i.pk, align 1, !tbaa !242
  %i.pl = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load613)
  %i.pm = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load614)
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %i.pb ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  store <4 x i32> %i.pl, ptr %i.pn, align 4, !tbaa !206
  store <4 x i32> %i.pm, ptr %i.po, align 4, !tbaa !206
  %i.pp = icmp eq i64 %n.vec609, 8
  br i1 %i.pp, label %middle.block616, label %vector.body610.1

vector.body610.1:                                 ; preds = %vector.ph608
  %next.gep612.1 = getelementptr i8, ptr %i.ly, i64 33
  %i.pq = getelementptr i8, ptr %i.ly, i64 49
  %wide.load613.1 = load <4 x i32>, ptr %next.gep612.1, align 1, !tbaa !242
  %wide.load614.1 = load <4 x i32>, ptr %i.pq, align 1, !tbaa !242
  %i.pr = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load613.1)
  %i.ps = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load614.1)
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.pb ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store <4 x i32> %i.pr, ptr %i.pt, align 4, !tbaa !206
  store <4 x i32> %i.ps, ptr %i.pu, align 4, !tbaa !206
  %i.pv = icmp eq i64 %n.vec609, 16
  br i1 %i.pv, label %middle.block616, label %vector.body610.2

vector.body610.2:                                 ; preds = %vector.body610.1
  %next.gep612.2 = getelementptr i8, ptr %i.ly, i64 65
  %i.pw = getelementptr i8, ptr %i.ly, i64 81
  %wide.load613.2 = load <4 x i32>, ptr %next.gep612.2, align 1, !tbaa !242
  %wide.load614.2 = load <4 x i32>, ptr %i.pw, align 1, !tbaa !242
  %i.px = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load613.2)
  %i.py = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load614.2)
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.pb ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  store <4 x i32> %i.px, ptr %i.pz, align 4, !tbaa !206
  store <4 x i32> %i.py, ptr %i.qa, align 4, !tbaa !206
  %i.qb = icmp eq i64 %n.vec609, 24
  br i1 %i.qb, label %middle.block616, label %vector.body610.3

vector.body610.3:                                 ; preds = %vector.body610.2
  %next.gep612.3 = getelementptr i8, ptr %i.ly, i64 97
  %i.qc = getelementptr i8, ptr %i.ly, i64 113
  %wide.load613.3 = load <4 x i32>, ptr %next.gep612.3, align 1, !tbaa !242
  %wide.load614.3 = load <4 x i32>, ptr %i.qc, align 1, !tbaa !242
  %i.qd = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load613.3)
  %i.qe = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load614.3)
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.pb ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store <4 x i32> %i.qd, ptr %i.qf, align 4, !tbaa !206
  store <4 x i32> %i.qe, ptr %i.qg, align 4, !tbaa !206
  %i.qh = icmp eq i64 %n.vec609, 32
  br i1 %i.qh, label %middle.block616, label %vector.body610.4

vector.body610.4:                                 ; preds = %vector.body610.3
  %next.gep612.4 = getelementptr i8, ptr %i.ly, i64 129
  %i.qi = getelementptr i8, ptr %i.ly, i64 145
  %wide.load613.4 = load <4 x i32>, ptr %next.gep612.4, align 1, !tbaa !242
  %wide.load614.4 = load <4 x i32>, ptr %i.qi, align 1, !tbaa !242
  %i.qj = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load613.4)
  %i.qk = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load614.4)
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.pb ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  store <4 x i32> %i.qj, ptr %i.ql, align 4, !tbaa !206
  store <4 x i32> %i.qk, ptr %i.qm, align 4, !tbaa !206
  %i.qn = icmp eq i64 %n.vec609, 40
  br i1 %i.qn, label %middle.block616, label %vector.body610.5

vector.body610.5:                                 ; preds = %vector.body610.4
  %next.gep612.5 = getelementptr i8, ptr %i.ly, i64 161
  %i.qo = getelementptr i8, ptr %i.ly, i64 177
  %wide.load613.5 = load <4 x i32>, ptr %next.gep612.5, align 1, !tbaa !242
  %wide.load614.5 = load <4 x i32>, ptr %i.qo, align 1, !tbaa !242
  %i.qp = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load613.5)
  %i.qq = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load614.5)
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.pb ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store <4 x i32> %i.qp, ptr %i.qr, align 4, !tbaa !206
  store <4 x i32> %i.qq, ptr %i.qs, align 4, !tbaa !206
  %i.qt = icmp eq i64 %n.vec609, 48
  br i1 %i.qt, label %middle.block616, label %vector.body610.6

vector.body610.6:                                 ; preds = %vector.body610.5
  %next.gep612.6 = getelementptr i8, ptr %i.ly, i64 193
  %i.qu = getelementptr i8, ptr %i.ly, i64 209
  %wide.load613.6 = load <4 x i32>, ptr %next.gep612.6, align 1, !tbaa !242
  %wide.load614.6 = load <4 x i32>, ptr %i.qu, align 1, !tbaa !242
  %i.qv = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load613.6)
  %i.qw = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load614.6)
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.pb ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store <4 x i32> %i.qv, ptr %i.qx, align 4, !tbaa !206
  store <4 x i32> %i.qw, ptr %i.qy, align 4, !tbaa !206
  %i.qz = icmp eq i64 %n.vec609, 56
  br i1 %i.qz, label %middle.block616, label %vector.body610.7

vector.body610.7:                                 ; preds = %vector.body610.6
  %next.gep612.7 = getelementptr i8, ptr %i.ly, i64 225
  %i.ra = getelementptr i8, ptr %i.ly, i64 241
  %wide.load613.7 = load <4 x i32>, ptr %next.gep612.7, align 1, !tbaa !242
  %wide.load614.7 = load <4 x i32>, ptr %i.ra, align 1, !tbaa !242
  %i.rb = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load613.7)
  %i.rc = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load614.7)
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.pb ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store <4 x i32> %i.rb, ptr %i.rd, align 4, !tbaa !206
  store <4 x i32> %i.rc, ptr %i.re, align 4, !tbaa !206
  br label %middle.block616

middle.block616:                                  ; preds = %vector.body610.7, %vector.body610.6, %vector.body610.5, %vector.body610.4, %vector.body610.3, %vector.body610.2, %vector.body610.1, %vector.ph608
  %cmp.n617 = icmp eq i64 %n.vec609, %i.pd
  br i1 %cmp.n617, label %..loopexit294_crit_edge, label %scalar.ph606.preheader

scalar.ph606.preheader:                           ; preds = %vector.memcheck, %.lr.ph360, %middle.block616
  %indvars.iv444.ph = phi i64 [ %i.pb, %vector.memcheck ], [ %i.pb, %.lr.ph360 ], [ %i.ph, %middle.block616 ]
  %.ph680 = phi ptr [ %i.ma, %vector.memcheck ], [ %i.ma, %.lr.ph360 ], [ %i.pj, %middle.block616 ]
  br label %scalar.ph606

scalar.ph606:                                     ; preds = %scalar.ph606.preheader, %scalar.ph606
  %indvars.iv444 = phi i64 [ %indvars.iv.next445, %scalar.ph606 ], [ %indvars.iv444.ph, %scalar.ph606.preheader ] ; 2 uses
  %i.rf = phi ptr [ %i.rj, %scalar.ph606 ], [ %.ph680, %scalar.ph606.preheader ] ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 1, !tbaa !242
  %i.rh = call noundef i32 @llvm.bswap.i32(i32 %i.rg)
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.sroa.12.4.ph, i64 %indvars.iv444
  store i32 %i.rh, ptr %i.ri, align 4, !tbaa !206
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 4 ; 2 uses
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond448.not = icmp eq i64 %indvars.iv.next445, %wide.trip.count447
  br i1 %exitcond448.not, label %..loopexit294_crit_edge, label %scalar.ph606, !llvm.loop !3168

bb.am:                                            ; preds = %bb.ah
  %i.rk = zext nneg i32 %i.mf to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.rk
  %i.rm = icmp ugt ptr %i.rl, %i.cj
  br i1 %i.rm, label %.critedge, label %bb.an, !prof !103

bb.an:                                            ; preds = %bb.am
  %i.rn = icmp samesign ugt i32 %i.me, 2
  br i1 %i.rn, label %.lr.ph350, label %.lr.ph355

.lr.ph350:                                        ; preds = %bb.an
  %i.ro = add nuw i32 %.0101.i53374, 3
  br label %bb.ao

.preheader295:                                    ; preds = %bb.ao
  store ptr %i.sx, ptr %i.a, align 8, !tbaa !796
  %i.rp = icmp ult i32 %i.tc, %i.mg
  br i1 %i.rp, label %.lr.ph355, label %.loopexit

.lr.ph355:                                        ; preds = %bb.an, %.preheader295
  %.4.i55.lcssa529 = phi i32 [ %i.tc, %.preheader295 ], [ %.0101.i53374, %bb.an ]
  %.promoted357528 = phi ptr [ %i.sx, %.preheader295 ], [ %i.ma, %bb.an ] ; 3 uses
  %i.rq = zext i32 %.4.i55.lcssa529 to i64        ; 4 uses
  %wide.trip.count442 = zext nneg i32 %i.mg to i64
  %i.rr = zext i32 %.0101.i53374 to i64
  %i.rs = and i8 %i.mc, 63
  %i.rt = zext nneg i8 %i.rs to i64
  %i.ru = add nuw nsw i64 %i.rr, %i.rt
  %i.rv = add nuw nsw i64 %i.ru, 1
  %i.rw = sub nsw i64 %i.rv, %i.rq                ; 3 uses
  %min.iters.check621 = icmp ult i64 %i.rw, 8
  br i1 %min.iters.check621, label %scalar.ph620.preheader, label %vector.ph622

vector.ph622:                                     ; preds = %.lr.ph355
  %n.vec623 = and i64 %i.rw, -8                   ; 4 uses
  %i.rx = add nsw i64 %n.vec623, %i.rq
  %i.ry = getelementptr i8, ptr %.promoted357528, i64 %n.vec623 ; 2 uses
  %invariant.gep758 = getelementptr [4 x i8], ptr %.sroa.12.4.ph, i64 %i.rq
  br label %vector.body624

vector.body624:                                   ; preds = %vector.body624, %vector.ph622
  %index625 = phi i64 [ 0, %vector.ph622 ], [ %index.next629, %vector.body624 ] ; 3 uses
  %next.gep626 = getelementptr i8, ptr %.promoted357528, i64 %index625 ; 2 uses
  %i.rz = getelementptr i8, ptr %next.gep626, i64 4
  %wide.load627 = load <4 x i8>, ptr %next.gep626, align 1, !tbaa !477
  %wide.load628 = load <4 x i8>, ptr %i.rz, align 1, !tbaa !477
  %i.sa = sext <4 x i8> %wide.load627 to <4 x i32>
  %i.sb = sext <4 x i8> %wide.load628 to <4 x i32>
  %gep759 = getelementptr [4 x i8], ptr %invariant.gep758, i64 %index625 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %gep759, i64 16
  store <4 x i32> %i.sa, ptr %gep759, align 4, !tbaa !206
  store <4 x i32> %i.sb, ptr %i.sc, align 4, !tbaa !206
  %index.next629 = add nuw i64 %index625, 8       ; 2 uses
  %i.sd = icmp eq i64 %index.next629, %n.vec623
  br i1 %i.sd, label %middle.block630, label %vector.body624, !llvm.loop !3169

middle.block630:                                  ; preds = %vector.body624
  %cmp.n631 = icmp eq i64 %i.rw, %n.vec623
  br i1 %cmp.n631, label %..loopexit296_crit_edge, label %scalar.ph620.preheader

scalar.ph620.preheader:                           ; preds = %.lr.ph355, %middle.block630
  %indvars.iv439.ph = phi i64 [ %i.rq, %.lr.ph355 ], [ %i.rx, %middle.block630 ]
  %.ph681 = phi ptr [ %.promoted357528, %.lr.ph355 ], [ %i.ry, %middle.block630 ]
end_hunk_1
