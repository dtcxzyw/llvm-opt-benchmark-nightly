Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilDsd?download=true
inline.NumInlined: 113
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 23
begin_hunk_0_@Sdm_ManDivTest:bb.a
  %.val7.i.2 = load i32, ptr %i.fx, align 4, !tbaa !36 ; 2 uses
  %i.fy = icmp sgt i32 %.val7.i.2, 0
  br i1 %i.fy, label %.lr.ph.i30.2, label %Vec_WrdAppend.exit.2

.lr.ph.i30.2:                                     ; preds = %Vec_WrdAppend.exit.1
  %i.fz = getelementptr i8, ptr %i.fw, i64 8
  br label %bb.ao

bb.ao:                                            ; preds = %Vec_WrdPush.exit.i.2, %.lr.ph.i30.2
  %.val.i.272 = phi i32 [ %.val7.i.2, %.lr.ph.i30.2 ], [ %.val.i.2, %Vec_WrdPush.exit.i.2 ] ; 2 uses
  %i.ga = phi ptr [ %.pre11.i.269, %.lr.ph.i30.2 ], [ %.pre12.i.271, %Vec_WrdPush.exit.i.2 ] ; 7 uses
  %.pre11.i.2 = phi ptr [ %.pre11.i.269, %.lr.ph.i30.2 ], [ %.pre11.i.268, %Vec_WrdPush.exit.i.2 ]
  %i.gb = phi i32 [ %.pre10.i.2, %.lr.ph.i30.2 ], [ %i.gr, %Vec_WrdPush.exit.i.2 ] ; 8 uses
  %i.gc = phi i32 [ %.pre.i.2, %.lr.ph.i30.2 ], [ %i.gs, %Vec_WrdPush.exit.i.2 ] ; 2 uses
  %indvars.iv.i31.2 = phi i64 [ 0, %.lr.ph.i30.2 ], [ %indvars.iv.next.i32.2, %Vec_WrdPush.exit.i.2 ] ; 2 uses
  %.val6.i.2 = load ptr, ptr %i.fz, align 8, !tbaa !38
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.val6.i.2, i64 %indvars.iv.i31.2
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !43
  %i.gf = icmp eq i32 %i.gc, %i.gb
  br i1 %i.gf, label %bb.ap, label %Vec_WrdPush.exit.i.2

bb.ap:                                            ; preds = %bb.ao
  %i.gg = icmp slt i32 %i.gb, 16
  br i1 %i.gg, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gh = icmp samesign ult i32 %i.gb, 1073741823
  %i.gi = shl nuw nsw i32 %i.gb, 1
  %spec.select.i.i.2 = select i1 %i.gh, i32 %i.gi, i32 2147483647 ; 4 uses
  %.not.i9.i.i.2 = icmp samesign ult i32 %i.gb, %spec.select.i.i.2
  br i1 %.not.i9.i.i.2, label %bb.ar, label %Vec_WrdPush.exit.i.2

bb.ar:                                            ; preds = %bb.aq
  %.not9.i10.i.i.2 = icmp eq ptr %i.ga, null
  %i.gj = zext nneg i32 %spec.select.i.i.2 to i64
  %i.gk = shl nuw nsw i64 %i.gj, 3                ; 2 uses
  br i1 %.not9.i10.i.i.2, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gl = call ptr @realloc(ptr noundef nonnull %i.ga, i64 noundef %i.gk) #28
  br label %Vec_WrdGrow.exit11.sink.split.i.i.2

bb.at:                                            ; preds = %bb.ar
  %i.gm = call noalias ptr @malloc(i64 noundef %i.gk) #26
  br label %Vec_WrdGrow.exit11.sink.split.i.i.2

bb.au:                                            ; preds = %bb.ap
  %.not9.i.i.i.2 = icmp eq ptr %i.ga, null
  br i1 %.not9.i.i.i.2, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gn = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ga, i64 noundef 128) #28
  br label %Vec_WrdGrow.exit11.sink.split.i.i.2

bb.aw:                                            ; preds = %bb.au
  %i.go = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #26
  br label %Vec_WrdGrow.exit11.sink.split.i.i.2

Vec_WrdGrow.exit11.sink.split.i.i.2:              ; preds = %bb.aw, %bb.av, %bb.at, %bb.as
  %i.gp = phi ptr [ %i.go, %bb.aw ], [ %i.gn, %bb.av ], [ %i.gl, %bb.as ], [ %i.gm, %bb.at ] ; 3 uses
  %spec.select.sink.i.i.2 = phi i32 [ 16, %bb.aw ], [ 16, %bb.av ], [ %spec.select.i.i.2, %bb.as ], [ %spec.select.i.i.2, %bb.at ] ; 2 uses
  store ptr %i.gp, ptr %i.do, align 8, !tbaa !38
  store i32 %spec.select.sink.i.i.2, ptr %i.dl, align 8, !tbaa !37
  %.pre13.i.2 = load i32, ptr %i.dm, align 4, !tbaa !36
  %.val.i.2.pre = load i32, ptr %i.fx, align 4, !tbaa !36
  br label %Vec_WrdPush.exit.i.2

