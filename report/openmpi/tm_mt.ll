inline.NumInlined: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@tm_genrand_real2:bb.a
  store ptr %i.q, ptr @pm, align 8, !tbaa !10
  %i.r = load i64, ptr %i.p, align 8, !tbaa !8
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  %i.t = and i64 %i.s, 2147483648
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = and i64 %i.u, 2147483646
  %i.w = or disjoint i64 %i.v, %i.t
  %i.x = lshr exact i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.r
  %i.z = and i64 %i.u, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 2567483615
  %i.ac = xor i64 %i.y, %i.ab                     ; 3 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ad, ptr @p1, align 8, !tbaa !10
  store ptr %i.n, ptr @p0, align 8, !tbaa !10
  %i.ae = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tm_init_genrand.exit.i
  store ptr @x, ptr @pm, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tm_init_genrand.exit.i
  %i.af = icmp eq ptr %i.ad, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.af, label %bb.g, label %tm_genrand_int32.exit

bb.g:                                             ; preds = %bb.f
  store ptr @x, ptr @p1, align 8, !tbaa !10
  br label %tm_genrand_int32.exit

tm_genrand_int32.exit:                            ; preds = %bb.f, %bb.g
  %i.ag = lshr i64 %i.ac, 11
  %i.ah = xor i64 %i.ag, %i.ac                    ; 2 uses
  %i.ai = shl i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 2636928640
  %i.ak = xor i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = shl i64 %i.ak, 15
  %i.am = and i64 %i.al, 4022730752
  %i.an = xor i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = lshr i64 %i.an, 18
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = uitofp i64 %i.ap to double
  %i.ar = fmul nnan double %i.aq, f0x3DF0000000000000
  ret double %i.ar
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden double @tm_genrand_real3() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @p0, align 8, !tbaa !10    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr @pm, align 8, !tbaa !10
  %.pre9.i = load ptr, ptr @p1, align 8, !tbaa !10
  br label %tm_init_genrand.exit.i

bb.b:                                             ; preds = %bb.a
  store i64 5489, ptr @x, align 16, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ 5489, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.i.i
  %i.c = lshr i64 %store_forwarded, 30
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul nuw nsw i64 %i.d, 1812433253
  %i.f = add nuw i64 %i.e, %indvars.iv.i.i        ; 2 uses
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %tm_init_genrand.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next.i.i
  %i.i = lshr i64 %i.g, 30
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %indvars.iv.next.i.i
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.c

tm_init_genrand.exit.i:                           ; preds = %bb.c, %._crit_edge.i
  %i.n = phi ptr [ %.pre9.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 8), %bb.c ] ; 3 uses
  %i.o = phi ptr [ %i.a, %._crit_edge.i ], [ @x, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 3176), %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.q, ptr @pm, align 8, !tbaa !10
  %i.r = load i64, ptr %i.p, align 8, !tbaa !8
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  %i.t = and i64 %i.s, 2147483648
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = and i64 %i.u, 2147483646
  %i.w = or disjoint i64 %i.v, %i.t
  %i.x = lshr exact i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.r
  %i.z = and i64 %i.u, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 2567483615
  %i.ac = xor i64 %i.y, %i.ab                     ; 3 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ad, ptr @p1, align 8, !tbaa !10
  store ptr %i.n, ptr @p0, align 8, !tbaa !10
  %i.ae = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tm_init_genrand.exit.i
  store ptr @x, ptr @pm, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tm_init_genrand.exit.i
  %i.af = icmp eq ptr %i.ad, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.af, label %bb.g, label %tm_genrand_int32.exit

bb.g:                                             ; preds = %bb.f
  store ptr @x, ptr @p1, align 8, !tbaa !10
  br label %tm_genrand_int32.exit

tm_genrand_int32.exit:                            ; preds = %bb.f, %bb.g
  %i.ag = lshr i64 %i.ac, 11
  %i.ah = xor i64 %i.ag, %i.ac                    ; 2 uses
  %i.ai = shl i64 %i.ah, 7
  %i.aj = and i64 %i.ai, 2636928640
  %i.ak = xor i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = shl i64 %i.ak, 15
  %i.am = and i64 %i.al, 4022730752
  %i.an = xor i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = lshr i64 %i.an, 18
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = uitofp i64 %i.ap to double
  %i.ar = fadd nnan double %i.aq, 5.000000e-01
  %i.as = fmul nnan double %i.ar, f0x3DF0000000000000
  ret double %i.as
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden double @tm_genrand_res53() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @p0, align 8, !tbaa !10    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr @pm, align 8, !tbaa !10
  %.pre9.i = load ptr, ptr @p1, align 8, !tbaa !10
  br label %tm_init_genrand.exit.i

