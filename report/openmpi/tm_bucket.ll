Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_bucket?download=true
inline.NumInlined: 14
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.19 = private unnamed_addr constant [7 x i8] c"%d:%f\09\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"Extending bucket %d (%p) from size %d to size %d!\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"pivot[%d]=%f\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"### From bucket %d to bucket %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"nb_elem: %d, indice: %d, bucket_id: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"(Thread: %d) Wrong number of args in %s: %d\0A\00", align 1
@__func__.partial_update_val = private unnamed_addr constant [19 x i8] c"partial_update_val\00", align 1

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @tm_try_add_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.r [
    i32 2, label %bb.b
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [80 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %add_edge_3.exit

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %4 to i64
  %i.f = getelementptr inbounds [80 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %.not24 = icmp eq ptr %i.h, null
  br i1 %.not24, label %bb.d, label %add_edge_3.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  store ptr %i.b, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.f, ptr %i.k, align 8, !tbaa !38
  store ptr %1, ptr %i.c, align 8, !tbaa !36
  store ptr %1, ptr %i.g, align 8, !tbaa !36
  %i.l = load i32, ptr %5, align 4, !tbaa !15
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %5, align 4, !tbaa !15
  br label %add_edge_3.exit

bb.e:                                             ; preds = %bb.a
  %i.n = sext i32 %3 to i64
  %i.o = getelementptr inbounds [80 x i8], ptr %0, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  %i.r = sext i32 %4 to i64
  %i.s = getelementptr inbounds [80 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 3 uses
  %.not59.i = icmp eq ptr %i.u, null              ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %.not59.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %.not60.i = icmp eq ptr %1, null
  br i1 %.not60.i, label %add_edge_3.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  store ptr %i.o, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.x, align 8, !tbaa !38
  store ptr %1, ptr %i.p, align 8, !tbaa !36
  store ptr %1, ptr %i.t, align 8, !tbaa !36
  %i.y = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.z = icmp sgt i32 %i.y, 5
  br i1 %i.z, label %bb.i, label %add_edge_3.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %5, align 4, !tbaa !15
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !39
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !39
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.ag) ; 0 uses
  br label %add_edge_3.exit

bb.j:                                             ; preds = %bb.e
  br i1 %.not59.i, label %bb.k, label %add_edge_3.exit

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %.not63.i = icmp eq ptr %i.al, null
  br i1 %.not63.i, label %bb.l, label %add_edge_3.exit

bb.l:                                             ; preds = %bb.k
  store ptr %i.s, ptr %i.ak, align 8, !tbaa !38
  store ptr %i.q, ptr %i.t, align 8, !tbaa !36
  %i.am = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.an = icmp sgt i32 %i.am, 5
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %5, align 4, !tbaa !15
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !39
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !39
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.ao, i32 noundef %i.ar, i32 noundef %i.av, i32 noundef %i.ay) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = load i32, ptr %5, align 4, !tbaa !15
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %5, align 4, !tbaa !15
  br label %add_edge_3.exit

.thread.i:                                        ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !37 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38
  %.not66.i = icmp eq ptr %i.bf, null
  br i1 %.not66.i, label %bb.o, label %add_edge_3.exit

bb.o:                                             ; preds = %.thread.i
  store ptr %i.o, ptr %i.be, align 8, !tbaa !38
  store ptr %i.u, ptr %i.p, align 8, !tbaa !36
  %i.bg = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.bh = icmp sgt i32 %i.bg, 5
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %5, align 4, !tbaa !15
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !39
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !39
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.bi, i32 noundef %i.bl, i32 noundef %i.bp, i32 noundef %i.bs) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = load i32, ptr %5, align 4, !tbaa !15
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %5, align 4, !tbaa !15
  br label %add_edge_3.exit

bb.r:                                             ; preds = %bb.a
  %i.bw = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !40
  %i.cb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str, i32 noundef %i.ca) #18 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @exit(i32 noundef -1) #19
  unreachable

add_edge_3.exit:                                  ; preds = %bb.q, %.thread.i, %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %bb.d ], [ 0, %.thread.i ], [ 0, %bb.k ], [ 0, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden double @tm_bucket_grouping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !62     ; 6 uses
  %i.g = tail call i32 @tm_get_verbose_level() #20 ; 2 uses
  store i32 %i.g, ptr @verbose_level, align 4, !tbaa !15
  %i.h = icmp sgt i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @tm_get_time() #20
  %i.j = icmp slt i32 %i.e, 1
  br i1 %i.j, label %5, label %.lr.ph.i.i

5:                                                ; preds = %bb.c
  %6 = load i32, ptr @verbose_level, align 4, !tbaa !15
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %partial_sort.exit

8:                                                ; preds = %5
  %9 = load ptr, ptr @stderr, align 8, !tbaa !17
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.14, i32 noundef %i.e) #18 ; 0 uses
  br label %partial_sort.exit

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %12, %.lr.ph.i.i ], [ 0, %bb.c ]
  %.046.i.i = phi i32 [ %11, %.lr.ph.i.i ], [ %i.e, %bb.c ]
  %11 = lshr i32 %.046.i.i, 1                     ; 2 uses
  %12 = add nuw nsw i32 %.07.i.i, 1               ; 3 uses
  %.not.i.i = icmp eq i32 %11, 0
  br i1 %.not.i.i, label %.lr.ph.i89.preheader.i, label %.lr.ph.i.i, !llvm.loop !41

.lr.ph.i89.preheader.i:                           ; preds = %.lr.ph.i.i
  %i.k = lshr i32 %12, 1
  %i.l = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.k, i1 false)
  %i.m = sub nuw nsw i32 32, %i.l
  %i.n = shl nsw i32 -1, %i.m
  %i.o = and i32 %i.n, %12                        ; 14 uses
  %i.p = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.o)
  %.not.i = icmp eq i32 %i.p, 1
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i89.preheader.i
  %i.q = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.15, i32 noundef %i.o) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @exit(i32 noundef -1) #19
  unreachable

bb.g:                                             ; preds = %.lr.ph.i89.preheader.i
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  store i32 %i.e, ptr %i.w, align 8, !tbaa !63
  %i.x = uitofp nneg i32 %i.o to double
  %i.y = tail call double @pow(double noundef %i.x, double noundef 2.000000e+00) #20
  %i.z = fptosi double %i.y to i32                ; 5 uses
  %i.aa = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ab = icmp sgt i32 %i.aa, 4
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.e, i32 noundef %i.z) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = sext i32 %i.z to i64                    ; 2 uses
  %i.ae = shl nsw i64 %i.ad, 3
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #21 ; 10 uses
  %i.ag = icmp sgt i32 %i.z, 0                    ; 2 uses
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ah = add nsw i32 %i.e, -2                    ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i32 %i.e, -1
  %wide.trip.count.i = zext nneg i32 %i.z to i64
  %i.ak = add nsw i32 %i.e, -3
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %i.al = tail call i64 @tm_genrand_int32() #20
  %i.am = urem i64 %i.al, %i.ai
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  %i.ao = add i32 %i.an, 1                        ; 3 uses
  %i.ap = icmp eq i32 %i.ao, %i.ah
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call i64 @tm_genrand_int32() #20
  %i.ar = sub i32 %i.ak, %i.an
  %i.as = sext i32 %i.ar to i64
  %i.at = urem i64 %i.aq, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %i.an, 2
  %i.aw = add i32 %i.av, %i.au
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.081.i = phi i32 [ %i.aw, %bb.k ], [ %i.aj, %bb.j ] ; 2 uses
  %i.ax = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ay = icmp sgt i32 %i.ax, 5
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.ao, i32 noundef %.081.i) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i ; 2 uses
  store i32 %i.ao, ptr %i.ba, align 4, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %.081.i, ptr %i.bb, align 4, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !42

