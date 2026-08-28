Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-serialize?download=true
inline.NumInlined: 5839
inline.NumDeleted: 2553
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIjjEEbOT_jOT0_b:bb.a
bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !175
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !383

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
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !358
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !358
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !201
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !201
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !40
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !365
  %i.ba = load i32, ptr %3, align 4, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !367
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !40
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !362
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !175 ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_t22sort_shortest_distanceEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 1, ptr %i.a, align 2, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !217
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %_ZN19hb_priority_queue_tIlED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5graph7graph_t16update_distancesEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.e = load i32, ptr %i.b, align 4, !tbaa !217  ; 3 uses
  %.not.i89.not = icmp eq i32 %i.e, 0
  br i1 %.not.i89.not, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit.thread, label %.preheader.i, !prof !8

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.043.i = phi i32 [ %i.h, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = lshr i32 %.043.i, 1
  %i.g = add i32 %.043.i, 8
  %i.h = add i32 %i.g, %i.f                       ; 5 uses
  %i.i = icmp ugt i32 %i.e, %i.h
  br i1 %i.i, label %.preheader.i, label %.thread.i, !llvm.loop !384

.thread.i:                                        ; preds = %.preheader.i
  %i.j = icmp ugt i32 %i.h, 268435455
  br i1 %i.j, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !11

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.k = shl nuw i32 %i.h, 4
  %i.l = zext i32 %i.k to i64
  %i.m = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.l) #15 ; 2 uses
  %.not22.i = icmp eq ptr %i.m, null
  %spec.select = select i1 %.not22.i, i32 -1, i32 %i.h, !prof !12
  %.pr.pre = load i32, ptr %i.b, align 4, !tbaa !217
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %.thread.i
  %.pr = phi i32 [ %.pr.pre, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %i.e, %.thread.i ] ; 2 uses
  %.sroa.0208.11.ph = phi i32 [ %spec.select, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ -1, %.thread.i ] ; 2 uses
  %.sroa.42.12.ph = phi ptr [ %i.m, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ null, %.thread.i ] ; 2 uses
  %i.n = icmp slt i32 %.pr, 0
  br i1 %i.n, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit.thread, !prof !264

_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit.thread: ; preds = %bb.b, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit
  %.sroa.42.12298 = phi ptr [ %.sroa.42.12.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ null, %bb.b ] ; 11 uses
  %.sroa.0208.11296 = phi i32 [ %.sroa.0208.11.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ 0, %bb.b ] ; 10 uses
  %i.o = phi i32 [ %.pr, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ 0, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef %i.o, i1 noundef zeroext false)
  br i1 %i.q, label %bb.c, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !39   ; 3 uses
  %i.t = icmp ugt i32 %i.o, %i.s
  br i1 %i.t, label %bb.d, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = sub nuw nsw i32 %i.o, %i.s
  %i.v = shl i32 %i.u, 2                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.y = zext nneg i32 %i.s to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = zext i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.aa, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread

_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread:     ; preds = %bb.c, %bb.d, %bb.e
  store i32 %i.o, ptr %i.r, align 4, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 9 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !28, !range !37, !noundef !38
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !264

_ZN11hb_vector_tIjLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit.thread
  %.sroa.42.12299 = phi ptr [ %.sroa.42.12.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %.sroa.42.12298, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit.thread ] ; 2 uses
  %.sroa.0208.11297 = phi i32 [ %.sroa.0208.11.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %.sroa.0208.11296, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit.thread ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 2 uses
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
  br i1 %.not.i92.not, label %bb.h, label %.preheader.i94, !prof !8

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
  br i1 %.not22.i99, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread, !prof !12

_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread:   ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %1 = shl nuw i32 %i.ah, 2
  %2 = zext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %2, i1 false)
  %i.ar = load i8, ptr %i.ab, align 1, !tbaa !28, !range !37
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.h, label %.thread396, !prof !264

_ZN11hb_vector_tIjLb0EE6resizeEi.exit38:          ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre472.a = load i8, ptr %i.ab, align 1, !tbaa !28, !range !37
  %i.at = trunc nuw i8 %.pre472.a to i1
  br i1 %i.at, label %.thread396.sink.split, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, !prof !375

bb.h:                                             ; preds = %bb.g, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread
  %.sroa.13196.0.ph509 = phi ptr [ %i.aq, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ null, %bb.g ] ; 6 uses
  %.sroa.0189.0.ph508 = phi i32 [ %i.al, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ 0, %bb.g ] ; 4 uses
  tail call void @_ZN5graph7graph_t14update_parentsEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !39
  %.not.i.not.i.i = icmp eq i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %.0.i.i.i = select i1 %.not.i.not.i.i, ptr @_hb_NullPool, ptr %i.ax, !prof !11
  %i.ay = load i32, ptr %.0.i.i.i, align 4, !tbaa !40 ; 3 uses
  %i.az = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.ay, %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = zext i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [216 x i8], ptr %i.bb, i64 %i.bc
  %.0.i.i = select i1 %.not.i.i, ptr %i.bd, ptr @_hb_NullPool, !prof !8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !386
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 76
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !207 ; 3 uses
  %.not.i.i42 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i42, label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !143
  %i.bk = load ptr, ptr %.0.i.i, align 8, !tbaa !144
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp eq i32 %i.bh, 1
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = sdiv i64 %i.bn, -2
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit

bb.k:                                             ; preds = %bb.i
  %i.bq = sub nsw i64 0, %i.bn
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit

_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.1.i.i43 = phi i64 [ 0, %bb.h ], [ %i.bp, %bb.j ], [ %i.bq, %bb.k ]
  %i.br = add nsw i64 %.1.i.i43, %i.bf
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.br, i64 0)
  %i.bs = tail call i64 @llvm.umin.i64(i64 %.sroa.speculate.load.false.sroa.speculated.i, i64 8796093022207)
  %i.bt = icmp ugt i32 %i.bh, 2
  %i.bu = shl nuw nsw i64 %i.bs, 18
  %i.bv = select i1 %i.bt, i64 0, i64 %i.bu
  %.not.i45 = icmp sgt i32 %.sroa.0208.11296, 0
  br i1 %.not.i45, label %.lr.ph439, label %bb.l

bb.l:                                             ; preds = %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit
  %i.bw = icmp slt i32 %.sroa.0208.11296, 0
  br i1 %i.bw, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.thread.i113, !prof !11

.thread.i113:                                     ; preds = %bb.l
  %.not9.i.i.i125 = icmp eq ptr %.sroa.42.12298, null
  br i1 %.not9.i.i.i125, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, label %bb.m

bb.m:                                             ; preds = %.thread.i113
  %i.bx = tail call ptr @hb_malloc(i64 noundef 128) #15 ; 2 uses
  %.not10.i.i.i126 = icmp eq ptr %i.bx, null
  br i1 %.not10.i.i.i126, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !11

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116: ; preds = %.thread.i113
  %i.by = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #15 ; 2 uses
  %.not22.i117 = icmp eq ptr %i.by, null
  br i1 %.not22.i117, label %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread, label %.lr.ph439, !prof !12

