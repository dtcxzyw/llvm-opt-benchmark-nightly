Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_shar?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
begin_hunk_0_@archive_write_shar_data_uuencode:bb.a
._crit_edge:                                      ; preds = %.backedge, %bb.f
  %.152.lcssa = phi ptr [ %.051, %bb.f ], [ %i.t, %.backedge ]
  %.2.lcssa = phi i64 [ %.150, %bb.f ], [ %i.u, %.backedge ] ; 3 uses
  %.not63 = icmp eq i64 %.2.lcssa, 0
  br i1 %.not63, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 1 %.152.lcssa, i64 %.2.lcssa, i1 false)
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.c, %bb.k
  %.2.lcssa.sink = phi i64 [ %.2.lcssa, %bb.k ], [ %i.k, %bb.c ]
  store i64 %.2.lcssa.sink, ptr %i.e, align 8, !tbaa !38
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.g, %.loopexit.sink.split, %._crit_edge, %bb.a, %bb.d
  %.4 = phi i64 [ -30, %bb.d ], [ 0, %bb.a ], [ %2, %.loopexit.sink.split ], [ %2, %._crit_edge ], [ -30, %bb.g ], [ -30, %bb.i ]
  ret i64 %.4
}

declare ptr @archive_strcat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @archive_entry_free(ptr noundef) local_unnamed_addr #1

declare ptr @archive_entry_clone(ptr noundef) local_unnamed_addr #1

declare ptr @archive_entry_pathname(ptr noundef) local_unnamed_addr #1

declare i32 @archive_entry_filetype(ptr noundef) local_unnamed_addr #1

