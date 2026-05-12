inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@aiGetPredefinedLogStream:bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.c, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46
          to label %bb.f unwind label %bb.d       ; 2 uses

end_hunk_0
begin_hunk_1_@aiGetPredefinedLogStream:bb.a
  %.not = icmp eq ptr %i.g, null
  %._Z23CallbackToLogRedirectorPKcPc = select i1 %.not, ptr null, ptr @_Z23CallbackToLogRedirectorPKcPc
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.i, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @_ZN6AssimpL18gPredefinedStreamsB5cxx11E) #47
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  %i.k = add i64 %i.j, 1
end_hunk_1
