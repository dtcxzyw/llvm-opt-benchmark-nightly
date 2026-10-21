Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/v4l2_buffers?download=true
inline.NumInlined: 31
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_v4l2_buffer_initialize:bb.a
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.au, align 8, !tbaa !65
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !58
  %.val = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !32
  %switch.tableidx119 = add i32 %i.bz, -2         ; 2 uses
  %i.ca = icmp ult i32 %switch.tableidx119, 13
  br i1 %i.ca, label %switch.lookup120, label %buf_to_m2mctx.exit94

switch.lookup120:                                 ; preds = %bb.p
  %i.cb = zext nneg i32 %switch.tableidx119 to i64
  %switch.gep121 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.v4l2_free_buffer.17, i64 %i.cb
  %switch.load122 = load i64, ptr %switch.gep121, align 8
  br label %buf_to_m2mctx.exit94

buf_to_m2mctx.exit94:                             ; preds = %bb.p, %switch.lookup120
  %.sink.i93 = phi i64 [ %switch.load122, %switch.lookup120 ], [ -4104, %bb.p ]
  %i.cc = getelementptr inbounds i8, ptr %.val, i64 %.sink.i93
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4096
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !84
  %i.cf = load i32, ptr %i.av, align 8, !tbaa !76
  %i.cg = zext i32 %i.cf to i64
  %i.ch = tail call ptr @mmap64(ptr noundef null, i64 noundef %i.bw, i32 noundef 3, i32 noundef 1, i32 noundef %i.ce, i64 noundef %i.cg) #9
  br label %bb.q

