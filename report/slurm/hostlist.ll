Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/hostlist?download=true
inline.NumInlined: 142
inline.NumDeleted: 36
begin_hunk_0_@hostlist_sort:bb.a
  %.069.i39.i.i.i116.i = phi i64 [ %i.lo, %.lr.ph.i37.i.i.i114.i ], [ %i.kx, %.lr.ph.i30.i.i.i109.i ] ; 2 uses
  %i.lo = udiv i64 %.069.i39.i.i.i116.i, 10
  %i.lp = add nuw nsw i32 %.010.i38.i.i.i115.i, 1 ; 2 uses
  %.not.i40.i.i.i117.i = icmp ult i64 %.069.i39.i.i.i116.i, 100
  br i1 %.not.i40.i.i.i117.i, label %_zero_padded.exit42.loopexit.i.i.i118.i, label %.lr.ph.i37.i.i.i114.i, !llvm.loop !35

_zero_padded.exit42.loopexit.i.i.i118.i:          ; preds = %.lr.ph.i37.i.i.i114.i
  %i.lq = call i32 @llvm.smin.i32(i32 %i.ln, i32 %i.la)
  br label %_zero_padded.exit42.i.i.i119.i

_zero_padded.exit42.i.i.i119.i:                   ; preds = %_zero_padded.exit42.loopexit.i.i.i118.i, %_zero_padded.exit35.thread.i.i.i125.i
  %.pn45.i.i.i120.i = phi i32 [ %i.ll, %_zero_padded.exit35.thread.i.i.i125.i ], [ %i.lq, %_zero_padded.exit42.loopexit.i.i.i118.i ]
  %.0.lcssa.i41.i.i.i121.i = phi i32 [ 1, %_zero_padded.exit35.thread.i.i.i125.i ], [ %i.lp, %_zero_padded.exit42.loopexit.i.i.i118.i ]
  %i.lr = sub nsw i32 %i.la, %.pn45.i.i.i120.i
  %i.ls = call i32 @llvm.smin.i32(i32 %.0.lcssa.i41.i.i.i121.i, i32 %i.kz)
  %i.lt = sub nsw i32 %i.kz, %i.ls
  %.not.i.i.i122.i = icmp eq i32 %i.li, %i.lk     ; 2 uses
  %.not21.i.i.i123.i = icmp eq i32 %i.lr, %i.lt
  %or.cond.i.i.i124.i = select i1 %.not.i.i.i122.i, i1 true, i1 %.not21.i.i.i123.i
  br i1 %or.cond.i.i.i124.i, label %bb.bf, label %hostrange_width_combine.exit.i.i

