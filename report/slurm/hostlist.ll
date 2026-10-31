Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/hostlist?download=true
inline.NumInlined: 142
inline.NumDeleted: 36
begin_hunk_0_@_get_next_box:bb.a
  %i.h = load i32, ptr @dim_grid_size, align 4
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 @grid_start, i64 %i.i, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @_get_next_box.orig_grid_end, ptr nonnull align 16 @grid_end, i64 %i.i, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 @_get_next_box.last, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %1, ptr nonnull align 4 %0, i64 %i.i, i1 false)
  %i.j = call fastcc i32 @_tell_if_used(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef %1, ptr noundef %i.a, i32 noundef %2) ; 0 uses
  tail call fastcc void @_set_box_in_grid(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef %1, i1 noundef zeroext false, i32 noundef %2)
  %i.k = load i32, ptr @dim_grid_size, align 4
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 36, i64 %i.l, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.e, i8 -1, i64 %i.l, i1 false)
  call fastcc void @_set_min_max_of_grid(i32 noundef 0, i32 noundef 0, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.c, i32 noundef %2)
  %i.m = load i32, ptr %i.e, align 16
  %.not = icmp eq i32 %i.m, -1
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr @dim_grid_size, align 4
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @grid_start, ptr nonnull align 16 %i.d, i64 %i.o, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @grid_end, ptr nonnull align 16 %i.e, i64 %i.o, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @_get_next_box.last, ptr nonnull align 16 %i.d, i64 %i.o, i1 false)
  %i.p = icmp eq i32 %.pre, -1
  br i1 %i.p, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18 = icmp ne i32 %.pre, -1
  %spec.select = zext i1 %.not18 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_tell_if_used(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef range(i32 2, -2147483648) %5) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 6 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 5 uses
  %i.d = getelementptr inbounds [4 x i8], ptr @_get_next_box.last, i64 %i.a ; 7 uses
  %i.e = getelementptr inbounds [4 x i8], ptr @grid_end, i64 %i.a ; 5 uses
  store i32 %i.c, ptr %i.d, align 4
  %i.f = load i32, ptr %i.e, align 4
  %.not4 = icmp sgt i32 %i.c, %i.f
  br i1 %.not4, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds [4 x i8], ptr @offset, i64 %i.a ; 2 uses
  %i.h = add nsw i32 %5, -1
  %i.i = icmp eq i32 %0, %i.h
  %i.j = add nsw i32 %0, 1
  %i.k = getelementptr inbounds [4 x i8], ptr @grid_start, i64 %i.a
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %storemerge5.us = phi i32 [ %i.y, %bb.g ], [ %i.c, %.lr.ph ]
  %i.l = load i32, ptr %i.g, align 4
  %i.m = mul nsw i32 %i.l, %storemerge5.us
  %i.n = add nsw i32 %i.m, %1
  %i.o = load ptr, ptr @bit_grid, align 8
  %i.p = sext i32 %i.n to i64
  %i.q = tail call i32 @slurm_bit_test(ptr noundef %i.o, i64 noundef %i.p) #21
  %.not68.us = icmp eq i32 %i.q, 0
  %i.r = load i32, ptr %4, align 4                ; 2 uses
  %i.s = icmp eq i32 %i.r, -1                     ; 2 uses
  br i1 %.not68.us, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not69.us = icmp slt i32 %i.r, %0
  br i1 %.not69.us, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr @dim_grid_size, align 4
  %i.u = sext i32 %i.t to i64
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.v = load i32, ptr @dim_grid_size, align 4
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 16 @_get_next_box.last, i64 %i.w, i1 false)
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph.split.us
  br i1 %i.s, label %bb.g, label %.split.us

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink13 = phi i64 [ %i.w, %bb.e ], [ %i.u, %bb.d ]
  %.sink = phi i32 [ %5, %bb.e ], [ %0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %3, ptr nonnull align 16 @_get_next_box.last, i64 %.sink13, i1 false)
  store i32 %.sink, ptr %4, align 4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.c
  %i.x = load i32, ptr %i.d, align 4              ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 3 uses
  store i32 %i.y, ptr %i.d, align 4
  %i.z = load i32, ptr %i.e, align 4
  %.not.us.not = icmp slt i32 %i.x, %i.z
  br i1 %.not.us.not, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !92

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %storemerge5 = phi i32 [ %i.ao, %bb.m ], [ %i.c, %.lr.ph ]
  %i.aa = load i32, ptr %i.g, align 4
  %i.ab = mul nsw i32 %i.aa, %storemerge5
  %i.ac = add nsw i32 %i.ab, %1
  %i.ad = tail call fastcc i32 @_tell_if_used(i32 noundef %i.j, i32 noundef %i.ac, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %.not66.not = icmp eq i32 %i.ad, 0
  br i1 %.not66.not, label %.loopexit1, label %bb.i

.split.us:                                        ; preds = %bb.f
  %i.ae = getelementptr inbounds [4 x i8], ptr %3, i64 %i.a
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = load i32, ptr %i.e, align 4
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %.loopexit1

bb.h:                                             ; preds = %.split.us
  store i32 %i.af, ptr %i.e, align 4
  %.pre = load i32, ptr %i.d, align 4
  br label %.loopexit

bb.i:                                             ; preds = %.lr.ph.split
  %i.ai = load i32, ptr %4, align 4               ; 2 uses
  %.not67 = icmp slt i32 %i.ai, %0
  br i1 %.not67, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr @dim_grid_size, align 4
  %i.ak = sext i32 %i.aj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %3, ptr nonnull align 16 @_get_next_box.last, i64 %i.ak, i1 false)
  store i32 %0, ptr %4, align 4
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq i32 %i.ai, -1
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = load i32, ptr %i.k, align 4
  store i32 %i.am, ptr %i.b, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.an = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ao = add nsw i32 %i.an, 1                    ; 3 uses
  store i32 %i.ao, ptr %i.d, align 4
  %i.ap = load i32, ptr %i.e, align 4
  %.not.not = icmp slt i32 %i.an, %i.ap
  br i1 %.not.not, label %.lr.ph.split, label %.loopexit, !llvm.loop !92

