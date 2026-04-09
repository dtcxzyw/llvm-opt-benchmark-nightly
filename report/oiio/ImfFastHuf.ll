inline.NumInlined: 69
inline.NumDeleted: 43
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderC2ERPKciiii:bb.a
  br i1 %.not103216, label %._crit_edge228, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %bb.al
  %i.dy = zext i8 %i.dw to i64                    ; 7 uses
  %i.dz = zext i8 %i.ac to i64                    ; 5 uses
  %i.ea = add nuw nsw i32 %i.dx, 1
  %wide.trip.count = zext nneg i32 %i.ea to i64
  %6 = add nuw nsw i64 %i.dz, 1
  %7 = sub nsw i64 %6, %i.dy                      ; 3 uses
  %min.iters.check = icmp ult i64 %7, 2
  br i1 %min.iters.check, label %.lr.ph218.preheader403, label %vector.ph

end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_514FastHufDecoderC2ERPKciiii:bb.a
  br i1 %.not110220.not, label %.lr.ph223.preheader, label %._crit_edge

.lr.ph223.preheader:                              ; preds = %.lr.ph227
  %8 = add i64 %indvar, %i.dy
  %i.ex = sub i64 %i.dz, %8
  %xtraiter = and i64 %i.ex, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph223.prol.loopexit, label %.lr.ph223.prol
end_hunk_1