bb.bf:                                            ; preds = %_zero_padded.exit42.i.i.i119.i
  br i1 %.not.i.i.i122.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.kz, ptr %i.ky, align 8
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  store i32 %i.la, ptr %i.kw, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bd
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.lv = load i64, ptr %i.lu, align 8
  store i64 %i.lv, ptr %i.kf, align 8
  %i.lw = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.next.i92.i
  %i.ly = load ptr, ptr %i.lx, align 8            ; 3 uses
  %i.lz = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ma = sext i32 %i.lz to i64
  %i.mb = icmp slt i64 %indvars.iv.i91.i, %i.ma
  br i1 %i.mb, label %.lr.ph.i.i.i, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.bi
  %i.mc = add nsw i32 %i.lz, -1                   ; 2 uses
  %.pre20.i.i.i = sext i32 %i.mc to i64
  br label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bi, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.next.i92.i, %bb.bi ] ; 2 uses
  %i.md = load ptr, ptr %i.m, align 8             ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv.next.i.i.i
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv.i.i.i
  store ptr %i.mf, ptr %i.mg, align 8
  %i.mh = load i32, ptr %i.h, align 4
  %i.mi = add nsw i32 %i.mh, -1                   ; 2 uses
  %i.mj = sext i32 %i.mi to i64                   ; 2 uses
  %i.mk = icmp slt i64 %indvars.iv.next.i.i.i, %i.mj
  br i1 %i.mk, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !14

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.m, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %.pre-phi21.i.i.i = phi i64 [ %.pre20.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.mj, %._crit_edge.loopexit.i.i.i ]
  %i.ml = phi ptr [ %i.lw, %.._crit_edge_crit_edge.i.i.i ], [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.lcssa.i.i.i = phi i32 [ %i.mc, %.._crit_edge_crit_edge.i.i.i ], [ %i.mi, %._crit_edge.loopexit.i.i.i ]
  store i32 %.lcssa.i.i.i, ptr %i.h, align 4
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.ml, i64 %.pre-phi21.i.i.i
  store ptr null, ptr %i.mm, align 8
  %.032.i.i.i.i = load ptr, ptr %i.p, align 8     ; 2 uses
  %.not2933.i.i.i.i = icmp eq ptr %.032.i.i.i.i, null
  br i1 %.not2933.i.i.i.i, label %hostlist_shift_iterators.exit.i.i.i, label %.lr.ph.split.i.i.preheader.i.i

.lr.ph.split.i.i.preheader.i.i:                   ; preds = %._crit_edge.i.i.i
  %i.mn = trunc nuw nsw i64 %indvars.iv.next.i92.i to i32
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.bn, %.lr.ph.split.i.i.preheader.i.i
  %.034.i.i.i.i = phi ptr [ %.0.i.i26.i.i, %bb.bn ], [ %.032.i.i.i.i, %.lr.ph.split.i.i.preheader.i.i ] ; 5 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i, i64 16 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 8            ; 2 uses
  %i.mq = sext i32 %i.mp to i64                   ; 2 uses
  %.not30.i.i.i.i = icmp sgt i64 %indvars.iv.next.i92.i, %i.mq
  br i1 %.not30.i.i.i.i, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.split.i.i.i.i
  %.not31.i.i.not.i.i = icmp sgt i64 %indvars.iv.i91.i, %i.mq
  br i1 %.not31.i.i.not.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.mr = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i, i64 32
  store i32 -1, ptr %i.mr, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ms = add nsw i32 %i.mp, -1                   ; 2 uses
  %.pre19.i.i.i = sext i32 %i.ms to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pre-phi.i.i.i = phi i64 [ %.pre19.i.i.i, %bb.bl ], [ %indvars.iv.next.i92.i, %bb.bk ]
  %.sink.i.i.i.i = phi i32 [ %i.ms, %bb.bl ], [ %i.mn, %bb.bk ]
  store i32 %.sink.i.i.i.i, ptr %i.mo, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 64
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %.pre-phi.i.i.i
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i, i64 24
  store ptr %i.my, ptr %i.mz, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.split.i.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i, i64 40
  %.0.i.i26.i.i = load ptr, ptr %i.na, align 8    ; 2 uses
  %.not29.i.i.i.i = icmp eq ptr %.0.i.i26.i.i, null
  br i1 %.not29.i.i.i.i, label %hostlist_shift_iterators.exit.i.i.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !15

hostlist_shift_iterators.exit.i.i.i:              ; preds = %bb.bn, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ly, ptr %i.a, align 8
  %i.nb = icmp eq ptr %i.ly, null
  br i1 %i.nb, label %hostlist_delete_range.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %hostlist_shift_iterators.exit.i.i.i
  call void @slurm_xfree(ptr noundef nonnull %i.ly) #21
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %hostlist_delete_range.exit.i.i

hostlist_delete_range.exit.i.i:                   ; preds = %bb.bo, %hostlist_shift_iterators.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %hostrange_width_combine.exit.i.i

hostrange_width_combine.exit.i.i:                 ; preds = %hostlist_delete_range.exit.i.i, %_zero_padded.exit42.i.i.i119.i, %hostrange_prefix_cmp.exit.i93.i, %bb.bc, %bb.bb
  %i.nc = icmp sgt i64 %indvars.iv.i91.i, 2
  br i1 %i.nc, label %bb.bb, label %._crit_edge.i89.i, !llvm.loop !40

._crit_edge.i89.i:                                ; preds = %hostrange_width_combine.exit.i.i, %bb.ba
  %i.nd = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #21 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.nd, 0
  br i1 %.not24.i.i, label %hostlist_coalesce.exit, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge.i89.i
  %i.ne = tail call ptr @__errno_location() #22
  store i32 %i.nd, ptr %i.ne, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_collapse) #23
  unreachable