._crit_edge.i:                                    ; preds = %bb.n, %bb.i
  store ptr %i.u, ptr @global_bl, align 8, !tbaa !23
  tail call void @qsort(ptr noundef %i.af, i64 noundef %i.ad, i64 noundef 8, ptr noundef nonnull @tab_cmp) #20
  %i.bc = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.bd = icmp sgt i32 %i.bc, 5
  %or.cond.i = and i1 %i.ag, %i.bd
  br i1 %or.cond.i, label %.lr.ph106.preheader.i, label %.loopexit.i

.lr.ph106.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count120.i = zext nneg i32 %i.z to i64
  br label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %.lr.ph106.i, %.lr.ph106.preheader.i
  %indvars.iv117.i = phi i64 [ 0, %.lr.ph106.preheader.i ], [ %indvars.iv.next118.i, %.lr.ph106.i ] ; 2 uses
  %.idx141.i = shl nuw nsw i64 %indvars.iv117.i, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx141.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !15
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !24
  %i.bl = sext i32 %i.bh to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !25
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %i.bn) ; 0 uses
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 2 uses
  %exitcond121.not.i = icmp eq i64 %indvars.iv.next118.i, %wide.trip.count120.i
  br i1 %exitcond121.not.i, label %.loopexit.i, label %.lr.ph106.i, !llvm.loop !43

.loopexit.i:                                      ; preds = %.lr.ph106.i, %._crit_edge.i
  %i.bp = zext nneg i32 %i.o to i64               ; 9 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3                ; 4 uses
  %i.br = add nsw i64 %i.bq, -1
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.br) #21 ; 5 uses
  %i.bt = icmp samesign ugt i32 %i.o, 1
  br i1 %i.bt, label %.lr.ph110.i.preheader, label %._crit_edge111.i

.lr.ph110.i.preheader:                            ; preds = %.loopexit.i
  %i.bu = add nsw i64 %i.bp, -1                   ; 3 uses
  %xtraiter = and i64 %i.bu, 1
  %i.bv = icmp eq i32 %i.o, 2
  br i1 %i.bv, label %.lr.ph110.i.epil.preheader, label %.lr.ph110.i.preheader.new

.lr.ph110.i.preheader.new:                        ; preds = %.lr.ph110.i.preheader
  %unroll_iter = and i64 %i.bu, -2
  br label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.i, %.lr.ph110.i.preheader.new
  %indvars.iv122.i = phi i64 [ 1, %.lr.ph110.i.preheader.new ], [ %indvars.iv.next123.i.1, %.lr.ph110.i ] ; 3 uses
  %.0108.i = phi i32 [ 1, %.lr.ph110.i.preheader.new ], [ %i.cn, %.lr.ph110.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph110.i.preheader.new ], [ %niter.next.1, %.lr.ph110.i ]
  %i.bw = shl nuw i32 %.0108.i, 1                 ; 2 uses
  %i.bx = add i32 %i.bw, -2
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !15
  %i.cb = add i32 %i.bw, -1
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !15
  %i.cf = sext i32 %i.ca to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !24
  %i.ci = sext i32 %i.ce to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !25
  %i.cl = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv122.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 -8
  store double %i.ck, ptr %i.cm, align 8, !tbaa !25
  %i.cn = shl nuw i32 %.0108.i, 2                 ; 4 uses
  %i.co = add i32 %i.cn, -2
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !15
  %i.cs = add i32 %i.cn, -1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !15
  %i.cw = sext i32 %i.cr to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !24
  %i.cz = sext i32 %i.cv to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !25
  %i.dc = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv122.i
  store double %i.db, ptr %i.dc, align 8, !tbaa !25
  %indvars.iv.next123.i.1 = add nuw nsw i64 %indvars.iv122.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge111.i.loopexit.unr-lcssa, label %.lr.ph110.i, !llvm.loop !44

._crit_edge111.i.loopexit.unr-lcssa:              ; preds = %.lr.ph110.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge111.i, label %.lr.ph110.i.epil.preheader

.lr.ph110.i.epil.preheader:                       ; preds = %._crit_edge111.i.loopexit.unr-lcssa, %.lr.ph110.i.preheader
  %indvars.iv122.i.epil.init = phi i64 [ 1, %.lr.ph110.i.preheader ], [ %indvars.iv.next123.i.1, %._crit_edge111.i.loopexit.unr-lcssa ]
  %.0108.i.epil.init = phi i32 [ 1, %.lr.ph110.i.preheader ], [ %i.cn, %._crit_edge111.i.loopexit.unr-lcssa ]
  %lcmp.mod229 = trunc i64 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.dd = shl nuw i32 %.0108.i.epil.init, 1       ; 2 uses
  %i.de = add i32 %i.dd, -2
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !15
  %i.di = add i32 %i.dd, -1
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !15
  %i.dm = sext i32 %i.dh to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !24
  %i.dp = sext i32 %i.dl to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !25
  %i.ds = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv122.i.epil.init
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  store double %i.dr, ptr %i.dt, align 8, !tbaa !25
  br label %._crit_edge111.i

._crit_edge111.i:                                 ; preds = %.lr.ph110.i.epil.preheader, %._crit_edge111.i.loopexit.unr-lcssa, %.loopexit.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.bs, ptr %i.du, align 8, !tbaa !64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 %i.o, ptr %i.dv, align 8, !tbaa !65
  %i.dw = shl nuw nsw i64 %i.bp, 4
  %i.dx = tail call noalias ptr @malloc(i64 noundef %i.dw) #21 ; 9 uses
  %.not5.i.i.i = icmp eq i32 %i.o, 0              ; 3 uses
  br i1 %.not5.i.i.i, label %ilog2.exit.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %._crit_edge111.i
  %i.dy = lshr i32 %i.o, 1
  %i.dz = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.dy, i1 false)
  %i.ea = sub nuw nsw i32 32, %i.dz
  br label %ilog2.exit.i.i

