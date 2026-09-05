Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv?download=true
begin_hunk_0_@jvp_contains:bb.a
bb.f:                                             ; preds = %bb.d
  %i.g = and i64 %2, 15
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.8, i32 noundef 1832, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_contains) #19, !inline_history !83
  unreachable

bb.h:                                             ; preds = %bb.f
  %.sroa.21.0.extract.shift.i.i.i148 = lshr i64 %2, 32
  %.sroa.21.0.extract.trunc.i.i.i149 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i148 to i32 ; 5 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.sroa.21.0.extract.trunc.i.i.i149, i32 0)
  %exitcond.not.i521 = icmp slt i32 %.sroa.21.0.extract.trunc.i.i.i149, 1
  br i1 %exitcond.not.i521, label %jvp_object_contains.exit, label %.lr.ph523.preheader

.lr.ph523.preheader:                              ; preds = %bb.h
  %i.i = add nsw i32 %smax.i, -2
  br label %.lr.ph523

jvp_object_size.exit.i.i150:                      ; preds = %.lr.ph523
  %exitcond.not.i = icmp eq i32 %.0.i.i522, %i.i
  br i1 %exitcond.not.i, label %jvp_object_contains.exit, label %.lr.ph523

.lr.ph523:                                        ; preds = %.lr.ph523.preheader, %jvp_object_size.exit.i.i150
  %.0.i.i522 = phi i32 [ %i.j, %jvp_object_size.exit.i.i150 ], [ -1, %.lr.ph523.preheader ] ; 2 uses
  %i.j = add nsw i32 %.0.i.i522, 1                ; 4 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 15
  switch i64 %i.o, label %bb.i [
    i64 1, label %jvp_object_size.exit.i.i150
    i64 5, label %jv_object_iter.exit
  ]

bb.i:                                             ; preds = %.lr.ph523
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

jv_object_iter.exit:                              ; preds = %.lr.ph523
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = and i64 %.fr, 128
  %.not.i137 = icmp eq i64 %i.q, 0
  %.not206345 = icmp eq i32 %i.j, -2
  br i1 %.not206345, label %jvp_object_contains.exit, label %.lr.ph

.lr.ph:                                           ; preds = %jv_object_iter.exit, %jv_object_iter_next.exit
  %.169.i346 = phi i32 [ %i.aq, %jv_object_iter_next.exit ], [ %i.j, %jv_object_iter.exit ] ; 3 uses
  %i.r = icmp ne i32 %.169.i346, -1
  tail call void @llvm.assume(i1 %i.r)
  %or.cond = icmp ult i32 %.169.i346, %.sroa.21.0.extract.trunc.i.i.i149
  br i1 %or.cond, label %jvp_object_ptr.exit.i.i144, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

jvp_object_ptr.exit.i.i144:                       ; preds = %.lr.ph
  %i.s = zext nneg i32 %.169.i346 to i64          ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8 ; 3 uses
  %i.v = and i64 %.sroa.0.0.copyload.i, 15
  %i.w = icmp eq i64 %i.v, 5
  br i1 %i.w, label %bb.l, label %bb.k

bb.k:                                             ; preds = %jvp_object_ptr.exit.i.i144
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, i32 noundef 1991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_key) #19
  unreachable

bb.l:                                             ; preds = %jvp_object_ptr.exit.i.i144
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !15 ; 3 uses
  %i.x = and i64 %.sroa.0.0.copyload.i, 128
  %.not.i.i145 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i145, label %jvp_object_ptr.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load i32, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %.sroa.5.0.copyload.i, align 4, !tbaa !17
  br label %jvp_object_ptr.exit.i.i

jvp_object_ptr.exit.i.i:                          ; preds = %bb.m, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = and i64 %i.ab, 128
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %jvp_object_ptr.exit.i.i
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !17
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %jvp_object_ptr.exit.i.i, %bb.n
  br i1 %.not.i137, label %jv_copy.exit140, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load i32, ptr %1, align 4, !tbaa !17
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit140

jv_copy.exit140:                                  ; preds = %bb.o, %bb.p
  %i.aj = tail call { i64, ptr } @jv_object_get(i64 %.fr, ptr %1, i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0.copyload.i), !inline_history !83 ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = extractvalue { i64, ptr } %i.aj, 1
  %i.am = tail call fastcc i32 @jvp_contains(i64 %i.ak, ptr %i.al, i64 %i.ab, ptr %i.ad, i32 noundef %i.d), !inline_history !83 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  %indvars.iv.next394524 = add nuw nsw i64 %i.s, 1 ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv.next394524 to i32 ; 2 uses
  %.not34.i525 = icmp slt i32 %i.ao, %.sroa.21.0.extract.trunc.i.i.i149
  %or.cond528 = select i1 %i.an, i1 %.not34.i525, i1 false
  br i1 %or.cond528, label %jvp_object_get_slot.exit.i, label %jvp_object_contains.exit

jvp_object_size.exit.i:                           ; preds = %jvp_object_get_slot.exit.i
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv.next394526, 1 ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv.next394 to i32 ; 2 uses
  %.not34.i = icmp slt i32 %i.ap, %.sroa.21.0.extract.trunc.i.i.i149
  br i1 %.not34.i, label %jvp_object_get_slot.exit.i, label %jvp_object_contains.exit

