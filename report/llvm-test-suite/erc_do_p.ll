inline.NumInlined: 24
inline.NumDeleted: 8
begin_hunk_0_@conceal_lost_frames:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.bj = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %i.bj, label %bb.f, label %copy_prev_pic_to_concealed_pic.exit, !llvm.loop !105

copy_prev_pic_to_concealed_pic.exit:              ; preds = %bb.h, %bb.i, %bb.e
  %.07.i.i = phi ptr [ null, %bb.e ], [ null, %bb.i ], [ %i.be, %bb.h ]
  store i32 0, ptr %i.z, align 4, !tbaa !106
  tail call fastcc void @copy_to_conceal(ptr noundef %.07.i.i, ptr noundef %i.ag, ptr noundef %0)
  %i.bk = load i32, ptr %i.d, align 8, !tbaa !75
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %copy_prev_pic_to_concealed_pic.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 317024
  store i32 2, ptr %i.bm, align 8, !tbaa !107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 317028
  store i32 1, ptr %i.bn, align 4, !tbaa !108
  tail call void @flush_dpb() #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.x, align 8, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %copy_prev_pic_to_concealed_pic.exit
  tail call void @store_picture_in_dpb(ptr noundef %i.ag) #23
  store i32 %.172, ptr %i.aa, align 4, !tbaa !79
  %i.bo = load i32, ptr %i.ab, align 8, !tbaa !80
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @ref_flag, i64 4), ptr noundef nonnull align 16 dereferenceable(64) @ref_flag, i64 64, i1 false), !tbaa !4
  %i.bp = add nsw i32 %.172, 1
  %i.bq = srem i32 %i.bp, %i.bo                   ; 2 uses
  store i32 0, ptr @ref_flag, align 16, !tbaa !4
  %.not = icmp eq i32 %i.s, %i.bq
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.k, %bb.d
  store <2 x i32> %i.c, ptr %i.a, align 8, !tbaa !4
  store i32 %i.s, ptr %i.r, align 4, !tbaa !81
  ret void
}

