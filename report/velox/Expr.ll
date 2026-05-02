inline.NumInlined: 11089
inline.NumDeleted: 4035
begin_hunk_0_@_ZN8facebook5velox4exec4Expr15computeMetadataEv:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 281
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !182, !range !53, !noundef !57
  %i.ai = trunc nuw i8 %i.ah to i1
  %3 = icmp ne i8 %storemerge107108, 0
  %4 = and i1 %3, %i.ai
  %5 = zext i1 %4 to i8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph110
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec4Expr15computeMetadataEv:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i8 [ %i.al, %bb.g ], [ %5, %bb.f ] ; 2 uses
  store i8 %storemerge, ptr %i.p, align 1, !tbaa !182
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.080.0109, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.r
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec4Expr18evalSimplifiedImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a

.noexc53:                                         ; preds = %.noexc52
  %i.js = icmp ne i32 %i.jp, %i.jr
  %11 = zext i1 %i.js to i8
  br label %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit

bb.aq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %bb.ai, %bb.ah, %bb.ab
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4exec4Expr18evalSimplifiedImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  br label %bb.be

_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit: ; preds = %.noexc53, %.thread133._crit_edge
  %12 = phi i8 [ 0, %.thread133._crit_edge ], [ %11, %.noexc53 ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !330, !range !53, !noundef !57
  %13 = or i8 %i.ju, %12
  store i8 %13, ptr %i.jt, align 8, !tbaa !330
  %i.jv = load ptr, ptr %i.i, align 8, !tbaa !335 ; 2 uses
  %i.jw = load ptr, ptr %6, align 8, !tbaa !344   ; 2 uses
  %.not.i48 = icmp eq ptr %i.jw, null
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4exec4Expr11evalAllImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a

.noexc59:                                         ; preds = %.noexc58
  %i.jx = icmp ne i32 %i.ju, %i.jw
  %11 = zext i1 %i.jx to i8
  br label %_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit60

bb.au:                                            ; preds = %bb.ap, %bb.am, %bb.al, %bb.af, %bb.ae
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4exec4Expr11evalAllImplERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE:bb.a
  br label %bb.bi

_ZNK8facebook5velox4exec20MutableRemainingRows10hasChangedEv.exit60: ; preds = %.noexc59, %.thread144._crit_edge
  %12 = phi i8 [ 0, %.thread144._crit_edge ], [ %11, %.noexc59 ]
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 8, !tbaa !330, !range !53, !noundef !57
  %13 = or i8 %i.jz, %12
  store i8 %13, ptr %i.jy, align 8, !tbaa !330
  %i.ka = load ptr, ptr %i.n, align 8, !tbaa !335 ; 2 uses
  %i.kb = load ptr, ptr %6, align 8, !tbaa !344   ; 2 uses
  %.not.i54 = icmp eq ptr %i.kb, null
end_hunk_5