jvp_object_get_slot.exit.i:                       ; preds = %jv_copy.exit140, %jvp_object_size.exit.i
  %i.aq = phi i32 [ %i.ap, %jvp_object_size.exit.i ], [ %i.ao, %jv_copy.exit140 ]
  %indvars.iv.next394526 = phi i64 [ %indvars.iv.next394, %jvp_object_size.exit.i ], [ %indvars.iv.next394524, %jv_copy.exit140 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.next394526
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8
  %i.au = and i64 %i.at, 15
  switch i64 %i.au, label %bb.q [
    i64 1, label %jvp_object_size.exit.i
    i64 5, label %jv_object_iter_next.exit
  ]

bb.q:                                             ; preds = %jvp_object_get_slot.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8, i32 noundef 1985, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_object_iter_next) #19
  unreachable

jv_object_iter_next.exit:                         ; preds = %jvp_object_get_slot.exit.i
  %.not206 = icmp eq i64 %indvars.iv.next394526, 4294967294
  br i1 %.not206, label %jvp_object_contains.exit, label %.lr.ph, !llvm.loop !84

bb.r:                                             ; preds = %bb.c
  %i.av = add nsw i32 %4, 1                       ; 4 uses
  %i.aw = and i64 %2, 128
  %.not.i188 = icmp eq i64 %i.aw, 0               ; 4 uses
  br i1 %.not.i188, label %jv_copy.exit191, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = load i32, ptr %3, align 4, !tbaa !17
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit191

jv_copy.exit191:                                  ; preds = %bb.r, %bb.s
  %i.az = and i64 %2, 15
  %i.ba = icmp eq i64 %i.az, 6
  br i1 %i.ba, label %jv_array_length.exit187, label %bb.t

bb.t:                                             ; preds = %jv_copy.exit191
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_length.exit187:                          ; preds = %jv_copy.exit191
  %.sroa.21.0.extract.shift.i.i185 = lshr i64 %2, 32 ; 3 uses
  %.sroa.21.0.extract.trunc.i.i186 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i185 to i32
  tail call void @jv_free(i64 %2, ptr %3)
  %i.bb = lshr i32 %.sroa.0.0.extract.trunc.i115, 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.be = and i64 %.fr, 128
  %.not.i167 = icmp eq i64 %i.be, 0               ; 2 uses
  %i.bf = and i64 %.fr, 15
  %i.bg = icmp eq i64 %i.bf, 6
  %.sroa.21.0.extract.shift.i.i165 = lshr i64 %.fr, 32 ; 5 uses
  %.sroa.21.0.extract.trunc.i.i166 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i165 to i32 ; 4 uses
  %i.bh = lshr i32 %.sroa.0.0.extract.trunc.i, 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.not52.i240.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i186, 0 ; 3 uses
  br i1 %i.bg, label %jv_array_length.exit187.split.us, label %jv_array_length.exit187.split

jv_array_length.exit187.split.us:                 ; preds = %jv_array_length.exit187
  br i1 %.not.i167, label %.preheader208.us.us, label %.preheader208.us

.preheader208.us.us:                              ; preds = %jv_array_length.exit187.split.us
  br i1 %.not52.i240.us.us, label %.lr.ph242.us.us.preheader, label %jvp_object_contains.exit

.lr.ph242.us.us.preheader:                        ; preds = %.preheader208.us.us
  %i.bk = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bl = zext nneg i32 %i.bb to i64
  %.not55.i224.us.us261.us.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  %.not55.i224.us.us.us.us.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  br label %.lr.ph242.us.us

.lr.ph242.us.us:                                  ; preds = %.lr.ph242.us.us.preheader, %bb.x
  %indvars.iv388 = phi i64 [ 0, %.lr.ph242.us.us.preheader ], [ %indvars.iv.next389, %bb.x ] ; 2 uses
  br i1 %.not.i188, label %jvp_array_offset.exit.i.i178.us.us.us.us, label %bb.u

bb.u:                                             ; preds = %.lr.ph242.us.us
  %i.bm = load i32, ptr %3, align 4, !tbaa !17
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i178.us.us.us.us

jvp_array_offset.exit.i.i178.us.us.us.us:         ; preds = %.lr.ph242.us.us, %bb.u
  %i.bo = add nuw nsw i64 %indvars.iv388, %i.bl   ; 2 uses
  %i.bp = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.bq = trunc nuw i64 %i.bo to i32
  %i.br = icmp sgt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.v, label %.split269.us

bb.v:                                             ; preds = %jvp_array_offset.exit.i.i178.us.us.us.us
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.bo ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %.sroa.019.0.i174.us.us.us.us.fr = freeze i64 %i.bt ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8            ; 8 uses
  %i.bw = and i64 %.sroa.019.0.i174.us.us.us.us.fr, 128
  %.not.i.i179.us.us.us.us = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i179.us.us.us.us, label %jv_copy.exit170.us.us.us.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !17
  br label %jv_copy.exit170.us.us.us.us

jv_copy.exit170.us.us.us.us:                      ; preds = %bb.w, %bb.v
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  tail call void @jv_free(i64 %.fr, ptr %1)
  %i.bz = and i64 %.sroa.019.0.i174.us.us.us.us.fr, 128
  %.not.i151.us.us.us.us = icmp eq i64 %i.bz, 0
  br i1 %.not.i151.us.us.us.us, label %.preheader207.us.us.us.us.us.us, label %jv_array_length.exit.split.us.split.us267.us.us.us

