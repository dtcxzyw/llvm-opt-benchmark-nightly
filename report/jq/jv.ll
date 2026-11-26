Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv?download=true
inline.NumInlined: 352
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@jv_string:bb.a
  store i32 %i.b, ptr %i.i, align 4, !tbaa !14
  %i.j = shl i32 %i.b, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.j, ptr %i.k, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull readonly align 1 %0, i64 %i.f, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.m, align 1, !tbaa !15
  %i.n = insertvalue { i64, ptr } { i64 133, ptr poison }, ptr %i.h, 1
  br label %jv_string_sized.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call fastcc { i64, ptr } @jvp_string_copy_replace_bad(ptr noundef nonnull %0, i32 noundef %i.b), !inline_history !37
  br label %jv_string_sized.exit

jv_string_sized.exit:                             ; preds = %jvp_string_new.exit, %bb.b
  %.fca.1.insert.i.merged = phi { i64, ptr } [ %i.n, %jvp_string_new.exit ], [ %i.o, %bb.b ]
  ret { i64, ptr } %.fca.1.insert.i.merged
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_append(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 128
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %jv_copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !17
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.a, %bb.b
  %i.d = and i64 %0, 15
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %jv_array_length.exit, label %bb.c

bb.c:                                             ; preds = %jv_copy.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_length.exit:                             ; preds = %jv_copy.exit
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  tail call void @jv_free(i64 %0, ptr %1)
  %i.f = tail call { i64, ptr } @jv_array_set(i64 %0, ptr %1, i32 noundef %.sroa.21.0.extract.trunc.i.i, i64 %2, ptr %3)
  ret { i64, ptr } %i.f
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_concat(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %.sroa.037.sroa.6.0.extract.shift = lshr i64 %0, 8 ; 2 uses
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 1038, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_concat) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %2, 15
  %i.d = icmp eq i64 %i.c, 6
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8, i32 noundef 1039, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_concat) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = and i64 %2, 128
  %.not.i = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %jv_array_length.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %3, align 4, !tbaa !17
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %3, align 4, !tbaa !17
  br label %jv_array_length.exit

jv_array_length.exit:                             ; preds = %bb.f, %bb.e
  %.sroa.21.0.extract.shift.i.i = lshr i64 %2, 32 ; 2 uses
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32
  tail call void @jv_free(i64 %2, ptr %3)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not6488 = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i, 0
  br i1 %.not6488, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %jv_array_length.exit
  %i.j = lshr i64 %2, 16
  %i.k = and i64 %i.j, 65535
  br label %.lr.ph

.lr.ph:                                           ; preds = %jv_array_append.exit, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %jv_array_append.exit ] ; 2 uses
  %.sroa.037.sroa.6.sroa.0.192 = phi i64 [ %.sroa.037.sroa.6.0.extract.shift, %.lr.ph.preheader ], [ %.sroa.037.sroa.6.0.extract.shift52, %jv_array_append.exit ] ; 2 uses
  %.sroa.037.sroa.0.191.in = phi i64 [ %0, %.lr.ph.preheader ], [ %i.ae, %jv_array_append.exit ] ; 3 uses
  %.sroa.6.190 = phi ptr [ %1, %.lr.ph.preheader ], [ %i.af, %jv_array_append.exit ] ; 4 uses
  br i1 %.not.i, label %jvp_array_offset.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.l = load i32, ptr %3, align 4, !tbaa !17
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i

jvp_array_offset.exit.i.i:                        ; preds = %.lr.ph, %bb.g
  %i.n = add nuw nsw i64 %indvars.iv, %i.k        ; 2 uses
  %i.o = load i32, ptr %i.h, align 4, !tbaa !14
  %i.p = trunc nuw i64 %i.n to i32
  %i.q = icmp sgt i32 %i.o, %i.p
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %jvp_array_offset.exit.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.i:                                             ; preds = %jvp_array_offset.exit.i.i
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = and i64 %i.s, 128
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %i.u, align 4, !tbaa !17
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  %.sroa.037.sroa.6.0.insert.shift = shl nuw i64 %.sroa.037.sroa.6.sroa.0.192, 8
  %.sroa.037.sroa.0.0.insert.ext = and i64 %.sroa.037.sroa.0.191.in, 255
  %.sroa.037.sroa.0.0.insert.insert = or disjoint i64 %.sroa.037.sroa.6.0.insert.shift, %.sroa.037.sroa.0.0.insert.ext ; 2 uses
  %i.y = and i64 %.sroa.037.sroa.0.191.in, 128
  %.not.i.i72 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i72, label %jv_copy.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i32, ptr %.sroa.6.190, align 4, !tbaa !17
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %.sroa.6.190, align 4, !tbaa !17
  br label %jv_copy.exit.i