bb.q:                                             ; preds = %buf_to_m2mctx.exit94, %buf_to_m2mctx.exit92
  %.sink = phi ptr [ %i.ch, %buf_to_m2mctx.exit94 ], [ %i.bu, %buf_to_m2mctx.exit92 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %.sink, ptr %i.ci, align 8, !tbaa !59
  %i.cj = icmp eq ptr %.sink, inttoptr (i64 -1 to ptr)
  br i1 %i.cj, label %ff_v4l2_buffer_enqueue.exit, label %bb.m

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre105 = load i32, ptr %i.d, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %._crit_edge.loopexit, %.loopexit
  %i.ck = phi i32 [ %i.u, %.loopexit ], [ %.pre105, %._crit_edge.loopexit ], [ %i.u, %bb.f ]
  %.lcssa = phi i32 [ %.lcssa128, %.loopexit ], [ %i.aw, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 828 ; 2 uses
  store i32 0, ptr %i.cl, align 4, !tbaa !74
  switch i32 %i.ck, label %bb.s [
    i32 2, label %ff_v4l2_buffer_enqueue.exit
    i32 10, label %ff_v4l2_buffer_enqueue.exit
    i32 3, label %ff_v4l2_buffer_enqueue.exit
    i32 8, label %ff_v4l2_buffer_enqueue.exit
    i32 5, label %ff_v4l2_buffer_enqueue.exit
    i32 7, label %ff_v4l2_buffer_enqueue.exit
    i32 12, label %ff_v4l2_buffer_enqueue.exit
    i32 14, label %ff_v4l2_buffer_enqueue.exit
    i32 9, label %bb.r
  ]

bb.r:                                             ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !76
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !62
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !63
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink111 = phi i32 [ %i.cs, %bb.s ], [ %.lcssa, %bb.r ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 %.sink111, ptr %i.ct, align 8, !tbaa !65
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !83
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !77
  %.val.i = load ptr, ptr %0, align 8, !tbaa !27  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !32
  %switch.tableidx123 = add i32 %i.cy, -2         ; 2 uses
  %i.cz = icmp ult i32 %switch.tableidx123, 13
  br i1 %i.cz, label %switch.lookup124, label %buf_to_m2mctx.exit.i

switch.lookup124:                                 ; preds = %bb.t
  %i.da = zext nneg i32 %switch.tableidx123 to i64
  %switch.gep125 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.v4l2_free_buffer.17, i64 %i.da
  %switch.load126 = load i64, ptr %switch.gep125, align 8
  br label %buf_to_m2mctx.exit.i

buf_to_m2mctx.exit.i:                             ; preds = %bb.t, %switch.lookup124
  %.sink.i.i = phi i64 [ %switch.load126, %switch.lookup124 ], [ -4104, %bb.t ]
  %i.db = getelementptr inbounds i8, ptr %.val.i, i64 %.sink.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4096
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !84
  %i.de = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.dd, i64 noundef 3227014671, ptr noundef nonnull %i.b) #9
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %buf_to_m2mctx.exit.i
  %i.dg = tail call ptr @__errno_location() #8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !50
  %i.di = sub nsw i32 0, %i.dh
  br label %ff_v4l2_buffer_enqueue.exit

bb.v:                                             ; preds = %buf_to_m2mctx.exit.i
  store i32 1, ptr %i.cl, align 4, !tbaa !74
  br label %ff_v4l2_buffer_enqueue.exit

ff_v4l2_buffer_enqueue.exit:                      ; preds = %bb.q, %bb.v, %bb.u, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %bb.d
  %.077 = phi i32 [ %i.t, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.v ], [ 0, %._crit_edge ], [ 0, %._crit_edge ], [ 0, %._crit_edge ], [ 0, %._crit_edge ], [ 0, %._crit_edge ], [ 0, %._crit_edge ], [ 0, %._crit_edge ], [ %i.di, %bb.u ], [ -12, %bb.q ]
  ret i32 %.077
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @ff_v4l2_buffer_enqueue(ptr noundef initializes((236, 240)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %i.b, ptr %i.d, align 4, !tbaa !77
  %.val = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %switch.tableidx = add i32 %i.f, -2             ; 2 uses
  %i.g = icmp ult i32 %switch.tableidx, 13
  br i1 %i.g, label %switch.lookup, label %buf_to_m2mctx.exit

switch.lookup:                                    ; preds = %bb.a
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.v4l2_free_buffer.17, i64 %i.h
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %buf_to_m2mctx.exit

buf_to_m2mctx.exit:                               ; preds = %bb.a, %switch.lookup
  %.sink.i = phi i64 [ %switch.load, %switch.lookup ], [ -4104, %bb.a ]
  %i.i = getelementptr inbounds i8, ptr %.val, i64 %.sink.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4096
  %i.k = load i32, ptr %i.j, align 8, !tbaa !84
  %i.l = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.k, i64 noundef 3227014671, ptr noundef nonnull %i.c) #9
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %buf_to_m2mctx.exit
  %i.n = tail call ptr @__errno_location() #8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50
  %i.p = sub nsw i32 0, %i.o
  br label %bb.d

bb.c:                                             ; preds = %buf_to_m2mctx.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 828
  store i32 1, ptr %i.q, align 4, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

declare ptr @av_buffer_create(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @v4l2_free_buffer(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %switch.tableidx = add i32 %i.b, -2             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 13
  br i1 %i.c, label %switch.lookup, label %buf_to_m2mctx.exit

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.v4l2_free_buffer.17, i64 %i.d
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %buf_to_m2mctx.exit

buf_to_m2mctx.exit:                               ; preds = %bb.a, %switch.lookup
  %.sink.i = phi i64 [ %switch.load, %switch.lookup ], [ -4104, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %.sink.i ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = atomicrmw add ptr %i.f, i32 -1 seq_cst, align 8
  %i.g = icmp eq i32 %2, 1
  br i1 %i.g, label %bb.b, label %bb.k

bb.b:                                             ; preds = %buf_to_m2mctx.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4688 ; 2 uses
  %3 = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 8 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4692
  %i.j = load i32, ptr %i.i, align 4, !tbaa !112
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load atomic i32, ptr %i.h seq_cst, align 8
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.d, label %ff_v4l2_buffer_enqueue.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4656
  %i.m = tail call i32 @sem_post(ptr noundef nonnull %i.l) #9 ; 0 uses
  br label %ff_v4l2_buffer_enqueue.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4696
  %i.o = load i32, ptr %i.n, align 8, !tbaa !113
  %.not23 = icmp eq i32 %i.o, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !27    ; 4 uses
  br i1 %.not23, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !32
  switch i32 %i.q, label %bb.h [
    i32 2, label %bb.g
    i32 10, label %bb.g
    i32 3, label %bb.g
    i32 8, label %bb.g
    i32 5, label %bb.g
    i32 7, label %bb.g
    i32 12, label %bb.g
    i32 14, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 828
  store i32 0, ptr %i.r, align 4, !tbaa !74
  br label %ff_v4l2_buffer_enqueue.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 260
  %i.t = load i32, ptr %i.s, align 4, !tbaa !114
  %.not24 = icmp eq i32 %i.t, 0
  br i1 %.not24, label %ff_v4l2_buffer_enqueue.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.v = load i32, ptr %i.u, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %i.v, ptr %i.x, align 4, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !32
  %switch.tableidx26 = add i32 %i.z, -2           ; 2 uses
  %i.aa = icmp ult i32 %switch.tableidx26, 13
  br i1 %i.aa, label %switch.lookup27, label %buf_to_m2mctx.exit.i

switch.lookup27:                                  ; preds = %bb.i
  %i.ab = zext nneg i32 %switch.tableidx26 to i64
  %switch.gep28 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.v4l2_free_buffer.17, i64 %i.ab
  %switch.load29 = load i64, ptr %switch.gep28, align 8
  br label %buf_to_m2mctx.exit.i

buf_to_m2mctx.exit.i:                             ; preds = %bb.i, %switch.lookup27
  %.sink.i.i = phi i64 [ %switch.load29, %switch.lookup27 ], [ -4104, %bb.i ]
  %i.ac = getelementptr inbounds i8, ptr %.pre, i64 %.sink.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4096
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !84
  %i.af = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ae, i64 noundef 3227014671, ptr noundef nonnull %i.w) #9
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %ff_v4l2_buffer_enqueue.exit, label %bb.j

bb.j:                                             ; preds = %buf_to_m2mctx.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 828
  store i32 1, ptr %i.ah, align 4, !tbaa !74
  br label %ff_v4l2_buffer_enqueue.exit

ff_v4l2_buffer_enqueue.exit:                      ; preds = %buf_to_m2mctx.exit.i, %bb.j, %bb.g, %bb.h, %bb.c, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.ai) #9
  br label %bb.k

bb.k:                                             ; preds = %ff_v4l2_buffer_enqueue.exit, %buf_to_m2mctx.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) local_unnamed_addr #4

declare void @av_refstruct_unref(ptr noundef) local_unnamed_addr #1

declare ptr @av_refstruct_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"any p2 pointer", !9, i64 0}
!11 = !{!"p2 omnipotent char", !10, i64 0}
!12 = !{!"AVRational", !6, i64 0, !6, i64 4}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p2 _ZTS11AVBufferRef", !10, i64 0}
!15 = !{!"p2 _ZTS15AVFrameSideData", !10, i64 0}
!16 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"AVFrame", !5, i64 0, !5, i64 64, !11, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !12, i64 124, !13, i64 136, !13, i64 144, !12, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !14, i64 248, !6, i64 256, !15, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !16, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!20 = !{!19, !13, i64 136}
!21 = !{!"p1 _ZTS11V4L2Context", !9, i64 0}
!22 = !{!"p1 _ZTS14V4L2m2mContext", !9, i64 0}
!23 = !{!"timeval", !13, i64 0, !13, i64 8}
!24 = !{!"v4l2_timecode", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12}
!25 = !{!"v4l2_buffer", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !23, i64 24, !24, i64 40, !6, i64 56, !6, i64 60, !5, i64 64, !6, i64 72, !6, i64 76, !5, i64 80}
!26 = !{!"V4L2Buffer", !21, i64 0, !22, i64 8, !5, i64 16, !5, i64 24, !6, i64 216, !25, i64 224, !5, i64 312, !6, i64 824, !6, i64 828}
!27 = !{!26, !21, i64 0}
!28 = !{!"p1 omnipotent char", !9, i64 0}
!29 = !{!"v4l2_format", !6, i64 0, !5, i64 8}
!30 = !{!"p1 _ZTS10V4L2Buffer", !9, i64 0}
!31 = !{!"V4L2Context", !28, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !29, i64 24, !6, i64 232, !6, i64 236, !12, i64 240, !30, i64 248, !6, i64 256, !6, i64 260, !6, i64 264}
!32 = !{!31, !6, i64 8}
!33 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!34 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!35 = !{!"AVPacket", !17, i64 0, !13, i64 8, !13, i64 16, !28, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !34, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !17, i64 88, !12, i64 96}
!36 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!37 = !{!"V4L2m2mContext", !5, i64 0, !6, i64 4096, !31, i64 4104, !31, i64 4376, !33, i64 4648, !5, i64 4656, !5, i64 4688, !6, i64 4692, !6, i64 4696, !35, i64 4704, !36, i64 4808, !22, i64 4816, !9, i64 4824}
!38 = !{!37, !33, i64 4648}
!39 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!40 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!41 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!42 = !{!"float", !5, i64 0}
!43 = !{!"p1 short", !9, i64 0}
!44 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!45 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!46 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!47 = !{!"p1 int", !9, i64 0}
!48 = !{!"AVCodecContext", !39, i64 0, !6, i64 8, !6, i64 12, !40, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !41, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !28, i64 72, !6, i64 80, !12, i64 84, !12, i64 92, !12, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !12, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !43, i64 288, !43, i64 296, !43, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !42, i64 428, !42, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !44, i64 456, !13, i64 464, !13, i64 472, !42, i64 480, !42, i64 484, !6, i64 488, !6, i64 492, !28, i64 496, !28, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !45, i64 536, !9, i64 544, !17, i64 552, !17, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !46, i64 728, !28, i64 736, !6, i64 744, !6, i64 748, !28, i64 752, !28, i64 760, !28, i64 768, !34, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !47, i64 832, !6, i64 840, !15, i64 848, !6, i64 856, !6, i64 860}
!49 = !{!48, !6, i64 92}
!50 = !{!6, !6, i64 0}
!51 = !{!26, !13, i64 256}
!52 = !{!26, !13, i64 248}
!53 = !{!26, !6, i64 216}
!54 = !{!19, !6, i64 116}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!28, !28, i64 0}
!57 = !{!"V4L2Plane_info", !6, i64 0, !9, i64 8, !13, i64 16}
!58 = !{!57, !13, i64 16}
!59 = !{!57, !9, i64 8}
!60 = !{!26, !6, i64 228}
!61 = !{!"v4l2_plane", !6, i64 0, !6, i64 4, !5, i64 8, !6, i64 16, !5, i64 20}
!62 = !{!61, !6, i64 0}
!63 = !{!61, !6, i64 4}
!64 = !{!26, !6, i64 232}
!65 = !{!26, !6, i64 296}
!66 = !{!17, !17, i64 0}
!67 = !{!"p1 _ZTS8AVBuffer", !9, i64 0}
!68 = !{!"AVBufferRef", !67, i64 0, !28, i64 8, !13, i64 16}
!69 = !{!68, !28, i64 8}
!70 = !{!61, !6, i64 16}
!71 = !{!26, !22, i64 8}
!72 = !{!37, !22, i64 4816}
!73 = !{!26, !5, i64 16}
!74 = !{!26, !6, i64 828}
end_hunk_0
