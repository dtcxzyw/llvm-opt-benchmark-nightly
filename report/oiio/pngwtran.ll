inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@png_do_write_transformations:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !39  ; 3 uses
  %.not.i = icmp eq i8 %i.el, 3
  %.0.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.sroa.gep129.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %.0.sroa.gep131.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.0.sroa.gep132.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %.not.i, label %png_do_shift.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@png_do_write_transformations:bb.a
  %i.es = load i8, ptr %i.er, align 1, !tbaa !41
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %i.eu = sub nsw i32 %i.ep, %i.et
  store i32 %i.eu, ptr %.0.sroa.gep132.i, align 4, !tbaa !3
  store i32 %i.et, ptr %.0.sroa.gep129.i, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 791
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !42
  %i.ex = zext i8 %i.ew to i32                    ; 2 uses
end_hunk_1
begin_hunk_2_@png_do_write_transformations:bb.a

bb.y:                                             ; preds = %bb.x, %bb.w
  %.in.i = phi i8 [ %i.fc, %bb.x ], [ %i.eq, %bb.w ]
  %.0.sroa.phi.i = phi ptr [ %.0.sroa.gep129.i, %bb.x ], [ %.0.sroa.gep.i, %bb.w ]
  %.0.sroa.phi130.i = phi ptr [ %.0.sroa.gep132.i, %bb.x ], [ %.0.sroa.gep131.i, %bb.w ]
  %.0.i = phi i32 [ 1, %bb.x ], [ 3, %bb.w ]      ; 2 uses
  %i.fd = zext i8 %.in.i to i32                   ; 5 uses
  %i.fe = sub nsw i32 %i.ep, %i.fd                ; 4 uses
  store i32 %i.fe, ptr %i.a, align 16, !tbaa !3
end_hunk_2
begin_hunk_3_@png_do_write_transformations:bb.a
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !44
  %i.fi = zext i8 %i.fh to i32                    ; 2 uses
  %i.fj = sub nsw i32 %i.ep, %i.fi
  store i32 %i.fj, ptr %.0.sroa.phi130.i, align 4, !tbaa !3
  store i32 %i.fi, ptr %.0.sroa.phi.i, align 4, !tbaa !3
  %i.fk = add nuw nsw i32 %.0.i, 1
  br label %bb.aa

end_hunk_3
