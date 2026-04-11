inline.NumInlined: 2092
inline.NumDeleted: 1158
begin_hunk_0_@_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE:bb.a
  %.mask.i.i.i.i.i.i.i = and i32 %i.s, -16777216
  %i.t = icmp eq i32 %.mask.i.i.i.i.i.i.i, 1224736768
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.t, label %2, label %.thread

2:                                                ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 640
  br label %bb.c

.thread:                                          ; preds = %bb.b
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !290  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = trunc i64 %i.w to i1
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE:bb.a
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, label %bb.c

bb.c:                                             ; preds = %2, %.thread
  %.sroa.05.029 = phi ptr [ %4, %.thread ], [ %3, %2 ]
  %i.ab = tail call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.05.029) #12
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = or i64 %i.ac, -281474976710656          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