Vec_WrdPush.exit.i.2:                             ; preds = %bb.ao, %Vec_WrdGrow.exit11.sink.split.i.i.2, %bb.aq
  %.val.i.2 = phi i32 [ %.val.i.2.pre, %Vec_WrdGrow.exit11.sink.split.i.i.2 ], [ %.val.i.272, %bb.aq ], [ %.val.i.272, %bb.ao ] ; 2 uses
  %.pre12.i.271 = phi ptr [ %i.gp, %Vec_WrdGrow.exit11.sink.split.i.i.2 ], [ %i.ga, %bb.aq ], [ %i.ga, %bb.ao ]
  %.pre11.i.268 = phi ptr [ %i.gp, %Vec_WrdGrow.exit11.sink.split.i.i.2 ], [ %i.ga, %bb.aq ], [ %.pre11.i.2, %bb.ao ] ; 2 uses
  %i.gq = phi i32 [ %.pre13.i.2, %Vec_WrdGrow.exit11.sink.split.i.i.2 ], [ %i.gb, %bb.aq ], [ %i.gc, %bb.ao ] ; 2 uses
  %i.gr = phi i32 [ %spec.select.sink.i.i.2, %Vec_WrdGrow.exit11.sink.split.i.i.2 ], [ %i.gb, %bb.aq ], [ %i.gb, %bb.ao ]
  %i.gs = add nsw i32 %i.gq, 1                    ; 3 uses
  store i32 %i.gs, ptr %i.dm, align 4, !tbaa !36
  %i.gt = sext i32 %i.gq to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %.pre11.i.268, i64 %i.gt
  store i64 %i.ge, ptr %i.gu, align 8, !tbaa !43
  %indvars.iv.next.i32.2 = add nuw nsw i64 %indvars.iv.i31.2, 1 ; 2 uses
  %i.gv = sext i32 %.val.i.2 to i64
  %i.gw = icmp slt i64 %indvars.iv.next.i32.2, %i.gv
  br i1 %i.gw, label %bb.ao, label %Vec_WrdAppend.exit.2, !llvm.loop !74

Vec_WrdAppend.exit.2:                             ; preds = %Vec_WrdPush.exit.i.2, %Vec_WrdAppend.exit.1
  %.val = phi i32 [ %.pre.i.2, %Vec_WrdAppend.exit.1 ], [ %i.gs, %Vec_WrdPush.exit.i.2 ] ; 2 uses
  %i.gx = load ptr, ptr %i.i, align 16, !tbaa !53 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !38 ; 2 uses
  %.not.i33 = icmp eq ptr %i.gz, null
  br i1 %.not.i33, label %Vec_WrdFree.exit, label %bb.ax

bb.ax:                                            ; preds = %Vec_WrdAppend.exit.2
  call void @free(ptr noundef nonnull %i.gz) #25
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Vec_WrdAppend.exit.2, %bb.ax
  call void @free(ptr noundef nonnull %i.gx) #25
  %i.ha = load ptr, ptr %i.n, align 8, !tbaa !53  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !38 ; 2 uses
  %.not.i33.1 = icmp eq ptr %i.hc, null
  br i1 %.not.i33.1, label %Vec_WrdFree.exit.1, label %bb.ay

bb.ay:                                            ; preds = %Vec_WrdFree.exit
  call void @free(ptr noundef nonnull %i.hc) #25
  br label %Vec_WrdFree.exit.1

Vec_WrdFree.exit.1:                               ; preds = %bb.ay, %Vec_WrdFree.exit
  call void @free(ptr noundef nonnull %i.ha) #25
  %i.hd = load ptr, ptr %i.s, align 16, !tbaa !53 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !38 ; 2 uses
  %.not.i33.2 = icmp eq ptr %i.hf, null
  br i1 %.not.i33.2, label %Vec_WrdFree.exit.2, label %bb.az

bb.az:                                            ; preds = %Vec_WrdFree.exit.1
  call void @free(ptr noundef nonnull %i.hf) #25
  br label %Vec_WrdFree.exit.2

Vec_WrdFree.exit.2:                               ; preds = %bb.az, %Vec_WrdFree.exit.1
  call void @free(ptr noundef nonnull %i.hd) #25
  %i.hg = icmp sgt i32 %.val, 0
  br i1 %i.hg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_WrdFree.exit.2, %.lr.ph
  %.544 = phi i32 [ %i.hi, %.lr.ph ], [ 0, %Vec_WrdFree.exit.2 ] ; 2 uses
  %i.hh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.544) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.hi = add nuw nsw i32 %.544, 1                ; 2 uses
  %i.hj = icmp slt i32 %i.hi, %.val
  br i1 %i.hj, label %.lr.ph, label %.critedge, !llvm.loop !75

