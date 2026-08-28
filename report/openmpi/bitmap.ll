Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/bitmap?download=true
inline.NumInlined: 42
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@hwloc_bitmap_snprintf:bb.a

._crit_edge.thread:                               ; preds = %bb.h, %.preheader, %._crit_edge
  %.183.lcssa156 = phi ptr [ %.183.lcssa, %._crit_edge ], [ %0, %.preheader ], [ %0, %bb.h ]
  %.185.lcssa155 = phi i64 [ %.185.lcssa, %._crit_edge ], [ %1, %.preheader ], [ %1, %bb.h ]
  %i.bi = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.183.lcssa156, i64 noundef %.185.lcssa155, ptr noundef nonnull @.str.4) #20
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 -1)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %._crit_edge.thread, %._crit_edge, %bb.d
  %.086 = phi i32 [ %.177.lcssa, %._crit_edge ], [ -1, %bb.d ], [ %spec.select, %._crit_edge.thread ], [ -1, %bb.q ]
  ret i32 %.086
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_asprintf(ptr nofree noundef writeonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @hwloc_bitmap_snprintf(ptr noundef null, i64 noundef 0, ptr noundef %1)
  %i.b = add nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #19 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !28
  %i.e = tail call i32 @hwloc_bitmap_snprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_sscanf(ptr nofree noundef captures(none) %0, ptr noalias noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.035 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.b ]
  %.032 = phi i32 [ 1, %bb.a ], [ %i.d, %bb.b ]   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 44) #22 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = add nuw nsw i32 %.032, 1                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 7) #22
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23
  %.not42 = icmp eq i8 %i.g, 44
  br i1 %.not42, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %hwloc_bitmap_reset_by_ulongs.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.l, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.not.i.i.i, label %hwloc_bitmap_reset_by_ulongs.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.k, align 8, !tbaa !16
  store i32 1, ptr %i.h, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread.i

hwloc_bitmap_reset_by_ulongs.exit.thread.i:       ; preds = %bb.g, %bb.e
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i.i

hwloc_bitmap_reset_by_ulongs.exit.i:              ; preds = %bb.f
  %.pr.i = load i32, ptr %0, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i.i, label %hwloc_bitmap_fill.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i, %hwloc_bitmap_reset_by_ulongs.exit.thread.i
  %i.n = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread.i ], [ %.pr.i, %hwloc_bitmap_reset_by_ulongs.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = zext i32 %i.n to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, i8 -1, i64 %i.r, i1 false), !tbaa !17
  br label %hwloc_bitmap_fill.exit

hwloc_bitmap_fill.exit:                           ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i, %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.s, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

bb.h:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = add nsw i32 %.032, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.pre-phi = phi i32 [ %.032, %bb.h ], [ %i.d, %bb.c ]
  %.136 = phi ptr [ %i.t, %bb.h ], [ %1, %bb.c ]
  %.1 = phi i32 [ %i.u, %bb.h ], [ %.032, %bb.c ]
  %.031 = phi i32 [ 1, %bb.h ], [ 0, %bb.c ]
  %i.v = sdiv i32 %.pre-phi, 2                    ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nsw i64 %i.w, -1                     ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %hwloc_flsl_manual.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp ugt i64 %i.x, 4294967295            ; 2 uses
  %i.z = lshr i64 %i.x, 32
  %spec.select.i.i.i = select i1 %i.y, i64 %i.z, i64 %i.x ; 3 uses
  %spec.select33.i.i.i = select i1 %i.y, i32 33, i32 1 ; 2 uses
  %.not28.i.i.i = icmp samesign ult i64 %spec.select.i.i.i, 65536 ; 2 uses
  %i.aa = lshr i64 %spec.select.i.i.i, 16
  %i.ab = or disjoint i32 %spec.select33.i.i.i, 16
  %.122.i.i.i = select i1 %.not28.i.i.i, i64 %spec.select.i.i.i, i64 %i.aa ; 3 uses
  %.1.i.i.i = select i1 %.not28.i.i.i, i32 %spec.select33.i.i.i, i32 %i.ab ; 2 uses
  %.not29.i.i.i = icmp samesign ult i64 %.122.i.i.i, 256 ; 2 uses
  %i.ac = lshr i64 %.122.i.i.i, 8
  %i.ad = or disjoint i32 %.1.i.i.i, 8
  %.223.i.i.i = select i1 %.not29.i.i.i, i64 %.122.i.i.i, i64 %i.ac ; 3 uses
  %.2.i.i.i = select i1 %.not29.i.i.i, i32 %.1.i.i.i, i32 %i.ad ; 2 uses
  %.not30.i.i.i = icmp samesign ult i64 %.223.i.i.i, 16 ; 2 uses
  %i.ae = lshr i64 %.223.i.i.i, 4
  %i.af = or disjoint i32 %.2.i.i.i, 4
  %.324.i.i.i = select i1 %.not30.i.i.i, i64 %.223.i.i.i, i64 %i.ae ; 3 uses
  %.3.i.i.i = select i1 %.not30.i.i.i, i32 %.2.i.i.i, i32 %i.af ; 2 uses
  %i.ag = and i64 %.324.i.i.i, 12
  %.not31.i.i.i = icmp eq i64 %i.ag, 0            ; 2 uses
  %i.ah = lshr i64 %.324.i.i.i, 2
  %i.ai = add nuw nsw i32 %.3.i.i.i, 2
  %.425.i.i.i = select i1 %.not31.i.i.i, i64 %.324.i.i.i, i64 %i.ah
  %.4.i.i.i = select i1 %.not31.i.i.i, i32 %.3.i.i.i, i32 %i.ai
  %i.aj = trunc nuw nsw i64 %.425.i.i.i to i32
  %i.ak = lshr i32 %i.aj, 1
  %i.al = and i32 %i.ak, 1
  %.5.i.i.i = add nuw nsw i32 %i.al, %.4.i.i.i
  br label %hwloc_flsl_manual.exit.i.i

