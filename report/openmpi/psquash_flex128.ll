inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@flex128_get_max_size:bb.a
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.flex128_get_max_size, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %._crit_edge
  %i.d = phi i64 [ %switch.ext, %switch.lookup ], [ %i.b, %._crit_edge ]
  %.0 = phi i32 [ 0, %switch.lookup ], [ -27, %._crit_edge ]
  store i64 %i.d, ptr %1, align 8, !tbaa !39
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -27, 1) i32 @flex128_encode_int(i16 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  switch i16 %0, label %bb.i [
    i16 8, label %bb.b
    i16 13, label %bb.c
    i16 6, label %bb.d
    i16 9, label %bb.d
    i16 11, label %bb.e
    i16 14, label %bb.e
    i16 10, label %bb.f
    i16 4, label %bb.g
    i16 15, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %.0.copyload20 = load i16, ptr %1, align 1      ; 3 uses
  %.0.copyload20.lobit = lshr i16 %.0.copyload20, 15
  %spec.select = zext nneg i16 %.0.copyload20.lobit to i64
  %.0.copyload20.lobit65 = ashr i16 %.0.copyload20, 15
  %spec.select5166 = xor i16 %.0.copyload20.lobit65, %.0.copyload20
  %spec.select51 = sext i16 %spec.select5166 to i64
  %i.b = shl nsw i64 %spec.select51, 1
  %i.c = or disjoint i64 %i.b, %spec.select
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.0.copyload15 = load i16, ptr %1, align 1
  %i.d = zext i16 %.0.copyload15 to i64
  br label %bb.j

bb.d:                                             ; preds = %bb.a, %bb.a
  %.0.copyload13 = load i32, ptr %1, align 1      ; 3 uses
  %.0.copyload13.lobit = lshr i32 %.0.copyload13, 31
  %spec.select52 = zext nneg i32 %.0.copyload13.lobit to i64
  %.0.copyload13.lobit63 = ashr i32 %.0.copyload13, 31
  %spec.select5364 = xor i32 %.0.copyload13.lobit63, %.0.copyload13
  %spec.select53 = sext i32 %spec.select5364 to i64
  %i.e = shl nsw i64 %spec.select53, 1
  %i.f = or disjoint i64 %i.e, %spec.select52
  br label %bb.j

bb.e:                                             ; preds = %bb.a, %bb.a
  %.0.copyload8 = load i32, ptr %1, align 1
  %i.g = zext i32 %.0.copyload8 to i64
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %.0.copyload6 = load i64, ptr %1, align 1       ; 3 uses
  %.0.copyload6.lobit = ashr i64 %.0.copyload6, 63
  %spec.select54 = xor i64 %.0.copyload6.lobit, %.0.copyload6
  %i.h = tail call i64 @llvm.fshl.i64(i64 %spec.select54, i64 %.0.copyload6, i64 1)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %.0.copyload1 = load i64, ptr %1, align 1
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %.0.copyload = load i64, ptr %1, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.i = tail call ptr @PMIx_Error_string(i32 noundef -27) #6
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %i.i, ptr noundef nonnull @.str.4, i32 noundef 262) #6
  br label %bb.s

bb.j:                                             ; preds = %bb.h, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.3.ph = phi i64 [ %.0.copyload1, %bb.g ], [ %i.h, %bb.f ], [ %i.g, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.c ], [ %i.c, %bb.b ], [ %.0.copyload, %bb.h ] ; 9 uses
  %i.j = trunc i64 %.3.ph to i8                   ; 2 uses
  %i.k = lshr i64 %.3.ph, 7                       ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.thread22.i, label %bb.k, !prof !40

.thread22.i:                                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.015.lcssa.i = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ], [ 5, %bb.o ], [ 6, %bb.p ], [ 7, %bb.q ] ; 2 uses
  %.lcssa28.i = phi i8 [ %i.j, %bb.j ], [ %i.n, %bb.k ], [ %i.r, %bb.l ], [ %i.v, %bb.m ], [ %i.z, %bb.n ], [ %i.ad, %bb.o ], [ %i.ah, %bb.p ], [ %i.al, %bb.q ]
  %i.l = add nuw nsw i64 %.015.lcssa.i, 1
  br label %flex_pack_integer.exit