.critedge:                                        ; preds = %.lr.ph, %Vec_WrdFree.exit.2
  %i.hk = call i32 @Rsb_ManPerformResub6(ptr noundef %i.d, i32 noundef 6, i64 noundef 4557642819526735616, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1) #25
  %.not = icmp eq i32 %i.hk, 0
  br i1 %.not, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.critedge
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.critedge
  %i.hl = load ptr, ptr %i.do, align 8, !tbaa !38 ; 2 uses
  %.not.i34 = icmp eq ptr %i.hl, null
  br i1 %.not.i34, label %Vec_WrdFree.exit35, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.hl) #25
  br label %Vec_WrdFree.exit35

Vec_WrdFree.exit35:                               ; preds = %bb.bb, %bb.bc
  call void @free(ptr noundef nonnull %i.dl) #25
  call void @Rsb_ManFree(ptr noundef %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare ptr @Rsb_ManAlloc(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @Rsb_ManPerformResub6(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @Rsb_ManFree(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #16 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #25 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #25
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #25 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !80
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #29
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #25 ; 0 uses
  call void @free(ptr noundef %i.d) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !80, !noalias !84
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #25, !inline_history !78 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #4

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #17

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #17

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_WrdSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !43
  %i.b = load i64, ptr %1, align 8, !tbaa !43
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind allocsize(1) }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS10Sdm_Dsd_t_", !12, i64 0}
!14 = !{!"p1 _ZTS13Hsh_IntMan_t_", !12, i64 0}
!15 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!16 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!17 = !{!"Sdm_Man_t_", !13, i64 0, !14, i64 8, !15, i64 16, !16, i64 24, !15, i64 32, !6, i64 40, !6, i64 4360, !7, i64 6740, !7, i64 6744}
!18 = !{!17, !13, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"Sdm_Dsd_t_", !7, i64 0, !7, i64 4, !7, i64 8, !19, i64 16, !20, i64 24}
!22 = !{!21, !20, i64 24}
!23 = !{!17, !7, i64 6740}
!24 = !{!17, !7, i64 6744}
!25 = !{!"p1 int", !12, i64 0}
!26 = !{!"Vec_Int_t_", !7, i64 0, !7, i64 4, !25, i64 8}
!27 = !{!26, !7, i64 4}
!28 = !{!26, !7, i64 0}
!29 = !{!26, !25, i64 8}
!30 = !{!"Hsh_IntMan_t_", !7, i64 0, !15, i64 8, !15, i64 16, !16, i64 24}
!31 = !{!30, !7, i64 0}
!32 = !{!30, !15, i64 8}
!33 = !{!30, !15, i64 16}
!34 = !{!"p1 long", !12, i64 0}
!35 = !{!"Vec_Wrd_t_", !7, i64 0, !7, i64 4, !34, i64 8}
!36 = !{!35, !7, i64 4}
!37 = !{!35, !7, i64 0}
!38 = !{!35, !34, i64 8}
!39 = !{!30, !16, i64 24}
!40 = !{!"Hsh_IntObj_t_", !7, i64 0, !7, i64 4}
!41 = !{!40, !7, i64 0}
!42 = !{!6, !6, i64 0}
!43 = !{!19, !19, i64 0}
!44 = !{!17, !15, i64 32}
!45 = !{!17, !16, i64 24}
!46 = !{!21, !19, i64 16}
!47 = !{!17, !14, i64 8}
!48 = !{!17, !15, i64 16}
!49 = !{!21, !7, i64 0}
!50 = !{!21, !7, i64 8}
!51 = !{!"p1 _ZTS10Sdm_Man_t_", !12, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!16, !16, i64 0}
!54 = distinct !{!54, !11, !56, !57}
!55 = distinct !{!55, !11}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = !{!40, !7, i64 4}
!62 = !{!15, !15, i64 0}
!63 = distinct !{!63, !11, !70}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = !{!"timespec", !19, i64 0, !19, i64 8}
!68 = !{!67, !19, i64 0}
!69 = !{!67, !19, i64 8}
!70 = !{!"llvm.loop.peeled.count", i32 1}
!71 = distinct !{!71, !11}
!72 = !{!21, !7, i64 4}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!78 = distinct !{null}
!79 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!80 = !{!79, !79, i64 0}
!82 = distinct !{!82, i1 false, !"vprintf"}
!83 = distinct !{!83, !82, !"vprintf: argument 0"}
!84 = !{!83}
end_hunk_0
