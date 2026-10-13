Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN2OT13tuple_delta_t14compile_deltasE10hb_array_tIKbES1_IKfES5_R11hb_vector_tIhLb0EERS6_IiLb0EEP15hb_alloc_pool_t:bb.a
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1456
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
  %scevgep240 = getelementptr i8, ptr %2, i64 1
  %scevgep242.a = getelementptr i8, ptr %2, i64 65
  %scevgep245 = getelementptr i8, ptr %0, i64 256
  %scevgep287 = getelementptr i8, ptr %0, i64 256
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
  br i1 %exitcond.not.i232, label %..critedge.i_crit_edge, label %.lr.ph.i.lr.ph, !llvm.loop !1457

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph120.preheader
  br label %.lr.ph.i, !llvm.loop !1457

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph120
  %i.i = phi i32 [ 1, %.lr.ph.i.lr.ph ], [ %i.m, %.lr.ph120 ] ; 2 uses
  %indvars.iv.i118233 = phi i64 [ %i.b, %.lr.ph.i.lr.ph ], [ %indvars.iv.next.i, %.lr.ph120 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i118233, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !206
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.lr.ph120, label %.critedge.i.loopexit, !llvm.loop !1457

.lr.ph120:                                        ; preds = %.lr.ph.i
  %i.m = add i32 %i.i, 1                          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.m, %i.h
  br i1 %exitcond.not.i, label %.lr.ph120...critedge.i_crit_edge_crit_edge, label %.lr.ph.i, !llvm.loop !1457

.lr.ph120...critedge.i_crit_edge_crit_edge:       ; preds = %.lr.ph120
  br label %..critedge.i_crit_edge, !llvm.loop !1457

..critedge.i_crit_edge:                           ; preds = %.lr.ph120...critedge.i_crit_edge_crit_edge, %.lr.ph120.preheader
  br label %.critedge.i, !llvm.loop !1457

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
  %scevgep241.a = getelementptr i8, ptr %scevgep240, i64 %i.z
  %i.an = add i32 %.5.ph, -64
  %i.ao = sub i32 %i.an, %.083125
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 65
  %i.as = getelementptr i8, ptr %scevgep242.a, i64 %i.ar
  %scevgep243.a = getelementptr i8, ptr %i.as, i64 %i.z
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
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.aw
  %scevgep244 = getelementptr i8, ptr %0, i64 %i.aw
  %bound0247 = icmp ult ptr %scevgep241.a, %scevgep246
  %bound1248 = icmp ult ptr %scevgep244, %scevgep243.a
  %found.conflict249 = and i1 %bound0247, %bound1248
  br i1 %found.conflict249, label %scalar.ph250.preheader, label %vector.body252

vector.body252:                                   ; preds = %vector.memcheck239
  %i.ax = zext i32 %.04758.i to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load254 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255 = load <4 x i32>, ptr %i.az, align 4, !tbaa !206, !alias.scope !1484
  %i.ba = trunc <4 x i32> %wide.load254 to <4 x i8>
  %i.bb = trunc <4 x i32> %wide.load255 to <4 x i8>
  %i.bc = getelementptr inbounds nuw i8, ptr %.04857.i, i64 5
  store <4 x i8> %i.ba, ptr %i.at, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.bd = add i32 %.04758.i, 8
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load254.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.1 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !206, !alias.scope !1484
  %i.bh = trunc <4 x i32> %wide.load254.1 to <4 x i8>
  %i.bi = trunc <4 x i32> %wide.load255.1 to <4 x i8>
  %i.bj = getelementptr inbounds nuw i8, ptr %.04857.i, i64 9
  %i.bk = getelementptr inbounds nuw i8, ptr %.04857.i, i64 13
  store <4 x i8> %i.bh, ptr %i.bj, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.bi, ptr %i.bk, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.bl = add i32 %.04758.i, 16
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load254.2 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.2 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !206, !alias.scope !1484
  %i.bp = trunc <4 x i32> %wide.load254.2 to <4 x i8>
  %i.bq = trunc <4 x i32> %wide.load255.2 to <4 x i8>
  %i.br = getelementptr inbounds nuw i8, ptr %.04857.i, i64 17
  %i.bs = getelementptr inbounds nuw i8, ptr %.04857.i, i64 21
  store <4 x i8> %i.bp, ptr %i.br, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.bq, ptr %i.bs, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.bt = add i32 %.04758.i, 24
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load254.3 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.3 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !206, !alias.scope !1484
  %i.bx = trunc <4 x i32> %wide.load254.3 to <4 x i8>
  %i.by = trunc <4 x i32> %wide.load255.3 to <4 x i8>
  %i.bz = getelementptr inbounds nuw i8, ptr %.04857.i, i64 25
  %i.ca = getelementptr inbounds nuw i8, ptr %.04857.i, i64 29
  store <4 x i8> %i.bx, ptr %i.bz, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.by, ptr %i.ca, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.cb = add i32 %.04758.i, 32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load254.4 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.4 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !206, !alias.scope !1484
  %i.cf = trunc <4 x i32> %wide.load254.4 to <4 x i8>
  %i.cg = trunc <4 x i32> %wide.load255.4 to <4 x i8>
  %i.ch = getelementptr inbounds nuw i8, ptr %.04857.i, i64 33
  %i.ci = getelementptr inbounds nuw i8, ptr %.04857.i, i64 37
  store <4 x i8> %i.cf, ptr %i.ch, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.cg, ptr %i.ci, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.cj = add i32 %.04758.i, 40
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load254.5 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.5 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !206, !alias.scope !1484
  %i.cn = trunc <4 x i32> %wide.load254.5 to <4 x i8>
  %i.co = trunc <4 x i32> %wide.load255.5 to <4 x i8>
  %i.cp = getelementptr inbounds nuw i8, ptr %.04857.i, i64 41
  %i.cq = getelementptr inbounds nuw i8, ptr %.04857.i, i64 45
  store <4 x i8> %i.cn, ptr %i.cp, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.co, ptr %i.cq, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.cr = add i32 %.04758.i, 48
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load254.6 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.6 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !206, !alias.scope !1484
  %i.cv = trunc <4 x i32> %wide.load254.6 to <4 x i8>
  %i.cw = trunc <4 x i32> %wide.load255.6 to <4 x i8>
  %i.cx = getelementptr inbounds nuw i8, ptr %.04857.i, i64 49
  %i.cy = getelementptr inbounds nuw i8, ptr %.04857.i, i64 53
  store <4 x i8> %i.cv, ptr %i.cx, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.cw, ptr %i.cy, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  %i.cz = add i32 %.04758.i, 56
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load254.7 = load <4 x i32>, ptr %i.db, align 4, !tbaa !206, !alias.scope !1484
  %wide.load255.7 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !206, !alias.scope !1484
  %i.dd = trunc <4 x i32> %wide.load254.7 to <4 x i8>
  %i.de = trunc <4 x i32> %wide.load255.7 to <4 x i8>
  %i.df = getelementptr inbounds nuw i8, ptr %.04857.i, i64 57
  %i.dg = getelementptr inbounds nuw i8, ptr %.04857.i, i64 61
  store <4 x i8> %i.dd, ptr %i.df, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  store <4 x i8> %i.de, ptr %i.dg, align 1, !tbaa !277, !alias.scope !1485, !noalias !1484
  br label %middle.block257

middle.block257:                                  ; preds = %scalar.ph250, %vector.body252
  %i.dh = getelementptr inbounds nuw i8, ptr %.04857.i, i64 65 ; 2 uses
  %i.di = add i32 %.04460.i, 65                   ; 2 uses
  %i.dj = add i32 %.04758.i, 64                   ; 2 uses
  %i.dk = add i32 %.04559.i, -64                  ; 3 uses
  %i.dl = icmp ugt i32 %i.dk, 63
  br i1 %i.dl, label %.lr.ph61.i, label %._crit_edge.i48, !llvm.loop !1461

scalar.ph250:                                     ; preds = %scalar.ph250, %scalar.ph250.preheader
  %indvars.iv70.i = phi i64 [ 0, %scalar.ph250.preheader ], [ %indvars.iv.next71.i.3, %scalar.ph250 ] ; 6 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv70.i to i32
  %i.dn = add i32 %.04758.i, %i.dm
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !206
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv70.i
end_hunk_0
begin_hunk_1_@_ZN2OT11TupleValues14compile_unsafeE10hb_array_tIKiEPh:bb.a
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv88.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !206 ; 2 uses
  %i.oq = lshr i32 %i.op, 8
  %i.or = trunc i32 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %.275.i, i64 7
  store i8 %i.or, ptr %i.om, align 1, !tbaa !277
  %i.ot = trunc i32 %i.op to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  store i8 %i.ot, ptr %i.os, align 1, !tbaa !277
  %i.ov = add i32 %.25273.i, 8                    ; 2 uses
  %exitcond149.not.3 = icmp eq i64 %indvars.iv.next89.i.3, %i.mk
  br i1 %exitcond149.not.3, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph77.i, !llvm.loop !1479

.lr.ph.i71:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ow = phi i32 [ %i.pb, %.lr.ph ], [ %i.hc, %.lr.ph.preheader ]
  %indvars.iv.next.i73230 = phi i64 [ %indvars.iv.next.i73, %.lr.ph ], [ %indvars.iv.next.i73228, %.lr.ph.preheader ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i73230
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !206
  %i.oz = add i32 %i.oy, 32768
  %i.pa = icmp ult i32 %i.oz, 65536
  br i1 %i.pa, label %.thread.i65, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i71
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.next.i73230, 1 ; 2 uses
  %i.pb = trunc i64 %indvars.iv.next.i73 to i32   ; 2 uses
  %exitcond.not.i74 = icmp eq i32 %i.pb, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not.i74, label %.thread.i65, label %.lr.ph.i71

.thread.i65:                                      ; preds = %.lr.ph, %.lr.ph.i71, %.lr.ph.preheader
  %.lcssa = phi i32 [ %.sroa.6.8.extract.trunc, %.lr.ph.preheader ], [ %.sroa.6.8.extract.trunc, %.lr.ph ], [ %i.ow, %.lr.ph.i71 ] ; 7 uses
  %i.pc = sub i32 %.lcssa, %.083125               ; 3 uses
  %i.pd = icmp ugt i32 %i.pc, 63
  br i1 %i.pd, label %.lr.ph64.i, label %._crit_edge.i66

.lr.ph64.i:                                       ; preds = %.thread.i65, %bb.j
  %.063.i = phi ptr [ %i.qp, %bb.j ], [ %i.hb, %.thread.i65 ] ; 2 uses
  %.04662.i = phi i32 [ %i.pg, %bb.j ], [ %.083125, %.thread.i65 ] ; 3 uses
  %.04961.i = phi i32 [ %i.pf, %bb.j ], [ 0, %.thread.i65 ]
  %.05260.i = phi i32 [ %i.ph, %bb.j ], [ %i.pc, %.thread.i65 ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.063.i, i64 1
  store i8 -1, ptr %.063.i, align 1, !tbaa !277
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.pf = add i32 %.04961.i, 257                  ; 2 uses
  %i.pg = add i32 %.04662.i, 64                   ; 2 uses
  %i.ph = add i32 %.05260.i, -64                  ; 3 uses
  %i.pi = icmp ugt i32 %i.ph, 63
  br i1 %i.pi, label %.lr.ph64.i, label %._crit_edge.i66, !llvm.loop !1480

bb.k:                                             ; preds = %bb.k, %.lr.ph64.i
  %indvars.iv79.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next80.i.1, %bb.k ] ; 3 uses
  %.159.i = phi ptr [ %i.pe, %.lr.ph64.i ], [ %i.qp, %bb.k ] ; 9 uses
  %i.pj = trunc nuw nsw i64 %indvars.iv79.i to i32
  %i.pk = add i32 %.04662.i, %i.pj
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !206 ; 4 uses
  %i.po = lshr i32 %i.pn, 24
  %i.pp = trunc nuw i32 %i.po to i8
  %i.pq = getelementptr inbounds nuw i8, ptr %.159.i, i64 1
  store i8 %i.pp, ptr %.159.i, align 1, !tbaa !277
  %i.pr = lshr i32 %i.pn, 16
  %i.ps = trunc i32 %i.pr to i8
  %i.pt = getelementptr inbounds nuw i8, ptr %.159.i, i64 2
  store i8 %i.ps, ptr %i.pq, align 1, !tbaa !277
  %i.pu = lshr i32 %i.pn, 8
  %i.pv = trunc i32 %i.pu to i8
  %i.pw = getelementptr inbounds nuw i8, ptr %.159.i, i64 3
  store i8 %i.pv, ptr %i.pt, align 1, !tbaa !277
  %i.px = trunc i32 %i.pn to i8
  %i.py = getelementptr inbounds nuw i8, ptr %.159.i, i64 4
  store i8 %i.px, ptr %i.pw, align 1, !tbaa !277
  %i.pz = trunc i64 %indvars.iv79.i to i32
  %i.qa = or disjoint i32 %i.pz, 1
  %i.qb = add i32 %.04662.i, %i.qa
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !206 ; 4 uses
  %i.qf = lshr i32 %i.qe, 24
  %i.qg = trunc nuw i32 %i.qf to i8
  %i.qh = getelementptr inbounds nuw i8, ptr %.159.i, i64 5
  store i8 %i.qg, ptr %i.py, align 1, !tbaa !277
  %i.qi = lshr i32 %i.qe, 16
  %i.qj = trunc i32 %i.qi to i8
  %i.qk = getelementptr inbounds nuw i8, ptr %.159.i, i64 6
  store i8 %i.qj, ptr %i.qh, align 1, !tbaa !277
  %i.ql = lshr i32 %i.qe, 8
  %i.qm = trunc i32 %i.ql to i8
  %i.qn = getelementptr inbounds nuw i8, ptr %.159.i, i64 7
  store i8 %i.qm, ptr %i.qk, align 1, !tbaa !277
  %i.qo = trunc i32 %i.qe to i8
  %i.qp = getelementptr inbounds nuw i8, ptr %.159.i, i64 8 ; 3 uses
  store i8 %i.qo, ptr %i.qn, align 1, !tbaa !277
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %exitcond82.not.i.1 = icmp eq i64 %indvars.iv.next80.i.1, 64
  br i1 %exitcond82.not.i.1, label %bb.j, label %bb.k, !llvm.loop !1481

._crit_edge.i66:                                  ; preds = %bb.j, %.thread.i65
  %.052.lcssa.i = phi i32 [ %i.pc, %.thread.i65 ], [ %i.ph, %bb.j ] ; 2 uses
  %.049.lcssa.i = phi i32 [ 0, %.thread.i65 ], [ %i.pf, %bb.j ] ; 3 uses
  %.046.lcssa.i = phi i32 [ %.083125, %.thread.i65 ], [ %i.pg, %bb.j ] ; 2 uses
  %.0.lcssa.i67 = phi ptr [ %i.hb, %.thread.i65 ], [ %i.qp, %bb.j ] ; 6 uses
  %.not.i68 = icmp eq i32 %.052.lcssa.i, 0
  br i1 %.not.i68, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i66
  %i.qq = trunc nuw nsw i32 %.052.lcssa.i to i8
  %i.qr = add nuw nsw i8 %i.qq, 63
  %i.qs = or i8 %i.qr, -64
  store i8 %i.qs, ptr %.0.lcssa.i67, align 1, !tbaa !277
  %i.qt = add i32 %.049.lcssa.i, 1                ; 2 uses
  %i.qu = icmp ult i32 %.046.lcssa.i, %.lcssa
  br i1 %i.qu, label %.lr.ph72.preheader.i, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit

.lr.ph72.preheader.i:                             ; preds = %bb.l
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 1 ; 2 uses
  %i.qw = zext i32 %.046.lcssa.i to i64           ; 5 uses
  %i.qx = zext i32 %.lcssa to i64                 ; 3 uses
  %i.qy = sub nsw i64 %i.qx, %i.qw
  %xtraiter = and i64 %i.qy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.i.prol.loopexit, label %.lr.ph72.i.prol

.lr.ph72.i.prol:                                  ; preds = %.lr.ph72.preheader.i
  %indvars.iv.next84.i.prol = add nuw nsw i64 %i.qw, 1
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qw
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !206 ; 4 uses
  %i.rb = lshr i32 %i.ra, 24
  %i.rc = trunc nuw i32 %i.rb to i8
  %i.rd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 2
  store i8 %i.rc, ptr %i.qv, align 1, !tbaa !277
  %i.re = lshr i32 %i.ra, 16
  %i.rf = trunc i32 %i.re to i8
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 3
  store i8 %i.rf, ptr %i.rd, align 1, !tbaa !277
  %i.rh = lshr i32 %i.ra, 8
  %i.ri = trunc i32 %i.rh to i8
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 4
  store i8 %i.ri, ptr %i.rg, align 1, !tbaa !277
  %i.rk = trunc i32 %i.ra to i8
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 5
  store i8 %i.rk, ptr %i.rj, align 1, !tbaa !277
  %i.rm = add i32 %.049.lcssa.i, 5                ; 2 uses
  br label %.lr.ph72.i.prol.loopexit

.lr.ph72.i.prol.loopexit:                         ; preds = %.lr.ph72.i.prol, %.lr.ph72.preheader.i
  %.lcssa315.unr = phi i32 [ poison, %.lr.ph72.preheader.i ], [ %i.rm, %.lr.ph72.i.prol ]
  %indvars.iv83.i.unr = phi i64 [ %i.qw, %.lr.ph72.preheader.i ], [ %indvars.iv.next84.i.prol, %.lr.ph72.i.prol ]
  %.270.i.unr = phi ptr [ %i.qv, %.lr.ph72.preheader.i ], [ %i.rl, %.lr.ph72.i.prol ]
  %.25168.i.unr = phi i32 [ %i.qt, %.lr.ph72.preheader.i ], [ %i.rm, %.lr.ph72.i.prol ]
  %i.rn = add nsw i64 %i.qx, -1
  %i.ro = icmp eq i64 %i.rn, %i.qw
  br i1 %i.ro, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.lr.ph72.i.prol.loopexit, %.lr.ph72.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i.1, %.lr.ph72.i ], [ %indvars.iv83.i.unr, %.lr.ph72.i.prol.loopexit ] ; 3 uses
  %.270.i = phi ptr [ %i.sp, %.lr.ph72.i ], [ %.270.i.unr, %.lr.ph72.i.prol.loopexit ] ; 9 uses
  %.25168.i = phi i32 [ %i.sq, %.lr.ph72.i ], [ %.25168.i.unr, %.lr.ph72.i.prol.loopexit ]
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv83.i
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !206 ; 4 uses
  %i.rr = lshr i32 %i.rq, 24
  %i.rs = trunc nuw i32 %i.rr to i8
  %i.rt = getelementptr inbounds nuw i8, ptr %.270.i, i64 1
  store i8 %i.rs, ptr %.270.i, align 1, !tbaa !277
  %i.ru = lshr i32 %i.rq, 16
  %i.rv = trunc i32 %i.ru to i8
  %i.rw = getelementptr inbounds nuw i8, ptr %.270.i, i64 2
  store i8 %i.rv, ptr %i.rt, align 1, !tbaa !277
  %i.rx = lshr i32 %i.rq, 8
  %i.ry = trunc i32 %i.rx to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %.270.i, i64 3
  store i8 %i.ry, ptr %i.rw, align 1, !tbaa !277
  %i.sa = trunc i32 %i.rq to i8
  %i.sb = getelementptr inbounds nuw i8, ptr %.270.i, i64 4
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !277
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv83.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !206 ; 4 uses
  %i.sf = lshr i32 %i.se, 24
  %i.sg = trunc nuw i32 %i.sf to i8
  %i.sh = getelementptr inbounds nuw i8, ptr %.270.i, i64 5
  store i8 %i.sg, ptr %i.sb, align 1, !tbaa !277
  %i.si = lshr i32 %i.se, 16
  %i.sj = trunc i32 %i.si to i8
  %i.sk = getelementptr inbounds nuw i8, ptr %.270.i, i64 6
  store i8 %i.sj, ptr %i.sh, align 1, !tbaa !277
  %i.sl = lshr i32 %i.se, 8
  %i.sm = trunc i32 %i.sl to i8
  %i.sn = getelementptr inbounds nuw i8, ptr %.270.i, i64 7
  store i8 %i.sm, ptr %i.sk, align 1, !tbaa !277
  %i.so = trunc i32 %i.se to i8
  %i.sp = getelementptr inbounds nuw i8, ptr %.270.i, i64 8
  store i8 %i.so, ptr %i.sn, align 1, !tbaa !277
  %i.sq = add i32 %.25168.i, 8                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next84.i.1, %i.qx
  br i1 %exitcond.not.1, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph72.i, !llvm.loop !1482

_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit: ; preds = %.lr.ph72.i.prol.loopexit, %.lr.ph72.i, %.lr.ph77.i.prol.loopexit, %.lr.ph77.i, %middle.block279, %bb.l, %._crit_edge.i66, %bb.i, %._crit_edge.i56, %.loopexit307, %._crit_edge.i48, %bb.c, %._crit_edge.i
  %.184 = phi i32 [ %.7, %middle.block279 ], [ %.3, %bb.c ], [ %.5.ph, %.loopexit307 ], [ %.3, %._crit_edge.i ], [ %.5.ph, %._crit_edge.i48 ], [ %.7, %._crit_edge.i56 ], [ %.7, %bb.i ], [ %.lcssa, %._crit_edge.i66 ], [ %.lcssa, %bb.l ], [ %.7, %.lr.ph77.i.prol.loopexit ], [ %.7, %.lr.ph77.i ], [ %.lcssa, %.lr.ph72.i ], [ %.lcssa, %.lr.ph72.i.prol.loopexit ] ; 2 uses
  %.pn = phi i32 [ %i.ne, %middle.block279 ], [ %i.w, %bb.c ], [ %i.fv, %.loopexit307 ], [ %.0.lcssa.i, %._crit_edge.i ], [ %.044.lcssa.i, %._crit_edge.i48 ], [ %.050.lcssa.i, %._crit_edge.i56 ], [ %i.mg, %bb.i ], [ %.049.lcssa.i, %._crit_edge.i66 ], [ %i.qt, %bb.l ], [ %i.ov, %.lr.ph77.i ], [ %.lcssa327.unr, %.lr.ph77.i.prol.loopexit ], [ %.lcssa315.unr, %.lr.ph72.i.prol.loopexit ], [ %i.sq, %.lr.ph72.i ]
  %.1 = add i32 %.pn, %.0126                      ; 2 uses
  %i.sr = icmp ult i32 %.184, %.sroa.6.8.extract.trunc
  br i1 %i.sr, label %bb.b, label %._crit_edge, !llvm.loop !1483

._crit_edge:                                      ; preds = %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !356    ; 7 uses
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
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !39

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !103

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !358
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !358  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !103

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !357  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !103

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1495
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, !prof !190

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !356   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !358
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !356
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE13set_with_hashIS3_RjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !280, !range !201, !noundef !210
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !207

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !502  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !445
  %.not36 = icmp ult i32 %i.g, %i.i
  br i1 %.not36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !207

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !442
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !355  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.f
  %i.v = phi ptr [ %i.ae, %bb.f ], [ %i.p, %.critedge ]
  %i.w = phi i32 [ %i.ar, %bb.f ], [ %i.t, %.critedge ]
  %i.x = phi ptr [ %i.ap, %bb.f ], [ %i.r, %.critedge ]
  %i.y = phi i64 [ %i.ao, %bb.f ], [ %i.q, %.critedge ]
  %.050 = phi i32 [ %i.ak, %bb.f ], [ 0, %.critedge ] ; 2 uses
  %.03148 = phi i32 [ %i.an, %bb.f ], [ %i.n, %.critedge ] ; 3 uses
  %.03247 = phi i32 [ %spec.select, %bb.f ], [ -1, %.critedge ] ; 3 uses
  %i.z = lshr i32 %i.w, 2
  %i.aa = icmp eq i32 %i.z, %i.k
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !444
  %i.ac = load ptr, ptr %1, align 8, !tbaa !506
  %i.ad = tail call noundef zeroext i1 @_ZNK12hb_hashmap_tIj6TripleLb0EE8is_equalERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.ac)
  br i1 %i.ad, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !355
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %..loopexit_crit_edge, label %bb.k

..loopexit_crit_edge:                             ; preds = %bb.e
  %.pre58 = load ptr, ptr %i.o, align 8, !tbaa !355
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge, %.lr.ph
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.v, %.lr.ph ] ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = trunc i32 %i.ah to i1
  %i.aj = icmp ne i32 %.03247, -1
end_hunk_1
