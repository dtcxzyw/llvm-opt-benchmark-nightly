inline.NumInlined: 40
inline.NumDeleted: 15
begin_hunk_0_@newreno_on_data_lost:bb.a
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not26.i = icmp eq ptr %i.af, null
  br i1 %.not26.i, label %newreno_update_diag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !28
  %.not27.i = icmp eq i32 %i.ah, 0
  br i1 %.not27.i, label %bb.p, label %.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.am = icmp ult i64 %i.aj, %i.al
  %..i16 = select i1 %i.am, i32 83, i32 65
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.o
  %.sink.i = phi i32 [ %..i16, %bb.p ], [ 82, %bb.o ]
  store i32 %.sink.i, ptr %i.af, align 4, !tbaa !5
  br label %newreno_update_diag.exit

newreno_update_diag.exit:                         ; preds = %.sink.split.i, %bb.n, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %.sink.split.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @newreno_on_data_lost_finished(ptr noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  tail call fastcc void @newreno_flush(ptr noundef %0, i32 noundef %1)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @newreno_on_data_invalidated(ptr noundef captures(none) %0, i64 noundef %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %i.c = sub i64 %i.b, %1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17
  store i64 %i.g, ptr %i.e, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %.not23.i = icmp eq ptr %i.i, null
  br i1 %.not23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  store i64 %i.k, ptr %i.i, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %.not24.i = icmp eq ptr %i.m, null
  br i1 %.not24.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  store i64 %i.o, ptr %i.m, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %.not25.i = icmp eq ptr %i.q, null
  br i1 %.not25.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.r, ptr %i.q, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27   ; 2 uses
  %.not26.i = icmp eq ptr %i.t, null
  br i1 %.not26.i, label %newreno_update_diag.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !28
  %.not27.i = icmp eq i32 %i.v, 0
  br i1 %.not27.i, label %bb.k, label %.sink.split.i

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29
  %i.aa = icmp ult i64 %i.x, %i.z
  %..i = select i1 %i.aa, i32 83, i32 65
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j
  %.sink.i = phi i32 [ %..i, %bb.k ], [ 82, %bb.j ]
  store i32 %.sink.i, ptr %i.t, align 4, !tbaa !5
  br label %newreno_update_diag.exit

newreno_update_diag.exit:                         ; preds = %bb.i, %.sink.split.i
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @newreno_on_ecn(ptr noundef captures(none) initializes((80, 88), (96, 100), (104, 112)) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %1, align 8, !tbaa !22
  store i64 %i.d, ptr %i.c, align 8, !tbaa !22
  tail call fastcc void @newreno_flush(ptr noundef %0, i32 noundef 0)
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @OSSL_PARAM_get_size_t(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @newreno_flush(ptr noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %newreno_update_diag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %.val.i = load i64, ptr %i.e, align 8
  %.not36.i = icmp ugt i64 %i.d, %.val.i
  br i1 %.not36.i, label %bb.c, label %newreno_cong.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 1, ptr %i.f, align 8, !tbaa !28
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = tail call i64 %i.g(ptr noundef %i.i) #7, !inline_history !45
  store i64 %i.j, ptr %i.e, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !31   ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 4 uses
  %i.s = icmp eq i32 %i.q, 0
  br i1 %i.s, label %safe_muldiv_u64.exit.thread33.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.l, i64 range(i64 0, 4294967296) %i.o) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %safe_mul_u64.exit36.i.i, label %safe_muldiv_u64.exit.thread25.i

safe_muldiv_u64.exit.thread25.i:                  ; preds = %bb.d
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = udiv i64 %i.v, %i.r
  br label %safe_muldiv_u64.exit.thread33.i

safe_mul_u64.exit36.i.i:                          ; preds = %bb.d
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.o, i64 %i.l) ; 2 uses
  %spec.select34.i.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.o, i64 %i.l) ; 2 uses
  %2 = urem i64 %spec.select34.i.i, %i.r
  %3 = mul nuw i64 %2, %spec.select.i.i
  %i.x = udiv i64 %spec.select34.i.i, %i.r
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.x, i64 range(i64 0, 4294967296) %spec.select.i.i) ; 2 uses
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = udiv i64 %3, %i.r
  %i.y = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 %6) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %safe_muldiv_u64.exit.thread33.i, label %safe_mul_u64.exit38.i.i