jv_copy.exit.i:                                   ; preds = %bb.l, %bb.k
  %i.ab = and i64 %.sroa.037.sroa.0.191.in, 15
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %jv_array_append.exit, label %bb.m

bb.m:                                             ; preds = %jv_copy.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_append.exit:                             ; preds = %jv_copy.exit.i
  %.sroa.21.0.extract.shift.i.i.i73 = lshr i64 %.sroa.037.sroa.6.sroa.0.192, 24
  %.sroa.21.0.extract.trunc.i.i.i74 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i73 to i32
  tail call void @jv_free(i64 %.sroa.037.sroa.0.0.insert.insert, ptr %.sroa.6.190)
  %i.ad = tail call { i64, ptr } @jv_array_set(i64 %.sroa.037.sroa.0.0.insert.insert, ptr %.sroa.6.190, i32 noundef %.sroa.21.0.extract.trunc.i.i.i74, i64 %i.s, ptr %i.u) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0      ; 4 uses
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  %.sroa.037.sroa.6.0.extract.shift52 = lshr i64 %i.ae, 8 ; 2 uses
  %i.ag = and i64 %i.ae, 15
  %.not79 = icmp eq i64 %i.ag, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.sroa.21.0.extract.shift.i.i
  %or.cond = select i1 %.not79, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %jv_array_append.exit, %jv_array_length.exit
  %.sroa.6.2 = phi ptr [ %1, %jv_array_length.exit ], [ %i.af, %jv_array_append.exit ]
  %.sroa.037.sroa.0.2 = phi i64 [ %0, %jv_array_length.exit ], [ %i.ae, %jv_array_append.exit ]
  %.sroa.037.sroa.6.sroa.0.2.in = phi i64 [ %.sroa.037.sroa.6.0.extract.shift, %jv_array_length.exit ], [ %.sroa.037.sroa.6.0.extract.shift52, %jv_array_append.exit ]
  tail call void @jv_free(i64 %2, ptr %3)
  %.sroa.037.sroa.6.0.insert.shift55 = shl nuw i64 %.sroa.037.sroa.6.sroa.0.2.in, 8
  %.sroa.037.sroa.0.0.insert.ext45 = and i64 %.sroa.037.sroa.0.2, 255
  %.sroa.037.sroa.0.0.insert.insert47 = or disjoint i64 %.sroa.037.sroa.6.0.insert.shift55, %.sroa.037.sroa.0.0.insert.ext45
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.037.sroa.0.0.insert.insert47, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.6.2, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_slice(i64 %0, ptr %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 15
  %i.b = icmp eq i64 %i.a, 6
  br i1 %i.b, label %jvp_array_length.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef 1051, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_slice) #19
  unreachable

jvp_array_length.exit.i:                          ; preds = %bb.a
  %i.c = trunc i64 %0 to i32
  %i.d = lshr i32 %i.c, 16                        ; 3 uses
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32 ; 7 uses
  %i.e = icmp slt i32 %2, 0
  %i.f = select i1 %i.e, i32 %.sroa.21.0.extract.trunc.i.i, i32 0
  %spec.select.i = add nsw i32 %i.f, %2           ; 3 uses
  %i.g = icmp slt i32 %3, 0
  %i.h = select i1 %i.g, i32 %.sroa.21.0.extract.trunc.i.i, i32 0
  %.099.i = add nsw i32 %i.h, %3                  ; 2 uses
  %i.i = icmp slt i32 %spec.select.i, 0
  %i.j = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 0) ; 2 uses
  %i.k = icmp sgt i32 %i.j, %.sroa.21.0.extract.trunc.i.i
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.sroa.21.0.extract.trunc.i.i) ; 2 uses
  %i.m = or i1 %i.i, %i.k
  %.1101.i = select i1 %i.m, i32 %i.l, i32 %spec.select.i ; 7 uses
  %i.n = icmp sgt i32 %.099.i, %.sroa.21.0.extract.trunc.i.i
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.099.i, i32 %.sroa.21.0.extract.trunc.i.i)
  %i.o = select i1 %i.n, i32 %.1101.i, i32 %i.l   ; 2 uses
  %.2.i = tail call i32 @llvm.smax.i32(i32 %.1.i, i32 %i.o) ; 5 uses
  %i.p = icmp sgt i32 %.1101.i, -1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %jvp_array_length.exit.i
  %.not.i = icmp sgt i32 %.1101.i, %.2.i
  %.not85.i = icmp sgt i32 %i.o, %.sroa.21.0.extract.trunc.i.i
  %or.cond.i = or i1 %.not85.i, %.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %jvp_array_length.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.8, i32 noundef 957, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_slice) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %.1101.i, %.2.i
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @jv_free(i64 %0, ptr %1)
  %i.r = tail call ptr @jv_mem_alloc(i64 noundef 272) #20 ; 4 uses
  store i32 1, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 16, ptr %i.t, align 8, !tbaa !14
  br label %jvp_array_slice.exit

