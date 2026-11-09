Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filcreat?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ErrorHandler = type <{ i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }>

@ErrHandler = external global %class.ErrorHandler, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 37, i32 46, i32 42, i32 108, i32 115, i32 40, i32 37, i32 117, i32 41, i32 37, i32 108, i32 115, i32 0], align 4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z10FileCreateP11CommandDataP4FilePwmPblP7RarTimeb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i64 noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %4, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef zeroext i1 @_Z9FileExistPKw(ptr noundef %2)
  br i1 %i.a, label %.lr.ph, label %.thread35

.lr.ph:                                           ; preds = %bb.c
  %i.b = icmp eq ptr %1, null
  %i.c = zext i1 %i.b to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %i.d = tail call noundef i32 @_Z14uiAskReplaceExP11CommandDataPwmlP7RarTimej(ptr noundef %0, ptr noundef %2, i64 noundef %3, i64 noundef %5, ptr noundef %6, i32 noundef %i.c)
  switch i32 %i.d, label %bb.h [
    i32 0, label %.thread35
    i32 1, label %bb.e
    i32 6, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %4, align 1, !tbaa !9
  br label %.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 255)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.e = tail call noundef zeroext i1 @_Z9FileExistPKw(ptr noundef %2)
  br i1 %i.e, label %bb.d, label %.thread35

.thread35:                                        ; preds = %bb.h, %bb.d, %bb.c
  %i.f = select i1 %7, i32 18, i32 17             ; 2 uses
  %.not33 = icmp eq ptr %1, null
  br i1 %.not33, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.thread35
  %i.g = tail call noundef zeroext i1 @_ZN4File6CreateEPKwj(ptr noundef nonnull align 8 dereferenceable(8256) %1, ptr noundef %2, i32 noundef %i.f)
  br i1 %i.g, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 57431
  %i.i = load i8, ptr %i.h, align 1, !tbaa !26, !range !27, !noundef !28
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = tail call noundef zeroext i1 @_Z10CreatePathPKwbb(ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext %i.j) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN4File6CreateEPKwj(ptr noundef nonnull align 8 dereferenceable(8256) %1, ptr noundef %2, i32 noundef %i.f)
  br label %.thread

bb.k:                                             ; preds = %.thread35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 57431
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26, !range !27, !noundef !28
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = tail call noundef zeroext i1 @_Z10CreatePathPKwbb(ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext %i.o) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_Z7DelFilePKw(ptr noundef %2)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.i, %bb.k, %bb.j
  %.3 = phi i1 [ %i.q, %bb.k ], [ true, %bb.i ], [ %i.l, %bb.j ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %.3
}

declare noundef zeroext i1 @_Z9FileExistPKw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef i32 @_Z14uiAskReplaceExP11CommandDataPwmlP7RarTimej(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZN4File6CreateEPKwj(ptr noundef nonnull align 8 dereferenceable(8256), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z10CreatePathPKwbb(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_Z7DelFilePKw(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z18GetAutoRenamedNamePwm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #6
  %i.c = tail call noundef ptr @_Z6GetExtPKw(ptr noundef nonnull %0) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %.016 = select i1 %i.d, ptr %i.e, ptr %i.c      ; 3 uses
  %i.f = ptrtoint ptr %.016 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.j, ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %.016) #5 ; 0 uses
  %i.l = call noundef zeroext i1 @_Z9FileExistPKw(ptr noundef nonnull %i.a)
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a, %.lr.ph
  %.0152021 = phi i32 [ %i.m, %.lr.ph ], [ 1, %bb.a ]
  %i.m = add nuw nsw i32 %.0152021, 1             ; 3 uses
  %i.n = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.j, ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef nonnull %.016) #5 ; 0 uses
  %i.o = call noundef zeroext i1 @_Z9FileExistPKw(ptr noundef nonnull %i.a)
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %1)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %exitcond = icmp eq i32 %i.m, 1000000
  br i1 %exitcond, label %.loopexit, label %.lr.ph.preheader, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.1 = phi i1 [ true, %._crit_edge ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i1 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef ptr @_Z6GetExtPKw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!8 = !{!"bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTS10QOPEN_MODE", !4, i64 0}
!12 = !{!"_ZTS11RAR_CHARSET", !4, i64 0}
!13 = !{!"_ZTS12MESSAGE_TYPE", !4, i64 0}
!14 = !{!"_ZTS17SOUND_NOTIFY_MODE", !4, i64 0}
!15 = !{!"_ZTS14OVERWRITE_MODE", !4, i64 0}
!16 = !{!"_ZTS9HASH_TYPE", !4, i64 0}
!17 = !{!"_ZTS12ARC_METADATA", !4, i64 0}
!18 = !{!"_ZTS14PATH_EXCL_MODE", !4, i64 0}
!19 = !{!"_ZTS12RECURSE_MODE", !4, i64 0}
!20 = !{!"_ZTS7RarTime", !10, i64 0}
!21 = !{!"_ZTS18APPENDARCNAME_MODE", !4, i64 0}
!22 = !{!"_ZTS10POWER_MODE", !4, i64 0}
!23 = !{!"_ZTS12EXTTIME_MODE", !4, i64 0}
!24 = !{!"any pointer", !4, i64 0}
!25 = !{!"_ZTS10RAROptions", !5, i64 0, !5, i64 4, !8, i64 8, !8, i64 9, !8, i64 10, !10, i64 16, !4, i64 24, !4, i64 8216, !11, i64 16408, !8, i64 16412, !4, i64 16416, !4, i64 24608, !12, i64 32800, !12, i64 32804, !12, i64 32808, !12, i64 32812, !4, i64 32816, !4, i64 41008, !8, i64 49200, !8, i64 49201, !8, i64 49202, !4, i64 49204, !13, i64 57396, !14, i64 57400, !15, i64 57404, !5, i64 57408, !16, i64 57412, !5, i64 57416, !5, i64 57420, !17, i64 57424, !8, i64 57428, !8, i64 57429, !8, i64 57430, !8, i64 57431, !8, i64 57432, !5, i64 57436, !5, i64 57440, !8, i64 57444, !8, i64 57445, !8, i64 57446, !8, i64 57447, !8, i64 57448, !18, i64 57452, !19, i64 57456, !10, i64 57464, !5, i64 57472, !8, i64 57476, !8, i64 57477, !8, i64 57478, !5, i64 57480, !5, i64 57484, !8, i64 57488, !8, i64 57489, !8, i64 57490, !8, i64 57491, !5, i64 57492, !5, i64 57496, !8, i64 57500, !8, i64 57501, !8, i64 57502, !8, i64 57503, !4, i64 57504, !4, i64 58016, !8, i64 58528, !8, i64 58529, !8, i64 58530, !8, i64 58531, !8, i64 58532, !20, i64 58536, !20, i64 58544, !20, i64 58552, !8, i64 58560, !8, i64 58561, !8, i64 58562, !20, i64 58568, !20, i64 58576, !20, i64 58584, !8, i64 58592, !8, i64 58593, !8, i64 58594, !10, i64 58600, !10, i64 58608, !8, i64 58616, !8, i64 58617, !8, i64 58618, !4, i64 58620, !4, i64 58812, !5, i64 67004, !21, i64 67008, !22, i64 67012, !23, i64 67016, !23, i64 67020, !23, i64 67024, !8, i64 67028, !4, i64 67032, !5, i64 75224, !4, i64 75228, !5, i64 83420, !5, i64 83424, !10, i64 83432, !24, i64 83440, !24, i64 83448, !24, i64 83456}
!26 = !{!25, !8, i64 57431}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
end_hunk_0
