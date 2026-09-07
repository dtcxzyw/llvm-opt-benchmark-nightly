Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/distances?download=true
inline.NumInlined: 65
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@hwloc_distances_remove_by_depth:bb.a
  %.021 = phi i32 [ -1, %.loopexit.sink.split ], [ 0, %bb.d ], [ 0, %bb.m ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_get_depth_type(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_distances_release_remove(ptr nofree noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %.09.i = load ptr, ptr %i.a, align 8, !tbaa !60 ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.011.i = phi ptr [ %.09.i, %.lr.ph.i ], [ %.0.i, %bb.c ] ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !75
  %i.f = icmp eq i32 %i.e, %i.c
  br i1 %i.f, label %hwloc__internal_distances_from_public.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.011.i, i64 80
  %.0.i = load ptr, ptr %i.g, align 8, !tbaa !60  ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.loopexit, label %bb.b, !llvm.loop !1

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.h = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.h, align 4, !tbaa !16
  br label %bb.j

hwloc__internal_distances_from_public.exit:       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.011.i, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 4 uses
  %.not19 = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %.011.i, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52   ; 4 uses
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %hwloc__internal_distances_from_public.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr %i.l, ptr %i.m, align 8, !tbaa !52
  br label %bb.f

bb.e:                                             ; preds = %hwloc__internal_distances_from_public.exit
  store ptr %i.l, ptr %i.a, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not20 = icmp eq ptr %i.l, null
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.j, ptr %i.n, align 8, !tbaa !68
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr %i.j, ptr %i.o, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = load ptr, ptr %.011.i, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.p) #28
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.r) #28
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  tail call void @free(ptr noundef %i.t) #28
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.v) #28
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.x) #28
  tail call void @free(ptr noundef nonnull %.011.i) #28
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.z) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77
  tail call void @free(ptr noundef %i.ab) #28
  tail call void @free(ptr noundef nonnull %i.b) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.0 = phi i32 [ 0, %bb.i ], [ -1, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @hwloc_distances_release(ptr nofree noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.c) #28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  tail call void @free(ptr noundef %i.e) #28
  tail call void @free(ptr noundef nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @hwloc_backend_distances_add_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.a, align 4, !tbaa !16
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #33 ; 8 uses
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull %1) #28 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !53
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 2, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 -1, ptr %i.f, align 4, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.j, align 8, !tbaa !75
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.b) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.c, %bb.f
  %.0 = phi ptr [ %i.b, %bb.f ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_backend_distances_add_values(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.e = and i32 %i.d, 2
  %.not91 = icmp eq i32 %i.e, 0
  br i1 %.not91, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.f, align 4, !tbaa !16
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %5, 0
  %i.h = icmp ugt i32 %2, 1
  %or.cond.not94 = and i1 %i.h, %i.g
  %i.i = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.i, %or.cond.not94
  %i.j = icmp ne ptr %4, null
  %or.cond5 = and i1 %i.j, %or.cond3
  br i1 %or.cond5, label %.preheader107.preheader, label %bb.e

.preheader107.preheader:                          ; preds = %bb.d
  %wide.trip.count = zext i32 %2 to i64           ; 9 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.preheader107.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.preheader107.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi150 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x ptr>, ptr %i.k, align 8, !tbaa !79
  %wide.load151 = load <2 x ptr>, ptr %i.l, align 8, !tbaa !79
  %i.m = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.n = icmp eq <2 x ptr> %wide.load151, splat (ptr null)
  %i.o = zext <2 x i1> %i.m to <2 x i32>
  %i.p = zext <2 x i1> %i.n to <2 x i32>
  %i.q = add <2 x i32> %vec.phi, %i.o             ; 2 uses
  %i.r = add <2 x i32> %vec.phi150, %i.p          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit152, label %.preheader107.preheader154

.preheader107.preheader154:                       ; preds = %.preheader107.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader107.preheader ], [ %n.vec, %middle.block ]
  %.0109.ph = phi i32 [ 0, %.preheader107.preheader ], [ %i.t, %middle.block ]
  br label %.preheader107

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.u, align 4, !tbaa !16
  br label %bb.y

.preheader107:                                    ; preds = %.preheader107.preheader154, %.preheader107
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader107 ], [ %indvars.iv.ph, %.preheader107.preheader154 ] ; 2 uses
  %.0109 = phi i32 [ %spec.select, %.preheader107 ], [ %.0109.ph, %.preheader107.preheader154 ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  %.not100 = icmp eq ptr %i.w, null
  %i.x = zext i1 %.not100 to i32
  %spec.select = add i32 %.0109, %i.x             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit152, label %.preheader107, !llvm.loop !103

.loopexit152:                                     ; preds = %.preheader107, %middle.block
  %spec.select.lcssa = phi i32 [ %i.t, %middle.block ], [ %spec.select, %.preheader107 ] ; 3 uses
  %.not95 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not95, label %bb.s, label %bb.f

bb.f:                                             ; preds = %.loopexit152
  %i.y = icmp eq i32 %spec.select.lcssa, %2
  br i1 %i.y, label %bb.g, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__errno_location() #32
  store i32 2, ptr %i.z, align 4, !tbaa !16
  br label %bb.y

.lr.ph.i:                                         ; preds = %bb.f
  %i.aa = sub i32 %2, %spec.select.lcssa          ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod157 = trunc i32 %2 to i1
  br label %bb.k

.lr.ph61.split.us.split.us.i:                     ; preds = %bb.j, %.lr.ph61.split.us.split.us.i.preheader
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader ], [ %indvars.iv.next93.i.1, %bb.j ] ; 3 uses
  %.260.us.us.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.i.preheader ], [ %.3.us.us.i.1, %bb.j ] ; 3 uses
  %niter162 = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader ], [ %niter162.next.1, %bb.j ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv92.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !79 ; 2 uses
  %.not.us.us.i = icmp eq ptr %i.ac, null
  br i1 %.not.us.us.i, label %.lr.ph61.split.us.split.us.i.1, label %bb.h

bb.h:                                             ; preds = %.lr.ph61.split.us.split.us.i
  %i.ad = zext i32 %.260.us.us.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ad
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !79
  %i.af = add i32 %.260.us.us.i, 1
  br label %.lr.ph61.split.us.split.us.i.1

.lr.ph61.split.us.split.us.i.1:                   ; preds = %bb.h, %.lr.ph61.split.us.split.us.i
  %.3.us.us.i = phi i32 [ %i.af, %bb.h ], [ %.260.us.us.i, %.lr.ph61.split.us.split.us.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv92.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !79 ; 2 uses
  %.not.us.us.i.1 = icmp eq ptr %i.ai, null
  br i1 %.not.us.us.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph61.split.us.split.us.i.1
  %i.aj = zext i32 %.3.us.us.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aj
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !79
  %i.al = add i32 %.3.us.us.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph61.split.us.split.us.i.1
  %.3.us.us.i.1 = phi i32 [ %i.al, %bb.i ], [ %.3.us.us.i, %.lr.ph61.split.us.split.us.i.1 ] ; 2 uses
  %indvars.iv.next93.i.1 = add nuw nsw i64 %indvars.iv92.i, 2 ; 2 uses
  %niter162.next.1 = add i64 %niter162, 2         ; 2 uses
  %niter162.ncmp.1 = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1, label %hwloc_internal_distances_restrict.exit.unr-lcssa, label %.lr.ph61.split.us.split.us.i, !llvm.loop !2

bb.k:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next73.i, %bb.q ] ; 3 uses
  %.04158.i = phi i32 [ 0, %.lr.ph.i ], [ %.142.i, %bb.q ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv72.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !79
  %.not52.i = icmp eq ptr %i.an, null
  br i1 %.not52.i, label %bb.q, label %.preheader54.i

.preheader54.i:                                   ; preds = %bb.k
  %i.ao = trunc nuw i64 %indvars.iv72.i to i32
  %i.ap = mul i32 %2, %i.ao                       ; 3 uses
  %i.aq = mul i32 %.04158.i, %i.aa                ; 3 uses
  br label %.preheader54.i.new

.preheader54.i.new:                               ; preds = %bb.o, %.preheader54.i
  %indvars.iv.i = phi i64 [ 0, %.preheader54.i ], [ %indvars.iv.next.i.1, %bb.o ] ; 4 uses
  %.056.i = phi i32 [ 0, %.preheader54.i ], [ %.1.i.1, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader54.i ], [ %niter.next.1, %bb.o ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !79
  %.not53.i = icmp eq ptr %i.as, null
  br i1 %.not53.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader54.i.new
  %i.at = trunc nuw i64 %indvars.iv.i to i32
  %i.au = add i32 %i.ap, %i.at
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !82
  %i.ay = add i32 %.056.i, %i.aq
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.az
  store i64 %i.ax, ptr %i.ba, align 8, !tbaa !82
  %i.bb = add i32 %.056.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader54.i.new
  %.1.i = phi i32 [ %i.bb, %bb.l ], [ %.056.i, %.preheader54.i.new ] ; 3 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %.not53.i.1 = icmp eq ptr %i.bd, null
  br i1 %.not53.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = trunc nuw i64 %indvars.iv.next.i to i32
  %i.bf = add i32 %i.ap, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !82
  %i.bj = add i32 %.1.i, %i.aq
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bk
  store i64 %i.bi, ptr %i.bl, align 8, !tbaa !82
  %i.bm = add i32 %.1.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i.1 = phi i32 [ %i.bm, %bb.n ], [ %.1.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader54.i.new, !llvm.loop !3

.unr-lcssa:                                       ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.1
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !79
  %.not53.i.epil = icmp eq ptr %i.bo, null
  br i1 %.not53.i.epil, label %.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.bp = trunc nuw i64 %indvars.iv.next.i.1 to i32
  %i.bq = add i32 %i.ap, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !82
  %i.bu = add i32 %.1.i.1, %i.aq
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bv
  store i64 %i.bt, ptr %i.bw, align 8, !tbaa !82
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.p, %.unr-lcssa
  %i.bx = add i32 %.04158.i, 1
  br label %bb.q

bb.q:                                             ; preds = %.epilog-lcssa, %bb.k
  %.142.i = phi i32 [ %i.bx, %.epilog-lcssa ], [ %.04158.i, %bb.k ]
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count
  br i1 %exitcond76.not.i, label %.lr.ph61.split.us.split.us.i.preheader, label %bb.k, !llvm.loop !4

.lr.ph61.split.us.split.us.i.preheader:           ; preds = %bb.q
  %xtraiter158 = and i64 %wide.trip.count, 1
  %unroll_iter161 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph61.split.us.split.us.i

hwloc_internal_distances_restrict.exit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %hwloc_internal_distances_restrict.exit, label %.lr.ph61.split.us.split.us.i.epil.preheader

.lr.ph61.split.us.split.us.i.epil.preheader:      ; preds = %hwloc_internal_distances_restrict.exit.unr-lcssa
  %lcmp.mod160 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next93.i.1
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !79 ; 2 uses
  %.not.us.us.i.epil = icmp eq ptr %i.bz, null
  br i1 %.not.us.us.i.epil, label %hwloc_internal_distances_restrict.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph61.split.us.split.us.i.epil.preheader
  %i.ca = zext i32 %.3.us.us.i.1 to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !79
  br label %hwloc_internal_distances_restrict.exit

hwloc_internal_distances_restrict.exit:           ; preds = %.lr.ph61.split.us.split.us.i.epil.preheader, %bb.r, %hwloc_internal_distances_restrict.exit.unr-lcssa
  %.pre = zext i32 %i.aa to i64
  br label %bb.s

bb.s:                                             ; preds = %hwloc_internal_distances_restrict.exit, %.loopexit152
  %.pre-phi = phi i64 [ %.pre, %hwloc_internal_distances_restrict.exit ], [ %wide.trip.count, %.loopexit152 ] ; 3 uses
  %.084 = phi i32 [ %i.aa, %hwloc_internal_distances_restrict.exit ], [ %2, %.loopexit152 ] ; 7 uses
  %i.cc = shl nuw nsw i64 %.pre-phi, 3
  %i.cd = tail call noalias ptr @malloc(i64 noundef %i.cc) #30 ; 13 uses
  %.not96 = icmp eq ptr %i.cd, null
  br i1 %.not96, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = load ptr, ptr %3, align 8, !tbaa !79
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !86 ; 3 uses
  %i.cg = icmp ugt i32 %.084, 1
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

bb.u:                                             ; preds = %.lr.ph
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %.pre-phi
  br i1 %exitcond124.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %bb.u ], [ 1, %bb.t ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv120
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !79
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !86
  %.not97 = icmp eq i32 %i.cj, %i.cf
  br i1 %.not97, label %bb.u, label %.thread

._crit_edge:                                      ; preds = %bb.u, %bb.t
  %i.ck = icmp eq i32 %i.cf, -1
  br i1 %i.ck, label %.thread, label %.loopexit106

.thread:                                          ; preds = %.lr.ph, %._crit_edge
  %i.cl = shl nuw nsw i64 %.pre-phi, 2
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.cl) #30 ; 8 uses
  %.not98 = icmp eq ptr %i.cm, null
  br i1 %.not98, label %bb.x, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.thread
  %wide.trip.count128 = zext i32 %.084 to i64     ; 2 uses
  %xtraiter163 = and i64 %wide.trip.count128, 3   ; 3 uses
  %i.cn = add i32 %.084, -1
  %i.co = icmp ult i32 %i.cn, 3
  br i1 %i.co, label %.lr.ph112.epil.preheader, label %.lr.ph112.preheader.new

.lr.ph112.preheader.new:                          ; preds = %.lr.ph112.preheader
  %unroll_iter166 = and i64 %wide.trip.count128, 4294967292
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %indvars.iv.next126.3, %.lr.ph112 ] ; 6 uses
  %niter167 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %niter167.next.3, %.lr.ph112 ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv125
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !79
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !86
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv125
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !16
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next126
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !79
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !86
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next126
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !16
  %indvars.iv.next126.1 = or disjoint i64 %indvars.iv125, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next126.1
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !79
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !86
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next126.1
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !16
  %indvars.iv.next126.2 = or disjoint i64 %indvars.iv125, 3 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next126.2
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !79
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !86
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next126.2
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !16
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4 ; 2 uses
  %niter167.next.3 = add i64 %niter167, 4         ; 2 uses
  %niter167.ncmp.3 = icmp eq i64 %niter167.next.3, %unroll_iter166
  br i1 %niter167.ncmp.3, label %.loopexit106.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !105

.loopexit106.loopexit.unr-lcssa:                  ; preds = %.lr.ph112
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %.loopexit106, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %.loopexit106.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph112.preheader ], [ %indvars.iv.next126.3, %.loopexit106.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter163, 0
  tail call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph112.epil

.lr.ph112.epil:                                   ; preds = %.lr.ph112.epil, %.lr.ph112.epil.preheader
  %indvars.iv125.epil = phi i64 [ %indvars.iv125.epil.init, %.lr.ph112.epil.preheader ], [ %indvars.iv.next126.epil, %.lr.ph112.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph112.epil.preheader ], [ %epil.iter.next, %.lr.ph112.epil ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv125.epil
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !79
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !86
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv125.epil
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !16
  %indvars.iv.next126.epil = add nuw nsw i64 %indvars.iv125.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter163
  br i1 %epil.iter.cmp.not, label %.loopexit106, label %.lr.ph112.epil, !llvm.loop !106

.loopexit106:                                     ; preds = %.loopexit106.loopexit.unr-lcssa, %.lr.ph112.epil, %._crit_edge
  %.082102 = phi i32 [ %i.cf, %._crit_edge ], [ -1, %.lr.ph112.epil ], [ -1, %.loopexit106.loopexit.unr-lcssa ] ; 2 uses
  %.081 = phi ptr [ null, %._crit_edge ], [ %i.cm, %.lr.ph112.epil ], [ %i.cm, %.loopexit106.loopexit.unr-lcssa ] ; 2 uses
  store i32 %.084, ptr %i.a, align 8, !tbaa !62
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %3, ptr %i.dj, align 8, !tbaa !56
  %i.dk = or i32 %i.d, 1
  store i32 %i.dk, ptr %i.c, align 8, !tbaa !66
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cd, ptr %i.dl, align 8, !tbaa !55
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.082102, ptr %i.dm, align 4, !tbaa !71
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.081, ptr %i.dn, align 8, !tbaa !54
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %4, ptr %i.do, align 8, !tbaa !57
  %.not99 = icmp eq ptr %.081, null
  br i1 %.not99, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit106
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !65
  %i.dr = or i64 %i.dq, 16
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !65
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit106
  %wide.trip.count140 = zext i32 %.084 to i64     ; 4 uses
  switch i32 %.082102, label %.lr.ph117.preheader [
    i32 3, label %.lr.ph115.preheader
    i32 13, label %.lr.ph115.preheader
  ]

.lr.ph115.preheader:                              ; preds = %bb.w, %bb.w
  %xtraiter168 = and i64 %wide.trip.count140, 3   ; 3 uses
  %i.ds = add i32 %.084, -1
  %i.dt = icmp ult i32 %i.ds, 3
  br i1 %i.dt, label %.lr.ph115.epil.preheader, label %.lr.ph115.preheader.new

.lr.ph115.preheader.new:                          ; preds = %.lr.ph115.preheader
  %unroll_iter172 = and i64 %wide.trip.count140, 4294967292
  br label %.lr.ph115

.lr.ph117.preheader:                              ; preds = %bb.w
  %xtraiter174 = and i64 %wide.trip.count140, 3   ; 3 uses
  %i.du = add i32 %.084, -1
  %i.dv = icmp ult i32 %i.du, 3
  br i1 %i.dv, label %.lr.ph117.epil.preheader, label %.lr.ph117.preheader.new

.lr.ph117.preheader.new:                          ; preds = %.lr.ph117.preheader
  %unroll_iter178 = and i64 %wide.trip.count140, 4294967292
  br label %.lr.ph117

.lr.ph115:                                        ; preds = %.lr.ph115, %.lr.ph115.preheader.new
  %indvars.iv130 = phi i64 [ 0, %.lr.ph115.preheader.new ], [ %indvars.iv.next131.3, %.lr.ph115 ] ; 6 uses
  %niter173 = phi i64 [ 0, %.lr.ph115.preheader.new ], [ %niter173.next.3, %.lr.ph115 ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv130
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !79
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !88
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv130
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !82
  %indvars.iv.next131 = or disjoint i64 %indvars.iv130, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next131
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !79
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !88
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next131
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !82
  %indvars.iv.next131.1 = or disjoint i64 %indvars.iv130, 2 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next131.1
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !79
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !88
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next131.1
  store i64 %i.em, ptr %i.en, align 8, !tbaa !82
  %indvars.iv.next131.2 = or disjoint i64 %indvars.iv130, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next131.2
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !79
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !88
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next131.2
  store i64 %i.es, ptr %i.et, align 8, !tbaa !82
  %indvars.iv.next131.3 = add nuw nsw i64 %indvars.iv130, 4 ; 2 uses
  %niter173.next.3 = add i64 %niter173, 4         ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
end_hunk_0
begin_hunk_1_@hwloc_backend_distances_add_commit:bb.a
  store ptr %1, ptr %i.ad, align 8, !tbaa !52
  br label %bb.n

bb.m:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %1, ptr %i.ae, align 8, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.ag, align 8, !tbaa !52
  store ptr %1, ptr %i.ab, align 8, !tbaa !67
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !66
  %i.ai = and i32 %i.ah, -3
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !66
  br label %bb.p

bb.o:                                             ; preds = %bb.d, %bb.a, %bb.b
  %i.aj = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.aj, align 4, !tbaa !16
  %i.ak = load ptr, ptr %1, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.ak) #28
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55
  tail call void @free(ptr noundef %i.am) #28
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.ao) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.aq) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.as) #28
  tail call void @free(ptr noundef nonnull %1) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.033 = phi i32 [ 0, %bb.n ], [ -1, %bb.o ]
  ret i32 %.033
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @hwloc_internal_distances_print_matrix(ptr nofree noundef readonly captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !71   ; 4 uses
  %i.i = icmp ne i32 %i.h, 3
  %i.j = icmp ne i32 %i.h, 13
  %spec.select = and i1 %i.i, %i.j
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.l = select i1 %spec.select, ptr @.str.10, ptr @.str.11
  %i.m = tail call i64 @fwrite(ptr nonnull %i.l, i64 8, i64 1, ptr %i.k) #34 ; 0 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count45 = zext i32 %i.b to i64       ; 2 uses
  switch i32 %i.h, label %.lr.ph.split [
    i32 13, label %.lr.ph.split.us.preheader
    i32 3, label %.lr.ph.split.us.preheader
  ]

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !88
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.12, i32 noundef %i.r) #35 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count45
  br i1 %exitcond.not, label %.lr.ph36, label %.lr.ph.split.us, !llvm.loop !111

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load i64, ptr %i.w, align 8, !tbaa !89
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.12, i32 noundef %i.y) #35 ; 0 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %.lr.ph36, label %.lr.ph.split, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.a
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !91
  %fputc = tail call i32 @fputc(i32 10, ptr %i.aa) ; 0 uses
  br label %._crit_edge37