bb.g:                                             ; preds = %bb.e
  %i.u = add nuw nsw i32 %.1101.i, %i.d           ; 2 uses
  %i.v = icmp samesign ugt i32 %i.u, 65535
  %i.w = sub nuw nsw i32 %.2.i, %.1101.i          ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  br i1 %i.v, label %.lr.ph.i, label %bb.n

.lr.ph.i:                                         ; preds = %bb.g
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = add nuw nsw i64 %i.y, 16
  %i.aa = tail call ptr @jv_mem_alloc(i64 noundef %i.z) #20 ; 5 uses
  store i32 1, ptr %i.aa, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 0, ptr %i.ab, align 4, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.w, ptr %i.ac, align 8, !tbaa !14
  %i.ad = and i64 %0, 128
  %.not.i.i = icmp eq i64 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = zext nneg i32 %.1101.i to i64           ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %4 = zext nneg i32 %i.d to i64
  %5 = ashr i64 %0, 32
  br label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %6 = ashr i64 %0, 32
  %7 = zext nneg i32 %i.d to i64
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %jv_array_append.exit.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv120.i = phi i64 [ %i.ag, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next121.i, %jv_array_append.exit.us.i ] ; 3 uses
  %.sroa.6.0109.us.i = phi ptr [ %i.aa, %.lr.ph.split.us.preheader.i ], [ %.sroa.6.0.us.i, %jv_array_append.exit.us.i ] ; 4 uses
  %.sroa.080.0108.us.i = phi i64 [ 134, %.lr.ph.split.us.preheader.i ], [ %i.az, %jv_array_append.exit.us.i ] ; 5 uses
  %i.ah = icmp slt i64 %indvars.iv120.i, %6
  br i1 %i.ah, label %jvp_array_offset.exit.i.i.us.i, label %jv_array_get.exit.us.i

jvp_array_offset.exit.i.i.us.i:                   ; preds = %.lr.ph.split.us.i
  %i.ai = add nuw nsw i64 %indvars.iv120.i, %7    ; 2 uses
  %i.aj = load i32, ptr %i.ae, align 4, !tbaa !14
  %i.ak = trunc nuw i64 %i.ai to i32
  %i.al = icmp sgt i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %jvp_array_offset.exit.i.i.us.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ai ; 2 uses
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = and i64 %i.an, 128
  %.not.i.i.us.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.us.i, label %jv_array_get.exit.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !17
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !17
  br label %jv_array_get.exit.us.i

jv_array_get.exit.us.i:                           ; preds = %bb.i, %bb.h, %.lr.ph.split.us.i
  %.sroa.019.0.i.us.i = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.an, %bb.h ], [ %i.an, %bb.i ]
  %.sroa.3.0.i.us.i = phi ptr [ null, %.lr.ph.split.us.i ], [ %i.ap, %bb.h ], [ %i.ap, %bb.i ]
  tail call void @jv_free(i64 %0, ptr %1)
  %i.at = and i64 %.sroa.080.0108.us.i, 128
  %.not.i.i88.us.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i88.us.i, label %jv_copy.exit.i.us.i, label %bb.j

bb.j:                                             ; preds = %jv_array_get.exit.us.i
  %i.au = load i32, ptr %.sroa.6.0109.us.i, align 4, !tbaa !17
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %.sroa.6.0109.us.i, align 4, !tbaa !17
  br label %jv_copy.exit.i.us.i