safe_mul_u64.exit38.i.i:                          ; preds = %safe_mul_u64.exit36.i.i
  %7 = extractvalue { i64, i1 } %4, 1
  %i.aa = extractvalue { i64, i1 } %i.y, 0
  %spec.select33.i = select i1 %7, i64 -1, i64 %i.aa
  br label %safe_muldiv_u64.exit.thread33.i

safe_muldiv_u64.exit.thread33.i:                  ; preds = %safe_mul_u64.exit38.i.i, %safe_mul_u64.exit36.i.i, %safe_muldiv_u64.exit.thread25.i, %bb.c
  %i.ab = phi i64 [ -1, %bb.c ], [ %spec.select33.i, %safe_mul_u64.exit38.i.i ], [ %i.w, %safe_muldiv_u64.exit.thread25.i ], [ -1, %safe_mul_u64.exit36.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %spec.store.select18.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ae)
  store i64 %spec.store.select18.i, ptr %i.k, align 8
  br label %newreno_cong.exit

newreno_cong.exit:                                ; preds = %bb.b, %safe_muldiv_u64.exit.thread33.i
  %i.af = and i32 %1, 1
  %.not8 = icmp eq i32 %i.af, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %newreno_cong.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !20
  store i64 0, ptr %i.e, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %newreno_cong.exit
  store i32 0, ptr %i.a, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %.not23.i = icmp eq ptr %i.ao, null
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24 ; 2 uses
  %.not24.i = icmp eq ptr %i.as, null
  br i1 %.not24.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19
  store i64 %i.au, ptr %i.as, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25 ; 2 uses
  %.not25.i = icmp eq ptr %i.aw, null
  br i1 %.not25.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !26
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27 ; 2 uses
  %.not26.i = icmp eq ptr %i.ba, null
  br i1 %.not26.i, label %newreno_update_diag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !28
  %.not27.i = icmp eq i32 %i.bc, 0
  br i1 %.not27.i, label %bb.p, label %.sink.split.i

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !29
  %i.bh = icmp ult i64 %i.be, %i.bg
  %..i = select i1 %i.bh, i32 83, i32 65
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.o
  %.sink.i = phi i32 [ %..i, %bb.p ], [ 82, %bb.o ]
  store i32 %.sink.i, ptr %i.ba, align 4, !tbaa !5
  br label %newreno_update_diag.exit

newreno_update_diag.exit:                         ; preds = %.sink.split.i, %bb.n, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"ossl_cc_newreno_st", !11, i64 0, !11, i64 8, !12, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !13, i64 88, !6, i64 96, !13, i64 104, !6, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !15, i64 152}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"", !12, i64 0}
!14 = !{!"p1 long", !11, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!10, !11, i64 8}
!17 = !{!10, !12, i64 48}
!18 = !{!10, !12, i64 16}
!19 = !{!10, !12, i64 24}
!20 = !{!10, !12, i64 64}
!21 = !{!10, !14, i64 120}
!22 = !{!12, !12, i64 0}
!23 = !{!10, !14, i64 128}
!24 = !{!10, !14, i64 136}
!25 = !{!10, !14, i64 144}
!26 = !{!10, !12, i64 56}
!27 = !{!10, !15, i64 152}
!28 = !{!10, !6, i64 112}
!29 = !{!10, !12, i64 72}
!30 = !{!10, !6, i64 32}
!31 = !{!10, !6, i64 36}
!32 = !{!10, !6, i64 40}
!33 = !{!10, !12, i64 80}
!34 = !{!10, !6, i64 96}
!35 = !{!36, !6, i64 8}
!36 = !{!"ossl_param_st", !37, i64 0, !6, i64 8, !11, i64 16, !12, i64 24, !12, i64 32}
!37 = !{!"p1 omnipotent char", !11, i64 0}
!38 = !{!36, !12, i64 24}
!39 = !{!36, !11, i64 16}
!40 = !{!11, !11, i64 0}
!41 = !{!42, !12, i64 8}
!42 = !{!"ossl_cc_ack_info_st", !13, i64 0, !12, i64 8}
!43 = !{!44, !12, i64 8}
!44 = !{!"ossl_cc_loss_info_st", !13, i64 0, !12, i64 8}
!45 = distinct !{null}
end_hunk_0