.lr.ph36:                                         ; preds = %.lr.ph.split.us, %.lr.ph.split
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !91
  %fputc68 = tail call i32 @fputc(i32 10, ptr %i.ab) ; 0 uses
  %wide.trip.count66 = zext i32 %i.b to i64       ; 4 uses
  switch i32 %i.h, label %.lr.ph36.split [
    i32 13, label %.lr.ph36.split.us.preheader
    i32 3, label %.lr.ph36.split.us.preheader
  ]

.lr.ph36.split.us.preheader:                      ; preds = %.lr.ph36, %.lr.ph36
  br label %.lr.ph36.split.us

.lr.ph36.split.us:                                ; preds = %.lr.ph36.split.us.preheader, %bb.c
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.c ], [ 0, %.lr.ph36.split.us.preheader ] ; 3 uses
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv53
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !88
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.14, i32 noundef %i.ag) #35 ; 0 uses
  %i.ai = trunc nuw i64 %indvars.iv53 to i32
  %i.aj = mul i32 %i.b, %i.ai
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph36.split.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.b ], [ 0, %.lr.ph36.split.us ] ; 2 uses
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.al = trunc nuw i64 %indvars.iv47 to i32
  %i.am = add i32 %i.aj, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !82
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.15, i64 noundef %i.ap) #35 ; 0 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count66
  br i1 %exitcond52.not, label %bb.c, label %bb.b, !llvm.loop !112

