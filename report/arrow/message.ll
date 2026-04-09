inline.NumInlined: 3211
inline.NumDeleted: 1159
begin_hunk_0_@_ZN5arrow3ipc12WriteMessageERKNS_6BufferERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamEPi:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !220
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = add nsw i64 %i.n, %i.j                   ; 2 uses
  %i.p = srem i64 %i.o, %i.m
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc11AlignStreamEPNS_2io11InputStreamEi:bb.a

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63
  %i.m = sext i32 %2 to i64                       ; 2 uses
  %i.n = add nsw i64 %i.m, -1                     ; 2 uses
  %i.o = add i64 %i.n, %i.l
  %i.p = srem i64 %i.o, %i.m
  %i.q = sub nsw i64 %i.n, %i.p
  invoke void @_ZN5arrow2io11InputStream7AdvanceEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.q)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.e

end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc11AlignStreamEPNS_2io12OutputStreamEi:bb.a

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63
  %i.m = sext i32 %2 to i64                       ; 2 uses
  %i.n = add nsw i64 %i.m, -1                     ; 2 uses
  %i.o = add i64 %i.n, %i.l
  %i.p = srem i64 %i.o, %i.m
  %i.q = sub nsw i64 %i.n, %i.p                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.g

end_hunk_2
begin_hunk_3_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !252  ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %5 = sub i64 %.neg.i, %i.b
  %i.c = icmp ult i64 %5, %4
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
end_hunk_3
