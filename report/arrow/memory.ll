inline.NumInlined: 605
inline.NumDeleted: 385
begin_hunk_0_@_ZN5arrow8internal16parallel_memcopyEPhPKhlmi:bb.a
  ret void

bb.an:                                            ; preds = %.lr.ph95, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.086.093 = phi ptr [ %.pre98, %.lr.ph95 ], [ %i.ff, %_ZN5arrow6StatusD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.el = load ptr, ptr %.sroa.086.093, align 8, !tbaa !49
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.el)
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal16parallel_memcopyEPhPKhlmi:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.em = load ptr, ptr %.sroa.086.093, align 8, !tbaa !49
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !47
  store ptr null, ptr %10, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.ba
end_hunk_1
