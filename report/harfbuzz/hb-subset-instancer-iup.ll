Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-iup?download=true
inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a
  br i1 %i.c, label %.critedge, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !19     ; 4 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp samesign ugt i32 %i.b, %i.d
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i, !prof !16

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.h, %.preheader.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.f = lshr i32 %.053.i.i, 1
  %i.g = add nuw i32 %.053.i.i, 8
  %i.h = add nuw i32 %i.g, %i.f                   ; 6 uses
  %i.i = icmp ugt i32 %i.b, %i.h
  br i1 %i.i, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !0

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i

bb.d:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i32 %i.h to i64
  %i.m = tail call ptr @hb_malloc(i64 noundef %i.l) #9 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %i.q, i64 range(i64 0, 51539607541) %i.p, i1 false), !alias.scope !95
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.d, %.thread39.i.i
  %i.r = phi ptr [ null, %bb.d ], [ %i.k, %.thread39.i.i ]
  %i.s = zext i32 %i.h to i64
  %i.t = tail call ptr @hb_realloc(ptr noundef %i.r, i64 noundef %i.s) #9 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.t, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, !prof !23

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.e
  %i.u = load i32, ptr %3, align 8, !tbaa !19     ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.h, %i.u
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i:  ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.g, %bb.f
  %.1.i.i52.i.i = phi ptr [ %i.t, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  store ptr %.1.i.i52.i.i, ptr %i.j, align 8, !tbaa !21
  store i32 %i.h, ptr %3, align 8, !tbaa !19
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i
  %i.v = xor i32 %i.u, -1
  store i32 %i.v, ptr %3, align 8, !tbaa !19
  br label %.critedge

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i:   ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread63.i.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !22   ; 3 uses
  %i.y = icmp ugt i32 %i.b, %i.x
  br i1 %i.y, label %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.h

_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i
  %i.z = sub nuw nsw i32 %i.b, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = zext nneg i32 %i.z to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 0, i64 %i.ae, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread.i
  store i32 %i.b, ptr %i.w, align 4, !tbaa !22
  %i.af = load i32, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.ah = xor i32 %i.af, -1
  store i32 %i.ah, ptr %4, align 8, !tbaa !26
  br label %_ZN11hb_vector_tIjLb0EE5resetEv.exit

_ZN11hb_vector_tIjLb0EE5resetEv.exit:             ; preds = %bb.h, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 17 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !27
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !15  ; 6 uses
  %i.ak = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.aj, i1 noundef zeroext false)
  br i1 %i.ak, label %.preheader119, label %.critedge, !prof !96

.preheader119:                                    ; preds = %_ZN11hb_vector_tIjLb0EE5resetEv.exit
  %i.al = add i32 %i.aj, -4                       ; 3 uses
  %.not145 = icmp eq i32 %i.al, 0
  br i1 %.not145, label %.lr.ph136, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader119
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i32, ptr @_hb_NullPool, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count = zext i32 %i.al to i64
  br label %bb.j

.preheader:                                       ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %i.ap = icmp ugt i32 %i.aj, 3
  br i1 %i.ap, label %.lr.ph136, label %._crit_edge

.lr.ph136:                                        ; preds = %.preheader119, %.preheader
  %i.aq = load i32, ptr @_hb_NullPool, align 16   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %i.at = load i32, ptr %4, align 8, !tbaa !26
  %.not.i55 = icmp slt i32 %i.as, %i.at
  br i1 %.not.i55, label %.critedge.i59, label %bb.n

bb.j:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 3 uses
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !99, !range !100, !noundef !101
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %i.ba = load i32, ptr %4, align 8, !tbaa !26
  %.not.i = icmp slt i32 %i.az, %i.ba
  br i1 %.not.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = add i32 %i.az, 1
  %i.bc = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bb, i1 noundef zeroext false)
  br i1 %i.bc, label %..critedge_crit_edge.i, label %bb.m, !prof !96

..critedge_crit_edge.i:                           ; preds = %bb.l
  %.pre.i = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %.critedge.i

bb.m:                                             ; preds = %bb.l
  store i32 %i.an, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.k
  %i.bd = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.az, %bb.k ] ; 2 uses
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.bf = add i32 %i.bd, 1
  store i32 %i.bf, ptr %i.ai, align 4, !tbaa !27
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !31
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %.critedge.i, %bb.m, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.j, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.v, %.critedge.i59.3, %.preheader
  %i.bj = load i32, ptr %4, align 8, !tbaa !26
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.critedge, label %bb.w

