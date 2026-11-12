Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_dns_mapping?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ares_dns_rr_get_keys:bb.a
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ares_dns_class_fromstr(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.21, ptr noundef nonnull %1) #4
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %.preheader.1, label %bb.b

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.22, ptr noundef nonnull %1) #4
  %.not13.1 = icmp eq i32 %i.d, 0
  br i1 %.not13.1, label %.preheader.2, label %bb.b

.preheader.2:                                     ; preds = %.preheader.1
  %i.e = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.23, ptr noundef nonnull %1) #4
  %.not13.2 = icmp eq i32 %i.e, 0
  br i1 %.not13.2, label %.preheader.3, label %bb.b

.preheader.3:                                     ; preds = %.preheader.2
  %i.f = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.24, ptr noundef nonnull %1) #4
  %.not13.3 = icmp eq i32 %i.f, 0
  br i1 %.not13.3, label %.preheader.4, label %bb.b

.preheader.4:                                     ; preds = %.preheader.3
  %i.g = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.16, ptr noundef nonnull %1) #4
  %.not13.4 = icmp eq i32 %i.g, 0
  br i1 %.not13.4, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ @ares_dns_class_fromstr.list, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_class_fromstr.list, i64 16), %.preheader.1 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_class_fromstr.list, i64 32), %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_class_fromstr.list, i64 48), %.preheader.3 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_class_fromstr.list, i64 64), %.preheader.4 ]
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !11
  store i32 %i.i, ptr %0, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.4, %bb.a, %bb.b
  %.09 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %.preheader.4 ]
  ret i32 %.09
}

declare i32 @ares_strcaseeq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ares_dns_rec_type_fromstr(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str, ptr noundef nonnull %1) #4
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %.preheader.1, label %bb.b

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #4
  %.not13.1 = icmp eq i32 %i.d, 0
  br i1 %.not13.1, label %.preheader.2, label %bb.b

.preheader.2:                                     ; preds = %.preheader.1
  %i.e = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #4
  %.not13.2 = icmp eq i32 %i.e, 0
  br i1 %.not13.2, label %.preheader.3, label %bb.b

.preheader.3:                                     ; preds = %.preheader.2
  %i.f = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #4
  %.not13.3 = icmp eq i32 %i.f, 0
  br i1 %.not13.3, label %.preheader.4, label %bb.b

.preheader.4:                                     ; preds = %.preheader.3
  %i.g = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #4
  %.not13.4 = icmp eq i32 %i.g, 0
  br i1 %.not13.4, label %.preheader.5, label %bb.b

.preheader.5:                                     ; preds = %.preheader.4
  %i.h = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.5, ptr noundef nonnull %1) #4
  %.not13.5 = icmp eq i32 %i.h, 0
  br i1 %.not13.5, label %.preheader.6, label %bb.b

.preheader.6:                                     ; preds = %.preheader.5
  %i.i = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.6, ptr noundef nonnull %1) #4
  %.not13.6 = icmp eq i32 %i.i, 0
  br i1 %.not13.6, label %.preheader.7, label %bb.b

.preheader.7:                                     ; preds = %.preheader.6
  %i.j = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #4
  %.not13.7 = icmp eq i32 %i.j, 0
  br i1 %.not13.7, label %.preheader.8, label %bb.b

.preheader.8:                                     ; preds = %.preheader.7
  %i.k = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #4
  %.not13.8 = icmp eq i32 %i.k, 0
  br i1 %.not13.8, label %.preheader.9, label %bb.b

.preheader.9:                                     ; preds = %.preheader.8
  %i.l = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.9, ptr noundef nonnull %1) #4
  %.not13.9 = icmp eq i32 %i.l, 0
  br i1 %.not13.9, label %.preheader.10, label %bb.b

.preheader.10:                                    ; preds = %.preheader.9
  %i.m = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.10, ptr noundef nonnull %1) #4
  %.not13.10 = icmp eq i32 %i.m, 0
  br i1 %.not13.10, label %.preheader.11, label %bb.b

.preheader.11:                                    ; preds = %.preheader.10
  %i.n = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.11, ptr noundef nonnull %1) #4
  %.not13.11 = icmp eq i32 %i.n, 0
  br i1 %.not13.11, label %.preheader.12, label %bb.b

.preheader.12:                                    ; preds = %.preheader.11
  %i.o = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.12, ptr noundef nonnull %1) #4
  %.not13.12 = icmp eq i32 %i.o, 0
  br i1 %.not13.12, label %.preheader.13, label %bb.b

.preheader.13:                                    ; preds = %.preheader.12
  %i.p = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.13, ptr noundef nonnull %1) #4
  %.not13.13 = icmp eq i32 %i.p, 0
  br i1 %.not13.13, label %.preheader.14, label %bb.b

.preheader.14:                                    ; preds = %.preheader.13
  %i.q = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.14, ptr noundef nonnull %1) #4
  %.not13.14 = icmp eq i32 %i.q, 0
  br i1 %.not13.14, label %.preheader.15, label %bb.b

.preheader.15:                                    ; preds = %.preheader.14
  %i.r = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.15, ptr noundef nonnull %1) #4
  %.not13.15 = icmp eq i32 %i.r, 0
  br i1 %.not13.15, label %.preheader.16, label %bb.b

