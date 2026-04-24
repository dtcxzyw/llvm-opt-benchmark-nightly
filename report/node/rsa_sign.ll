inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@ossl_rsa_verify:bb.a
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x, %bb.x, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.0.i.ph = phi i32 [ 48, %bb.ab ], [ 32, %bb.aa ], [ 28, %bb.z ], [ 16, %bb.x ], [ 20, %bb.y ], [ 16, %bb.x ], [ 16, %bb.x ], [ 64, %bb.ac ] ; 3 uses
  %i.y = icmp samesign ugt i32 %.0.i.ph, %i.h
  br i1 %i.y, label %bb.ae, label %bb.af

end_hunk_0
begin_hunk_1_@ossl_rsa_verify:bb.a
  br label %digest_sz_from_nid.exit

bb.af:                                            ; preds = %bb.ad
  %8 = zext nneg i32 %.0.i.ph to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %9 = sub nsw i64 0, %8
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %9
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %bb.af
  %.056 = phi i32 [ %.0.i.ph, %bb.af ], [ %2, %bb.w ]
  %.055 = phi ptr [ %i.aa, %bb.af ], [ %1, %bb.w ] ; 2 uses
  %i.ab = zext i32 %.056 to i64                   ; 3 uses
end_hunk_1