bb.c:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !91
  %fputc31.us = tail call i32 @fputc(i32 10, ptr %i.ar) ; 0 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count66
  br i1 %exitcond57.not, label %._crit_edge37, label %.lr.ph36.split.us, !llvm.loop !113

.lr.ph36.split:                                   ; preds = %.lr.ph36, %bb.e
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %bb.e ], [ 0, %.lr.ph36 ] ; 3 uses
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv63
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !79
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !89
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.14, i32 noundef %i.ax) #35 ; 0 uses
  %i.az = trunc nuw i64 %indvars.iv63 to i32
  %i.ba = mul i32 %i.b, %i.az
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph36.split, %bb.d
  %indvars.iv58 = phi i64 [ 0, %.lr.ph36.split ], [ %indvars.iv.next59, %bb.d ] ; 2 uses
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.bc = trunc nuw i64 %indvars.iv58 to i32
  %i.bd = add i32 %i.ba, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !82
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.15, i64 noundef %i.bg) #35 ; 0 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count66
  br i1 %exitcond62.not, label %bb.e, label %bb.d, !llvm.loop !112

bb.e:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !91
  %fputc31 = tail call i32 @fputc(i32 10, ptr %i.bi) ; 0 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge37, label %.lr.ph36.split, !llvm.loop !113

._crit_edge37:                                    ; preds = %bb.c, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hwloc__groups_by_distances(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  %i.c = icmp ult i32 %1, 3
  %i.d = and i64 %4, 4
  %.not = icmp eq i64 %i.d, 0
  %or.cond142 = or i1 %i.c, %.not
  br i1 %or.cond142, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %1 to i64                       ; 18 uses
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #30 ; 14 uses
  %.not132 = icmp eq ptr %i.g, null
  br i1 %.not132, label %bb.ap, label %.preheader164

.preheader164:                                    ; preds = %bb.b
  %.not207 = icmp eq i32 %5, 0
  br i1 %.not207, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader164
  %.not133 = icmp eq i32 %i.b, 0                  ; 5 uses
  %.not134 = icmp eq i32 %7, 0
  %wide.trip.count = zext i32 %5 to i64
  %xtraiter = and i64 %i.e, 1
  %unroll_iter = and i64 %i.e, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod385 = trunc i32 %1 to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %hwloc__check_grouping_matrix.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %hwloc__check_grouping_matrix.exit.thread ] ; 3 uses
  br i1 %.not133, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.i = load ptr, ptr %2, align 8, !tbaa !79
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86
  %i.k = tail call ptr @hwloc_obj_type_string(i32 noundef %i.j) #32
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !44
  %i.n = fpext float %i.m to double
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.16, i32 noundef %1, ptr noundef %i.k, double noundef %i.n) #35 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !44 ; 5 uses
  br i1 %.not134, label %hwloc__check_grouping_matrix.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = fcmp une float %.pre, 0.000000e+00
  br i1 %i.p, label %.split95.us.i, label %.split95.i