bb.n:                                             ; preds = %.lr.ph136
  %i.bl = add i32 %i.as, 1
  %i.bm = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bl, i1 noundef zeroext false)
  br i1 %i.bm, label %..critedge_crit_edge.i57, label %bb.o, !prof !96

..critedge_crit_edge.i57:                         ; preds = %bb.n
  %.pre.i58 = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %.critedge.i59

bb.o:                                             ; preds = %bb.n
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %bb.p

.critedge.i59:                                    ; preds = %..critedge_crit_edge.i57, %.lr.ph136
  %i.bn = phi i32 [ %.pre.i58, %..critedge_crit_edge.i57 ], [ %i.as, %.lr.ph136 ] ; 2 uses
  %i.bo = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.bp = add i32 %i.bn, 1
  store i32 %i.bp, ptr %i.ai, align 4, !tbaa !27
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %i.al, ptr %i.br, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i59, %bb.o
  %i.bs = add i32 %i.aj, -3
  %i.bt = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %i.bu = load i32, ptr %4, align 8, !tbaa !26
  %.not.i55.1 = icmp slt i32 %i.bt, %i.bu
  br i1 %.not.i55.1, label %.critedge.i59.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = add i32 %i.bt, 1
  %i.bw = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bv, i1 noundef zeroext false)
  br i1 %i.bw, label %..critedge_crit_edge.i57.1, label %bb.r, !prof !96

bb.r:                                             ; preds = %bb.q
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1

..critedge_crit_edge.i57.1:                       ; preds = %bb.q
  %.pre.i58.1 = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %.critedge.i59.1

.critedge.i59.1:                                  ; preds = %..critedge_crit_edge.i57.1, %bb.p
  %i.bx = phi i32 [ %.pre.i58.1, %..critedge_crit_edge.i57.1 ], [ %i.bt, %bb.p ] ; 2 uses
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.bz = add i32 %i.bx, 1
  store i32 %i.bz, ptr %i.ai, align 4, !tbaa !27
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca
  store i32 %i.bs, ptr %i.cb, align 4, !tbaa !31
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1: ; preds = %.critedge.i59.1, %bb.r
  %i.cc = add i32 %i.aj, -2
  %i.cd = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %i.ce = load i32, ptr %4, align 8, !tbaa !26
  %.not.i55.2 = icmp slt i32 %i.cd, %i.ce
  br i1 %.not.i55.2, label %.critedge.i59.2, label %bb.s

bb.s:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1
  %i.cf = add i32 %i.cd, 1
  %i.cg = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.cf, i1 noundef zeroext false)
  br i1 %i.cg, label %..critedge_crit_edge.i57.2, label %bb.t, !prof !96

bb.t:                                             ; preds = %bb.s
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2

..critedge_crit_edge.i57.2:                       ; preds = %bb.s
  %.pre.i58.2 = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %.critedge.i59.2

.critedge.i59.2:                                  ; preds = %..critedge_crit_edge.i57.2, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1
  %i.ch = phi i32 [ %.pre.i58.2, %..critedge_crit_edge.i57.2 ], [ %i.cd, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.1 ] ; 2 uses
  %i.ci = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.cj = add i32 %i.ch, 1
  store i32 %i.cj, ptr %i.ai, align 4, !tbaa !27
  %i.ck = zext i32 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ck
  store i32 %i.cc, ptr %i.cl, align 4, !tbaa !31
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2: ; preds = %.critedge.i59.2, %bb.t
  %i.cm = add i32 %i.aj, -1
  %i.cn = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %i.co = load i32, ptr %4, align 8, !tbaa !26
  %.not.i55.3 = icmp slt i32 %i.cn, %i.co
  br i1 %.not.i55.3, label %.critedge.i59.3, label %bb.u

bb.u:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2
  %i.cp = add i32 %i.cn, 1
  %i.cq = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.cp, i1 noundef zeroext false)
  br i1 %i.cq, label %..critedge_crit_edge.i57.3, label %bb.v, !prof !96

bb.v:                                             ; preds = %bb.u
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %._crit_edge

..critedge_crit_edge.i57.3:                       ; preds = %bb.u
  %.pre.i58.3 = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %.critedge.i59.3

