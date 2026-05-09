inline.NumInlined: 44
inline.NumDeleted: 22
begin_hunk_0_@png_do_read_transformations:bb.a

bb.ha:                                            ; preds = %bb.gz
  %i.bzn = and i32 %i.bxt, 2
  %.not45.i = icmp eq i32 %i.bzn, 0               ; 2 uses
  %i.bzo = select i1 %.not45.i, i64 4, i64 8      ; 3 uses
  %.not4653.i = icmp eq i32 %i.bxs, 0
  br i1 %.not4653.i, label %png_do_encode_alpha.exit, label %.lr.ph.preheader.i222

.lr.ph.preheader.i222:                            ; preds = %bb.ha
  %2 = select i1 %.not45.i, i64 2, i64 6
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bxr, i64 %2 ; 5 uses
  %xtraiter812 = and i32 %i.bxs, 1
  %lcmp.mod813.not = icmp eq i32 %xtraiter812, 0
  br i1 %lcmp.mod813.not, label %.lr.ph.i223.prol.loopexit, label %.lr.ph.i223.prol

.lr.ph.i223.prol:                                 ; preds = %.lr.ph.preheader.i222
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzp, i64 1 ; 2 uses
  %i.bzr = load i8, ptr %i.bzq, align 1, !tbaa !29, !noalias !271
  %i.bzs = zext i8 %i.bzr to i32
  %i.bzt = lshr i32 %i.bzs, %i.bzm
end_hunk_0