ilog2.exit.i.i:                                   ; preds = %.lr.ph.i.i.preheader.i, %._crit_edge111.i
  %.0.lcssa.i.i.i = phi i32 [ -1, %._crit_edge111.i ], [ %i.ea, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  store i32 %.0.lcssa.i.i.i, ptr %i.eb, align 8, !tbaa !66
  %i.ec = add nsw i32 %i.o, -1
  tail call fastcc void @dfs(i32 noundef 1, i32 noundef 1, i32 noundef %i.ec, ptr noundef %i.bs, ptr noundef %i.dx, i32 noundef 0, i32 noundef %.0.lcssa.i.i.i)
  store double -1.000000e+00, ptr %i.dx, align 8, !tbaa !25
  %i.ed = shl nuw nsw i32 %i.o, 1
  br i1 %.not5.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i95.i.preheader

.lr.ph.i95.i.preheader:                           ; preds = %ilog2.exit.i.i
  %min.iters.check = icmp samesign ult i32 %i.o, 4
  br i1 %min.iters.check, label %.lr.ph.i95.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i95.i.preheader
  %n.vec = and i64 %i.bp, 2147483644
  %invariant.gep = getelementptr [8 x i8], ptr %i.dx, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i32> %vec.ind, splat (i32 2)
  %i.ee = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.ef = uitofp nneg <2 x i32> %step.add to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> %i.ee, ptr %gep, align 8, !tbaa !25
  store <2 x double> %i.ef, ptr %i.eg, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i32> %vec.ind, splat (i32 4)
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %._crit_edge.i.thread.i, label %vector.body, !llvm.loop !45

.lr.ph.i95.i:                                     ; preds = %.lr.ph.i95.i.preheader
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.bp
  store double 0.000000e+00, ptr %i.ei, align 8, !tbaa !25
  %exitcond.not.i.i = icmp eq i32 %i.o, 1
  br i1 %exitcond.not.i.i, label %._crit_edge.i.thread.i, label %.lr.ph.i95.i.1

.lr.ph.i95.i.1:                                   ; preds = %.lr.ph.i95.i
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.bp
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store double 1.000000e+00, ptr %i.ek, align 8, !tbaa !25
  %exitcond.not.i.i.1 = icmp eq i32 %i.o, 2
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.thread.i, label %.lr.ph.i95.i.2

.lr.ph.i95.i.2:                                   ; preds = %.lr.ph.i95.i.1
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.bp
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store double 2.000000e+00, ptr %i.em, align 8, !tbaa !25
  br label %._crit_edge.i.thread.i

._crit_edge.i.i:                                  ; preds = %ilog2.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 3 uses
  store ptr %i.dx, ptr %i.en, align 8, !tbaa !69
  %i.eo = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ep = icmp sgt i32 %i.eo, 5
  br i1 %i.ep, label %built_pivot_tree.exit.i, label %built_pivot_tree.exit.i.thread

built_pivot_tree.exit.i.thread:                   ; preds = %._crit_edge.i.i
  %i.eq = tail call noalias ptr @malloc(i64 noundef %i.bq) #21
  store ptr %i.eq, ptr %i.u, align 8, !tbaa !26
  br label %._crit_edge114.i

._crit_edge.i.thread.i:                           ; preds = %vector.body, %.lr.ph.i95.i, %.lr.ph.i95.i.1, %.lr.ph.i95.i.2
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 3 uses
  store ptr %i.dx, ptr %i.er, align 8, !tbaa !69
  %i.es = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.et = icmp sgt i32 %i.es, 5
  br i1 %i.et, label %.lr.ph29.preheader.i.i, label %built_pivot_tree.exit.thread.i

built_pivot_tree.exit.thread.i:                   ; preds = %._crit_edge.i.thread.i
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.bq) #21
  store ptr %i.eu, ptr %i.u, align 8, !tbaa !26
  br label %.lr.ph113.preheader.i

.lr.ph29.preheader.i.i:                           ; preds = %._crit_edge.i.thread.i
  %wide.trip.count.i.i = zext nneg i32 %i.ed to i64
  br label %.lr.ph29.i.i

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i, %.lr.ph29.preheader.i.i
  %indvars.iv32.i.i = phi i64 [ 0, %.lr.ph29.preheader.i.i ], [ %indvars.iv.next33.i.i, %.lr.ph29.i.i ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv32.i.i
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !25
  %i.ex = trunc nuw nsw i64 %indvars.iv32.i.i to i32
  %i.ey = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ex, double noundef %i.ew) ; 0 uses
  %indvars.iv.next33.i.i = add nuw nsw i64 %indvars.iv32.i.i, 1 ; 2 uses
  %exitcond35.not.i.i = icmp eq i64 %indvars.iv.next33.i.i, %wide.trip.count.i.i
  br i1 %exitcond35.not.i.i, label %built_pivot_tree.exit.i, label %.lr.ph29.i.i, !llvm.loop !46

built_pivot_tree.exit.i:                          ; preds = %.lr.ph29.i.i, %._crit_edge.i.i
  %i.ez = phi ptr [ %i.en, %._crit_edge.i.i ], [ %i.er, %.lr.ph29.i.i ] ; 2 uses
  %putchar.i.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.fa = tail call noalias ptr @malloc(i64 noundef %i.bq) #21
  store ptr %i.fa, ptr %i.u, align 8, !tbaa !26
  br i1 %.not5.i.i.i, label %._crit_edge114.i, label %.lr.ph113.preheader.i

.lr.ph113.preheader.i:                            ; preds = %built_pivot_tree.exit.i, %built_pivot_tree.exit.thread.i
  %i.fb = phi ptr [ %i.er, %built_pivot_tree.exit.thread.i ], [ %i.ez, %built_pivot_tree.exit.i ]
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %.lr.ph113.i, %.lr.ph113.preheader.i
  %indvars.iv127.i = phi i64 [ 0, %.lr.ph113.preheader.i ], [ %indvars.iv.next128.i, %.lr.ph113.i ] ; 2 uses
  %i.fc = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #22
  %i.fd = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv127.i
  store ptr %i.fc, ptr %i.fe, align 8, !tbaa !23
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next128.i, %i.bp
  br i1 %exitcond131.not.i, label %._crit_edge114.i, label %.lr.ph113.i, !llvm.loop !47

._crit_edge114.i:                                 ; preds = %.lr.ph113.i, %built_pivot_tree.exit.i.thread, %built_pivot_tree.exit.i
  %i.ff = phi ptr [ %i.ez, %built_pivot_tree.exit.i ], [ %i.en, %built_pivot_tree.exit.i.thread ], [ %i.fb, %.lr.ph113.i ]
  %i.fg = load i32, ptr %i.w, align 8, !tbaa !63  ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph18.i.i, label %fill_buckets.exit.i

.lr.ph18.i.i:                                     ; preds = %._crit_edge114.i
  %i.fi = zext nneg i32 %i.fg to i64              ; 3 uses
  br label %bb.o

.loopexit.i.i:                                    ; preds = %add_to_bucket.exit.i.i, %bb.o
  %indvars.iv.next.i98.i = add nuw nsw i64 %indvars.iv.i97.i, 1
  %exitcond26.not.i.i = icmp eq i64 %indvars.iv.next23.i.i, %i.fi
  br i1 %exitcond26.not.i.i, label %fill_buckets.exit.i, label %bb.o, !llvm.loop !48