hostlist_coalesce.exit:                           ; preds = %._crit_edge.i89.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @hostlist_split_treewidth(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %hostlist_count.exit.thread, label %bb.b

hostlist_count.exit.thread:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %_set_span.exit.thread54

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not12.i = icmp eq i32 %i.d, 0
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #22
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_count) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8              ; 5 uses
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not13.i = icmp eq i32 %i.h, 0
  br i1 %.not13.i, label %hostlist_count.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__errno_location() #22
  store i32 %i.h, ptr %i.i, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_count) #23
  unreachable

hostlist_count.exit:                              ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq i16 %3, 0
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1584), align 8 ; 2 uses
  %spec.select = select i1 %.not, i16 %i.j, i16 %3 ; 6 uses
  %i.k = icmp slt i32 %i.g, 1
  br i1 %i.k, label %_set_span.exit.thread54, label %bb.f

bb.f:                                             ; preds = %hostlist_count.exit
  %.not.i41 = icmp eq i16 %spec.select, 0
  %spec.select.i = select i1 %.not.i41, i16 %i.j, i16 %spec.select ; 5 uses
  %i.l = zext i16 %spec.select.i to i32           ; 7 uses
  %.not62.i = icmp samesign ugt i32 %i.g, %i.l
  br i1 %.not62.i, label %bb.g, label %_set_span.exit.thread.thread

_set_span.exit.thread.thread:                     ; preds = %bb.f
  %i.m = trunc nuw i32 %i.g to i16
  br label %_set_span.exit.thread.thread64