declare void @archive_entry_set_size(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @archive_entry_hardlink(ptr noundef) local_unnamed_addr #1

declare ptr @archive_entry_symlink(ptr noundef) local_unnamed_addr #1

declare void @__archive_write_entry_filetype_unsupported(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @shar_quote(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !32      ; 3 uses
  %.not19 = icmp eq i8 %i.a, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not18 = icmp eq i32 %2, 0
  br i1 %.not18, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %i.b = phi i8 [ %i.k, %bb.f ], [ %i.a, %.lr.ph ]
  %.020.us = phi ptr [ %i.j, %bb.f ], [ %1, %.lr.ph ] ; 4 uses
  %i.c = tail call i64 @strcspn(ptr noundef nonnull %.020.us, ptr noundef nonnull @shar_quote.meta) #10 ; 3 uses
  %.not17.us = icmp eq i64 %i.c, 0
  br i1 %.not17.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.d = tail call ptr @archive_strncat(ptr noundef %0, ptr noundef nonnull %.020.us, i64 noundef %i.c) #8 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.e = icmp eq i8 %i.b, 10
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @archive_strappend_char(ptr noundef %0, i8 noundef signext 92) #8 ; 0 uses
  %i.g = load i8, ptr %.020.us, align 1, !tbaa !32
  %i.h = tail call ptr @archive_strappend_char(ptr noundef %0, i8 noundef signext %i.g) #8 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call ptr @archive_strcat(ptr noundef %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sink = phi i64 [ 1, %bb.e ], [ 1, %bb.d ], [ %i.c, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.020.us, i64 %.sink ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !32    ; 2 uses
  %.not.us = icmp eq i8 %i.k, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %i.l = phi i8 [ %i.u, %bb.k ], [ %i.a, %.lr.ph ]
  %.020 = phi ptr [ %i.t, %bb.k ], [ %1, %.lr.ph ] ; 4 uses
  %i.m = tail call i64 @strcspn(ptr noundef nonnull %.020, ptr noundef nonnull @shar_quote.meta) #10 ; 3 uses
  %.not17 = icmp eq i64 %i.m, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.n = tail call ptr @archive_strncat(ptr noundef %0, ptr noundef nonnull %.020, i64 noundef %i.m) #8 ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.split
  %i.o = icmp eq i8 %i.l, 10
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @archive_strcat(ptr noundef %0, ptr noundef nonnull @.str.24) #8 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.q = tail call ptr @archive_strappend_char(ptr noundef %0, i8 noundef signext 92) #8 ; 0 uses
  %i.r = load i8, ptr %.020, align 1, !tbaa !32
  %i.s = tail call ptr @archive_strappend_char(ptr noundef %0, i8 noundef signext %i.r) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.sink27 = phi i64 [ 1, %bb.i ], [ 1, %bb.j ], [ %i.m, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %.020, i64 %.sink27 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32    ; 2 uses
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.k, %bb.f, %bb.a
  ret void
}

declare void @archive_string_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare i64 @archive_entry_size(ptr noundef) local_unnamed_addr #1

declare i32 @archive_entry_mode(ptr noundef) local_unnamed_addr #1

declare i64 @archive_entry_rdevmajor(ptr noundef) local_unnamed_addr #1

declare i64 @archive_entry_rdevminor(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @archive_strncat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @archive_strappend_char(ptr noundef, i8 noundef signext) local_unnamed_addr #1

declare ptr @archive_string_ensure(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @__archive_write_output(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @_uuencode_line(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40
  %i.d = add i64 %i.c, 62
  %i.e = tail call ptr @archive_string_ensure(ptr noundef nonnull %i.a, i64 noundef %i.d) #8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.9) #8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.h = load i64, ptr %i.b, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 2 uses
  %i.j = trunc i64 %3 to i8
  %i.k = and i8 %i.j, 63
  %i.l = add nuw nsw i8 %i.k, 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store i8 %i.l, ptr %i.i, align 1, !tbaa !32
  %i.n = icmp ugt i64 %3, 2
  br i1 %i.n, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.039 = phi ptr [ %i.am, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %.02938 = phi i64 [ %i.ak, %.lr.ph ], [ %3, %bb.c ]
  %.03037 = phi ptr [ %i.al, %.lr.ph ], [ %2, %bb.c ] ; 4 uses
  %i.o = load i8, ptr %.03037, align 1, !tbaa !32
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 16
  %i.r = getelementptr inbounds nuw i8, ptr %.03037, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !32
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03037, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !32
  %4 = or disjoint i32 %i.u, %i.q
  %5 = zext i8 %i.w to i32                        ; 2 uses
  %i.x = or disjoint i32 %i.u, %5
  %i.y = lshr i32 %i.x, 6
  %i.z = lshr i32 %4, 12
  %i.aa = lshr i32 %i.p, 2
  %i.ab = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.z, i64 1
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.y, i64 2
  %i.ae = insertelement <4 x i32> %i.ad, i32 %5, i64 3
  %i.af = and <4 x i32> %i.ae, <i32 -1, i32 63, i32 63, i32 63> ; 2 uses
  %i.ag = icmp eq <4 x i32> %i.af, zeroinitializer
  %i.ah = trunc <4 x i32> %i.af to <4 x i8>
  %i.ai = add nuw nsw <4 x i8> %i.ah, splat (i8 32)
  %i.aj = select <4 x i1> %i.ag, <4 x i8> splat (i8 96), <4 x i8> %i.ai
  store <4 x i8> %i.aj, ptr %.039, align 1, !tbaa !32
  %i.ak = add i64 %.02938, -3                     ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03037, i64 3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.039, i64 4 ; 3 uses
  %i.an = icmp ugt i64 %i.ak, 2
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %bb.f, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.0.lcssa53 = phi ptr [ %i.am, %._crit_edge ], [ %i.m, %bb.c ] ; 5 uses
  %.029.lcssa52 = phi i64 [ %i.ak, %._crit_edge ], [ %3, %bb.c ]
  %.030.lcssa51 = phi ptr [ %i.al, %._crit_edge ], [ %2, %bb.c ] ; 2 uses
  %i.ao = load i8, ptr %.030.lcssa51, align 1, !tbaa !32
  %i.ap = icmp eq i64 %.029.lcssa52, 1
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %.030.lcssa51, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !32
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread, %bb.d
  %.sroa.4.0 = phi i32 [ %i.at, %bb.d ], [ 0, %._crit_edge.thread ] ; 2 uses
  %i.au = zext i8 %i.ao to i32                    ; 2 uses
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = add nuw nsw i32 %.sroa.4.0, %i.av
  %i.ax = lshr i32 %i.au, 2                       ; 2 uses
  %.not.i33 = icmp eq i32 %i.ax, 0
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  %i.az = add nuw nsw i8 %i.ay, 32
  %i.ba = select i1 %.not.i33, i8 96, i8 %i.az
  store i8 %i.ba, ptr %.0.lcssa53, align 1, !tbaa !32
  %i.bb = lshr i32 %i.aw, 12
  %i.bc = and i32 %i.bb, 63                       ; 2 uses
  %.not17.i34 = icmp eq i32 %i.bc, 0
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  %i.be = add nuw nsw i8 %i.bd, 32
  %i.bf = select i1 %.not17.i34, i8 96, i8 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa53, i64 1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !32
  %i.bh = lshr exact i32 %.sroa.4.0, 6
  %i.bi = and i32 %i.bh, 60                       ; 2 uses
  %.not18.i35 = icmp eq i32 %i.bi, 0
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = add nuw nsw i8 %i.bj, 32
  %i.bl = select i1 %.not18.i35, i8 96, i8 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa53, i64 2
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa53, i64 3
  store i8 96, ptr %i.bn, align 1, !tbaa !32
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa53, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.1 = phi ptr [ %i.bo, %bb.e ], [ %i.am, %._crit_edge ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 10, ptr %.1, align 1, !tbaa !32
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !40
  %i.bv = add i64 %i.bu, 62
  %i.bw = icmp sgt i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.26) #8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.031 = phi i32 [ -30, %bb.b ], [ -30, %bb.g ], [ 0, %bb.h ]
  ret i32 %.031
}

declare ptr @archive_entry_uname(ptr noundef) local_unnamed_addr #1

declare ptr @archive_entry_gname(ptr noundef) local_unnamed_addr #1

declare ptr @archive_entry_fflags_text(ptr noundef) local_unnamed_addr #1

declare i32 @archive_write_set_bytes_in_last_block(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @archive_string_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !33}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS14archive_vtable", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"archive_string", !12, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!"p1 _ZTS19archive_string_conv", !10, i64 0}
!16 = !{!"archive", !7, i64 0, !7, i64 4, !11, i64 8, !7, i64 16, !12, i64 24, !7, i64 32, !7, i64 36, !12, i64 40, !14, i64 48, !12, i64 72, !7, i64 80, !7, i64 84, !15, i64 88, !12, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !6, i64 128, !13, i64 136}
!17 = !{!"p1 _ZTS20archive_write_filter", !10, i64 0}
!18 = !{!"archive_write", !16, i64 0, !7, i64 144, !13, i64 152, !13, i64 160, !12, i64 168, !13, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !7, i64 224, !7, i64 228, !17, i64 232, !17, i64 240, !10, i64 248, !12, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !12, i64 320, !10, i64 328, !10, i64 336}
!19 = !{!18, !10, i64 312}
!20 = !{!18, !10, i64 248}
!21 = !{!18, !12, i64 256}
!22 = !{!18, !10, i64 288}
!23 = !{!18, !10, i64 304}
!24 = !{!18, !10, i64 296}
!25 = !{!18, !10, i64 280}
!26 = !{!18, !7, i64 16}
!27 = !{!18, !12, i64 24}
!28 = !{!"p1 _ZTS13archive_entry", !10, i64 0}
!29 = !{!"shar", !7, i64 0, !7, i64 4, !28, i64 8, !7, i64 16, !12, i64 24, !6, i64 32, !13, i64 80, !7, i64 88, !14, i64 96, !14, i64 120}
!30 = !{!29, !7, i64 88}
!31 = !{!29, !28, i64 8}
!32 = !{!6, !6, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!29, !12, i64 24}
!35 = !{!29, !7, i64 16}
!36 = !{!29, !7, i64 0}
!37 = !{!29, !7, i64 4}
!38 = !{!29, !13, i64 80}
!39 = !{!29, !12, i64 96}
!40 = !{!29, !13, i64 104}
!41 = !{!29, !13, i64 128}
!42 = !{!29, !12, i64 120}
!43 = distinct !{!43, !33}
!44 = !{ptr @archive_write_set_format_shar}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
end_hunk_0
