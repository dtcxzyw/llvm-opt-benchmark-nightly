inline.NumInlined: 2965
inline.NumDeleted: 1136
begin_hunk_0_@_ZN6hermes2vm21getForInPropertyNamesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERjS6_:bb.a
  %i.mv = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.mw = getelementptr inbounds nuw i8, ptr %6, i64 156
  %i.mx = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 9240
  br label %bb.at

bb.at:                                            ; preds = %_ZN6hermes2vm8JSObject14getPrototypeOfENS0_12PseudoHandleIS1_EERNS0_7RuntimeE.exit.thread.i, %.lr.ph204.i
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm21getForInPropertyNamesERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERjS6_:bb.a
  store i32 4, ptr %i.mw, align 4, !tbaa !331
  store ptr %i.mt, ptr %i.mu, align 8
  store i32 1, ptr %i.mv, align 8, !tbaa !330
  store ptr %i.mt, ptr %i.mx, align 8, !tbaa !46
  store ptr %i.ms, ptr %i.my, align 8, !tbaa !56
  store i32 0, ptr %i.mz, align 8, !tbaa !349
  store ptr %6, ptr %i.o, align 8, !tbaa !43
  %i.nc = call ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nonnull %.0.i.i.i.i.i.i68.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 2) ; 3 uses
end_hunk_1
