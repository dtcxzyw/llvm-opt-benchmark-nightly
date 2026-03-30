begin_hunk_0

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #26
  br label %._crit_edge

bb.ef:                                            ; preds = %bb.ed
  %i.qv = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1
          to label %bb.eh unwind label %bb.eb

bb.eh:                                            ; preds = %bb.eg
  %i.qw = load ptr, ptr %26, align 8              ; 2 uses
  %i.qx = load ptr, ptr %i.pw, align 8            ; 2 uses
  %.not366 = icmp eq ptr %i.qw, %i.qx
  br i1 %.not366, label %._crit_edge, label %.lr.ph
end_hunk_1
begin_hunk_2
  %i.rb = zext i32 %.0106368 to i64
  %i.rc = load ptr, ptr %0, align 8
  %i.rd = getelementptr inbounds nuw [16 x i8], ptr %i.rc, i64 %i.rb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rd, i8 0, i64 16, i1 false)
  br label %bb.eu

bb.ek:                                            ; preds = %bb.ei
end_hunk_2
begin_hunk_3
  %.1 = add i32 %.0106368, 1
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0340.0367, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.sd, %i.qx
  br i1 %.not, label %._crit_edge, label %bb.ei

._crit_edge:                                      ; preds = %bb.eu, %bb.eh, %bb.ee
  %32 = load ptr, ptr %26, align 8                ; 3 uses
  %.not.i.i.i328 = icmp eq ptr %32, null
  br i1 %.not.i.i.i328, label %_ZNSt6vectorIiSaIiEED2Ev.exit329, label %bb.ev

end_hunk_3
