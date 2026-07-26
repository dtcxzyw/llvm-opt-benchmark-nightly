inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.folly::netops::Dispatcher" = type { ptr }

$_ZN5folly6netops10DispatcherD2Ev = comdat any

$_ZN5folly6netops10DispatcherD0Ev = comdat any

@_ZTVN5folly6netops10DispatcherE = constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTIN5folly6netops10DispatcherE, ptr @_ZN5folly6netops10Dispatcher6acceptENS_13NetworkSocketEP8sockaddrPj, ptr @_ZN5folly6netops10Dispatcher4bindENS_13NetworkSocketEPK8sockaddrj, ptr @_ZN5folly6netops10Dispatcher5closeENS_13NetworkSocketE, ptr @_ZN5folly6netops10Dispatcher7connectENS_13NetworkSocketEPK8sockaddrj, ptr @_ZN5folly6netops10Dispatcher11getpeernameENS_13NetworkSocketEP8sockaddrPj, ptr @_ZN5folly6netops10Dispatcher11getsocknameENS_13NetworkSocketEP8sockaddrPj, ptr @_ZN5folly6netops10Dispatcher10getsockoptENS_13NetworkSocketEiiPvPj, ptr @_ZN5folly6netops10Dispatcher9inet_atonEPKcP7in_addr, ptr @_ZN5folly6netops10Dispatcher6listenENS_13NetworkSocketEi, ptr @_ZN5folly6netops10Dispatcher4pollEPNS0_14PollDescriptorEmi, ptr @_ZN5folly6netops10Dispatcher4recvENS_13NetworkSocketEPvmi, ptr @_ZN5folly6netops10Dispatcher8recvfromENS_13NetworkSocketEPvmiP8sockaddrPj, ptr @_ZN5folly6netops10Dispatcher7recvmsgENS_13NetworkSocketEP6msghdri, ptr @_ZN5folly6netops10Dispatcher8recvmmsgENS_13NetworkSocketEP7mmsghdrjjP8timespec, ptr @_ZN5folly6netops10Dispatcher4sendENS_13NetworkSocketEPKvmi, ptr @_ZN5folly6netops10Dispatcher6sendtoENS_13NetworkSocketEPKvmiPK8sockaddrj, ptr @_ZN5folly6netops10Dispatcher7sendmsgENS_13NetworkSocketEPK6msghdri, ptr @_ZN5folly6netops10Dispatcher8sendmmsgENS_13NetworkSocketEP7mmsghdrji, ptr @_ZN5folly6netops10Dispatcher10setsockoptENS_13NetworkSocketEiiPKvj, ptr @_ZN5folly6netops10Dispatcher8shutdownENS_13NetworkSocketEi, ptr @_ZN5folly6netops10Dispatcher6socketEiii, ptr @_ZN5folly6netops10Dispatcher10socketpairEiiiPNS_13NetworkSocketE, ptr @_ZN5folly6netops10Dispatcher23set_socket_non_blockingENS_13NetworkSocketE, ptr @_ZN5folly6netops10Dispatcher24set_socket_close_on_execENS_13NetworkSocketE, ptr @_ZN5folly6netops10DispatcherD2Ev, ptr @_ZN5folly6netops10DispatcherD0Ev] }, align 8
@_ZTIN5folly6netops10DispatcherE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly6netops10DispatcherE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5folly6netops10DispatcherE = constant [28 x i8] c"N5folly6netops10DispatcherE\00", align 1
@_ZZN5folly6netops10Dispatcher18getDefaultInstanceEvE7wrapper = internal global %"class.folly::netops::Dispatcher" { ptr getelementptr inbounds inrange(-16, 208) ({ [28 x ptr] }, ptr @_ZTVN5folly6netops10DispatcherE, i32 0, i32 0, i32 2) }, align 8

