Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/crc32?download=true
inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0

; Function Attrs: nounwind uwtable
define dso_local i32 @php_crc32_bulk_update(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !13
  %i.b = call i64 @crc32_x86_simd_update(i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2) #4 ; 3 uses
  %i.c = sub i64 %2, %i.b                         ; 4 uses
  %.promoted = load i32, ptr %i.a, align 4        ; 4 uses
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 3 uses
  %.neg = add i64 %i.b, 1
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.e = add nsw i64 %i.c, -1
  %i.f = lshr i32 %.promoted, 8
  %i.g = load i8, ptr %i.d, align 1, !tbaa !14
  %.tr.prol = trunc i32 %.promoted to i8
  %.narrow.prol = xor i8 %i.g, %.tr.prol
  %i.h = zext i8 %.narrow.prol to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @crc32tab, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13
  %i.k = xor i32 %i.j, %i.f                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.011.unr = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.0810.unr = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.unr = phi i32 [ %.promoted, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.m = icmp eq i64 %2, %.neg
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i64 [ %i.v, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ]
  %.0810 = phi ptr [ %i.ac, %.lr.ph ], [ %.0810.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.n = phi i32 [ %i.ab, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.o = lshr i32 %i.n, 8
  %i.p = load i8, ptr %.0810, align 1, !tbaa !14
  %.tr = trunc i32 %i.n to i8
  %.narrow = xor i8 %i.p, %.tr
  %i.q = zext i8 %.narrow to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @crc32tab, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13
  %i.t = xor i32 %i.s, %i.o                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0810, i64 1
  %i.v = add i64 %.011, -2                        ; 2 uses
  %i.w = lshr i32 %i.t, 8
  %i.x = load i8, ptr %i.u, align 1, !tbaa !14
  %.tr.1 = trunc i32 %i.t to i8
  %.narrow.1 = xor i8 %i.x, %.tr.1
  %i.y = zext i8 %.narrow.1 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @crc32tab, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  %i.ab = xor i32 %i.aa, %i.w                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810, i64 2
  %.not.1 = icmp eq i64 %i.v, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %i.ad = phi i32 [ %.promoted, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ab, %.lr.ph ]
  ret i32 %i.ad
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @crc32_x86_simd_update(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @php_crc32_stream_bulk_update(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %php_crc32_bulk_update.exit
  %.017 = phi i64 [ %i.aj, %php_crc32_bulk_update.exit ], [ 0, %bb.a ] ; 2 uses
  %i.c = sub nuw i64 %2, %.017
  %i.d = call i64 @llvm.umin.i64(i64 %i.c, i64 1024)
  %i.e = call i64 @_php_stream_read(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef %i.d) #4 ; 5 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load i32, ptr %0, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.f, ptr %i.a, align 4, !tbaa !13
  %i.g = call i64 @crc32_x86_simd_update(i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.e) #4 ; 3 uses
  %i.h = sub i64 %i.e, %i.g                       ; 4 uses
  %.promoted.i = load i32, ptr %i.a, align 4      ; 4 uses
  %.not9.i = icmp eq i64 %i.h, 0
  br i1 %.not9.i, label %php_crc32_bulk_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 3 uses
  %.neg = add i64 %i.g, 1
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.j = add nsw i64 %i.h, -1
  %i.k = lshr i32 %.promoted.i, 8
  %i.l = load i8, ptr %i.i, align 1, !tbaa !14
  %.tr.i.prol = trunc i32 %.promoted.i to i8
  %.narrow.i.prol = xor i8 %i.l, %.tr.i.prol
  %i.m = zext i8 %.narrow.i.prol to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @crc32tab, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13
  %i.p = xor i32 %i.o, %i.k                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i.prol ]
  %.011.i.unr = phi i64 [ %i.h, %.lr.ph.preheader.i ], [ %i.j, %.lr.ph.i.prol ]
  %.0810.i.unr = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.q, %.lr.ph.i.prol ]
  %.unr = phi i32 [ %.promoted.i, %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i.prol ]
  %i.r = icmp eq i64 %i.e, %.neg
  br i1 %i.r, label %php_crc32_bulk_update.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.011.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0810.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.0810.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.s = phi i32 [ %i.ag, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.t = lshr i32 %i.s, 8
  %i.u = load i8, ptr %.0810.i, align 1, !tbaa !14
  %.tr.i = trunc i32 %i.s to i8
  %.narrow.i = xor i8 %i.u, %.tr.i
  %i.v = zext i8 %.narrow.i to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @crc32tab, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
  %i.y = xor i32 %i.x, %i.t                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i, i64 1
  %i.aa = add i64 %.011.i, -2                     ; 2 uses
  %i.ab = lshr i32 %i.y, 8
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !14
  %.tr.i.1 = trunc i32 %i.y to i8
  %.narrow.i.1 = xor i8 %i.ac, %.tr.i.1
  %i.ad = zext i8 %.narrow.i.1 to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @crc32tab, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = xor i32 %i.af, %i.ab                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0810.i, i64 2
  %.not.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.1, label %php_crc32_bulk_update.exit, label %.lr.ph.i, !llvm.loop !0

php_crc32_bulk_update.exit:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %i.ai = phi i32 [ %.promoted.i, %bb.b ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ag, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.ai, ptr %0, align 4, !tbaa !13
  %i.aj = add i64 %i.e, %.017                     ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %2
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %php_crc32_bulk_update.exit, %bb.a
  %.014 = phi i32 [ 0, %bb.a ], [ 0, %php_crc32_bulk_update.exit ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i32 %.014
}

declare i64 @_php_stream_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zif_crc32(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %cond = icmp eq i32 %i.d, 1
  br i1 %cond, label %bb.b, label %.thread, !prof !17

.thread:                                          ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp eq i8 %i.g, 6
  br i1 %i.h, label %.critedge, label %zend_parse_arg_str_ex.exit, !prof !18

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i32 noundef 1) #4
  br i1 %i.i, label %.critedge, label %bb.c, !prof !19

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.03659 = phi i32 [ 1, %.thread ], [ 9, %bb.c ]
  %.03758 = phi i32 [ 0, %.thread ], [ 4, %bb.c ]
  %.03857 = phi ptr [ null, %.thread ], [ %i.e, %bb.c ]
  %.03956 = phi i32 [ 0, %.thread ], [ 1, %bb.c ]
  call void @zend_wrong_parameter_error(i32 noundef %.03659, i32 noundef %.03956, ptr noundef null, i32 noundef %.03758, ptr noundef %.03857) #4
  br label %bb.e

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit, %bb.b
  %.in = phi ptr [ %i.e, %bb.b ], [ %i.b, %zend_parse_arg_str_ex.exit ]
  %i.j = load ptr, ptr %.in, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 -1, ptr %i.a, align 4, !tbaa !13
  %i.n = call i64 @crc32_x86_simd_update(i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, i64 noundef %i.m) #4 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %.promoted.i = load i32, ptr %i.a, align 4      ; 4 uses
  %.not9.i = icmp eq i64 %i.o, 0
  br i1 %.not9.i, label %php_crc32_bulk_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 3 uses
  %.neg = add i64 %i.n, 1
  %xtraiter = and i64 %i.o, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.q = add nsw i64 %i.o, -1
  %i.r = lshr i32 %.promoted.i, 8
  %i.s = load i8, ptr %i.p, align 1, !tbaa !14
  %.tr.i.prol = trunc i32 %.promoted.i to i8
  %.narrow.i.prol = xor i8 %i.s, %.tr.i.prol
  %i.t = zext i8 %.narrow.i.prol to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @crc32tab, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = xor i32 %i.v, %i.r                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i.prol ]
  %.011.i.unr = phi i64 [ %i.o, %.lr.ph.preheader.i ], [ %i.q, %.lr.ph.i.prol ]
  %.0810.i.unr = phi ptr [ %i.p, %.lr.ph.preheader.i ], [ %i.x, %.lr.ph.i.prol ]
  %.unr = phi i32 [ %.promoted.i, %.lr.ph.preheader.i ], [ %i.w, %.lr.ph.i.prol ]
  %i.y = icmp eq i64 %i.m, %.neg
  br i1 %i.y, label %php_crc32_bulk_update.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.011.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0810.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.0810.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.z = phi i32 [ %i.an, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.aa = lshr i32 %i.z, 8
  %i.ab = load i8, ptr %.0810.i, align 1, !tbaa !14
  %.tr.i = trunc i32 %i.z to i8
  %.narrow.i = xor i8 %i.ab, %.tr.i
  %i.ac = zext i8 %.narrow.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @crc32tab, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %i.af = xor i32 %i.ae, %i.aa                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i, i64 1
  %i.ah = add i64 %.011.i, -2                     ; 2 uses
  %i.ai = lshr i32 %i.af, 8
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !14
  %.tr.i.1 = trunc i32 %i.af to i8
  %.narrow.i.1 = xor i8 %i.aj, %.tr.i.1
  %i.ak = zext i8 %.narrow.i.1 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @crc32tab, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  %i.an = xor i32 %i.am, %i.ai                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0810.i, i64 2
  %.not.i.1 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.1, label %php_crc32_bulk_update.exit, label %.lr.ph.i, !llvm.loop !0

php_crc32_bulk_update.exit:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.critedge
  %i.ap = phi i32 [ %.promoted.i, %.critedge ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.an, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = xor i32 %i.ap, -1
  %i.ar = zext i32 %i.aq to i64
  store i64 %i.ar, ptr %1, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.as, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %php_crc32_bulk_update.exit
  ret void
}

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @zend_parse_arg_str_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !15}
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
!14 = !{!9, !9, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!"branch_weights", i32 4000000, i32 4001}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 2146410443, i32 1073205}
!20 = !{!"_zend_refcounted_h", !10, i64 0, !9, i64 4}
!21 = !{!"long", !9, i64 0}
!22 = !{!"_zend_string", !20, i64 0, !21, i64 8, !21, i64 16, !9, i64 24}
!23 = !{!22, !21, i64 16}
end_hunk_0
