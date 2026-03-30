begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -22, 4) i32 @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl4PullESt8functionIFviPKNS_9DataQueue3VecEmS3_IFvmEEEEiPS5_mm(ptr noundef nonnull align 8 captures(none) dereferenceable(168) %0, ptr noundef %1, i32 %2, ptr readnone captures(none) %3, i64 %4, i64 %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
end_hunk_0
begin_hunk_1
  br i1 %.not.i6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt23enable_shared_from_thisIN4node12_GLOBAL__N_17FdEntry10ReaderImplEE16shared_from_thisEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2
  br label %bb.ai

_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.n
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %1, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x i64> %.sroa.0.0.copyload.i.i, ptr %i.bd, align 8
  store ptr %i.bk, ptr %i.bl, align 8
  br label %bb.ai

end_hunk_2
begin_hunk_3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.ep, ptr %i.eq, align 8
  %i.er = load ptr, ptr %i.bc, align 8            ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4
  br label %.thread.i

_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE22_M_reserve_map_at_backEm.exit.i.i
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %1, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i8 0, i64 16, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.er, align 8
  store ptr %i.ev, ptr %i.ew, align 8
  br label %.thread.i

end_hunk_4
begin_hunk_5
  store ptr %i.bb, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store ptr %i.at, ptr %i.ez, align 8
  %i.fa = load ptr, ptr %i.bn, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fb, ptr %i.bn, align 8
end_hunk_5
begin_hunk_6
  store ptr %i.bb, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr %i.at, ptr %i.fg, align 8
  %i.fh = load ptr, ptr %i.bc, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  br label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_6