jv_copy.exit.i.us.i:                              ; preds = %bb.j, %jv_array_get.exit.us.i
  %i.aw = and i64 %.sroa.080.0108.us.i, 15
  %i.ax = icmp eq i64 %i.aw, 6
  br i1 %i.ax, label %jv_array_append.exit.us.i, label %.split112.us.i

jv_array_append.exit.us.i:                        ; preds = %jv_copy.exit.i.us.i
  %.sroa.21.0.extract.shift.i.i.i89.us.i = lshr i64 %.sroa.080.0108.us.i, 32
  %.sroa.21.0.extract.trunc.i.i.i90.us.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i89.us.i to i32
  tail call void @jv_free(i64 %.sroa.080.0108.us.i, ptr %.sroa.6.0109.us.i)
  %i.ay = tail call { i64, ptr } @jv_array_set(i64 %.sroa.080.0108.us.i, ptr %.sroa.6.0109.us.i, i32 noundef %.sroa.21.0.extract.trunc.i.i.i90.us.i, i64 %.sroa.019.0.i.us.i, ptr %.sroa.3.0.i.us.i) ; 2 uses
  %i.az = extractvalue { i64, ptr } %i.ay, 0      ; 2 uses
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %.sroa.6.0.us.i = extractvalue { i64, ptr } %i.ay, 1 ; 2 uses
  %i.ba = trunc nuw i64 %indvars.iv.next121.i to i32
  %i.bb = icmp sgt i32 %.2.i, %i.ba
  br i1 %i.bb, label %.lr.ph.split.us.i, label %._crit_edge.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %jv_array_append.exit.i, %jv_array_append.exit.us.i
  %.sroa.080.0.lcssa.i = phi i64 [ %i.az, %jv_array_append.exit.us.i ], [ %i.bw, %jv_array_append.exit.i ]
  %.sroa.6.0.lcssa.i = phi ptr [ %.sroa.6.0.us.i, %jv_array_append.exit.us.i ], [ %.sroa.6.0.i, %jv_array_append.exit.i ]
  tail call void @jv_free(i64 %0, ptr %1)
  br label %jvp_array_slice.exit

.lr.ph.split.i:                                   ; preds = %jv_array_append.exit.i, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ %i.ag, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %jv_array_append.exit.i ] ; 3 uses
  %.sroa.6.0109.i = phi ptr [ %i.aa, %.lr.ph.split.preheader.i ], [ %.sroa.6.0.i, %jv_array_append.exit.i ] ; 4 uses
  %.sroa.080.0108.i = phi i64 [ 134, %.lr.ph.split.preheader.i ], [ %i.bw, %jv_array_append.exit.i ] ; 5 uses
  %i.bc = load i32, ptr %1, align 4, !tbaa !17
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %1, align 4, !tbaa !17
  %i.be = icmp slt i64 %indvars.iv.i, %5
  br i1 %i.be, label %jvp_array_offset.exit.i.i.i, label %jv_array_get.exit.i

jvp_array_offset.exit.i.i.i:                      ; preds = %.lr.ph.split.i
  %i.bf = add nuw nsw i64 %indvars.iv.i, %4       ; 2 uses
  %i.bg = load i32, ptr %i.ae, align 4, !tbaa !14
  %i.bh = trunc nuw i64 %i.bf to i32
  %i.bi = icmp sgt i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.k, label %.split.us.i

.split.us.i:                                      ; preds = %jvp_array_offset.exit.i.i.i, %jvp_array_offset.exit.i.i.us.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef 859, ptr noundef nonnull @__PRETTY_FUNCTION__.jvp_array_read) #19
  unreachable

bb.k:                                             ; preds = %jvp_array_offset.exit.i.i.i
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.bf ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 4 uses
  %i.bn = and i64 %i.bk, 128
  %.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i, label %jv_array_get.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !17
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !17
  br label %jv_array_get.exit.i

