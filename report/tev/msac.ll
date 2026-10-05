Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/msac?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dav1d_msac_decode_symbol_adapt_c:bb.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dav1d_msac_decode_bool_adapt_c(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !20
  %i.b = zext i16 %i.a to i32
  %i.c = tail call i32 @dav1d_msac_decode_bool_sse2(ptr noundef %0, i32 noundef %i.b) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !20   ; 3 uses
  %i.h = lshr i16 %i.g, 4
  %narrow = add nuw nsw i16 %i.h, 4
  %i.i = zext nneg i16 %narrow to i32             ; 2 uses
  %.not15 = icmp eq i32 %i.c, 0
  %i.j = load i16, ptr %1, align 2, !tbaa !20     ; 3 uses
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub nsw i32 32768, %i.k
  %i.m = ashr i32 %i.l, %i.i
  %i.n = trunc nsw i32 %i.m to i16
  %i.o = add i16 %i.j, %i.n
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i32 %i.k, %i.i
  %i.q = trunc nuw nsw i32 %i.p to i16
  %i.r = sub i16 %i.j, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i16 [ %i.r, %bb.d ], [ %i.o, %bb.c ]
  store i16 %storemerge, ptr %1, align 2, !tbaa !20
  %i.s = icmp ult i16 %i.g, 32
  %i.t = zext i1 %i.s to i16
  %i.u = add i16 %i.g, %i.t
  store i16 %i.u, ptr %i.f, align 2, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret i32 %i.c
}