hwloc_flsl_manual.exit.i.i:                       ; preds = %bb.j, %bb.i
  %.026.i.i.i = phi i32 [ %.5.i.i.i, %bb.j ], [ 0, %bb.i ]
  %i.am = shl nuw i32 1, %.026.i.i.i              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = icmp ugt i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.k, label %bb.m

bb.k:                                             ; preds = %hwloc_flsl_manual.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  %i.as = zext i32 %i.am to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call ptr @realloc(ptr noundef %i.ar, i64 noundef %i.at) #21 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.not.i.i, label %hwloc_bitmap_reset_by_ulongs.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !16
  store i32 %i.am, ptr %i.an, align 4, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %hwloc_flsl_manual.exit.i.i
  store i32 %i.v, ptr %0, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %bb.m
  %.237 = phi ptr [ %.136, %bb.m ], [ %.3, %bb.s ] ; 3 uses
  %.033 = phi i64 [ 0, %bb.m ], [ %.134, %bb.s ]
  %.2 = phi i32 [ %.1, %bb.m ], [ %i.ba, %bb.s ]  ; 3 uses
  %i.ax = load i8, ptr %.237, align 1, !tbaa !23
  %.not43 = icmp eq i8 %i.ax, 0
  br i1 %.not43, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ay = call i64 @__isoc23_strtoul(ptr noundef nonnull %.237, ptr noundef nonnull %i.a, i32 noundef 16) #20
  %i.az = icmp sgt i32 %.2, 0
  br i1 %i.az, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 395, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_bitmap_sscanf) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ba = add nsw i32 %.2, -1                     ; 4 uses
  %i.bb = shl nuw nsw i32 %i.ba, 5
  %i.bc = and i32 %i.bb, 32
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %.033                     ; 2 uses
  %i.bg = and i32 %i.ba, 1
  %.not44 = icmp eq i32 %i.bg, 0
  br i1 %.not44, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.bi = lshr exact i32 %i.ba, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  store i64 %i.bf, ptr %i.bk, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.134 = phi i64 [ %i.bf, %bb.q ], [ 0, %bb.r ]
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23  ; 2 uses
  %.not45 = icmp eq i8 %i.bm, 44                  ; 2 uses
  %i.bn = icmp ne i8 %i.bm, 0
  %i.bo = icmp ne i32 %.2, 1
  %or.cond = or i1 %i.bo, %i.bn
  %. = select i1 %or.cond, i32 6, i32 5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %.3 = select i1 %.not45, ptr %i.bp, ptr %.237
  %.0 = select i1 %.not45, i32 0, i32 %.
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  switch i32 %.0, label %.unreachabledefault [
    i32 0, label %bb.n
    i32 5, label %bb.t
    i32 6, label %bb.u
  ], !llvm.loop !31

bb.t:                                             ; preds = %bb.s, %bb.n
  store i32 %.031, ptr %i.av, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bq = load i32, ptr %i.an, align 4, !tbaa !15
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.v, label %hwloc_bitmap_reset_by_ulongs.exit.thread.i46

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.bt = call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.bs, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i.i48 = icmp eq ptr %i.bt, null
  br i1 %.not.not.i.i.i48, label %hwloc_bitmap_reset_by_ulongs.exit.i49, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bt, ptr %i.aw, align 8, !tbaa !16
  store i32 1, ptr %i.an, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread.i46

hwloc_bitmap_reset_by_ulongs.exit.thread.i46:     ; preds = %bb.w, %bb.u
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i.i47

hwloc_bitmap_reset_by_ulongs.exit.i49:            ; preds = %bb.v
  %.pr.i50 = load i32, ptr %0, align 8, !tbaa !11 ; 2 uses
  %.not.i.i51 = icmp eq i32 %.pr.i50, 0
  br i1 %.not.i.i51, label %hwloc_bitmap_zero.exit, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i49, %hwloc_bitmap_reset_by_ulongs.exit.thread.i46
  %i.bu = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread.i46 ], [ %.pr.i50, %hwloc_bitmap_reset_by_ulongs.exit.i49 ]
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.bw = zext i32 %i.bu to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i8 0, i64 %i.bx, i1 false), !tbaa !17
  br label %hwloc_bitmap_zero.exit

