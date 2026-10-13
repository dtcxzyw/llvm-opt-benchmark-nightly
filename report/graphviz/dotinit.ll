Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/dotinit?download=true
inline.NumInlined: 28
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@attach_phase_attrs:bb.a
  %i.b = tail call ptr @agattr_text(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4) #12
  %i.c = tail call ptr @agfstnode(ptr noundef %0) #12 ; 3 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp samesign ugt i32 %1, 1
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.014.us = phi ptr [ %i.r, %.lr.ph.split.us ], [ %i.c, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.e = getelementptr inbounds nuw i8, ptr %.014.us, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load i32, ptr %i.g, align 8, !tbaa !67
  %i.i = sext i32 %i.h to i64
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 41, ptr noundef nonnull @.str.16, i64 noundef range(i64 -2147483648, 2147483648) %i.i) #12 ; 0 uses
  %i.k = call i32 @agxset(ptr noundef nonnull %.014.us, ptr noundef %i.a, ptr noundef nonnull %2) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 364
  %i.n = load i32, ptr %i.m, align 4, !tbaa !155
  %i.o = sext i32 %i.n to i64
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 41, ptr noundef nonnull @.str.16, i64 noundef range(i64 -2147483648, 2147483648) %i.o) #12 ; 0 uses
  %i.q = call i32 @agxset(ptr noundef nonnull %.014.us, ptr noundef %i.b, ptr noundef nonnull %3) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.r = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.014.us) #12 ; 2 uses
  %.not.us = icmp eq ptr %i.r, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !154

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.014 = phi ptr [ %i.z, %.lr.ph.split ], [ %i.c, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.s = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 360
  %i.v = load i32, ptr %i.u, align 8, !tbaa !67
  %i.w = sext i32 %i.v to i64
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 41, ptr noundef nonnull @.str.16, i64 noundef range(i64 -2147483648, 2147483648) %i.w) #12 ; 0 uses
  %i.y = call i32 @agxset(ptr noundef nonnull %.014, ptr noundef %i.a, ptr noundef nonnull %2) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.z = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.014) #12 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !154

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

declare i32 @dot_mincross(ptr noundef) local_unnamed_addr #2

