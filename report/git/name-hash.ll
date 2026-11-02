Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/name-hash?download=true
inline.NumInlined: 51
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@handle_range_1:bb.a
  %.not9.i77 = icmp eq ptr %i.dv, @strbuf_slopbuf
  br i1 %.not9.i77, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ds
  store i8 0, ptr %i.dw, align 1, !tbaa !60
  br label %strbuf_setlen.exit79

bb.z:                                             ; preds = %bb.x
  %i.dx = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !60
  %.not10.i78 = icmp eq i8 %i.dx, 0
  br i1 %.not10.i78, label %strbuf_setlen.exit79, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

strbuf_setlen.exit79:                             ; preds = %bb.y, %bb.z
  %.not70 = icmp eq i32 %i.dq, 0
  %i.dy = load i64, ptr %4, align 8, !tbaa !81    ; 3 uses
  br i1 %.not70, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %strbuf_setlen.exit79
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.dy, i64 1)
  %i.dz = icmp ugt i64 %i.n, %spec.select.i
  br i1 %i.dz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.13, i32 noundef 167, ptr noundef nonnull @.str.14) #15
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i64 %i.n, ptr %i.a, align 8, !tbaa !58
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  %.not9.i = icmp eq ptr %i.ea, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.ae, label %strbuf_setlen.exit.sink.split, !llvm.loop !80

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !60
  %.not10.i = icmp eq i8 %i.eb, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.af, !llvm.loop !80

bb.af:                                            ; preds = %bb.ae
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

bb.ag:                                            ; preds = %strbuf_setlen.exit79
  %.not.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.ag
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %.neg.i = add i64 %i.ec, 1                      ; 2 uses
  %.not.i71 = icmp eq i64 %i.dy, %.neg.i
  br i1 %.not.i71, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.ag
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef 1) #14
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !58 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.ed = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.ec, %strbuf_avail.exit.i ]
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !59
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !58
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ed
  store i8 47, ptr %i.ef, align 1, !tbaa !60
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !58
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  store i8 0, ptr %i.ei, align 1, !tbaa !60
  %i.ej = call fastcc i32 @handle_range_1(ptr noundef nonnull %0, i32 noundef %.061111, i32 noundef %2, ptr noundef nonnull %.0.i92, ptr noundef %4, ptr noundef %5) ; 2 uses
  %i.ek = load i64, ptr %4, align 8, !tbaa !81
  %spec.select.i72 = call i64 @llvm.usub.sat.i64(i64 %i.ek, i64 1)
  %i.el = icmp ugt i64 %i.n, %spec.select.i72
  br i1 %i.el, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %strbuf_addch.exit
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.13, i32 noundef 167, ptr noundef nonnull @.str.14) #15
  unreachable

bb.ai:                                            ; preds = %strbuf_addch.exit
  store i64 %i.n, ptr %i.a, align 8, !tbaa !58
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  %.not9.i73 = icmp eq ptr %i.em, @strbuf_slopbuf
  br i1 %.not9.i73, label %bb.aj, label %strbuf_setlen.exit.sink.split, !llvm.loop !80

bb.aj:                                            ; preds = %bb.ai
  %i.en = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !60
  %.not10.i74 = icmp eq i8 %i.en, 0
  br i1 %.not10.i74, label %strbuf_setlen.exit, label %bb.ak, !llvm.loop !80

bb.ak:                                            ; preds = %bb.aj
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