bb.o:                                             ; preds = %.loopexit.i.i, %.lr.ph18.i.i
  %indvars.iv22.i.i = phi i64 [ 0, %.lr.ph18.i.i ], [ %indvars.iv.next23.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.i97.i = phi i64 [ 1, %.lr.ph18.i.i ], [ %indvars.iv.next.i98.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 1 ; 3 uses
  %i.fj = icmp samesign ult i64 %indvars.iv.next23.i.i, %i.fi
  br i1 %i.fj, label %.lr.ph.i99.i, label %.loopexit.i.i

.lr.ph.i99.i:                                     ; preds = %bb.o
  %i.fk = trunc nuw nsw i64 %indvars.iv22.i.i to i32
  br label %bb.p

bb.p:                                             ; preds = %add_to_bucket.exit.i.i, %.lr.ph.i99.i
  %indvars.iv19.i.i = phi i64 [ %indvars.iv.i97.i, %.lr.ph.i99.i ], [ %indvars.iv.next20.i.i, %add_to_bucket.exit.i.i ] ; 3 uses
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !69 ; 4 uses
  %i.fm = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv22.i.i
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !24
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv19.i.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !25 ; 3 uses
  %i.fr = load i32, ptr %i.eb, align 8, !tbaa !66 ; 5 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.i.i101.i.preheader, label %bucket_id.exit.i.i

.lr.ph.i.i101.i.preheader:                        ; preds = %bb.p
  %xtraiter230 = and i32 %i.fr, 1
  %i.ft = icmp eq i32 %i.fr, 1
  br i1 %i.ft, label %.lr.ph.i.i101.i.epil.preheader, label %.lr.ph.i.i101.i.preheader.new

.lr.ph.i.i101.i.preheader.new:                    ; preds = %.lr.ph.i.i101.i.preheader
  %unroll_iter234 = and i32 %i.fr, 2147483646
  br label %.lr.ph.i.i101.i

.lr.ph.i.i101.i:                                  ; preds = %.lr.ph.i.i101.i, %.lr.ph.i.i101.i.preheader.new
  %.01314.i.i.i = phi i32 [ 1, %.lr.ph.i.i101.i.preheader.new ], [ %.1.i.i.i.1, %.lr.ph.i.i101.i ] ; 2 uses
  %niter235 = phi i32 [ 0, %.lr.ph.i.i101.i.preheader.new ], [ %niter235.next.1, %.lr.ph.i.i101.i ]
  %i.fu = sext i32 %.01314.i.i.i to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !25
  %i.fx = fcmp ule double %i.fq, %i.fw
  %i.fy = shl nsw i32 %.01314.i.i.i, 1
  %i.fz = zext i1 %i.fx to i32
  %.1.i.i.i = or disjoint i32 %i.fy, %i.fz        ; 2 uses
  %i.ga = sext i32 %.1.i.i.i to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !25
  %i.gd = fcmp ule double %i.fq, %i.gc
  %i.ge = shl nsw i32 %.1.i.i.i, 1
  %i.gf = zext i1 %i.gd to i32
  %.1.i.i.i.1 = or disjoint i32 %i.ge, %i.gf      ; 3 uses
  %niter235.next.1 = add nuw nsw i32 %niter235, 2 ; 2 uses
  %niter235.ncmp.1 = icmp eq i32 %niter235.next.1, %unroll_iter234
  br i1 %niter235.ncmp.1, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i101.i, !llvm.loop !49

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i101.i
  %lcmp.mod231.not = icmp eq i32 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i101.i.epil.preheader

.lr.ph.i.i101.i.epil.preheader:                   ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i101.i.preheader
  %.01314.i.i.i.epil.init = phi i32 [ 1, %.lr.ph.i.i101.i.preheader ], [ %.1.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod233 = trunc i32 %i.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.gg = sext i32 %.01314.i.i.i.epil.init to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !25
  %i.gj = fcmp ule double %i.fq, %i.gi
  %i.gk = shl nsw i32 %.01314.i.i.i.epil.init, 1
  %i.gl = zext i1 %i.gj to i32
  %.1.i.i.i.epil = or disjoint i32 %i.gk, %i.gl
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i101.i.epil.preheader
  %.1.i.i.i.lcssa = phi i32 [ %.1.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %.1.i.i.i.epil, %.lr.ph.i.i101.i.epil.preheader ]
  %i.gm = sext i32 %.1.i.i.i.lcssa to i64
  br label %bucket_id.exit.i.i

bucket_id.exit.i.i:                               ; preds = %._crit_edge.loopexit.i.i.i, %bb.p
  %.013.lcssa.i.i.i = phi i64 [ 1, %bb.p ], [ %i.gm, %._crit_edge.loopexit.i.i.i ]
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.013.lcssa.i.i.i
  %i.go = load double, ptr %i.gn, align 8, !tbaa !25
  %i.gp = fptosi double %i.go to i32              ; 2 uses
  %i.gq = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.gr = sext i32 %i.gp to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !23 ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 4 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !70 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12 ; 3 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !28 ; 2 uses
  %i.gy = icmp eq i32 %i.gv, %i.gx
  br i1 %i.gy, label %bb.q, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bucket_id.exit.i.i
  %.pre26.i.i.i = load ptr, ptr %i.gt, align 8, !tbaa !29
  br label %add_to_bucket.exit.i.i

bb.q:                                             ; preds = %bucket_id.exit.i.i
  %i.gz = load i32, ptr %i.w, align 8, !tbaa !63  ; 2 uses
  %i.ha = load i32, ptr %i.dv, align 8, !tbaa !65
  %i.hb = mul nsw i32 %i.gz, %i.gz
  %i.hc = sdiv i32 %i.hb, %i.ha                   ; 3 uses
  %i.hd = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.he = icmp sgt i32 %i.hd, 5
  br i1 %i.he, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hf = load ptr, ptr %i.gt, align 8, !tbaa !29
  %i.hg = add nsw i32 %i.hc, %i.gv
  %i.hh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gp, ptr noundef %i.hf, i32 noundef %i.gv, i32 noundef %i.hg) ; 0 uses
  %.pre.i.i.i = load i32, ptr %i.gu, align 8, !tbaa !70
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.hi = phi i32 [ %.pre.i.i.i, %bb.r ], [ %i.gv, %bb.q ]
  %i.hj = load ptr, ptr %i.gt, align 8, !tbaa !29
  %i.hk = add nsw i32 %i.hi, %i.hc
  %i.hl = sext i32 %i.hk to i64
  %i.hm = shl nsw i64 %i.hl, 3
  %i.hn = tail call ptr @realloc(ptr noundef %i.hj, i64 noundef %i.hm) #23 ; 2 uses
  store ptr %i.hn, ptr %i.gt, align 8, !tbaa !29
  %i.ho = load i32, ptr %i.gu, align 8, !tbaa !70
  %i.hp = add nsw i32 %i.ho, %i.hc
  store i32 %i.hp, ptr %i.gu, align 8, !tbaa !70
  %.pre27.i.i.i = load i32, ptr %i.gw, align 4, !tbaa !28
  br label %add_to_bucket.exit.i.i

add_to_bucket.exit.i.i:                           ; preds = %bb.s, %._crit_edge.i.i.i
  %i.hq = phi i32 [ %i.gx, %._crit_edge.i.i.i ], [ %.pre27.i.i.i, %bb.s ] ; 2 uses
  %i.hr = phi ptr [ %.pre26.i.i.i, %._crit_edge.i.i.i ], [ %i.hn, %bb.s ]
  %i.hs = sext i32 %i.hq to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hs ; 2 uses
  store i32 %i.fk, ptr %i.ht, align 4, !tbaa !31
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = trunc nuw nsw i64 %indvars.iv19.i.i to i32
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !32
  %i.hw = add nsw i32 %i.hq, 1
  store i32 %i.hw, ptr %i.gw, align 4, !tbaa !28
  %indvars.iv.next20.i.i = add nuw nsw i64 %indvars.iv19.i.i, 1 ; 2 uses
  %exitcond.not.i100.i = icmp eq i64 %indvars.iv.next20.i.i, %i.fi
  br i1 %exitcond.not.i100.i, label %.loopexit.i.i, label %bb.p, !llvm.loop !50

fill_buckets.exit.i:                              ; preds = %.loopexit.i.i, %._crit_edge114.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 0, ptr %i.hx, align 4, !tbaa !33
  %i.hy = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 0, ptr %i.hy, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.af) #20
  br label %partial_sort.exit

partial_sort.exit:                                ; preds = %5, %8, %fill_buckets.exit.i
  %.0133 = phi ptr [ undef, %8 ], [ undef, %5 ], [ %i.u, %fill_buckets.exit.i ] ; 12 uses
  %i.hz = tail call double @tm_time_diff() #20
  %i.ia = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ib = icmp sgt i32 %i.ia, 4
  br i1 %i.ib, label %bb.t, label %.thread

bb.t:                                             ; preds = %partial_sort.exit
  %i.ic = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.hz) ; 0 uses
  %.pr = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.id = icmp sgt i32 %.pr, 5
  br i1 %i.id, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ie = getelementptr inbounds nuw i8, ptr %.0133, i64 8 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !65
  %i.ig = icmp sgt i32 %i.if, 1
  br i1 %i.ig, label %.lr.ph.i120, label %display_pivots.exit