bb.k:                                             ; preds = %bb.j
  %i.m = or i8 %i.j, -128
  store i8 %i.m, ptr %i.a, align 1, !tbaa !41
  %i.n = trunc i64 %i.k to i8                     ; 2 uses
  %i.o = lshr i64 %.3.ph, 14                      ; 2 uses
  %.not.1.i = icmp eq i64 %i.o, 0
  br i1 %.not.1.i, label %.thread22.i, label %bb.l, !prof !40

bb.l:                                             ; preds = %bb.k
  %i.p = or i8 %i.n, -128
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !41
  %i.r = trunc i64 %i.o to i8                     ; 2 uses
  %i.s = lshr i64 %.3.ph, 21                      ; 2 uses
  %.not.2.i = icmp eq i64 %i.s, 0
  br i1 %.not.2.i, label %.thread22.i, label %bb.m, !prof !40

bb.m:                                             ; preds = %bb.l
  %i.t = or i8 %i.r, -128
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.t, ptr %i.u, align 1, !tbaa !41
  %i.v = trunc i64 %i.s to i8                     ; 2 uses
  %i.w = lshr i64 %.3.ph, 28                      ; 2 uses
  %.not.3.i = icmp eq i64 %i.w, 0
  br i1 %.not.3.i, label %.thread22.i, label %bb.n, !prof !40

bb.n:                                             ; preds = %bb.m
  %i.x = or i8 %i.v, -128
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.x, ptr %i.y, align 1, !tbaa !41
  %i.z = trunc i64 %i.w to i8                     ; 2 uses
  %i.aa = lshr i64 %.3.ph, 35                     ; 2 uses
  %.not.4.i = icmp eq i64 %i.aa, 0
  br i1 %.not.4.i, label %.thread22.i, label %bb.o, !prof !40

bb.o:                                             ; preds = %bb.n
  %i.ab = or i8 %i.z, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !41
  %i.ad = trunc i64 %i.aa to i8                   ; 2 uses
  %i.ae = lshr i64 %.3.ph, 42                     ; 2 uses
  %.not.5.i = icmp eq i64 %i.ae, 0
  br i1 %.not.5.i, label %.thread22.i, label %bb.p, !prof !40

bb.p:                                             ; preds = %bb.o
  %i.af = or i8 %i.ad, -128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !41
  %i.ah = trunc i64 %i.ae to i8                   ; 2 uses
  %i.ai = lshr i64 %.3.ph, 49                     ; 2 uses
  %.not.6.i = icmp eq i64 %i.ai, 0
  br i1 %.not.6.i, label %.thread22.i, label %bb.q, !prof !40

bb.q:                                             ; preds = %bb.p
  %i.aj = or i8 %i.ah, -128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !41
  %i.al = trunc i64 %i.ai to i8                   ; 2 uses
  %i.am = lshr i64 %.3.ph, 56                     ; 2 uses
  %.not.7.i = icmp eq i64 %i.am, 0
  br i1 %.not.7.i, label %.thread22.i, label %bb.r, !prof !40

bb.r:                                             ; preds = %bb.q
  %i.an = or i8 %i.al, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !41
  %i.ap = trunc nuw i64 %i.am to i8
  br label %flex_pack_integer.exit