bb.g:                                             ; preds = %bb.f
  %i.n = zext i16 %spec.select.i to i64           ; 7 uses
  %i.o = tail call ptr @slurm_xcalloc(i64 noundef %i.n, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 2497, ptr noundef nonnull @__func__._set_span) #21 ; 11 uses
  store ptr %i.o, ptr %i.a, align 8
  %.not85.i = icmp eq i16 %spec.select.i, 0
  br i1 %.not85.i, label %.preheader.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %bb.g
  %min.iters.check = icmp ult i16 %spec.select.i, 4
  %n.vec = and i64 %i.n, 65532                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %bb.h
  %.04876.us.i = phi i32 [ %i.w, %bb.h ], [ %i.l, %.preheader.us.i.preheader ] ; 2 uses
  %.04975.us.i = phi i32 [ %i.v, %bb.h ], [ 1, %.preheader.us.i.preheader ] ; 3 uses
  %.05174.us.i = phi i32 [ %i.y, %bb.h ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %.05573.us.i = phi i32 [ %i.x, %bb.h ], [ %i.g, %.preheader.us.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.04975.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.p, align 4
  %i.q = add <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %i.q, ptr %i.p, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add i32 %i.t, %.04975.us.i
  store i32 %i.u, ptr %i.s, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !44

bb.h:                                             ; preds = %._crit_edge.us.i
  %i.v = mul i32 %.04975.us.i, %i.l
  %i.w = mul i32 %.04876.us.i, %i.l               ; 2 uses
  %.not63.us.i = icmp ugt i32 %i.w, %i.x
  br i1 %.not63.us.i, label %.split78.us.i, label %.preheader.us.i, !llvm.loop !45

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %i.x = sub nuw nsw i32 %.05573.us.i, %.04876.us.i ; 5 uses
  %i.y = add i32 %.05174.us.i, 1                  ; 2 uses
  %.not65.us.i = icmp eq i32 %i.x, 0
  br i1 %.not65.us.i, label %_set_span.exit.thread, label %bb.h

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  br label %.preheader.i

.split78.us.i:                                    ; preds = %bb.h
  %i.z = udiv i32 %i.x, %i.l                      ; 3 uses
  %.recomposed = urem i32 %i.x, %i.l              ; 5 uses
  %min.iters.check117 = icmp ult i16 %spec.select.i, 4
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %.split78.us.i
  %n.vec119 = and i64 %i.n, 65532                 ; 3 uses
  %broadcast.splatinsert120 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat121 = shufflevector <4 x i32> %broadcast.splatinsert120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph118
  %index123 = phi i64 [ 0, %vector.ph118 ], [ %index.next125, %vector.body122 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index123 ; 2 uses
  %wide.load124 = load <4 x i32>, ptr %i.aa, align 4
  %i.ab = add <4 x i32> %wide.load124, %broadcast.splat121
  store <4 x i32> %i.ab, ptr %i.aa, align 4
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.ac, label %middle.block126, label %vector.body122, !llvm.loop !46

middle.block126:                                  ; preds = %vector.body122
  %cmp.n127 = icmp eq i64 %n.vec119, %i.n
  br i1 %cmp.n127, label %.loopexit, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %.split78.us.i, %middle.block126
  %indvars.iv96.i.ph = phi i64 [ 0, %.split78.us.i ], [ %n.vec119, %middle.block126 ]
  br label %scalar.ph116

.loopexit:                                        ; preds = %scalar.ph116, %middle.block126
  %4 = add nuw nsw i32 %.05174.us.i, 2            ; 3 uses
  %i.ad = mul i32 %i.z, %i.l                      ; 0 uses
  %.not6482.i = icmp eq i32 %.recomposed, 0
  br i1 %.not6482.i, label %_set_span.exit.thread.thread64, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.ae = zext i32 %.recomposed to i64            ; 2 uses
  %min.iters.check130 = icmp ult i32 %.recomposed, 4
  br i1 %min.iters.check130, label %.lr.ph.i.preheader141, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i.preheader
  %n.vec132 = and i64 %i.ae, 4294967292           ; 4 uses
  %i.af = trunc nuw i64 %n.vec132 to i32
  %i.ag = sub i32 %.recomposed, %i.af
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index134 ; 2 uses
  %wide.load135 = load <4 x i32>, ptr %i.ah, align 4
  %i.ai = add nsw <4 x i32> %wide.load135, splat (i32 1)
  store <4 x i32> %i.ai, ptr %i.ah, align 4
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.aj, label %middle.block137, label %vector.body133, !llvm.loop !47

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %n.vec132, %i.ae
  br i1 %cmp.n138, label %_set_span.exit.thread.thread64, label %.lr.ph.i.preheader141

.lr.ph.i.preheader141:                            ; preds = %.lr.ph.i.preheader, %middle.block137
  %indvars.iv101.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec132, %middle.block137 ]
  %.15683.i.ph = phi i32 [ %.recomposed, %.lr.ph.i.preheader ], [ %i.ag, %middle.block137 ]
  br label %.lr.ph.i

scalar.ph116:                                     ; preds = %scalar.ph116.preheader, %scalar.ph116
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %scalar.ph116 ], [ %indvars.iv96.i.ph, %scalar.ph116.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv96.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add i32 %i.al, %i.z
  store i32 %i.am, ptr %i.ak, align 4
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next97.i, %i.n
  br i1 %exitcond100.not.i, label %.loopexit, label %scalar.ph116, !llvm.loop !48

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader141, %.lr.ph.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %.lr.ph.i ], [ %indvars.iv101.i.ph, %.lr.ph.i.preheader141 ] ; 2 uses
  %.15683.i = phi i32 [ %i.aq, %.lr.ph.i ], [ %.15683.i.ph, %.lr.ph.i.preheader141 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv101.i ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1
  %i.aq = add nsw i32 %.15683.i, -1               ; 2 uses
  %.not64.i = icmp eq i32 %i.aq, 0
  br i1 %.not64.i, label %_set_span.exit.thread.thread64, label %.lr.ph.i, !llvm.loop !49

_set_span.exit.thread:                            ; preds = %._crit_edge.us.i
  %i.ar = icmp eq i32 %.05174.us.i, 0
  %i.as = trunc i32 %i.g to i16
  %spec.select69 = select i1 %i.ar, i16 %i.as, i16 %spec.select
  br label %_set_span.exit.thread.thread64

_set_span.exit.thread.thread64:                   ; preds = %.lr.ph.i, %middle.block137, %_set_span.exit.thread, %.loopexit, %_set_span.exit.thread.thread
  %5 = phi ptr [ %i.o, %.loopexit ], [ %i.o, %_set_span.exit.thread ], [ null, %_set_span.exit.thread.thread ], [ %i.o, %middle.block137 ], [ %i.o, %.lr.ph.i ] ; 3 uses
  %.053.i.ph55 = phi i32 [ %4, %.loopexit ], [ %i.y, %_set_span.exit.thread ], [ 1, %_set_span.exit.thread.thread ], [ %4, %middle.block137 ], [ %4, %.lr.ph.i ]
  %6 = phi i16 [ %spec.select, %.loopexit ], [ %spec.select69, %_set_span.exit.thread ], [ %i.m, %_set_span.exit.thread.thread ], [ %spec.select, %middle.block137 ], [ %spec.select, %.lr.ph.i ] ; 3 uses
  %i.at = zext i16 %6 to i64
  %i.au = tail call ptr @slurm_xcalloc(i64 noundef %i.at, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 2566, ptr noundef nonnull @__func__.hostlist_split_treewidth) #21
  store ptr %i.au, ptr %1, align 8
  %i.av = zext i16 %6 to i32
  store i32 0, ptr %2, align 4
  %.not84 = icmp eq i16 %6, 0
  br i1 %.not84, label %.critedge, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %_set_span.exit.thread.thread64
  %.not38 = icmp eq ptr %5, null
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82.preheader, %bb.o
  %i.aw = phi ptr [ %5, %.lr.ph82.preheader ], [ %i.bl, %bb.o ] ; 2 uses
  %i.ax = call ptr @hostlist_shift_dims(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %.not37 = icmp eq ptr %i.ax, null
  br i1 %.not37, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph82
  %i.ay = call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ay, 0
  br i1 %.not.i.i, label %bb.j, label %hostlist_create.exit

bb.j:                                             ; preds = %bb.i
  %i.az = call zeroext i16 @slurmdb_setup_cluster_dims() #21
  br label %hostlist_create.exit

hostlist_create.exit:                             ; preds = %bb.i, %bb.j
  %.0.i.in.i = phi i16 [ %i.ay, %bb.i ], [ %i.az, %bb.j ]
  %.0.i.i = zext i16 %.0.i.in.i to i32
  %i.ba = call fastcc noundef ptr @_hostlist_create(ptr noundef nonnull readonly %i.ax, i32 noundef %.0.i.i)
  %i.bb = load ptr, ptr %1, align 8
  %i.bc = load i32, ptr %2, align 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bd
  store ptr %i.ba, ptr %i.be, align 8
  call void @free(ptr noundef nonnull %i.ax) #21
  %.not3879 = icmp eq ptr %i.aw, null
  br i1 %.not3879, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %hostlist_create.exit, %bb.k
  %i.bf = phi ptr [ %5, %bb.k ], [ %i.aw, %hostlist_create.exit ] ; 2 uses
  %.080 = phi i32 [ %i.bx, %bb.k ], [ 1, %hostlist_create.exit ] ; 2 uses
  %i.bg = load i32, ptr %2, align 4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp slt i32 %.080, %i.bj
  br i1 %i.bk, label %bb.k, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph, %bb.k, %hostlist_create.exit
  %i.bl = phi ptr [ null, %hostlist_create.exit ], [ %i.bf, %.lr.ph ], [ null, %bb.k ]
  %i.bm = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bn = and i64 %i.bm, 536870912
  %.not39 = icmp eq i64 %i.bn, 0
  %.pre94 = load i32, ptr %2, align 4             ; 2 uses
  br i1 %.not39, label %bb.o, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.bo = call ptr @hostlist_shift_dims(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %i.bp = load ptr, ptr %1, align 8
  %i.bq = load i32, ptr %2, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.bv = zext i16 %i.bu to i32
  %i.bw = call range(i32 0, 2) i32 @hostlist_push_host_dims(ptr noundef %i.bt, ptr noundef %i.bo, i32 noundef %i.bv) ; 0 uses
  call void @free(ptr noundef %i.bo) #21
  %i.bx = add nuw nsw i32 %.080, 1
  br i1 %.not38, label %.critedge2, label %.lr.ph, !llvm.loop !50

bb.l:                                             ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.by = load ptr, ptr %1, align 8
  %i.bz = sext i32 %.pre94 to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call zeroext i16 @slurmdb_setup_cluster_dims() #21
  %i.cd = zext i16 %i.cc to i32
  %i.ce = call ptr @hostlist_ranged_string_xmalloc_dims(ptr noundef %i.cb, i32 noundef %i.cd, i32 noundef 1)
  store ptr %i.ce, ptr %i.b, align 8
  %i.cf = call i32 @get_log_level() #21
  %i.cg = icmp sgt i32 %i.cf, 4
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ch = load i32, ptr %2, align 4
  %i.ci = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.10, i32 noundef %i.ch, ptr noundef %i.ci) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @slurm_xfree(ptr noundef nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %.pre = load i32, ptr %2, align 4
  br label %bb.o

bb.o:                                             ; preds = %.critedge2, %bb.n
  %i.cj = phi i32 [ %.pre94, %.critedge2 ], [ %.pre, %bb.n ]
  %i.ck = add nsw i32 %i.cj, 1                    ; 2 uses
  store i32 %i.ck, ptr %2, align 4
  %i.cl = icmp slt i32 %i.ck, %i.av
  br i1 %i.cl, label %.lr.ph82, label %.critedge, !llvm.loop !51

.critedge:                                        ; preds = %.lr.ph82, %bb.o, %_set_span.exit.thread.thread64
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %_set_span.exit.thread54

_set_span.exit.thread54:                          ; preds = %hostlist_count.exit, %hostlist_count.exit.thread, %.critedge
  %.032 = phi i32 [ %.053.i.ph55, %.critedge ], [ -1, %hostlist_count.exit.thread ], [ -1, %hostlist_count.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hostlist_cmp_first(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call fastcc i32 @hostrange_cmp(ptr noundef %i.c, ptr noundef %i.f)
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local void @hostlist_uniq(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #22
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_uniq) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #22
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_uniq) #23
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext nneg i32 %i.e to i64
  tail call void @qsort(ptr noundef %i.j, i64 noundef %i.k, i64 noundef 8, ptr noundef nonnull @_cmp) #21
  %i.l = load i32, ptr %i.d, align 4
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.02028 = phi i32 [ %spec.select, %.lr.ph ], [ 1, %bb.f ] ; 2 uses
  %i.n = tail call fastcc i32 @_attempt_range_join(ptr noundef nonnull %0, i32 noundef %.02028)
  %i.o = lshr i32 %i.n, 31
  %spec.select = add nuw nsw i32 %i.o, %.02028    ; 2 uses
  %i.p = load i32, ptr %i.d, align 4
  %i.q = icmp slt i32 %spec.select, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.029 = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not2530 = icmp eq ptr %.029, null
  br i1 %.not2530, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %._crit_edge, %.lr.ph33
  %.031 = phi ptr [ %.0, %.lr.ph33 ], [ %.029, %._crit_edge ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.031, i64 16
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.031, i64 24
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.031, i64 32
  store i32 -1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %.0 = load ptr, ptr %i.aa, align 8              ; 2 uses
  %.not25 = icmp eq ptr %.0, null
  br i1 %.not25, label %._crit_edge34, label %.lr.ph33, !llvm.loop !53

._crit_edge34:                                    ; preds = %.lr.ph33, %._crit_edge
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not26 = icmp eq i32 %i.ab, 0
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge34
  %i.ac = tail call ptr @__errno_location() #22
  store i32 %i.ab, ptr %i.ac, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_uniq) #23
  unreachable

bb.h:                                             ; preds = %._crit_edge34, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hostset_count(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %hostlist_count.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #21 ; 2 uses
  %.not12.i = icmp eq i32 %i.c, 0
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #22
  store i32 %i.c, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_count) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #21 ; 2 uses
  %.not13.i = icmp eq i32 %i.g, 0
  br i1 %.not13.i, label %hostlist_count.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #22
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_count) #23
  unreachable

hostlist_count.exit:                              ; preds = %bb.a, %bb.d
  %.0.i = phi i32 [ -1, %bb.a ], [ %i.f, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hostset_create(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 3368, ptr noundef nonnull @__func__.hostset_create) #21 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 2 uses
  %.not.i.i = icmp eq i16 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %hostlist_create.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21
  br label %hostlist_create.exit

hostlist_create.exit:                             ; preds = %bb.a, %bb.b
  %.0.i.in.i = phi i16 [ %i.c, %bb.a ], [ %i.d, %bb.b ]
  %.0.i.i = zext i16 %.0.i.in.i to i32
  %i.e = tail call fastcc noundef ptr @_hostlist_create(ptr noundef readonly %0, i32 noundef %.0.i.i) ; 3 uses
  store ptr %i.e, ptr %i.b, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %hostlist_create.exit
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %bb.e

bb.d:                                             ; preds = %hostlist_create.exit
  tail call void @hostlist_uniq(ptr noundef nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.b, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hostset_delete(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i32 @hostlist_delete(ptr noundef %i.a, ptr noundef %1)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @hostset_destroy(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  tail call void @hostlist_destroy(ptr noundef %i.c)
  call void @slurm_xfree(ptr noundef nonnull %i.a) #21
  br label %bb.c
end_hunk_0