.split95.us.i:                                    ; preds = %bb.f, %.loopexit.us.i
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i, %.loopexit.us.i ], [ 0, %bb.f ] ; 2 uses
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %.loopexit.us.i ], [ 1, %bb.f ] ; 2 uses
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 3 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next145.i, %i.e
  br i1 %i.q, label %.lr.ph.us.i, label %.loopexit.us.i

.lr.ph.us.i:                                      ; preds = %.split95.us.i
  %i.r = trunc nuw i64 %indvars.iv144.i to i32    ; 5 uses
  %i.s = mul i32 %1, %i.r                         ; 2 uses
  %.pn.in.us.i = add i32 %i.s, %i.r
  %.pn.us.i = zext i32 %.pn.in.us.i to i64
  %.in.us.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.pn.us.i
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.us.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %bb.h ], [ %indvars.iv137.i, %.lr.ph.us.i ] ; 2 uses
  %i.t = trunc nuw i64 %indvars.iv139.i to i32    ; 4 uses
  %i.u = add i32 %i.s, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !82   ; 5 uses
  %i.y = mul i32 %1, %i.t
  %i.z = add i32 %i.y, %i.r
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !82 ; 3 uses
  %i.ad = uitofp i64 %i.x to float                ; 3 uses
  %i.ae = uitofp i64 %i.ac to float
  %i.af = fsub float %i.ad, %i.ae
  %i.ag = tail call float @llvm.fabs.f32(float %i.af)
  %i.ah = fmul float %.pre, %i.ad                 ; 2 uses
  %i.ai = fcmp olt float %i.ag, %i.ah
  %.not.us.us.i = icmp eq i64 %i.x, %i.ac
  %or.cond.us.us.i = select i1 %i.ai, i1 true, i1 %.not.us.us.i
  br i1 %or.cond.us.us.i, label %.thread.us.us.i, label %.split.us.i

.thread.us.us.i:                                  ; preds = %bb.g
  %i.aj = load i64, ptr %.in.us.i, align 8, !tbaa !82 ; 3 uses
  %i.ak = uitofp i64 %i.aj to float
  %i.al = fsub float %i.ad, %i.ak
  %i.am = tail call float @llvm.fabs.f32(float %i.al)
  %i.an = fcmp uge float %i.am, %i.ah
  %.not64.us.us.i = icmp ugt i64 %i.x, %i.aj
  %or.cond.i = select i1 %i.an, i1 %.not64.us.us.i, i1 false
  br i1 %or.cond.i, label %bb.h, label %hwloc_compare_values.exit57.thread.i

bb.h:                                             ; preds = %.thread.us.us.i
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %lftr.wideiv242 = trunc i64 %indvars.iv.next140.i to i32
  %exitcond243 = icmp eq i32 %1, %lftr.wideiv242
  br i1 %exitcond243, label %.loopexit.us.i, label %bb.g, !llvm.loop !114

.loopexit.us.i:                                   ; preds = %bb.h, %.split95.us.i
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next145.i, %i.e
  br i1 %exitcond148.not.i, label %hwloc__check_grouping_matrix.exit, label %.split95.us.i, !llvm.loop !115

.loopexit.i:                                      ; preds = %bb.k, %.split95.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next134.i, %i.e
  br i1 %exitcond136.not.i, label %hwloc__check_grouping_matrix.exit, label %.split95.i, !llvm.loop !115

.split95.i:                                       ; preds = %bb.f, %.loopexit.i
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %.loopexit.i ], [ 0, %bb.f ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 1, %bb.f ] ; 2 uses
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 1 ; 3 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next134.i, %i.e
  br i1 %i.ao, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.split95.i
  %i.ap = trunc nuw i64 %indvars.iv133.i to i32   ; 5 uses
  %i.aq = mul i32 %1, %i.ap                       ; 2 uses
  %i.ar = add i32 %i.aq, %i.ap
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.as
  br label %hwloc_compare_values.exit.thread60.i

hwloc_compare_values.exit.thread60.i:             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv130.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next131.i, %bb.k ] ; 2 uses
  %i.au = trunc nuw i64 %indvars.iv130.i to i32   ; 4 uses
  %i.av = add i32 %i.aq, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !82 ; 4 uses
  %i.az = mul i32 %1, %i.au
  %i.ba = add i32 %i.az, %i.ap
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !82 ; 2 uses
  %.not61.i = icmp eq i64 %i.ay, %i.bd
  br i1 %.not61.i, label %.thread62.i, label %.split.us.i

.thread62.i:                                      ; preds = %hwloc_compare_values.exit.thread60.i
  %i.be = load i64, ptr %i.at, align 8, !tbaa !82 ; 2 uses
  %.not64.i = icmp ugt i64 %i.ay, %i.be
  br i1 %.not64.i, label %bb.k, label %hwloc_compare_values.exit57.thread.i

.split.us.i:                                      ; preds = %hwloc_compare_values.exit.thread60.i, %bb.g
  %.us-phi.i = phi i32 [ %i.r, %bb.g ], [ %i.ap, %hwloc_compare_values.exit.thread60.i ] ; 2 uses
  %.us-phi74.i = phi i64 [ %i.x, %bb.g ], [ %i.ay, %hwloc_compare_values.exit.thread60.i ]
  %.us-phi75.i = phi i64 [ %i.ac, %bb.g ], [ %i.bd, %hwloc_compare_values.exit.thread60.i ]
  %.us-phi76.i = phi i32 [ %i.t, %bb.g ], [ %i.au, %hwloc_compare_values.exit.thread60.i ] ; 2 uses
  br i1 %.not133, label %hwloc__check_grouping_matrix.exit.thread, label %bb.i

bb.i:                                             ; preds = %.split.us.i
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.19, i32 noundef %.us-phi.i, i32 noundef %.us-phi76.i, i64 noundef %.us-phi74.i, i32 noundef %.us-phi76.i, i32 noundef %.us-phi.i, i64 noundef %.us-phi75.i) #35 ; 0 uses
  br label %hwloc__check_grouping_matrix.exit.thread

hwloc_compare_values.exit57.thread.i:             ; preds = %.thread62.i, %.thread.us.us.i
  %.us-phi77.i = phi i32 [ %i.r, %.thread.us.us.i ], [ %i.ap, %.thread62.i ] ; 3 uses
  %.us-phi78.i = phi i64 [ %i.x, %.thread.us.us.i ], [ %i.ay, %.thread62.i ]
  %.us-phi79.i = phi i32 [ %i.t, %.thread.us.us.i ], [ %i.au, %.thread62.i ]
  %.us-phi80.i = phi i64 [ %i.aj, %.thread.us.us.i ], [ %i.be, %.thread62.i ]
  br i1 %.not133, label %hwloc__check_grouping_matrix.exit.thread, label %bb.j

bb.j:                                             ; preds = %hwloc_compare_values.exit57.thread.i
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.20, i32 noundef %.us-phi77.i, i32 noundef %.us-phi79.i, i64 noundef %.us-phi78.i, i32 noundef %.us-phi77.i, i32 noundef %.us-phi77.i, i64 noundef %.us-phi80.i) #35 ; 0 uses
  br label %hwloc__check_grouping_matrix.exit.thread

bb.k:                                             ; preds = %.thread62.i
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next131.i to i32
  %exitcond = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond, label %.loopexit.i, label %hwloc_compare_values.exit.thread60.i, !llvm.loop !114

hwloc__check_grouping_matrix.exit:                ; preds = %.loopexit.i, %.loopexit.us.i, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.g, i8 0, i64 %i.f, i1 false)
  br label %.preheader111.i

