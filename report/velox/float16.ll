inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0_@_ZNK5arrow4util7Float167ToFloatEv:bb.a
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterIjE12FromBinary16Et.exit

bb.e:                                             ; preds = %bb.a
  %i.v = and i16 %i.a, 32767
  %i.w = zext nneg i16 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 13
  %i.y = add nuw nsw i32 %i.x, 939524096
  %i.z = or disjoint i32 %i.y, %i.b
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterIjE12FromBinary16Et.exit

_ZN5arrow4util12_GLOBAL__N_115BinaryConverterIjE12FromBinary16Et.exit: ; preds = %bb.b, %bb.c, %._crit_edge.i, %bb.e
  %.021.i = phi i32 [ %i.z, %bb.e ], [ %i.h, %bb.b ], [ %i.u, %._crit_edge.i ], [ %i.b, %bb.c ]
  %i.aa = bitcast i32 %.021.i to float
  ret float %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i16 @_ZN5arrow4util7Float169FromFloatEf(float noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 6 uses
  %i.b = lshr i32 %i.a, 16                        ; 4 uses
  %i.c = trunc nuw i32 %i.b to i16
  %i.d = and i16 %i.c, -32768                     ; 2 uses
  %i.e = and i32 %i.a, 2139095040                 ; 4 uses
  %i.f = lshr exact i32 %i.e, 23
  %i.g = and i32 %i.a, 8388607                    ; 4 uses
  %i.h = icmp samesign ugt i32 %i.e, 1191182336
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond.i = fcmp uno float %0, 0.000000e+00
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i32 %i.g, 13
  %i.j = and i32 %i.b, 64512
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1)
  %i.l = or disjoint i32 %i.k, %i.j
  %i.m = trunc nuw i32 %i.l to i16
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterIjE10ToBinary16Ej.exit

bb.d:                                             ; preds = %bb.b
  %i.n = or disjoint i16 %i.d, 31744
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterIjE10ToBinary16Ej.exit

bb.e:                                             ; preds = %bb.a
  %i.o = icmp samesign ult i32 %i.e, 947912704
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = icmp samesign ult i32 %i.e, 855638016
  br i1 %i.p, label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterIjE10ToBinary16Ej.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = or disjoint i32 %i.g, 8388608
  %narrow.i = sub nsw i32 113, %i.f
  %i.r = lshr i32 %i.q, %narrow.i                 ; 3 uses
  %i.s = and i32 %i.r, 16383
  %.not40.i = icmp eq i32 %i.s, 4096
  %i.t = and i32 %i.a, 2047
  %.not41.i = icmp eq i32 %i.t, 0
  %or.cond42.i = and i1 %.not41.i, %.not40.i
  %i.u = add nuw nsw i32 %i.r, 4096
  %.037.i = select i1 %or.cond42.i, i32 %i.r, i32 %i.u
  %i.v = lshr i32 %.037.i, 13
  %i.w = and i32 %i.b, 32768
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = trunc nuw i32 %i.x to i16
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterIjE10ToBinary16Ej.exit

bb.h:                                             ; preds = %bb.e
  %i.z = lshr i32 %i.a, 13
  %i.aa = add nuw nsw i32 %i.z, 16384
  %i.ab = and i32 %i.a, 16383
  %.not.i = icmp eq i32 %i.ab, 4096
  %i.ac = add nuw nsw i32 %i.g, 4096
  %spec.select.i = select i1 %.not.i, i32 %i.g, i32 %i.ac
  %i.ad = lshr i32 %spec.select.i, 13
  %i.ae = and i32 %i.b, 32768
  %i.af = and i32 %i.aa, 64512
  %i.ag = add nuw nsw i32 %i.af, %i.ae
  %i.ah = add nuw nsw i32 %i.ag, %i.ad
  %i.ai = trunc i32 %i.ah to i16
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterIjE10ToBinary16Ej.exit

