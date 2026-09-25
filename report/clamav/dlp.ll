Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/dlp?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cdn_eft_is_valid:bb.a
bb.c:                                             ; preds = %.preheader20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12    ; 2 uses
  %i.o = sext i8 %i.n to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !14
  %i.r = and i16 %i.q, 2048
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12    ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !14
  %i.y = and i16 %i.x, 2048
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = sext i8 %i.g to i32
  %i.ab = mul nsw i32 %i.aa, 10
  %i.ac = add nsw i32 %i.ab, -528
  %i.ad = sext i8 %i.n to i32
  %i.ae = add nsw i32 %i.ac, %i.ad
  %i.af = sext i8 %i.u to i32
  %i.ag = mul nsw i32 %i.ae, 10
  %i.ah = add nsw i32 %i.ag, -48
  %i.ai = add nsw i32 %i.ah, %i.af
  %i.aj = tail call i32 @is_bank_code_valid(i32 noundef %i.ai)
  %.not19 = icmp eq i32 %i.aj, 0
  br i1 %.not19, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !14
  %i.ap = and i16 %i.ao, 2048
  %i.aq = icmp eq i16 %i.ap, 0
  br i1 %i.aq, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !14
  %i.aw = and i16 %i.av, 2048
  %i.ax = icmp eq i16 %i.aw, 0
  br i1 %i.ax, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !12
  %i.ba = sext i8 %i.az to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !14
  %i.bd = and i16 %i.bc, 2048
  %i.be = icmp eq i16 %i.bd, 0
  br i1 %i.be, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !12
  %i.bh = sext i8 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !14
  %i.bk = and i16 %i.bj, 2048
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !14
  %i.br = lshr i16 %i.bq, 11
  %.lobit = and i16 %i.br, 1
  %spec.select = zext nneg i16 %.lobit to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.preheader20, %bb.c, %bb.d, %.preheader, %bb.f, %bb.g, %bb.h, %bb.e, %bb.b, %bb.a
  %.017 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %.preheader20 ], [ 0, %.preheader ], [ 0, %bb.f ], [ %spec.select, %bb.i ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.017
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @us_micr_is_valid(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %1, 9
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #11
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 9 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !14
  %i.i = and i16 %i.h, 2048
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12    ; 2 uses
  %i.m = sext i8 %i.l to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !14
  %i.p = and i16 %i.o, 2048
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12    ; 2 uses
  %i.t = sext i8 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !14
  %i.w = and i16 %i.v, 2048
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12    ; 2 uses
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !14
  %i.ad = and i16 %i.ac, 2048
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12  ; 2 uses
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !14
  %i.ak = and i16 %i.aj, 2048
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12  ; 2 uses
  %i.ao = sext i8 %i.an to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !14
  %i.ar = and i16 %i.aq, 2048
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12  ; 2 uses
  %i.av = sext i8 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !14
  %i.ay = and i16 %i.ax, 2048
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !12  ; 2 uses
  %i.bc = sext i8 %i.bb to i64
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !14
  %i.bf = and i16 %i.be, 2048
  %i.bg = icmp eq i16 %i.bf, 0
  br i1 %i.bg, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !12  ; 2 uses
  %i.bj = sext i8 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !14
  %i.bm = and i16 %i.bl, 2048
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = zext i8 %i.e to i16
  %i.bp = zext i8 %i.z to i16
  %i.bq = add nuw nsw i16 %i.bp, %i.bo
  %i.br = zext i8 %i.au to i16
  %i.bs = zext i8 %i.l to i16
  %i.bt = zext i8 %i.ag to i16
  %i.bu = add nuw nsw i16 %i.bt, %i.bs
  %i.bv = zext i8 %i.bb to i16
  %i.bw = zext i8 %i.s to i16
  %i.bx = zext i8 %i.an to i16
  %i.by = add nuw nsw i16 %i.bx, %i.bw
  %i.bz = add nuw nsw i16 %i.bu, %i.bv
  %i.ca = add nuw nsw i16 %i.bq, %i.br
  %i.cb = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.ca, i64 0
  %i.cc = insertelement <4 x i16> %i.cb, i16 %i.bz, i64 1
  %i.cd = insertelement <4 x i16> %i.cc, i16 %i.by, i64 2
  %i.ce = mul nuw nsw <4 x i16> %i.cd, <i16 7, i16 3, i16 9, i16 -2304>
  %i.cf = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ce)
  %i.cg = srem i16 %i.cf, 10
  %.sext = sext i16 %i.cg to i32
  %i.ch = zext i8 %i.bi to i32
  %i.ci = add nsw i32 %i.ch, -48
  %i.cj = icmp eq i32 %i.ci, %.sext
  %. = zext i1 %i.cj to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.a
  %.015 = phi i32 [ %., %bb.j ], [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.preheader ]
  ret i32 %.015
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !15}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 short", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = distinct !{null}
!17 = distinct !{!17, !26, !27}
!18 = distinct !{!18, !27, !26}
!19 = !{!"p1 omnipotent char", !9, i64 0}
!20 = !{!"iin_map_struct", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !19, i64 16}
!21 = !{!20, !6, i64 4}
!22 = !{!20, !6, i64 0}
!23 = !{!20, !19, i64 16}
!24 = !{!20, !5, i64 9}
!25 = !{!20, !5, i64 8}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !15}
!29 = !{!6, !6, i64 0}
end_hunk_0
