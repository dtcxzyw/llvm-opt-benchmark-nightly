inline.NumInlined: 632
inline.NumDeleted: 362
begin_hunk_0_@_ZN5arrow18RecordBatchBuilder4MakeERKSt10shared_ptrINS_6SchemaEEPNS_10MemoryPoolEl:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc28 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !76
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !79, !noalias !76
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80, !noalias !76 ; 5 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !39, !noalias !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 112
end_hunk_0
begin_hunk_1_@_ZN5arrow18RecordBatchBuilder14CreateBuildersEv:bb.a
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  call void @_ZN5arrow11MakeBuilderEPNS_10MemoryPoolERKSt10shared_ptrINS_8DataTypeEEPSt10unique_ptrINS_12ArrayBuilderESt14default_deleteIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.au)
  %i.av = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
end_hunk_1
begin_hunk_2_@_ZN5arrow18RecordBatchBuilder14CreateBuildersEv:bb.a

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !80
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !75
end_hunk_2
begin_hunk_3_@_ZN5arrow18RecordBatchBuilder12InitBuildersEv:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5arrow6StatusD2Ev.exit14 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 5 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 112
end_hunk_3
begin_hunk_4_@_ZN5arrow18RecordBatchBuilder5FlushEb:bb.a

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE6resizeEm.exit: ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37.i
  %i.j = phi ptr [ %i.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37.i ], [ null, %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit37.i ], [ null, %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !75
  %i.n = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.m)
end_hunk_4
begin_hunk_5_@_ZN5arrow18RecordBatchBuilder5FlushEb:bb.a
bb.d:                                             ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit60.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !79, !nonnull !74, !noundef !74
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !80
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  invoke void @_ZN5arrow12ArrayBuilder6FinishEPSt10shared_ptrINS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull %i.k)
          to label %_ZN5arrow6StatusD2Ev.exit.peel unwind label %.loopexit.split-lp157

end_hunk_5
begin_hunk_6_@_ZN5arrow18RecordBatchBuilder5FlushEb:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc73, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.by, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bi, %.noexc73 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.bx, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.bm, %.noexc73 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.07.i.i.i.i.i) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !33 ; 2 uses
  %i.br = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !37
end_hunk_6
begin_hunk_7_@_ZN5arrow18RecordBatchBuilder5FlushEb:bb.a

bb.x:                                             ; preds = %_ZNK5arrow18RecordBatchBuilder10num_fieldsEv.exit75
  %i.cj = load ptr, ptr %8, align 8, !tbaa !154
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv163 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !107
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !158
  %i.co = load ptr, ptr %4, align 16, !tbaa !117
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %indvars.iv163 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !122
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !125, !nonnull !74, !noundef !74
  %i.ct = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.w

end_hunk_7
begin_hunk_8_@_ZN5arrow18RecordBatchBuilder5FlushEb:bb.a
bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.cu = load ptr, ptr %8, align 8, !tbaa !154
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %indvars.iv163 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !107
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !122
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !125, !nonnull !74, !noundef !74
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.56") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %bb.aa unwind label %bb.an

bb.aa:                                            ; preds = %bb.z
  %i.da = load ptr, ptr %8, align 8, !tbaa !154
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %indvars.iv163 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load <2 x ptr>, ptr %9, align 16, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
end_hunk_8
begin_hunk_9_@_ZN5arrow18RecordBatchBuilder5FlushEb:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc94 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !173
  %i.hh = load ptr, ptr %i.l, align 8, !tbaa !79, !noalias !173
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hi) ]
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !80, !noalias !173 ; 5 uses
  %i.hk = load i64, ptr %i.hg, align 8, !tbaa !39, !noalias !173
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 112
end_hunk_9
begin_hunk_10_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19
end_hunk_10