.lr.ph.i120:                                      ; preds = %bb.u
  %i.ih = getelementptr inbounds nuw i8, ptr %.0133, i64 40
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i120
  %indvars.iv.i121 = phi i64 [ 0, %.lr.ph.i120 ], [ %indvars.iv.next.i122, %bb.v ] ; 3 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.i121
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !25
  %i.il = trunc nuw nsw i64 %indvars.iv.i121 to i32
  %i.im = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.il, double noundef %i.ik) ; 0 uses
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i121, 1 ; 2 uses
  %i.in = load i32, ptr %i.ie, align 8, !tbaa !65
  %i.io = add nsw i32 %i.in, -1
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp slt i64 %indvars.iv.next.i122, %i.ip
  br i1 %i.iq, label %bb.v, label %display_pivots.exit, !llvm.loop !51

display_pivots.exit:                              ; preds = %bb.v, %bb.u
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %.thread

.thread:                                          ; preds = %partial_sort.exit, %display_pivots.exit, %bb.t
  tail call void @tm_get_time() #20
  store i32 0, ptr %i.a, align 4, !tbaa !15
  store i32 0, ptr %i.c, align 4, !tbaa !15
  tail call void @tm_get_time() #20
  %i.ir = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.is = icmp sgt i32 %i.ir, 4
  %i.it = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.is, label %.preheader141, label %.preheader143

.preheader143:                                    ; preds = %.thread
  br i1 %i.it, label %.lr.ph, label %.loopexit142

.preheader141:                                    ; preds = %.thread
  br i1 %i.it, label %.lr.ph150, label %.loopexit142

.lr.ph150:                                        ; preds = %.preheader141, %bb.x
  %.0104149 = phi double [ %i.jj, %bb.x ], [ 0.000000e+00, %.preheader141 ]
  %.0106148 = phi double [ %i.je, %bb.x ], [ 0.000000e+00, %.preheader141 ]
  %.0108147 = phi i32 [ %spec.select, %bb.x ], [ 0, %.preheader141 ] ; 2 uses
  tail call void @tm_get_time() #20
  call fastcc void @next_bucket_elem(ptr noundef %.0133, ptr noundef %i.a, ptr noundef %i.b)
  %i.iu = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.iv = icmp sgt i32 %i.iu, 5
  %.pre = load i32, ptr %i.a, align 4, !tbaa !15  ; 3 uses
  %.pre186 = load i32, ptr %i.b, align 4, !tbaa !15 ; 3 uses
  br i1 %i.iv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph150
  %i.iw = sext i32 %.pre to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !24
  %i.iz = sext i32 %.pre186 to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !25
  %i.jc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.pre, i32 noundef %.pre186, double noundef %i.jb) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph150
  %i.jd = tail call double @tm_time_diff() #20
  %i.je = fadd double %.0106148, %i.jd            ; 2 uses
  tail call void @tm_get_time() #20
  %i.jf = zext nneg i32 %.0108147 to i64
  %i.jg = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.jf
  %i.jh = call i32 @tm_try_add_edge(ptr noundef %1, ptr noundef %i.jg, i32 noundef %3, i32 noundef %.pre, i32 noundef %.pre186, ptr noundef nonnull %i.c)
  %spec.select = add nuw nsw i32 %i.jh, %.0108147 ; 3 uses
  %i.ji = tail call double @tm_time_diff() #20
  %i.jj = fadd double %.0104149, %i.ji            ; 2 uses
  %i.jk = icmp slt i32 %spec.select, %4
  br i1 %i.jk, label %.lr.ph150, label %.loopexit142, !llvm.loop !52

.lr.ph:                                           ; preds = %.preheader143, %.lr.ph
  %.2146 = phi i32 [ %spec.select117, %.lr.ph ], [ 0, %.preheader143 ] ; 2 uses
  call fastcc void @next_bucket_elem(ptr noundef %.0133, ptr noundef %i.a, ptr noundef %i.b)
  %i.jl = zext nneg i32 %.2146 to i64
  %i.jm = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.jl
  %i.jn = load i32, ptr %i.a, align 4, !tbaa !15
  %i.jo = load i32, ptr %i.b, align 4, !tbaa !15
  %i.jp = call i32 @tm_try_add_edge(ptr noundef %1, ptr noundef %i.jm, i32 noundef %3, i32 noundef %i.jn, i32 noundef %i.jo, ptr noundef nonnull %i.c)
  %spec.select117 = add nuw nsw i32 %i.jp, %.2146 ; 3 uses
  %i.jq = icmp slt i32 %spec.select117, %4
  br i1 %i.jq, label %.lr.ph, label %.loopexit142, !llvm.loop !53

.loopexit142:                                     ; preds = %.lr.ph, %bb.x, %.preheader143, %.preheader141
  %.4 = phi i32 [ %spec.select, %bb.x ], [ 0, %.preheader141 ], [ 0, %.preheader143 ], [ %spec.select117, %.lr.ph ] ; 2 uses
  %.1107 = phi double [ %i.je, %bb.x ], [ 0.000000e+00, %.preheader141 ], [ 0.000000e+00, %.preheader143 ], [ 0.000000e+00, %.lr.ph ]
  %.1105 = phi double [ %i.jj, %bb.x ], [ 0.000000e+00, %.preheader141 ], [ 0.000000e+00, %.preheader143 ], [ 0.000000e+00, %.lr.ph ]
  %i.jr = tail call double @tm_time_diff() #20
  %i.js = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.jt = icmp sgt i32 %i.js, 4
  br i1 %i.jt, label %bb.y, label %.loopexit142..thread135_crit_edge

.loopexit142..thread135_crit_edge:                ; preds = %.loopexit142
  %.pre187 = load i32, ptr %i.c, align 4, !tbaa !15
  br label %.thread135

bb.y:                                             ; preds = %.loopexit142
  %i.ju = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %i.jr, double noundef %.1107, double noundef %.1105) ; 0 uses
  %.pr134 = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.jv = icmp sgt i32 %.pr134, 5
  %.pre188 = load i32, ptr %i.c, align 4, !tbaa !15 ; 3 uses
  br i1 %i.jv, label %bb.z, label %.thread135

bb.z:                                             ; preds = %bb.y
  %i.jw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.4, i32 noundef %.pre188) ; 0 uses
  br label %.thread135

