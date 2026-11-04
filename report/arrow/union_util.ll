Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/union_util?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5arrow10union_util27LogicalSparseUnionNullCountERKNS_9ArraySpanE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 !guid !49 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK5arrow9ArraySpan6IsNullEl.exit, %bb.a
  %.013.lcssa = phi i64 [ 0, %bb.a ], [ %i.az, %_ZNK5arrow9ArraySpan6IsNullEl.exit ]
  ret i64 %.013.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZNK5arrow9ArraySpan6IsNullEl.exit
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %_ZNK5arrow9ArraySpan6IsNullEl.exit ] ; 6 uses
  %.01314 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZNK5arrow9ArraySpan6IsNullEl.exit ]
  %i.l = load i64, ptr %i.a, align 8, !tbaa !16
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %.015
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %i.p = sext i8 %i.o to i64
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  %i.s = load i32, ptr %i.r, align 4, !tbaa !6
  %i.t = zext i32 %i.s to i64
  %sext = shl i64 %i.t, 56
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.v = ashr exact i64 %sext, 49
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ab = add nsw i64 %i.aa, %.015                ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !23
  %i.af = trunc i64 %i.ab to i8
  %i.ag = and i8 %i.af, 7
  %i.ah = lshr i8 %i.ae, %i.ag
  %i.ai = trunc i8 %i.ah to i1
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

bb.d:                                             ; preds = %bb.b
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !45
  switch i32 %i.al, label %bb.h [
    i32 27, label %bb.e
    i32 28, label %bb.f
    i32 38, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.am = tail call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.w, i64 noundef %.015)
  %i.an = xor i1 %i.am, true
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = tail call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.w, i64 noundef %.015)
  %i.ap = xor i1 %i.ao, true
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

bb.g:                                             ; preds = %bb.d
  %i.aq = tail call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.w, i64 noundef %.015)
  %i.ar = xor i1 %i.aq, true
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

bb.h:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !21
  %i.aw = icmp ne i64 %i.at, %i.av
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

_ZNK5arrow9ArraySpan6IsNullEl.exit:               ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.1.i.i = phi i1 [ %i.ai, %bb.c ], [ %i.an, %bb.e ], [ %i.ap, %bb.f ], [ %i.ar, %bb.g ], [ %i.aw, %bb.h ]
  %i.ax = xor i1 %.1.i.i, true
  %i.ay = zext i1 %i.ax to i64
  %i.az = add nuw nsw i64 %.01314, %i.ay          ; 2 uses
  %i.ba = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !21
  %i.bc = icmp slt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !48
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5arrow10union_util26LogicalDenseUnionNullCountERKNS_9ArraySpanE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 !guid !51 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK5arrow9ArraySpan6IsNullEl.exit, %bb.a
  %.017.lcssa = phi i64 [ 0, %bb.a ], [ %i.bg, %_ZNK5arrow9ArraySpan6IsNullEl.exit ]
  ret i64 %.017.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZNK5arrow9ArraySpan6IsNullEl.exit
  %.019 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %_ZNK5arrow9ArraySpan6IsNullEl.exit ] ; 3 uses
  %.01718 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %_ZNK5arrow9ArraySpan6IsNullEl.exit ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 %.019
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23
  %i.s = sext i8 %i.r to i64
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.s
  %i.v = load i32, ptr %i.u, align 4, !tbaa !6
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.h, i64 %i.o
  %i.y = getelementptr [4 x i8], ptr %i.x, i64 %.019
  %i.z = load i32, ptr %i.y, align 4, !tbaa !6
  %sext = shl i64 %i.w, 56
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.ab = ashr exact i64 %sext, 49
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab ; 8 uses
  %i.ad = sext i32 %i.z to i64                    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.ai = add nsw i64 %i.ah, %i.ad                ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = lshr i8 %i.al, %i.an
  %i.ap = trunc i8 %i.ao to i1
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !45
  switch i32 %i.as, label %bb.h [
    i32 27, label %bb.e
    i32 28, label %bb.f
    i32 38, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.at = tail call noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 noundef %i.ad)
  %i.au = xor i1 %i.at, true
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

bb.f:                                             ; preds = %bb.d
  %i.av = tail call noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 noundef %i.ad)
  %i.aw = xor i1 %i.av, true
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

bb.g:                                             ; preds = %bb.d
  %i.ax = tail call noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 noundef %i.ad)
  %i.ay = xor i1 %i.ax, true
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

bb.h:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !21
  %i.bd = icmp ne i64 %i.ba, %i.bc
  br label %_ZNK5arrow9ArraySpan6IsNullEl.exit

_ZNK5arrow9ArraySpan6IsNullEl.exit:               ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.1.i.i = phi i1 [ %i.ap, %bb.c ], [ %i.au, %bb.e ], [ %i.aw, %bb.f ], [ %i.ay, %bb.g ], [ %i.bd, %bb.h ]
  %i.be = xor i1 %.1.i.i, true
  %i.bf = zext i1 %i.be to i64
  %i.bg = add nuw nsw i64 %.01718, %i.bf          ; 2 uses
  %i.bh = add nuw nsw i64 %.019, 1                ; 2 uses
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !21
  %i.bj = icmp slt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !50
}

declare noundef zeroext i1 @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK5arrow9ArraySpan19IsNullRunEndEncodedEl(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 _ZTSN5arrow8DataTypeE", !7, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"p1 _ZTSN5arrow9ArraySpanE", !7, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE12_Vector_implE", !11, i64 0}
!13 = !{!"_ZTSSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE", !12, i64 0}
!14 = !{!"_ZTSSt6vectorIN5arrow9ArraySpanESaIS1_EE", !13, i64 0}
!15 = !{!"_ZTSN5arrow9ArraySpanE", !8, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !4, i64 32, !14, i64 104}
!16 = !{!15, !9, i64 24}
!17 = !{!"p1 omnipotent char", !7, i64 0}
!18 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !7, i64 0}
!19 = !{!"_ZTSN5arrow10BufferSpanE", !17, i64 0, !9, i64 8, !18, i64 16}
!20 = !{!19, !17, i64 0}
!21 = !{!15, !9, i64 8}
!22 = !{!8, !8, i64 0}
!23 = !{!4, !4, i64 0}
!24 = !{!"p1 int", !7, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 0}
!27 = !{!11, !10, i64 0}
!28 = !{!15, !8, i64 0}
!29 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0}
!30 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !29, i64 0}
!31 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !30, i64 0}
!32 = !{!"_ZTSN5arrow6detail15FingerprintableE", !31, i64 8, !31, i64 16}
!33 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 0}
!34 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!35 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0, !34, i64 8}
!36 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !35, i64 0}
!37 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !36, i64 0}
!38 = !{!"_ZTSN5arrow4Type4typeE", !4, i64 0}
!39 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !7, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !42, i64 0}
!44 = !{!"_ZTSN5arrow8DataTypeE", !32, i64 0, !37, i64 24, !38, i64 40, !43, i64 48}
!45 = !{!44, !38, i64 40}
!46 = !{!15, !9, i64 16}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = !{i64 -346993769587394930}
!50 = distinct !{!50, !47}
!51 = !{i64 4964935373642704779}
end_hunk_0