flex_pack_integer.exit:                           ; preds = %.thread22.i, %bb.r
  %.015.lcssa.sink.i = phi i64 [ %.015.lcssa.i, %.thread22.i ], [ 8, %bb.r ]
  %.lcssa28.sink.i = phi i8 [ %.lcssa28.i, %.thread22.i ], [ %i.ap, %bb.r ]
  %.1.i = phi i64 [ %i.l, %.thread22.i ], [ 9, %bb.r ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.lcssa.sink.i
  store i8 %.lcssa28.sink.i, ptr %i.aq, align 1, !tbaa !41
  store i64 %.1.i, ptr %3, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %.1.i, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %flex_pack_integer.exit, %bb.i
  %.04560 = phi i32 [ 0, %flex_pack_integer.exit ], [ -27, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.04560
}

; Function Attrs: nounwind uwtable
define internal range(i32 -27, 1) i32 @flex128_decode_int(i16 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %switch.tableidx = add i16 %0, -4               ; 3 uses
  %i.a = icmp ult i16 %switch.tableidx, 12
  %switch.shifted = lshr i16 3829, %switch.tableidx
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PMIx_Error_string(i32 noundef -27) #6
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %i.b, ptr noundef nonnull @.str.4, i32 noundef 280) #6
  br label %.thread69

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.flex128_decode_int, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 9)
  %i.d = add nsw i64 %spec.store.select.i, -1     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %switch.lookup
  %.038.i = phi i64 [ 0, %switch.lookup ], [ %i.k, %bb.c ]
  %.037.i = phi i64 [ 0, %switch.lookup ], [ %i.l, %bb.c ] ; 3 uses
  %.034.i = phi i64 [ 0, %switch.lookup ], [ %i.e, %bb.c ] ; 3 uses
  %i.e = add nuw i64 %.034.i, 1                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.034.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !41    ; 3 uses
  %i.h = and i8 %i.g, 127
  %i.i = zext nneg i8 %i.h to i64
  %i.j = shl i64 %i.i, %.037.i
  %i.k = add i64 %i.j, %.038.i                    ; 3 uses
  %i.l = add i64 %.037.i, 7                       ; 3 uses
  %i.m = icmp slt i8 %i.g, 0                      ; 2 uses
  %i.n = icmp ult i64 %i.e, %i.d
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %bb.c, label %bb.d, !prof !42, !llvm.loop !43

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.d, %i.e
  %i.q = and i1 %i.p, %i.m
  br i1 %i.q, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i64 %.034.i, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.t = load i8, ptr %i.s, align 1, !tbaa !41    ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = shl i64 %i.u, %i.l
  %i.w = add i64 %i.v, %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.139.i = phi i64 [ %i.w, %bb.e ], [ %i.k, %bb.d ] ; 10 uses
  %.036.i = phi i64 [ %i.l, %bb.e ], [ %.037.i, %bb.d ]
  %.135.i = phi i64 [ %i.r, %bb.e ], [ %i.e, %bb.d ]
  %.033.i = phi i8 [ %i.t, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %.not47.i = icmp eq i8 %.033.i, 0
  br i1 %.not47.i, label %flex_unpack_integer.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.x = tail call range(i8 0, 9) i8 @llvm.ctlz.i8(i8 %.033.i, i1 true)
  %i.y = sub nuw nsw i8 8, %i.x
  %i.z = zext nneg i8 %i.y to i64
  br label %flex_unpack_integer.exit

flex_unpack_integer.exit:                         ; preds = %bb.f, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.z, %.lr.ph.preheader.i ]
  %i.aa = add i64 %.0.lcssa.i, %.036.i            ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.aa, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ab, %i.ae
  store i64 %.135.i, ptr %4, align 8, !tbaa !39
  %i.ag = icmp samesign ugt i64 %i.af, %switch.ext
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %flex_unpack_integer.exit
  %i.ah = tail call ptr @PMIx_Error_string(i32 noundef -20) #6
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %i.ah, ptr noundef nonnull @.str.4, i32 noundef 287) #6
  br label %.thread69

bb.h:                                             ; preds = %flex_unpack_integer.exit
  switch i16 %0, label %bb.p [
    i16 8, label %bb.i
    i16 13, label %bb.j
    i16 6, label %bb.k
    i16 9, label %bb.k
    i16 11, label %bb.l
    i16 14, label %bb.l
    i16 10, label %bb.m
    i16 4, label %bb.n
    i16 15, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.ai = lshr i64 %.139.i, 1
  %i.aj = and i64 %.139.i, 1
  %sext73 = sub nsw i64 0, %i.aj
  %spec.select = xor i64 %i.ai, %sext73
  %i.ak = trunc i64 %spec.select to i16
  store i16 %i.ak, ptr %3, align 1
  br label %.thread69

bb.j:                                             ; preds = %bb.h
  %i.al = trunc i64 %.139.i to i16
  store i16 %i.al, ptr %3, align 1
  br label %.thread69

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.am = lshr i64 %.139.i, 1
  %i.an = and i64 %.139.i, 1
  %sext72 = sub nsw i64 0, %i.an
  %spec.select55 = xor i64 %i.am, %sext72
  %i.ao = trunc i64 %spec.select55 to i32
  store i32 %i.ao, ptr %3, align 1
  br label %.thread69

bb.l:                                             ; preds = %bb.h, %bb.h
  %i.ap = trunc i64 %.139.i to i32
  store i32 %i.ap, ptr %3, align 1
  br label %.thread69

bb.m:                                             ; preds = %bb.h
  %i.aq = lshr i64 %.139.i, 1
  %i.ar = and i64 %.139.i, 1
  %sext = sub nsw i64 0, %i.ar
  %spec.select56 = xor i64 %i.aq, %sext
  store i64 %spec.select56, ptr %3, align 1
  br label %.thread69

bb.n:                                             ; preds = %bb.h
  store i64 %.139.i, ptr %3, align 1
  br label %.thread69

bb.o:                                             ; preds = %bb.h
  store i64 %.139.i, ptr %3, align 1
  br label %.thread69

bb.p:                                             ; preds = %bb.h
  %i.as = tail call ptr @PMIx_Error_string(i32 noundef -27) #6
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %i.as, ptr noundef nonnull @.str.4, i32 noundef 292) #6
  br label %.thread69

