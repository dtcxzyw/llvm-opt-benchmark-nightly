inline.NumInlined: 1842
inline.NumDeleted: 1067
begin_hunk_0_@_ZN6hermes2vm7JSError8toStringENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ad, %bb.ae
  %.0.i.i = phi ptr [ %i.ct, %bb.ab ], [ %i.cv, %bb.ad ], [ %i.cw, %bb.ae ]
  %i.cx = load i32, ptr %i.cf, align 8, !tbaa !446
  %i.cy = zext i32 %i.cx to i64
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7JSError8toStringENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.ah, %bb.aj, %bb.ak
  %.0.i4.i = phi ptr [ %i.db, %bb.ah ], [ %i.dd, %bb.aj ], [ %i.de, %bb.ak ]
  %i.df = load i32, ptr %i.cf, align 8, !tbaa !446 ; 2 uses
  %i.dg = zext i32 %i.df to i64
end_hunk_1