strbuf_setlen.exit.sink.split:                    ; preds = %bb.ai, %bb.ad
  %.sink138 = phi ptr [ %i.ea, %bb.ad ], [ %i.em, %bb.ai ]
  %.pn.ph = phi i32 [ %i.dq, %bb.ad ], [ %i.ej, %bb.ai ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sink138, i64 %i.n
  store i8 0, ptr %i.eo, align 1, !tbaa !60
  br label %strbuf_setlen.exit

strbuf_setlen.exit:                               ; preds = %strbuf_setlen.exit.sink.split, %bb.aj, %bb.ae
  %.pn = phi i32 [ %i.dq, %bb.ae ], [ %i.ej, %bb.aj ], [ %.pn.ph, %strbuf_setlen.exit.sink.split ]
  %.162 = add nsw i32 %.pn, %.061111
  br label %bb.ap

bb.al:                                            ; preds = %bb.d
  %i.ep = getelementptr inbounds [16 x i8], ptr %5, i64 %i.p ; 3 uses
  store ptr %3, ptr %i.ep, align 8, !tbaa !48
  br i1 %i.e, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eq = load i32, ptr %i.f, align 8, !tbaa !54
  %i.er = load i32, ptr %i.g, align 4, !tbaa !13  ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !13
  %i.ew = sub i32 %i.ev, %i.er
  %i.ex = zext i32 %i.ew to i64
  %i.ey = call i32 @memihash_cont(i32 noundef %i.eq, ptr noundef nonnull %i.et, i64 noundef %i.ex) #14
  %i.ez = load i32, ptr %i.f, align 8, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 %i.ez, ptr %i.fa, align 8, !tbaa !82
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !13
  %i.fd = zext i32 %i.fc to i64
  %i.fe = call i32 @memihash(ptr noundef nonnull %i.w, i64 noundef %i.fd) #14
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sink = phi i32 [ %i.fe, %bb.an ], [ %i.ey, %bb.am ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 %.sink, ptr %i.ff, align 4, !tbaa !61
  %i.fg = add nsw i32 %.061111, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %strbuf_setlen.exit
  %.2 = phi i32 [ %i.fg, %bb.ao ], [ %.162, %strbuf_setlen.exit ] ; 3 uses
  %i.fh = icmp slt i32 %.2, %2
  br i1 %i.fh, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.ap, %bb.c, %bb.a
  %.061.lcssa = phi i32 [ %1, %bb.a ], [ %.061111, %bb.c ], [ %.2, %bb.ap ]
  %i.fi = sub nsw i32 %.061.lcssa, %1
  ret i32 %i.fi
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
  %i.d = load i8, ptr %i.c, align 1, !tbaa !60
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
  store i32 %i.h, ptr %i.i, align 8, !tbaa !54
  store ptr null, ptr %3, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %5, ptr %i.j, align 4, !tbaa !13
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
  store i32 %i.p, ptr %i.q, align 8, !tbaa !54
  store ptr null, ptr %i.n, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 %5, ptr %i.r, align 4, !tbaa !13
  call void @hashmap_add(ptr noundef nonnull %i.k, ptr noundef nonnull %i.n) #14
  %i.s = call fastcc ptr @hash_dir_entry(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %5)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !56
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

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !34}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"any p2 pointer", !14, i64 0}
!16 = !{!"p2 _ZTS11cache_entry", !15, i64 0}
!17 = !{!"p1 _ZTS11string_list", !14, i64 0}
!18 = !{!"p1 _ZTS10cache_tree", !14, i64 0}
!19 = !{!"p1 _ZTS11split_index", !14, i64 0}
!20 = !{!"cache_time", !10, i64 0, !10, i64 4}
!21 = !{!"p2 _ZTS13hashmap_entry", !15, i64 0}
!22 = !{!"hashmap", !21, i64 0, !14, i64 8, !14, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40}
!23 = !{!"object_id", !9, i64 0, !10, i64 32}
!24 = !{!"p1 _ZTS15untracked_cache", !14, i64 0}
!25 = !{!"p1 omnipotent char", !14, i64 0}
!26 = !{!"p1 _ZTS11ewah_bitmap", !14, i64 0}
!27 = !{!"p1 _ZTS8mem_pool", !14, i64 0}
!28 = !{!"p1 _ZTS8progress", !14, i64 0}
!29 = !{!"p1 _ZTS10repository", !14, i64 0}
!30 = !{!"p1 _ZTS12pattern_list", !14, i64 0}
!31 = !{!"index_state", !16, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !17, i64 24, !18, i64 32, !19, i64 40, !20, i64 48, !10, i64 56, !10, i64 56, !10, i64 56, !10, i64 56, !10, i64 56, !10, i64 56, !10, i64 60, !22, i64 64, !22, i64 112, !23, i64 160, !24, i64 200, !25, i64 208, !26, i64 216, !27, i64 224, !28, i64 232, !29, i64 240, !30, i64 248}
!32 = !{!31, !10, i64 12}
!33 = !{!14, !14, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"long", !9, i64 0}
!36 = !{!"p1 _ZTS11index_state", !14, i64 0}
!37 = !{!"p1 _ZTS10lazy_entry", !14, i64 0}
!38 = !{!"lazy_dir_thread_data", !35, i64 0, !36, i64 8, !37, i64 16, !10, i64 24, !10, i64 28}
!39 = !{!38, !36, i64 8}
!40 = !{!38, !37, i64 16}
!41 = !{!38, !10, i64 24}
!42 = !{!38, !10, i64 28}
!43 = !{!"lazy_name_thread_data", !35, i64 0, !36, i64 8, !37, i64 16}
!44 = !{!43, !36, i64 8}
!45 = !{!43, !37, i64 16}
!46 = !{!"p1 _ZTS9dir_entry", !14, i64 0}
!47 = !{!"lazy_entry", !46, i64 0, !10, i64 8, !10, i64 12}
!48 = !{!47, !46, i64 0}
!49 = !{!31, !16, i64 0}
!50 = !{!"p1 _ZTS11cache_entry", !14, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 _ZTS13hashmap_entry", !14, i64 0}
!53 = !{!"hashmap_entry", !52, i64 0, !10, i64 8}
!54 = !{!53, !10, i64 8}
!55 = !{!53, !52, i64 0}
!56 = !{!46, !46, i64 0}
!57 = !{!"strbuf", !35, i64 0, !35, i64 8, !25, i64 16}
!58 = !{!57, !35, i64 8}
!59 = !{!57, !25, i64 16}
!60 = !{!9, !9, i64 0}
!61 = !{!47, !10, i64 12}
!62 = distinct !{!62, !34}
!63 = distinct !{!63, !34}
!64 = distinct !{!64, !34}
!65 = distinct !{!65, !34}
!66 = distinct !{!66, !34}
!67 = !{!31, !29, i64 240}
!68 = !{!38, !35, i64 0}
!69 = !{!43, !35, i64 0}
!70 = !{!22, !10, i64 24}
!71 = !{!"trace_key", !25, i64 0, !10, i64 8, !10, i64 12, !10, i64 12}
!72 = !{!71, !10, i64 8}
!73 = distinct !{!73, !34}
!74 = distinct !{!74, !34}
!75 = distinct !{!75, !34}
!76 = distinct !{!76, !34}
!77 = distinct !{!77, !34}
!78 = distinct !{null}
!79 = distinct !{!79, !34}
!80 = distinct !{!80, !34}
!81 = !{!57, !35, i64 0}
!82 = !{!47, !10, i64 8}
!83 = distinct !{!83, !34}
end_hunk_0
