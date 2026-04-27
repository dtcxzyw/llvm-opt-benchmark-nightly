inline.NumInlined: 2896
inline.NumDeleted: 1413
begin_hunk_0_@_ZN5folly9EventBase9runInLoopENS_8FunctionIFvvEEEb:bb.a
bb.a:
  %3 = alloca %"class.std::shared_ptr.169", align 16 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #61 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly9EventBase20FunctionLoopCallbackE, i64 16), ptr %i.a, align 16, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr null, ptr %i.c, align 16, !tbaa !13923
end_hunk_0
begin_hunk_1_@_ZN5folly9EventBase9runInLoopENS_8FunctionIFvvEEEb:bb.a
_ZN5folly9EventBase20FunctionLoopCallbackC2EONS_8FunctionIFvvEEE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.169") align 8 %3)
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = load <2 x ptr>, ptr %3, align 16, !tbaa !14046
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !14060 ; 8 uses
  store <2 x ptr> %i.l, ptr %4, align 8, !tbaa !14046
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5folly14RequestContextEEaSEOS2_.exit, label %bb.c

end_hunk_1
begin_hunk_2_@_ZN5folly9EventBase9runInLoopENS_8FunctionIFvvEEEb:bb.a
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !14093 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !14093
  store ptr %i.at, ptr %i.b, align 8, !tbaa !14092
  store ptr %i.b, ptr %i.av, align 8, !tbaa !14093
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN5folly9EventBase9runInLoopENS_8FunctionIFvvEEEb:bb.a
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !14093 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !14093
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !14092
  store ptr %i.b, ptr %i.az, align 16, !tbaa !14093
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink = phi ptr [ %i.ba, %bb.p ], [ %i.aw, %bb.o ]
  store ptr %i.b, ptr %.sink, align 8, !tbaa !14092
  ret void
}

end_hunk_3