.thread135:                                       ; preds = %.loopexit142..thread135_crit_edge, %bb.z, %bb.y
  %i.jx = phi i32 [ %.pre187, %.loopexit142..thread135_crit_edge ], [ %.pre188, %bb.z ], [ %.pre188, %bb.y ] ; 2 uses
  tail call void @tm_get_time() #20
  %i.jy = icmp slt i32 %i.jx, %4
  br i1 %i.jy, label %.lr.ph154, label %._crit_edge

.lr.ph154:                                        ; preds = %.thread135, %.lr.ph154
  call fastcc void @next_bucket_elem(ptr noundef %.0133, ptr noundef %i.a, ptr noundef %i.b)
  %i.jz = load i32, ptr %i.a, align 4, !tbaa !15
  %i.ka = load i32, ptr %i.b, align 4, !tbaa !15
  %i.kb = call i32 @tm_try_add_edge(ptr noundef %1, ptr noundef null, i32 noundef %3, i32 noundef %i.jz, i32 noundef %i.ka, ptr noundef nonnull %i.c) ; 0 uses
  %i.kc = load i32, ptr %i.c, align 4, !tbaa !15  ; 2 uses
  %i.kd = icmp slt i32 %i.kc, %4
  br i1 %i.kd, label %.lr.ph154, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph154, %.thread135
  %.lcssa = phi i32 [ %i.jx, %.thread135 ], [ %i.kc, %.lr.ph154 ]
  %i.ke = tail call double @tm_time_diff() #20
  %i.kf = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.kg = icmp sgt i32 %i.kf, 4
  br i1 %i.kg, label %bb.aa, label %.thread137

bb.aa:                                            ; preds = %._crit_edge
  %i.kh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.ke) ; 0 uses
  %.pr136 = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ki = icmp sgt i32 %.pr136, 5
  br i1 %i.ki, label %bb.ab, label %.thread137

bb.ab:                                            ; preds = %bb.aa
  %i.kj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.4, i32 noundef %.lcssa) ; 0 uses
  br label %.thread137

.thread137:                                       ; preds = %._crit_edge, %bb.ab, %bb.aa
  tail call void @tm_get_time() #20
  %i.kk = icmp sgt i32 %4, 512
  br i1 %i.kk, label %bb.ac, label %.preheader140

.preheader140:                                    ; preds = %.thread137
  %i.kl = icmp sgt i32 %4, 0
  br i1 %i.kl, label %.lr.ph158.preheader, label %.loopexit

.lr.ph158.preheader:                              ; preds = %.preheader140
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph158

bb.ac:                                            ; preds = %.thread137
  %i.km = tail call i32 @tm_get_nb_threads() #20  ; 10 uses
  %i.kn = sext i32 %i.km to i64                   ; 3 uses
  %i.ko = shl nsw i64 %i.kn, 3
  %i.kp = tail call noalias ptr @malloc(i64 noundef %i.ko) #21 ; 4 uses
  %i.kq = shl nsw i64 %i.kn, 2                    ; 2 uses
  %i.kr = tail call noalias ptr @malloc(i64 noundef %i.kq) #21 ; 3 uses
  %i.ks = tail call noalias ptr @malloc(i64 noundef %i.kq) #21 ; 3 uses
  %i.kt = tail call noalias ptr @calloc(i64 noundef %i.kn, i64 noundef 8) #22 ; 4 uses
  %i.ku = icmp sgt i32 %i.km, 0
  br i1 %i.ku, label %.lr.ph162, label %._crit_edge166

.lr.ph162:                                        ; preds = %bb.ac
  %i.kv = add nsw i32 %i.km, -1
  %i.kw = zext nneg i32 %i.kv to i64              ; 2 uses
  %wide.trip.count179 = zext nneg i32 %i.km to i64
  %.not = icmp eq i32 %i.km, 1
  br i1 %.not, label %.lr.ph165.preheader.peel.begin, label %.lr.ph162.split

.lr.ph162.split:                                  ; preds = %.lr.ph162
  %i.kx = add nsw i64 %wide.trip.count179, -2
  br label %bb.ae

.lr.ph165.preheader.peel.begin:                   ; preds = %.lr.ph162, %bb.ag
  %i.ky = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next177, %bb.ag ] ; 8 uses
  %i.kz = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #21 ; 6 uses
  %i.la = trunc i64 %i.ky to i32
  %i.lb = mul i32 %4, %i.la
  %i.lc = udiv i32 %i.lb, %i.km
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ky ; 2 uses
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !15
  %i.le = trunc i64 %i.ky to i32
  %i.lf = add i32 %i.le, 1
  %i.lg = mul i32 %4, %i.lf
  %i.lh = udiv i32 %i.lg, %i.km
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.ky ; 2 uses
  %i.lj = icmp eq i64 %i.ky, %i.kw
  %spec.select118.peel = select i1 %i.lj, i32 %4, i32 %i.lh
  store i32 %spec.select118.peel, ptr %i.li, align 4, !tbaa !15
  store ptr %i.ld, ptr %i.kz, align 8, !tbaa !23
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.li, ptr %i.lk, align 8, !tbaa !23
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store ptr %0, ptr %i.ll, align 8, !tbaa !23
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  store ptr %2, ptr %i.lm, align 8, !tbaa !23
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ky
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !23
  %i.lp = tail call ptr @tm_create_work(i32 noundef 5, ptr noundef nonnull %i.kz, ptr noundef nonnull @partial_update_val) #20 ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.ky
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !72
  %i.lr = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ls = icmp sgt i32 %i.lr, 5
  br i1 %i.ls, label %bb.ad, label %.lr.ph165.preheader.peel.next

bb.ad:                                            ; preds = %.lr.ph165.preheader.peel.begin
  %i.lt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %i.lp) ; 0 uses
  br label %.lr.ph165.preheader.peel.next

.lr.ph165.preheader.peel.next:                    ; preds = %bb.ad, %.lr.ph165.preheader.peel.begin
  %i.lu = trunc nuw nsw i64 %i.ky to i32
  %i.lv = tail call i32 @tm_submit_work(ptr noundef %i.lp, i32 noundef %i.lu) #20 ; 0 uses
  %wide.trip.count184 = zext nneg i32 %i.km to i64
  br label %.lr.ph165

bb.ae:                                            ; preds = %.lr.ph162.split, %bb.ag
  %indvars.iv176 = phi i64 [ 0, %.lr.ph162.split ], [ %indvars.iv.next177, %bb.ag ] ; 9 uses
  %i.lw = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #21 ; 6 uses
  %i.lx = trunc i64 %indvars.iv176 to i32
  %i.ly = mul i32 %4, %i.lx
  %i.lz = udiv i32 %i.ly, %i.km
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv176 ; 2 uses
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !15
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.mb = trunc i64 %indvars.iv.next177 to i32
  %i.mc = mul i32 %4, %i.mb
  %i.md = udiv i32 %i.mc, %i.km
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv176 ; 2 uses
  %i.mf = icmp eq i64 %indvars.iv176, %i.kw
  %spec.select118 = select i1 %i.mf, i32 %4, i32 %i.md
  store i32 %spec.select118, ptr %i.me, align 4, !tbaa !15
  store ptr %i.ma, ptr %i.lw, align 8, !tbaa !23
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr %i.me, ptr %i.mg, align 8, !tbaa !23
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store ptr %0, ptr %i.mh, align 8, !tbaa !23
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  store ptr %2, ptr %i.mi, align 8, !tbaa !23
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv176
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !23
  %i.ml = tail call ptr @tm_create_work(i32 noundef 5, ptr noundef nonnull %i.lw, ptr noundef nonnull @partial_update_val) #20 ; 3 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv176
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !72
  %i.mn = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.mo = icmp sgt i32 %i.mn, 5
  br i1 %i.mo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %i.ml) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.mq = trunc nuw nsw i64 %indvars.iv176 to i32
  %i.mr = tail call i32 @tm_submit_work(ptr noundef %i.ml, i32 noundef %i.mq) #20 ; 0 uses
  %exitcond180.not = icmp eq i64 %indvars.iv176, %i.kx
  br i1 %exitcond180.not, label %.lr.ph165.preheader.peel.begin, label %bb.ae, !llvm.loop !55