.preheader111.i:                                  ; preds = %.epilog-lcssa, %hwloc__check_grouping_matrix.exit
  %indvars.iv140.i = phi i64 [ 0, %hwloc__check_grouping_matrix.exit ], [ %indvars.iv.next141.i, %.epilog-lcssa ] ; 5 uses
  %.091114.i = phi i64 [ -1, %hwloc__check_grouping_matrix.exit ], [ %.293.i.lcssa, %.epilog-lcssa ]
  %i.bj = trunc nuw i64 %indvars.iv140.i to i32
  %i.bk = mul i32 %1, %i.bj                       ; 3 uses
  br label %.preheader111.i.new

.preheader111.i.new:                              ; preds = %bb.o, %.preheader111.i
  %indvars.iv.i143 = phi i64 [ 0, %.preheader111.i ], [ %indvars.iv.next.i144.1, %bb.o ] ; 4 uses
  %.192112.i = phi i64 [ %.091114.i, %.preheader111.i ], [ %.293.i.1, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader111.i ], [ %niter.next.1, %bb.o ]
  %.not102.i = icmp eq i64 %indvars.iv140.i, %indvars.iv.i143
  br i1 %.not102.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader111.i.new
  %i.bl = trunc nuw i64 %indvars.iv.i143 to i32
  %i.bm = add i32 %i.bk, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !82
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %.192112.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader111.i.new
  %.293.i = phi i64 [ %.192112.i, %.preheader111.i.new ], [ %spec.select.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i144 = or disjoint i64 %indvars.iv.i143, 1 ; 2 uses
  %.not102.i.1 = icmp eq i64 %indvars.iv140.i, %indvars.iv.next.i144
  br i1 %.not102.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = trunc nuw i64 %indvars.iv.next.i144 to i32
  %i.br = add i32 %i.bk, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !82
  %spec.select.i.1 = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %.293.i)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.293.i.1 = phi i64 [ %.293.i, %bb.m ], [ %spec.select.i.1, %bb.n ] ; 4 uses
  %indvars.iv.next.i144.1 = add nuw nsw i64 %indvars.iv.i143, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader111.i.new, !llvm.loop !116

.unr-lcssa:                                       ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod385)
  %.not102.i.epil = icmp eq i64 %indvars.iv140.i, %indvars.iv.next.i144.1
  br i1 %.not102.i.epil, label %.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.bv = trunc nuw i64 %indvars.iv.next.i144.1 to i32
  %i.bw = add i32 %i.bk, %i.bv
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !82
  %spec.select.i.epil = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 %.293.i.1)
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.p, %.unr-lcssa
  %.293.i.lcssa = phi i64 [ %.293.i.1, %.unr-lcssa ], [ %.293.i.1, %.epil.preheader ], [ %spec.select.i.epil, %bb.p ] ; 7 uses
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond144.not.i = icmp eq i64 %indvars.iv.next141.i, %i.e
  br i1 %exitcond144.not.i, label %bb.q, label %.preheader111.i, !llvm.loop !117

bb.q:                                             ; preds = %.epilog-lcssa
  %i.ca = icmp eq i64 %.293.i.lcssa, -1
  br i1 %i.ca, label %hwloc__check_grouping_matrix.exit.thread, label %.preheader110.i

.preheader110.i:                                  ; preds = %bb.q
  %i.cb = fcmp une float %.pre, 0.000000e+00
  %i.cc = uitofp i64 %.293.i.lcssa to float
  %i.cd = fpext float %.pre to double             ; 2 uses
  br i1 %i.cb, label %.preheader110.split.us.i, label %.preheader110.split.i