bb.x:                                             ; preds = %.split235.us.us.us.us.us
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next389, %.sroa.21.0.extract.shift.i.i185
  br i1 %exitcond392.not, label %jvp_object_contains.exit, label %.lr.ph242.us.us, !llvm.loop !85

jvp_array_offset.exit.i.i.us.us.us.us.us.us:      ; preds = %jv_array_length.exit.split.us.split.us267.us.us.us, %bb.aa
  %indvars.iv378 = phi i64 [ %indvars.iv.next379, %bb.aa ], [ 0, %jv_array_length.exit.split.us.split.us267.us.us.us ] ; 2 uses
  %i.ca = add nuw nsw i64 %indvars.iv378, %i.bk   ; 2 uses
  %i.cb = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.cc = trunc nuw i64 %i.ca to i32
  %i.cd = icmp sgt i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.y, label %.split.us

bb.y:                                             ; preds = %jvp_array_offset.exit.i.i.us.us.us.us.us.us
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.ca ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 3 uses
  %i.ci = and i64 %i.cf, 128
  %.not.i.i160.us.us.us.us.us.us = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i160.us.us.us.us.us.us, label %jv_copy.exit154.us.us.us.us.us.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !17
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us.us.us.us.us

jv_copy.exit154.us.us.us.us.us.us:                ; preds = %bb.z, %bb.y
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.cl = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.bv, align 4, !tbaa !17
  %i.cn = tail call fastcc i32 @jvp_contains(i64 %i.cf, ptr %i.ch, i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr nonnull %i.bv, i32 noundef range(i32 -2147483647, 10002) %i.av), !inline_history !86 ; 2 uses
  %.not56.i.us.us.us.us.us.us = icmp eq i32 %i.cn, 0
  br i1 %.not56.i.us.us.us.us.us.us, label %bb.aa, label %.split235.us.us.us.us.us

bb.aa:                                            ; preds = %jv_copy.exit154.us.us.us.us.us.us
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next379, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond382.not, label %.split235.us.us.us.us.us.thread, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us, !llvm.loop !87

jv_array_length.exit.split.us.split.us267.us.us.us: ; preds = %jv_copy.exit170.us.us.us.us
  br i1 %.not55.i224.us.us261.us.us.us, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us, label %.split235.us.us.us.us.us.thread

.split235.us.us.us.us.us.thread:                  ; preds = %.preheader207.us.us.us.us.us.us, %jv_array_length.exit.split.us.split.us267.us.us.us, %bb.aa, %bb.ad
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr %i.bv), !inline_history !86
  br label %jvp_object_contains.exit

.split235.us.us.us.us.us:                         ; preds = %jv_copy.exit154.us.us.us.us.us.us, %jv_copy.exit154.us.us.us.us.us.us.us.us
  %.us-phi239.us.us.us.us = phi i32 [ %i.cz, %jv_copy.exit154.us.us.us.us.us.us.us.us ], [ %i.cn, %jv_copy.exit154.us.us.us.us.us.us ] ; 2 uses
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr %i.bv), !inline_history !86
  %5 = icmp sgt i32 %.us-phi239.us.us.us.us, 0
  br i1 %5, label %bb.x, label %jvp_object_contains.exit

.preheader207.us.us.us.us.us.us:                  ; preds = %jv_copy.exit170.us.us.us.us
  br i1 %.not55.i224.us.us.us.us.us.us, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us, label %.split235.us.us.us.us.us.thread

jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us: ; preds = %.preheader207.us.us.us.us.us.us, %bb.ad
  %indvars.iv383 = phi i64 [ %indvars.iv.next384.a, %bb.ad ], [ 0, %.preheader207.us.us.us.us.us.us ] ; 2 uses
  %i.co = add nuw nsw i64 %indvars.iv383, %i.bk   ; 2 uses
  %i.cp = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.cq = trunc nuw i64 %i.co to i32
  %i.cr = icmp sgt i32 %i.cp, %i.cq
  br i1 %i.cr, label %bb.ab, label %.split.us

bb.ab:                                            ; preds = %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.co ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8            ; 3 uses
  %i.cw = and i64 %i.ct, 128
  %.not.i.i160.us.us.us.us.us.us.us.us = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i160.us.us.us.us.us.us.us.us, label %jv_copy.exit154.us.us.us.us.us.us.us.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !17
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us.us.us.us.us.us.us

jv_copy.exit154.us.us.us.us.us.us.us.us:          ; preds = %bb.ac, %bb.ab
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.cz = tail call fastcc i32 @jvp_contains(i64 %i.ct, ptr %i.cv, i64 %.sroa.019.0.i174.us.us.us.us.fr, ptr %i.bv, i32 noundef range(i32 -2147483647, 10002) %i.av), !inline_history !86 ; 2 uses
  %.not56.i.us.us.us.us.us.us.us.us = icmp eq i32 %i.cz, 0
  br i1 %.not56.i.us.us.us.us.us.us.us.us, label %bb.ad, label %.split235.us.us.us.us.us

bb.ad:                                            ; preds = %jv_copy.exit154.us.us.us.us.us.us.us.us
  %indvars.iv.next384.a = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %exitcond387.not.a = icmp eq i64 %indvars.iv.next384.a, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond387.not.a, label %.split235.us.us.us.us.us.thread, label %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us, !llvm.loop !87

.preheader208.us:                                 ; preds = %jv_array_length.exit187.split.us
  br i1 %.not52.i240.us.us, label %.lr.ph242.us.preheader, label %jvp_object_contains.exit