.critedge.i59.3:                                  ; preds = %..critedge_crit_edge.i57.3, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2
  %i.cr = phi i32 [ %.pre.i58.3, %..critedge_crit_edge.i57.3 ], [ %i.cn, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit60.2 ] ; 2 uses
  %i.cs = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.ct = add i32 %i.cr, 1
  store i32 %i.ct, ptr %i.ai, align 4, !tbaa !27
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.cm, ptr %i.cv, align 4, !tbaa !31
  br label %._crit_edge

bb.w:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !30 ; 2 uses
  %i.cy = load i32, ptr %i.ai, align 4, !tbaa !27 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %.idx = shl nuw nsw i64 %i.cz, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx
  %.not137 = icmp eq i32 %i.cy, 0
  br i1 %.not137, label %.critedge, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = fmul double %5, %5                      ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 116
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph141, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread
  %.048139 = phi i32 [ 0, %.lr.ph141 ], [ %.ph, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ] ; 6 uses
  %.050138 = phi ptr [ %i.cx, %.lr.ph141 ], [ %i.rm, %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread ] ; 2 uses
  %i.eu = load i32, ptr %.050138, align 4, !tbaa !31 ; 2 uses
  %i.ev = sub i32 %i.eu, %.048139
  %i.ew = add i32 %i.ev, 1                        ; 4 uses
  %i.ex = load ptr, ptr %i.db, align 8, !tbaa !28
  %i.ey = load i32, ptr %i.a, align 4, !tbaa !15
  %storemerge.i.i = call i32 @llvm.usub.sat.i32(i32 %i.ey, i32 %.048139)
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.ew) ; 23 uses
  %i.ez = zext i32 %.048139 to i64                ; 5 uses
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.ex, i64 %i.ez ; 8 uses
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i to i64 ; 5 uses
  %i.fb = load ptr, ptr %i.dc, align 8, !tbaa !33
  %i.fc = load i32, ptr %i.dd, align 4, !tbaa !34
  %storemerge.i.i66 = call i32 @llvm.usub.sat.i32(i32 %i.fc, i32 %.048139)
  %.sroa.speculated.i.i67 = call i32 @llvm.umin.i32(i32 %storemerge.i.i66, i32 %i.ew)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ez ; 8 uses
  %i.fe = load ptr, ptr %i.de, align 8, !tbaa !33
  %i.ff = load i32, ptr %i.df, align 4, !tbaa !34
  %storemerge.i.i74 = call i32 @llvm.usub.sat.i32(i32 %i.ff, i32 %.048139)
  %.sroa.speculated.i.i75 = call i32 @llvm.umin.i32(i32 %storemerge.i.i74, i32 %i.ew)
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.ez ; 9 uses
  %i.fh = load ptr, ptr %i.dg, align 8, !tbaa !21 ; 2 uses
  %i.fi = ptrtoaddr ptr %i.fh to i64
  %i.fj = load i32, ptr %i.w, align 4, !tbaa !22
  %storemerge.i.i82 = call i32 @llvm.usub.sat.i32(i32 %i.fj, i32 %.048139)
  %.sroa.speculated.i.i83 = call i32 @llvm.umin.i32(i32 %storemerge.i.i82, i32 %i.ew) ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez ; 14 uses
  %.sroa.3.8.insert.ext.i.i84 = zext i32 %.sroa.speculated.i.i83 to i64 ; 14 uses
  %.not.i87 = icmp eq i32 %.sroa.speculated.i.i83, %.sroa.speculated.i.i
  %.not161.i = icmp eq i32 %.sroa.speculated.i.i67, %.sroa.speculated.i.i
  %or.cond.i = select i1 %.not.i87, i1 %.not161.i, i1 false
  %.not162.i = icmp eq i32 %.sroa.speculated.i.i75, %.sroa.speculated.i.i
  %or.cond168.i = select i1 %or.cond.i, i1 %.not162.i, i1 false ; 3 uses
  br i1 %or.cond168.i, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.fl = add i32 %.sroa.speculated.i.i, -513
  %or.cond = icmp ult i32 %i.fl, -512
  br i1 %or.cond, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, label %.lr.ph.i, !prof !35

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond.not.i, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread, label %.lr.ph.i, !llvm.loop !59

.lr.ph.i:                                         ; preds = %bb.y, %bb.z
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !31
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i
end_hunk_0
