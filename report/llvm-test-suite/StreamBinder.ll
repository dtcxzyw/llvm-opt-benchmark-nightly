begin_hunk_0_@_ZN28CSequentialInStreamForBinderD0Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(89) %i.d) #12, !inline_history !48 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 145
  store i8 1, ptr %i.f, align 1, !tbaa !28
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.h) #12, !inline_history !48 ; 0 uses
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(89) %i.g) #12, !inline_history !48 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #14
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN29CSequentialOutStreamForBinderD0Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.c)
          to label %_ZN29CSequentialOutStreamForBinderD2Ev.exit unwind label %bb.b, !inline_history !49 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15, !inline_history !49
  unreachable

_ZN29CSequentialOutStreamForBinderD2Ev.exit:      ; preds = %bb.a
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!45 = !{!"p1 _ZTS20ISequentialOutStream", !14, i64 0}
!46 = !{!6, !6, i64 0}
!47 = !{!14, !14, i64 0}
!48 = !{ptr @_ZN28CSequentialInStreamForBinderD2Ev}
!49 = !{ptr @_ZN29CSequentialOutStreamForBinderD2Ev}
end_hunk_2