.lr.ph242.us.preheader:                           ; preds = %.preheader208.us
  %i.da = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.db = zext nneg i32 %i.bb to i64
  %.not55.i224.us255.us334 = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  %.not55.i224.us255.us.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i166, 0
  br label %.lr.ph242.us

.lr.ph242.us:                                     ; preds = %.lr.ph242.us.preheader, %bb.aj
  %indvars.iv373 = phi i64 [ 0, %.lr.ph242.us.preheader ], [ %indvars.iv.next374.a, %bb.aj ] ; 2 uses
  br i1 %.not.i188, label %jvp_array_offset.exit.i.i178.us.us320, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph242.us
  %i.dc = load i32, ptr %3, align 4, !tbaa !17
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i178.us.us320

jvp_array_offset.exit.i.i178.us.us320:            ; preds = %.lr.ph242.us, %bb.ae
  %i.de = add nuw nsw i64 %indvars.iv373, %i.db   ; 2 uses
  %i.df = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.dg = trunc nuw i64 %i.de to i32
  %i.dh = icmp sgt i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.af, label %.split269.us

bb.af:                                            ; preds = %jvp_array_offset.exit.i.i178.us.us320
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.de ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8
  %.sroa.019.0.i174.us.us323.fr = freeze i64 %i.dj ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8            ; 8 uses
  %i.dm = and i64 %.sroa.019.0.i174.us.us323.fr, 128
  %.not.i.i179.us.us321 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i179.us.us321, label %jv_copy.exit170.us.us322, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !17
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !17
  br label %jv_copy.exit170.us.us322

jv_copy.exit170.us.us322:                         ; preds = %bb.ag, %bb.af
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  %i.dp = load i32, ptr %1, align 4, !tbaa !17
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %1, align 4, !tbaa !17
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.dr = and i64 %.sroa.019.0.i174.us.us323.fr, 128
  %.not.i151.us.us325 = icmp eq i64 %i.dr, 0
  br i1 %.not.i151.us.us325, label %.preheader207.us252.us.us, label %jv_array_length.exit.split.us257.split.us341

jvp_array_offset.exit.i.i.us.us:                  ; preds = %jv_array_length.exit.split.us257.split.us341, %6
  %indvars.iv = phi i64 [ %indvars.iv.next, %6 ], [ 0, %jv_array_length.exit.split.us257.split.us341 ] ; 2 uses
  %i.ds = load i32, ptr %1, align 4, !tbaa !17
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %1, align 4, !tbaa !17
  %i.du = add nuw nsw i64 %indvars.iv, %i.da      ; 2 uses
  %i.dv = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.dw = trunc nuw i64 %i.du to i32
  %i.dx = icmp sgt i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ah, label %.split.us

bb.ah:                                            ; preds = %jvp_array_offset.exit.i.i.us.us
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.du ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 3 uses
  %i.ec = and i64 %i.dz, 128
  %.not.i.i160.us.us = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i160.us.us, label %jv_copy.exit154.us.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !17
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us

jv_copy.exit154.us.us:                            ; preds = %bb.ai, %bb.ah
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.ef = load i32, ptr %i.dl, align 4, !tbaa !17
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.dl, align 4, !tbaa !17
  %i.eh = tail call fastcc i32 @jvp_contains(i64 %i.dz, ptr %i.eb, i64 %.sroa.019.0.i174.us.us323.fr, ptr nonnull %i.dl, i32 noundef range(i32 -2147483647, 10002) %i.av), !inline_history !86 ; 2 uses
  %.not56.i.us.us = icmp eq i32 %i.eh, 0
  br i1 %.not56.i.us.us, label %6, label %.split235.us250.us

6:                                                ; preds = %jv_copy.exit154.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond.not, label %.split235.us250.us.thread, label %jvp_array_offset.exit.i.i.us.us, !llvm.loop !87

bb.aj:                                            ; preds = %.split235.us250.us
  %indvars.iv.next374.a = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not.a = icmp eq i64 %indvars.iv.next374.a, %.sroa.21.0.extract.shift.i.i185
  br i1 %exitcond377.not.a, label %jvp_object_contains.exit, label %.lr.ph242.us, !llvm.loop !85

jv_array_length.exit.split.us257.split.us341:     ; preds = %jv_copy.exit170.us.us322
  br i1 %.not55.i224.us255.us334, label %jvp_array_offset.exit.i.i.us.us, label %.split235.us250.us.thread

.split235.us250.us.thread:                        ; preds = %.preheader207.us252.us.us, %jv_array_length.exit.split.us257.split.us341, %6, %bb.am
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us323.fr, ptr %i.dl), !inline_history !86
  br label %jvp_object_contains.exit

.split235.us250.us:                               ; preds = %jv_copy.exit154.us.us, %jv_copy.exit154.us.us.us304.us
  %.us-phi312.us = phi i32 [ %i.ev, %jv_copy.exit154.us.us.us304.us ], [ %i.eh, %jv_copy.exit154.us.us ] ; 2 uses
  tail call void @jv_free(i64 %.sroa.019.0.i174.us.us323.fr, ptr %i.dl), !inline_history !86
  %7 = icmp sgt i32 %.us-phi312.us, 0
  br i1 %7, label %bb.aj, label %jvp_object_contains.exit

.preheader207.us252.us.us:                        ; preds = %jv_copy.exit170.us.us322
  br i1 %.not55.i224.us255.us.us, label %jvp_array_offset.exit.i.i.us.us.us302.us, label %.split235.us250.us.thread