.thread69:                                        ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.o, %bb.p, %bb.g, %bb.b
  %.0 = phi i32 [ -27, %bb.b ], [ -20, %bb.g ], [ -27, %bb.p ], [ 0, %bb.o ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ]
  ret i32 %.0
}

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @PMIx_Error_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctlz.i8(i8, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 408}
!9 = !{!"", !5, i64 0, !10, i64 4, !11, i64 264, !11, i64 296, !13, i64 328, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !15, i64 352, !16, i64 360, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !18, i64 392, !18, i64 400, !5, i64 408, !19, i64 416, !27, i64 1648, !27, i64 1649, !28, i64 1656, !24, i64 1672, !29, i64 1944, !5, i64 2104, !5, i64 2108, !31, i64 2112, !27, i64 2304, !24, i64 2312, !27, i64 2584, !27, i64 2585, !27, i64 2586, !23, i64 2592, !24, i64 2600, !33, i64 2872, !33, i64 2888, !27, i64 2904, !27, i64 2905, !34, i64 2912, !35, i64 2944}
!10 = !{!"pmix_proc", !6, i64 0, !5, i64 256}
!11 = !{!"pmix_value", !12, i64 0, !6, i64 8}
!12 = !{!"short", !6, i64 0}
!13 = !{!"p1 _ZTS11pmix_peer_t", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"p2 omnipotent char", !17, i64 0}
!17 = !{!"any p2 pointer", !14, i64 0}
!18 = !{!"p1 _ZTS10event_base", !14, i64 0}
!19 = !{!"", !20, i64 0, !23, i64 120, !14, i64 128, !14, i64 136, !24, i64 144, !24, i64 416, !24, i64 688, !24, i64 960}
!20 = !{!"pmix_object_t", !6, i64 0, !21, i64 40, !5, i64 48, !22, i64 56}
!21 = !{!"p1 _ZTS12pmix_class_t", !14, i64 0}
!22 = !{!"pmix_tma", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !17, i64 56}
!23 = !{!"long", !6, i64 0}
!24 = !{!"pmix_list_t", !20, i64 0, !25, i64 120, !23, i64 264}
!25 = !{!"pmix_list_item_t", !20, i64 0, !26, i64 120, !26, i64 128, !5, i64 136}
!26 = !{!"p1 _ZTS16pmix_list_item_t", !14, i64 0}
!27 = !{!"_Bool", !6, i64 0}
!28 = !{!"timeval", !23, i64 0, !23, i64 8}
!29 = !{!"pmix_pointer_array_t", !20, i64 0, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !30, i64 144, !17, i64 152}
!30 = !{!"p1 long", !14, i64 0}
!31 = !{!"pmix_hotel_t", !20, i64 0, !5, i64 120, !18, i64 128, !28, i64 136, !14, i64 152, !14, i64 160, !14, i64 168, !32, i64 176, !5, i64 184}
!32 = !{!"p1 int", !14, i64 0}
!33 = !{!"", !15, i64 0, !14, i64 8}
!34 = !{!"", !27, i64 0, !27, i64 1, !27, i64 2, !27, i64 3, !27, i64 4, !27, i64 5, !27, i64 6, !15, i64 8, !15, i64 16, !27, i64 24, !27, i64 25, !27, i64 26, !27, i64 27, !27, i64 28, !27, i64 29}
!35 = !{!"", !20, i64 0, !36, i64 120, !5, i64 128}
!36 = !{!"p1 _ZTS20pmix_pointer_array_t", !14, i64 0}
!37 = !{!38, !5, i64 4}
!38 = !{!"", !27, i64 0, !27, i64 1, !5, i64 4, !27, i64 8, !5, i64 12, !15, i64 16, !15, i64 24, !5, i64 32, !15, i64 40, !5, i64 48, !27, i64 52, !27, i64 53, !27, i64 54, !27, i64 55, !15, i64 56, !5, i64 64, !5, i64 68}
!39 = !{!23, !23, i64 0}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!6, !6, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
end_hunk_0