jv_array_get.exit.i:                              ; preds = %bb.l, %bb.k, %.lr.ph.split.i
  %.sroa.019.0.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.bk, %bb.k ], [ %i.bk, %bb.l ]
  %.sroa.3.0.i.i = phi ptr [ null, %.lr.ph.split.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  tail call void @jv_free(i64 %0, ptr nonnull %1)
  %i.bq = and i64 %.sroa.080.0108.i, 128
  %.not.i.i88.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i88.i, label %jv_copy.exit.i.i, label %bb.m

bb.m:                                             ; preds = %jv_array_get.exit.i
  %i.br = load i32, ptr %.sroa.6.0109.i, align 4, !tbaa !17
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %.sroa.6.0109.i, align 4, !tbaa !17
  br label %jv_copy.exit.i.i

jv_copy.exit.i.i:                                 ; preds = %bb.m, %jv_array_get.exit.i
  %i.bt = and i64 %.sroa.080.0108.i, 15
  %i.bu = icmp eq i64 %i.bt, 6
  br i1 %i.bu, label %jv_array_append.exit.i, label %.split112.us.i

.split112.us.i:                                   ; preds = %jv_copy.exit.i.i, %jv_copy.exit.i.us.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_append.exit.i:                           ; preds = %jv_copy.exit.i.i
  %.sroa.21.0.extract.shift.i.i.i89.i = lshr i64 %.sroa.080.0108.i, 32
  %.sroa.21.0.extract.trunc.i.i.i90.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i.i89.i to i32
  tail call void @jv_free(i64 %.sroa.080.0108.i, ptr %.sroa.6.0109.i)
  %i.bv = tail call { i64, ptr } @jv_array_set(i64 %.sroa.080.0108.i, ptr %.sroa.6.0109.i, i32 noundef %.sroa.21.0.extract.trunc.i.i.i90.i, i64 %.sroa.019.0.i.i, ptr %.sroa.3.0.i.i) ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bv, 0      ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.sroa.6.0.i = extractvalue { i64, ptr } %i.bv, 1 ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv.next.i to i32
  %i.by = icmp sgt i32 %.2.i, %i.bx
  br i1 %i.by, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !59

bb.n:                                             ; preds = %bb.g
  %.sroa.08.sroa.10.0.insert.shift77.i = shl nuw nsw i64 %i.x, 32
  %i.bz = shl nuw i32 %i.u, 16
  %.sroa.08.sroa.747.0.insert.shift61.i = zext i32 %i.bz to i64
  %.sroa.08.sroa.747.0.insert.insert63.i = or disjoint i64 %.sroa.08.sroa.10.0.insert.shift77.i, %.sroa.08.sroa.747.0.insert.shift61.i
  %i.ca = and i64 %0, 65526
  %.sroa.08.sroa.0.0.insert.insert30.i = or disjoint i64 %.sroa.08.sroa.747.0.insert.insert63.i, %i.ca
  br label %jvp_array_slice.exit

jvp_array_slice.exit:                             ; preds = %bb.f, %._crit_edge.i, %bb.n
  %.sroa.080.1.i = phi i64 [ 134, %bb.f ], [ %.sroa.080.0.lcssa.i, %._crit_edge.i ], [ %.sroa.08.sroa.0.0.insert.insert30.i, %bb.n ]
  %.sroa.6.1.i = phi ptr [ %i.r, %bb.f ], [ %.sroa.6.0.lcssa.i, %._crit_edge.i ], [ %1, %bb.n ]
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %.sroa.080.1.i, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %.sroa.6.1.i, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define dso_local { i64, ptr } @jv_array_indexes(i64 %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @jv_mem_alloc(i64 noundef 272) #20 ; 5 uses
  store i32 1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 16, ptr %i.c, align 8, !tbaa !14
  %i.d = and i64 %0, 128
  %.not.i = icmp eq i64 %i.d, 0                   ; 3 uses
  br i1 %.not.i, label %jv_copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !17
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %1, align 4, !tbaa !17
  br label %jv_copy.exit

jv_copy.exit:                                     ; preds = %bb.a, %bb.b
  %i.g = and i64 %0, 15
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %jv_array_length.exit, label %bb.c

bb.c:                                             ; preds = %jv_copy.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, i32 noundef 991, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_array_length) #19
  unreachable

jv_array_length.exit:                             ; preds = %jv_copy.exit
  %.sroa.21.0.extract.shift.i.i = lshr i64 %0, 32 ; 2 uses
  %.sroa.21.0.extract.trunc.i.i = trunc nuw i64 %.sroa.21.0.extract.shift.i.i to i32 ; 2 uses
  tail call void @jv_free(i64 %0, ptr %1)
  %.not72150 = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i, 0
  br i1 %.not72150, label %.lr.ph154, label %.thread123

.lr.ph154:                                        ; preds = %jv_array_length.exit
  %i.i = and i64 %2, 128
  %.not.i73 = icmp eq i64 %i.i, 0                 ; 3 uses
  %i.j = and i64 %2, 15
  %i.k = icmp eq i64 %i.j, 6
  %.sroa.21.0.extract.shift.i.i77 = lshr i64 %2, 32 ; 3 uses
  %i.l = trunc i64 %2 to i32
  %i.m = lshr i32 %i.l, 16                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.k, label %.lr.ph154.split.us.preheader, label %.lr.ph154.split

.lr.ph154.split.us.preheader:                     ; preds = %.lr.ph154
  %.sroa.21.0.extract.trunc.i.i78 = trunc nuw i64 %.sroa.21.0.extract.shift.i.i77 to i32 ; 2 uses
  %i.r = lshr i64 %0, 16
  %i.s = zext nneg i32 %i.m to i64                ; 2 uses
  %i.t = and i64 %i.r, 65535                      ; 2 uses
  %.not70.not144.us187 = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i78, 0
  %.not70.not144.us = icmp sgt i32 %.sroa.21.0.extract.trunc.i.i78, 0
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %exitcond.peel.not = icmp eq i64 %.sroa.21.0.extract.shift.i.i77, 1
  br label %.lr.ph154.split.us

.lr.ph154.split.us:                               ; preds = %.lr.ph154.split.us.preheader, %.loopexit.us.thread
  %indvars.iv181 = phi i64 [ 0, %.lr.ph154.split.us.preheader ], [ %indvars.iv.next182, %.loopexit.us.thread ] ; 4 uses
  %.sroa.7.0153.us = phi ptr [ %i.a, %.lr.ph154.split.us.preheader ], [ %.sroa.7.1.us, %.loopexit.us.thread ] ; 8 uses
  %.sroa.042.0152.us = phi i64 [ 134, %.lr.ph154.split.us.preheader ], [ %.sroa.042.1.us, %.loopexit.us.thread ] ; 9 uses
  br i1 %.not.i73, label %jv_copy.exit76.us, label %jv_copy.exit76.us.thread

jv_copy.exit76.us:                                ; preds = %.lr.ph154.split.us
  tail call void @jv_free(i64 %2, ptr %3)
  br i1 %.not70.not144.us, label %jvp_array_offset.exit.i.i.us.peel, label %.loopexit.us.thread

jv_copy.exit76.us.thread:                         ; preds = %.lr.ph154.split.us
  %i.w = load i32, ptr %3, align 4, !tbaa !17
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %3, align 4, !tbaa !17
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  br i1 %.not70.not144.us187, label %bb.d, label %.loopexit.us.thread

bb.d:                                             ; preds = %jv_copy.exit76.us.thread
  %i.y = load i32, ptr %3, align 4, !tbaa !17
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %3, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i.us.peel

jvp_array_offset.exit.i.i.us.peel:                ; preds = %bb.d, %jv_copy.exit76.us
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !14
  %i.ab = icmp slt i32 %i.m, %i.aa
  br i1 %i.ab, label %bb.e, label %.split.us

bb.e:                                             ; preds = %jvp_array_offset.exit.i.i.us.peel
  %i.ac = load i64, ptr %i.u, align 8             ; 2 uses
  %i.ad = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.ae = and i64 %i.ac, 128
  %.not.i.i.us.peel = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.us.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !17
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @jv_free(i64 %2, ptr nonnull %3)
  br i1 %.not.i, label %jvp_array_offset.exit.i.i97.us.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %1, align 4, !tbaa !17
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %1, align 4, !tbaa !17
  br label %jvp_array_offset.exit.i.i97.us.peel

jvp_array_offset.exit.i.i97.us.peel:              ; preds = %bb.g, %bb.h
  %i.aj = add nuw nsw i64 %indvars.iv181, %i.t    ; 2 uses
  %i.ak = load i32, ptr %i.p, align 4, !tbaa !14
  %i.al = trunc nuw i64 %i.aj to i32
  %i.am = icmp sgt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %.split158.us

bb.i:                                             ; preds = %jvp_array_offset.exit.i.i97.us.peel
end_hunk_0
