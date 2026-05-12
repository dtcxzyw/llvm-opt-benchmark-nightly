inline.NumInlined: 1554
inline.NumDeleted: 946
begin_hunk_0_@_ZN6duckdb21DeltaByteArrayDecoder11ReadDbpDataERNS_9AllocatorERNS_16ResizeableBufferES4_Rm:bb.a
          to label %bb.j unwind label %bb.q       ; 3 uses

bb.j:                                             ; preds = %_ZN6duckdb10DbpDecoder8GetBatchIjEEvPhm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !283 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !284 ; 4 uses
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %_ZN6duckdb10DbpDecoder8FinalizeEv.exit, label %bb.k

end_hunk_0
begin_hunk_1_@_ZN6duckdb21DeltaByteArrayDecoder11ReadDbpDataERNS_9AllocatorERNS_16ResizeableBufferES4_Rm:bb.a

.noexc19:                                         ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ar, i1 false), !noalias !285
  %i.at = sub i64 %i.an, %i.al
  invoke void @_ZN6duckdb10DbpDecoder16GetBatchInternalIlLb0EEEvPhm(ptr noundef nonnull align 8 dereferenceable(368) %i.aj, ptr noundef nonnull %i.as, i64 noundef %i.at)
          to label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit.i unwind label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit4.i

end_hunk_1