bb.b:                                             ; preds = %bb.a
  store i64 5489, ptr @x, align 16, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %store_forwarded = phi i64 [ 5489, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.i.i
  %i.c = lshr i64 %store_forwarded, 30
  %i.d = xor i64 %i.c, %store_forwarded
  %i.e = mul nuw nsw i64 %i.d, 1812433253
  %i.f = add nuw i64 %i.e, %indvars.iv.i.i        ; 2 uses
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 624
  br i1 %exitcond.not.i.i, label %tm_init_genrand.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [8 x i8], ptr @x, i64 %indvars.iv.next.i.i
  %i.i = lshr i64 %i.g, 30
  %i.j = xor i64 %i.i, %i.f
  %i.k = mul i64 %i.j, 1812433253
  %i.l = add i64 %i.k, %indvars.iv.next.i.i
  %i.m = and i64 %i.l, 4294967295                 ; 2 uses
  store i64 %i.m, ptr %i.h, align 8, !tbaa !8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.c

tm_init_genrand.exit.i:                           ; preds = %bb.c, %._crit_edge.i
  %i.n = phi ptr [ %.pre9.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 8), %bb.c ] ; 4 uses
  %i.o = phi ptr [ %i.a, %._crit_edge.i ], [ @x, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @x, i64 3176), %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !8
  %i.s = load i64, ptr %i.o, align 8, !tbaa !8
  %i.t = and i64 %i.s, 2147483648
  %i.u = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.v = and i64 %i.u, 2147483646
  %i.w = or disjoint i64 %i.v, %i.t
  %i.x = lshr exact i64 %i.w, 1
  %i.y = xor i64 %i.x, %i.r
  %i.z = and i64 %i.u, 1
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 2567483615
  %0 = xor i64 %i.y, %i.ab                        ; 3 uses
  store i64 %0, ptr %i.o, align 8, !tbaa !8
  %1 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ac = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  %spec.select.a = select i1 %i.ac, ptr @x, ptr %i.q ; 2 uses
  %2 = icmp eq ptr %1, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  %.pre9.i5 = select i1 %2, ptr @x, ptr %1        ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %spec.select.a, i64 8 ; 2 uses
  store ptr %3, ptr @pm, align 8, !tbaa !10
  %i.ad = load i64, ptr %spec.select.a, align 8, !tbaa !8
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !8
  %i.af = and i64 %i.ae, 2147483648
  %i.ag = load i64, ptr %.pre9.i5, align 8, !tbaa !8 ; 2 uses
  %i.ah = and i64 %i.ag, 2147483646
  %i.ai = or disjoint i64 %i.ah, %i.af
  %i.aj = lshr exact i64 %i.ai, 1
  %i.ak = xor i64 %i.aj, %i.ad
  %i.al = and i64 %i.ag, 1
  %i.am = icmp eq i64 %i.al, 0
  %i.an = select i1 %i.am, i64 0, i64 2567483615
  %i.ao = xor i64 %i.ak, %i.an                    ; 3 uses
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre9.i5, i64 8 ; 2 uses
  store ptr %i.ap, ptr @p1, align 8, !tbaa !10
  store ptr %.pre9.i5, ptr @p0, align 8, !tbaa !10
  %i.aq = icmp eq ptr %3, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tm_init_genrand.exit.i
  store ptr @x, ptr @pm, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tm_init_genrand.exit.i
  %i.ar = icmp eq ptr %i.ap, getelementptr inbounds nuw (i8, ptr @x, i64 4992)
  br i1 %i.ar, label %bb.g, label %tm_genrand_int32.exit10

bb.g:                                             ; preds = %bb.f
  store ptr @x, ptr @p1, align 8, !tbaa !10
  br label %tm_genrand_int32.exit10

tm_genrand_int32.exit10:                          ; preds = %bb.f, %bb.g
  %4 = lshr i64 %0, 11
  %5 = xor i64 %4, %0                             ; 2 uses
  %6 = shl i64 %5, 7
  %7 = and i64 %6, 2636928640
  %8 = xor i64 %7, %5                             ; 2 uses
  %9 = shl i64 %8, 15
  %10 = and i64 %9, 4022730752
  %11 = xor i64 %10, %8                           ; 2 uses
  %12 = lshr i64 %11, 23
  %13 = lshr i64 %11, 5
  %14 = xor i64 %12, %13
  %15 = lshr i64 %i.ao, 11
  %16 = xor i64 %15, %i.ao                        ; 2 uses
  %17 = shl i64 %16, 7
  %18 = and i64 %17, 2636928640
  %19 = xor i64 %18, %16                          ; 2 uses
  %20 = shl i64 %19, 15
  %21 = and i64 %20, 4022730752
  %22 = xor i64 %21, %19                          ; 2 uses
  %23 = lshr i64 %22, 24
  %24 = lshr i64 %22, 6
  %25 = xor i64 %23, %24
  %26 = uitofp nneg i64 %14 to double
  %27 = uitofp nneg i64 %25 to double
  %i.as = tail call nnan double @llvm.fmuladd.f64(double %26, double f0x4190000000000000, double %27)
  %i.at = fmul nnan double %i.as, f0x3CA0000000000000
  ret double %i.at
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 long", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
end_hunk_0
