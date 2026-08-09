inline.NumInlined: 159
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7Archive9IsArchiveEb:bb.a

declare void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Archive9CheckOpenEPKw(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.uiMsgStore, align 8          ; 11 uses
  tail call void @_ZN4File5TOpenEPKw(ptr noundef nonnull align 8 dereferenceable(8256) %0, ptr noundef %1)
  %i.a = tail call noundef zeroext i1 @_ZN7Archive9IsArchiveEb(ptr noundef nonnull align 8 dereferenceable(57108) %0, i1 noundef zeroext false)
  br i1 %i.a, label %_ZN7Archive8CheckArcEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48865
  %i.c = load i8, ptr %i.b, align 1, !tbaa !142, !range !58, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <4 x ptr> <ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2>, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.2, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.2, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  store i32 57, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 1, ptr %i.l, align 8, !tbaa !72
  store ptr %i.e, ptr %2, align 8, !tbaa !68
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 2)
  br label %_ZN7Archive8CheckArcEb.exit

_ZN7Archive8CheckArcEb.exit:                      ; preds = %bb.a, %bb.d
  ret void
}

declare void @_ZN4File5TOpenEPKw(ptr noundef nonnull align 8 dereferenceable(8256), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7Archive10WCheckOpenEPKw(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %i.a = tail call noundef zeroext i1 @_ZN4File5WOpenEPKw(ptr noundef nonnull align 8 dereferenceable(8256) %0, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN7Archive9IsArchiveEb(ptr noundef nonnull align 8 dereferenceable(57108) %0, i1 noundef zeroext false)
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <4 x ptr> <ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2>, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.2, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.2, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  store i32 57, ptr %i.i, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 1, ptr %i.j, align 8, !tbaa !72
  store ptr %i.c, ptr %2, align 8, !tbaa !68
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.k = load ptr, ptr %0, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8256) %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4File5WOpenEPKw(ptr noundef nonnull align 8 dereferenceable(8256), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 5) i32 @_ZN7Archive11IsSignatureEPKhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !115
  %i.b = icmp eq i8 %i.a, 82
  %i.c = icmp ugt i64 %1, 3
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !115   ; 2 uses
  %i.f = icmp eq i8 %i.e, 69
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !115
  %i.i = icmp eq i8 %i.h, 126
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !115
  %i.l = icmp eq i8 %i.k, 94
  br i1 %i.l, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.m = icmp ugt i64 %1, 6
  %i.n = icmp eq i8 %i.e, 97
  %or.cond19 = and i1 %i.m, %i.n
  br i1 %or.cond19, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !115
  %i.q = icmp eq i8 %i.p, 114
  br i1 %i.q, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !115
  %i.t = icmp eq i8 %i.s, 33
  br i1 %i.t, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i8, ptr %i.u, align 1, !tbaa !115
  %i.w = icmp eq i8 %i.v, 26
  br i1 %i.w, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !115
  %i.z = icmp eq i8 %i.y, 7
  br i1 %i.z, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !115 ; 2 uses
  switch i8 %i.ab, label %bb.m [
    i8 0, label %.thread
    i8 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp ult i8 %i.ab, 5
  %spec.select = select i1 %i.ac, i32 4, i32 0
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.k, %bb.e, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.e ], [ 3, %bb.l ], [ 2, %bb.k ], [ %spec.select, %bb.m ], [ 0, %bb.a ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN4File8IsDeviceEv(ptr noundef nonnull align 8 dereferenceable(8256)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Archive10SeekToNextEv(ptr noundef nonnull align 8 dereferenceable(57108) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48832
  %i.b = load i64, ptr %i.a, align 8, !tbaa !158
  %i.c = load ptr, ptr %0, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(57108) %0, i64 noundef %i.b, i32 noundef 0)
  ret void
}

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN7Archive14FullHeaderSizeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57108) %0, i64 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48852
  %i.b = load i8, ptr %i.a, align 4, !tbaa !151, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %2 = add i64 %1, 15
  %i.d = and i64 %2, -16                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48840
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.d, 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %3 = or disjoint i64 %i.d, 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ %i.h, %bb.c ], [ %3, %bb.d ], [ %1, %bb.a ]
  %i.i = trunc i64 %.0 to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7Archive4OpenEPKwj(ptr noundef nonnull align 8 dereferenceable(57108) initializes((13656, 13657)) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13656
  store i8 0, ptr %i.a, align 8, !tbaa !165
  %i.b = tail call noundef zeroext i1 @_ZN4File4OpenEPKwj(ptr noundef nonnull align 8 dereferenceable(8256) %0, ptr noundef %1, i32 noundef %2)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4File4OpenEPKwj(ptr noundef nonnull align 8 dereferenceable(8256), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7Archive4ReadEPvm(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 11088
  %i.c = call noundef zeroext i1 @_ZN9QuickOpen4ReadEPvmRm(ptr noundef nonnull align 8 dereferenceable(2673) %i.b, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !108
  %i.e = trunc i64 %i.d to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i32 @_ZN4File4ReadEPvm(ptr noundef nonnull align 8 dereferenceable(8256) %0, ptr noundef %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN9QuickOpen4ReadEPvmRm(ptr noundef nonnull align 8 dereferenceable(2673), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZN4File4ReadEPvm(ptr noundef nonnull align 8 dereferenceable(8256), ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Archive4SeekEli(ptr noundef nonnull align 8 dereferenceable(57108) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11088
  %i.b = tail call noundef zeroext i1 @_ZN9QuickOpen4SeekEli(ptr noundef nonnull align 8 dereferenceable(2673) %i.a, i64 noundef %1, i32 noundef %2)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4File4SeekEli(ptr noundef nonnull align 8 dereferenceable(8256) %0, i64 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN9QuickOpen4SeekEli(ptr noundef nonnull align 8 dereferenceable(2673), i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4File4SeekEli(ptr noundef nonnull align 8 dereferenceable(8256), i64 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7Archive4TellEv(ptr noundef nonnull align 8 dereferenceable(57108) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 11088
  %i.c = call noundef zeroext i1 @_ZN9QuickOpen4TellEPl(ptr noundef nonnull align 8 dereferenceable(2673) %i.b, ptr noundef nonnull %i.a)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !108
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @_ZN4File4TellEv(ptr noundef nonnull align 8 dereferenceable(8256) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %.0
}

declare noundef zeroext i1 @_ZN9QuickOpen4TellEPl(ptr noundef nonnull align 8 dereferenceable(2673), ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZN4File4TellEv(ptr noundef nonnull align 8 dereferenceable(8256)) unnamed_addr #2

declare noundef zeroext i1 @_ZN4File5CloseEv(ptr noundef nonnull align 8 dereferenceable(8256)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4File8IsOpenedEv(ptr noundef nonnull align 8 dereferenceable(8256) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp ne i64 %i.b, -1
  ret i1 %i.c
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25)) unnamed_addr #5

declare void @_Z9cleandataPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108)) local_unnamed_addr #2

declare void @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14), ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 48846}
!9 = !{!"_ZTS7Archive", !10, i64 0, !18, i64 8256, !21, i64 10776, !12, i64 11048, !31, i64 11056, !32, i64 11064, !5, i64 11072, !33, i64 11076, !12, i64 11080, !34, i64 11088, !12, i64 13768, !38, i64 13772, !39, i64 13792, !40, i64 13808, !45, i64 13920, !46, i64 13976, !51, i64 31160, !52, i64 31192, !46, i64 31224, !53, i64 48408, !54, i64 48436, !55, i64 48476, !56, i64 48516, !11, i64 48824, !11, i64 48832, !57, i64 48840, !12, i64 48844, !12, i64 48845, !12, i64 48846, !12, i64 48847, !12, i64 48848, !12, i64 48849, !12, i64 48850, !12, i64 48851, !12, i64 48852, !11, i64 48856, !12, i64 48864, !12, i64 48865, !6, i64 48866, !12, i64 48882, !5, i64 48884, !11, i64 48888, !11, i64 48896, !11, i64 48904, !12, i64 48912, !6, i64 48916}
!10 = !{!"_ZTS4File", !11, i64 8, !12, i64 16, !13, i64 20, !12, i64 24, !12, i64 25, !14, i64 28, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !11, i64 40, !12, i64 48, !6, i64 52, !15, i64 8244, !16, i64 8248}
!11 = !{!"long", !6, i64 0}
!12 = !{!"bool", !6, i64 0}
!13 = !{!"_ZTS15FILE_HANDLETYPE", !6, i64 0}
!14 = !{!"_ZTS20FILE_READ_ERROR_MODE", !6, i64 0}
!15 = !{!"_ZTS14FILE_ERRORTYPE", !6, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"_ZTS9CryptData", !6, i64 0, !5, i64 320, !6, i64 328, !5, i64 936, !19, i64 940, !20, i64 944, !6, i64 1208, !6, i64 2232, !6, i64 2488, !6, i64 2504, !6, i64 2508}
!19 = !{!"_ZTS12CRYPT_METHOD", !6, i64 0}
!20 = !{!"_ZTS8Rijndael", !12, i64 0, !5, i64 4, !6, i64 8, !6, i64 24}
!21 = !{!"_ZTS11ComprDataIO", !12, i64 0, !11, i64 8, !16, i64 16, !12, i64 24, !11, i64 32, !16, i64 40, !11, i64 48, !16, i64 56, !11, i64 64, !11, i64 72, !12, i64 80, !12, i64 81, !12, i64 82, !12, i64 83, !22, i64 88, !22, i64 96, !23, i64 104, !24, i64 112, !25, i64 120, !26, i64 128, !26, i64 136, !5, i64 144, !27, i64 148, !12, i64 152, !12, i64 153, !12, i64 154, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !28, i64 216, !28, i64 232, !28, i64 248, !12, i64 264, !12, i64 265}
!22 = !{!"p1 _ZTS4File", !17, i64 0}
!23 = !{!"p1 _ZTS6CmdAdd", !17, i64 0}
!24 = !{!"p1 _ZTS10FileHeader", !17, i64 0}
!25 = !{!"p1 long", !17, i64 0}
!26 = !{!"p1 _ZTS9CryptData", !17, i64 0}
!27 = !{!"wchar_t", !6, i64 0}
!28 = !{!"_ZTS8DataHash", !29, i64 0, !5, i64 4, !30, i64 8}
!29 = !{!"_ZTS9HASH_TYPE", !6, i64 0}
!30 = !{!"p1 _ZTS14blake2sp_state", !17, i64 0}
!31 = !{!"p1 _ZTS11CommandData", !17, i64 0}
!32 = !{!"_ZTS7RarTime", !11, i64 0}
!33 = !{!"_ZTS11HEADER_TYPE", !6, i64 0}
!34 = !{!"_ZTS9QuickOpen", !35, i64 0, !12, i64 8, !36, i64 16, !36, i64 24, !16, i64 32, !11, i64 40, !18, i64 48, !12, i64 2568, !11, i64 2576, !11, i64 2584, !11, i64 2592, !11, i64 2600, !11, i64 2608, !11, i64 2616, !37, i64 2624, !11, i64 2656, !11, i64 2664, !12, i64 2672}
end_hunk_0
