inline.NumInlined: 632
inline.NumDeleted: 362
begin_hunk_0_@_ZN5arrow18RecordBatchBuilder4MakeERKSt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolEl:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !94
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.q)
          to label %.noexc26 unwind label %.loopexit, !inline_history !99

.noexc26:                                         ; preds = %bb.g
  %i.y = add nsw i64 %i.x, %i.r                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow18RecordBatchBuilder4MakeERKSt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolEl:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !94
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.q, i64 noundef %.sroa.speculated.i.i.i)
          to label %.noexc27 unwind label %.loopexit, !inline_history !99

.noexc27:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !59, !noalias !76 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow18RecordBatchBuilder4MakeERKSt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolEl:bb.a
_ZN5arrow6StatusD2Ev.exit14.i:                    ; preds = %.noexc27, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !75, !noalias !76
  %i.af = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit14.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow18RecordBatchBuilder5FlushEb:bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !176
  %i.hq = invoke noundef i64 %i.hp(ptr noundef nonnull align 8 dereferenceable(144) %i.hj)
          to label %.noexc92 unwind label %.loopexit, !inline_history !99

.noexc92:                                         ; preds = %bb.bm
  %i.hr = add nsw i64 %i.hq, %i.hk                ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow18RecordBatchBuilder5FlushEb:bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !176
  invoke void %i.hv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %i.hj, i64 noundef %.sroa.speculated.i.i.i)
          to label %.noexc93 unwind label %.loopexit, !inline_history !99

.noexc93:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i90 = load ptr, ptr %3, align 8, !tbaa !59, !noalias !173 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow18RecordBatchBuilder5FlushEb:bb.a
_ZN5arrow6StatusD2Ev.exit14.i:                    ; preds = %.noexc93, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.hx = load ptr, ptr %1, align 8, !tbaa !75, !noalias !173
  %i.hy = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hx)
          to label %.noexc94 unwind label %.loopexit

.noexc94:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit14.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_5
