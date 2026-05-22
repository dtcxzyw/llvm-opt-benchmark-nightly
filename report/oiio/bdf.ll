inline.NumInlined: 34
inline.NumDeleted: 11
begin_hunk_0_@bdf_atol_:bb.a
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 1, %i.k
  %i.m = and i32 %i.l, %i.i
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.n = phi i8 [ %i.w, %bb.d ], [ %i.d, %bb.c ]
  %.01323 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.11522 = phi ptr [ %i.v, %bb.d ], [ %spec.select, %bb.c ]
  %i.o = icmp slt i64 %.01323, 922337203685477579
  br i1 %i.o, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.p = mul nsw i64 %.01323, 10
  %i.q = sext i8 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr @a2i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !41
  %i.t = zext i8 %i.s to i64
  %i.u = add nsw i64 %i.p, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.11522, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !41    ; 3 uses
  %i.x = lshr i8 %i.w, 3
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @ddigits, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !41
  %i.ab = zext i8 %i.aa to i32
  %i.ac = and i8 %i.w, 7
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = and i32 %i.ae, %i.ab
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ 9223372036854775807, %.lr.ph ], [ %i.u, %bb.d ] ; 2 uses
  %i.ag = sub nsw i64 0, %.1
  %i.ah = select i1 %.not20, i64 %i.ag, i64 %.1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.016 = phi i64 [ %i.ah, %._crit_edge ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.016
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @by_encoding(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !111
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.b, i64 %i.d)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @bdf_parse_end_(ptr readnone captures(none) %0, i64 %1, i64 %2, ptr readnone captures(none) %3, ptr readnone captures(none) %4) #11 {
bb.a:
  ret i32 0
}