.loopexit:                                        ; preds = %bb.m, %bb.g, %bb.a, %bb.h
  %i.aq = phi i32 [ %i.y, %bb.g ], [ %.pre, %bb.h ], [ %i.c, %bb.a ], [ %i.ao, %bb.m ]
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %i.d, align 4
  br label %.loopexit1

.loopexit1:                                       ; preds = %.lr.ph.split, %.split.us, %.loopexit
  %.058 = phi i32 [ 1, %.loopexit ], [ 0, %.split.us ], [ 0, %.lr.ph.split ]
  ret i32 %.058
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_min_max_of_grid(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef range(i32 2, -2147483648) %5) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 4 uses
  %i.b = getelementptr inbounds [4 x i8], ptr @grid_start, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %4, i64 %i.a ; 5 uses
  %i.e = getelementptr inbounds [4 x i8], ptr @_get_next_box.orig_grid_end, i64 %i.a ; 3 uses
  store i32 %i.c, ptr %i.d, align 4
  %i.f = load i32, ptr %i.e, align 4
  %.not2 = icmp sgt i32 %i.c, %i.f
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds [4 x i8], ptr @offset, i64 %i.a ; 2 uses
  %i.h = add nsw i32 %5, -1
  %i.i = icmp eq i32 %0, %i.h
  %i.j = add nsw i32 %0, 1
  br i1 %i.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %5 to i64      ; 4 uses
  %i.k = shl nuw nsw i64 %wide.trip.count, 2      ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.k   ; 2 uses
  %scevgep8 = getelementptr i8, ptr %3, i64 %i.k  ; 2 uses
  %scevgep9 = getelementptr i8, ptr %4, i64 %i.k  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %5, 8
  %bound0 = icmp ult ptr %2, %scevgep8
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound010 = icmp ult ptr %2, %scevgep9
  %bound111 = icmp ult ptr %4, %scevgep
  %found.conflict12 = and i1 %bound010, %bound111
  %conflict.rdx = or i1 %found.conflict, %found.conflict12
  %bound013 = icmp ult ptr %3, %scevgep9
  %bound114 = icmp ult ptr %4, %scevgep8
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx16 = or i1 %conflict.rdx, %found.conflict15
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.loopexit.us
  %storemerge3.us = phi i32 [ %i.ag, %.loopexit.us ], [ %i.c, %.lr.ph.split.us.preheader ]
  %i.l = load i32, ptr %i.g, align 4
  %i.m = mul nsw i32 %i.l, %storemerge3.us
  %i.n = add nsw i32 %i.m, %1
  %i.o = load ptr, ptr @bit_grid, align 8
  %i.p = sext i32 %i.n to i64
  %i.q = tail call i32 @slurm_bit_test(ptr noundef %i.o, i64 noundef %i.p) #21
  %.not54.us = icmp eq i32 %i.q, 0
  br i1 %.not54.us, label %.loopexit.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph.split.us
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx16
  br i1 %brmerge, label %.preheader.us.preheader20, label %vector.body

vector.body:                                      ; preds = %.preheader.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !alias.scope !100, !noalias !101
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  %wide.load17 = load <4 x i32>, ptr %i.s, align 4, !alias.scope !102 ; 2 uses
  %i.t = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load17)
  store <4 x i32> %i.t, ptr %i.r, align 4, !alias.scope !100, !noalias !101
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %wide.load18 = load <4 x i32>, ptr %i.u, align 4, !alias.scope !103, !noalias !102
  %i.v = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load18, <4 x i32> %wide.load17)
  store <4 x i32> %i.v, ptr %i.u, align 4, !alias.scope !103, !noalias !102
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader20

