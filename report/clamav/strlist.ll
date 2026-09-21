Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/strlist?download=true
inline.NumInlined: 36
inline.NumDeleted: 8
begin_hunk_0_@_ZN10StringList9GetStringEPPw:bb.a
  store i64 %i.i, ptr %i.a, align 8, !tbaa !14
  %.not9 = icmp eq ptr %1, null
  br i1 %.not9, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %i.f, %bb.c ]
  store ptr %.sink, ptr %1, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  ret i1 %.not
}

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10StringList9GetStringEPwmi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = icmp ult i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %_ZN10StringList12SavePositionEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store i64 %i.e, ptr %i.g, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !13
  br label %_ZN10StringList12SavePositionEv.exit

_ZN10StringList12SavePositionEv.exit:             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !14
  %i.l = icmp slt i32 %3, 0
  br i1 %i.l, label %_ZN10StringList9GetStringEPwm.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10StringList12SavePositionEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN10StringList9GetStringEPwm.exit
  %.045 = phi i32 [ %3, %.lr.ph ], [ %i.p, %_ZN10StringList9GetStringEPwm.exit ] ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !14   ; 3 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !17
  %.not.i.i = icmp ult i64 %i.n, %i.o             ; 2 uses
  br i1 %.not.i.i, label %_ZN10StringList9GetStringEPwm.exit, label %_ZN10StringList9GetStringEPwm.exit.thread.loopexit

_ZN10StringList9GetStringEPwm.exit:               ; preds = %bb.c
  %i.p = add nsw i32 %.045, -1
  %i.q = load ptr, ptr %0, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %i.s = tail call i64 @wcslen(ptr noundef nonnull %i.r) #16
  %i.t = add nuw i64 %i.n, 1
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr %i.k, align 8, !tbaa !14
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef %1, ptr noundef nonnull %i.r, i64 noundef %2)
  %i.v = icmp slt i32 %.045, 1
  br i1 %i.v, label %_ZN10StringList9GetStringEPwm.exit.thread.loopexit, label %bb.c

_ZN10StringList9GetStringEPwm.exit.thread.loopexit: ; preds = %bb.c, %_ZN10StringList9GetStringEPwm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %_ZN10StringList9GetStringEPwm.exit.thread

_ZN10StringList9GetStringEPwm.exit.thread:        ; preds = %_ZN10StringList9GetStringEPwm.exit.thread.loopexit, %_ZN10StringList12SavePositionEv.exit
  %i.w = phi i64 [ %i.j, %_ZN10StringList12SavePositionEv.exit ], [ %.pre, %_ZN10StringList9GetStringEPwm.exit.thread.loopexit ] ; 2 uses
  %.lcssa = phi i1 [ true, %_ZN10StringList12SavePositionEv.exit ], [ %.not.i.i, %_ZN10StringList9GetStringEPwm.exit.thread.loopexit ]
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_ZN10StringList15RestorePositionEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN10StringList9GetStringEPwm.exit.thread
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.a, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !14
  br label %_ZN10StringList15RestorePositionEv.exit

_ZN10StringList15RestorePositionEv.exit:          ; preds = %_ZN10StringList9GetStringEPwm.exit.thread, %bb.d
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN10StringList12SavePositionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = icmp ult i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store i64 %i.e, ptr %i.g, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN10StringList15RestorePositionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %i.g, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN10StringList9GetStringEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %.not.i = icmp ult i64 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %_ZN10StringList9GetStringEPPw.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = tail call i64 @wcslen(ptr noundef nonnull %i.f) #16
  %i.h = add nuw i64 %i.b, 1
  %i.i = add i64 %i.h, %i.g
  store i64 %i.i, ptr %i.a, align 8, !tbaa !14
  br label %_ZN10StringList9GetStringEPPw.exit

_ZN10StringList9GetStringEPPw.exit:               ; preds = %bb.a, %bb.b
  %.sink.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.sink.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10StringList6SearchEPKwb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = icmp ult i64 %i.b, 16
  br i1 %i.c, label %bb.b, label %_ZN10StringList12SavePositionEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store i64 %i.e, ptr %i.g, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !13
  br label %_ZN10StringList12SavePositionEv.exit

_ZN10StringList12SavePositionEv.exit:             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store i64 0, ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not11 = icmp eq ptr %1, null
  br i1 %.not11, label %_ZN10StringList12SavePositionEv.exit.split.us, label %_ZN10StringList12SavePositionEv.exit.split

_ZN10StringList12SavePositionEv.exit.split.us:    ; preds = %_ZN10StringList12SavePositionEv.exit
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17
  %.not.i.us.not = icmp eq i64 %i.m, 0
  br i1 %.not.i.us.not, label %_ZN10StringList9GetStringEPPw.exit, label %bb.c

bb.c:                                             ; preds = %_ZN10StringList12SavePositionEv.exit.split.us
  %i.n = load ptr, ptr %0, align 8, !tbaa !15
  %i.o = tail call i64 @wcslen(ptr noundef nonnull %i.n) #16
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.k, align 8, !tbaa !14
  br label %_ZN10StringList9GetStringEPPw.exit

