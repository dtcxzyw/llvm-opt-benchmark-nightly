inline.NumInlined: 54
inline.NumDeleted: 21
begin_hunk_0_@_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKcjjjjb:bb.a
bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i)
  %i.ah = trunc i64 %strlen.i.i to i32            ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKcjjjjb:bb.a
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2EPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !22

_ZN11CStringBaseIcEC2EPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.ah, ptr %9, align 8, !tbaa !24
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.o unwind label %bb.q
end_hunk_1
begin_hunk_2_@_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKcjjjjb:bb.a
  %strlen.i.i56 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i)
  %i.dn = trunc i64 %strlen.i.i56 to i32          ; 2 uses
  %i.do = add nsw i32 %i.dn, 1                    ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !21 ; 2 uses
  %i.dr = icmp eq i32 %i.do, %i.dq
  br i1 %i.dr, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.af

end_hunk_2
begin_hunk_3_@_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKcjjjjb:bb.a
  %i.ds = sext i32 %i.do to i64
  %i.dt = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ds) #20 ; 11 uses
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = icmp sgt i32 %i.dq, 0
  %.pre4.i = load i32, ptr %i.dl, align 8, !tbaa !24 ; 6 uses
  br i1 %i.dv, label %.preheader.i.i, label %bb.ag

end_hunk_3
begin_hunk_4_@_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKwjjjjb:bb.a
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(1084) %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %1)
  %i.e = trunc i64 %wcslen.i.i to i32             ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKwjjjjb:bb.a
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !45

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.e, ptr %9, align 8, !tbaa !25
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.b unwind label %bb.f
end_hunk_5