; Function Attrs: mustprogress uwtable
define i32 @_ZN5folly6netops10Dispatcher6acceptENS_13NetworkSocketEP8sockaddrPj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @_ZN5folly6netops6acceptENS_13NetworkSocketEP8sockaddrPj(i32 %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher4bindENS_13NetworkSocketEPK8sockaddrj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops4bindENS_13NetworkSocketEPK8sockaddrj(i32 %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher5closeENS_13NetworkSocketE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops5closeENS_13NetworkSocketE(i32 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher7connectENS_13NetworkSocketEPK8sockaddrj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops7connectENS_13NetworkSocketEPK8sockaddrj(i32 %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher11getpeernameENS_13NetworkSocketEP8sockaddrPj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops11getpeernameENS_13NetworkSocketEP8sockaddrPj(i32 %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher11getsocknameENS_13NetworkSocketEP8sockaddrPj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops11getsocknameENS_13NetworkSocketEP8sockaddrPj(i32 %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher10getsockoptENS_13NetworkSocketEiiPvPj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops10getsockoptENS_13NetworkSocketEiiPvPj(i32 %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher9inet_atonEPKcP7in_addr(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops9inet_atonEPKcP7in_addr(ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher6listenENS_13NetworkSocketEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops6listenENS_13NetworkSocketEi(i32 %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher4pollEPNS0_14PollDescriptorEmi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops4pollEPNS0_14PollDescriptorEmi(ptr noundef %1, i64 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6netops10Dispatcher4recvENS_13NetworkSocketEPvmi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly6netops4recvENS_13NetworkSocketEPvmi(i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6netops10Dispatcher8recvfromENS_13NetworkSocketEPvmiP8sockaddrPj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly6netops8recvfromENS_13NetworkSocketEPvmiP8sockaddrPj(i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6netops10Dispatcher7recvmsgENS_13NetworkSocketEP6msghdri(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly6netops7recvmsgENS_13NetworkSocketEP6msghdri(i32 %1, ptr noundef %2, i32 noundef %3)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher8recvmmsgENS_13NetworkSocketEP7mmsghdrjjP8timespec(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops8recvmmsgENS_13NetworkSocketEP7mmsghdrjjP8timespec(i32 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6netops10Dispatcher4sendENS_13NetworkSocketEPKvmi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly6netops4sendENS_13NetworkSocketEPKvmi(i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6netops10Dispatcher6sendtoENS_13NetworkSocketEPKvmiPK8sockaddrj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly6netops6sendtoENS_13NetworkSocketEPKvmiPK8sockaddrj(i32 %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly6netops10Dispatcher7sendmsgENS_13NetworkSocketEPK6msghdri(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN5folly6netops7sendmsgENS_13NetworkSocketEPK6msghdri(i32 %1, ptr noundef %2, i32 noundef %3)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher8sendmmsgENS_13NetworkSocketEP7mmsghdrji(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops8sendmmsgENS_13NetworkSocketEP7mmsghdrji(i32 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher10setsockoptENS_13NetworkSocketEiiPKvj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops10setsockoptENS_13NetworkSocketEiiPKvj(i32 %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher8shutdownENS_13NetworkSocketEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops8shutdownENS_13NetworkSocketEi(i32 %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define i32 @_ZN5folly6netops10Dispatcher6socketEiii(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @_ZN5folly6netops6socketEiii(i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher10socketpairEiiiPNS_13NetworkSocketE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops10socketpairEiiiPNS_13NetworkSocketE(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher23set_socket_non_blockingENS_13NetworkSocketE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops23set_socket_non_blockingENS_13NetworkSocketE(i32 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly6netops10Dispatcher24set_socket_close_on_execENS_13NetworkSocketE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5folly6netops24set_socket_close_on_execENS_13NetworkSocketE(i32 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6netops10DispatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6netops10DispatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN5folly6netops10Dispatcher18getDefaultInstanceEv() local_unnamed_addr #2 align 2 {
bb.a:
  ret ptr @_ZZN5folly6netops10Dispatcher18getDefaultInstanceEvE7wrapper
}

declare i32 @_ZN5folly6netops6acceptENS_13NetworkSocketEP8sockaddrPj(i32, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops4bindENS_13NetworkSocketEPK8sockaddrj(i32, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops5closeENS_13NetworkSocketE(i32) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops7connectENS_13NetworkSocketEPK8sockaddrj(i32, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops11getpeernameENS_13NetworkSocketEP8sockaddrPj(i32, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops11getsocknameENS_13NetworkSocketEP8sockaddrPj(i32, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops10getsockoptENS_13NetworkSocketEiiPvPj(i32, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops9inet_atonEPKcP7in_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops6listenENS_13NetworkSocketEi(i32, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops4pollEPNS0_14PollDescriptorEmi(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly6netops4recvENS_13NetworkSocketEPvmi(i32, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly6netops8recvfromENS_13NetworkSocketEPvmiP8sockaddrPj(i32, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly6netops7recvmsgENS_13NetworkSocketEP6msghdri(i32, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops8recvmmsgENS_13NetworkSocketEP7mmsghdrjjP8timespec(i32, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly6netops4sendENS_13NetworkSocketEPKvmi(i32, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly6netops7sendmsgENS_13NetworkSocketEPK6msghdri(i32, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops8sendmmsgENS_13NetworkSocketEP7mmsghdrji(i32, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZN5folly6netops6sendtoENS_13NetworkSocketEPKvmiPK8sockaddrj(i32, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops10setsockoptENS_13NetworkSocketEiiPKvj(i32, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops8shutdownENS_13NetworkSocketEi(i32, i32 noundef) local_unnamed_addr #3

declare i32 @_ZN5folly6netops6socketEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops10socketpairEiiiPNS_13NetworkSocketE(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops23set_socket_non_blockingENS_13NetworkSocketE(i32) local_unnamed_addr #3

declare noundef i32 @_ZN5folly6netops24set_socket_close_on_execENS_13NetworkSocketE(i32) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
end_hunk_0
