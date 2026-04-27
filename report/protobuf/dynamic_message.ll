inline.NumInlined: 932
inline.NumDeleted: 543
begin_hunk_0_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !135
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit: ; preds = %bb.m, %bb.l
  %i.bl = phi ptr [ %i.bk, %bb.m ], [ %i.bf, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !173
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
  %i.bw = select i1 %i.bu, i64 -1, i64 %i.bv
  %i.bx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bw) #28 ; 4 uses
  store ptr %i.bx, ptr %i.ax, align 8, !tbaa !84
  store i32 -1, ptr %i.aw, align 8, !tbaa !174
  %4 = load i32, ptr %i.bq, align 8, !tbaa !82    ; 2 uses
  %i.by = icmp sgt i32 %4, 0
  br i1 %i.by, label %.lr.ph139, label %._crit_edge140.thread

.lr.ph139:                                        ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a

._crit_edge140.thread:                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit, %bb.s, %._crit_edge140
  %.lcssa136182 = phi ptr [ %i.dh, %bb.s ], [ %i.dh, %._crit_edge140 ], [ %i.bc, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit ] ; 5 uses
  %i.ds = phi i32 [ %i.dj, %bb.s ], [ %i.dj, %._crit_edge140 ], [ %4, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit ] ; 2 uses
  %.0107 = phi i32 [ %i.dr, %bb.s ], [ 32, %._crit_edge140 ], [ 32, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.lcssa136182, i64 8 ; 2 uses
  %i.du = icmp sgt i32 %i.bp, 0
end_hunk_2