.preheader110.split.us.i:                         ; preds = %.preheader110.i, %bb.x
  %indvars.iv170.i = phi i64 [ %indvars.iv.next171.i, %bb.x ], [ 0, %.preheader110.i ] ; 3 uses
  %.082135.us.i = phi i32 [ %.183.us.i, %bb.x ], [ 0, %.preheader110.i ] ; 4 uses
  %.089130.us.i = phi i32 [ %.190.us.i, %bb.x ], [ 1, %.preheader110.i ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv170.i ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %.not.us.i = icmp eq i32 %i.cf, 0
  br i1 %.not.us.i, label %.preheader108.us.us.preheader.i, label %bb.x

.preheader108.us.us.preheader.i:                  ; preds = %.preheader110.split.us.i
  store i32 %.089130.us.i, ptr %i.ce, align 4, !tbaa !16
  %i.cg = trunc nuw i64 %indvars.iv170.i to i32
  br label %.preheader108.us.us.i

.preheader108.us.us.i:                            ; preds = %.loopexit109.us.us.i, %.preheader108.us.us.preheader.i
  %.076128.us.us.i = phi i32 [ %.4.us.us.us.i, %.loopexit109.us.us.i ], [ %i.cg, %.preheader108.us.us.preheader.i ] ; 2 uses
  %.077127.us.us.i = phi i32 [ %.481.us.us.us.i, %.loopexit109.us.us.i ], [ 1, %.preheader108.us.us.preheader.i ] ; 2 uses
  %i.ch = icmp ult i32 %.076128.us.us.i, %1
  br i1 %i.ch, label %.lr.ph.us.us.preheader.i, label %._crit_edge.split.us.us.i

.lr.ph.us.us.preheader.i:                         ; preds = %.preheader108.us.us.i
  %i.ci = zext i32 %.076128.us.us.i to i64
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.loopexit.split.us.us.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv165.i = phi i64 [ %i.ci, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next166.i, %.loopexit.split.us.us.us.us.i ] ; 3 uses
  %.0122.us.us.us.i = phi i32 [ -1, %.lr.ph.us.us.preheader.i ], [ %.4.us.us.us.i, %.loopexit.split.us.us.us.us.i ] ; 2 uses
  %.178121.us.us.us.i = phi i32 [ %.077127.us.us.i, %.lr.ph.us.us.preheader.i ], [ %.481.us.us.us.i, %.loopexit.split.us.us.us.us.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv165.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !16
  %i.cl = icmp eq i32 %i.ck, %.089130.us.i
  br i1 %i.cl, label %.preheader.us.us.us.i, label %.loopexit.split.us.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %.lr.ph.us.us.i
  %i.cm = trunc nuw i64 %indvars.iv165.i to i32
  %i.cn = mul i32 %1, %i.cm
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.preheader.us.us.us.i
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i, %bb.t ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.1118.us.us.us.us.i = phi i32 [ %.3.us.us.us.us.i, %bb.t ], [ %.0122.us.us.us.i, %.preheader.us.us.us.i ] ; 4 uses
  %.279117.us.us.us.us.i = phi i32 [ %.380.us.us.us.us.i, %bb.t ], [ %.178121.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv160.i ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !16
  %.not100.us.us.us.us.i = icmp eq i32 %i.cp, 0
  br i1 %.not100.us.us.us.us.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = trunc nuw i64 %indvars.iv160.i to i32   ; 2 uses
  %i.cr = add i32 %i.cn, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !82 ; 2 uses
  %i.cv = uitofp i64 %i.cu to float               ; 2 uses
  %i.cw = fsub float %i.cv, %i.cc
  %i.cx = tail call float @llvm.fabs.f32(float %i.cw)
  %i.cy = fmul float %.pre, %i.cv
  %i.cz = fcmp olt float %i.cx, %i.cy
  %.not101.us.us.us.us.i = icmp eq i64 %i.cu, %.293.i.lcssa
  %or.cond107.us.us.us.us.i = select i1 %i.cz, i1 true, i1 %.not101.us.us.us.us.i
  br i1 %or.cond107.us.us.us.us.i, label %hwloc_compare_values.exit.thread.us.us.us.us.i, label %bb.t

hwloc_compare_values.exit.thread.us.us.us.us.i:   ; preds = %bb.s
  store i32 %.089130.us.i, ptr %i.co, align 4, !tbaa !16
  %i.da = add i32 %.279117.us.us.us.us.i, 1
  %i.db = icmp eq i32 %.1118.us.us.us.us.i, -1
  %spec.select103.us.us.us.us.i = select i1 %i.db, i32 %i.cq, i32 %.1118.us.us.us.us.i
  br label %bb.t

bb.t:                                             ; preds = %hwloc_compare_values.exit.thread.us.us.us.us.i, %bb.s, %bb.r
  %.380.us.us.us.us.i = phi i32 [ %.279117.us.us.us.us.i, %bb.r ], [ %.279117.us.us.us.us.i, %bb.s ], [ %i.da, %hwloc_compare_values.exit.thread.us.us.us.us.i ] ; 2 uses
  %.3.us.us.us.us.i = phi i32 [ %.1118.us.us.us.us.i, %bb.r ], [ %.1118.us.us.us.us.i, %bb.s ], [ %spec.select103.us.us.us.us.i, %hwloc_compare_values.exit.thread.us.us.us.us.i ] ; 2 uses
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %i.e
  br i1 %exitcond164.not.i, label %.loopexit.split.us.us.us.us.i, label %bb.r, !llvm.loop !118

.loopexit.split.us.us.us.us.i:                    ; preds = %bb.t, %.lr.ph.us.us.i
  %.481.us.us.us.i = phi i32 [ %.178121.us.us.us.i, %.lr.ph.us.us.i ], [ %.380.us.us.us.us.i, %bb.t ] ; 3 uses
  %.4.us.us.us.i = phi i32 [ %.0122.us.us.us.i, %.lr.ph.us.us.i ], [ %.3.us.us.us.us.i, %bb.t ] ; 3 uses
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next166.i, %i.e
  br i1 %exitcond169.not.i, label %.loopexit109.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !119

.loopexit109.us.us.i:                             ; preds = %.loopexit.split.us.us.us.us.i
  %.not98.us.us.i = icmp eq i32 %.4.us.us.us.i, -1
  br i1 %.not98.us.us.i, label %._crit_edge.split.us.us.i, label %.preheader108.us.us.i, !llvm.loop !120

._crit_edge.split.us.us.i:                        ; preds = %.loopexit109.us.us.i, %.preheader108.us.us.i
  %.178.lcssa.us.us180.i = phi i32 [ %.481.us.us.us.i, %.loopexit109.us.us.i ], [ %.077127.us.us.i, %.preheader108.us.us.i ] ; 2 uses
  %i.dc = icmp eq i32 %.178.lcssa.us.us180.i, 1
  br i1 %i.dc, label %bb.w, label %bb.u

bb.u:                                             ; preds = %._crit_edge.split.us.us.i
  %i.dd = add i32 %.089130.us.i, 1                ; 2 uses
  br i1 %.not133, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.df = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.de, ptr noundef nonnull @.str.24, i32 noundef %.178.lcssa.us.us180.i, i64 noundef %.293.i.lcssa, double noundef %i.cd) #35 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.split.us.us.i
  store i32 0, ptr %i.ce, align 4, !tbaa !16
  %i.dg = add i32 %.082135.us.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %.preheader110.split.us.i
  %.190.us.i = phi i32 [ %.089130.us.i, %.preheader110.split.us.i ], [ %.089130.us.i, %bb.w ], [ %i.dd, %bb.v ], [ %i.dd, %bb.u ] ; 2 uses
  %.183.us.i = phi i32 [ %.082135.us.i, %.preheader110.split.us.i ], [ %i.dg, %bb.w ], [ %.082135.us.i, %bb.v ], [ %.082135.us.i, %bb.u ] ; 2 uses
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %i.e
  br i1 %exitcond174.not.i, label %.split.us.i146, label %.preheader110.split.us.i, !llvm.loop !121

.preheader110.split.i:                            ; preds = %.preheader110.i, %bb.ad
  %indvars.iv155.i = phi i64 [ %indvars.iv.next156.i, %bb.ad ], [ 0, %.preheader110.i ] ; 3 uses
  %.082135.i = phi i32 [ %.183.i, %bb.ad ], [ 0, %.preheader110.i ] ; 4 uses
  %.089130.i = phi i32 [ %.190.i, %bb.ad ], [ 1, %.preheader110.i ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv155.i ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !16
  %.not.i = icmp eq i32 %i.di, 0
  br i1 %.not.i, label %.preheader108.preheader.i, label %bb.ad

.preheader108.preheader.i:                        ; preds = %.preheader110.split.i
  store i32 %.089130.i, ptr %i.dh, align 4, !tbaa !16
  %i.dj = trunc nuw i64 %indvars.iv155.i to i32
  br label %.preheader108.i

.loopexit109.i:                                   ; preds = %.loopexit.split.i
  %.not98.i = icmp eq i32 %.4.i, -1
  br i1 %.not98.i, label %._crit_edge.split.i, label %.preheader108.i, !llvm.loop !120

.preheader108.i:                                  ; preds = %.loopexit109.i, %.preheader108.preheader.i
  %.076128.i = phi i32 [ %.4.i, %.loopexit109.i ], [ %i.dj, %.preheader108.preheader.i ] ; 2 uses
  %.077127.i = phi i32 [ %.481.i, %.loopexit109.i ], [ 1, %.preheader108.preheader.i ] ; 2 uses
  %i.dk = icmp ult i32 %.076128.i, %1
  br i1 %i.dk, label %.lr.ph.preheader.i, label %._crit_edge.split.i

.lr.ph.preheader.i:                               ; preds = %.preheader108.i
  %i.dl = zext i32 %.076128.i to i64
  br label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %.loopexit.split.i, %.lr.ph.preheader.i
  %indvars.iv150.i = phi i64 [ %i.dl, %.lr.ph.preheader.i ], [ %indvars.iv.next151.i, %.loopexit.split.i ] ; 3 uses
  %.0122.i = phi i32 [ -1, %.lr.ph.preheader.i ], [ %.4.i, %.loopexit.split.i ] ; 2 uses
  %.178121.i = phi i32 [ %.077127.i, %.lr.ph.preheader.i ], [ %.481.i, %.loopexit.split.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv150.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !16
  %i.do = icmp eq i32 %i.dn, %.089130.i
  br i1 %i.do, label %.preheader.i, label %.loopexit.split.i

.preheader.i:                                     ; preds = %.lr.ph.i148
  %i.dp = trunc nuw i64 %indvars.iv150.i to i32
  %i.dq = mul i32 %1, %i.dp
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.preheader.i
  %indvars.iv145.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next146.i, %bb.z ] ; 3 uses
  %.1118.i = phi i32 [ %.0122.i, %.preheader.i ], [ %.3.i, %bb.z ] ; 4 uses
  %.279117.i = phi i32 [ %.178121.i, %.preheader.i ], [ %.380.i, %bb.z ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv145.i ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !16
  %.not100.i = icmp eq i32 %i.ds, 0
  br i1 %.not100.i, label %hwloc_compare_values.exit.i, label %bb.z

hwloc_compare_values.exit.i:                      ; preds = %bb.y
  %i.dt = trunc nuw i64 %indvars.iv145.i to i32   ; 2 uses
  %i.du = add i32 %i.dq, %i.dt
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !82
  %.not101.old.i = icmp eq i64 %i.dx, %.293.i.lcssa
  br i1 %.not101.old.i, label %hwloc_compare_values.exit.thread.i, label %bb.z

hwloc_compare_values.exit.thread.i:               ; preds = %hwloc_compare_values.exit.i
  store i32 %.089130.i, ptr %i.dr, align 4, !tbaa !16
  %i.dy = add i32 %.279117.i, 1
  %i.dz = icmp eq i32 %.1118.i, -1
  %spec.select103.i = select i1 %i.dz, i32 %i.dt, i32 %.1118.i
  br label %bb.z

bb.z:                                             ; preds = %hwloc_compare_values.exit.thread.i, %hwloc_compare_values.exit.i, %bb.y
  %.380.i = phi i32 [ %.279117.i, %bb.y ], [ %.279117.i, %hwloc_compare_values.exit.i ], [ %i.dy, %hwloc_compare_values.exit.thread.i ] ; 2 uses
  %.3.i = phi i32 [ %.1118.i, %bb.y ], [ %.1118.i, %hwloc_compare_values.exit.i ], [ %spec.select103.i, %hwloc_compare_values.exit.thread.i ] ; 2 uses
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next146.i, %i.e
  br i1 %exitcond149.not.i, label %.loopexit.split.i, label %bb.y, !llvm.loop !118

.loopexit.split.i:                                ; preds = %bb.z, %.lr.ph.i148
  %.481.i = phi i32 [ %.178121.i, %.lr.ph.i148 ], [ %.380.i, %bb.z ] ; 3 uses
  %.4.i = phi i32 [ %.0122.i, %.lr.ph.i148 ], [ %.3.i, %bb.z ] ; 3 uses
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next151.i, %i.e
  br i1 %exitcond154.not.i, label %.loopexit109.i, label %.lr.ph.i148, !llvm.loop !119

._crit_edge.split.i:                              ; preds = %.preheader108.i, %.loopexit109.i
  %.178.lcssa184.i = phi i32 [ %.481.i, %.loopexit109.i ], [ %.077127.i, %.preheader108.i ] ; 2 uses
  %i.ea = icmp eq i32 %.178.lcssa184.i, 1
  br i1 %i.ea, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.split.i
  store i32 0, ptr %i.dh, align 4, !tbaa !16
  %i.eb = add i32 %.082135.i, 1
  br label %bb.ad

bb.ab:                                            ; preds = %._crit_edge.split.i
  %i.ec = add i32 %.089130.i, 1                   ; 2 uses
  br i1 %.not133, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !91
  %i.ee = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ed, ptr noundef nonnull @.str.24, i32 noundef %.178.lcssa184.i, i64 noundef %.293.i.lcssa, double noundef %i.cd) #35 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %.preheader110.split.i
  %.190.i = phi i32 [ %.089130.i, %.preheader110.split.i ], [ %.089130.i, %bb.aa ], [ %i.ec, %bb.ac ], [ %i.ec, %bb.ab ] ; 2 uses
  %.183.i = phi i32 [ %.082135.i, %.preheader110.split.i ], [ %i.eb, %bb.aa ], [ %.082135.i, %bb.ac ], [ %.082135.i, %bb.ab ] ; 2 uses
  %indvars.iv.next156.i = add nuw nsw i64 %indvars.iv155.i, 1 ; 2 uses
  %exitcond159.not.i = icmp eq i64 %indvars.iv.next156.i, %i.e
  br i1 %exitcond159.not.i, label %.split.us.i146, label %.preheader110.split.i, !llvm.loop !121

.split.us.i146:                                   ; preds = %bb.ad, %bb.x
  %.us-phi136.i = phi i32 [ %.190.us.i, %bb.x ], [ %.190.i, %bb.ad ] ; 2 uses
  %.us-phi137.i = phi i32 [ %.183.us.i, %bb.x ], [ %.183.i, %bb.ad ]
  %i.ef = icmp eq i32 %.us-phi136.i, 2
  %i.eg = icmp eq i32 %.us-phi137.i, 0
  %or.cond.i147.not157 = select i1 %i.ef, i1 %i.eg, i1 false
  %i.eh = add i32 %.us-phi136.i, -1               ; 9 uses
  %.not135 = icmp eq i32 %i.eh, 0
  %or.cond154 = or i1 %.not135, %or.cond.i147.not157
  br i1 %or.cond154, label %hwloc__check_grouping_matrix.exit.thread, label %bb.ae

hwloc__check_grouping_matrix.exit.thread:         ; preds = %.split.us.i146, %bb.q, %bb.j, %bb.i, %.split.us.i, %hwloc_compare_values.exit57.thread.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond245.not, label %.thread, label %bb.c, !llvm.loop !122

bb.ae:                                            ; preds = %.split.us.i146
  %i.ei = zext i32 %i.eh to i64                   ; 7 uses
  %i.ej = shl nuw nsw i64 %i.ei, 3                ; 2 uses
  %i.ek = tail call noalias ptr @malloc(i64 noundef %i.ej) #30 ; 4 uses
  %i.el = shl nuw nsw i64 %i.ei, 2                ; 2 uses
  %i.em = tail call noalias ptr @malloc(i64 noundef %i.el) #30 ; 8 uses
  %i.en = mul i32 %i.eh, %i.eh
  %i.eo = zext i32 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = tail call noalias ptr @malloc(i64 noundef %i.ep) #30 ; 10 uses
  %i.er = icmp ne ptr %i.ek, null
  %i.es = icmp ne ptr %i.em, null
  %or.cond = and i1 %i.er, %i.es
  %i.et = icmp ne ptr %i.eq, null
  %or.cond3 = and i1 %or.cond, %i.et
  br i1 %or.cond3, label %.lr.ph198, label %bb.ao

.lr.ph198:                                        ; preds = %bb.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.em, i8 0, i64 %i.el, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ev = and i64 %4, 2
  %.not140 = icmp eq i64 %i.ev, 0
  %i.ew = select i1 %.not140, ptr @.str.18, ptr @.str.17
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %._crit_edge, %.lr.ph198
  %indvars.iv251 = phi i64 [ 0, %.lr.ph198 ], [ %i.fg, %._crit_edge ] ; 3 uses
  %.0196 = phi i32 [ 0, %.lr.ph198 ], [ %spec.select, %._crit_edge ]
  %i.ex = tail call ptr @hwloc_alloc_setup_object(ptr noundef %0, i32 noundef 12, i32 noundef -1) #28 ; 4 uses
  %i.ey = tail call noalias ptr @hwloc_bitmap_alloc() #28
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 184
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !129
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !130
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 900, ptr %i.fc, align 4, !tbaa !131
  %i.fd = load i32, ptr %i.eu, align 8, !tbaa !42
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !130
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 %i.fd, ptr %i.ff, align 8, !tbaa !131
  %i.fg = add nuw nsw i64 %indvars.iv251, 1       ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv251 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph194, %bb.ah
  %indvars.iv246 = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next247, %bb.ah ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv246
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !16
  %i.fk = zext i32 %i.fj to i64
  %i.fl = icmp eq i64 %i.fg, %i.fk
  br i1 %i.fl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv246
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !79
  %i.fo = tail call i32 @hwloc_obj_add_other_obj_sets(ptr noundef %i.ex, ptr noundef %i.fn) #28 ; 0 uses
  %i.fp = load i32, ptr %i.fh, align 4, !tbaa !16
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fh, align 4, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %i.e
  br i1 %exitcond250.not, label %._crit_edge, label %bb.af, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.ah
  %i.fr = tail call ptr @hwloc__insert_object_by_cpuset(ptr noundef %0, ptr noundef null, ptr noundef %i.ex, ptr noundef nonnull %i.ew) #28 ; 2 uses
  %.not141 = icmp eq ptr %i.fr, null
  %i.fs = zext i1 %.not141 to i32
  %spec.select = add i32 %.0196, %i.fs            ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv251
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !79
  %exitcond255.not = icmp eq i64 %i.fg, %i.ei
  br i1 %exitcond255.not, label %._crit_edge199, label %.lr.ph194, !llvm.loop !124

._crit_edge199:                                   ; preds = %._crit_edge
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !42
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 8, !tbaa !42
  %.not137 = icmp eq i32 %spec.select, 0
  br i1 %.not137, label %.lr.ph203.preheader, label %bb.ao

.lr.ph203.preheader:                              ; preds = %._crit_edge199
  %i.fx = mul i64 %i.ej, %i.ei
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eq, i8 0, i64 %i.fx, i1 false)
  %xtraiter387 = and i64 %i.e, 1
  %unroll_iter390 = and i64 %i.e, 4294967294
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  %lcmp.mod389 = trunc i32 %1 to i1
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %.loopexit
  %indvars.iv261 = phi i64 [ 0, %.lr.ph203.preheader ], [ %indvars.iv.next262, %.loopexit ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv261
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !16 ; 2 uses
  %.not138 = icmp eq i32 %i.fz, 0
  br i1 %.not138, label %.loopexit, label %.preheader159

.preheader159:                                    ; preds = %.lr.ph203
  %i.ga = trunc nuw i64 %indvars.iv261 to i32
  %i.gb = mul i32 %1, %i.ga                       ; 3 uses
  %i.gc = add i32 %i.fz, -1
  %i.gd = mul i32 %i.gc, %i.eh
  %i.ge = add i32 %i.gd, -1                       ; 3 uses
  br label %.preheader159.new

.preheader159.new:                                ; preds = %bb.al, %.preheader159
  %indvars.iv256 = phi i64 [ 0, %.preheader159 ], [ %indvars.iv.next257.1, %bb.al ] ; 4 uses
  %niter391 = phi i64 [ 0, %.preheader159 ], [ %niter391.next.1, %bb.al ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv256
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !16 ; 2 uses
  %.not139 = icmp eq i32 %i.gg, 0
  br i1 %.not139, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader159.new
  %i.gh = trunc nuw i64 %indvars.iv256 to i32
  %i.gi = add i32 %i.gb, %i.gh
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !82
  %i.gm = add i32 %i.ge, %i.gg
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gn ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !82
  %i.gq = add i64 %i.gp, %i.gl
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !82
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader159.new, %bb.ai
  %indvars.iv.next257 = or disjoint i64 %indvars.iv256, 1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next257
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !16 ; 2 uses
  %.not139.1 = icmp eq i32 %i.gs, 0
  br i1 %.not139.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gt = trunc nuw i64 %indvars.iv.next257 to i32
  %i.gu = add i32 %i.gb, %i.gt
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !82
  %i.gy = add i32 %i.ge, %i.gs
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gz ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !82
  %i.hc = add i64 %i.hb, %i.gx
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !82
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %indvars.iv.next257.1 = add nuw nsw i64 %indvars.iv256, 2 ; 3 uses
  %niter391.next.1 = add nuw nsw i64 %niter391, 2 ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader159.new, !llvm.loop !125

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.al
  br i1 %lcmp.mod388.not, label %.loopexit, label %.epil.preheader386

.epil.preheader386:                               ; preds = %.loopexit.loopexit.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod389)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next257.1
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !16 ; 2 uses
  %.not139.epil = icmp eq i32 %i.he, 0
  br i1 %.not139.epil, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %.epil.preheader386
  %i.hf = trunc nuw i64 %indvars.iv.next257.1 to i32
  %i.hg = add i32 %i.gb, %i.hf
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !82
  %i.hk = add i32 %i.ge, %i.he
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.hl ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !82
  %i.ho = add i64 %i.hn, %i.hj
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.am, %.epil.preheader386, %.lr.ph203
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %i.e
  br i1 %exitcond265.not, label %.preheader.preheader, label %.lr.ph203, !llvm.loop !126

.preheader.preheader:                             ; preds = %.loopexit
  %xtraiter394 = and i64 %i.ei, 1
  %i.hp = icmp eq i32 %i.eh, 1
  %unroll_iter398 = and i64 %i.ei, 4294967294
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  %lcmp.mod397 = trunc i32 %i.eh to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.an
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %bb.an ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv271
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !16 ; 3 uses
  %i.hs = trunc nuw i64 %indvars.iv271 to i32
  %i.ht = mul i32 %i.eh, %i.hs                    ; 3 uses
  br i1 %i.hp, label %.epil.preheader393, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv266 = phi i64 [ %indvars.iv.next267.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter399 = phi i64 [ %niter399.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv266
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !16
  %i.hw = mul i32 %i.hv, %i.hr
  %i.hx = zext i32 %i.hw to i64
  %i.hy = trunc nuw i64 %indvars.iv266 to i32
  %i.hz = add i32 %i.ht, %i.hy
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ia ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !82
  %i.id = udiv i64 %i.ic, %i.hx
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !82
  %indvars.iv.next267 = or disjoint i64 %indvars.iv266, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next267
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !16
  %i.ig = mul i32 %i.if, %i.hr
  %i.ih = zext i32 %i.ig to i64
  %i.ii = trunc nuw i64 %indvars.iv.next267 to i32
  %i.ij = add i32 %i.ht, %i.ii
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ik ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !82
  %i.in = udiv i64 %i.im, %i.ih
  store i64 %i.in, ptr %i.il, align 8, !tbaa !82
  %indvars.iv.next267.1 = add nuw nsw i64 %indvars.iv266, 2 ; 2 uses
  %niter399.next.1 = add i64 %niter399, 2         ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %.unr-lcssa392, label %.preheader.new, !llvm.loop !127

.unr-lcssa392:                                    ; preds = %.preheader.new
  br i1 %lcmp.mod395.not, label %bb.an, label %.epil.preheader393

.epil.preheader393:                               ; preds = %.unr-lcssa392, %.preheader
  %indvars.iv266.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next267.1, %.unr-lcssa392 ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod397)
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv266.epil.init
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !16
  %i.iq = mul i32 %i.ip, %i.hr
  %i.ir = zext i32 %i.iq to i64
  %i.is = trunc nuw i64 %indvars.iv266.epil.init to i32
  %i.it = add i32 %i.ht, %i.is
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.iu ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !82
  %i.ix = udiv i64 %i.iw, %i.ir
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !82
  br label %bb.an

bb.an:                                            ; preds = %.unr-lcssa392, %.epil.preheader393
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %i.ei
  br i1 %exitcond275.not, label %._crit_edge206, label %.preheader, !llvm.loop !128

._crit_edge206:                                   ; preds = %bb.an
  tail call fastcc void @hwloc__groups_by_distances(ptr noundef %0, i32 noundef %i.eh, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.eq, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef 0)
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge199, %bb.ae, %._crit_edge206
  tail call void @free(ptr noundef %i.ek) #28
  tail call void @free(ptr noundef %i.em) #28
  tail call void @free(ptr noundef %i.eq) #28
  br label %.thread

.thread:                                          ; preds = %hwloc__check_grouping_matrix.exit.thread, %.preheader164, %bb.ao
  tail call void @free(ptr noundef %i.g) #28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.b, %bb.a, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @hwloc_internal_distances_add_by_index(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #33 ; 13 uses
  %.not21.i = icmp eq ptr %i.a, null
  br i1 %.not21.i, label %hwloc_backend_distances_add_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22.i = icmp eq ptr %1, null
  br i1 %.not22.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias ptr @strdup(ptr noundef nonnull readonly %1) #28 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !53
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %hwloc_backend_distances_add_create.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 %7, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 2, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 -1, ptr %i.f, align 4, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.h, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = icmp ugt i32 %4, 1
  %i.m = icmp ne ptr %5, null
  %or.cond.i = and i1 %i.l, %i.m
  %i.n = icmp ne ptr %6, null
  %or.cond3.i = and i1 %or.cond.i, %i.n
  br i1 %or.cond3.i, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ne i32 %2, -1
  %i.p = icmp ne ptr %3, null                     ; 2 uses
  %or.cond5.i = or i1 %i.o, %i.p
  br i1 %or.cond5.i, label %bb.f, label %.sink.split.i

bb.f:                                             ; preds = %bb.e
  %i.q = zext i32 %4 to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #30 ; 2 uses
  %.not35.i = icmp eq ptr %i.s, null
  br i1 %.not35.i, label %hwloc_backend_distances_add_values_by_index.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %4, ptr %i.k, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.s, ptr %i.t, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %5, ptr %i.u, align 8, !tbaa !55
  store i32 %2, ptr %i.f, align 4, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.v, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %6, ptr %i.w, align 8, !tbaa !57
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = or i64 %7, 16
  store i64 %i.x, ptr %i.d, align 8, !tbaa !65
  br label %bb.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %i.y = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.y, align 4, !tbaa !16
  br label %hwloc_backend_distances_add_values_by_index.exit

hwloc_backend_distances_add_values_by_index.exit: ; preds = %bb.f, %.sink.split.i
  tail call void @free(ptr noundef %i.c) #28
  br label %hwloc_backend_distances_add_create.exit.thread.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = tail call i32 @hwloc_backend_distances_add_commit(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %8)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %hwloc_backend_distances_add_create.exit.thread, label %bb.j

hwloc_backend_distances_add_create.exit.thread.sink.split: ; preds = %bb.c, %hwloc_backend_distances_add_values_by_index.exit
  tail call void @free(ptr noundef nonnull %i.a) #28
  br label %hwloc_backend_distances_add_create.exit.thread

hwloc_backend_distances_add_create.exit.thread:   ; preds = %hwloc_backend_distances_add_create.exit.thread.sink.split, %bb.a, %bb.i
  %.021 = phi ptr [ %5, %bb.a ], [ null, %bb.i ], [ %5, %hwloc_backend_distances_add_create.exit.thread.sink.split ]
  %.020 = phi ptr [ %6, %bb.a ], [ null, %bb.i ], [ %6, %hwloc_backend_distances_add_create.exit.thread.sink.split ]
  %.019 = phi ptr [ %3, %bb.a ], [ null, %bb.i ], [ %3, %hwloc_backend_distances_add_create.exit.thread.sink.split ]
  tail call void @free(ptr noundef %.021) #28
  tail call void @free(ptr noundef %.019) #28
end_hunk_1