_ZN10StringList12SavePositionEv.exit.split:       ; preds = %_ZN10StringList12SavePositionEv.exit
  br i1 %2, label %_ZN10StringList12SavePositionEv.exit.split.split.us, label %_ZN10StringList12SavePositionEv.exit.split.split

_ZN10StringList12SavePositionEv.exit.split.split.us: ; preds = %_ZN10StringList12SavePositionEv.exit.split
  %i.q = load i64, ptr %i.l, align 8, !tbaa !17
  %3 = load ptr, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN10StringList12SavePositionEv.exit.split.split.us
  %i.r = phi i64 [ %i.v, %bb.e ], [ 0, %_ZN10StringList12SavePositionEv.exit.split.split.us ] ; 3 uses
  %.not.i.us12 = icmp ult i64 %i.r, %i.q          ; 3 uses
  br i1 %.not.i.us12, label %bb.e, label %_ZN10StringList9GetStringEPPw.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r ; 2 uses
  %i.t = tail call i64 @wcslen(ptr noundef nonnull %i.s) #16
  %i.u = add nuw i64 %i.r, 1
  %i.v = add i64 %i.u, %i.t                       ; 2 uses
  store i64 %i.v, ptr %i.k, align 8, !tbaa !14
  %i.w = tail call i32 @wcscmp(ptr noundef nonnull %1, ptr noundef nonnull %i.s) #16
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %_ZN10StringList9GetStringEPPw.exit, label %bb.d, !llvm.loop !22

_ZN10StringList12SavePositionEv.exit.split.split: ; preds = %_ZN10StringList12SavePositionEv.exit.split, %bb.f
  %i.x = load i64, ptr %i.k, align 8, !tbaa !14   ; 3 uses
  %i.y = load i64, ptr %i.l, align 8, !tbaa !17
  %.not.i = icmp ult i64 %i.x, %i.y               ; 2 uses
  br i1 %.not.i, label %bb.f, label %_ZN10StringList9GetStringEPPw.exit.loopexit15

bb.f:                                             ; preds = %_ZN10StringList12SavePositionEv.exit.split.split
  %i.z = load ptr, ptr %0, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.x ; 2 uses
  %i.ab = tail call i64 @wcslen(ptr noundef nonnull %i.aa) #16
  %i.ac = add nuw i64 %i.x, 1
  %i.ad = add i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !14
  %i.ae = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %1, ptr noundef nonnull %i.aa)
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %_ZN10StringList9GetStringEPPw.exit.loopexit15, label %_ZN10StringList12SavePositionEv.exit.split.split, !llvm.loop !22

_ZN10StringList9GetStringEPPw.exit.loopexit15:    ; preds = %bb.f, %_ZN10StringList12SavePositionEv.exit.split.split
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %_ZN10StringList9GetStringEPPw.exit

_ZN10StringList9GetStringEPPw.exit:               ; preds = %bb.e, %bb.d, %_ZN10StringList9GetStringEPPw.exit.loopexit15, %_ZN10StringList12SavePositionEv.exit.split.us, %bb.c
  %i.af = phi i64 [ %.pre, %_ZN10StringList9GetStringEPPw.exit.loopexit15 ], [ %i.j, %bb.c ], [ %i.j, %_ZN10StringList12SavePositionEv.exit.split.us ], [ %i.j, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %.us-phi = phi i1 [ %.not.i, %_ZN10StringList9GetStringEPPw.exit.loopexit15 ], [ true, %bb.c ], [ false, %_ZN10StringList12SavePositionEv.exit.split.us ], [ %.not.i.us12, %bb.d ], [ %.not.i.us12, %bb.e ]
  %.not.i8 = icmp eq i64 %i.af, 0
  br i1 %.not.i8, label %_ZN10StringList15RestorePositionEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN10StringList9GetStringEPPw.exit
  %i.ag = add i64 %i.af, -1                       ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  store i64 %i.aj, ptr %i.k, align 8, !tbaa !14
  br label %_ZN10StringList15RestorePositionEv.exit

_ZN10StringList15RestorePositionEv.exit:          ; preds = %_ZN10StringList9GetStringEPPw.exit, %bb.g
  ret i1 %.us-phi
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef i32 @_Z8wcsicompPKwS0_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14), ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 wchar_t", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTS5ArrayIwE", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!12 = !{!"_ZTS10StringList", !11, i64 0, !10, i64 32, !10, i64 40, !4, i64 48, !10, i64 176}
!13 = !{!12, !10, i64 176}
!14 = !{!12, !10, i64 32}
!15 = !{!11, !9, i64 0}
!16 = !{!12, !10, i64 40}
!17 = !{!11, !10, i64 8}
!18 = !{!10, !10, i64 0}
!19 = !{!11, !10, i64 16}
!20 = !{!11, !10, i64 24}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
end_hunk_0