jvp_array_offset.exit.i.i.us.us.us302.us:         ; preds = %.preheader207.us252.us.us, %bb.am
  %indvars.iv368 = phi i64 [ %indvars.iv.next369.a, %bb.am ], [ 0, %.preheader207.us252.us.us ] ; 2 uses
  %i.ei = load i32, ptr %1, align 4, !tbaa !17
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %1, align 4, !tbaa !17
  %i.ek = add nuw nsw i64 %indvars.iv368, %i.da   ; 2 uses
  %i.el = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.em = trunc nuw i64 %i.ek to i32
  %i.en = icmp sgt i32 %i.el, %i.em
  br i1 %i.en, label %bb.ak, label %.split.us

bb.ak:                                            ; preds = %jvp_array_offset.exit.i.i.us.us.us302.us
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.ek ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load ptr, ptr %i.eq, align 8            ; 3 uses
  %i.es = and i64 %i.ep, 128
  %.not.i.i160.us.us.us303.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i160.us.us.us303.us, label %jv_copy.exit154.us.us.us304.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.et = load i32, ptr %i.er, align 4, !tbaa !17
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !17
  br label %jv_copy.exit154.us.us.us304.us

jv_copy.exit154.us.us.us304.us:                   ; preds = %bb.al, %bb.ak
  tail call void @jv_free(i64 %.fr, ptr nonnull %1)
  %i.ev = tail call fastcc i32 @jvp_contains(i64 %i.ep, ptr %i.er, i64 %.sroa.019.0.i174.us.us323.fr, ptr %i.dl, i32 noundef range(i32 -2147483647, 10002) %i.av), !inline_history !86 ; 2 uses
  %.not56.i.us.us.us307.us = icmp eq i32 %i.ev, 0
  br i1 %.not56.i.us.us.us307.us, label %bb.am, label %.split235.us250.us

bb.am:                                            ; preds = %jv_copy.exit154.us.us.us304.us
  %indvars.iv.next369.a = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %exitcond372.not.a = icmp eq i64 %indvars.iv.next369.a, %.sroa.21.0.extract.shift.i.i165
  br i1 %exitcond372.not.a, label %.split235.us250.us.thread, label %jvp_array_offset.exit.i.i.us.us.us302.us, !llvm.loop !87

jv_array_length.exit187.split:                    ; preds = %jv_array_length.exit187
  br i1 %.not52.i240.us.us, label %.lr.ph242.split, label %jvp_object_contains.exit

.lr.ph242.split:                                  ; preds = %jv_array_length.exit187.split
  br i1 %.not.i188, label %jvp_array_offset.exit.i.i178, label %bb.an

bb.an:                                            ; preds = %.lr.ph242.split
  %i.ew = load i32, ptr %3, align 4, !tbaa !17
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i178

jvp_array_offset.exit.i.i178:                     ; preds = %.lr.ph242.split, %bb.an
  %i.ey = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.ez = icmp slt i32 %i.bb, %i.ey
  br i1 %i.ez, label %bb.ao, label %.split269.us

.split269.us:                                     ; preds = %jvp_array_offset.exit.i.i178.us.us320, %jvp_array_offset.exit.i.i178.us.us.us.us, %jvp_array_offset.exit.i.i178
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.ao:                                            ; preds = %jvp_array_offset.exit.i.i178
  %i.fa = zext nneg i32 %i.bb to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.fa ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = and i64 %i.fc, 128
  %.not.i.i179 = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i179, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8            ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !17
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  br i1 %.not.i167, label %jv_copy.exit170, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = load i32, ptr %1, align 4, !tbaa !17
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit170

jv_copy.exit170:                                  ; preds = %bb.ar, %bb.aq
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

.split.us:                                        ; preds = %jvp_array_offset.exit.i.i.us.us, %jvp_array_offset.exit.i.i.us.us.us302.us, %jvp_array_offset.exit.i.i.us.us.us.us.us.us, %jvp_array_offset.exit.i.i.us.us.us.us.us.us.us.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.as:                                            ; preds = %bb.c
  %i.fk = and i64 %2, 128
  %.not.i119 = icmp eq i64 %i.fk, 0
  br i1 %.not.i119, label %jv_copy.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fl = load i32, ptr %3, align 4, !tbaa !17
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.as, %bb.at
  %i.fn = and i64 %2, 15
  %i.fo = icmp eq i64 %i.fn, 5
  br i1 %i.fo, label %jv_string_length_bytes.exit, label %bb.au

bb.au:                                            ; preds = %jv_copy.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 1328, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_length_bytes) #19
  unreachable

jv_string_length_bytes.exit:                      ; preds = %jv_copy.exit
  %i.fp = getelementptr i8, ptr %3, i64 8
  %.val.i = load i32, ptr %i.fp, align 4, !tbaa !14
  %i.fq = lshr i32 %.val.i, 1                     ; 2 uses
  tail call void @jv_free(i64 %2, ptr %3)
  %.not114 = icmp eq i32 %i.fq, 0
  br i1 %.not114, label %jvp_object_contains.exit, label %bb.av

bb.av:                                            ; preds = %jv_string_length_bytes.exit
  %i.fr = and i64 %.fr, 15
  %i.fs = icmp eq i64 %i.fr, 5
  br i1 %i.fs, label %jv_string_value.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.8, i32 noundef 1482, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_string_value) #19
  unreachable

