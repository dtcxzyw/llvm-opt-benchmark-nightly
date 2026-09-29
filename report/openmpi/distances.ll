Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/distances?download=true
inline.NumInlined: 65
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@hwloc__distances_transform_remove_null:bb.a
  %.not34 = icmp ne ptr %i.q, null
  %i.r = zext i1 %.not34 to i32
  %spec.select = add i32 %.02937, %i.r            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !161

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.o, %middle.block ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.s = icmp ult i32 %spec.select.lcssa, 2
  br i1 %i.s, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.t = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.t, align 4, !tbaa !16
  br label %bb.p

bb.b:                                             ; preds = %._crit_edge
  %i.u = icmp eq i32 %spec.select.lcssa, %i.e
  br i1 %i.u, label %bb.p, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count75.i = zext i32 %i.e to i64     ; 6 uses
  %i.v = add nsw i64 %wide.trip.count75.i, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count75.i, 1
  %i.w = icmp eq i64 %i.v, 0
  %unroll_iter = and i64 %wide.trip.count75.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod55 = trunc i32 %i.e to i1
  br label %bb.f

.lr.ph61.split.us.split.us.i:                     ; preds = %bb.e, %.lr.ph61.split.us.split.us.i.preheader.new
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader.new ], [ %indvars.iv.next93.i.1, %bb.e ] ; 3 uses
  %.260.us.us.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.i.preheader.new ], [ %.3.us.us.i.1, %bb.e ] ; 3 uses
  %niter60 = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader.new ], [ %niter60.next.1, %bb.e ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv92.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 2 uses
  %.not.us.us.i = icmp eq ptr %i.y, null
  br i1 %.not.us.us.i, label %.lr.ph61.split.us.split.us.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph61.split.us.split.us.i
  %i.z = zext i32 %.260.us.us.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.z
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !79
  %i.ab = add i32 %.260.us.us.i, 1
  br label %.lr.ph61.split.us.split.us.i.1

.lr.ph61.split.us.split.us.i.1:                   ; preds = %bb.c, %.lr.ph61.split.us.split.us.i
  %.3.us.us.i = phi i32 [ %i.ab, %bb.c ], [ %.260.us.us.i, %.lr.ph61.split.us.split.us.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv92.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79 ; 2 uses
  %.not.us.us.i.1 = icmp eq ptr %i.ae, null
  br i1 %.not.us.us.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph61.split.us.split.us.i.1
  %i.af = zext i32 %.3.us.us.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.af
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !79
  %i.ah = add i32 %.3.us.us.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph61.split.us.split.us.i.1
  %.3.us.us.i.1 = phi i32 [ %i.ah, %bb.d ], [ %.3.us.us.i, %.lr.ph61.split.us.split.us.i.1 ] ; 2 uses
  %indvars.iv.next93.i.1 = add nuw nsw i64 %indvars.iv92.i, 2 ; 2 uses
  %niter60.next.1 = add i64 %niter60, 2           ; 2 uses
  %niter60.ncmp.1 = icmp eq i64 %niter60.next.1, %unroll_iter59
  br i1 %niter60.ncmp.1, label %.lr.ph39.preheader.unr-lcssa, label %.lr.ph61.split.us.split.us.i, !llvm.loop !2

bb.f:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next73.i, %bb.l ] ; 3 uses
  %.04158.i = phi i32 [ 0, %.lr.ph.i ], [ %.142.i, %bb.l ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv72.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !79
  %.not52.i = icmp eq ptr %i.aj, null
  br i1 %.not52.i, label %bb.l, label %.preheader54.i

.preheader54.i:                                   ; preds = %bb.f
  %i.ak = trunc nuw i64 %indvars.iv72.i to i32
  %i.al = mul i32 %i.e, %i.ak                     ; 3 uses
  %i.am = mul i32 %.04158.i, %spec.select.lcssa   ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader54.i.new

.preheader54.i.new:                               ; preds = %.preheader54.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.j ], [ 0, %.preheader54.i ] ; 4 uses
  %.056.i = phi i32 [ %.1.i.1, %bb.j ], [ 0, %.preheader54.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.j ], [ 0, %.preheader54.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79
  %.not53.i = icmp eq ptr %i.ao, null
  br i1 %.not53.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader54.i.new
  %i.ap = trunc nuw i64 %indvars.iv.i to i32
  %i.aq = add i32 %i.al, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !82
  %i.au = add i32 %.056.i, %i.am
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.av
  store i64 %i.at, ptr %i.aw, align 8, !tbaa !82
  %i.ax = add i32 %.056.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader54.i.new
  %.1.i = phi i32 [ %i.ax, %bb.g ], [ %.056.i, %.preheader54.i.new ] ; 3 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !79
  %.not53.i.1 = icmp eq ptr %i.az, null
  br i1 %.not53.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = trunc nuw i64 %indvars.iv.next.i to i32
  %i.bb = add i32 %i.al, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !82
  %i.bf = add i32 %.1.i, %i.am
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  store i64 %i.be, ptr %i.bh, align 8, !tbaa !82
  %i.bi = add i32 %.1.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i.1 = phi i32 [ %i.bi, %bb.i ], [ %.1.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader54.i.new, !llvm.loop !3

.unr-lcssa:                                       ; preds = %bb.j
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader54.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader54.i ], [ %indvars.iv.next.i.1, %.unr-lcssa ] ; 2 uses
  %.056.i.epil.init = phi i32 [ 0, %.preheader54.i ], [ %.1.i.1, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.epil.init
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !79
  %.not53.i.epil = icmp eq ptr %i.bk, null
  br i1 %.not53.i.epil, label %.epilog-lcssa, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.bl = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %i.bm = add i32 %i.al, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !82
  %i.bq = add i32 %.056.i.epil.init, %i.am
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  store i64 %i.bp, ptr %i.bs, align 8, !tbaa !82
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.k, %.unr-lcssa
  %i.bt = add i32 %.04158.i, 1
  br label %bb.l

bb.l:                                             ; preds = %.epilog-lcssa, %bb.f
  %.142.i = phi i32 [ %i.bt, %.epilog-lcssa ], [ %.04158.i, %bb.f ]
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count75.i
  br i1 %exitcond76.not.i, label %.lr.ph61.split.us.split.us.i.preheader, label %bb.f, !llvm.loop !4

.lr.ph61.split.us.split.us.i.preheader:           ; preds = %bb.l
  %xtraiter56 = and i64 %wide.trip.count75.i, 1
  %i.bu = icmp eq i64 %i.v, 0
  br i1 %i.bu, label %.lr.ph61.split.us.split.us.i.epil.preheader, label %.lr.ph61.split.us.split.us.i.preheader.new

.lr.ph61.split.us.split.us.i.preheader.new:       ; preds = %.lr.ph61.split.us.split.us.i.preheader
  %unroll_iter59 = and i64 %wide.trip.count75.i, 4294967294
  br label %.lr.ph61.split.us.split.us.i

.lr.ph39.preheader.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.lr.ph39.preheader, label %.lr.ph61.split.us.split.us.i.epil.preheader

.lr.ph61.split.us.split.us.i.epil.preheader:      ; preds = %.lr.ph39.preheader.unr-lcssa, %.lr.ph61.split.us.split.us.i.preheader
  %indvars.iv92.i.epil.init = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader ], [ %indvars.iv.next93.i.1, %.lr.ph39.preheader.unr-lcssa ]
  %.260.us.us.i.epil.init = phi i32 [ 0, %.lr.ph61.split.us.split.us.i.preheader ], [ %.3.us.us.i.1, %.lr.ph39.preheader.unr-lcssa ]
  %lcmp.mod58 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv92.i.epil.init
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !79 ; 2 uses
  %.not.us.us.i.epil = icmp eq ptr %i.bw, null
  br i1 %.not.us.us.i.epil, label %.lr.ph39.preheader, label %bb.m

bb.m:                                             ; preds = %.lr.ph61.split.us.split.us.i.epil.preheader
  %i.bx = zext i32 %.260.us.us.i.epil.init to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bx
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !79
  br label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.lr.ph61.split.us.split.us.i.epil.preheader, %bb.m, %.lr.ph39.preheader.unr-lcssa
  store i32 %spec.select.lcssa, ptr %0, align 8, !tbaa !92
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !86 ; 2 uses
  %wide.trip.count46 = zext i32 %spec.select.lcssa to i64
  br label %.lr.ph39

bb.n:                                             ; preds = %.lr.ph39
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge40, label %.lr.ph39, !llvm.loop !162

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %bb.n
  %indvars.iv43 = phi i64 [ 1, %.lr.ph39.preheader ], [ %indvars.iv.next44, %bb.n ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv43
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !79
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !86
  %.not = icmp eq i32 %i.cd, %i.ca
  br i1 %.not, label %bb.n, label %.thread

._crit_edge40:                                    ; preds = %bb.n
  %i.ce = icmp eq i32 %i.ca, -1
  br i1 %i.ce, label %.thread, label %bb.o

.thread:                                          ; preds = %.lr.ph39, %._crit_edge40
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !93
  %i.ch = or i64 %i.cg, 16
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !93
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge40
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !93
  %i.ck = and i64 %i.cj, -17
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !93
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.b, %._crit_edge.thread
  %.032 = phi i32 [ -1, %._crit_edge.thread ], [ 0, %bb.b ], [ 0, %bb.o ], [ 0, %.thread ]
  ret i32 %.032
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #25

declare ptr @hwloc_get_obj_by_type_and_gp_index(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #18

declare i32 @hwloc_get_type_depth(ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @hwloc_obj_type_string(i32 noundef) local_unnamed_addr #7

declare ptr @hwloc_alloc_setup_object(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

declare noalias ptr @hwloc_bitmap_alloc() local_unnamed_addr #18

declare i32 @hwloc_obj_add_other_obj_sets(ptr noundef, ptr noundef) local_unnamed_addr #18

declare ptr @hwloc__insert_object_by_cpuset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(none) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { cold }
attributes #35 = { cold nounwind }

!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !58}
!1 = distinct !{!1, !58}
!2 = distinct !{!2, !58}
!3 = distinct !{!3, !58}
!4 = distinct !{!4, !58}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!"any pointer", !12, i64 0}
!18 = !{!"p1 int", !17, i64 0}
!19 = !{!"any p2 pointer", !17, i64 0}
!20 = !{!"any p3 pointer", !19, i64 0}
!21 = !{!"p3 _ZTS9hwloc_obj", !20, i64 0}
!22 = !{!"long", !12, i64 0}
!23 = !{!"p1 _ZTS14hwloc_bitmap_s", !17, i64 0}
!24 = !{!"hwloc_binding_hooks", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !17, i64 152, !17, i64 160, !17, i64 168, !17, i64 176, !17, i64 184}
!25 = !{!"p1 _ZTS32hwloc_topology_discovery_support", !17, i64 0}
!26 = !{!"p1 _ZTS30hwloc_topology_cpubind_support", !17, i64 0}
!27 = !{!"p1 _ZTS30hwloc_topology_membind_support", !17, i64 0}
!28 = !{!"p1 _ZTS27hwloc_topology_misc_support", !17, i64 0}
!29 = !{!"hwloc_topology_support", !25, i64 0, !26, i64 8, !27, i64 16, !28, i64 24}
!30 = !{!"p1 _ZTS26hwloc_internal_distances_s", !17, i64 0}
!31 = !{!"p1 _ZTS24hwloc_internal_memattr_s", !17, i64 0}
!32 = !{!"p1 _ZTS24hwloc_internal_cpukind_s", !17, i64 0}
!33 = !{!"p1 _ZTS13hwloc_backend", !17, i64 0}
!34 = !{!"p1 _ZTS9hwloc_tma", !17, i64 0}
!35 = !{!"p1 _ZTS24hwloc_memory_page_type_s", !17, i64 0}
!36 = !{!"hwloc_numanode_attr_s", !22, i64 0, !13, i64 8, !35, i64 16}
!37 = !{!"p1 _ZTS27hwloc_pci_forced_locality_s", !17, i64 0}
!38 = !{!"p1 _ZTS33hwloc_topology_forced_component_s", !17, i64 0}
!39 = !{!"p1 _ZTS20hwloc_pci_locality_s", !17, i64 0}
!40 = !{!"hwloc_topology", !13, i64 0, !13, i64 4, !13, i64 8, !18, i64 16, !21, i64 24, !22, i64 32, !12, i64 40, !12, i64 120, !13, i64 200, !13, i64 204, !13, i64 208, !13, i64 212, !17, i64 216, !22, i64 224, !17, i64 232, !22, i64 240, !12, i64 248, !23, i64 440, !23, i64 448, !24, i64 456, !29, i64 648, !17, i64 680, !17, i64 688, !13, i64 696, !30, i64 704, !30, i64 712, !13, i64 720, !13, i64 724, !31, i64 728, !13, i64 736, !13, i64 740, !32, i64 744, !13, i64 752, !13, i64 756, !13, i64 760, !12, i64 764, !13, i64 784, !33, i64 792, !33, i64 800, !13, i64 808, !13, i64 812, !34, i64 816, !36, i64 824, !13, i64 848, !13, i64 852, !37, i64 856, !13, i64 864, !38, i64 872, !39, i64 880, !39, i64 888}
!41 = !{!40, !13, i64 752}
!42 = !{!40, !13, i64 784}
!43 = !{!"float", !12, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!40, !13, i64 760}
!46 = !{!40, !13, i64 756}
!47 = !{!40, !30, i64 704}
!48 = !{!"p1 omnipotent char", !17, i64 0}
!49 = !{!"p1 long", !17, i64 0}
!50 = !{!"p2 _ZTS9hwloc_obj", !19, i64 0}
!51 = !{!"hwloc_internal_distances_s", !48, i64 0, !13, i64 8, !13, i64 12, !17, i64 16, !13, i64 24, !49, i64 32, !49, i64 40, !22, i64 48, !13, i64 56, !50, i64 64, !30, i64 72, !30, i64 80}
!52 = !{!51, !30, i64 80}
!53 = !{!51, !48, i64 0}
!54 = !{!51, !17, i64 16}
!55 = !{!51, !49, i64 32}
!56 = !{!51, !50, i64 64}
!57 = !{!51, !49, i64 40}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!40, !13, i64 720}
!60 = !{!30, !30, i64 0}
!61 = !{!40, !34, i64 816}
!62 = !{!51, !13, i64 24}
!63 = !{!"hwloc_tma", !17, i64 0, !17, i64 8, !13, i64 16}
!64 = !{!63, !13, i64 16}
!65 = !{!51, !22, i64 48}
!66 = !{!51, !13, i64 56}
!67 = !{!40, !30, i64 712}
!68 = !{!51, !30, i64 72}
!69 = !{!40, !13, i64 204}
!70 = !{!40, !17, i64 232}
!71 = !{!51, !13, i64 12}
!72 = !{!"hwloc_distances_s", !13, i64 0, !50, i64 8, !22, i64 16, !49, i64 24}
!73 = !{!"hwloc_distances_container_s", !13, i64 0, !72, i64 8}
!74 = !{!73, !13, i64 0}
!75 = !{!51, !13, i64 8}
!76 = !{!72, !49, i64 24}
!77 = !{!72, !50, i64 8}
!78 = !{!"p1 _ZTS9hwloc_obj", !17, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!22, !22, i64 0}
!83 = !{!"p1 _ZTS16hwloc_obj_attr_u", !17, i64 0}
!84 = !{!"p1 _ZTS12hwloc_info_s", !17, i64 0}
!85 = !{!"hwloc_obj", !13, i64 0, !48, i64 8, !13, i64 16, !48, i64 24, !22, i64 32, !83, i64 40, !13, i64 48, !13, i64 52, !78, i64 56, !78, i64 64, !78, i64 72, !13, i64 80, !78, i64 88, !78, i64 96, !13, i64 104, !50, i64 112, !78, i64 120, !78, i64 128, !13, i64 136, !13, i64 140, !78, i64 144, !13, i64 152, !78, i64 160, !13, i64 168, !78, i64 176, !23, i64 184, !23, i64 192, !23, i64 200, !23, i64 208, !84, i64 216, !13, i64 224, !17, i64 232, !22, i64 240}
!86 = !{!85, !13, i64 0}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!85, !13, i64 16}
!89 = !{!85, !22, i64 240}
!90 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!72, !13, i64 0}
!93 = !{!72, !22, i64 16}
!94 = distinct !{null}
!95 = distinct !{null}
!96 = distinct !{null, null}
!97 = distinct !{null, null, null}
!98 = distinct !{null, null, null}
!99 = distinct !{!99, !58}
!100 = !{!63, !17, i64 0}
!101 = distinct !{!101, !58}
!102 = distinct !{!102, !58, !80, !81}
!103 = distinct !{!103, !58, !81, !80}
!104 = distinct !{!104, !58}
!105 = distinct !{!105, !58}
!106 = distinct !{!106, !87}
!107 = distinct !{!107, !58}
!108 = distinct !{!108, !58}
!109 = distinct !{!109, !87}
!110 = distinct !{!110, !87}
!111 = distinct !{!111, !58}
!112 = distinct !{!112, !58}
!113 = distinct !{!113, !58}
!114 = distinct !{!114, !58}
!115 = distinct !{!115, !58}
!116 = distinct !{!116, !58}
!117 = distinct !{!117, !58}
!118 = distinct !{!118, !58}
!119 = distinct !{!119, !58}
!120 = distinct !{!120, !58}
!121 = distinct !{!121, !58}
!122 = distinct !{!122, !58}
!123 = distinct !{!123, !58}
!124 = distinct !{!124, !58}
!125 = distinct !{!125, !58}
!126 = distinct !{!126, !58}
!127 = distinct !{!127, !58}
!128 = distinct !{!128, !58}
!129 = !{!85, !23, i64 184}
!130 = !{!85, !83, i64 40}
!131 = !{!12, !12, i64 0}
!132 = distinct !{!132, !58}
!133 = distinct !{!133, !58}
!134 = distinct !{!134, !58}
!135 = distinct !{!135, !58}
!136 = distinct !{!136, !58}
!137 = !{!85, !13, i64 48}
!138 = !{!85, !78, i64 56}
!139 = distinct !{!139, !58}
!140 = distinct !{!140, !58}
!141 = distinct !{!141, !58}
!142 = !{!"p1 _ZTS17hwloc_distances_s", !17, i64 0}
!143 = !{!142, !142, i64 0}
!144 = distinct !{!144, !87}
!145 = distinct !{!145, !58}
!146 = distinct !{!146, !58}
!147 = distinct !{!147, !87}
!148 = distinct !{!148, !58}
!149 = distinct !{!149, !58}
!150 = distinct !{!150, !58}
!151 = distinct !{!151, !58}
!152 = distinct !{!152, !58}
!153 = distinct !{!153, !58}
end_hunk_0