.preheader.us.preheader20:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.preheader ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader20, %.preheader.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.us ], [ %indvars.iv.ph, %.preheader.us.preheader20 ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %..us = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.aa)
  store i32 %..us, ptr %i.x, align 4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = load i32, ptr %i.z, align 4
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.ad)
  store i32 %i.ae, ptr %i.ab, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.us, label %.preheader.us, !llvm.loop !98

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.lr.ph.split.us
  %i.af = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  store i32 %i.ag, ptr %i.d, align 4
  %i.ah = load i32, ptr %i.e, align 4
  %.not.us.not = icmp slt i32 %i.af, %i.ah
  br i1 %.not.us.not, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !99

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %storemerge3 = phi i32 [ %i.am, %.lr.ph.split ], [ %i.c, %.lr.ph ]
  %i.ai = load i32, ptr %i.g, align 4
  %i.aj = mul nsw i32 %i.ai, %storemerge3
  %i.ak = add nsw i32 %i.aj, %1
  tail call fastcc void @_set_min_max_of_grid(i32 noundef %i.j, i32 noundef %i.ak, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %i.al = load i32, ptr %i.d, align 4             ; 2 uses
  %i.am = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.am, ptr %i.d, align 4
  %i.an = load i32, ptr %i.e, align 4
  %.not.not = icmp slt i32 %i.al, %i.an
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph.split, %.loopexit.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @hostrange_numstr(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i16 @slurmdb_setup_cluster_dims() #21 ; 5 uses
  %i.b = zext i16 %i.a to i32                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i8, ptr %i.c, align 4, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %i.a to i64                     ; 5 uses
  %.not = icmp ugt i64 %1, %i.g
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i16 %i.a, 1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i32 %i.j, %i.b
  %or.cond106 = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond106, label %.lr.ph.preheader.i, label %._crit_edge

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.l = tail call ptr @llvm.stacksave.p0()
  %i.m = alloca i32, i64 %i.g, align 16           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.g, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.012.i = phi i32 [ %i.p, %.lr.ph.preheader.i ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.q = srem i32 %.012.i, 36
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i
  store i32 %i.q, ptr %i.r, align 4
  %i.s = sdiv i32 %.012.i, 36
  %i.t = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.t, label %.lr.ph.i, label %hostlist_parse_int_to_array.exit.preheader, !llvm.loop !6

hostlist_parse_int_to_array.exit.preheader:       ; preds = %.lr.ph.i
  %wide.trip.count = zext i16 %i.a to i64         ; 2 uses
  br label %hostlist_parse_int_to_array.exit

hostlist_parse_int_to_array.exit:                 ; preds = %hostlist_parse_int_to_array.exit.preheader, %hostlist_parse_int_to_array.exit
  %indvars.iv = phi i64 [ 0, %hostlist_parse_int_to_array.exit.preheader ], [ %indvars.iv.next, %hostlist_parse_int_to_array.exit ] ; 3 uses
  %i.u = load ptr, ptr @alpha_num, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.z, ptr %i.aa, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %hostlist_parse_int_to_array.exit, !llvm.loop !104

bb.d:                                             ; preds = %hostlist_parse_int_to_array.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %wide.trip.count
  store i8 0, ptr %i.ab, align 1
  call void @llvm.stackrestore.p0(ptr %i.l)
  br label %bb.e

._crit_edge:                                      ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %1, ptr noundef nonnull @.str.14, i32 noundef %i.j, i64 noundef %i.ad) #21 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, -1
  %i.ag = zext nneg i32 %i.ae to i64
  %.not68 = icmp ugt i64 %1, %i.ag
  %or.cond70 = select i1 %i.af, i1 %.not68, i1 false
  br i1 %or.cond70, label %bb.e, label %.critedge

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.160 = phi i32 [ %i.b, %bb.d ], [ %i.ae, %._crit_edge ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.am = add nuw nsw i32 %i.b, 2
  %i.an = add nuw nsw i32 %i.am, %.160
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = icmp ult i64 %1, %i.ao
  br i1 %i.ap, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp eq i32 %i.ar, %i.b
  %or.cond107 = select i1 %i.h, i1 %i.as, i1 false
  br i1 %or.cond107, label %.lr.ph.preheader.i73, label %._crit_edge96

.lr.ph.preheader.i73:                             ; preds = %bb.g
  %i.at = tail call ptr @llvm.stacksave.p0()
  %i.au = alloca i32, i64 %i.g, align 16          ; 2 uses
  %i.av = load i64, ptr %i.aj, align 8
  %i.aw = trunc i64 %i.av to i32
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.lr.ph.preheader.i73
  %indvars.iv.i75 = phi i64 [ %i.g, %.lr.ph.preheader.i73 ], [ %indvars.iv.next.i77, %.lr.ph.i74 ] ; 2 uses
  %.012.i76 = phi i32 [ %i.aw, %.lr.ph.preheader.i73 ], [ %i.az, %.lr.ph.i74 ] ; 2 uses
  %indvars.iv.next.i77 = add nsw i64 %indvars.iv.i75, -1 ; 2 uses
  %i.ax = srem i32 %.012.i76, 36
end_hunk_0
