inline.NumInlined: 607
inline.NumDeleted: 343
begin_hunk_0_@_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE:bb.a
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr null, i64 noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(4) @_ZL14WAS_NOT_COPIED)
          to label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit unwind label %bb.n

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.h, %bb.g
  %i.ah = udiv i32 %i.ad, %i.ae
  %i.ai = add i32 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
end_hunk_0