_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread: ; preds = %bb.l, %bb.m, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116
  %.sroa.42.14 = phi ptr [ %.sroa.42.12298, %bb.l ], [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %.sroa.42.12298, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %.critedge

.lr.ph439:                                        ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, %bb.m, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit
  %.sroa.0208.6 = phi i32 [ %.sroa.0208.11296, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ 8, %bb.m ]
  %.sroa.42.6 = phi ptr [ %.sroa.42.12298, %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit ], [ %i.by, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %i.bx, %bb.m ] ; 3 uses
  store i64 %i.bv, ptr %.sroa.42.6, align 8, !tbaa !134
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.42.6, i64 8
  store i32 %i.ay, ptr %.sroa.4292.0..sroa_idx, align 8, !tbaa !40
  %i.bz = load i32, ptr @_hb_NullPool, align 16   ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.n

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %i.cb = icmp slt i32 %.sroa.0208.1, 0
  br i1 %i.cb, label %.critedge, label %bb.n, !llvm.loop !387

bb.n:                                             ; preds = %.lr.ph439, %.loopexit
  %.022438 = phi i32 [ 1, %.lr.ph439 ], [ %.1, %.loopexit ]
  %.023437 = phi i32 [ 0, %.lr.ph439 ], [ %i.dv, %.loopexit ] ; 6 uses
  %.sroa.42.0436 = phi ptr [ %.sroa.42.6, %.lr.ph439 ], [ %.sroa.42.1, %.loopexit ] ; 11 uses
  %.sroa.22.0435 = phi i32 [ 1, %.lr.ph439 ], [ %.sroa.22.1, %.loopexit ] ; 7 uses
  %.sroa.0208.0434 = phi i32 [ %.sroa.0208.6, %.lr.ph439 ], [ %.sroa.0208.1, %.loopexit ] ; 9 uses
  %i.cc = icmp eq i32 %.sroa.22.0435, 0
  br i1 %i.cc, label %_ZN5graph7graph_t13check_successEb.exit81, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.42.0436, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40 ; 3 uses
  %i.cd = add i32 %.sroa.22.0435, -1              ; 6 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.0436, i64 %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.42.0436, ptr noundef nonnull align 8 dereferenceable(12) %i.cf, i64 12, i1 false), !tbaa.struct !388
  %i.cg = icmp slt i32 %i.cd, 0
  br i1 %i.cg, label %.lr.ph428.preheader, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %.not.i130 = icmp samesign ugt i32 %i.cd, %.sroa.0208.0434
  br i1 %.not.i130, label %.preheader.i132, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !11

.preheader.i132:                                  ; preds = %bb.p, %.preheader.i132
  %.043.i133 = phi i32 [ %i.cj, %.preheader.i132 ], [ %.sroa.0208.0434, %bb.p ] ; 2 uses
  %i.ch = lshr i32 %.043.i133, 1
  %i.ci = add nuw i32 %.043.i133, 8
  %i.cj = add nuw i32 %i.ci, %i.ch                ; 6 uses
  %i.ck = icmp ugt i32 %i.cd, %i.cj
  br i1 %i.ck, label %.preheader.i132, label %.thread.i134, !llvm.loop !384

.thread.i134:                                     ; preds = %.preheader.i132
  %i.cl = icmp ugt i32 %i.cj, 268435455
  br i1 %i.cl, label %.critedge.i149, label %bb.q, !prof !11

.critedge.i149:                                   ; preds = %.thread.i134
  %i.cm = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

bb.q:                                             ; preds = %.thread.i134
  %.not49.i136 = icmp eq i32 %.sroa.0208.0434, 0
  %i.cn = shl nuw i32 %i.cj, 4
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  br i1 %.not49.i136, label %bb.r, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137

bb.r:                                             ; preds = %bb.q
  %i.cp = tail call ptr @hb_malloc(i64 noundef %i.co) #15 ; 3 uses
  %.not10.i.i.i147 = icmp eq ptr %i.cp, null
  br i1 %.not10.i.i.i147, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %bb.s, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.cq = zext i32 %.sroa.22.0435 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull readonly align 8 %.sroa.42.0436, i64 %i.cr, i1 false), !alias.scope !389
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137: ; preds = %bb.q
  %i.cs = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.42.0436, i64 noundef %i.co) #15 ; 2 uses
  %.not22.i138 = icmp eq ptr %i.cs, null
  br i1 %.not22.i138, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !12

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144: ; preds = %bb.r, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137
  %i.ct = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit: ; preds = %bb.s, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137, %bb.p
  %.sroa.0208.13.ph = phi i32 [ %i.cj, %bb.s ], [ %i.cj, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.0208.0434, %bb.p ] ; 2 uses
  %.sroa.42.16.ph = phi ptr [ %i.cp, %bb.s ], [ %i.cs, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.42.0436, %bb.p ] ; 2 uses
  %switch = icmp ult i32 %.sroa.22.0435, 3
  br i1 %switch, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, %.critedge.i149, %bb.o
  %.sroa.0208.8364518 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.ct, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %i.cm, %.critedge.i149 ], [ %.sroa.0208.0434, %bb.o ] ; 3 uses
  %.sroa.22.5366517 = phi i32 [ %i.cd, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.0435, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.22.0435, %.critedge.i149 ], [ %.sroa.22.0435, %bb.o ] ; 5 uses
  %.sroa.42.8368516 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.0436, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.42.0436, %.critedge.i149 ], [ %.sroa.42.0436, %bb.o ] ; 10 uses
  %.pre = load i64, ptr %.sroa.42.8368516, align 8, !tbaa !393 ; 3 uses
  br label %.lr.ph428

.lr.ph428:                                        ; preds = %.lr.ph428.preheader, %bb.w
  %i.cu = phi i32 [ %i.dp, %bb.w ], [ 2, %.lr.ph428.preheader ] ; 4 uses
  %i.cv = phi i32 [ %i.do, %bb.w ], [ 1, %.lr.ph428.preheader ] ; 3 uses
  %.020.i427 = phi i32 [ %.0.i33, %bb.w ], [ 0, %.lr.ph428.preheader ]
  %i.cw = icmp ult i32 %i.cu, %.sroa.22.5366517   ; 2 uses
  %i.cx = zext i32 %.020.i427 to i64
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.cx ; 2 uses
  %i.cz = zext i32 %i.cv to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !393 ; 3 uses
  %.not.i32 = icmp sgt i64 %.pre, %i.db
  br i1 %.not.i32, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph428
  br i1 %i.cw, label %bb.u, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.u:                                             ; preds = %bb.t
  %i.dc = zext i32 %i.cu to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !393 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.de
  br i1 %.not27.i, label %.thread370, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.v:                                             ; preds = %.lr.ph428
  br i1 %i.cw, label %..thread370_crit_edge, label %bb.w

..thread370_crit_edge:                            ; preds = %bb.v
  %.phi.trans.insert = zext i32 %i.cu to i64
  %.phi.trans.insert460 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.phi.trans.insert
  %.pre461 = load i64, ptr %.phi.trans.insert460, align 8, !tbaa !393
  br label %.thread370

.thread370:                                       ; preds = %..thread370_crit_edge, %bb.u
  %i.df = phi i64 [ %.pre461, %..thread370_crit_edge ], [ %i.de, %bb.u ]
  %i.dg = icmp slt i64 %i.db, %i.df
  %spec.select.i = select i1 %i.dg, i32 %i.cv, i32 %i.cu ; 2 uses
  %.pre462 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert463 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre462
  %.pre464 = load i64, ptr %.phi.trans.insert463, align 8, !tbaa !134
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread370
  %i.dh = phi i64 [ %i.db, %bb.v ], [ %.pre464, %.thread370 ]
  %.pre-phi = phi i64 [ %i.cz, %bb.v ], [ %.pre462, %.thread370 ]
  %.0.i33 = phi i32 [ %i.cv, %bb.v ], [ %spec.select.i, %.thread370 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368516, i64 %.pre-phi ; 2 uses
  store i64 %i.dh, ptr %i.cy, align 8, !tbaa !134
  store i64 %.pre, ptr %i.di, align 8, !tbaa !134
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dj, align 8, !tbaa !40
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !40
  store i32 %i.dm, ptr %i.dj, align 8, !tbaa !40
  store i32 %i.dl, ptr %i.dk, align 8, !tbaa !40
  %i.dn = shl i32 %.0.i33, 1                      ; 2 uses
  %i.do = or disjoint i32 %i.dn, 1                ; 2 uses
  %i.dp = add nuw i32 %i.dn, 2
  %i.dq = icmp ult i32 %i.do, %.sroa.22.5366517
  br i1 %i.dq, label %.lr.ph428, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.w, %bb.u, %bb.t, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.42.8369 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.8368516, %bb.t ], [ %.sroa.42.8368516, %bb.u ], [ %.sroa.42.8368516, %bb.w ] ; 3 uses
  %.sroa.22.5367 = phi i32 [ %i.cd, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.5366517, %bb.t ], [ %.sroa.22.5366517, %bb.u ], [ %.sroa.22.5366517, %bb.w ]
  %.sroa.0208.8365 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0208.8364518, %bb.t ], [ %.sroa.0208.8364518, %bb.u ], [ %.sroa.0208.8364518, %bb.w ] ; 3 uses
  %i.dr = load i32, ptr %i.r, align 4, !tbaa !39  ; 2 uses
  %i.ds = icmp uge i32 %.023437, %i.dr
  %i.dt = load i8, ptr %i.ab, align 1, !tbaa !28, !range !37, !noundef !38
  %i.du = trunc nuw i8 %i.dt to i1                ; 2 uses
  %brmerge.i49.not = and i1 %i.ds, %i.du
  br i1 %brmerge.i49.not, label %.thread396.sink.split, label %_ZN5graph7graph_t13check_successEb.exit50, !prof !385

