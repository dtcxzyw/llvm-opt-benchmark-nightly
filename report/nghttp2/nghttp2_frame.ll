Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_frame?download=true
inline.NumInlined: 42
inline.NumDeleted: 2
begin_hunk_0_@nghttp2_nv_array_copy:bb.a
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.18899 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !106   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0101, i64 32
  store i8 %i.y, ptr %i.z, align 8, !tbaa !106
  %i.aa = and i8 %i.y, 2
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !79
  store ptr %i.ab, ptr %.0101, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !77
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !77 ; 2 uses
  %.not94 = icmp eq i64 %i.ag, 0
  br i1 %.not94, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.084100, ptr align 1 %i.ah, i64 %i.ag, i1 false)
  %.pre = load i64, ptr %i.af, align 8, !tbaa !77
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi i64 [ %.pre, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  store ptr %.084100, ptr %.0101, align 8, !tbaa !79
  %i.aj = getelementptr inbounds nuw i8, ptr %.0101, i64 16 ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %.084100, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !13
  %i.al = load ptr, ptr %.0101, align 8, !tbaa !79
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !77
  tail call void @nghttp2_downcase(ptr noundef %i.al, i64 noundef %i.am) #18
  %i.an = load i64, ptr %i.af, align 8, !tbaa !77
  %i.ao = getelementptr i8, ptr %.084100, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  %.pre103 = load i8, ptr %i.x, align 8, !tbaa !106
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.aq = phi i8 [ %i.y, %bb.j ], [ %.pre103, %bb.m ]
  %.185 = phi ptr [ %.084100, %bb.j ], [ %i.ap, %bb.m ] ; 5 uses
  %i.ar = and i8 %i.aq, 4
  %.not95 = icmp eq i8 %i.ar, 0
  br i1 %.not95, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %.0101, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %.0101, i64 24
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !78
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !78 ; 2 uses
  %.not96 = icmp eq i64 %i.az, 0
  br i1 %.not96, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.185, ptr align 1 %i.bb, i64 %i.az, i1 false)
  %.pre104 = load i64, ptr %i.ay, align 8, !tbaa !78
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = phi i64 [ %.pre104, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0101, i64 8
  store ptr %.185, ptr %i.bd, align 8, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %.0101, i64 24
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !78
  %i.bf = getelementptr inbounds nuw i8, ptr %.185, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !13
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !78
  %i.bh = getelementptr i8, ptr %.185, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.286 = phi ptr [ %.185, %bb.o ], [ %i.bi, %bb.r ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0101, i64 40
  %i.bk = add nuw i64 %.18899, 1                  ; 2 uses
  %exitcond102.not = icmp eq i64 %i.bk, %2
  br i1 %exitcond102.not, label %.loopexit, label %bb.i, !llvm.loop !105

.loopexit:                                        ; preds = %bb.s, %bb.g, %bb.b
  %.089 = phi i32 [ 0, %bb.b ], [ -901, %bb.g ], [ 0, %bb.s ]
  ret i32 %.089
}

declare void @nghttp2_downcase(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @nghttp2_iv_check(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #15 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.035 = phi i64 [ %i.o, %bb.g ], [ 0, %bb.a ]   ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69
  switch i32 %i.b, label %bb.g [
    i32 9, label %bb.f
    i32 8, label %bb.e
    i32 2, label %bb.b
    i32 4, label %bb.c
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %switch = icmp ult i32 %i.d, 2
  br i1 %switch, label %bb.g, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %._crit_edge, label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = add i32 %i.i, -16777216
  %or.cond = icmp ult i32 %i.j, -16760832
  br i1 %or.cond, label %._crit_edge, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  %switch33 = icmp ult i32 %i.l, 2
  br i1 %switch33, label %bb.g, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70
  %switch34 = icmp ult i32 %i.n, 2
  br i1 %switch34, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.d, %.lr.ph, %bb.c
  %i.o = add nuw i64 %.035, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.g, %bb.b, %bb.e, %bb.f, %bb.a
  %.023 = phi i32 [ 1, %bb.a ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_frame_add_pad(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = add i64 %2, -1                           ; 4 uses
  %.not = icmp ult i64 %i.i, %i.j
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1219, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_frame_add_pad) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.m, ptr noundef nonnull align 1 dereferenceable(9) %i.l, i64 9, i1 false)
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1
  store ptr %i.o, ptr %i.k, align 8, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 3 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = or i8 %i.q, 8
  store i8 %i.r, ptr %i.p, align 1, !tbaa !13
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.t = tail call i32 @nghttp2_get_uint32(ptr noundef %i.s) #18
  %4 = load ptr, ptr %i.k, align 8, !tbaa !62     ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %7 = zext i8 %6 to i32
  %8 = trunc i64 %2 to i32
  %.tr16.i = shl i32 %8, 8
  %9 = add i32 %i.t, %.tr16.i
  %10 = and i32 %9, -256
  %11 = or disjoint i32 %10, %7
  tail call void @nghttp2_put_uint32be(ptr noundef %4, i32 noundef %11) #18
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %bb.e, label %frame_set_pad.exit

bb.e:                                             ; preds = %bb.d
  %i.u = trunc i64 %i.j to i8
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  store i8 %i.u, ptr %i.w, align 1, !tbaa !13
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 0, i64 %i.j, i1 false)
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.j
  store ptr %i.z, ptr %i.e, align 8, !tbaa !63
  br label %frame_set_pad.exit

frame_set_pad.exit:                               ; preds = %bb.d, %bb.e
  %i.aa = load i64, ptr %1, align 8, !tbaa !11
  %i.ab = add i64 %i.aa, %2
  store i64 %i.ab, ptr %1, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = or i8 %i.ad, 8
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %frame_set_pad.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !50}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"", !9, i64 0, !6, i64 8, !5, i64 12, !5, i64 13, !5, i64 14}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !5, i64 12}
!13 = !{!5, !5, i64 0}
!14 = !{!10, !5, i64 13}
!15 = !{!10, !6, i64 8}
!16 = !{!9, !9, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!"", !6, i64 0, !6, i64 4, !5, i64 8}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"", !10, i64 0, !9, i64 16, !18, i64 24, !19, i64 40, !9, i64 48, !6, i64 56}
!21 = !{!20, !9, i64 16}
!22 = !{!20, !19, i64 40}
!23 = !{!20, !9, i64 48}
!24 = !{i64 0, i64 4, !17, i64 4, i64 4, !17, i64 8, i64 1, !13}
!25 = !{!"", !10, i64 0, !6, i64 16}
!26 = !{!25, !6, i64 16}
!27 = !{!"", !10, i64 0, !9, i64 16, !19, i64 24}
!28 = !{!27, !9, i64 16}
!29 = !{!27, !19, i64 24}
!30 = !{!"", !10, i64 0, !9, i64 16, !19, i64 24, !9, i64 32, !6, i64 40, !5, i64 44}
!31 = !{!30, !9, i64 16}
!32 = !{!30, !19, i64 24}
!33 = !{!30, !9, i64 32}
!34 = !{!30, !6, i64 40}
!35 = !{!"p1 omnipotent char", !19, i64 0}
!36 = !{!"", !10, i64 0, !6, i64 16, !6, i64 20, !35, i64 24, !9, i64 32, !5, i64 40}
!37 = !{!36, !6, i64 16}
!38 = !{!36, !6, i64 20}
!39 = !{!36, !35, i64 24}
!40 = !{!36, !9, i64 32}
!41 = !{!"", !10, i64 0, !6, i64 16, !5, i64 20}
!42 = !{!41, !6, i64 16}
!43 = !{!"", !10, i64 0, !19, i64 16}
!44 = !{!43, !19, i64 16}
!45 = !{!35, !35, i64 0}
!46 = !{!"", !35, i64 0, !9, i64 8, !35, i64 16, !9, i64 24}
!47 = !{!46, !35, i64 0}
!48 = !{!"", !35, i64 0, !9, i64 8}
!49 = !{!48, !9, i64 8}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!19, !19, i64 0}
!52 = !{!"", !9, i64 0, !19, i64 8}
!53 = !{!52, !19, i64 8}
!54 = !{!"", !6, i64 0, !35, i64 8, !9, i64 16}
!55 = !{!54, !35, i64 8}
!56 = !{!20, !5, i64 13}
!57 = !{!"p1 _ZTS17nghttp2_buf_chain", !19, i64 0}
!58 = !{!"", !57, i64 0, !57, i64 8, !19, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!59 = !{!58, !57, i64 0}
!60 = !{!58, !57, i64 8}
!61 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32}
!62 = !{!61, !35, i64 16}
!63 = !{!61, !35, i64 24}
!64 = !{!18, !6, i64 0}
!65 = !{!18, !5, i64 8}
!66 = !{!18, !6, i64 4}
!67 = !{!61, !35, i64 8}
!68 = !{!"", !6, i64 0, !6, i64 4}
!69 = !{!68, !6, i64 0}
!70 = !{!68, !6, i64 4}
!71 = !{!46, !9, i64 8}
!72 = !{!46, !9, i64 24}
!73 = !{!46, !35, i64 16}
!74 = !{!54, !9, i64 16}
!75 = !{!54, !6, i64 0}
!76 = !{!"", !35, i64 0, !35, i64 8, !9, i64 16, !9, i64 24, !5, i64 32}
!77 = !{!76, !9, i64 16}
!78 = !{!76, !9, i64 24}
!79 = !{!76, !35, i64 0}
!80 = !{!76, !35, i64 8}
!81 = !{!20, !6, i64 56}
!82 = !{!30, !5, i64 44}
!83 = !{!36, !5, i64 40}
!84 = !{!41, !5, i64 20}
!85 = !{!"", !10, i64 0, !9, i64 16}
!86 = !{!85, !9, i64 16}
!87 = distinct !{!87, !50, !89, !90}
!88 = distinct !{!88, !50, !90, !89}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = !{!20, !9, i64 0}
!92 = distinct !{!92, !50}
!93 = !{!"nghttp2_buf_chain", !57, i64 0, !61, i64 8}
!94 = !{!93, !57, i64 0}
!95 = !{!27, !9, i64 0}
!96 = distinct !{!96, !50}
!97 = !{!30, !9, i64 0}
!98 = distinct !{!98, !50}
!99 = !{!43, !9, i64 0}
!100 = !{!52, !9, i64 0}
!101 = !{!48, !35, i64 0}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !50}
!106 = !{!76, !5, i64 32}
!107 = distinct !{!107, !50}
end_hunk_0
