inline.NumInlined: 707
inline.NumDeleted: 296
begin_hunk_0_@_ZN4geos5index7strtree13SimpleSTRtree16nearestNeighbourEPKNS_4geom8EnvelopeEPKvPNS1_12ItemDistanceE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store i64 0, ptr %i.u, align 8, !tbaa !42
  %i.v = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #17
          to label %_ZNSt12_Vector_baseIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE13_M_deallocateEPS4_m.exit.i.i unwind label %.body ; 3 uses

_ZNSt12_Vector_baseIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 40
end_hunk_0
begin_hunk_1_@_ZN4geos5index7strtree13SimpleSTRtree16nearestNeighbourEPKNS_4geom8EnvelopeEPKvPNS1_12ItemDistanceE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !46
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPN4geos5index7strtree13SimpleSTRnodeESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN4geos5index7strtree17SimpleSTRdistanceC1EPNS1_13SimpleSTRnodeES4_PNS1_12ItemDistanceE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef %3)
end_hunk_1
begin_hunk_2_@_ZN4geos5index7strtree13SimpleSTRtree16nearestNeighbourEPKNS_4geom8EnvelopeEPKvPNS1_12ItemDistanceE:bb.a
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(96) %i.o) #19, !inline_history !120
  br label %bb.n

.body:                                            ; preds = %bb.e
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #18
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN4geos5index7strtree13SimpleSTRtree16nearestNeighbourEPKNS_4geom8EnvelopeEPKvPNS1_12ItemDistanceE:bb.a
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(96) %i.o) #19, !inline_history !120
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN4geos5index7strtree13SimpleSTRnodeESt14default_deleteIS3_EED2Ev.exit16, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN4geos5index7strtree13SimpleSTRnodeESt14default_deleteIS3_EED2Ev.exit16 ], [ %6, %.body ]
  resume { ptr, i32 } %.pn.pn

bb.n:                                             ; preds = %_ZN4geos5index7strtree13SimpleSTRtree7getRootEv.exit, %_ZNSt10unique_ptrIN4geos5index7strtree13SimpleSTRnodeESt14default_deleteIS3_EED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZNSo9_M_insertIbEERSoT_
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

end_hunk_4
