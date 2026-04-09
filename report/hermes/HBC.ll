inline.NumInlined: 3984
inline.NumDeleted: 2586
begin_hunk_0_@_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb:bb.a

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit, !prof !852

end_hunk_0
begin_hunk_1_@_ZN6hermes11StringTable9getStringEN4llvh9StringRefE:bb.a
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !902  ; 2 uses
  %i.y = add i64 %i.v, 7
  %i.z = add i64 %i.y, %i.x
  %i.aa = and i64 %i.z, 7
  %.neg12 = add i64 %i.x, 7
  %5 = sub i64 %.neg12, %i.aa                     ; 3 uses
  store i64 %5, ptr %i.w, align 8, !tbaa !902
  %i.ab = add i64 %5, 16                          ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, 262144
  br i1 %i.ac, label %.critedge.i.i, label %bb.d, !prof !852

end_hunk_1
begin_hunk_2_@_ZN6hermes11StringTable9getStringEN4llvh9StringRefE:bb.a
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_12UniqueStringEEEPT_mm.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = add i64 %5, %i.v
  %i.af = inttoptr i64 %i.ae to ptr
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !902
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_12UniqueStringEEEPT_mm.exit

_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_12UniqueStringEEEPT_mm.exit: ; preds = %.critedge.i.i, %bb.d
  %.pre-phi23 = phi i64 [ %.pre22, %.critedge.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.ag = phi i64 [ %.pre21.a, %.critedge.i.i ], [ %i.ab, %bb.d ]
  %i.ah = phi ptr [ %.pre14.a, %.critedge.i.i ], [ %i.p, %bb.d ]
  %i.ai = phi ptr [ %.pre, %.critedge.i.i ], [ %i.n, %bb.d ]
  %.0.i.i = phi ptr [ %i.ad, %.critedge.i.i ], [ %i.af, %bb.d ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN6hermes11StringTable9getStringEN4llvh9StringRefE:bb.a
  %.sroa.2.0.copyload = load i64, ptr %i.c, align 8, !tbaa !111 ; 6 uses
  %i.aj = add i64 %.sroa.2.0.copyload, 1          ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.al = add i64 %i.ag, 7                        ; 2 uses
  %i.am = add i64 %i.al, %.pre-phi23
  %i.an = and i64 %i.am, 7
  %i.ao = sub i64 %i.al, %i.an                    ; 3 uses
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !902
  %i.ap = icmp ugt i64 %i.aj, 262144
  br i1 %i.ap, label %.critedge.i.i.i, label %bb.e, !prof !852

bb.e:                                             ; preds = %_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_12UniqueStringEEEPT_mm.exit
  %i.aq = add i64 %i.ao, %i.aj                    ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 262144
  br i1 %i.ar, label %.critedge.i.i.i, label %bb.f, !prof !852

end_hunk_3
begin_hunk_4_@_ZN6hermes11StringTable9getStringEN4llvh9StringRefE:bb.a
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateIcEEPT_mm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.at = add i64 %i.ao, %.pre-phi23
  %i.au = inttoptr i64 %i.at to ptr
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !902
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateIcEEPT_mm.exit.i
end_hunk_4
