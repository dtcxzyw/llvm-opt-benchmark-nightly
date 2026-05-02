inline.NumInlined: 209
inline.NumDeleted: 147
begin_hunk_0_@_ZN6hermes3DCE11runOnModuleEPNS_6ModuleE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

.preheader:                                       ; preds = %_ZL18performFunctionDCEPN6hermes8FunctionE.exit, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.0.lcssa.i, %_ZL18performFunctionDCEPN6hermes8FunctionE.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes3DCE11runOnModuleEPNS_6ModuleE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.053.062, i64 8
  %.sroa.053.0 = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 2 uses
  %.not57 = icmp eq ptr %.sroa.053.0, %i.e
  br i1 %.not57, label %.preheader, label %bb.b

_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit.thread: ; preds = %.backedge, %.preheader
  %.1.lcssa = phi i1 [ %.0.lcssa, %.preheader ], [ %.4, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %.loopexit

end_hunk_1
begin_hunk_2_@_ZN6hermes3DCE11runOnModuleEPNS_6ModuleE:bb.a

.lr.ph68:                                         ; preds = %.preheader, %.lr.ph68.backedge
  %.sroa.049.067 = phi ptr [ %.sroa.049.067.be, %.lr.ph68.backedge ], [ %.sroa.049.063116, %.preheader ] ; 8 uses
  %.266 = phi i1 [ %.4, %.lr.ph68.backedge ], [ %.0.lcssa, %.preheader ] ; 4 uses
  %.03265 = phi i1 [ %.03265.be, %.lr.ph68.backedge ], [ false, %.preheader ] ; 4 uses
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !36  ; 4 uses
  %i.am = load i32, ptr %i.m, align 8, !tbaa !39  ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN6hermes3DCE11runOnModuleEPNS_6ModuleE:bb.a

bb.o:                                             ; preds = %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread, %bb.j, %bb.k, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit46, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit
  %.234 = phi i1 [ %.03265, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %.03265, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread ], [ %.03265, %bb.k ], [ true, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit46 ], [ %.03265, %bb.j ] ; 3 uses
  %.4 = phi i1 [ %.266, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %.266, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread ], [ %.266, %bb.k ], [ true, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit46 ], [ %.266, %bb.j ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.049.067, i64 8
  %.sroa.049.0 = load ptr, ptr %i.cm, align 8, !tbaa !12 ; 2 uses
  %.not58 = icmp eq ptr %.sroa.049.0, %i.e
end_hunk_3
begin_hunk_4_@_ZN6hermes3DCE11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not, label %._crit_edge75.loopexit, label %.lr.ph74

.loopexit:                                        ; preds = %bb.p, %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit, %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit.thread
  %.2.lcssa106109113 = phi i1 [ %.1.lcssa, %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit.thread ], [ %.4, %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit ], [ %.4, %bb.p ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !7     ; 3 uses
  %i.cs = load i32, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.ct = zext i32 %i.cs to i64
end_hunk_4
begin_hunk_5_@_ZN6hermes3DCE11runOnModuleEPNS_6ModuleE:bb.a
  br label %_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit47

_ZN4llvh11SmallVectorIPN6hermes8FunctionELj16EED2Ev.exit47: ; preds = %._crit_edge80, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i1 %.2.lcssa106109113

.lr.ph79:                                         ; preds = %.loopexit, %.lr.ph79
  %.03577 = phi ptr [ %i.da, %.lr.ph79 ], [ %i.cr, %.loopexit ] ; 2 uses
end_hunk_5
