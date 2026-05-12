inline.NumInlined: 765
inline.NumDeleted: 470
begin_hunk_0_@_ZN6hermes3hbc20BCProviderFromBuffer15createDebugInfoEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !202
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !204
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 1, ptr %i.af, align 4, !tbaa !205
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc20BCProviderFromBuffer15createDebugInfoEv:bb.a
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE9push_backERKS3_.exit
  %2 = icmp eq i32 %i.bw, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit
  %.not.i.i.i = phi i1 [ true, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit ], [ %2, %._crit_edge.loopexit ]
  %.037.lcssa = phi ptr [ %i.ac, %_ZN6hermes3hbc12_GLOBAL__N_112castArrayRefIhEEN4llvh8ArrayRefIT_EERPKhmS8_.exit ], [ %i.bp, %._crit_edge.loopexit ]
  %i.ai = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #23 ; 16 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE11_M_allocateEm.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc20BCProviderFromBuffer15createDebugInfoEv:bb.a
  store i32 0, ptr %i.be, align 8, !tbaa !204
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  store i32 1, ptr %i.bf, align 4, !tbaa !205
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh8ArrayRefIhEcvSt6vectorIhSaIhEEEv.exit
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc20BCProviderFromBuffer15createDebugInfoEv:bb.a
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bu, ptr noundef nonnull align 1 dereferenceable(12) %.03738, i64 12, i1 false)
  %i.bv = load i32, ptr %i.ae, align 8, !tbaa !204
  %i.bw = add i32 %i.bv, 1                        ; 3 uses
  store i32 %i.bw, ptr %i.ae, align 8, !tbaa !204
  %i.bx = add nuw i32 %.039, 1                    ; 2 uses
  %i.by = load i32, ptr %i.ag, align 1, !tbaa !206
  %i.bz = icmp ult i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !234
}

; Function Attrs: nobuiltin allocsize(0)
end_hunk_3
