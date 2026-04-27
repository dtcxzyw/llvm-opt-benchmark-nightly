inline.NumInlined: 270
inline.NumDeleted: 172
begin_hunk_0_@_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 48
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #19 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

end_hunk_0
begin_hunk_1_@_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm:bb.a
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !80     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.u, %_ZN4llvh11safe_mallocEm.exit ] ; 5 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ap, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.08.i.i.i.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i, i64 16, i1 false), !tbaa.struct !143
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
end_hunk_2