jv_string_value.exit:                             ; preds = %bb.av
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fu = and i64 %.fr, 128
  %.not.i120 = icmp eq i64 %i.fu, 0
  br i1 %.not.i120, label %jv_string_value.exit126, label %bb.ax

bb.ax:                                            ; preds = %jv_string_value.exit
  %i.fv = load i32, ptr %1, align 4, !tbaa !17
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %1, align 4, !tbaa !17
  br label %jv_string_value.exit126

jv_string_value.exit126:                          ; preds = %jv_string_value.exit, %bb.ax
  %i.fx = getelementptr i8, ptr %1, i64 8
  %.val.i124 = load i32, ptr %i.fx, align 4, !tbaa !14
  %i.fy = lshr i32 %.val.i124, 1
  tail call void @jv_free(i64 %.fr, ptr %1)
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gb = zext nneg i32 %i.fq to i64
  %i.gc = tail call ptr @_jq_memmem(ptr noundef nonnull %i.ft, i64 noundef %i.fz, ptr noundef nonnull %i.ga, i64 noundef %i.gb) #20
  %i.gd = icmp ne ptr %i.gc, null
  %i.ge = zext i1 %i.gd to i32
  br label %jvp_object_contains.exit

bb.ay:                                            ; preds = %bb.c
  %i.gf = and i64 %.fr, 128
  %.not.i127 = icmp eq i64 %i.gf, 0
  br i1 %.not.i127, label %jv_copy.exit130, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gg = load i32, ptr %1, align 4, !tbaa !17
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit130

jv_copy.exit130:                                  ; preds = %bb.ay, %bb.az
  %i.gi = and i64 %2, 128
  %.not.i131 = icmp eq i64 %i.gi, 0
  br i1 %.not.i131, label %jv_copy.exit134, label %bb.ba

bb.ba:                                            ; preds = %jv_copy.exit130
  %i.gj = load i32, ptr %3, align 4, !tbaa !17
  %i.gk = add nsw i32 %i.gj, 1
  store i32 %i.gk, ptr %3, align 4, !tbaa !17
  br label %jv_copy.exit134

jv_copy.exit134:                                  ; preds = %jv_copy.exit130, %bb.ba
  %i.gl = tail call fastcc i32 @jvp_equal(i64 %.fr, ptr %1, i64 %2, ptr %3, i32 noundef 0)
  br label %jvp_object_contains.exit

jvp_object_contains.exit:                         ; preds = %.split235.us250.us, %bb.aj, %.split235.us.us.us.us.us, %bb.x, %jvp_object_size.exit.i.i150, %jv_copy.exit140, %jv_object_iter_next.exit, %jvp_object_size.exit.i, %bb.h, %jv_copy.exit134, %bb.b, %jv_string_length_bytes.exit, %jv_string_value.exit126, %jv_array_length.exit187.split, %.preheader208.us.us, %.preheader208.us, %jv_object_iter.exit, %.split235.us.us.us.us.us.thread, %.split235.us250.us.thread, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.gl, %jv_copy.exit134 ], [ 1, %jv_string_length_bytes.exit ], [ 1, %jv_array_length.exit187.split ], [ 0, %bb.b ], [ %i.ge, %jv_string_value.exit126 ], [ 1, %.preheader208.us ], [ 1, %jv_object_iter.exit ], [ 0, %.split235.us250.us.thread ], [ 1, %.preheader208.us.us ], [ %i.am, %jvp_object_size.exit.i ], [ 0, %.split235.us.us.us.us.us.thread ], [ 1, %bb.h ], [ %i.am, %jv_copy.exit140 ], [ 1, %bb.x ], [ 1, %jvp_object_size.exit.i.i150 ], [ %i.am, %jv_object_iter_next.exit ], [ %.us-phi239.us.us.us.us, %.split235.us.us.us.us.us ], [ %.us-phi312.us, %.split235.us250.us ], [ 1, %bb.aj ]
  tail call void @jv_free(i64 %.fr, ptr %1)
  tail call void @jv_free(i64 %2, ptr %3)
  ret i32 %.0
}