declare i32 @dav1d_msac_decode_bool_sse2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dav1d_msac_decode_hi_tok_c(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef %0, ptr noundef %1, i64 noundef 3) #6 ; 2 uses
  %i.b = add i32 %i.a, 3
  %i.c = icmp eq i32 %i.a, 3
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef %0, ptr noundef %1, i64 noundef 3) #6 ; 2 uses
  %i.e = add i32 %i.d, 6
  %i.f = icmp eq i32 %i.d, 3
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef %0, ptr noundef %1, i64 noundef 3) #6 ; 2 uses
  %i.h = add i32 %i.g, 9
  %i.i = icmp eq i32 %i.g, 3
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef %0, ptr noundef %1, i64 noundef 3) #6
  %i.k = add i32 %i.j, 12
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.h, %bb.c ], [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

declare i32 @dav1d_msac_decode_symbol_adapt4_sse2(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @dav1d_msac_init(ptr nofree noundef writeonly captures(none) initializes((0, 36), (40, 48)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 32768, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 -15, ptr %i.e, align 4, !tbaa !15
  %.not = icmp eq i32 %3, 0
  %i.f = zext i1 %.not to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !21
  %.not.i12.not = icmp eq i64 %2, 0
  br i1 %.not.i12.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %indvars.iv.i.lcssa = phi i64 [ 55, %bb.a ], [ 47, %bb.c ], [ 39, %bb.d ], [ 31, %bb.e ], [ 23, %bb.f ], [ 15, %bb.g ], [ 7, %bb.h ] ; 2 uses
  %.020.i.lcssa = phi ptr [ %1, %bb.a ], [ %i.m, %bb.c ], [ %i.r, %bb.d ], [ %i.x, %bb.e ], [ %i.ad, %bb.f ], [ %i.aj, %bb.g ], [ %i.ap, %bb.h ]
  %.0.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.q, %bb.c ], [ %i.w, %bb.d ], [ %i.ac, %bb.e ], [ %i.ai, %bb.f ], [ %i.ao, %bb.g ], [ %i.au, %bb.h ]
  %i.h = shl nsw i64 -256, %indvars.iv.i.lcssa
  %i.i = xor i64 %i.h, -1
  %i.j = or i64 %.0.i.lcssa, %i.i
  %i.k = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %i.l = sub nsw i32 40, %i.k
  br label %ctx_refill.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.n = load i8, ptr %1, align 1, !tbaa !18
  %i.o = xor i8 %i.n, -1
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 55                 ; 2 uses
  %.not.i12.1.not = icmp eq i64 %2, 1
  br i1 %.not.i12.1.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.s = load i8, ptr %i.m, align 1, !tbaa !18
  %i.t = xor i8 %i.s, -1
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 47
  %i.w = or disjoint i64 %i.v, %i.q               ; 2 uses
  %.not.i12.2 = icmp samesign ugt i64 %2, 2
  br i1 %.not.i12.2, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.y = load i8, ptr %i.r, align 1, !tbaa !18
  %i.z = xor i8 %i.y, -1
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 39
  %i.ac = or disjoint i64 %i.ab, %i.w             ; 2 uses
  %.not.i12.3.not = icmp eq i64 %2, 3
  br i1 %.not.i12.3.not, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !18
  %i.af = xor i8 %i.ae, -1
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 31
  %i.ai = or disjoint i64 %i.ah, %i.ac            ; 2 uses
  %.not.i12.4 = icmp samesign ugt i64 %2, 4
  br i1 %.not.i12.4, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.al = xor i8 %i.ak, -1
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 23
  %i.ao = or disjoint i64 %i.an, %i.ai            ; 2 uses
  %.not.i12.5.not = icmp eq i64 %2, 5
  br i1 %.not.i12.5.not, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !18
  %i.ar = xor i8 %i.aq, -1
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 15
  %i.au = or disjoint i64 %i.at, %i.ao            ; 2 uses
  %.not.i12.6 = icmp samesign ugt i64 %2, 6
  br i1 %.not.i12.6, label %ctx_refill.exit.loopexit, label %bb.b

ctx_refill.exit.loopexit:                         ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ax = xor i8 %i.aw, -1
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 7
  %i.ba = or i64 %i.az, %i.au
  br label %ctx_refill.exit

ctx_refill.exit:                                  ; preds = %ctx_refill.exit.loopexit, %bb.b
  %.121.i = phi ptr [ %.020.i.lcssa, %bb.b ], [ %i.av, %ctx_refill.exit.loopexit ]
  %.119.in.i = phi i32 [ %i.l, %bb.b ], [ 41, %ctx_refill.exit.loopexit ]
  %.1.i = phi i64 [ %i.j, %bb.b ], [ %i.ba, %ctx_refill.exit.loopexit ]
  store i64 %.1.i, ptr %i.c, align 8, !tbaa !14
  store i32 %.119.in.i, ptr %i.e, align 4, !tbaa !15
  store ptr %.121.i, ptr %0, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load i32, ptr @dav1d_cpu_flags, align 4, !tbaa !30
  %i.bd = load i32, ptr @dav1d_cpu_flags_mask, align 4, !tbaa !30
  %i.be = and i32 %i.bd, %i.bc                    ; 2 uses
  %i.bf = and i32 %i.be, 1
  %.not.i = icmp eq i32 %i.bf, 0
  %spec.store.select = select i1 %.not.i, ptr @dav1d_msac_decode_symbol_adapt_c, ptr @dav1d_msac_decode_symbol_adapt16_sse2
  %i.bg = and i32 %i.be, 8
  %.not3.i = icmp eq i32 %i.bg, 0
  %spec.store.select13 = select i1 %.not3.i, ptr %spec.store.select, ptr @dav1d_msac_decode_symbol_adapt16_avx2
  store ptr %spec.store.select13, ptr %i.bb, align 8, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

declare i32 @dav1d_msac_decode_symbol_adapt16_sse2(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @dav1d_msac_decode_symbol_adapt16_avx2(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"MsacContext", !10, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !9, i64 40}
!13 = !{!12, !6, i64 24}
!14 = !{!12, !11, i64 16}
!15 = !{!12, !6, i64 28}
!16 = !{!12, !10, i64 0}
!17 = !{!12, !10, i64 8}
!18 = !{!5, !5, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!12, !6, i64 32}
!22 = distinct !{!22, !27, !28}
!23 = distinct !{!23, !27, !28}
!24 = distinct !{!24, !27, !28}
!25 = distinct !{!25, !28, !27}
!26 = distinct !{!26, !28, !27}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 4, i32 12}
!30 = !{!6, !6, i64 0}
!31 = !{!12, !9, i64 40}
end_hunk_0
