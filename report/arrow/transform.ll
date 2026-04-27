inline.NumInlined: 802
inline.NumDeleted: 420
begin_hunk_0_@_ZN5arrow2io20TransformInputStream4ReadElPv:bb.a
  br i1 %.not150, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, %bb.bc
  %.0137.lcssa = phi i64 [ 0, %bb.bc ], [ %i.fo, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ]
  %.0.lcssa = phi i64 [ %2, %bb.bc ], [ %i.fn, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ]
  %.026.lcssa = phi ptr [ %3, %bb.bc ], [ %i.fm, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ]
  %.lcssa = phi ptr [ %i.ee, %bb.bc ], [ %i.gf, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
end_hunk_0
begin_hunk_1_@_ZN5arrow2io20TransformInputStream4ReadElPv:bb.a
  store ptr null, ptr %i.ej, align 8, !tbaa !102
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 24 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !103
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.0.lcssa, i64 %i.ep) ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !86, !range !57, !noundef !58
  %i.es = trunc nuw i8 %i.er to i1
end_hunk_1
begin_hunk_2_@_ZN5arrow2io20TransformInputStream4ReadElPv:bb.a
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = select i1 %i.es, ptr %i.eu, ptr null, !prof !76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.026.lcssa, ptr align 1 %i.ev, i64 %.sroa.speculated, i1 false)
  %i.ew = add nsw i64 %.sroa.speculated, %.0137.lcssa ; 2 uses
  %i.ex = load i64, ptr %i.eo, align 8, !tbaa !103 ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, %.sroa.speculated
  br i1 %i.ey, label %bb.bj, label %bb.cm

.lr.ph:                                           ; preds = %bb.bc, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80
  %i.ez = phi ptr [ %i.gg, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ %i.ef, %bb.bc ]
  %.025146 = phi i64 [ %i.ge, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ 0, %bb.bc ] ; 2 uses
  %.026145 = phi ptr [ %i.fm, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ %3, %bb.bc ] ; 2 uses
  %.0144 = phi i64 [ %i.fn, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ %2, %bb.bc ]
  %.0137143 = phi i64 [ %i.fo, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ 0, %bb.bc ]
  %14 = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %.025146 ; 3 uses
  %i.fa = load ptr, ptr %14, align 8, !tbaa !102  ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !15 ; 8 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow2io20TransformInputStream4ReadElPv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.026145, ptr align 1 %i.fi, i64 %i.fk, i1 false)
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !103 ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %.026145, i64 %i.fl ; 2 uses
  %i.fn = sub nsw i64 %.0144, %i.fl               ; 2 uses
  %i.fo = add nsw i64 %i.fl, %.0137143            ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i76, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, label %bb.bd

end_hunk_3