declare ptr @decNumberToString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @decContextClearStatus(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @decNumberFromString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @decContextDefault(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @decNumberReduce(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @jvp_strtod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @tsd_dtoa_context_get() local_unnamed_addr #4

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal void @jvp_hash_seed_init() #1 {
bb.a:
  %i.a = tail call i32 @arc4random() #20
  store i32 %i.a, ptr @hash_seed, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind
declare i32 @arc4random() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @jvp_object_find_slot(i64 %0, ptr nofree readonly captures(ret: address, provenance) %1, i64 %2, ptr nofree captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %.fr56 = freeze i64 %0                          ; 3 uses
  %.fr = freeze i64 %2                            ; 2 uses
  %i.a = tail call fastcc i32 @jvp_string_hash(i64 %.fr, ptr %3) ; 3 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !14     ; 4 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %jvp_string_equal.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, -1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.fr56, 15
  %i.f = icmp eq i64 %i.e, 7
  br i1 %i.f, label %jvp_object_size.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.8, i32 noundef 1651, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_size) #19
  unreachable

jvp_object_size.exit.i:                           ; preds = %bb.c
  %.sroa.21.0.extract.shift.i.i = lshr i64 %.fr56, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  %i.g = icmp slt i32 %i.b, %.sroa.21.0.extract.trunc.i.i
  br i1 %i.g, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %jvp_object_size.exit.i, %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

.lr.ph:                                           ; preds = %jvp_object_size.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = zext nneg i32 %i.b to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = and i64 %.fr, 15
  %i.l = icmp eq i64 %i.k, 5
  %i.m = getelementptr i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.21.0.extract.shift.i.i.i = lshr i64 %.fr56, 32
  %.sroa.21.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us.split.us, label %.lr.ph.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph, %jvp_object_next_slot.exit.us.us
  %.01426.us.us = phi ptr [ %i.ah, %jvp_object_next_slot.exit.us.us ], [ %i.j, %.lr.ph ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01426.us.us, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %i.r = icmp eq i32 %i.q, %i.a
  br i1 %i.r, label %bb.f, label %jvp_string_equal.exit.thread.us.us

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %.01426.us.us, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01426.us.us, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 15
  %i.x = icmp eq i64 %i.w, 5
  br i1 %i.x, label %jvp_string_ptr.exit19.i.us.us, label %.split.us

jvp_string_ptr.exit19.i.us.us:                    ; preds = %bb.f
  %.val18.i.us.us = load i32, ptr %i.m, align 4, !tbaa !14
  %i.y = lshr i32 %.val18.i.us.us, 1              ; 2 uses
  %i.z = getelementptr i8, ptr %i.t, i64 8
  %.val17.i.us.us = load i32, ptr %i.z, align 4, !tbaa !14
  %i.aa = lshr i32 %.val17.i.us.us, 1
  %.not.i.us.us = icmp eq i32 %i.y, %i.aa
  br i1 %.not.i.us.us, label %jvp_string_equal.exit.us.us, label %jvp_string_equal.exit.thread.us.us

jvp_string_equal.exit.us.us:                      ; preds = %jvp_string_ptr.exit19.i.us.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = zext nneg i32 %i.y to i64
  %bcmp.i.us.us = tail call i32 @bcmp(ptr nonnull readonly %i.n, ptr nonnull readonly %i.ab, i64 %i.ac)
  %.not20.us.us = icmp eq i32 %bcmp.i.us.us, 0
  br i1 %.not20.us.us, label %jvp_string_equal.exit._crit_edge, label %jvp_string_equal.exit.thread.us.us

jvp_string_equal.exit.thread.us.us:               ; preds = %jvp_string_equal.exit.us.us, %jvp_string_ptr.exit19.i.us.us, %.lr.ph.split.us.split.us
  %.014.val.us.us = load i32, ptr %.01426.us.us, align 8, !tbaa !40 ; 4 uses
  %i.ad = icmp eq i32 %.014.val.us.us, -1
  br i1 %i.ad, label %jvp_string_equal.exit._crit_edge, label %bb.g

bb.g:                                             ; preds = %jvp_string_equal.exit.thread.us.us
  %i.ae = icmp sgt i32 %.014.val.us.us, -1
  %i.af = icmp slt i32 %.014.val.us.us, %.sroa.21.0.extract.trunc.i.i.i
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %jvp_object_next_slot.exit.us.us, label %.split29.us

jvp_object_next_slot.exit.us.us:                  ; preds = %bb.g
  %i.ag = zext nneg i32 %.014.val.us.us to i64
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ag
  br label %.lr.ph.split.us.split.us, !llvm.loop !88

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = icmp eq i32 %i.aj, %i.a
  br i1 %i.ak, label %.split.us44, label %jvp_string_equal.exit.thread.us37

jvp_string_equal.exit.thread.us37:                ; preds = %.lr.ph.split, %jvp_object_next_slot.exit.us41
  %.01426.us3671 = phi ptr [ %i.ap, %jvp_object_next_slot.exit.us41 ], [ %i.j, %.lr.ph.split ]
  %.014.val.us38 = load i32, ptr %.01426.us3671, align 8, !tbaa !40 ; 4 uses
  %i.al = icmp eq i32 %.014.val.us38, -1
  br i1 %i.al, label %jvp_string_equal.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %jvp_string_equal.exit.thread.us37
  %i.am = icmp sgt i32 %.014.val.us38, -1
  %i.an = icmp slt i32 %.014.val.us38, %.sroa.21.0.extract.trunc.i.i.i
  %or.cond53 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond53, label %jvp_object_next_slot.exit.us41, label %.split29.us

jvp_object_next_slot.exit.us41:                   ; preds = %bb.h
  %i.ao = zext nneg i32 %.014.val.us38 to i64
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !41
  %i.as = icmp eq i32 %i.ar, %i.a
  br i1 %i.as, label %.split.us44, label %jvp_string_equal.exit.thread.us37, !llvm.loop !88

.split.us44:                                      ; preds = %jvp_object_next_slot.exit.us41, %.lr.ph.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.8, i32 noundef 1300, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_string_equal) #19
  unreachable

.split.us:                                        ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, i32 noundef 1301, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_string_equal) #19
  unreachable

.split29.us:                                      ; preds = %bb.h, %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.8, i32 noundef 1664, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_get_slot) #19
  unreachable

jvp_string_equal.exit._crit_edge:                 ; preds = %jvp_string_equal.exit.thread.us37, %jvp_string_equal.exit.thread.us.us, %jvp_string_equal.exit.us.us, %bb.a
  %.014.lcssa = phi ptr [ null, %bb.a ], [ %.01426.us.us, %jvp_string_equal.exit.us.us ], [ null, %jvp_string_equal.exit.thread.us.us ], [ null, %jvp_string_equal.exit.thread.us37 ]
  ret ptr %.014.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, ptr } @jvp_object_unshare(i64 %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, i32 noundef 1730, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_unshare) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val79 = load i32, ptr %1, align 4, !tbaa !17  ; 2 uses
  %i.c = icmp sgt i32 %.val79, 0
  br i1 %i.c, label %jvp_refcnt_unshared.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.8, i32 noundef 73, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_refcnt_unshared) #19
  unreachable