.lr.ph165:                                        ; preds = %.lr.ph165.preheader.peel.next, %.lr.ph165
  %indvars.iv181 = phi i64 [ 0, %.lr.ph165.preheader.peel.next ], [ %indvars.iv.next182, %.lr.ph165 ] ; 3 uses
  %.0110163 = phi double [ 0.000000e+00, %.lr.ph165.preheader.peel.next ], [ %i.mw, %.lr.ph165 ]
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv181
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !72 ; 3 uses
  tail call void @tm_wait_work_completion(ptr noundef %i.mt) #20
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv181
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !25
  %i.mw = fadd double %.0110163, %i.mv            ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !75
  tail call void @free(ptr noundef %i.my) #20
  tail call void @tm_destroy_work(ptr noundef %i.mt) #20
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge166, label %.lr.ph165, !llvm.loop !56

._crit_edge166:                                   ; preds = %.lr.ph165, %bb.ac
  %.0110.lcssa = phi double [ 0.000000e+00, %bb.ac ], [ %i.mw, %.lr.ph165 ]
  tail call void @free(ptr noundef %i.kr) #20
  tail call void @free(ptr noundef %i.ks) #20
  tail call void @free(ptr noundef %i.kt) #20
  tail call void @free(ptr noundef %i.kp) #20
  br label %.loopexit

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %indvars.iv = phi i64 [ 0, %.lr.ph158.preheader ], [ %indvars.iv.next, %.lr.ph158 ] ; 2 uses
  %.1111156 = phi double [ 0.000000e+00, %.lr.ph158.preheader ], [ %i.nc, %.lr.ph158 ]
  %i.mz = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  tail call void @tm_update_val(ptr noundef nonnull %0, ptr noundef %i.mz) #20
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nb = load double, ptr %i.na, align 8, !tbaa !35
  %i.nc = fadd double %.1111156, %i.nb            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph158, !llvm.loop !57

.loopexit:                                        ; preds = %.lr.ph158, %.preheader140, %._crit_edge166
  %.2112 = phi double [ %.0110.lcssa, %._crit_edge166 ], [ 0.000000e+00, %.preheader140 ], [ %i.nc, %.lr.ph158 ] ; 2 uses
  %i.nd = tail call double @tm_time_diff() #20
  %i.ne = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.nf = icmp sgt i32 %i.ne, 4
  br i1 %i.nf, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  %i.ng = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.nd) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  %i.nh = tail call double @tm_time_diff() #20
  %i.ni = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.nj = icmp sgt i32 %i.ni, 4
  br i1 %i.nj, label %bb.aj, label %.thread139

bb.aj:                                            ; preds = %bb.ai
  %i.nk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.nh) ; 0 uses
  %.pr138 = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.nl = icmp sgt i32 %.pr138, 5
  br i1 %i.nl, label %bb.ak, label %.thread139

bb.ak:                                            ; preds = %bb.aj
  %i.nm = getelementptr inbounds nuw i8, ptr %.0133, i64 28
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !33
  %i.no = getelementptr inbounds nuw i8, ptr %.0133, i64 32
  %i.np = load i32, ptr %i.no, align 8, !tbaa !34
  %i.nq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.nn, i32 noundef %i.np) ; 0 uses
  %i.nr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %.2112) ; 0 uses
  br label %.thread139

.thread139:                                       ; preds = %bb.ai, %bb.ak, %bb.aj
  %i.ns = load ptr, ptr %.0133, align 8, !tbaa !26 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0133, i64 8
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !65 ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, 0
  br i1 %i.nv, label %.lr.ph.preheader.i.i, label %free_bucket_list.exit

.lr.ph.preheader.i.i:                             ; preds = %.thread139
  %wide.trip.count.i.i123 = zext nneg i32 %i.nu to i64
  br label %.lr.ph.i.i124

.lr.ph.i.i124:                                    ; preds = %.lr.ph.i.i124, %.lr.ph.preheader.i.i
  %indvars.iv.i.i125 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i126, %.lr.ph.i.i124 ] ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %indvars.iv.i.i125
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !23 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.ny) #20
  tail call void @free(ptr noundef %i.nx) #20
  %indvars.iv.next.i.i126 = add nuw nsw i64 %indvars.iv.i.i125, 1 ; 2 uses
  %exitcond.not.i.i127 = icmp eq i64 %indvars.iv.next.i.i126, %wide.trip.count.i.i123
  br i1 %exitcond.not.i.i127, label %free_bucket_list.exit, label %.lr.ph.i.i124, !llvm.loop !58

free_bucket_list.exit:                            ; preds = %.lr.ph.i.i124, %.thread139
  tail call void @free(ptr noundef %i.ns) #20
  %i.nz = getelementptr inbounds nuw i8, ptr %.0133, i64 40
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !64
  tail call void @free(ptr noundef %i.oa) #20
  %i.ob = getelementptr inbounds nuw i8, ptr %.0133, i64 48
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.oc) #20
  tail call void @free(ptr noundef nonnull %.0133) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret double %.2112
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare hidden i32 @tm_get_verbose_level() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

declare hidden void @tm_get_time() local_unnamed_addr #5