_ZN5graph7graph_t13check_successEb.exit50:        ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  br i1 %i.du, label %bb.x, label %.thread396, !prof !264

bb.x:                                             ; preds = %_ZN5graph7graph_t13check_successEb.exit50
  %i.dv = add i32 %.023437, 1                     ; 2 uses
  %.not.i51 = icmp ult i32 %.023437, %i.dr
  br i1 %.not.i51, label %bb.z, label %bb.y, !prof !8

bb.y:                                             ; preds = %bb.x
  store i32 %i.bz, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.z:                                             ; preds = %bb.x
  %i.dw = load ptr, ptr %i.ca, align 8, !tbaa !69
  %i.dx = zext i32 %.023437 to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dx
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.y, %bb.z
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.y ], [ %i.dy, %bb.z ]
  store i32 %.sroa.2.0.copyload.i, ptr %.0.i52, align 4, !tbaa !40
  %i.dz = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.i53 = icmp ult i32 %.sroa.2.0.copyload.i, %i.dz
  br i1 %.not.i53, label %bb.ab, label %bb.aa, !prof !8

bb.aa:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.ab:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.ea = load ptr, ptr %i.ba, align 8, !tbaa !72
  %i.eb = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ec = getelementptr inbounds nuw [216 x i8], ptr %i.ea, i64 %i.eb
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.aa, %bb.ab
  %.0.i54 = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.ec, %bb.ab ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i54, i64 20
  %.val.i = load i32, ptr %i.ed, align 4, !tbaa !76, !noalias !395 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i54, i64 24
  %.val1.i = load ptr, ptr %i.ee, align 8, !tbaa !78, !noalias !395 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i54, i64 36
  %.val2.i = load i32, ptr %i.ef, align 4, !tbaa !76, !noalias !395 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i54, i64 40
  %.val3.i = load ptr, ptr %i.eg, align 8, !tbaa !78, !noalias !395 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i to i64
  %.sroa.2.8.insert.ext.i.i.i.i6.i.i = zext i32 %.val2.i to i64
  %i.eh = getelementptr inbounds nuw [12 x i8], ptr %.val1.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw [12 x i8], ptr %.val3.i, i64 %.sroa.2.8.insert.ext.i.i.i.i6.i.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit, %bb.aw
  %.sroa.0208.1.ph.ph = phi i32 [ %.sroa.0208.8365, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0208.2, %bb.aw ]
  %.sroa.22.1.ph.ph = phi i32 [ %.sroa.22.5367, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.22.2, %bb.aw ]
  %.sroa.42.1.ph.ph = phi ptr [ %.sroa.42.8369, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.42.2, %bb.aw ]
  %.sroa.17.0.ph.ph = phi i32 [ %.val2.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.hm, %bb.aw ]
  %.sroa.13.0.ph.ph = phi ptr [ %.val3.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.hn, %bb.aw ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %.val.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ 0, %bb.aw ]
  %.sroa.0172.0.ph.ph = phi ptr [ %.val1.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0172.0, %bb.aw ]
  %.1.ph.ph = phi i32 [ %.022438, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.2, %bb.aw ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.ei
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer, %bb.av
  %.sroa.0208.1.ph = phi i32 [ %.sroa.0208.2, %bb.av ], [ %.sroa.0208.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.22.1.ph = phi i32 [ %.sroa.22.2, %bb.av ], [ %.sroa.22.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.42.1.ph = phi ptr [ %.sroa.42.2, %bb.av ], [ %.sroa.42.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.17.0.ph = phi i32 [ 0, %bb.av ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %bb.av ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.0172.0.ph = phi ptr [ %.sroa.0172.0, %bb.av ], [ %.sroa.0172.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.1.ph = phi i32 [ %.2, %bb.av ], [ %.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %i.ej = icmp ne i32 %.sroa.17.0.ph, 0
  %i.ek = select i1 %.not.i3.i, i1 true, i1 %i.ej
  %.not.i.i.i.i58 = icmp eq i32 %.sroa.17.0.ph, 0 ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i58, ptr @_hb_NullPool, ptr %.sroa.13.0.ph.ph, !prof !11
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i
  %.sroa.0208.1 = phi i32 [ %.sroa.0208.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0208.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 16 uses
  %.sroa.22.1 = phi i32 [ %.sroa.22.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.22.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.42.1 = phi ptr [ %.sroa.42.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.42.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.7.0 = phi i32 [ %i.hk, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 3 uses
  %.sroa.0172.0 = phi ptr [ %i.hl, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0172.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 5 uses
  %.1 = phi i32 [ %.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 4 uses
  %.not.i.i55 = icmp ne ptr %.sroa.0172.0, %i.eh
  %i.el = icmp ne i32 %.sroa.7.0, 0
  %i.em = select i1 %.not.i.i55, i1 true, i1 %i.el
  %brmerge = select i1 %i.em, i1 true, i1 %i.ek
  br i1 %brmerge, label %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %.not.i.i56 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  %.0.i.i57 = select i1 %.not.i.i56, ptr %spec.select.i.i.i.i, ptr %.sroa.0172.0
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i57, i64 8 ; 3 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !82 ; 2 uses
  %.not.i59 = icmp ult i32 %i.eo, %i.ah
  br i1 %.not.i59, label %bb.ad, label %bb.ac, !prof !8

bb.ac:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  store i32 %i.bz, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit61

bb.ad:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13196.0.ph509, i64 %i.ep ; 2 uses
  %.pre465 = load i32, ptr %i.eq, align 4, !tbaa !40
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit61

_ZN11hb_vector_tIjLb0EEixEi.exit61:               ; preds = %bb.ac, %bb.ad
  %i.er = phi i32 [ %i.bz, %bb.ac ], [ %.pre465, %bb.ad ]
  %.0.i60 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.eq, %bb.ad ]
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr %.0.i60, align 4, !tbaa !40
  %i.et = load i32, ptr %i.en, align 4, !tbaa !82 ; 3 uses
  %i.eu = load i32, ptr %i.b, align 4, !tbaa !41
  %.not.i62 = icmp ult i32 %i.et, %i.eu
  br i1 %.not.i62, label %bb.af, label %bb.ae, !prof !8

bb.ae:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre466 = load i32, ptr %i.en, align 4, !tbaa !82
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64

bb.af:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit61
  %i.ev = load ptr, ptr %i.ba, align 8, !tbaa !72
  %i.ew = zext i32 %i.et to i64
  %i.ex = getelementptr inbounds nuw [216 x i8], ptr %i.ev, i64 %i.ew
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64: ; preds = %bb.ae, %bb.af
  %i.ey = phi i32 [ %.pre466, %bb.ae ], [ %i.et, %bb.af ] ; 4 uses
  %.0.i63 = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %i.ex, %bb.af ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i63, i64 80
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !42
  %.not.i65 = icmp ult i32 %i.ey, %i.ah
  br i1 %.not.i65, label %bb.ah, label %bb.ag, !prof !8

bb.ag:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64
  store i32 %i.bz, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit67

bb.ah:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64
  %i.fb = zext nneg i32 %i.ey to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13196.0.ph509, i64 %i.fb
  %.pre467 = load i32, ptr %i.fc, align 4, !tbaa !40
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit67

_ZN11hb_vector_tIjLb0EEixEi.exit67:               ; preds = %bb.ag, %bb.ah
  %i.fd = phi i32 [ %i.bz, %bb.ag ], [ %.pre467, %bb.ah ]
  %.not = icmp eq i32 %i.fa, %i.fd
  br i1 %.not, label %bb.ai, label %_ZN19hb_priority_queue_tIlE6insertElj.exit

bb.ai:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit67
  %i.fe = add i32 %.1, 1                          ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i63, i64 56
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !386
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i63, i64 76
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !207 ; 3 uses
  %.not.i.i68 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i68, label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i63, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !143
  %i.fl = load ptr, ptr %.0.i63, align 8, !tbaa !144
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 2 uses
  %i.fp = icmp eq i32 %i.fi, 1
  br i1 %i.fp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fq = sdiv i64 %i.fo, -2
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71

bb.al:                                            ; preds = %bb.aj
  %i.fr = sub nsw i64 0, %i.fo
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71

_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71: ; preds = %bb.ai, %bb.ak, %bb.al
  %.1.i.i69 = phi i64 [ 0, %bb.ai ], [ %i.fq, %bb.ak ], [ %i.fr, %bb.al ]
  %i.fs = add nsw i64 %.1.i.i69, %i.fg
  %.sroa.speculate.load.false.sroa.speculated.i70 = tail call i64 @llvm.smax.i64(i64 %i.fs, i64 0)
  %i.ft = tail call i64 @llvm.umin.i64(i64 %.sroa.speculate.load.false.sroa.speculated.i70, i64 8796093022207)
  %i.fu = icmp ugt i32 %i.fi, 2
  %i.fv = shl nuw nsw i64 %i.ft, 18
  %i.fw = select i1 %i.fu, i64 0, i64 %i.fv
  %i.fx = and i32 %.1, 262143
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = or disjoint i64 %i.fw, %i.fy            ; 4 uses
  %.not.i72 = icmp slt i32 %.sroa.22.1, %.sroa.0208.1
  %i.ga = add i32 %.sroa.22.1, 1                  ; 5 uses
  br i1 %.not.i72, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77, label %bb.am

bb.am:                                            ; preds = %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71
  %i.gb = icmp slt i32 %.sroa.0208.1, 0
  br i1 %i.gb, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread, label %bb.an, !prof !11

bb.an:                                            ; preds = %bb.am
  %.not.i151 = icmp ugt i32 %i.ga, %.sroa.0208.1
  br i1 %.not.i151, label %.preheader.i153, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385, !prof !11

.preheader.i153:                                  ; preds = %bb.an, %.preheader.i153
  %.043.i154 = phi i32 [ %i.ge, %.preheader.i153 ], [ %.sroa.0208.1, %bb.an ] ; 2 uses
  %i.gc = lshr i32 %.043.i154, 1
  %i.gd = add i32 %.043.i154, 8
  %i.ge = add i32 %i.gd, %i.gc                    ; 8 uses
  %i.gf = icmp ugt i32 %i.ga, %i.ge
  br i1 %i.gf, label %.preheader.i153, label %.thread.i155, !llvm.loop !384

.thread.i155:                                     ; preds = %.preheader.i153
  %i.gg = icmp ugt i32 %i.ge, 268435455
  br i1 %i.gg, label %.critedge.i170, label %bb.ao, !prof !11

.critedge.i170:                                   ; preds = %.thread.i155
  %i.gh = xor i32 %.sroa.0208.1, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread

bb.ao:                                            ; preds = %.thread.i155
  %.not49.i157 = icmp eq i32 %.sroa.0208.1, 0
  br i1 %.not49.i157, label %bb.ap, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158

bb.ap:                                            ; preds = %bb.ao
  %.not9.i.i.i167 = icmp eq ptr %.sroa.42.1, null
  br i1 %.not9.i.i.i167, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gi = shl nuw i32 %i.ge, 4
  %i.gj = zext i32 %i.gi to i64
  %i.gk = tail call ptr @hb_malloc(i64 noundef %i.gj) #15 ; 4 uses
  %.not10.i.i.i168 = icmp eq ptr %i.gk, null
  br i1 %.not10.i.i.i168, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165, label %bb.ar, !prof !11

bb.ar:                                            ; preds = %bb.aq
  %.not.i.i.i.i169 = icmp eq i32 %.sroa.22.1, 0
  br i1 %.not.i.i.i.i169, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385, label %bb.as, !prof !11

bb.as:                                            ; preds = %bb.ar
  %i.gl = zext i32 %.sroa.22.1 to i64
  %i.gm = shl nuw nsw i64 %i.gl, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gk, ptr nonnull readonly align 1 %.sroa.42.1, i64 %i.gm, i1 false), !alias.scope !398
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158: ; preds = %bb.ap, %bb.ao
  %i.gn = phi ptr [ null, %bb.ap ], [ %.sroa.42.1, %bb.ao ]
  %i.go = shl nuw i32 %i.ge, 4
  %i.gp = zext i32 %i.go to i64
  %i.gq = tail call ptr @hb_realloc(ptr noundef %i.gn, i64 noundef %i.gp) #15 ; 2 uses
  %.not22.i159 = icmp eq ptr %i.gq, null
  br i1 %.not22.i159, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385, !prof !12

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158, %bb.aq
  %i.gr = xor i32 %.sroa.0208.1, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread: ; preds = %.critedge.i170, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165, %bb.am
  %.sroa.0208.14 = phi i32 [ %.sroa.0208.1, %bb.am ], [ %i.gr, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165 ], [ %i.gh, %.critedge.i170 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385: ; preds = %bb.ar, %bb.as, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158, %bb.an
  %.sroa.0208.9.ph = phi i32 [ %.sroa.0208.1, %bb.an ], [ %i.ge, %bb.ar ], [ %i.ge, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158 ], [ %i.ge, %bb.as ]
  %.sroa.42.9.ph = phi ptr [ %.sroa.42.1, %bb.an ], [ %i.gk, %bb.ar ], [ %i.gq, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158 ], [ %i.gk, %bb.as ] ; 2 uses
  %i.gs = zext i32 %.sroa.22.1 to i64
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.9.ph, i64 %i.gs ; 2 uses
  store i64 %i.fz, ptr %i.gt, align 8, !tbaa !134
  %.sroa.4289.0..sroa_idx388 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i32 %i.ey, ptr %.sroa.4289.0..sroa_idx388, align 8, !tbaa !40
  br label %bb.at

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77: ; preds = %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71
  %i.gu = zext i32 %.sroa.22.1 to i64
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.1, i64 %i.gu ; 2 uses
  store i64 %i.fz, ptr %i.gv, align 8, !tbaa !134
  %.sroa.4289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i32 %i.ey, ptr %.sroa.4289.0..sroa_idx, align 8, !tbaa !40
  %i.gw = icmp slt i32 %.sroa.0208.1, 0
  br i1 %i.gw, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %bb.at, !prof !402

bb.at:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77
  %.sroa.42.9391 = phi ptr [ %.sroa.42.9.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385 ], [ %.sroa.42.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ] ; 5 uses
  %.sroa.0208.9390 = phi i32 [ %.sroa.0208.9.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385 ], [ %.sroa.0208.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ] ; 3 uses
  %i.gx = icmp eq i32 %.sroa.22.1, 0
  br i1 %i.gx, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %.lr.ph432

.lr.ph432:                                        ; preds = %bb.at, %bb.au
  %.08.i26431 = phi i32 [ %i.gz, %bb.au ], [ %.sroa.22.1, %bb.at ] ; 2 uses
  %i.gy = add i32 %.08.i26431, -1
  %i.gz = lshr i32 %i.gy, 1                       ; 3 uses
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.9391, i64 %i.ha ; 3 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !393 ; 2 uses
  %.not.i27 = icmp sgt i64 %i.hc, %i.fz
  br i1 %.not.i27, label %bb.au, label %_ZN19hb_priority_queue_tIlE6insertElj.exit

bb.au:                                            ; preds = %.lr.ph432
  %i.hd = zext i32 %.08.i26431 to i64
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.9391, i64 %i.hd ; 2 uses
  store i64 %i.hc, ptr %i.he, align 8, !tbaa !134
  store i64 %i.fz, ptr %i.hb, align 8, !tbaa !134
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hh = load i32, ptr %i.hf, align 8, !tbaa !40
  %i.hi = load i32, ptr %i.hg, align 8, !tbaa !40
  store i32 %i.hi, ptr %i.hf, align 8, !tbaa !40
  store i32 %i.hh, ptr %i.hg, align 8, !tbaa !40
  %i.hj = icmp eq i32 %i.gz, 0
  br i1 %i.hj, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %.lr.ph432

_ZN19hb_priority_queue_tIlE6insertElj.exit:       ; preds = %bb.au, %.lr.ph432, %bb.at, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread, %_ZN11hb_vector_tIjLb0EEixEi.exit67
  %.sroa.0208.2 = phi i32 [ %.sroa.0208.1, %_ZN11hb_vector_tIjLb0EEixEi.exit67 ], [ %.sroa.0208.14, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread ], [ %.sroa.0208.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ], [ %.sroa.0208.9390, %bb.at ], [ %.sroa.0208.9390, %.lr.ph432 ], [ %.sroa.0208.9390, %bb.au ] ; 3 uses
  %.sroa.22.2 = phi i32 [ %.sroa.22.1, %_ZN11hb_vector_tIjLb0EEixEi.exit67 ], [ %.sroa.22.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread ], [ %i.ga, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ], [ 1, %bb.at ], [ %i.ga, %.lr.ph432 ], [ %i.ga, %bb.au ] ; 3 uses
  %.sroa.42.2 = phi ptr [ %.sroa.42.1, %_ZN11hb_vector_tIjLb0EEixEi.exit67 ], [ %.sroa.42.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread ], [ %.sroa.42.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ], [ %.sroa.42.9391, %bb.at ], [ %.sroa.42.9391, %.lr.ph432 ], [ %.sroa.42.9391, %bb.au ] ; 3 uses
  %.2 = phi i32 [ %.1, %_ZN11hb_vector_tIjLb0EEixEi.exit67 ], [ %i.fe, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread ], [ %i.fe, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ], [ %i.fe, %bb.at ], [ %i.fe, %.lr.ph432 ], [ %i.fe, %bb.au ] ; 3 uses
  br i1 %.not.i.i56, label %bb.av, label %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i: ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit
  %i.hk = add i32 %.sroa.7.0, -1
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

bb.av:                                            ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit
  br i1 %.not.i.i.i.i58, label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, label %bb.aw, !prof !11

bb.aw:                                            ; preds = %bb.av
  %i.hm = add i32 %.sroa.17.0.ph, -1
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.ph, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

.critedge:                                        ; preds = %.loopexit, %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread
  %.sroa.0208.0.lcssa = phi i32 [ -1, %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread ], [ %.sroa.0208.1, %.loopexit ]
  %.sroa.42.0.lcssa = phi ptr [ %.sroa.42.14, %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread ], [ %.sroa.42.1, %.loopexit ]
  %.023.lcssa = phi i32 [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread ], [ %i.dv, %.loopexit ]
  %i.ho = load i8, ptr %i.ab, align 1, !tbaa !28, !range !37, !noundef !38
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.ax, label %_ZN5graph7graph_t13check_successEb.exit81.thread

bb.ax:                                            ; preds = %.critedge
  store i8 0, ptr %i.ab, align 1, !tbaa !28
  br label %_ZN5graph7graph_t13check_successEb.exit81.thread

_ZN5graph7graph_t13check_successEb.exit81.thread: ; preds = %bb.ax, %.critedge
  %i.hq = load i32, ptr %i.p, align 8, !tbaa !256
  br label %_ZN5graph7graph_t13check_successEb.exit84

_ZN5graph7graph_t13check_successEb.exit81:        ; preds = %bb.n
  %.pre471 = load i8, ptr %i.ab, align 1, !tbaa !28, !range !37 ; 2 uses
  %i.hr = load i32, ptr %i.p, align 8, !tbaa !256 ; 3 uses
  %i.hs = icmp slt i32 %i.hr, 0
  %i.ht = trunc nuw i8 %.pre471 to i1
  %brmerge.i83.not = and i1 %i.hs, %i.ht
  br i1 %brmerge.i83.not, label %bb.ay, label %_ZN5graph7graph_t13check_successEb.exit84

bb.ay:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit81
  store i8 0, ptr %i.ab, align 1, !tbaa !28
  br label %_ZN5graph7graph_t13check_successEb.exit84

_ZN5graph7graph_t13check_successEb.exit84:        ; preds = %_ZN5graph7graph_t13check_successEb.exit81.thread, %_ZN5graph7graph_t13check_successEb.exit81, %bb.ay
  %i.hu = phi i32 [ %i.hr, %_ZN5graph7graph_t13check_successEb.exit81 ], [ %i.hr, %bb.ay ], [ %i.hq, %_ZN5graph7graph_t13check_successEb.exit81.thread ]
  %.023412525 = phi i32 [ %.023437, %_ZN5graph7graph_t13check_successEb.exit81 ], [ %.023437, %bb.ay ], [ %.023.lcssa, %_ZN5graph7graph_t13check_successEb.exit81.thread ]
  %.sroa.42.0416524 = phi ptr [ %.sroa.42.0436, %_ZN5graph7graph_t13check_successEb.exit81 ], [ %.sroa.42.0436, %bb.ay ], [ %.sroa.42.0.lcssa, %_ZN5graph7graph_t13check_successEb.exit81.thread ] ; 2 uses
  %.sroa.0208.0420523 = phi i32 [ %.sroa.0208.0434, %_ZN5graph7graph_t13check_successEb.exit81 ], [ %.sroa.0208.0434, %bb.ay ], [ %.sroa.0208.0.lcssa, %_ZN5graph7graph_t13check_successEb.exit81.thread ] ; 2 uses
  %i.hv = phi i8 [ %.pre471, %_ZN5graph7graph_t13check_successEb.exit81 ], [ 0, %bb.ay ], [ 0, %_ZN5graph7graph_t13check_successEb.exit81.thread ]
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hx = load i32, ptr %i.r, align 4, !tbaa !40
  %i.hy = load <2 x i32>, ptr %i.hw, align 8, !tbaa !40
  store i32 %i.hu, ptr %i.hw, align 8, !tbaa !40
  store i32 %i.hx, ptr %i.au, align 4, !tbaa !40
  store <2 x i32> %i.hy, ptr %i.p, align 8, !tbaa !40
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ia = load ptr, ptr %i.aw, align 8, !tbaa !151
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !151
  store ptr %i.ib, ptr %i.aw, align 8, !tbaa !151
  store ptr %i.ia, ptr %i.hz, align 8, !tbaa !151
  %i.ic = load i32, ptr %i.b, align 4, !tbaa !217
  %i.id = icmp ne i32 %.023412525, %i.ic
  %i.ie = trunc nuw i8 %i.hv to i1
  %brmerge.i86.not = and i1 %i.id, %i.ie
  br i1 %brmerge.i86.not, label %.thread396.sink.split, label %.thread396

.thread396.sink.split:                            ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, %_ZN5graph7graph_t13check_successEb.exit84, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38, %bb.f, %.thread.i96
  %.sroa.0189.0331338.ph = phi i32 [ 0, %bb.f ], [ %.sroa.0189.0.ph508, %_ZN5graph7graph_t13check_successEb.exit84 ], [ -1, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ], [ -1, %.thread.i96 ], [ %.sroa.0189.0.ph508, %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit ]
  %.sroa.13196.0333337.ph = phi ptr [ null, %bb.f ], [ %.sroa.13196.0.ph509, %_ZN5graph7graph_t13check_successEb.exit84 ], [ null, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ], [ null, %.thread.i96 ], [ %.sroa.13196.0.ph509, %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit ]
  %.sroa.0208.4.ph = phi i32 [ %.sroa.0208.11296, %bb.f ], [ %.sroa.0208.0420523, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.0208.11296, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ], [ %.sroa.0208.11296, %.thread.i96 ], [ %.sroa.0208.8365, %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit ]
  %.sroa.42.4.ph = phi ptr [ %.sroa.42.12298, %bb.f ], [ %.sroa.42.0416524, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.42.12298, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ], [ %.sroa.42.12298, %.thread.i96 ], [ %.sroa.42.8369, %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit ]
  store i8 0, ptr %i.ab, align 1, !tbaa !28
  br label %.thread396

.thread396:                                       ; preds = %_ZN5graph7graph_t13check_successEb.exit50, %.thread396.sink.split, %_ZN5graph7graph_t13check_successEb.exit84, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread
  %.sroa.0189.0331338 = phi i32 [ %.sroa.0189.0331338.ph, %.thread396.sink.split ], [ %i.al, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ %.sroa.0189.0.ph508, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.0189.0.ph508, %_ZN5graph7graph_t13check_successEb.exit50 ]
  %.sroa.13196.0333337 = phi ptr [ %.sroa.13196.0333337.ph, %.thread396.sink.split ], [ %i.aq, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ %.sroa.13196.0.ph509, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.13196.0.ph509, %_ZN5graph7graph_t13check_successEb.exit50 ]
  %.sroa.0208.4 = phi i32 [ %.sroa.0208.4.ph, %.thread396.sink.split ], [ %.sroa.0208.11296, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ %.sroa.0208.0420523, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.0208.8365, %_ZN5graph7graph_t13check_successEb.exit50 ] ; 2 uses
  %.sroa.42.4 = phi ptr [ %.sroa.42.4.ph, %.thread396.sink.split ], [ %.sroa.42.12298, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ %.sroa.42.0416524, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.42.8369, %_ZN5graph7graph_t13check_successEb.exit50 ] ; 2 uses
  %i.if = add nsw i32 %.sroa.0189.0331338, -1
  %spec.select.i.i.i = icmp ult i32 %i.if, -2
  br i1 %spec.select.i.i.i, label %bb.az, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.az:                                            ; preds = %.thread396
  tail call void @hb_free(ptr noundef %.sroa.13196.0333337) #15
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, %bb.az, %.thread396, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread, %_ZN5graph7graph_t13check_successEb.exit.thread
  %.sroa.0208.5 = phi i32 [ %.sroa.0208.11296, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread ], [ %.sroa.0208.4, %bb.az ], [ %.sroa.0208.11297, %_ZN5graph7graph_t13check_successEb.exit.thread ], [ %.sroa.0208.4, %.thread396 ], [ %.sroa.0208.11297, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit ], [ %.sroa.0208.11296, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ]
  %.sroa.42.5 = phi ptr [ %.sroa.42.12298, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread ], [ %.sroa.42.4, %bb.az ], [ %.sroa.42.12299, %_ZN5graph7graph_t13check_successEb.exit.thread ], [ %.sroa.42.4, %.thread396 ], [ %.sroa.42.12299, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit ], [ %.sroa.42.12298, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ]
  %i.ig = add i32 %.sroa.0208.5, -1
  %spec.select.i.i.i.i88 = icmp ult i32 %i.ig, -2
  br i1 %spec.select.i.i.i.i88, label %bb.ba, label %_ZN19hb_priority_queue_tIlED2Ev.exit

bb.ba:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  tail call void @hb_free(ptr noundef %.sroa.42.5) #15
  br label %_ZN19hb_priority_queue_tIlED2Ev.exit

_ZN19hb_priority_queue_tIlED2Ev.exit:             ; preds = %bb.ba, %_ZN11hb_vector_tIjLb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph13will_overflowERNS_7graph_tEP11hb_vector_tINS_17overflow_record_tELb0EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %2 = alloca %struct.hb_hashmap_t.62, align 8    ; 12 uses
  %3 = alloca %"struct.graph::overflow_record_t", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !163, !range !37, !noundef !38
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN5graph7graph_t16update_positionsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %.not15.i = icmp eq i32 %i.j, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

._crit_edge.i:                                    ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i, %bb.d
  store i8 0, ptr %i.d, align 2, !tbaa !163
  br label %_ZN5graph7graph_t16update_positionsEv.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i, %.lr.ph.i
  %.017.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ab, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i ] ; 2 uses
  %.01416.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ad, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i ] ; 2 uses
  %i.o = load i32, ptr %.01416.i, align 4, !tbaa !40 ; 2 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.o, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [216 x i8], ptr %i.q, i64 %i.r
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.s, %bb.g ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 68
  store i32 %.017.i, ptr %i.t, align 4, !tbaa !403
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143
  %i.w = load ptr, ptr %.0.i.i, align 8, !tbaa !144
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %.017.i, %i.aa                  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !404
  %i.ad = getelementptr inbounds nuw i8, ptr %.01416.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.l
  br i1 %.not.i, label %._crit_edge.i, label %bb.e

_ZN5graph7graph_t16update_positionsEv.exit:       ; preds = %bb.c, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store atomic i32 1, ptr %2 monotonic, align 8
  store atomic i8 1, ptr %i.ae monotonic, align 4
  store atomic ptr null, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.ag, align 8, !tbaa !405
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ah, i8 0, i64 18, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.idx = shl nuw nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %.not4878 = icmp eq i32 %i.am, 0
  br i1 %.not4878, label %.critedge, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZN5graph7graph_t16update_positionsEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.av = load i64, ptr @_hb_NullPool, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph80, %._crit_edge
  %.04079 = phi ptr [ %i.ak, %.lr.ph80 ], [ %i.eo, %._crit_edge ] ; 2 uses
  %i.ax = load i32, ptr %.04079, align 4, !tbaa !40 ; 5 uses
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !72
  %i.az = zext i32 %i.ax to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [216 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !78 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !76 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx81 = mul nuw nsw i64 %i.bf, 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx81
  %.not4976 = icmp eq i32 %i.be, 0
  br i1 %.not4976, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bh = mul i32 %i.ax, 683129967
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.thread
  %.077 = phi ptr [ %i.bc, %.lr.ph ], [ %i.en, %.thread ] ; 3 uses
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !41 ; 2 uses
  %.not.i.i51 = icmp ult i32 %i.ax, %i.bi
  %i.bj = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw [216 x i8], ptr %i.bj, i64 %i.az
  %.0.i.i52 = select i1 %.not.i.i51, ptr %i.bk, ptr @_hb_NullPool, !prof !8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.077, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !82 ; 5 uses
  %.not.i12.i = icmp ult i32 %i.bm, %i.bi
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [216 x i8], ptr %i.bj, i64 %i.bn
  %.0.i13.i = select i1 %.not.i12.i, ptr %i.bo, ptr @_hb_NullPool, !prof !8 ; 3 uses
  %i.bp = load i32, ptr %.077, align 4            ; 4 uses
  %i.bq = lshr i32 %i.bp, 4
  %i.br = and i32 %i.bq, 3
  switch i32 %i.br, label %default.unreachable [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %_ZN5graph14compute_offsetERKNS_7graph_tEjRKN22hb_serialize_context_t8object_t6link_tE.exit
  ]

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i13.i, i64 68
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !403
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 68
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !403
  %i.bw = sub i32 %i.bt, %i.bv
  br label %_ZN5graph14compute_offsetERKNS_7graph_tEjRKN22hb_serialize_context_t8object_t6link_tE.exit

bb.k:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i13.i, i64 68
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !403
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i52, i64 72
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !404
  %i.cb = sub i32 %i.by, %i.ca
  br label %_ZN5graph14compute_offsetERKNS_7graph_tEjRKN22hb_serialize_context_t8object_t6link_tE.exit

bb.l:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i13.i, i64 68
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !403
  br label %_ZN5graph14compute_offsetERKNS_7graph_tEjRKN22hb_serialize_context_t8object_t6link_tE.exit

end_hunk_0
begin_hunk_1_@_ZN5graph6Lookup14make_extensionERNS_24gsubgpos_graph_context_tEj:bb.a
  br i1 %or.cond.i, label %bb.c, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.c:                                             ; preds = %_ZN2OT7ArrayOfINS_6OffsetINS_7NumTypeILb1EtLj2EEELb1EEES3_EixEi.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !449  ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.z, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !450
  %wide.trip.count.i = zext i32 %i.z to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.e, !llvm.loop !451

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %indvars.iv.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !291
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.af
  %.not23.not.i = icmp eq ptr %i.o, %i.ag
  br i1 %.not23.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !82
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.d, %_ZN2OT7ArrayOfINS_6OffsetINS_7NumTypeILb1EtLj2EEELb1EEES3_EixEi.exit, %bb.c, %.thread.i
  %.4.i = phi i32 [ -1, %_ZN2OT7ArrayOfINS_6OffsetINS_7NumTypeILb1EtLj2EEELb1EEES3_EixEi.exit ], [ %i.ai, %.thread.i ], [ -1, %bb.c ], [ -1, %bb.d ]
  %i.aj = tail call noundef zeroext i1 @_ZN5graph6Lookup23make_subtable_extensionERNS_24gsubgpos_graph_context_tEjj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %2, i32 noundef %.4.i)
  br i1 %i.aj, label %bb.b, label %.loopexit

.critedge:                                        ; preds = %bb.b, %.preheader
  %i.ak = trunc nuw nsw i32 %switch.select3.i to i16
  %i.al = shl nuw nsw i16 %i.ak, 8
  store i16 %i.al, ptr %0, align 1, !tbaa !353
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, %bb.a, %.critedge
  %.3 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ false, %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13hb_qsort_loopI13lookup_size_tZN10hb_array_tIS0_E6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEEUlRKS0_SF_E_EvPS5_mT0_(ptr noundef %0, i64 noundef %1) unnamed_addr #11 {
bb.a:
  %2 = alloca %struct.lookup_size_t, align 8      ; 4 uses
  %3 = alloca %struct.lookup_size_t, align 8      ; 4 uses
  %4 = alloca %struct.lookup_size_t, align 8      ; 4 uses
  %5 = alloca %struct.lookup_size_t, align 8      ; 4 uses
  %6 = alloca %struct.lookup_size_t, align 8      ; 4 uses
  %7 = alloca %struct.lookup_size_t, align 8      ; 4 uses
  %i.a = icmp ugt i64 %1, 24
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %.04685 = phi i64 [ %.147, %bb.o ], [ %1, %bb.a ] ; 3 uses
  %.04884 = phi ptr [ %.149, %bb.o ], [ %0, %bb.a ] ; 14 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %.04884, i64 %.04685 ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24 ; 3 uses
  %i.d = lshr i64 %.04685, 1
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.04884, i64 %i.d ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.04884, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %.04884, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !130
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !130
  %i.n = uitofp i32 %i.k to double
  %i.o = uitofp i32 %i.g to double
  %i.p = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %i.q = insertelement <2 x i64> %i.p, i64 %i.m, i64 1
  %i.r = uitofp <2 x i64> %i.q to <2 x double>
  %i.s = insertelement <2 x double> poison, double %i.o, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.n, i64 1
  %i.u = fdiv <2 x double> %i.t, %i.r             ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 0  ; 2 uses
  %i.w = extractelement <2 x double> %i.u, i64 1  ; 4 uses
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %.split, label %bb.b

.split:                                           ; preds = %.lr.ph
  %i.y = load i32, ptr %i.e, align 8, !tbaa !131
  %i.z = load i32, ptr %.04884, align 8, !tbaa !131
  %i.aa = sub i32 %i.y, %i.z
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.ac = fcmp ule double %i.w, %i.v
  br i1 %i.ac, label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.04884, i64 24, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.04884, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.pre = load i32, ptr %i.j, align 8, !tbaa !128
  %.pre87.a = load i64, ptr %i.l, align 8, !tbaa !130
  %.pre88.a = uitofp i32 %.pre to double
  %.pre89 = uitofp i64 %.pre87.a to double
  %.pre91 = fdiv double %.pre88.a, %.pre89
  br label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit.thread

_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit.thread: ; preds = %bb.b, %.split, %bb.c
  %.pre-phi92 = phi double [ %i.w, %bb.b ], [ %.pre91, %bb.c ], [ %i.w, %.split ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !128
  %i.af = uitofp i32 %i.ae to double
  %i.ag = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !130
  %i.ai = uitofp i64 %i.ah to double
  %i.aj = fdiv double %i.af, %i.ai                ; 2 uses
  %i.ak = fcmp oeq double %.pre-phi92, %i.aj
  br i1 %i.ak, label %.split110.a, label %bb.d

.split110.a:                                      ; preds = %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit.thread
  %i.al = load i32, ptr %i.c, align 8, !tbaa !131
  %i.am = load i32, ptr %i.e, align 8, !tbaa !131
  %i.an = sub i32 %i.al, %i.am
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit60.thread

bb.d:                                             ; preds = %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit.thread
  %i.ap = fcmp ule double %i.aj, %.pre-phi92
  br i1 %i.ap, label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit60.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.split110.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.aq = load i32, ptr %i.f, align 8, !tbaa !128
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !130
  %i.as = load i32, ptr %i.j, align 8, !tbaa !128
  %i.at = load i64, ptr %i.l, align 8, !tbaa !130
  %i.au = uitofp i32 %i.as to double
  %i.av = uitofp i32 %i.aq to double
  %i.aw = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.ax = insertelement <2 x i64> %i.aw, i64 %i.at, i64 1
  %i.ay = uitofp <2 x i64> %i.ax to <2 x double>
  %i.az = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.au, i64 1
  %i.bb = fdiv <2 x double> %i.ba, %i.ay          ; 2 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0 ; 2 uses
  %i.bd = extractelement <2 x double> %i.bb, i64 1 ; 2 uses
  %i.be = fcmp oeq double %i.bc, %i.bd
  br i1 %i.be, label %.split111.a, label %bb.f

.split111.a:                                      ; preds = %bb.e
  %i.bf = load i32, ptr %i.e, align 8, !tbaa !131
  %i.bg = load i32, ptr %.04884, align 8, !tbaa !131
  %i.bh = sub i32 %i.bf, %i.bg
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.g, label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit60.thread

bb.f:                                             ; preds = %bb.e
  %i.bj = fcmp ule double %i.bd, %i.bc
  br i1 %i.bj, label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit60.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split111.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.04884, i64 24, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.04884, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit60.thread

_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit60.thread: ; preds = %bb.f, %bb.d, %.split111.a, %.split110.a, %bb.g
  %i.bk = getelementptr inbounds i8, ptr %i.b, i64 -48 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bl = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.bm = getelementptr inbounds i8, ptr %i.b, i64 -40
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit60.thread
  %.044 = phi ptr [ %.04884, %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit60.thread ], [ %i.bs, %bb.k ]
  %.0 = phi ptr [ %i.bk, %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit60.thread ], [ %i.cg, %bb.k ]
  %i.bn = load i32, ptr %i.bl, align 8, !tbaa !128
  %i.bo = uitofp i32 %i.bn to double
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !130
  %i.bq = uitofp i64 %i.bp to double
  %i.br = fdiv double %i.bo, %i.bq                ; 4 uses
  br label %select.unfold78

select.unfold78:                                  ; preds = %.backedge113.backedge, %bb.h
  %.145 = phi ptr [ %.044, %bb.h ], [ %i.bs, %.backedge113.backedge ] ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.145, i64 24 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.145, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !128
  %i.bv = uitofp i32 %i.bu to double
  %i.bw = getelementptr inbounds nuw i8, ptr %.145, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !130
  %i.by = uitofp i64 %i.bx to double
  %i.bz = fdiv double %i.bv, %i.by                ; 2 uses
  %i.ca = fcmp oeq double %i.bz, %i.br
  br i1 %i.ca, label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit68.a, label %bb.i

_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit68.a: ; preds = %select.unfold78
  %i.cb = load i32, ptr %i.bk, align 8, !tbaa !131
  %i.cc = load i32, ptr %i.bs, align 8, !tbaa !131
  %i.cd = sub i32 %i.cb, %i.cc
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %.backedge113.backedge, label %.critedge.preheader

bb.i:                                             ; preds = %select.unfold78
  %i.cf = fcmp olt double %i.br, %i.bz
  br i1 %i.cf, label %.backedge113.backedge, label %.critedge.preheader

.backedge113.backedge:                            ; preds = %bb.i, %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit68.a
  br label %select.unfold78, !llvm.loop !1794

.critedge.preheader:                              ; preds = %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit68.a, %bb.i
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1 = phi ptr [ %.0, %.critedge.preheader ], [ %i.cg, %.critedge.backedge ] ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.1, i64 -24 ; 6 uses
  %i.ch = getelementptr inbounds i8, ptr %.1, i64 -8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !128
  %i.cj = uitofp i32 %i.ci to double
  %i.ck = getelementptr inbounds i8, ptr %.1, i64 -16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !130
  %i.cm = uitofp i64 %i.cl to double
  %i.cn = fdiv double %i.cj, %i.cm                ; 2 uses
  %i.co = fcmp oeq double %i.cn, %i.br
  br i1 %i.co, label %.split112, label %bb.j

.split112:                                        ; preds = %.critedge
  %i.cp = load i32, ptr %i.bk, align 8, !tbaa !131
  %i.cq = load i32, ptr %i.cg, align 8, !tbaa !131
  %i.cr = sub i32 %i.cp, %i.cq
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.critedge.backedge, label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit72.thread

bb.j:                                             ; preds = %.critedge
  %i.ct = fcmp ule double %i.br, %i.cn
  br i1 %i.ct, label %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit72.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.j, %.split112
  br label %.critedge, !llvm.loop !1795

_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit72.thread: ; preds = %bb.j, %.split112
  %.not = icmp ult ptr %i.bs, %i.cg
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit72.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h, !llvm.loop !1796

bb.l:                                             ; preds = %_ZZN10hb_array_tI13lookup_size_tE6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEENKUlRKS0_SE_E_clESE_SE_.exit72.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cu = ptrtoint ptr %i.bs to i64
  %i.cv = ptrtoint ptr %.04884 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 24                ; 4 uses
  %i.cy = xor i64 %i.cx, -1
  %i.cz = add i64 %.04685, %i.cy                  ; 3 uses
  %i.da = icmp ult i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZL13hb_qsort_loopI13lookup_size_tZN10hb_array_tIS0_E6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEEUlRKS0_SF_E_EvPS5_mT0_(ptr noundef nonnull %.04884, i64 noundef %i.cx)
  %i.db = getelementptr inbounds nuw i8, ptr %.145, i64 48
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %.145, i64 48
  tail call fastcc void @_ZL13hb_qsort_loopI13lookup_size_tZN10hb_array_tIS0_E6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEEUlRKS0_SF_E_EvPS5_mT0_(ptr noundef nonnull %i.dc, i64 noundef %i.cz)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.149 = phi ptr [ %i.db, %bb.m ], [ %.04884, %bb.n ]
  %.147 = phi i64 [ %i.cz, %bb.m ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dd = icmp ugt i64 %.147, 24
  br i1 %i.dd, label %.lr.ph, label %._crit_edge, !llvm.loop !1797

._crit_edge:                                      ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph6Lookup23make_subtable_extensionERNS_24gsubgpos_graph_context_tEjj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !40
  %i.c = load i16, ptr %0, align 1, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176  ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = mul i32 %3, 506952113
  %i.h = and i32 %i.g, 1073741823
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !361
  %i.k = urem i32 %i.h, %i.j                      ; 2 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = and i32 %i.o, 2
  %.not15.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not15.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load i32, ptr %i.m, align 4, !tbaa !40
  %i.t = icmp eq i32 %i.s, %3
  br i1 %i.t, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.u = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.v = icmp eq i32 %i.u, %3
  br i1 %i.v, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !368

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.c
  %.01016.i20.i.i = phi i32 [ %i.y, %bb.c ], [ %i.k, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.w, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %i.w = add i32 %.017.i19.i.i, 1                 ; 2 uses
  %i.x = add i32 %i.w, %.01016.i20.i.i
  %i.y = and i32 %i.x, %i.r                       ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = and i32 %i.ac, 2
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %.loopexit, label %bb.c, !llvm.loop !368

_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.o, %.lr.ph.i.i.i ], [ %i.ac, %bb.c ]
  %i.ae = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ %i.z, %bb.c ]
  %i.af = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.af, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40 ; 2 uses
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !40
  br label %bb.n

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i
  %i.aj = tail call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef 8) #15 ; 4 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %_ZN5graph6Lookup25create_extension_subtableERNS_24gsubgpos_graph_context_tEjj.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !136, !nonnull !38, !align !141 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.aj, %i.ao
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !72
  %i.ar = zext i32 %i.aj to i64
  %i.as = getelementptr inbounds nuw [216 x i8], ptr %i.aq, i64 %i.ar
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.as, %bb.g ] ; 5 uses
  %i.at = load ptr, ptr %.0.i.i, align 8, !tbaa !144 ; 3 uses
  store i16 256, ptr %i.at, align 1, !tbaa !353
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i16 %i.c, ptr %i.au, align 1, !tbaa !353
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 0, ptr %i.av, align 1, !tbaa !353
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !76 ; 2 uses
  %i.ay = add i32 %i.ax, 1                        ; 5 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.l, label %bb.h, !prof !11

bb.h:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bb = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i32 noundef %i.ay, i1 noundef zeroext false)
  br i1 %i.bb, label %bb.i, label %bb.l, !prof !337

bb.i:                                             ; preds = %bb.h
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !76 ; 3 uses
  %i.bd = icmp ugt i32 %i.ay, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.be = sub nuw nsw i32 %i.ay, %i.bc
  %i.bf = mul i32 %i.be, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
end_hunk_1