hwloc_bitmap_zero.exit:                           ; preds = %hwloc_bitmap_reset_by_ulongs.exit.i49, %.lr.ph.i.i47
  store i32 0, ptr %i.av, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

.unreachabledefault:                              ; preds = %bb.s
  unreachable

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.k, %hwloc_bitmap_zero.exit, %bb.t, %hwloc_bitmap_fill.exit
  %.038 = phi i32 [ 0, %hwloc_bitmap_fill.exit ], [ -1, %hwloc_bitmap_zero.exit ], [ 0, %bb.t ], [ -1, %bb.k ]
  ret i32 %.038
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @hwloc_bitmap_fill(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %hwloc_bitmap_reset_by_ulongs.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.e, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i.i, label %hwloc_bitmap_reset_by_ulongs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.d, align 8, !tbaa !16
  store i32 1, ptr %i.a, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.a, %bb.c
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i

hwloc_bitmap_reset_by_ulongs.exit:                ; preds = %bb.b
  %.pr = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq i32 %.pr, 0
  br i1 %.not.i, label %hwloc_bitmap__fill.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %hwloc_bitmap_reset_by_ulongs.exit.thread, %hwloc_bitmap_reset_by_ulongs.exit
  %i.g = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread ], [ %.pr, %hwloc_bitmap_reset_by_ulongs.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = zext i32 %i.g to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 -1, i64 %i.k, i1 false), !tbaa !17
  br label %hwloc_bitmap__fill.exit

