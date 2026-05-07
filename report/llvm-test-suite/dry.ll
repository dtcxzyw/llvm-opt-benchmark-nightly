inline.NumInlined: 12
begin_hunk_0_@Proc0:bb.a
  %i.i = tail call i64 @clock() #13               ; 0 uses
  store i8 65, ptr @Char1Glob, align 1, !tbaa !16
  store i8 66, ptr @Char2Glob, align 1, !tbaa !16
  store i32 5, ptr @IntGlob, align 4, !tbaa !4
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.a, %select.unfold.i
end_hunk_0
begin_hunk_1_@Proc0:bb.a

bb.b:                                             ; preds = %select.unfold.i
  store i32 1, ptr @BoolGlob, align 4, !tbaa !4
  ret i32 undef
}

end_hunk_1
