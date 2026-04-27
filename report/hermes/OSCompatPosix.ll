inline.NumInlined: 516
inline.NumDeleted: 274
begin_hunk_0_@_ZN6hermes8oscompat12pages_in_ramEPKvmPN4llvh15SmallVectorImplIiEE:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %next.gep = getelementptr i8, ptr %.sroa.041.0, i64 %index ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.y = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !43
  %wide.load64 = load <4 x i8>, ptr %i.y, align 1, !tbaa !43
end_hunk_0
begin_hunk_1_@_ZN6hermes8oscompat12pages_in_ramEPKvmPN4llvh15SmallVectorImplIiEE:bb.a

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader65, %.lr.ph.split.us
  %.02748.us = phi i32 [ %i.at, %.lr.ph.split.us ], [ %.02748.us.ph, %.lr.ph.split.us.preheader65 ]
  %.sroa.036.046.us = phi ptr [ %i.au, %.lr.ph.split.us ], [ %.sroa.036.046.us.ph, %.lr.ph.split.us.preheader65 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.046.us) ]
  %i.aq = load i8, ptr %.sroa.036.046.us, align 1, !tbaa !43
  %i.ar = and i8 %i.aq, 1
  %i.as = zext nneg i8 %i.ar to i32
end_hunk_1
begin_hunk_2_@_ZN6hermes8oscompat12pages_in_ramEPKvmPN4llvh15SmallVectorImplIiEE:bb.a
.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.k
  %.02748 = phi i32 [ %i.ay, %bb.k ], [ 0, %.lr.ph.split.preheader ]
  %.02847 = phi i8 [ %i.aw, %bb.k ], [ 1, %.lr.ph.split.preheader ]
  %.sroa.036.046 = phi ptr [ %i.bn, %bb.k ], [ %.sroa.041.0, %.lr.ph.split.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.046) ]
  %i.av = load i8, ptr %.sroa.036.046, align 1, !tbaa !43
  %i.aw = and i8 %i.av, 1                         ; 3 uses
  %i.ax = zext nneg i8 %i.aw to i32
end_hunk_2
