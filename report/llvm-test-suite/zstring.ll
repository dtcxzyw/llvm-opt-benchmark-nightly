begin_hunk_0_@zanchorsearch:bb.a
  %i.e = load i16, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = and i32 %i.f, 252
  %i.h = icmp eq i32 %i.g, 52
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.f, 512
  %.not.not = icmp eq i32 %i.i, 0
  br i1 %.not.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !8
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = and i32 %i.l, 252
  %i.n = icmp eq i32 %i.m, 52
  br i1 %i.n, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.l, 512
  %.not.not27 = icmp eq i32 %i.o, 0
  br i1 %.not.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %0, i64 -6 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !12   ; 2 uses
  %.not = icmp ugt i16 %i.c, %i.q
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !11
  %i.t = zext i16 %i.c to i64                     ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %i.r, ptr %i.s, i64 %i.t)
  %.not28 = icmp eq i32 %bcmp, 0
  br i1 %.not28, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = or i16 %i.e, -32768
  store i16 %i.u, ptr %i.d, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !13
  store i16 %i.c, ptr %i.b, align 2, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  store ptr %i.v, ptr %i.a, align 8, !tbaa !11
  %i.w = sub i16 %i.q, %i.c
  store i16 %i.w, ptr %i.p, align 2, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr @osp, align 8, !tbaa !15
  %i.y = load ptr, ptr @ostop, align 8, !tbaa !15
  %i.z = icmp ugt ptr %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr @osp, align 8, !tbaa !15
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  store i16 1, ptr %i.x, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 4, ptr %i.aa, align 8, !tbaa !8
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.e
  store i16 0, ptr %0, align 8, !tbaa !11
  store i16 4, ptr %i.j, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d, %bb.c, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ -20, %bb.a ], [ -20, %bb.c ], [ -7, %bb.d ], [ -16, %bb.h ], [ -7, %bb.b ], [ 0, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zsearch(ptr noundef %0) #5 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !12   ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = and i32 %i.f, 252
  %i.h = icmp eq i32 %i.g, 52
  br i1 %i.h, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.f, 512
  %.not.not = icmp eq i32 %i.i, 0
  br i1 %.not.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !8
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = and i32 %i.l, 252
  %i.n = icmp eq i32 %i.m, 52
  br i1 %i.n, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.l, 512
  %.not.not48 = icmp eq i32 %i.o, 0
  br i1 %.not.not48, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %0, i64 -6 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !12   ; 2 uses
  %i.r = icmp ugt i16 %i.c, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 0, ptr %0, align 8, !tbaa !11
  store i16 4, ptr %i.j, align 8, !tbaa !8
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %narrow = sub nuw i16 %i.q, %i.c
  %i.s = zext i16 %narrow to i32
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.u = load ptr, ptr %0, align 8, !tbaa !11
  %i.v = zext i16 %i.c to i64                     ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %.041 = phi i32 [ %i.s, %bb.g ], [ %i.an, %bb.n ] ; 3 uses
  %.0 = phi ptr [ %i.t, %bb.g ], [ %i.am, %bb.n ] ; 5 uses
  %bcmp = tail call i32 @bcmp(ptr %.0, ptr %i.u, i64 %i.v)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.w = or i16 %i.e, -32768
  store i16 %i.w, ptr %i.j, align 8, !tbaa !8
  store ptr %.0, ptr %0, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.x, ptr @osp, align 8, !tbaa !15
  %i.y = load ptr, ptr @ostop, align 8, !tbaa !15
  %i.z = icmp ugt ptr %i.x, %i.y
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr @osp, align 8, !tbaa !15
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !13
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.ab = ptrtoint ptr %.0 to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 %i.v
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !11
  %i.ah = trunc i32 %.041 to i16
  store i16 %i.ah, ptr %i.p, align 2, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.ai, ptr @osp, align 8, !tbaa !15
  %i.aj = load ptr, ptr @ostop, align 8, !tbaa !15
  %i.ak = icmp ugt ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.x, ptr @osp, align 8, !tbaa !15
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  store i16 1, ptr %i.ai, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 4, ptr %i.al, align 8, !tbaa !8
  br label %bb.p

bb.n:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.an = add nsw i32 %.041, -1
  %.not49 = icmp eq i32 %.041, 0
  br i1 %.not49, label %bb.o, label %bb.h, !llvm.loop !18

bb.o:                                             ; preds = %bb.n
  store i16 0, ptr %0, align 8, !tbaa !11
  store i16 4, ptr %i.j, align 8, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.o, %bb.m, %bb.l, %bb.j, %bb.f
  %.042 = phi i32 [ -20, %bb.a ], [ -20, %bb.c ], [ 0, %bb.f ], [ 0, %bb.o ], [ -16, %bb.j ], [ -16, %bb.l ], [ 0, %bb.m ], [ -7, %bb.b ], [ -7, %bb.d ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ztoken(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.stream_s, align 8           ; 7 uses
  %2 = alloca %struct.ref_s, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %3 = zext i16 %i.b to i32                       ; 2 uses
  %4 = lshr i32 %3, 2
  %5 = and i32 %4, 63
  switch i32 %5, label %bb.i [
    i32 3, label %bb.b
    i32 13, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @ztoken_file(ptr noundef nonnull %0) #7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %6 = and i32 %3, 512
  %.not.not = icmp eq i32 %6, 0
  br i1 %.not.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !12
  %i.g = zext i16 %i.f to i32
  call void @sread_string(ptr noundef nonnull %1, ptr noundef %i.d, i32 noundef %i.g) #7
  %i.h = call i32 (ptr, i32, ptr, ...) @scan_token(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %2) #7 ; 2 uses
  switch i32 %i.h, label %bb.i [
    i32 0, label %bb.e
    i32 1, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %1, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  %i.r = add nsw i64 %i.o, %i.q                   ; 2 uses
  %i.s = trunc i64 %i.r to i16
  %i.t = load ptr, ptr %0, align 8, !tbaa !11
  %i.u = and i64 %i.r, 4294967295
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store ptr %i.v, ptr %0, align 8, !tbaa !11
  %i.w = load i16, ptr %i.e, align 2, !tbaa !12
  %i.x = sub i16 %i.w, %i.s
  store i16 %i.x, ptr %i.e, align 2, !tbaa !12
  %i.y = load i16, ptr %i.a, align 8, !tbaa !8
  %i.z = or i16 %i.y, -32768
  store i16 %i.z, ptr %i.a, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.aa, ptr @osp, align 8, !tbaa !15
  %i.ab = load ptr, ptr @ostop, align 8, !tbaa !15
  %i.ac = icmp ugt ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr @osp, align 8, !tbaa !15
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  store i16 1, ptr %i.aa, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 4, ptr %i.ae, align 8, !tbaa !8
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i16 0, ptr %0, align 8, !tbaa !11
  store i16 4, ptr %i.a, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.h ], [ %i.c, %bb.b ], [ -20, %bb.a ], [ -7, %bb.c ], [ -16, %bb.f ], [ 0, %bb.g ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.0
}

declare i32 @ztoken_file(...) local_unnamed_addr #2

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @scan_token(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @zstring_op_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zstring_op_init.my_defs) #7 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"ref_s", !6, i64 0, !10, i64 8, !10, i64 10}
!10 = !{!"short", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!9, !10, i64 10}
!13 = !{i64 0, i64 8, !11, i64 8, i64 2, !14, i64 10, i64 2, !14}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS5ref_s", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !22, i64 0}
!21 = !{!"stream_s", !22, i64 0, !22, i64 8, !22, i64 16, !5, i64 24, !6, i64 28, !6, i64 29, !23, i64 32, !24, i64 40, !5, i64 88, !25, i64 96, !26, i64 104, !10, i64 112, !5, i64 116}
!22 = !{!"p1 omnipotent char", !17, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40}
!25 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!26 = !{!"p1 _ZTS8stream_s", !17, i64 0}
!27 = !{!21, !22, i64 16}
!28 = !{!21, !23, i64 32}
end_hunk_0
