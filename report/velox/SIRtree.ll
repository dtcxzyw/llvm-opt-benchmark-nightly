inline.NumInlined: 452
inline.NumDeleted: 236
begin_hunk_0_@_ZN4geos5index7strtreeL20compareSIRBoundablesEPNS1_9BoundableES3_:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %2 = load double, ptr %i.c, align 8, !tbaa !36
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %4 = load double, ptr %3, align 8, !tbaa !39
  %5 = fadd double %2, %4
  %6 = fmul double %5, 5.000000e-01
  %7 = load ptr, ptr %1, align 8, !tbaa !10
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %10 = load double, ptr %9, align 8, !tbaa !36
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %12 = load double, ptr %11, align 8, !tbaa !39
  %13 = fadd double %10, %12
  %14 = fmul double %13, 5.000000e-01
  %15 = fcmp olt double %6, %14
  ret i1 %15
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN4geos5index7strtree15AbstractSTRtree7getRootEv
define linkonce_odr noundef ptr @_ZN4geos5index7strtree15AbstractSTRtree7getRootEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  ret ptr %i.b
}

end_hunk_1
begin_hunk_2_@_ZN4geos5index7strtree15SIRAbstractNodeD2Ev:bb.a
  br i1 %.not.i.i.i.i, label %_ZN4geos5index7strtree12AbstractNodeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #19, !inline_history !85
  br label %_ZN4geos5index7strtree12AbstractNodeD2Ev.exit

_ZN4geos5index7strtree12AbstractNodeD2Ev.exit:    ; preds = %bb.c, %bb.d
end_hunk_2
begin_hunk_3_@_ZN4geos5index7strtree15SIRAbstractNodeD0Ev:bb.a
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #19, !inline_history !86
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_3
begin_hunk_4_@_ZN4geos5index7strtree15SIRAbstractNodeD0Ev:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN4geos5index7strtree15SIRAbstractNodeD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #19, !inline_history !87
  br label %_ZN4geos5index7strtree15SIRAbstractNodeD2Ev.exit

_ZN4geos5index7strtree15SIRAbstractNodeD2Ev.exit: ; preds = %bb.c, %bb.d
end_hunk_4
begin_hunk_5_@_ZNK4geos5index7strtree15SIRAbstractNode13computeBoundsEv:bb.a
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !88
  br label %bb.f

bb.d:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZNK4geos5index7strtree15SIRAbstractNode13computeBoundsEv:bb.a
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load double, ptr %i.r, align 8, !tbaa !89 ; 2 uses
  %i.u = load double, ptr %i.s, align 8, !tbaa !89 ; 2 uses
  %i.v = fcmp olt double %i.t, %i.u
  %i.w = select i1 %i.v, double %i.u, double %i.t
  store double %i.w, ptr %i.r, align 8, !tbaa !39
  %i.x = load double, ptr %i.q, align 8, !tbaa !89 ; 2 uses
  %i.y = load double, ptr %.016, align 8, !tbaa !89 ; 2 uses
  %i.z = fcmp olt double %i.x, %i.y
  %i.aa = select i1 %i.z, double %i.x, double %i.y
  store double %i.aa, ptr %.016, align 8, !tbaa !36
end_hunk_6
begin_hunk_7_@llvm.assume
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = distinct !{!83, !28, !81}
!84 = !{!22, !24, i64 24}
!85 = !{ptr @_ZN4geos5index7strtree12AbstractNodeD2Ev}
!86 = !{ptr @_ZN4geos5index7strtree15SIRAbstractNodeD2Ev}
!87 = !{ptr @_ZN4geos5index7strtree15SIRAbstractNodeD2Ev, ptr @_ZN4geos5index7strtree12AbstractNodeD2Ev}
!88 = !{i64 0, i64 8, !89, i64 8, i64 8, !89}
!89 = !{!38, !38, i64 0}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, !28}
!92 = distinct !{null, null, null, null, null}
end_hunk_7
