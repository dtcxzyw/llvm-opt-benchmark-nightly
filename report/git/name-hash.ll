Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/name-hash?download=true
inline.NumInlined: 51
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@handle_range_1:bb.a
  %.not9.i79 = icmp eq ptr %i.ds, @strbuf_slopbuf
  br i1 %.not9.i79, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dp
  store i8 0, ptr %i.dt, align 1, !tbaa !72
  br label %strbuf_setlen.exit81

bb.z:                                             ; preds = %bb.x
  %i.du = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !72
  %.not10.i80 = icmp eq i8 %i.du, 0
  br i1 %.not10.i80, label %strbuf_setlen.exit81, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

strbuf_setlen.exit81:                             ; preds = %bb.y, %bb.z
  %.not70 = icmp eq i32 %i.do, 0
  %i.dv = load i64, ptr %4, align 8, !tbaa !78    ; 3 uses
  br i1 %.not70, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %strbuf_setlen.exit81
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.dv, i64 1)
  %i.dw = icmp ugt i64 %i.m, %spec.select.i
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.13, i32 noundef 167, ptr noundef nonnull @.str.14) #15
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i64 %i.m, ptr %i.a, align 8, !tbaa !69
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !71  ; 2 uses
  %.not9.i = icmp eq ptr %i.dx, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.ae, label %strbuf_setlen.exit.sink.split, !llvm.loop !81

bb.ae:                                            ; preds = %bb.ad
  %i.dy = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !72
  %.not10.i = icmp eq i8 %i.dy, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.af, !llvm.loop !81

bb.af:                                            ; preds = %bb.ae
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

bb.ag:                                            ; preds = %strbuf_setlen.exit81
  %.not.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.ag
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %.neg.i = add i64 %i.dz, 1                      ; 2 uses
  %.not.i73 = icmp eq i64 %i.dv, %.neg.i
  br i1 %.not.i73, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.ag
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef 1) #14
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.ea = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.dz, %strbuf_avail.exit.i ]
  %i.eb = load ptr, ptr %i.d, align 8, !tbaa !71
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !69
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ea
  store i8 47, ptr %i.ec, align 1, !tbaa !72
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !69
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.ef, align 1, !tbaa !72
  %i.eg = call fastcc i32 @handle_range_1(ptr noundef nonnull %0, i32 noundef %.061113, i32 noundef %2, ptr noundef nonnull %.0.i94, ptr noundef %4, ptr noundef %5) ; 2 uses
  %i.eh = load i64, ptr %4, align 8, !tbaa !78
  %spec.select.i74 = call i64 @llvm.usub.sat.i64(i64 %i.eh, i64 1)
  %i.ei = icmp ugt i64 %i.m, %spec.select.i74
  br i1 %i.ei, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %strbuf_addch.exit
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.13, i32 noundef 167, ptr noundef nonnull @.str.14) #15
  unreachable

bb.ai:                                            ; preds = %strbuf_addch.exit
  store i64 %i.m, ptr %i.a, align 8, !tbaa !69
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !71  ; 2 uses
  %.not9.i75 = icmp eq ptr %i.ej, @strbuf_slopbuf
  br i1 %.not9.i75, label %bb.aj, label %strbuf_setlen.exit.sink.split, !llvm.loop !81

bb.aj:                                            ; preds = %bb.ai
  %i.ek = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !72
  %.not10.i76 = icmp eq i8 %i.ek, 0
  br i1 %.not10.i76, label %strbuf_setlen.exit, label %bb.ak, !llvm.loop !81

bb.ak:                                            ; preds = %bb.aj
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