declare i32 @dot_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @removeFill(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agsubg(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 0) #12 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @agfstnode(ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not1719 = icmp eq ptr %i.b, null
  br i1 %.not1719, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %remove_from_rank.exit
  %.020 = phi ptr [ %i.b, %.lr.ph ], [ %i.d, %remove_from_rank.exit ] ; 6 uses
  %i.d = tail call ptr @agnxtnode(ptr noundef nonnull %i.a, ptr noundef nonnull %.020) #12 ; 2 uses
  tail call void @delete_fast_node(ptr noundef %0, ptr noundef nonnull %.020) #12
  %i.e = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load i32, ptr %i.g, align 8, !tbaa !67
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58
  %i.l = sext i32 %i.h to i64
  %i.m = getelementptr inbounds [88 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !158  ; 5 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %remove_from_rank.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !160
  %i.t = icmp eq ptr %i.s, %.020
  br i1 %i.t, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %.129.i = add nuw nsw i32 %i.u, 1
  %i.v = icmp slt i32 %.129.i, %i.n
  br i1 %i.v, label %.lr.ph32.preheader.i, label %._crit_edge.i

.lr.ph32.preheader.i:                             ; preds = %.preheader.i
  %i.w = shl nuw nsw i64 %indvars.iv.i, 3
  %scevgep.i = getelementptr nuw i8, ptr %i.q, i64 %i.w ; 2 uses
  %scevgep36.i = getelementptr i8, ptr %scevgep.i, i64 8
  %i.x = add nsw i32 %i.n, -2
  %i.y = sub i32 %i.x, %i.u
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %scevgep36.i, i64 %i.ab, i1 false), !tbaa !160
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph32.preheader.i, %.preheader.i
  %i.ac = add nsw i32 %i.n, -1
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !158
  br label %remove_from_rank.exit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %remove_from_rank.exit, label %bb.d, !llvm.loop !156

remove_from_rank.exit:                            ; preds = %bb.e, %bb.c, %._crit_edge.i
  tail call fastcc void @dot_cleanup_node(ptr noundef %.020)
  %i.ad = tail call i32 @agdelnode(ptr noundef %0, ptr noundef nonnull %.020) #12 ; 0 uses
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %._crit_edge, label %bb.c, !llvm.loop !157

._crit_edge:                                      ; preds = %remove_from_rank.exit, %bb.b
  %i.ae = tail call i32 @agdelsubg(ptr noundef %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @dot_sameports(ptr noundef) local_unnamed_addr #2

declare i32 @dot_splines(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @mapbool(ptr noundef) local_unnamed_addr #2

declare ptr @agget(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dot_compoundEdges(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @flockfile(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @funlockfile(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @agxset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @agsubg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @delete_fast_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @agdelnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @agdelsubg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mapClust(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @copyCluster(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agbindrec(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 400, i32 noundef 1) #12 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !tbaa.struct !162
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 395
  %i.j = load i8, ptr %i.i, align 1, !tbaa !163
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 395
  store i8 %i.j, ptr %i.l, align 1, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false)
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 236
  %i.q = load i32, ptr %i.p, align 4, !tbaa !65   ; 4 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !13   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 236
  store i32 %i.q, ptr %i.s, align 4, !tbaa !65
  %i.t = add i32 %i.q, 1                          ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %gv_calloc.exit.thread, label %bb.b

gv_calloc.exit.thread:                            ; preds = %bb.a
  %i.v = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #13
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  store ptr %i.v, ptr %i.w, align 8, !tbaa !57
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.q, -1
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.1, i64 noundef range(i64 -2147483647, 2147483648) %i.u, i64 noundef 8) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483647, 2147483648) %i.u, i64 noundef 8) #13 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.ac = shl nuw nsw i64 %i.u, 3
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.2, i64 noundef %i.ac) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !57
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %gv_calloc.exit
  %wide.trip.count = zext i32 %i.t to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.ak = tail call ptr @mapClust(ptr noundef %i.aj) #12 ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !63
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !63
  tail call fastcc void @copyCluster(ptr noundef %i.at, ptr noundef %i.ak)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !161

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !13
  %.pre27 = load ptr, ptr %i.b, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %gv_calloc.exit.thread, %._crit_edge.loopexit, %gv_calloc.exit
  %i.au = phi ptr [ %.pre27, %._crit_edge.loopexit ], [ %i.r, %gv_calloc.exit ], [ %i.r, %gv_calloc.exit.thread ]
  %i.av = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.o, %gv_calloc.exit ], [ %i.o, %gv_calloc.exit.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !61
  store ptr null, ptr %i.aw, align 8, !tbaa !61
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { cold }

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
!8 = !{!"long", !4, i64 0}
!9 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !8, i64 8}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS7Agrec_s", !10, i64 0}
!12 = !{!"Agobj_s", !9, i64 0, !11, i64 16}
!13 = !{!12, !11, i64 16}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"Agrec_s", !14, i64 0, !11, i64 8}
!16 = !{!"p1 _ZTS8layout_t", !10, i64 0}
!17 = !{!"p1 _ZTS11textlabel_t", !10, i64 0}
!18 = !{!"double", !4, i64 0}
!19 = !{!"pointf_s", !18, i64 0, !18, i64 8}
!20 = !{!"", !19, i64 0, !19, i64 16}
!21 = !{!"_Bool", !4, i64 0}
!22 = !{!"short", !4, i64 0}
!23 = !{!"p1 _ZTS5GVC_s", !10, i64 0}
!24 = !{!"any p2 pointer", !10, i64 0}
!25 = !{!"p2 _ZTS8Agnode_s", !24, i64 0}
!26 = !{!"p2 double", !24, i64 0}
!27 = !{!"any p3 pointer", !24, i64 0}
!28 = !{!"p3 double", !27, i64 0}
!29 = !{!"p2 _ZTS8Agraph_s", !24, i64 0}
!30 = !{!"p1 _ZTS8Agraph_s", !10, i64 0}
!31 = !{!"p1 _ZTS8Agnode_s", !10, i64 0}
!32 = !{!"p1 _ZTS6rank_t", !10, i64 0}
!33 = !{!"nlist_t", !25, i64 0, !8, i64 8}
!34 = !{!"Agraphinfo_t", !15, i64 0, !16, i64 16, !17, i64 24, !20, i64 32, !4, i64 64, !4, i64 128, !4, i64 129, !21, i64 130, !4, i64 131, !5, i64 132, !18, i64 136, !18, i64 144, !22, i64 152, !10, i64 160, !23, i64 168, !10, i64 176, !25, i64 184, !5, i64 192, !26, i64 200, !26, i64 208, !26, i64 216, !28, i64 224, !22, i64 232, !22, i64 234, !5, i64 236, !29, i64 240, !30, i64 248, !31, i64 256, !32, i64 264, !30, i64 272, !5, i64 280, !31, i64 288, !31, i64 296, !33, i64 304, !31, i64 320, !31, i64 328, !5, i64 336, !5, i64 340, !21, i64 344, !4, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !31, i64 360, !31, i64 368, !31, i64 376, !25, i64 384, !21, i64 392, !4, i64 393, !4, i64 394, !4, i64 395, !21, i64 396}
!35 = !{!34, !5, i64 132}
!36 = !{!"p1 _ZTS10shape_desc", !10, i64 0}
!37 = !{!"p1 double", !10, i64 0}
!38 = !{!"p2 _ZTS8Agedge_s", !24, i64 0}
!39 = !{!"elist", !38, i64 0, !8, i64 8}
!40 = !{!"p1 _ZTS8Agedge_s", !10, i64 0}
!41 = !{!"Agnodeinfo_t", !15, i64 0, !36, i64 16, !10, i64 24, !19, i64 32, !18, i64 48, !18, i64 56, !20, i64 64, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !17, i64 136, !17, i64 144, !10, i64 152, !4, i64 160, !4, i64 161, !21, i64 162, !4, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !37, i64 176, !18, i64 184, !4, i64 192, !21, i64 193, !31, i64 200, !31, i64 208, !4, i64 216, !8, i64 224, !4, i64 232, !4, i64 233, !4, i64 234, !31, i64 240, !31, i64 248, !39, i64 256, !39, i64 272, !39, i64 288, !39, i64 304, !39, i64 320, !30, i64 336, !5, i64 344, !31, i64 352, !5, i64 360, !5, i64 364, !18, i64 368, !39, i64 376, !39, i64 392, !39, i64 408, !39, i64 424, !40, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !4, i64 464}
!42 = !{!41, !8, i64 264}
!43 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!41, !38, i64 256}
!46 = !{!41, !8, i64 280}
!47 = !{!41, !38, i64 272}
!48 = !{!41, !38, i64 304}
!49 = !{!41, !38, i64 288}
!50 = !{!41, !38, i64 320}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"p1 _ZTS9dtlink_s_", !10, i64 0}
!53 = !{!"dtlink_s_", !52, i64 0, !4, i64 8}
!54 = !{!"Agedge_s", !12, i64 0, !53, i64 24, !53, i64 40, !31, i64 56}
!55 = !{!4, !4, i64 0}
!56 = !{!34, !16, i64 16}
!57 = !{!34, !29, i64 240}
!58 = !{!34, !32, i64 264}
!59 = !{!"p1 _ZTS11adjmatrix_t", !10, i64 0}
!60 = !{!"rank_t", !5, i64 0, !25, i64 8, !5, i64 16, !25, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !21, i64 64, !21, i64 65, !8, i64 72, !59, i64 80}
!61 = !{!34, !17, i64 24}
!62 = !{!8, !8, i64 0}
!63 = !{!30, !30, i64 0}
!64 = !{!18, !18, i64 0}
!65 = !{!34, !5, i64 236}
!66 = !{!34, !30, i64 248}
!67 = !{!41, !5, i64 360}
!68 = distinct !{!68, !51}
!69 = distinct !{!69, !51}
!70 = distinct !{!70, !51}
!71 = !{!41, !8, i64 312}
!72 = !{!41, !8, i64 296}
!73 = !{!41, !8, i64 328}
!74 = !{!41, !5, i64 344}
!75 = !{!"p1 _ZTS7Agsym_s", !10, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 _ZTS7splines", !10, i64 0}
!78 = !{!"port", !19, i64 0, !18, i64 16, !10, i64 24, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !4, i64 36, !4, i64 37, !14, i64 40}
!79 = !{!"p1 _ZTS8pointf_s", !10, i64 0}
!80 = !{!"Ppoly_t", !79, i64 0, !8, i64 8}
!81 = !{!"Agedgeinfo_t", !15, i64 0, !77, i64 16, !78, i64 24, !78, i64 72, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !4, i64 152, !4, i64 153, !4, i64 154, !4, i64 155, !4, i64 156, !40, i64 160, !10, i64 168, !18, i64 176, !18, i64 184, !80, i64 192, !4, i64 208, !21, i64 209, !22, i64 210, !5, i64 212, !5, i64 216, !5, i64 220, !22, i64 224, !5, i64 228, !40, i64 232}
!82 = !{!81, !5, i64 212}
!83 = !{!54, !31, i64 56}
!84 = !{!81, !22, i64 210}
!85 = !{!81, !22, i64 224}
!86 = !{!81, !4, i64 208}
!87 = !{!81, !5, i64 228}
!88 = distinct !{!88, !51}
!89 = distinct !{!89, !51}
!90 = distinct !{!90, !51}
!91 = distinct !{!91, !51}
!92 = distinct !{!92, !51}
!93 = !{!34, !31, i64 256}
!94 = !{!41, !31, i64 240}
!95 = !{!40, !40, i64 0}
!96 = !{!54, !11, i64 16}
!97 = !{!41, !4, i64 216}
!98 = !{!"Agsubnode_s", !53, i64 0, !53, i64 16, !31, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64}
!99 = !{!"Agnode_s", !12, i64 0, !30, i64 24, !98, i64 32}
!100 = !{!99, !11, i64 16}
!101 = !{!41, !17, i64 136}
!102 = !{!41, !17, i64 144}
!103 = !{!41, !36, i64 16}
!104 = !{!"p1 _ZTS15shape_functions", !10, i64 0}
!105 = !{!"p1 _ZTS9polygon_t", !10, i64 0}
!106 = !{!"shape_desc", !14, i64 0, !104, i64 8, !105, i64 16, !21, i64 24}
!107 = !{!106, !104, i64 8}
!108 = !{!"shape_functions", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!109 = !{!108, !10, i64 8}
!110 = distinct !{!110, !51}
!111 = distinct !{!111, !51}
!112 = !{!34, !25, i64 384}
!113 = !{!34, !25, i64 304}
!114 = !{!34, !5, i64 336}
!115 = !{!34, !5, i64 340}
!116 = !{!60, !25, i64 24}
!117 = distinct !{!117, !51}
end_hunk_0
