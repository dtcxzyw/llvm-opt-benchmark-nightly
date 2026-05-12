inline.NumInlined: 932
inline.NumDeleted: 543
begin_hunk_0_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE
define noundef ptr @_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.76", align 8     ; 7 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"struct.google::protobuf::internal::ReflectionSchema", align 8 ; 12 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a

bb.l:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorEPKNS5_21DynamicMessageFactory8TypeInfoEEENS1_6HashEqIS8_vE4HashENSF_2EqESaISt4pairIKS8_SC_EEEixIS8_SD_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISK_EPT_RSQ_EclL_ZSt7declvalIRSK_EDTcl9__declvalISQ_ELi0EEEvEEEEERKSQ_.exit
  %i.aw = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27 ; 28 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 3 uses
  %.sroa.5.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  store ptr null, ptr %i.bb, align 8, !tbaa !170
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !167
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !119 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 120 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !45
  store i8 1, ptr %.sroa.14.0..sroa_idx.i, align 1, !tbaa !171
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !135
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.a

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.a: ; preds = %bb.m, %bb.l
  %i.bl = phi ptr [ %i.bk, %bb.m ], [ %i.bf, %bb.l ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !173
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
  store ptr %0, ptr %i.bn, align 8, !tbaa !116
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 132
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !69 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !82
  %i.bs = add nsw i32 %i.br, %i.bp                ; 2 uses
  %i.bt = sext i32 %i.bs to i64
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
  %i.bv = shl nsw i64 %i.bt, 2
  %i.bw = select i1 %i.bu, i64 -1, i64 %i.bv
  %i.bx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bw) #27 ; 4 uses
  store ptr %i.bx, ptr %i.ax, align 8, !tbaa !84
  store i32 -1, ptr %i.aw, align 8, !tbaa !174
  %4 = load i32, ptr %i.bq, align 8, !tbaa !82    ; 2 uses
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.lr.ph139, label %._crit_edge140.thread

.lr.ph139:                                        ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 3 uses
  br label %bb.n

end_hunk_5
begin_hunk_6_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a

bb.n:                                             ; preds = %.lr.ph139, %bb.r
  %indvars.iv158 = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next159, %bb.r ] ; 3 uses
  %i.ca = phi ptr [ %i.bc, %.lr.ph139 ], [ %i.dg, %bb.r ]
  %.0110138 = phi i32 [ 0, %.lr.ph139 ], [ %.2112, %bb.r ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !83
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
bb.q:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_115IsMapEntryFieldEPKNS0_15FieldDescriptorE.exit.thread
  store i32 32, ptr %i.aw, align 8, !tbaa !174
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !82 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp slt i32 %i.cq, 0
  %i.ct = shl nsw i64 %i.cr, 2
  %i.cu = select i1 %i.cs, i64 -1, i64 %i.ct
  %i.cv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #27 ; 2 uses
  %i.cw = load i32, ptr %i.cp, align 8, !tbaa !82
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

end_hunk_7
begin_hunk_8_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  store i32 -1, ptr %i.cz, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr %i.cp, align 8, !tbaa !82
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %.lr.ph, label %._crit_edge, !llvm.loop !177
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf21DynamicMessageFactory18GetPrototypeNoLockEPKNS0_10DescriptorE:bb.a
  %i.dq = sub nsw i32 %i.do, %i.dp
  br label %._crit_edge140.thread

._crit_edge140.thread:                            ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.a, %bb.s, %._crit_edge140
  %.lcssa136181 = phi ptr [ %i.dg, %bb.s ], [ %i.dg, %._crit_edge140 ], [ %i.bc, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.a ] ; 5 uses
  %i.dr = phi i32 [ %i.di, %bb.s ], [ %i.di, %._crit_edge140 ], [ %4, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.a ] ; 2 uses
  %.0107 = phi i32 [ %i.dq, %bb.s ], [ 32, %._crit_edge140 ], [ 32, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EE5resetIPjvEEvT_.exit.a ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.lcssa136181, i64 8 ; 2 uses
  %i.dt = icmp sgt i32 %i.bp, 0
  br i1 %i.dt, label %bb.t, label %bb.u
end_hunk_9