strbuf_setlen.exit.sink.split:                    ; preds = %bb.ai, %bb.ad
  %.sink139 = phi ptr [ %i.dx, %bb.ad ], [ %i.ej, %bb.ai ]
  %.pn.ph = phi i32 [ %i.do, %bb.ad ], [ %i.eg, %bb.ai ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sink139, i64 %i.m
  store i8 0, ptr %i.el, align 1, !tbaa !72
  br label %strbuf_setlen.exit

strbuf_setlen.exit:                               ; preds = %strbuf_setlen.exit.sink.split, %bb.aj, %bb.ae
  %.pn = phi i32 [ %i.do, %bb.ae ], [ %i.eg, %bb.aj ], [ %.pn.ph, %strbuf_setlen.exit.sink.split ]
  %.162 = add nsw i32 %.pn, %.061113
  br label %bb.ap

bb.al:                                            ; preds = %bb.d
  %i.em = getelementptr inbounds [16 x i8], ptr %5, i64 %i.o ; 3 uses
  store ptr %3, ptr %i.em, align 8, !tbaa !49
  br i1 %.not69, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.en = load i32, ptr %i.f, align 8, !tbaa !59
  %i.eo = load i32, ptr %i.g, align 4, !tbaa !12  ; 2 uses
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.es = load i32, ptr %i.er, align 8, !tbaa !12
  %i.et = sub i32 %i.es, %i.eo
  %i.eu = zext i32 %i.et to i64
  %i.ev = call i32 @memihash_cont(i32 noundef %i.en, ptr noundef nonnull %i.eq, i64 noundef %i.eu) #14
  %i.ew = load i32, ptr %i.f, align 8, !tbaa !59
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %i.ew, ptr %i.ex, align 8, !tbaa !82
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !12
  %i.fa = zext i32 %i.ez to i64
  %i.fb = call i32 @memihash(ptr noundef nonnull %i.v, i64 noundef %i.fa) #14
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sink = phi i32 [ %i.fb, %bb.an ], [ %i.ev, %bb.am ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 %.sink, ptr %i.fc, align 4, !tbaa !76
  %i.fd = add nsw i32 %.061113, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %strbuf_setlen.exit
  %.2 = phi i32 [ %i.fd, %bb.ao ], [ %.162, %strbuf_setlen.exit ] ; 3 uses
  %i.fe = icmp slt i32 %.2, %2
  br i1 %i.fe, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.ap, %bb.c, %bb.a
  %.061.lcssa = phi i32 [ %1, %bb.a ], [ %.061113, %bb.c ], [ %.2, %bb.ap ]
  %i.ff = sub nsw i32 %.061.lcssa, %1
  ret i32 %i.ff
}

declare void @strbuf_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @memihash_cont(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

declare void @hashmap_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @hashmap_bucket(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #7

declare ptr @hashmap_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #7

declare void @hashmap_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @hashmap_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @hash_dir_entry(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.dir_entry, align 8          ; 6 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02833 = phi i32 [ %5, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %4 = zext nneg i32 %.02833 to i64
  %i.b = getelementptr i8, ptr %1, i64 %4
  %i.c = getelementptr i8, ptr %i.b, i64 107
  %i.d = load i8, ptr %i.c, align 1, !tbaa !72
  %.not = icmp eq i8 %i.d, 47
  %5 = add nsw i32 %.02833, -1                    ; 5 uses
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp sgt i32 %.02833, 1
  br i1 %i.e, label %.lr.ph, label %.critedge.thread, !llvm.loop !83

.critedge:                                        ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 4 uses
  %i.g = zext nneg i32 %5 to i64                  ; 4 uses
  %i.h = tail call i32 @memihash(ptr noundef nonnull %i.f, i64 noundef %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !59
  store ptr null, ptr %3, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %5, ptr %i.j, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = call ptr @hashmap_get(ptr noundef nonnull %i.k, ptr noundef nonnull %3, ptr noundef nonnull %i.f) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.not30 = icmp eq ptr %i.l, null
  br i1 %.not30, label %st_add.exit31, label %.critedge.thread

st_add.exit31:                                    ; preds = %.critedge
  %i.m = add nuw nsw i64 %i.g, 33
  %i.n = call ptr @xcalloc(i64 noundef 1, i64 noundef %i.m) #14 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 4 %i.f, i64 %i.g, i1 false)
  %i.p = call i32 @memihash(ptr noundef nonnull %i.f, i64 noundef %i.g) #14
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !59
  store ptr null, ptr %i.n, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 %5, ptr %i.r, align 4, !tbaa !12
  call void @hashmap_add(ptr noundef nonnull %i.k, ptr noundef nonnull %i.n) #14
  %i.s = call fastcc ptr @hash_dir_entry(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %5)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !63
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.a, %.critedge, %st_add.exit31
  %.0 = phi ptr [ %i.n, %st_add.exit31 ], [ %i.l, %.critedge ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !30, i64 240}
!14 = !{!"index_state", !15, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !18, i64 24, !19, i64 32, !20, i64 40, !21, i64 48, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 60, !22, i64 64, !22, i64 112, !24, i64 160, !25, i64 200, !26, i64 208, !27, i64 216, !28, i64 224, !29, i64 232, !30, i64 240, !31, i64 248}
!15 = !{!"p2 _ZTS11cache_entry", !16, i64 0}
!16 = !{!"any p2 pointer", !17, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"p1 _ZTS11string_list", !17, i64 0}
!19 = !{!"p1 _ZTS10cache_tree", !17, i64 0}
!20 = !{!"p1 _ZTS11split_index", !17, i64 0}
!21 = !{!"cache_time", !9, i64 0, !9, i64 4}
!22 = !{!"hashmap", !23, i64 0, !17, i64 8, !17, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!23 = !{!"p2 _ZTS13hashmap_entry", !16, i64 0}
!24 = !{!"object_id", !10, i64 0, !9, i64 32}
!25 = !{!"p1 _ZTS15untracked_cache", !17, i64 0}
!26 = !{!"p1 omnipotent char", !17, i64 0}
!27 = !{!"p1 _ZTS11ewah_bitmap", !17, i64 0}
!28 = !{!"p1 _ZTS8mem_pool", !17, i64 0}
!29 = !{!"p1 _ZTS8progress", !17, i64 0}
!30 = !{!"p1 _ZTS10repository", !17, i64 0}
!31 = !{!"p1 _ZTS12pattern_list", !17, i64 0}
!32 = !{!14, !9, i64 12}
!33 = !{!17, !17, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!37, !39, i64 8}
!37 = !{!"lazy_dir_thread_data", !38, i64 0, !39, i64 8, !40, i64 16, !9, i64 24, !9, i64 28}
!38 = !{!"long", !10, i64 0}
!39 = !{!"p1 _ZTS11index_state", !17, i64 0}
!40 = !{!"p1 _ZTS10lazy_entry", !17, i64 0}
!41 = !{!37, !40, i64 16}
!42 = !{!37, !9, i64 24}
!43 = !{!37, !9, i64 28}
!44 = distinct !{!44, !35}
!45 = !{!37, !38, i64 0}
!46 = !{!47, !39, i64 8}
!47 = !{!"lazy_name_thread_data", !38, i64 0, !39, i64 8, !40, i64 16}
!48 = !{!47, !40, i64 16}
!49 = !{!50, !51, i64 0}
!50 = !{!"lazy_entry", !51, i64 0, !9, i64 8, !9, i64 12}
!51 = !{!"p1 _ZTS9dir_entry", !17, i64 0}
!52 = distinct !{!52, !35}
!53 = !{!47, !38, i64 0}
!54 = distinct !{!54, !35}
!55 = !{!22, !9, i64 24}
!56 = !{!14, !15, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTS11cache_entry", !17, i64 0}
!59 = !{!60, !9, i64 8}
!60 = !{!"hashmap_entry", !61, i64 0, !9, i64 8}
!61 = !{!"p1 _ZTS13hashmap_entry", !17, i64 0}
!62 = !{!60, !61, i64 0}
!63 = !{!51, !51, i64 0}
!64 = distinct !{!64, !35}
!65 = distinct !{!65, !35}
!66 = !{!67, !9, i64 8}
!67 = !{!"trace_key", !26, i64 0, !9, i64 8, !9, i64 12, !9, i64 12}
!68 = distinct !{!68, !35}
!69 = !{!70, !38, i64 8}
!70 = !{!"strbuf", !38, i64 0, !38, i64 8, !26, i64 16}
!71 = !{!70, !26, i64 16}
!72 = !{!10, !10, i64 0}
!73 = distinct !{!73, !35}
!74 = distinct !{!74, !35}
!75 = distinct !{!75, !35}
!76 = !{!50, !9, i64 12}
!77 = distinct !{!77, !35}
!78 = !{!70, !38, i64 0}
!79 = distinct !{null}
!80 = distinct !{!80, !35}
!81 = distinct !{!81, !35}
!82 = !{!50, !9, i64 8}
!83 = distinct !{!83, !35}
end_hunk_0
