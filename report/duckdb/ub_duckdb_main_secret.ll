begin_hunk_0
  br i1 %i.o, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb10SecretTypeD2Ev.exit
  switch i64 %i.q, label %.sink.split [
    i64 0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]
end_hunk_0
begin_hunk_1
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.v, ptr noundef nonnull dereferenceable(6) @.str.34, i64 6)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %i.w = icmp eq i32 %bcmp.i.fr, 0
  %. = select i1 %i.w, i8 1, i8 2
  br label %.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZN6duckdb10SecretTypeD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !15
end_hunk_1
begin_hunk_2
bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aa = phi ptr [ %i.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread ], [ %i.y, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.ab = phi ptr [ %i.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread ], [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 7 uses
  %.041144 = phi i8 [ %i.s, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.thread ], [ %5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %.not = icmp eq i8 %.041144, 2
  br i1 %.not, label %bb.d, label %.thread147
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.bd

.sink.split:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.b
  %.04196.ph = phi i8 [ 2, %bb.b ], [ %., %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %22 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %22, ptr %8, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %23, align 8, !tbaa !10
  store i8 0, ptr %22, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.by = phi ptr [ %i.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %22, %.sink.split ] ; 2 uses
  %.04196 = phi i8 [ %5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %.04196.ph, %.sink.split ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.o

end_hunk_3
