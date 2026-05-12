inline.NumInlined: 804
inline.NumDeleted: 412
begin_hunk_0_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  %i.y = invoke noalias noundef nonnull dereferenceable(1048576) ptr @_Znwm(i64 noundef 1048576) #23
          to label %bb.l unwind label %.thread152 ; 3 uses

bb.l:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11PLYImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.hs) #20
  br label %bb.cl

.thread152:                                       ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i120

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i120

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i120: ; preds = %bb.cl, %bb.k, %bb.j, %.thread152
  %.pn74.pn150 = phi { ptr, i32 } [ %11, %.thread152 ], [ %.pn70.pn, %bb.cl ], [ %i.s, %bb.j ], [ %i.t, %bb.k ]
  %i.ht = load ptr, ptr %i.h, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.f, 9223372036854775807          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.h
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_3