declare void @ft_hash_str_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bdf_cmap_init(ptr noundef captures(none) initializes((24, 40)) %0, ptr readnone captures(none) %1) #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !218    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.f, align 8, !tbaa !221
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.i, align 8, !tbaa !223
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @bdf_cmap_done(ptr noundef writeonly captures(none) initializes((24, 40)) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @bdf_cmap_char_index(ptr noundef readonly captures(none) %0, i32 noundef %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !221  ; 3 uses
  %.not48 = icmp eq i64 %i.d, 0
  br i1 %.not48, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = lshr i64 %i.d, 1
  %i.f = zext i32 %1 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.02847 = phi i64 [ %i.e, %.lr.ph ], [ %.129, %bb.c ] ; 4 uses
  %.03146 = phi i64 [ %i.d, %.lr.ph ], [ %.132, %bb.c ]
  %.03445 = phi i64 [ 0, %.lr.ph ], [ %.135, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.02847 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !113  ; 3 uses
  %i.i = icmp eq i64 %i.h, %i.f
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !115
  %i.l = add i16 %i.k, 1
  %i.m = zext i16 %i.l to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.h, %i.f                  ; 2 uses
  %i.o = add i64 %.02847, 1
  %.135 = select i1 %i.n, i64 %.03445, i64 %i.o   ; 4 uses
  %.132 = select i1 %i.n, i64 %.02847, i64 %.03146 ; 4 uses
  %i.p = sub i64 %i.f, %i.h
  %i.q = add i64 %i.p, %.02847                    ; 3 uses
  %.not = icmp uge i64 %i.q, %.132
  %i.r = icmp ult i64 %i.q, %.135
  %or.cond = or i1 %.not, %i.r
  %i.s = add i64 %.135, %.132
  %i.t = lshr i64 %i.s, 1
  %.129 = select i1 %or.cond, i64 %i.t, i64 %i.q
  %i.u = icmp ult i64 %.135, %.132
  br i1 %i.u, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %.thread
  %.2 = phi i32 [ %i.m, %.thread ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @bdf_cmap_char_next(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !221  ; 4 uses
  %.not69 = icmp eq i64 %i.g, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = lshr i64 %i.g, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.04068 = phi i64 [ %.1, %bb.b ], [ %i.h, %.lr.ph.preheader ] ; 4 uses
  %.04167 = phi i64 [ %.142, %bb.b ], [ %i.g, %.lr.ph.preheader ]
  %.04466 = phi i64 [ %.145, %bb.b ], [ 0, %.lr.ph.preheader ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.04068 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !113  ; 3 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !115
  %i.n = add i16 %i.m, 1
  br label %.thread60

bb.b:                                             ; preds = %.lr.ph
  %i.o = icmp ugt i64 %i.j, %i.e                  ; 2 uses
  %i.p = add i64 %.04068, 1
  %.145 = select i1 %i.o, i64 %.04466, i64 %i.p   ; 5 uses
  %.142 = select i1 %i.o, i64 %.04068, i64 %.04167 ; 4 uses
  %i.q = sub i64 %i.e, %i.j
  %i.r = add i64 %i.q, %.04068                    ; 3 uses
  %.not = icmp uge i64 %i.r, %.142
  %i.s = icmp ult i64 %i.r, %.145
  %or.cond = or i1 %.not, %i.s
  %i.t = add i64 %.145, %.142
  %i.u = lshr i64 %i.t, 1
  %.1 = select i1 %or.cond, i64 %i.u, i64 %i.r
  %i.v = icmp ult i64 %.145, %.142
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %.145, %bb.b ] ; 2 uses
  %i.w = icmp ult i64 %.044.lcssa, %i.g
  br i1 %i.w, label %bb.c, label %.thread60

bb.c:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.044.lcssa ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !113
  %.fr = freeze i64 %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !115
  %i.ab = add i16 %i.aa, 1
  %spec.select65 = tail call i64 @llvm.umin.i64(i64 %.fr, i64 4294967296)
  %i.ac = trunc i64 %spec.select65 to i32
  br label %.thread60

.thread60:                                        ; preds = %._crit_edge, %.thread, %bb.c
  %.25064 = phi i16 [ %i.ab, %bb.c ], [ 0, %._crit_edge ], [ %i.n, %.thread ]
  %i.ad = phi i32 [ %i.ac, %bb.c ], [ 0, %._crit_edge ], [ %i.d, %.thread ]
  store i32 %i.ad, ptr %1, align 4, !tbaa !3
  %i.ae = zext i16 %.25064 to i32
  ret i32 %i.ae
}

declare hidden void @ft_glyphslot_set_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @ft_synthesize_vertical_metrics(ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden void @FT_Select_Metrics(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !22, i64 184}
!8 = !{!"FT_FaceRec_", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !10, i64 48, !4, i64 56, !12, i64 64, !4, i64 72, !13, i64 80, !15, i64 88, !16, i64 104, !17, i64 136, !17, i64 138, !17, i64 140, !17, i64 142, !17, i64 144, !17, i64 146, !17, i64 148, !17, i64 150, !18, i64 152, !19, i64 160, !20, i64 168, !21, i64 176, !22, i64 184, !23, i64 192, !24, i64 200, !15, i64 216, !11, i64 232, !26, i64 240}
!9 = !{!"long", !5, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS15FT_Bitmap_Size_", !11, i64 0}
!13 = !{!"p2 _ZTS14FT_CharMapRec_", !14, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"FT_Generic_", !11, i64 0, !11, i64 8}
!16 = !{!"FT_BBox_", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!17 = !{!"short", !5, i64 0}
!18 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !11, i64 0}
!19 = !{!"p1 _ZTS11FT_SizeRec_", !11, i64 0}
!20 = !{!"p1 _ZTS14FT_CharMapRec_", !11, i64 0}
!21 = !{!"p1 _ZTS13FT_DriverRec_", !11, i64 0}
!22 = !{!"p1 _ZTS13FT_MemoryRec_", !11, i64 0}
!23 = !{!"p1 _ZTS13FT_StreamRec_", !11, i64 0}
!24 = !{!"FT_ListRec_", !25, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTS15FT_ListNodeRec_", !11, i64 0}
!26 = !{!"p1 _ZTS20FT_Face_InternalRec_", !11, i64 0}
!27 = !{!28, !30, i64 64}
!28 = !{!"bdf_parse_t__", !9, i64 0, !9, i64 8, !9, i64 16, !17, i64 24, !17, i64 26, !17, i64 28, !17, i64 30, !17, i64 32, !17, i64 34, !10, i64 40, !9, i64 48, !29, i64 56, !30, i64 64, !31, i64 72, !22, i64 104, !9, i64 112}
!29 = !{!"p1 _ZTS11bdf_font_t_", !11, i64 0}
!30 = !{!"p1 _ZTS14bdf_options_t_", !11, i64 0}
!31 = !{!"bdf_list_t__", !32, i64 0, !9, i64 8, !9, i64 16, !22, i64 24}
!32 = !{!"p2 omnipotent char", !14, i64 0}
!33 = !{!28, !17, i64 24}
!34 = !{!35, !9, i64 8}
!35 = !{!"FT_StreamRec_", !10, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 32, !11, i64 40, !11, i64 48, !22, i64 56, !10, i64 64, !10, i64 72}
!36 = !{!28, !9, i64 112}
!37 = !{!28, !22, i64 104}
!38 = !{!31, !22, i64 24}
!39 = !{!35, !22, i64 56}
!40 = !{!11, !11, i64 0}
!41 = !{!5, !5, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{null, null}
!45 = !{!28, !29, i64 56}
!46 = !{!47, !4, i64 48}
!47 = !{!"bdf_font_t_", !10, i64 0, !48, i64 8, !9, i64 24, !9, i64 32, !9, i64 40, !4, i64 48, !17, i64 52, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !49, i64 96, !9, i64 104, !9, i64 112, !49, i64 120, !9, i64 128, !9, i64 136, !50, i64 144, !10, i64 152, !9, i64 160, !11, i64 168, !17, i64 176, !22, i64 184, !50, i64 192, !9, i64 200, !51, i64 208}
!48 = !{!"bdf_bbx_t_", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10}
!49 = !{!"p1 _ZTS12bdf_glyph_t_", !11, i64 0}
!50 = !{!"p1 _ZTS15bdf_property_t_", !11, i64 0}
!51 = !{!"FT_HashRec_", !4, i64 0, !4, i64 4, !4, i64 8, !11, i64 16, !11, i64 24, !52, i64 32}
!52 = !{!"p2 _ZTS15FT_HashnodeRec_", !14, i64 0}
!53 = !{!47, !17, i64 8}
!54 = !{!47, !17, i64 52}
!55 = !{!56, !4, i64 0}
!56 = !{!"bdf_options_t_", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!57 = !{!47, !9, i64 112}
!58 = !{!47, !9, i64 88}
!59 = !{!28, !17, i64 28}
!60 = !{!47, !17, i64 12}
!61 = !{!47, !17, i64 16}
!62 = !{!28, !17, i64 30}
!63 = !{!47, !17, i64 18}
!64 = !{!28, !17, i64 32}
!65 = !{!47, !17, i64 14}
!66 = !{!47, !17, i64 10}
!67 = !{!28, !9, i64 0}
!68 = !{!31, !32, i64 0}
!69 = !{!28, !10, i64 40}
!70 = !{!71, !29, i64 264}
!71 = !{!"BDF_FaceRec_", !8, i64 0, !10, i64 248, !10, i64 256, !29, i64 264, !72, i64 272, !4, i64 280}
!72 = !{!"p1 _ZTS16BDF_encoding_el_", !11, i64 0}
!73 = !{!8, !9, i64 0}
!74 = !{!8, !9, i64 8}
!75 = !{!8, !9, i64 16}
!76 = !{!47, !9, i64 128}
!77 = !{!47, !11, i64 168}
!78 = !{!47, !50, i64 144}
!79 = !{!9, !9, i64 0}
!80 = !{!81, !4, i64 8}
!81 = !{!"bdf_property_t_", !10, i64 0, !4, i64 8, !4, i64 12, !5, i64 16}
!82 = !{!8, !10, i64 40}
!83 = !{!8, !9, i64 24}
!84 = !{!8, !10, i64 48}
!85 = distinct !{!85, !43, !86, !87}
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !{!"llvm.loop.unroll.runtime.disable"}
!88 = !{!"branch_weights", i32 8, i32 24}
!89 = distinct !{!89, !43, !86, !87}
!90 = distinct !{!90, !43, !87, !86}
!91 = distinct !{!91, !43, !86, !87}
!92 = distinct !{!92, !43, !86, !87}
!93 = distinct !{!93, !43, !87, !86}
!94 = !{!47, !9, i64 80}
!95 = !{!8, !9, i64 32}
!96 = !{!8, !4, i64 56}
!97 = !{!8, !12, i64 64}
!98 = !{!47, !9, i64 64}
!99 = !{!47, !9, i64 72}
!100 = !{!101, !17, i64 0}
!101 = !{!"FT_Bitmap_Size_", !17, i64 0, !17, i64 2, !9, i64 8, !9, i64 16, !9, i64 24}
!102 = !{!101, !17, i64 2}
!103 = !{!47, !9, i64 24}
!104 = !{!101, !9, i64 8}
!105 = !{!101, !9, i64 24}
!106 = !{!101, !9, i64 16}
!107 = !{!47, !49, i64 96}
!108 = !{!71, !72, i64 272}
!109 = !{!71, !4, i64 280}
!110 = !{!47, !9, i64 56}
!111 = !{!112, !9, i64 8}
!112 = !{!"bdf_glyph_t_", !10, i64 0, !9, i64 8, !17, i64 16, !17, i64 18, !48, i64 20, !10, i64 32, !9, i64 40, !17, i64 48}
!113 = !{!114, !9, i64 0}
!114 = !{!"BDF_encoding_el_", !9, i64 0, !17, i64 8}
!115 = !{!114, !17, i64 8}
!116 = distinct !{!116, !43}
!117 = !{!71, !10, i64 248}
!118 = !{!71, !10, i64 256}
!119 = !{!120, !121, i64 0}
!120 = !{!"FT_CharMapRec_", !121, i64 0, !4, i64 8, !17, i64 12, !17, i64 14}
!121 = !{!"p1 _ZTS11FT_FaceRec_", !11, i64 0}
!122 = !{!120, !4, i64 8}
!123 = !{!120, !17, i64 12}
!124 = !{!120, !17, i64 14}
!125 = !{!8, !4, i64 72}
!126 = !{!8, !13, i64 80}
!127 = !{!20, !20, i64 0}
!128 = !{!8, !20, i64 168}
!129 = !{!130, !121, i64 0}
!130 = !{!"FT_SizeRec_", !121, i64 0, !15, i64 8, !131, i64 24, !132, i64 80}
!131 = !{!"FT_Size_Metrics_", !17, i64 0, !17, i64 2, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!132 = !{!"p1 _ZTS20FT_Size_InternalRec_", !11, i64 0}
end_hunk_0