declare ptr @alloc_storable_picture(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @flush_dpb() local_unnamed_addr #3

declare void @store_picture_in_dpb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update_ref_list_for_concealment() local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95 ; 4 uses
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr @dpb, align 8, !tbaa !99   ; 3 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8 ; 3 uses
  %wide.trip.count = zext i32 %i.a to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %i.a, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %.07 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !110
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %.07, 1
  %i.j = zext i32 %.07 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.j
  store ptr %i.f, ptr %i.k, align 8, !tbaa !100
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.i, %bb.c ], [ %.07, %bb.b ]  ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !100  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !110
  %.not.1 = icmp eq i32 %i.p, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i32 %.1, 1
  %i.r = zext i32 %.1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.r
  store ptr %i.n, ptr %i.s, align 8, !tbaa !100
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %i.q, %bb.e ], [ %.1, %bb.d ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !111

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !100  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !110
  %.not.epil = icmp eq i32 %i.w, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.x = zext i32 %.07.epil.init to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.x
  store ptr %i.u, ptr %i.y, align 8, !tbaa !100
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  %i.z = load ptr, ptr @active_pps, align 8, !tbaa !112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1112
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !113
  store i32 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !115
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @init_lists_for_non_reference_loss(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @active_sps, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  %i.c = load i32, ptr %i.b, align 4, !tbaa !116
  %i.d = add i32 %i.c, 4
  %.neg = shl nsw i32 -1, %i.d
  %i.e = icmp eq i32 %1, 0                        ; 2 uses
  br i1 %i.e, label %.preheader92, label %.loopexit

.preheader92:                                     ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !115 ; 2 uses
  %.not120 = icmp eq i32 %i.f, 0
  br i1 %.not120, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader92
  %i.g = load ptr, ptr @dpb, align 8, !tbaa !99
  %i.h = load ptr, ptr @img, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 6076
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !110
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !120  ; 2 uses
  %i.r = load i32, ptr %i.i, align 4, !tbaa !121
  %i.s = icmp ugt i32 %i.q, %i.r
  %i.t = select i1 %i.s, i32 %.neg, i32 0
  %.sink = add i32 %i.q, %i.t                     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !100  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  store i32 %.sink, ptr %i.w, align 4, !tbaa !122
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 316832
  store i32 %.sink, ptr %i.z, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !123

.loopexit:                                        ; preds = %bb.d, %.preheader92, %bb.a
  %i.aa = or i32 %1, %0
  %or.cond3 = icmp eq i32 %i.aa, 0
  br i1 %or.cond3, label %.preheader91, label %bb.k

.preheader91:                                     ; preds = %.loopexit
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95 ; 4 uses
  %.not121 = icmp eq i32 %i.ab, 0
  %.pre161 = load ptr, ptr @listX, align 16       ; 4 uses
  br i1 %.not121, label %._crit_edge, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader91
  %i.ac = load ptr, ptr @dpb, align 8, !tbaa !99  ; 3 uses
  %wide.trip.count128 = zext i32 %i.ab to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count128, 1
  %i.ad = icmp eq i32 %i.ab, 1
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph96.new

.lr.ph96.new:                                     ; preds = %.lr.ph96
  %unroll_iter = and i64 %wide.trip.count128, 4294967294
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph96.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph96.new ], [ %indvars.iv.next126.1, %bb.i ] ; 3 uses
  %.07494 = phi i32 [ 0, %.lr.ph96.new ], [ %.175.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph96.new ], [ %niter.next.1, %bb.i ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv125
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !110
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.al = add nsw i32 %.07494, 1
  %i.am = sext i32 %.07494 to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.pre161, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.175 = phi i32 [ %i.al, %bb.f ], [ %.07494, %bb.e ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv125
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !100 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !110
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !103
  %i.aw = add nsw i32 %.175, 1
  %i.ax = sext i32 %.175 to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.pre161, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.175.1 = phi i32 [ %i.aw, %bb.h ], [ %.175, %bb.g ] ; 3 uses
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !124

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph96
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next126.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07494.epil.init = phi i32 [ 0, %.lr.ph96 ], [ %.175.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod217 = trunc i32 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv125.epil.init
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !100 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !110
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.j, label %._crit_edge.loopexit

bb.j:                                             ; preds = %.epil.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103
  %i.bg = add nsw i32 %.07494.epil.init, 1
  %i.bh = sext i32 %.07494.epil.init to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %.pre161, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !50
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.epil.preheader, %bb.j, %._crit_edge.loopexit.unr-lcssa
  %.175.lcssa = phi i32 [ %.175.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.bg, %bb.j ], [ %.07494.epil.init, %.epil.preheader ]
  %.pre = load ptr, ptr @listX, align 16, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader91
  %2 = phi ptr [ %.pre161, %.preheader91 ], [ %.pre, %._crit_edge.loopexit ]
  %.074.lcssa = phi i32 [ 0, %.preheader91 ], [ %.175.lcssa, %._crit_edge.loopexit ] ; 3 uses
  %i.bj = sext i32 %.074.lcssa to i64
  tail call void @qsort(ptr noundef %2, i64 noundef %i.bj, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #23
  store i32 %.074.lcssa, ptr @listXsize, align 16, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.loopexit
  %.276 = phi i32 [ %.074.lcssa, %._crit_edge ], [ 0, %.loopexit ] ; 2 uses
  %i.bk = icmp eq i32 %0, 1
  %or.cond5 = and i1 %i.bk, %i.e
  br i1 %or.cond5, label %.preheader90, label %._crit_edge167

._crit_edge167:                                   ; preds = %bb.k
  %.pre168 = load i32, ptr @listXsize, align 16, !tbaa !4
  %.pre169 = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  br label %bb.t

.preheader90:                                     ; preds = %bb.k
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95 ; 2 uses
  %.not122 = icmp eq i32 %i.bl, 0
  %.pre163 = load ptr, ptr @listX, align 16       ; 2 uses
  br i1 %.not122, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader90
  %i.bm = load ptr, ptr @dpb, align 8, !tbaa !99
  %i.bn = load ptr, ptr @img, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6072
  %wide.trip.count133 = zext i32 %i.bl to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph99, %bb.o
  %indvars.iv130 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next131, %bb.o ] ; 2 uses
  %.37797 = phi i32 [ %.276, %.lr.ph99 ], [ %.478, %bb.o ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv130
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !100 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !110
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bu = load i32, ptr %i.bo, align 8, !tbaa !78
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !103 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !125
  %i.bz = icmp sgt i32 %i.bu, %i.by
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = add nsw i32 %.37797, 1
  %i.cb = sext i32 %.37797 to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %.pre163, i64 %i.cb
  store ptr %i.bw, ptr %i.cc, align 8, !tbaa !50
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %.478 = phi i32 [ %i.ca, %bb.n ], [ %.37797, %bb.m ], [ %.37797, %bb.l ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge100.loopexit, label %bb.l, !llvm.loop !126

._crit_edge100.loopexit:                          ; preds = %bb.o
  %.pre162 = load ptr, ptr @listX, align 16, !tbaa !48
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit, %.preheader90
  %3 = phi ptr [ %.pre163, %.preheader90 ], [ %.pre162, %._crit_edge100.loopexit ]
  %.377.lcssa = phi i32 [ %.276, %.preheader90 ], [ %.478, %._crit_edge100.loopexit ] ; 8 uses
  %i.cd = sext i32 %.377.lcssa to i64             ; 13 uses
  tail call void @qsort(ptr noundef %3, i64 noundef %i.cd, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #23
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95 ; 2 uses
  %.not123 = icmp eq i32 %i.ce, 0
  %.pre165 = load ptr, ptr @listX, align 16       ; 2 uses
  br i1 %.not123, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %._crit_edge100
  %i.cf = load ptr, ptr @dpb, align 8, !tbaa !99
  %i.cg = load ptr, ptr @img, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 6072
  %wide.trip.count138 = zext i32 %i.ce to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph105, %bb.s
  %indvars.iv135 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next136, %bb.s ] ; 2 uses
  %.579102 = phi i32 [ %.377.lcssa, %.lr.ph105 ], [ %.6, %bb.s ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv135
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !100 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !110
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cn = load i32, ptr %i.ch, align 8, !tbaa !78
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !103 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !125
  %i.cs = icmp slt i32 %i.cn, %i.cr
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = add nsw i32 %.579102, 1
  %i.cu = sext i32 %.579102 to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %.pre165, i64 %i.cu
  store ptr %i.cp, ptr %i.cv, align 8, !tbaa !50
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.6 = phi i32 [ %i.ct, %bb.r ], [ %.579102, %bb.q ], [ %.579102, %bb.p ] ; 2 uses
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %._crit_edge106.loopexit, label %bb.p, !llvm.loop !127

._crit_edge106.loopexit:                          ; preds = %bb.s
  %.pre164 = load ptr, ptr @listX, align 16, !tbaa !48
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %._crit_edge100
  %4 = phi ptr [ %.pre165, %._crit_edge100 ], [ %.pre164, %._crit_edge106.loopexit ]
  %.579.lcssa = phi i32 [ %.377.lcssa, %._crit_edge100 ], [ %.6, %._crit_edge106.loopexit ] ; 10 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cd
  %i.cx = sub nsw i32 %.579.lcssa, %.377.lcssa    ; 2 uses
  %i.cy = sext i32 %i.cx to i64                   ; 4 uses
  tail call void @qsort(ptr noundef %i.cw, i64 noundef %i.cy, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #23
  %i.cz = icmp sgt i32 %.377.lcssa, 0
  br i1 %i.cz, label %.lr.ph110, label %.preheader89

.lr.ph110:                                        ; preds = %._crit_edge106
  %5 = load ptr, ptr @listX, align 16, !tbaa !48  ; 7 uses
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !48 ; 2 uses
  %wide.trip.count143 = zext nneg i32 %.377.lcssa to i64 ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.da, i64 %i.cy ; 6 uses
  %min.iters.check = icmp ult i32 %.377.lcssa, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110
  %i.db = ptrtoaddr ptr %i.da to i64
  %6 = ptrtoaddr ptr %5 to i64
  %i.dc = sext i32 %.579.lcssa to i64
  %i.dd = shl nsw i64 %i.dc, 3
  %i.de = add i64 %i.dd, %i.db
  %i.df = shl nuw nsw i64 %i.cd, 3
  %i.dg = add i64 %i.df, %6
  %i.dh = sub i64 %i.de, %i.dg
  %diff.check = icmp ult i64 %i.dh, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count143, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load = load <2 x ptr>, ptr %i.di, align 8, !tbaa !50
  %wide.load180 = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !50
  %i.dk = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store <2 x ptr> %wide.load, ptr %i.dk, align 8, !tbaa !50
  store <2 x ptr> %wide.load180, ptr %i.dl, align 8, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count143
  br i1 %cmp.n, label %.preheader89, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph110, %middle.block
  %indvars.iv140.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter218 = and i64 %wide.trip.count143, 3   ; 2 uses
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv140.prol = phi i64 [ %indvars.iv.next141.prol, %scalar.ph.prol ], [ %indvars.iv140.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv140.prol
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !50
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv140.prol
  store ptr %i.do, ptr %gep.prol, align 8, !tbaa !50
  %indvars.iv.next141.prol = add nuw nsw i64 %indvars.iv140.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter218
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !129

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv140.unr = phi i64 [ %indvars.iv140.ph, %scalar.ph.preheader ], [ %indvars.iv.next141.prol, %scalar.ph.prol ]
  %i.dp = sub nsw i64 %indvars.iv140.ph, %wide.trip.count143
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %.preheader89, label %scalar.ph

.preheader89:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge106
  %i.dr = icmp slt i32 %.377.lcssa, %.579.lcssa
  %.pre166 = load ptr, ptr @listX, align 16, !tbaa !48 ; 8 uses
  %.pre166182 = ptrtoaddr ptr %.pre166 to i64
  br i1 %i.dr, label %.lr.ph112, label %.preheader89.._crit_edge113_crit_edge

.preheader89.._crit_edge113_crit_edge:            ; preds = %.preheader89
  %.pre.a = sext i32 %.579.lcssa to i64
  br label %._crit_edge113

.lr.ph112:                                        ; preds = %.preheader89
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !48 ; 7 uses
  %wide.trip.count148 = sext i32 %.579.lcssa to i64 ; 6 uses
  %min.iters.check184 = icmp ult i32 %i.cx, 8
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.memcheck181

vector.memcheck181:                               ; preds = %.lr.ph112
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = shl nsw i64 %i.cd, 3
  %i.dv = add i64 %i.du, %.pre166182
  %i.dw = sub i64 %i.dt, %i.dv
  %diff.check182 = icmp ult i64 %i.dw, 32
  br i1 %diff.check182, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck181
  %n.vec187 = and i64 %i.cy, -4                   ; 3 uses
  %i.dx = add nsw i64 %n.vec187, %i.cd
  %invariant.gep225 = getelementptr [8 x i8], ptr %.pre166, i64 %i.cd
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph185
  %index189 = phi i64 [ 0, %vector.ph185 ], [ %index.next192, %vector.body188 ] ; 3 uses
  %gep226 = getelementptr [8 x i8], ptr %invariant.gep225, i64 %index189 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %gep226, i64 16
  %wide.load190 = load <2 x ptr>, ptr %gep226, align 8, !tbaa !50
  %wide.load191 = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !50
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %index189 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x ptr> %wide.load190, ptr %i.dz, align 8, !tbaa !50
  store <2 x ptr> %wide.load191, ptr %i.ea, align 8, !tbaa !50
  %index.next192 = add nuw i64 %index189, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next192, %n.vec187
  br i1 %i.eb, label %middle.block193, label %vector.body188, !llvm.loop !131

middle.block193:                                  ; preds = %vector.body188
  %cmp.n194 = icmp eq i64 %n.vec187, %i.cy
  br i1 %cmp.n194, label %._crit_edge113, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %vector.memcheck181, %.lr.ph112, %middle.block193
  %indvars.iv145.ph = phi i64 [ %i.cd, %vector.memcheck181 ], [ %i.cd, %.lr.ph112 ], [ %i.dx, %middle.block193 ] ; 4 uses
  %i.ec = sub nsw i64 %wide.trip.count148, %indvars.iv145.ph
  %xtraiter220 = and i64 %i.ec, 3                 ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol

scalar.ph183.prol:                                ; preds = %scalar.ph183.preheader, %scalar.ph183.prol
  %indvars.iv145.prol = phi i64 [ %indvars.iv.next146.prol, %scalar.ph183.prol ], [ %indvars.iv145.ph, %scalar.ph183.preheader ] ; 3 uses
  %prol.iter222 = phi i64 [ %prol.iter222.next, %scalar.ph183.prol ], [ 0, %scalar.ph183.preheader ]
  %i.ed = getelementptr inbounds [8 x i8], ptr %.pre166, i64 %indvars.iv145.prol
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !50
  %i.ef = sub nsw i64 %indvars.iv145.prol, %i.cd
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.ef
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !50
  %indvars.iv.next146.prol = add nsw i64 %indvars.iv145.prol, 1 ; 2 uses
  %prol.iter222.next = add i64 %prol.iter222, 1   ; 2 uses
  %prol.iter222.cmp.not = icmp eq i64 %prol.iter222.next, %xtraiter220
  br i1 %prol.iter222.cmp.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol, !llvm.loop !132

scalar.ph183.prol.loopexit:                       ; preds = %scalar.ph183.prol, %scalar.ph183.preheader
  %indvars.iv145.unr = phi i64 [ %indvars.iv145.ph, %scalar.ph183.preheader ], [ %indvars.iv.next146.prol, %scalar.ph183.prol ]
  %i.eh = sub nsw i64 %indvars.iv145.ph, %wide.trip.count148
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %._crit_edge113, label %scalar.ph183

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv140 = phi i64 [ %indvars.iv.next141.3, %scalar.ph ], [ %indvars.iv140.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv140
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !50
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv140
  store ptr %i.ek, ptr %gep, align 8, !tbaa !50
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next141
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !50
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next141
  store ptr %i.em, ptr %gep.1, align 8, !tbaa !50
  %indvars.iv.next141.1 = add nuw nsw i64 %indvars.iv140, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next141.1
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !50
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next141.1
  store ptr %i.eo, ptr %gep.2, align 8, !tbaa !50
  %indvars.iv.next141.2 = add nuw nsw i64 %indvars.iv140, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next141.2
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !50
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next141.2
  store ptr %i.eq, ptr %gep.3, align 8, !tbaa !50
  %indvars.iv.next141.3 = add nuw nsw i64 %indvars.iv140, 4 ; 2 uses
  %exitcond144.not.3 = icmp eq i64 %indvars.iv.next141.3, %wide.trip.count143
  br i1 %exitcond144.not.3, label %.preheader89, label %scalar.ph, !llvm.loop !133

scalar.ph183:                                     ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183
  %indvars.iv145 = phi i64 [ %indvars.iv.next146.3, %scalar.ph183 ], [ %indvars.iv145.unr, %scalar.ph183.prol.loopexit ] ; 6 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.pre166, i64 %indvars.iv145
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !50
  %i.et = sub nsw i64 %indvars.iv145, %i.cd
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.et
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !50
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %.pre166, i64 %indvars.iv.next146
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !50
  %i.ex = sub nsw i64 %indvars.iv.next146, %i.cd
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.ex
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !50
  %indvars.iv.next146.1 = add nsw i64 %indvars.iv145, 2 ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %.pre166, i64 %indvars.iv.next146.1
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = sub nsw i64 %indvars.iv.next146.1, %i.cd
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.fb
  store ptr %i.fa, ptr %i.fc, align 8, !tbaa !50
  %indvars.iv.next146.2 = add nsw i64 %indvars.iv145, 3 ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %.pre166, i64 %indvars.iv.next146.2
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !50
  %i.ff = sub nsw i64 %indvars.iv.next146.2, %i.cd
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.ff
  store ptr %i.fe, ptr %i.fg, align 8, !tbaa !50
  %indvars.iv.next146.3 = add nsw i64 %indvars.iv145, 4 ; 2 uses
  %exitcond149.not.3 = icmp eq i64 %indvars.iv.next146.3, %wide.trip.count148
  br i1 %exitcond149.not.3, label %._crit_edge113, label %scalar.ph183, !llvm.loop !134

._crit_edge113:                                   ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183, %middle.block193, %.preheader89.._crit_edge113_crit_edge
  %.pre-phi = phi i64 [ %.pre.a, %.preheader89.._crit_edge113_crit_edge ], [ %wide.trip.count148, %middle.block193 ], [ %wide.trip.count148, %scalar.ph183 ], [ %wide.trip.count148, %scalar.ph183.prol.loopexit ]
  store i32 %.579.lcssa, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  store i32 %.579.lcssa, ptr @listXsize, align 16, !tbaa !4
  %i.fh = getelementptr inbounds [8 x i8], ptr %.pre166, i64 %.pre-phi
  tail call void @qsort(ptr noundef %i.fh, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #23
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !48
  %i.fj = load i32, ptr @listXsize, align 16, !tbaa !4 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  %i.fm = sub nsw i32 %.579.lcssa, %i.fj
  %i.fn = sext i32 %i.fm to i64
  tail call void @qsort(ptr noundef %i.fl, i64 noundef %i.fn, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #23
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge167, %._crit_edge113
  %i.fo = phi i32 [ %.pre169, %._crit_edge167 ], [ %.579.lcssa, %._crit_edge113 ] ; 3 uses
  %i.fp = phi i32 [ %.pre168, %._crit_edge167 ], [ %.579.lcssa, %._crit_edge113 ] ; 3 uses
  %i.fq = icmp eq i32 %i.fp, %i.fo
  %i.fr = icmp sgt i32 %i.fp, 1
  %or.cond = and i1 %i.fr, %i.fq
  br i1 %or.cond, label %.preheader88, label %bb.v

.preheader88:                                     ; preds = %bb.t
  %i.fs = load ptr, ptr @listX, align 16, !tbaa !48 ; 2 uses
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !48 ; 4 uses
  %wide.trip.count153 = zext i32 %i.fo to i64     ; 3 uses
  %min.iters.check197 = icmp ult i32 %i.fo, 4
  br i1 %min.iters.check197, label %scalar.ph196.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %.preheader88
  %n.vec200 = and i64 %wide.trip.count153, 4294967292 ; 3 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph198
  %index202 = phi i64 [ 0, %vector.ph198 ], [ %index.next208, %vector.body201 ] ; 3 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph198 ], [ %i.ga, %vector.body201 ]
  %vec.phi203 = phi <2 x i1> [ zeroinitializer, %vector.ph198 ], [ %i.gb, %vector.body201 ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %index202 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load204 = load <2 x ptr>, ptr %i.fu, align 8, !tbaa !50
  %wide.load205 = load <2 x ptr>, ptr %i.fv, align 8, !tbaa !50
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index202 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load206 = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !50
  %wide.load207 = load <2 x ptr>, ptr %i.fx, align 8, !tbaa !50
  %i.fy = icmp ne <2 x ptr> %wide.load204, %wide.load206
  %i.fz = icmp ne <2 x ptr> %wide.load205, %wide.load207
  %i.ga = or <2 x i1> %vec.phi, %i.fy             ; 2 uses
  %i.gb = or <2 x i1> %vec.phi203, %i.fz          ; 2 uses
  %index.next208 = add nuw i64 %index202, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next208, %n.vec200
  br i1 %i.gc, label %middle.block209, label %vector.body201, !llvm.loop !135

middle.block209:                                  ; preds = %vector.body201
  %bin.rdx = or <2 x i1> %i.gb, %i.ga
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.gd = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not213 = icmp ne i2 %i.gd, 0
  %rdx.select = zext i1 %.not213 to i32           ; 2 uses
  %cmp.n210 = icmp eq i64 %n.vec200, %wide.trip.count153
  br i1 %cmp.n210, label %.loopexit212, label %scalar.ph196.preheader

scalar.ph196.preheader:                           ; preds = %.preheader88, %middle.block209
  %indvars.iv150.ph = phi i64 [ 0, %.preheader88 ], [ %n.vec200, %middle.block209 ]
  %.080115.ph = phi i32 [ 0, %.preheader88 ], [ %rdx.select, %middle.block209 ]
  br label %scalar.ph196

scalar.ph196:                                     ; preds = %scalar.ph196.preheader, %scalar.ph196
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %scalar.ph196 ], [ %indvars.iv150.ph, %scalar.ph196.preheader ] ; 3 uses
  %.080115 = phi i32 [ %spec.select, %scalar.ph196 ], [ %.080115.ph, %scalar.ph196.preheader ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv150
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !50
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv150
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !50
  %.not87 = icmp eq ptr %i.gf, %i.gh
  %spec.select = select i1 %.not87, i32 %.080115, i32 1 ; 2 uses
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %.loopexit212, label %scalar.ph196, !llvm.loop !136

.loopexit212:                                     ; preds = %scalar.ph196, %middle.block209
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block209 ], [ %spec.select, %scalar.ph196 ]
  %.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit212
  %i.gi = load <2 x ptr>, ptr %i.ft, align 8, !tbaa !50
  %i.gj = shufflevector <2 x ptr> %i.gi, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.gj, ptr %i.ft, align 8, !tbaa !50
  br label %bb.v

bb.v:                                             ; preds = %.loopexit212, %bb.u, %bb.t
  %i.gk = load ptr, ptr @active_sps, align 8, !tbaa !112
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 2060
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !137
  %i.gn = tail call noundef i32 @llvm.smin.i32(i32 %i.fp, i32 %i.gm) ; 4 uses
  store i32 %i.gn, ptr @listXsize, align 16, !tbaa !4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  %i.go = icmp ult i32 %i.gn, 33
  br i1 %i.go, label %.lr.ph118, label %.preheader

.lr.ph118:                                        ; preds = %bb.v
  %i.gp = load ptr, ptr @listX, align 16, !tbaa !48
  %i.gq = shl nuw nsw i32 %i.gn, 3
  %i.gr = zext nneg i32 %i.gq to i64
  %scevgep = getelementptr nuw i8, ptr %i.gp, i64 %i.gr
  %i.gs = shl nuw nsw i32 %i.gn, 3
  %narrow = sub nsw i32 264, %i.gs
  %i.gt = zext i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.gt, i1 false), !tbaa !50
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph118, %bb.v
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.gu, i8 0, i64 264, i1 false), !tbaa !50
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_pic_num_desc(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 316832
  %i.c = load i32, ptr %i.b, align 8, !tbaa !87
  %i.d = load ptr, ptr %1, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 316832
  %i.f = load i32, ptr %i.e, align 8, !tbaa !87
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.f, i32 %i.c)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_desc(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !125
  %i.d = load ptr, ptr %1, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !125
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.f, i32 %i.c)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_poc_asc(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !125
  %i.d = load ptr, ptr %1, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !125
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @compare_pic_by_lt_pic_num_asc(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 316836
  %i.c = load i32, ptr %i.b, align 4, !tbaa !138
  %i.d = load ptr, ptr %1, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 316836
  %i.f = load i32, ptr %i.e, align 4, !tbaa !138
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.c, i32 %i.f)
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @get_pic_from_dpb(i32 noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95
  %i.b = load ptr, ptr @img, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6068
  %i.d = load i32, ptr %i.c, align 4, !tbaa !139
  switch i32 %i.d, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6064
  %i.f = load i32, ptr %i.e, align 8, !tbaa !76
  %i.g = sub nsw i32 %0, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 6064
  %i.i = load i32, ptr %i.h, align 8, !tbaa !76
  %i.j = add nsw i32 %i.i, %0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ 0, %bb.a ]
  %i.k = load ptr, ptr @dpb, align 8
  %i.l = zext i32 %i.a to i64
  %indvars.iv.next18 = add nsw i64 %i.l, -1       ; 2 uses
  %indvars19 = trunc i64 %indvars.iv.next18 to i32 ; 2 uses
  %i.m = icmp sgt i32 %indvars19, -1
end_hunk_0
