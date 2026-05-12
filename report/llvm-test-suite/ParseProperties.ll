inline.NumInlined: 34
inline.NumDeleted: 12
begin_hunk_0_@_Z24ParsePropDictionaryValueRK11CStringBaseIwERj
define dso_local noundef range(i32 -2147024809, 1) i32 @_Z24ParsePropDictionaryValueRK11CStringBaseIwERj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b
end_hunk_0
begin_hunk_1_@_Z24ParsePropDictionaryValueRK11CStringBaseIwERj:bb.a
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit, label %bb.c, !llvm.loop !20

_ZN11CStringBaseIwEC2ERKS0_.exit:                 ; preds = %bb.c
  %2 = load i32, ptr %i.b, align 8, !tbaa !11     ; 2 uses
  %i.o = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %.sroa.0.0)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit unwind label %bb.e ; 0 uses

end_hunk_1
begin_hunk_2_@_Z24ParsePropDictionaryValueRK11CStringBaseIwERj:bb.a
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = add nsw i32 %i.v, 1
  %i.y = icmp sgt i32 %2, %i.x
  %or.cond = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond, label %bb.q, label %bb.g

end_hunk_2
begin_hunk_3_@_Z24ParsePropDictionaryValueRK11CStringBaseIwERj:bb.a
  br label %bb.s

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp eq i32 %2, %i.v
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
end_hunk_3
begin_hunk_4_@_Z24ParsePropDictionaryValueRK11CStringBaseIwERK14tagPROPVARIANTRj:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %i.j)
  %i.k = trunc i64 %wcslen.i.i to i32             ; 3 uses
end_hunk_4
begin_hunk_5_@_Z24ParsePropDictionaryValueRK11CStringBaseIwERK14tagPROPVARIANTRj:bb.a
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.g, !llvm.loop !20

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.g
  store i32 %i.k, ptr %4, align 8, !tbaa !11
  %i.x = invoke noundef i32 @_Z24ParsePropDictionaryValueRK11CStringBaseIwERj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.h unwind label %bb.j
end_hunk_5
