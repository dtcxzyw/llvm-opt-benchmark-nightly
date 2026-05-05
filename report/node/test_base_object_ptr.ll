inline.NumInlined: 2410
inline.NumDeleted: 929
begin_hunk_0_@_ZN29BaseObjectPtrTest_GCWeak_Test8TestBodyEv:_ZNK4node17BaseObjectPtrImplI15DummyBaseObjectLb1EE3getEv.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit91

_ZN7testing15AssertionResultD2Ev.exit91:          ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  %i.ie = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4
end_hunk_0