declare hidden double @tm_time_diff() local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @next_bucket_elem(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %.not27 = icmp sgt i32 %i.i, %i.j
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = load i32, ptr @verbose_level, align 4, !tbaa !15 ; 2 uses
  %i.l = icmp sgt i32 %i.k, 5
  br i1 %i.l, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i32 0, ptr %i.g, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.d, %.lr.ph.split.us ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !28   ; 2 uses
  %.not.us = icmp sgt i32 %i.p, 0
  br i1 %.not.us, label %._crit_edge.split.us, label %bb.b, !llvm.loop !76

._crit_edge.split.us:                             ; preds = %bb.b
  %i.q = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.q, ptr %i.b, align 4, !tbaa !33
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %i.r = phi i32 [ %i.ag, %bb.d ], [ %i.k, %.lr.ph ] ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !34
  %i.s = load i32, ptr %i.b, align 4, !tbaa !33   ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 3 uses
  store i32 %i.t, ptr %i.b, align 4, !tbaa !33
  %i.u = load ptr, ptr %0, align 8, !tbaa !26
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 3 uses
  %i.y = icmp sgt i32 %i.r, 5
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.s, i32 noundef %i.t) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !34
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !33
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.ad) ; 0 uses
  %.pre = load i32, ptr @verbose_level, align 4, !tbaa !15
  %.pre39 = load i32, ptr %i.g, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split
  %i.af = phi i32 [ %.pre39, %bb.c ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ag = phi i32 [ %.pre, %bb.c ], [ %i.r, %.lr.ph.split ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28 ; 2 uses
  %.not = icmp sgt i32 %i.ai, %i.af
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.split.us, %bb.a
  %i.aj = phi i32 [ %i.j, %bb.a ], [ 0, %._crit_edge.split.us ], [ %i.af, %bb.d ]
  %.0.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.n, %._crit_edge.split.us ], [ %i.x, %bb.d ] ; 3 uses
  %.lcssa26 = phi i32 [ %i.i, %bb.a ], [ %i.p, %._crit_edge.split.us ], [ %i.ai, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !79
  %.not25 = icmp eq i32 %i.al, 0
  br i1 %.not25, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  store ptr %0, ptr @global_bl, align 8, !tbaa !23
  %i.am = load ptr, ptr %.0.lcssa, align 8, !tbaa !29
  %i.an = sext i32 %.lcssa26 to i64
  tail call void @qsort(ptr noundef %i.am, i64 noundef %i.an, i64 noundef 8, ptr noundef nonnull @tab_cmp) #20
  store i32 1, ptr %i.ak, align 8, !tbaa !79
  %.pre40 = load i32, ptr %i.g, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.ao = phi i32 [ %.pre40, %bb.e ], [ %i.aj, %._crit_edge ]
  %i.ap = load ptr, ptr %.0.lcssa, align 8, !tbaa !29 ; 2 uses
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !31
  store i32 %i.as, ptr %1, align 4, !tbaa !15
  %i.at = load i32, ptr %i.g, align 8, !tbaa !34
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  store i32 %i.ax, ptr %2, align 4, !tbaa !15
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !34
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.g, align 8, !tbaa !34
  ret void
}

declare hidden i32 @tm_get_nb_threads() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare hidden ptr @tm_create_work(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @partial_update_val(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq i32 %0, 5
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.25, i32 noundef %2, ptr noundef nonnull @__func__.partial_update_val, i32 noundef %0) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @exit(i32 noundef -1) #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !23
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15   ; 2 uses
  %i.p = icmp slt i32 %i.o, %i.c
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.q = sext i32 %i.o to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.r = getelementptr inbounds [80 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  tail call void @tm_update_val(ptr noundef %i.e, ptr noundef %i.r) #20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load double, ptr %i.s, align 8, !tbaa !35
  %i.u = load double, ptr %i.i, align 8, !tbaa !25
  %i.v = fadd double %i.t, %i.u
  store double %i.v, ptr %i.i, align 8, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  ret void
}

declare hidden i32 @tm_submit_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare hidden void @tm_wait_work_completion(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare hidden void @tm_destroy_work(ptr noundef) local_unnamed_addr #5

declare hidden void @tm_update_val(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

declare hidden i64 @tm_genrand_int32() local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @tab_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = load ptr, ptr @global_bl, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !15     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15   ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !15     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15   ; 2 uses
  %i.j = sext i32 %i.d to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !25 ; 2 uses
  %i.p = sext i32 %i.g to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = sext i32 %i.i to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !25 ; 2 uses
  %i.v = fcmp oeq double %i.o, %i.u
  br i1 %i.v, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.w = icmp eq i32 %i.d, %i.g
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = icmp sgt i32 %i.f, %i.i
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.y = icmp sgt i32 %i.d, %i.g
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.z = fcmp ogt double %i.o, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi i1 [ %i.z, %bb.e ], [ %i.y, %bb.d ], [ %i.x, %bb.c ]
  %i.aa = select i1 %.sink, i32 -1, i32 1
  ret i32 %i.aa
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @dfs(i32 noundef %0, i32 noundef range(i32 -1073741823, 1073741825) %1, i32 noundef range(i32 -2147483648, 2147483647) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef range(i32 -2147483648, 2147483647) %6) unnamed_addr #12 {
bb.a:
  %i.a = icmp eq i32 %5, %6
  br i1 %i.a, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr2630 = phi i32 [ %i.k, %tailrecurse ], [ %5, %bb.a ]
  %.tr2229 = phi i32 [ %i.m, %tailrecurse ], [ %1, %bb.a ] ; 2 uses
  %.tr28 = phi i32 [ %i.l, %tailrecurse ], [ %0, %bb.a ] ; 2 uses
  %i.b = add nsw i32 %.tr2229, %2
  %i.c = sdiv i32 %i.b, 2                         ; 2 uses
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %3, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !25
  %i.h = sext i32 %.tr28 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %4, i64 %i.h
  store double %i.g, ptr %i.i, align 8, !tbaa !25
  %i.j = shl nsw i32 %.tr28, 1                    ; 2 uses
  %i.k = add nsw i32 %.tr2630, 1                  ; 3 uses
  tail call fastcc void @dfs(i32 noundef %i.j, i32 noundef %.tr2229, i32 noundef %i.d, ptr noundef %3, ptr noundef %4, i32 noundef %i.k, i32 noundef %6)
  %i.l = or disjoint i32 %i.j, 1
  %i.m = add nsw i32 %i.c, 1
  %i.n = icmp eq i32 %i.k, %6
  br i1 %i.n, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { cold nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"p2 _ZTS10_tm_tree_t", !9, i64 0}
!11 = !{!"p1 _ZTS10_tm_tree_t", !8, i64 0}
!12 = !{!"double", !4, i64 0}
!13 = !{!"p1 _ZTS11_job_info_t", !8, i64 0}
!14 = !{!"_tm_tree_t", !5, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !13, i64 64, !5, i64 72}
!15 = !{!5, !5, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p2 double", !9, i64 0}
!19 = !{!"p1 double", !8, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"", !9, i64 0, !5, i64 8, !18, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !19, i64 40, !19, i64 48, !5, i64 56}
!22 = !{!21, !18, i64 16}
!23 = !{!8, !8, i64 0}
!24 = !{!19, !19, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!21, !9, i64 0}
!27 = !{!"", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!28 = !{!27, !5, i64 12}
!29 = !{!27, !8, i64 0}
!30 = !{!"", !5, i64 0, !5, i64 4}
!31 = !{!30, !5, i64 0}
!32 = !{!30, !5, i64 4}
!33 = !{!21, !5, i64 28}
!34 = !{!21, !5, i64 32}
!35 = !{!14, !12, i64 32}
!36 = !{!14, !11, i64 16}
!37 = !{!14, !10, i64 8}
!38 = !{!11, !11, i64 0}
!39 = !{!14, !5, i64 48}
!40 = !{!14, !5, i64 40}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20, !67, !68}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20, !73}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = !{!"long", !4, i64 0}
!60 = !{!"", !18, i64 0, !19, i64 8, !5, i64 16, !59, i64 24}
!61 = !{!60, !5, i64 16}
!62 = !{!60, !18, i64 0}
!63 = !{!21, !5, i64 24}
!64 = !{!21, !19, i64 40}
!65 = !{!21, !5, i64 8}
!66 = !{!21, !5, i64 56}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!21, !19, i64 48}
!70 = !{!27, !5, i64 8}
!71 = !{!"p1 _ZTS7_work_t", !8, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"llvm.loop.peeled.count", i32 1}
!74 = !{!"_work_t", !5, i64 0, !8, i64 8, !9, i64 16, !71, i64 24, !4, i64 32, !4, i64 80, !5, i64 120, !5, i64 124}
!75 = !{!74, !9, i64 16}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !20, !78}
!78 = !{!"llvm.loop.unswitch.partial.disable"}
!79 = !{!27, !5, i64 16}
!80 = distinct !{!80, !20}
end_hunk_0