_ZN5arrow4util12_GLOBAL__N_115BinaryConverterIjE10ToBinary16Ej.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i = phi i16 [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.ai, %bb.h ], [ %i.y, %bb.g ], [ %i.d, %bb.f ]
  ret i16 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK5arrow4util7Float168ToDoubleEv(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !8      ; 4 uses
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %i.c = and i32 %i.b, 32768
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 48                     ; 4 uses
  %i.f = and i16 %i.a, 31744
  %i.g = and i16 %i.a, 1023                       ; 3 uses
  switch i16 %i.f, label %bb.e [
    i16 31744, label %bb.b
    i16 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = zext i16 %i.a to i64
  %i.i = shl nuw nsw i64 %i.h, 42
  %i.j = or disjoint i64 %i.e, %i.i
  %i.k = or i64 %i.j, 9218868437227405312
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE12FromBinary16Et.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i16 %i.g, 0
  br i1 %i.l, label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE12FromBinary16Et.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i16 %i.g, 1
  %i.n = zext nneg i16 %i.m to i64                ; 2 uses
  %i.o = icmp samesign ult i16 %i.g, 512
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.023.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.n, %bb.d ] ; 2 uses
  %.02022.i = phi i64 [ %i.p, %.lr.ph.i ], [ 1008, %bb.d ]
  %i.p = add i64 %.02022.i, -1                    ; 2 uses
  %i.q = shl i64 %.023.i, 1                       ; 2 uses
  %i.r = and i64 %.023.i, 512
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.t = shl i64 %i.p, 52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %.020.lcssa.i = phi i64 [ 4539628424389459968, %bb.d ], [ %i.t, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ %i.n, %bb.d ], [ %i.q, %._crit_edge.loopexit.i ]
  %i.u = shl i64 %.0.lcssa.i, 42
  %i.v = and i64 %i.u, 4494803534348288
  %i.w = or disjoint i64 %.020.lcssa.i, %i.v
  %i.x = or i64 %i.w, %i.e
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE12FromBinary16Et.exit

bb.e:                                             ; preds = %bb.a
  %i.y = and i32 %i.b, 32767
  %narrow.i = add nuw nsw i32 %i.y, 1032192
  %i.z = zext nneg i32 %narrow.i to i64
  %i.aa = shl nuw nsw i64 %i.z, 42
  %i.ab = or disjoint i64 %i.aa, %i.e
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE12FromBinary16Et.exit

_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE12FromBinary16Et.exit: ; preds = %bb.b, %bb.c, %._crit_edge.i, %bb.e
  %.021.i = phi i64 [ %i.ab, %bb.e ], [ %i.k, %bb.b ], [ %i.x, %._crit_edge.i ], [ %i.e, %bb.c ]
  %i.ac = bitcast i64 %.021.i to double
  ret double %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i16 @_ZN5arrow4util7Float1610FromDoubleEd(double noundef %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 5 uses
  %i.b = lshr i64 %i.a, 48
  %i.c = trunc nuw i64 %i.b to i16
  %i.d = and i16 %i.c, -32768                     ; 5 uses
  %i.e = and i64 %i.a, 9218868437227405312        ; 4 uses
  %i.f = lshr exact i64 %i.e, 52                  ; 2 uses
  %i.g = trunc nuw nsw i64 %i.f to i16
  %i.h = and i64 %i.a, 4503599627370495           ; 4 uses
  %i.i = icmp samesign ugt i64 %i.e, 4674736413210574848
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond.i = fcmp uno double %0, 0.000000e+00
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %i.h, 42                        ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i16
  %i.l = icmp eq i64 %i.j, 0
  %i.m = select i1 %i.l, i16 1, i16 %i.k
  %i.n = or disjoint i16 %i.d, %i.m
  %i.o = or disjoint i16 %i.n, 31744
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE10ToBinary16Em.exit

bb.d:                                             ; preds = %bb.b
  %i.p = or disjoint i16 %i.d, 31744
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE10ToBinary16Em.exit

bb.e:                                             ; preds = %bb.a
  %i.q = icmp samesign ult i64 %i.e, 4544132024016830464
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i64 %i.e, 4494592428115755008
  br i1 %i.r, label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE10ToBinary16Em.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = or disjoint i64 %i.h, 4503599627370496
  %narrow.i = sub nsw i64 1009, %i.f
  %i.t = lshr i64 %i.s, %narrow.i                 ; 3 uses
  %i.u = and i64 %i.t, 8796093022207
  %.not40.i = icmp eq i64 %i.u, 2199023255552
  %i.v = and i64 %i.a, 2047
  %.not41.i = icmp eq i64 %i.v, 0
  %or.cond42.i = and i1 %.not41.i, %.not40.i
  %i.w = add nuw nsw i64 %i.t, 2199023255552
  %.037.i = select i1 %or.cond42.i, i64 %i.t, i64 %i.w
  %i.x = lshr i64 %.037.i, 42
  %i.y = trunc nuw nsw i64 %i.x to i16
  %i.z = add nuw i16 %i.d, %i.y
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE10ToBinary16Em.exit

bb.h:                                             ; preds = %bb.e
  %i.aa = shl i16 %i.g, 10
  %i.ab = and i64 %i.a, 8796093022207
  %.not.i = icmp eq i64 %i.ab, 2199023255552
  %i.ac = add nuw nsw i64 %i.h, 2199023255552
  %spec.select.i = select i1 %.not.i, i64 %i.h, i64 %i.ac
  %i.ad = lshr i64 %spec.select.i, 42
  %i.ae = trunc nuw nsw i64 %i.ad to i16
  %i.af = or disjoint i16 %i.d, 16384
  %i.ag = add i16 %i.af, %i.aa
  %i.ah = add i16 %i.ag, %i.ae
  br label %_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE10ToBinary16Em.exit

_ZN5arrow4util12_GLOBAL__N_115BinaryConverterImE10ToBinary16Em.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i = phi i16 [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.ah, %bb.h ], [ %i.z, %bb.g ], [ %i.d, %bb.f ]
  ret i16 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4utillsERSoNS0_7Float16E(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 %1) local_unnamed_addr #2 {
bb.a:
  %.signext.i.i = sext i16 %1 to i32
  %i.a = and i32 %.signext.i.i, -2147483648       ; 4 uses
  %i.b = and i16 %1, 31744
  %i.c = and i16 %1, 1023                         ; 3 uses
  switch i16 %i.b, label %bb.e [
    i16 31744, label %bb.b
    i16 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = zext i16 %1 to i32
  %i.e = shl nuw nsw i32 %i.d, 13
  %i.f = or disjoint i32 %i.a, %i.e
  %i.g = or i32 %i.f, 2139095040
  br label %_ZNK5arrow4util7Float167ToFloatEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i16 %i.c, 0
  br i1 %i.h, label %_ZNK5arrow4util7Float167ToFloatEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw nsw i16 %i.c, 1
  %i.j = zext nneg i16 %i.i to i32                ; 2 uses
  %i.k = icmp samesign ult i16 %i.c, 512
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.024.i.i = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %.02023.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ 112, %bb.d ]
  %i.l = add i32 %.02023.i.i, -1                  ; 2 uses
  %i.m = shl i32 %.024.i.i, 1                     ; 2 uses
  %i.n = and i32 %.024.i.i, 512
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !11

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.p = shl i32 %i.l, 23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %.020.lcssa.i.i = phi i32 [ 939524096, %bb.d ], [ %i.p, %._crit_edge.loopexit.i.i ]
  %.0.lcssa.i.i = phi i32 [ %i.j, %bb.d ], [ %i.m, %._crit_edge.loopexit.i.i ]
  %i.q = shl i32 %.0.lcssa.i.i, 13
  %i.r = and i32 %i.q, 8372224
  %i.s = or disjoint i32 %.020.lcssa.i.i, %i.r
  %i.t = or i32 %i.s, %i.a
  br label %_ZNK5arrow4util7Float167ToFloatEv.exit

bb.e:                                             ; preds = %bb.a
  %i.u = and i16 %1, 32767
  %i.v = zext nneg i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 13
  %i.x = add nuw nsw i32 %i.w, 939524096
  %i.y = or disjoint i32 %i.x, %i.a
  br label %_ZNK5arrow4util7Float167ToFloatEv.exit

_ZNK5arrow4util7Float167ToFloatEv.exit:           ; preds = %bb.b, %bb.c, %._crit_edge.i.i, %bb.e
  %.021.i.i = phi i32 [ %i.y, %bb.e ], [ %i.g, %bb.b ], [ %i.t, %._crit_edge.i.i ], [ %i.a, %bb.c ]
  %i.z = bitcast i32 %.021.i.i to float
  %i.aa = fpext float %i.z to double
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.aa)
  ret ptr %i.ab
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN5arrow4util7Float16E", !10, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
end_hunk_0
