inline.NumInlined: 1808
inline.NumDeleted: 899
begin_hunk_0_@_ZN5folly18ThreadPoolExecutor4TaskC2EONS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES5_a:bb.a

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #39
          to label %bb.f unwind label %bb.n       ; 7 uses

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
end_hunk_0
begin_hunk_1_@_ZN5folly18ThreadPoolExecutor4TaskC2EONS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES5_a:bb.a
_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.thread: ; preds = %bb.f
  store i64 %2, ptr %i.p, align 16, !tbaa !7438
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i

bb.g:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2_@_ZN5folly18ThreadPoolExecutor4TaskC2EONS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES5_a:bb.a

_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 80) #36
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !7608 ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %.pre18 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !7588 ; 2 uses
  store i64 %2, ptr %.pre, align 16, !tbaa !7438
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 3 uses
  %.not.i.i10 = icmp eq ptr %.pre18, null
  br i1 %.not.i.i10, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit
  %i.z = tail call noundef i64 %.pre18(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.y, ptr noundef null) #13, !inline_history !7610 ; 0 uses
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i: ; preds = %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.thread, %bb.i, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit
  %i.aa = phi ptr [ %i.t, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.thread ], [ %i.y, %bb.i ], [ %i.y, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  %i.ab = phi ptr [ %i.p, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit.thread ], [ %.pre, %bb.i ], [ %.pre, %_ZNSt10unique_ptrIN5folly18ThreadPoolExecutor4Task10ExpirationESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.not.i11 = icmp eq ptr %i.aa, %3
  br i1 %.not.i11, label %_ZN5folly8FunctionIFvvEEaSEOS2_.exit, label %bb.j, !prof !7509

bb.j:                                             ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i
end_hunk_2
begin_hunk_3_@_ZN5folly18ThreadPoolExecutor4TaskC2EONS_8FunctionIFvvEEENSt6chrono8durationIlSt5ratioILl1ELl1000EEEES5_a:bb.a
  br i1 %.not.i9.i, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call noundef i64 %i.ad(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.aa) #13, !inline_history !7610 ; 0 uses
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !7588
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i: ; preds = %bb.k, %bb.j
  %i.af = phi ptr [ null, %bb.j ], [ %.pre.i, %bb.k ]
  store ptr %i.af, ptr %5, align 8, !tbaa !7588
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !7586
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr %i.ah, ptr %i.ai, align 16, !tbaa !7586
  br label %_ZN5folly8FunctionIFvvEEaSEOS2_.exit

end_hunk_3
