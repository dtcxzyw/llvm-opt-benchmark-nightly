Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Abtree2?download=true
begin_hunk_0_@H5A__dense_btree2_name_debug:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5A__dense_btree2_corder_store(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5A_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  store i64 %i.h, ptr %0, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load i8, ptr %i.i, align 4, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.j, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5A__dense_btree2_corder_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5A_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.sink.split, label %bb.b, !prof !12

.sink.split:                                      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37
  %.sink = tail call i32 @llvm.ucmp.i32.i32(i32 %i.h, i32 %i.j)
  store i32 %.sink, ptr %2, align 4, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5A__dense_btree2_corder_encode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5A_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8
  store i64 %i.g, ptr %0, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.j, ptr %i.h, align 1, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %i.k, align 1, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = load i32, ptr %i.l, align 4, !tbaa !37
  %i.q = lshr i32 %i.p, 8
  %i.r = trunc i32 %i.q to i8
  store i8 %i.r, ptr %i.o, align 1, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.t = load i32, ptr %i.l, align 4, !tbaa !37
  %i.u = lshr i32 %i.t, 16
  %i.v = trunc i32 %i.u to i8
  store i8 %i.v, ptr %i.s, align 1, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i32, ptr %i.l, align 4, !tbaa !37
  %i.y = lshr i32 %i.x, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.w, align 1, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5A__dense_btree2_corder_decode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr @H5A_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 1
  store i64 %i.g, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = load i8, ptr %i.h, align 1, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.j, ptr %i.k, align 8, !tbaa !36
  %i.l = load i8, ptr %i.i, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = or disjoint i32 %i.r, %i.m               ; 2 uses
  store i32 %i.s, ptr %i.n, align 4, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = or disjoint i32 %i.w, %i.s               ; 2 uses
  store i32 %i.x, ptr %i.n, align 4, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw i32 %i.aa, 24
  %i.ac = or disjoint i32 %i.ab, %i.x
  store i32 %i.ac, ptr %i.n, align 4, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @H5A__dense_btree2_corder_debug(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = load i8, ptr @H5A_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %3, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !36
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %1, ptr noundef nonnull @.str.7, i32 noundef %2, ptr noundef nonnull @.str.8, i64 noundef %i.g, i32 noundef %i.j, i32 noundef %i.l) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @H5HF_op(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5A__dense_fh_name_cmp(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.a, align 1, !tbaa !9
  %i.b = load i8, ptr @H5A_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.k, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !29
  %i.i = tail call ptr @H5O_msg_decode(ptr noundef %i.h, ptr noundef null, i32 noundef 12, i64 noundef %1, ptr noundef %0) #8 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.k = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !34
  %i.l = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !34
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5A__dense_fh_name_cmp, i32 noundef 154, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.s) #9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.t, ptr %i.u, align 8, !tbaa !32
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !22
  %i.ac = and i8 %i.ab, 2
  %.not25 = icmp eq i8 %i.ac, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %2, align 8, !tbaa !29
  %i.ae = load i64, ptr %i.z, align 8
  %i.af = tail call i32 @H5SM_reconstitute(ptr noundef nonnull %i.i, ptr noundef %i.ad, i32 noundef 12, i64 %i.ae) #8 ; 0 uses
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !31
  %.pre28 = load ptr, ptr %i.p, align 8, !tbaa !51
  %.pre29 = load ptr, ptr %i.w, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %.pre29, %bb.f ], [ %i.x, %bb.e ]
  %i.ah = phi ptr [ %.pre28, %bb.f ], [ %i.q, %bb.e ]
  %i.ai = phi ptr [ %.pre, %bb.f ], [ %i.z, %bb.e ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58
  %i.ao = call i32 %i.ag(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef %i.an) #8
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !34
  %i.ar = load i64, ptr @H5E_CANTOPERATE_g, align 8, !tbaa !34
  %i.as = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.H5A__dense_fh_name_cmp, i32 noundef 170, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.h
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %i.at = load i8, ptr %i.a, align 1, !range !10
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = call ptr @H5O_msg_free(i32 noundef 12, ptr noundef nonnull %i.i) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.j, %bb.a
  %.1 = phi i32 [ %.0, %bb.i ], [ %.0, %bb.j ], [ 0, %bb.a ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @H5O_msg_decode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @H5SM_reconstitute(ptr noundef, ptr noundef, i32 noundef, i64) local_unnamed_addr #4

declare ptr @H5O_msg_free(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!4, !4, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTS5H5F_t", !14, i64 0}
!16 = !{!"p1 _ZTS6H5HF_t", !14, i64 0}
!17 = !{!"p1 omnipotent char", !14, i64 0}
!18 = !{!"H5A_bt2_ud_common_t", !15, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !5, i64 32, !4, i64 36, !5, i64 40, !14, i64 48, !14, i64 56}
!19 = !{!"H5A_bt2_ud_ins_t", !18, i64 0, !4, i64 64}
!20 = !{!19, !4, i64 36}
!21 = !{!"H5A_dense_bt2_name_rec_t", !4, i64 0, !4, i64 8, !5, i64 12, !5, i64 16}
!22 = !{!21, !4, i64 8}
!23 = !{!19, !5, i64 40}
!24 = !{!21, !5, i64 12}
!25 = !{!21, !5, i64 16}
!26 = !{!5, !5, i64 0}
!27 = !{!"p1 _ZTS24H5A_dense_bt2_name_rec_t", !14, i64 0}
!28 = !{!"H5A_fh_ud_cmp_t", !15, i64 0, !17, i64 8, !27, i64 16, !14, i64 24, !14, i64 32, !5, i64 40}
!29 = !{!28, !15, i64 0}
!30 = !{!28, !17, i64 8}
!31 = !{!28, !27, i64 16}
!32 = !{!28, !5, i64 40}
!33 = !{!"long", !4, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"H5A_dense_bt2_corder_rec_t", !4, i64 0, !4, i64 8, !5, i64 12}
!36 = !{!35, !4, i64 8}
!37 = !{!35, !5, i64 12}
!38 = !{!19, !5, i64 32}
!39 = !{!18, !5, i64 32}
!40 = !{!18, !15, i64 0}
!41 = !{!18, !17, i64 24}
!42 = !{!14, !14, i64 0}
!43 = !{!16, !16, i64 0}
!44 = !{!18, !5, i64 40}
!45 = !{!"H5O_shared_t", !5, i64 0, !15, i64 8, !5, i64 16, !4, i64 24}
!46 = !{!"H5O_loc_t", !15, i64 0, !33, i64 8, !8, i64 16}
!47 = !{!"p1 _ZTS10H5RS_str_t", !14, i64 0}
!48 = !{!"H5G_name_t", !47, i64 0, !47, i64 8, !5, i64 16}
!49 = !{!"p1 _ZTS12H5A_shared_t", !14, i64 0}
!50 = !{!"H5A_t", !45, i64 0, !46, i64 40, !8, i64 64, !48, i64 72, !49, i64 96}
!51 = !{!50, !49, i64 96}
!52 = !{!"p1 _ZTS5H5T_t", !14, i64 0}
!53 = !{!"p1 _ZTS5H5S_t", !14, i64 0}
!54 = !{!"H5A_shared_t", !4, i64 0, !17, i64 8, !5, i64 16, !52, i64 24, !33, i64 32, !53, i64 40, !33, i64 48, !14, i64 56, !33, i64 64, !5, i64 72, !5, i64 76}
!55 = !{!54, !17, i64 8}
!56 = !{!28, !14, i64 24}
!57 = !{!54, !5, i64 72}
!58 = !{!28, !14, i64 32}
end_hunk_0