.preheader.16:                                    ; preds = %.preheader.15
  %i.s = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.16, ptr noundef nonnull %1) #4
  %.not13.16 = icmp eq i32 %i.s, 0
  br i1 %.not13.16, label %.preheader.17, label %bb.b

.preheader.17:                                    ; preds = %.preheader.16
  %i.t = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.17, ptr noundef nonnull %1) #4
  %.not13.17 = icmp eq i32 %i.t, 0
  br i1 %.not13.17, label %.preheader.18, label %bb.b

.preheader.18:                                    ; preds = %.preheader.17
  %i.u = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #4
  %.not13.18 = icmp eq i32 %i.u, 0
  br i1 %.not13.18, label %.preheader.19, label %bb.b

.preheader.19:                                    ; preds = %.preheader.18
  %i.v = tail call i32 @ares_strcaseeq(ptr noundef nonnull @.str.74, ptr noundef nonnull %1) #4
  %.not13.19 = icmp eq i32 %i.v, 0
  br i1 %.not13.19, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader.19, %.preheader.18, %.preheader.17, %.preheader.16, %.preheader.15, %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ @ares_dns_rec_type_fromstr.list, %.preheader.preheader ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 16), %.preheader.1 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 32), %.preheader.2 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 48), %.preheader.3 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 64), %.preheader.4 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 80), %.preheader.5 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 96), %.preheader.6 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 112), %.preheader.7 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 128), %.preheader.8 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 144), %.preheader.9 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 160), %.preheader.10 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 176), %.preheader.11 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 192), %.preheader.12 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 208), %.preheader.13 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 224), %.preheader.14 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 240), %.preheader.15 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 256), %.preheader.16 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 272), %.preheader.17 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 288), %.preheader.18 ], [ getelementptr inbounds nuw (i8, ptr @ares_dns_rec_type_fromstr.list, i64 304), %.preheader.19 ]
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !11
  store i32 %i.x, ptr %0, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.19, %bb.a, %bb.b
  %.09 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %.preheader.19 ]
  ret i32 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ares_dns_section_tostr(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ares_dns_section_tostr, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.20, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 1, 12) i32 @ares_dns_opt_get_datatype(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %ares_dns_opt_get_type_opt.exit [
    i32 4105, label %bb.b
    i32 6403, label %bb.c
    i32 6503, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i16 %1, -2               ; 2 uses
  %i.a = icmp ult i16 %switch.tableidx, 13
  br i1 %i.a, label %switch.lookup5, label %ares_dns_opt_get_type_opt.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = icmp ult i16 %1, 7
  br i1 %i.b, label %switch.lookup5, label %ares_dns_opt_get_type_opt.exit

switch.lookup5:                                   ; preds = %bb.c, %bb.b
  %.sink9 = phi i16 [ %switch.tableidx, %bb.b ], [ %1, %bb.c ]
  %switch.table.ares_dns_opt_get_datatype.1.sink = phi ptr [ @switch.table.ares_dns_opt_get_datatype, %bb.b ], [ @switch.table.ares_dns_opt_get_datatype.1, %bb.c ]
  %i.c = zext nneg i16 %.sink9 to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr %switch.table.ares_dns_opt_get_datatype.1.sink, i64 %i.c
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.ext8 = zext i8 %switch.load7 to i32
  br label %ares_dns_opt_get_type_opt.exit

ares_dns_opt_get_type_opt.exit:                   ; preds = %switch.lookup5, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 10, %bb.c ], [ 10, %bb.a ], [ 10, %bb.b ], [ %switch.ext8, %switch.lookup5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @ares_dns_opt_get_name(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %ares_dns_opt_get_name_opt.exit [
    i32 4105, label %bb.b
    i32 6403, label %bb.c
    i32 6503, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i16 %1, -1               ; 2 uses
  %i.a = icmp ult i16 %switch.tableidx, 15
  br i1 %i.a, label %switch.lookup4, label %ares_dns_opt_get_name_opt.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = icmp ult i16 %1, 7
  br i1 %i.b, label %switch.lookup4, label %ares_dns_opt_get_name_opt.exit

switch.lookup4:                                   ; preds = %bb.c, %bb.b
  %.sink7 = phi i16 [ %switch.tableidx, %bb.b ], [ %1, %bb.c ]
  %switch.table.ares_dns_opt_get_name.2.sink = phi ptr [ @switch.table.ares_dns_opt_get_name, %bb.b ], [ @switch.table.ares_dns_opt_get_name.2, %bb.c ]
  %i.c = zext nneg i16 %.sink7 to i64
  %switch.gep5 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.ares_dns_opt_get_name.2.sink, i64 %i.c
  %switch.load6 = load ptr, ptr %switch.gep5, align 8
  br label %ares_dns_opt_get_name_opt.exit

ares_dns_opt_get_name_opt.exit:                   ; preds = %switch.lookup4, %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ], [ %switch.load6, %switch.lookup4 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ares_dns_rcode_tostr(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 24
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ares_dns_rcode_tostr, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.20, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 7) i32 @ares_dns_query_reply_tostatus(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  %i.a = zext i1 %.not to i32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %i.a, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !9, i64 0, !5, i64 8}
!11 = !{!10, !5, i64 8}
!12 = !{!5, !5, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!13, !13, i64 0}
end_hunk_0