hwloc_bitmap__fill.exit:                          ; preds = %hwloc_bitmap_reset_by_ulongs.exit, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.l, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @hwloc_bitmap_zero(ptr nofree noundef captures(none) initializes((16, 20)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %hwloc_bitmap_reset_by_ulongs.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call dereferenceable_or_null(8) ptr @realloc(ptr noundef %i.e, i64 noundef 8) #21 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i.i, label %hwloc_bitmap_reset_by_ulongs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.d, align 8, !tbaa !16
  store i32 1, ptr %i.a, align 4, !tbaa !15
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.a, %bb.c
  store i32 1, ptr %0, align 8, !tbaa !11
  br label %.lr.ph.i

hwloc_bitmap_reset_by_ulongs.exit:                ; preds = %bb.b
  %.pr = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq i32 %.pr, 0
  br i1 %.not.i, label %hwloc_bitmap__zero.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %hwloc_bitmap_reset_by_ulongs.exit.thread, %hwloc_bitmap_reset_by_ulongs.exit
  %i.g = phi i32 [ 1, %hwloc_bitmap_reset_by_ulongs.exit.thread ], [ %.pr, %hwloc_bitmap_reset_by_ulongs.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = zext i32 %i.g to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %i.k, i1 false), !tbaa !17
  br label %hwloc_bitmap__zero.exit

hwloc_bitmap__zero.exit:                          ; preds = %hwloc_bitmap_reset_by_ulongs.exit, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.l, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_list_snprintf(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !11     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = shl i32 %i.b, 6                          ; 2 uses
  %wide.trip.count.i = zext i32 %i.b to i64       ; 4 uses
end_hunk_0
begin_hunk_1_@hwloc_bitmap_from_ulongs:bb.a
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @hwloc_bitmap_to_ulong(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @hwloc_bitmap_to_ith_ulong(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  %i.b = icmp ult i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %.not = icmp ne i32 %i.i, 0
  %i.j = sext i1 %.not to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.g, %bb.b ], [ %i.j, %bb.c ]
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @hwloc_bitmap_to_ulongs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %.not10 = icmp eq i32 %1, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = zext i32 %i.a to i64                     ; 3 uses
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.f = icmp samesign ult i64 %indvars.iv, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.b, align 8, !tbaa !19
  %.not = icmp ne i32 %i.j, 0
  %i.k = sext i1 %.not to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.l, ptr %i.m, align 8, !tbaa !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.n = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.b, align 8, !tbaa !19
  %.not.1 = icmp ne i32 %i.o, 0
  %i.p = sext i1 %.not.1 to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = phi i64 [ %i.s, %bb.g ], [ %i.p, %bb.f ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.t, ptr %i.u, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !45

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod12 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.v = icmp samesign ult i64 %indvars.iv.epil.init, %i.d
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.w = load i32, ptr %i.b, align 8, !tbaa !19
  %.not.epil = icmp ne i32 %i.w, 0
  %i.x = sext i1 %.not.epil to i64
  br label %._crit_edge.loopexit.epilog-lcssa

bb.j:                                             ; preds = %.epil.preheader
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.epil.init
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !17
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.j, %bb.i
  %i.ab = phi i64 [ %i.aa, %bb.j ], [ %i.x, %bb.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 67108864) i32 @hwloc_bitmap_nr_ulongs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %hwloc_bitmap_last.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %hwloc_bitmap_last.exit

.lr.ph:                                           ; preds = %bb.b
  %i.f = zext nneg i32 %i.c to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %i.l, 0
  br i1 %i.h, label %bb.d, label %hwloc_bitmap_last.exit, !llvm.loop !46

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.i8 = phi i64 [ %i.f, %.lr.ph ], [ %i.i, %bb.c ]
  %i.i = add nsw i64 %indvars.iv.i8, -1           ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 4 uses
  %.not13.i = icmp eq i64 %i.k, 0
  %i.l = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %.not13.i, label %bb.c, label %.thread.i, !llvm.loop !46

.thread.i:                                        ; preds = %bb.d
  %i.m = icmp ugt i64 %i.k, 4294967295            ; 2 uses
  %i.n = lshr i64 %i.k, 32
  %spec.select.i.i = select i1 %i.m, i64 %i.n, i64 %i.k ; 3 uses
  %spec.select33.i.i = select i1 %i.m, i32 33, i32 1 ; 2 uses
  %.not28.i.i = icmp samesign ult i64 %spec.select.i.i, 65536 ; 2 uses
  %i.o = lshr i64 %spec.select.i.i, 16
  %i.p = or disjoint i32 %spec.select33.i.i, 16
  %.122.i.i = select i1 %.not28.i.i, i64 %spec.select.i.i, i64 %i.o ; 3 uses
  %.1.i.i = select i1 %.not28.i.i, i32 %spec.select33.i.i, i32 %i.p ; 2 uses
  %.not29.i.i = icmp samesign ult i64 %.122.i.i, 256 ; 2 uses
  %i.q = lshr i64 %.122.i.i, 8
  %i.r = or disjoint i32 %.1.i.i, 8
  %.223.i.i = select i1 %.not29.i.i, i64 %.122.i.i, i64 %i.q ; 3 uses
  %.2.i.i = select i1 %.not29.i.i, i32 %.1.i.i, i32 %i.r ; 2 uses
  %.not30.i.i = icmp samesign ult i64 %.223.i.i, 16 ; 2 uses
  %i.s = lshr i64 %.223.i.i, 4
  %i.t = or disjoint i32 %.2.i.i, 4
  %.324.i.i = select i1 %.not30.i.i, i64 %.223.i.i, i64 %i.s ; 3 uses
  %.3.i.i = select i1 %.not30.i.i, i32 %.2.i.i, i32 %i.t ; 2 uses
  %i.u = and i64 %.324.i.i, 12
  %.not31.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  %i.v = lshr i64 %.324.i.i, 2
  %i.w = add nuw nsw i32 %.3.i.i, 2
  %.425.i.i = select i1 %.not31.i.i, i64 %.324.i.i, i64 %i.v
  %.4.i.i = select i1 %.not31.i.i, i32 %.3.i.i, i32 %i.w
  %i.x = trunc nuw nsw i64 %.425.i.i to i32
  %i.y = lshr i32 %i.x, 1
  %i.z = and i32 %i.y, 1
  %i.aa = shl nuw nsw i32 %i.l, 6
  %i.ab = or disjoint i32 %i.aa, 63
  %i.ac = add i32 %i.ab, %.4.i.i
  %i.ad = add i32 %i.ac, %i.z
  %i.ae = lshr i32 %i.ad, 6
  br label %hwloc_bitmap_last.exit

hwloc_bitmap_last.exit:                           ; preds = %bb.c, %bb.b, %.thread.i, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.ae, %.thread.i ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_last(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.f = zext nneg i32 %i.c to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %i.l, 0
  br i1 %i.h, label %bb.d, label %.loopexit, !llvm.loop !46

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv20 = phi i64 [ %i.f, %.lr.ph ], [ %i.i, %bb.c ]
  %i.i = add nsw i64 %indvars.iv20, -1            ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 4 uses
  %.not13 = icmp eq i64 %i.k, 0
  %i.l = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %.not13, label %bb.c, label %.thread, !llvm.loop !46

.thread:                                          ; preds = %bb.d
  %i.m = icmp ugt i64 %i.k, 4294967295            ; 2 uses
  %i.n = lshr i64 %i.k, 32
  %spec.select.i = select i1 %i.m, i64 %i.n, i64 %i.k ; 3 uses
  %spec.select33.i = select i1 %i.m, i32 33, i32 1 ; 2 uses
  %.not28.i = icmp samesign ult i64 %spec.select.i, 65536 ; 2 uses
  %i.o = lshr i64 %spec.select.i, 16
  %i.p = or disjoint i32 %spec.select33.i, 16
  %.122.i = select i1 %.not28.i, i64 %spec.select.i, i64 %i.o ; 3 uses
  %.1.i = select i1 %.not28.i, i32 %spec.select33.i, i32 %i.p ; 2 uses
  %.not29.i = icmp samesign ult i64 %.122.i, 256  ; 2 uses
  %i.q = lshr i64 %.122.i, 8
  %i.r = or disjoint i32 %.1.i, 8
  %.223.i = select i1 %.not29.i, i64 %.122.i, i64 %i.q ; 3 uses
  %.2.i = select i1 %.not29.i, i32 %.1.i, i32 %i.r ; 2 uses
  %.not30.i = icmp samesign ult i64 %.223.i, 16   ; 2 uses
  %i.s = lshr i64 %.223.i, 4
  %i.t = or disjoint i32 %.2.i, 4
  %.324.i = select i1 %.not30.i, i64 %.223.i, i64 %i.s ; 3 uses
  %.3.i = select i1 %.not30.i, i32 %.2.i, i32 %i.t ; 2 uses
  %i.u = and i64 %.324.i, 12
  %.not31.i = icmp eq i64 %i.u, 0                 ; 2 uses
  %i.v = lshr i64 %.324.i, 2
  %i.w = add nuw nsw i32 %.3.i, 2
  %.425.i = select i1 %.not31.i, i64 %.324.i, i64 %i.v
  %.4.i = select i1 %.not31.i, i32 %.3.i, i32 %i.w
  %i.x = trunc nuw nsw i64 %.425.i to i32
  %i.y = lshr i32 %i.x, 1
  %i.z = and i32 %i.y, 1
  %i.aa = shl nuw nsw i32 %i.l, 6
  %.5.i = add nsw i32 %i.aa, -1
  %i.ab = add i32 %.5.i, %.4.i
  %i.ac = add i32 %i.ab, %i.z
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.thread, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %i.ac, %.thread ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_only(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i32 %1, 6                           ; 4 uses
  %i.b = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %hwloc_flsl_manual.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %.not28.i.i.i = icmp ult i32 %1, 4194304        ; 2 uses
  %i.d = lshr i64 %i.c, 16
  %.122.i.i.i = select i1 %.not28.i.i.i, i64 %i.c, i64 %i.d ; 3 uses
  %.1.i.i.i = select i1 %.not28.i.i.i, i32 1, i32 17 ; 2 uses
  %.not29.i.i.i = icmp samesign ult i64 %.122.i.i.i, 256 ; 2 uses
  %i.e = lshr i64 %.122.i.i.i, 8
  %i.f = or disjoint i32 %.1.i.i.i, 8
  %.223.i.i.i = select i1 %.not29.i.i.i, i64 %.122.i.i.i, i64 %i.e ; 3 uses
  %.2.i.i.i = select i1 %.not29.i.i.i, i32 %.1.i.i.i, i32 %i.f ; 2 uses
  %.not30.i.i.i = icmp samesign ult i64 %.223.i.i.i, 16 ; 2 uses
  %i.g = lshr i64 %.223.i.i.i, 4
  %i.h = or disjoint i32 %.2.i.i.i, 4
  %.324.i.i.i = select i1 %.not30.i.i.i, i64 %.223.i.i.i, i64 %i.g ; 3 uses
  %.3.i.i.i = select i1 %.not30.i.i.i, i32 %.2.i.i.i, i32 %i.h ; 2 uses
  %i.i = and i64 %.324.i.i.i, 12
  %.not31.i.i.i = icmp eq i64 %i.i, 0             ; 2 uses
  %i.j = lshr i64 %.324.i.i.i, 2
  %i.k = or disjoint i32 %.3.i.i.i, 2
  %.425.i.i.i = select i1 %.not31.i.i.i, i64 %.324.i.i.i, i64 %i.j
  %.4.i.i.i = select i1 %.not31.i.i.i, i32 %.3.i.i.i, i32 %i.k
  %i.l = trunc nuw nsw i64 %.425.i.i.i to i32
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.m, 1
  %.5.i.i.i = add nuw nsw i32 %i.n, %.4.i.i.i
  br label %hwloc_flsl_manual.exit.i.i

hwloc_flsl_manual.exit.i.i:                       ; preds = %bb.b, %bb.a
  %.026.i.i.i = phi i32 [ %.5.i.i.i, %bb.b ], [ 0, %bb.a ]
  %i.o = shl nuw i32 1, %.026.i.i.i               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = icmp ugt i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  br i1 %i.r, label %bb.c, label %hwloc_bitmap__zero.exit

bb.c:                                             ; preds = %hwloc_flsl_manual.exit.i.i
  %i.u = zext i32 %i.o to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call ptr @realloc(ptr noundef %i.t, i64 noundef %i.v) #21 ; 3 uses
  %.not.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i, label %hwloc_bitmap_reset_by_ulongs.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.w, ptr %i.s, align 8, !tbaa !16
  store i32 %i.o, ptr %i.p, align 4, !tbaa !15
  br label %hwloc_bitmap__zero.exit

hwloc_bitmap__zero.exit:                          ; preds = %hwloc_flsl_manual.exit.i.i, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.t, %hwloc_flsl_manual.exit.i.i ] ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !11
  %i.y = shl nuw nsw i32 %i.b, 3
  %i.z = zext nneg i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, i8 0, i64 %i.z, i1 false), !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !19
  %i.ab = and i32 %1, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = zext nneg i32 %i.a to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17
  %i.ah = or i64 %i.ag, %i.ad
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !17
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.c, %hwloc_bitmap__zero.exit
  %.0 = phi i32 [ 0, %hwloc_bitmap__zero.exit ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_allbut(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i32 %1, 6                           ; 4 uses
  %i.b = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i, label %hwloc_flsl_manual.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 2 uses
  %.not28.i.i.i = icmp ult i32 %1, 4194304        ; 2 uses
  %i.d = lshr i64 %i.c, 16
  %.122.i.i.i = select i1 %.not28.i.i.i, i64 %i.c, i64 %i.d ; 3 uses
  %.1.i.i.i = select i1 %.not28.i.i.i, i32 1, i32 17 ; 2 uses
  %.not29.i.i.i = icmp samesign ult i64 %.122.i.i.i, 256 ; 2 uses
  %i.e = lshr i64 %.122.i.i.i, 8
  %i.f = or disjoint i32 %.1.i.i.i, 8
  %.223.i.i.i = select i1 %.not29.i.i.i, i64 %.122.i.i.i, i64 %i.e ; 3 uses
  %.2.i.i.i = select i1 %.not29.i.i.i, i32 %.1.i.i.i, i32 %i.f ; 2 uses
  %.not30.i.i.i = icmp samesign ult i64 %.223.i.i.i, 16 ; 2 uses
  %i.g = lshr i64 %.223.i.i.i, 4
  %i.h = or disjoint i32 %.2.i.i.i, 4
  %.324.i.i.i = select i1 %.not30.i.i.i, i64 %.223.i.i.i, i64 %i.g ; 3 uses
  %.3.i.i.i = select i1 %.not30.i.i.i, i32 %.2.i.i.i, i32 %i.h ; 2 uses
  %i.i = and i64 %.324.i.i.i, 12
  %.not31.i.i.i = icmp eq i64 %i.i, 0             ; 2 uses
  %i.j = lshr i64 %.324.i.i.i, 2
  %i.k = or disjoint i32 %.3.i.i.i, 2
  %.425.i.i.i = select i1 %.not31.i.i.i, i64 %.324.i.i.i, i64 %i.j
  %.4.i.i.i = select i1 %.not31.i.i.i, i32 %.3.i.i.i, i32 %i.k
  %i.l = trunc nuw nsw i64 %.425.i.i.i to i32
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.m, 1
  %.5.i.i.i = add nuw nsw i32 %i.n, %.4.i.i.i
  br label %hwloc_flsl_manual.exit.i.i

hwloc_flsl_manual.exit.i.i:                       ; preds = %bb.b, %bb.a
  %.026.i.i.i = phi i32 [ %.5.i.i.i, %bb.b ], [ 0, %bb.a ]
  %i.o = shl nuw i32 1, %.026.i.i.i               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = icmp ugt i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  br i1 %i.r, label %bb.c, label %hwloc_bitmap__fill.exit

bb.c:                                             ; preds = %hwloc_flsl_manual.exit.i.i
  %i.u = zext i32 %i.o to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call ptr @realloc(ptr noundef %i.t, i64 noundef %i.v) #21 ; 3 uses
  %.not.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i, label %hwloc_bitmap_reset_by_ulongs.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.w, ptr %i.s, align 8, !tbaa !16
  store i32 %i.o, ptr %i.p, align 4, !tbaa !15
  br label %hwloc_bitmap__fill.exit

hwloc_bitmap__fill.exit:                          ; preds = %hwloc_flsl_manual.exit.i.i, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.t, %hwloc_flsl_manual.exit.i.i ] ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !11
  %i.y = shl nuw nsw i32 %i.b, 3
  %i.z = zext nneg i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, i8 -1, i64 %i.z, i1 false), !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.aa, align 8, !tbaa !19
  %i.ab = and i32 %1, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = xor i64 %i.ad, -1
  %i.af = zext nneg i32 %i.a to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.ai = and i64 %i.ah, %i.ae
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !17
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.c, %hwloc_bitmap__fill.exit
  %.0 = phi i32 [ 0, %hwloc_bitmap__fill.exit ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @hwloc_bitmap_realloc_by_ulongs(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %bb.b, label %hwloc_bitmap_enlarge_by_ulongs.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %i.c = add nsw i64 %i.b, -1                     ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %hwloc_flsl_manual.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28.i.i = icmp ult i32 %1, 65537            ; 2 uses
  %i.d = lshr i64 %i.c, 16
  %.122.i.i = select i1 %.not28.i.i, i64 %i.c, i64 %i.d ; 3 uses
  %.1.i.i = select i1 %.not28.i.i, i32 1, i32 17  ; 2 uses
  %.not29.i.i = icmp samesign ult i64 %.122.i.i, 256 ; 2 uses
  %i.e = lshr i64 %.122.i.i, 8
  %i.f = or disjoint i32 %.1.i.i, 8
  %.223.i.i = select i1 %.not29.i.i, i64 %.122.i.i, i64 %i.e ; 3 uses
  %.2.i.i = select i1 %.not29.i.i, i32 %.1.i.i, i32 %i.f ; 2 uses
  %.not30.i.i = icmp samesign ult i64 %.223.i.i, 16 ; 2 uses
  %i.g = lshr i64 %.223.i.i, 4
  %i.h = or disjoint i32 %.2.i.i, 4
  %.324.i.i = select i1 %.not30.i.i, i64 %.223.i.i, i64 %i.g ; 3 uses
  %.3.i.i = select i1 %.not30.i.i, i32 %.2.i.i, i32 %i.h ; 2 uses
end_hunk_1
begin_hunk_2_@hwloc_bitmap_not:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.av = load i64, ptr %i.au, align 8, !tbaa !17
  %i.aw = xor i64 %i.av, -1
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = xor i64 %i.az, -1
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !17
  %i.be = xor i64 %i.bd, -1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.1
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !17
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !17
  %i.bi = xor i64 %i.bh, -1
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.2
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.b
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %hwloc_bitmap_reset_by_ulongs.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !19
  %.not = icmp eq i32 %i.bl, 0
  %i.bm = zext i1 %.not to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !19
  br label %hwloc_bitmap_reset_by_ulongs.exit.thread

hwloc_bitmap_reset_by_ulongs.exit.thread:         ; preds = %bb.c, %._crit_edge
  %.012 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.c ]
  ret i32 %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hwloc_bitmap_first(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 3 uses
  %.not23 = icmp eq i32 %i.a, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %wide.trip.count = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not15 = icmp eq i64 %i.e, 0
  br i1 %.not15, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %.not = icmp eq i32 %i.g, 0
  %i.h = shl i32 %i.a, 6
  %spec.select = select i1 %.not, i32 -1, i32 %i.h
  br label %bb.d

.loopexit:                                        ; preds = %bb.b
  %i.i = trunc nuw i64 %indvars.iv to i32
  %i.j = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true)
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.i, 6
  %i.m = or disjoint i32 %i.l, %i.k
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %._crit_edge
  %.2 = phi i32 [ %spec.select, %._crit_edge ], [ %i.m, %.loopexit ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @hwloc_bitmap_first_unset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 3 uses
  %.not22 = icmp eq i32 %i.a, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %wide.trip.count = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not15 = icmp eq i64 %i.e, -1
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nuw i64 %indvars.iv to i32
  %i.g = xor i64 %i.e, -1
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = shl i32 %i.f, 6
  %i.k = or disjoint i32 %i.j, %i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19
  %.not = icmp eq i32 %i.m, 0
  %i.n = shl i32 %i.a, 6
  %spec.select = select i1 %.not, i32 %i.n, i32 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge
  %.2 = phi i32 [ %i.k, %bb.c ], [ %spec.select, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, -2147483648) i32 @hwloc_bitmap_last_unset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.f = zext nneg i32 %i.c to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %i.l, 0
  br i1 %i.h, label %bb.d, label %.loopexit, !llvm.loop !98

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv20 = phi i64 [ %i.f, %.lr.ph ], [ %i.i, %bb.c ]
  %i.i = add nsw i64 %indvars.iv20, -1            ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 3 uses
  %.not13 = icmp eq i64 %i.k, -1
  %i.l = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %.not13, label %bb.c, label %.thread, !llvm.loop !98

.thread:                                          ; preds = %bb.d
  %i.m = xor i64 %i.k, -1                         ; 2 uses
  %i.n = icmp ult i64 %i.k, -4294967296           ; 2 uses
  %i.o = lshr i64 %i.m, 32
  %spec.select.i = select i1 %i.n, i64 %i.o, i64 %i.m ; 3 uses
  %spec.select33.i = select i1 %i.n, i32 33, i32 1 ; 2 uses
  %.not28.i = icmp samesign ult i64 %spec.select.i, 65536 ; 2 uses
  %i.p = lshr i64 %spec.select.i, 16
  %i.q = or disjoint i32 %spec.select33.i, 16
  %.122.i = select i1 %.not28.i, i64 %spec.select.i, i64 %i.p ; 3 uses
  %.1.i = select i1 %.not28.i, i32 %spec.select33.i, i32 %i.q ; 2 uses
  %.not29.i = icmp samesign ult i64 %.122.i, 256  ; 2 uses
  %i.r = lshr i64 %.122.i, 8
  %i.s = or disjoint i32 %.1.i, 8
  %.223.i = select i1 %.not29.i, i64 %.122.i, i64 %i.r ; 3 uses
  %.2.i = select i1 %.not29.i, i32 %.1.i, i32 %i.s ; 2 uses
  %.not30.i = icmp samesign ult i64 %.223.i, 16   ; 2 uses
  %i.t = lshr i64 %.223.i, 4
  %i.u = or disjoint i32 %.2.i, 4
  %.324.i = select i1 %.not30.i, i64 %.223.i, i64 %i.t ; 3 uses
  %.3.i = select i1 %.not30.i, i32 %.2.i, i32 %i.u ; 2 uses
  %i.v = and i64 %.324.i, 12
  %.not31.i = icmp eq i64 %i.v, 0                 ; 2 uses
  %i.w = lshr i64 %.324.i, 2
  %i.x = add nuw nsw i32 %.3.i, 2
  %.425.i = select i1 %.not31.i, i64 %.324.i, i64 %i.w
  %.4.i = select i1 %.not31.i, i32 %.3.i, i32 %i.x
  %i.y = trunc nuw nsw i64 %.425.i to i32
  %i.z = lshr i32 %i.y, 1
  %i.aa = and i32 %i.z, 1
  %i.ab = shl nuw nsw i32 %i.l, 6
  %.5.i = add nsw i32 %i.ab, -1
  %i.ac = add i32 %.5.i, %.4.i
  %i.ad = add i32 %i.ac, %i.aa
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.thread, %bb.a
  %.2 = phi i32 [ %i.ad, %.thread ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_bitmap_singlify(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 5 uses
  %.not30 = icmp eq i32 %i.a, 0
  br i1 %.not30, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.a to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %i.a, 1
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %.02127 = phi i32 [ 0, %.lr.ph.new ], [ %.2.1, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %.not25 = icmp eq i32 %.02127, 0
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  br i1 %.not25, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %.not26 = icmp eq i64 %i.f, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %neg = sub i64 0, %i.f
  %i.g = and i64 %i.f, %neg
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i64 [ %i.g, %bb.d ], [ 0, %bb.b ]
  store i64 %.sink, ptr %i.e, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.not25.1 = phi i1 [ true, %bb.c ], [ false, %.sink.split ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %.not25.1, label %bb.f, label %.sink.split.1

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %.not26.1 = icmp eq i64 %i.j, 0
  br i1 %.not26.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %neg.1 = sub i64 0, %i.j
  %i.k = and i64 %i.j, %neg.1
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.g, %bb.e
  %.sink.1 = phi i64 [ %i.k, %bb.g ], [ 0, %bb.e ]
  store i64 %.sink.1, ptr %i.i, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.1, %bb.f
  %i.l = phi i1 [ true, %bb.f ], [ false, %.sink.split.1 ]
  %.2.1 = phi i32 [ 0, %bb.f ], [ 1, %.sink.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !99

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.02127.epil.init = phi i32 [ 0, %.lr.ph ], [ %.2.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod39 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %.not25.epil = icmp eq i32 %.02127.epil.init, 0
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init ; 2 uses
  br i1 %.not25.epil, label %bb.i, label %.sink.split.epil

bb.i:                                             ; preds = %.epil.preheader
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %.not26.epil = icmp eq i64 %i.o, 0
  br i1 %.not26.epil, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %neg.epil = sub i64 0, %i.o
  %i.p = and i64 %i.o, %neg.epil
  br label %.sink.split.epil

.sink.split.epil:                                 ; preds = %bb.j, %.epil.preheader
  %.sink.epil = phi i64 [ %i.p, %bb.j ], [ 0, %.epil.preheader ]
  store i64 %.sink.epil, ptr %i.n, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %.sink.split.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i1 [ %i.l, %._crit_edge.unr-lcssa ], [ true, %bb.i ], [ false, %.sink.split.epil ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !19
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %hwloc_bitmap_set.exit, label %bb.k

._crit_edge.thread:                               ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !19
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %hwloc_bitmap_set.exit, label %.thread

bb.k:                                             ; preds = %._crit_edge
  br i1 %.lcssa, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.q, align 8, !tbaa !19
  br label %hwloc_bitmap_set.exit

.thread:                                          ; preds = %._crit_edge.thread, %bb.k
  %i.u = phi ptr [ %i.q, %bb.k ], [ %i.s, %._crit_edge.thread ]
  %i.v = and i32 %i.a, 67108863                   ; 2 uses
  store i32 0, ptr %i.u, align 8, !tbaa !19
  %i.w = add nuw nsw i32 %i.v, 1
  %i.x = tail call fastcc i32 @hwloc_bitmap_realloc_by_ulongs(ptr noundef nonnull %0, i32 noundef %i.w)
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %hwloc_bitmap_set.exit, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = zext nneg i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !17
  %i.ae = or i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !17
  br label %hwloc_bitmap_set.exit

hwloc_bitmap_set.exit:                            ; preds = %._crit_edge.thread, %bb.m, %.thread, %._crit_edge, %bb.l
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.l ], [ 0, %bb.m ], [ -1, %.thread ], [ 0, %._crit_edge.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -64, 65) i32 @hwloc_bitmap_compare_first(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11     ; 7 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !11     ; 7 uses
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.a, i32 %i.b) ; 6 uses
  %.not100 = icmp eq i32 %i.c, 0
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !100

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 3 uses
  %i.l = icmp eq i64 %i.i, 0
  %i.m = icmp eq i64 %i.k, 0
  %or.cond.not = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.i, i1 true)
  %i.o = icmp ne i64 %i.i, 0                      ; 2 uses
  %i.p = trunc nuw nsw i64 %i.n to i32
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = select i1 %i.o, i32 %i.q, i32 0          ; 2 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.k, i1 true)
  %i.t = icmp ne i64 %i.k, 0                      ; 2 uses
  %i.u = trunc nuw nsw i64 %i.s to i32
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = select i1 %i.t, i32 %i.v, i32 0          ; 2 uses
  %or.cond5 = select i1 %i.o, i1 %i.t, i1 false
  %i.x = sub nsw i32 %i.r, %i.w
  %i.y = sub nsw i32 %i.w, %i.r
end_hunk_2
