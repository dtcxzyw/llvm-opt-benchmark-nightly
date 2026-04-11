inline.NumInlined: 3514
inline.NumDeleted: 769
begin_hunk_0_@_ZN6hermes2vm18arrayPrototypeJoinEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 18 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::CallResult.167", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm18arrayPrototypeJoinEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 156
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 200
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 208
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.aj
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm18arrayPrototypeJoinEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  store i32 4, ptr %i.dh, align 4, !tbaa !36
  store ptr %i.de, ptr %i.df, align 8
  store i32 1, ptr %i.dg, align 8, !tbaa !37
  store ptr %i.de, ptr %i.di, align 8, !tbaa !21
  store ptr %i.dd, ptr %i.dj, align 8, !tbaa !30
  store i32 0, ptr %8, align 8, !tbaa !38
  store ptr %5, ptr %i.b, align 8, !tbaa !18
  %i.dw = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i74, ptr nonnull %.0.i.i.i.i.i.i) #10 ; 2 uses
  %i.dx = extractvalue { i32, i64 } %i.dw, 0
end_hunk_2