jvp_refcnt_unshared.exit:                         ; preds = %bb.c
  %.not = icmp eq i32 %.val79, 1
  br i1 %.not, label %bb.m, label %jvp_object_size.exit

jvp_object_size.exit:                             ; preds = %jvp_refcnt_unshared.exit
end_hunk_0
begin_hunk_1_@jvp_object_unshare:bb.a
bb.i:                                             ; preds = %jvp_object_get_slot.exit92
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.ar = and i64 %i.am, 128
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !17
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.i, %bb.j
  store i64 %i.am, ptr %i.ap, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.aq, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = and i64 %i.aw, 128
  %.not.i95 = icmp eq i64 %i.az, 0
  br i1 %.not.i95, label %jv_copy.exit98, label %bb.k

bb.k:                                             ; preds = %jv_copy.exit
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !17
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !17
  br label %jv_copy.exit98

jv_copy.exit98:                                   ; preds = %jv_copy.exit, %bb.k
  store i64 %i.aw, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !15
  br label %jvp_object_size.exit83

jvp_object_size.exit83:                           ; preds = %jv_copy.exit98, %jvp_object_get_slot.exit92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.21.0.extract.shift.i
  br i1 %exitcond.not, label %jvp_object_size.exit87, label %jvp_object_get_slot.exit92, !llvm.loop !89

bb.l:                                             ; preds = %jvp_refcnt_unshared.exit88
  tail call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.8, i32 noundef 1751, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_object_unshare) #19
  unreachable

bb.m:                                             ; preds = %jvp_refcnt_unshared.exit, %jvp_refcnt_unshared.exit88
  %.pn102 = phi i64 [ %.sroa.0.0.insert.insert.i, %jvp_refcnt_unshared.exit88 ], [ %0, %jvp_refcnt_unshared.exit ]
  %.pn100 = phi ptr [ %i.m, %jvp_refcnt_unshared.exit88 ], [ %1, %jvp_refcnt_unshared.exit ]
  %.pn = insertvalue { i64, ptr } poison, i64 %.pn102, 0
  %.fca.1.insert.merged = insertvalue { i64, ptr } %.pn, ptr %.pn100, 1
  ret { i64, ptr } %.fca.1.insert.merged
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!"jv_refcnt", !11, i64 0}
!17 = !{!16, !11, i64 0}
!18 = !{!"short", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{i64 0, i64 1, !15, i64 1, i64 1, !15, i64 2, i64 2, !19, i64 4, i64 4, !14, i64 8, i64 8, !15}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"double", !10, i64 0}
!23 = !{!"any pointer", !10, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = !{!"", !11, i64 0, !11, i64 4, !10, i64 8, !10, i64 10}
!26 = !{!"", !16, i64 0, !22, i64 8, !24, i64 16, !25, i64 24}
!27 = !{!26, !24, i64 16}
!28 = !{!"p1 _ZTS8_IO_FILE", !23, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!25, !10, i64 8}
!31 = !{!25, !11, i64 0}
!32 = !{!26, !22, i64 8}
!33 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !10, i64 24}
!34 = !{!33, !11, i64 0}
!35 = !{ptr @jv_string, ptr @jv_string_sized}
!36 = !{ptr @jv_string}
!37 = !{ptr @jv_string_sized}
!38 = !{!"", !10, i64 0, !10, i64 1, !18, i64 2, !11, i64 4, !10, i64 8}
!39 = !{!"object_slot", !11, i64 0, !11, i64 4, !38, i64 8, !38, i64 24}
!40 = !{!39, !11, i64 0}
!41 = !{!39, !11, i64 4}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = !{!33, !11, i64 20}
!45 = !{!26, !10, i64 32}
!46 = !{!26, !11, i64 24}
!47 = !{!33, !11, i64 4}
!48 = !{!33, !11, i64 8}
!49 = !{!33, !11, i64 16}
!50 = !{!"", !25, i64 0, !10, i64 12}
!51 = !{!50, !10, i64 8}
!52 = distinct !{!52, !57}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !57}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21, !62}
!61 = distinct !{!61, !21}
!62 = !{!"llvm.loop.peeled.count", i32 1}
!63 = distinct !{!63, !21}
!64 = !{ptr @jvp_string_copy_replace_bad, ptr @jv_string, ptr @jv_string_sized}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = distinct !{!68, !21}
!69 = distinct !{!69, !21}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{null}
!82 = distinct !{null}
!83 = distinct !{null}
!84 = distinct !{!84, !21}
!85 = distinct !{!85, !21}
!86 = distinct !{null}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = distinct !{!89, !21}
!90 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 1, !15, i64 9, i64 1, !15, i64 10, i64 2, !19, i64 12, i64 4, !14, i64 16, i64 8, !15, i64 24, i64 1, !15, i64 25, i64 1, !15, i64 26, i64 2, !19, i64 28, i64 4, !14, i64 32, i64 8, !15}
end_hunk_1
