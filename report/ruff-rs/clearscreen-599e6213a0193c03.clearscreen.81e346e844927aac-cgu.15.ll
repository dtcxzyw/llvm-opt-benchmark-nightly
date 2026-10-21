Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clearscreen-599e6213a0193c03.clearscreen.81e346e844927aac-cgu.15?download=true
inline.NumInlined: 15
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsb9oa454Wl6i_11clearscreen(ptr noalias noundef returned align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr noalias noundef nonnull align 8 dereferenceable(200) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3newReECsb9oa454Wl6i_11clearscreen(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3new(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, 571230650370) i64 @_RINvNtCsc3achR2mlIj_3nix6unistd6isattyNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinECsb9oa454Wl6i_11clearscreen(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i32 @isatty(i32 noundef 0) #4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_RNvMNtCsc3achR2mlIj_3nix5errnoNtNtB2_6consts5Errno4last() ; 2 uses
  %i.d = icmp eq i32 %i.c, 25
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.4.0.insert.insert = phi i64 [ %i.g, %bb.d ], [ 256, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.4.0.insert.insert

bb.d:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  %i.f = shl nuw nsw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, 1
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsc3achR2mlIj_3nix3sys7termios9tcgetattrNtNtNtNtCs2AWtUsOyxgP_3std2os2fd5owned10BorrowedFdECsb9oa454Wl6i_11clearscreen(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 4)) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [60 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i32 @tcgetattr(i32 noundef %1, ptr noundef nonnull %i.a) #4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i32 @_RNvMNtCsc3achR2mlIj_3nix5errnoNtNtB2_6consts5Errno4last()
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.729.0.copyload = load i8, ptr %.sroa.729.0..sroa_idx, align 16 ; 2 uses
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.830.0..sroa_idx, i64 32, i1 false)
  %.sroa.931.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %.sroa.06.sroa.5.sroa.9.0..sroa.06.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.06.sroa.5.sroa.9.0..sroa.06.sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.931.0..sroa_idx, i64 11, i1 false)
  %.sroa.06.sroa.5.sroa.8.0..sroa.06.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.06.sroa.5.sroa.8.0..sroa.06.sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.830.0..sroa_idx, i64 32, i1 false)
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.06.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.06.sroa.5.sroa.5.0..sroa.06.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.06.sroa.5.sroa.7.0..sroa.06.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.729.0.copyload, ptr %.sroa.06.sroa.5.sroa.7.0..sroa.06.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load <4 x i32>, ptr %i.a, align 16       ; 3 uses
  %i.h = and <4 x i32> %i.g, <i32 32767, i32 65535, i32 -804315137, i32 122879>
  %2 = shufflevector <4 x i32> %i.g, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %2, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  %3 = shufflevector <4 x i32> %i.g, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %3, ptr %.sroa.06.sroa.5.sroa.5.0..sroa.06.sroa.5.0..sroa_idx.sroa_idx, align 8
  store <4 x i32> %i.h, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.sroa.729.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i32 -1, 134) i32 @_RINvNtNtCsc3achR2mlIj_3nix3sys7termios9tcsetattrNtNtNtNtCs2AWtUsOyxgP_3std2os2fd5owned10BorrowedFdECsb9oa454Wl6i_11clearscreen(i32 noundef range(i32 0, -1) %0, i32 noundef range(i32 0, 3) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMNtNtCsc3achR2mlIj_3nix3sys7termiosNtB2_7Termios16get_libc_termios(ptr noundef nonnull align 8 %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.d = tail call noundef i32 @tcsetattr(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %i.b) #4 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1                     ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.g = load i64, ptr %i.c, align 8, !noundef !3
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.c, align 8
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.a
  %i.i = invoke noundef i32 @_RNvMNtCsc3achR2mlIj_3nix5errnoNtNtB2_6consts5Errno4last()
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.3.0.i = phi i32 [ %i.d, %bb.a ], [ %i.i, %bb.c ]
  %.sroa.0.0 = select i1 %i.e, i32 %.sroa.3.0.i, i32 -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.j = load i64, ptr %i.c, align 8, !noundef !3
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.c, align 8
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2AWtUsOyxgP_3std7process10ExitStatusNtB6_7Display3fmtCsb9oa454Wl6i_11clearscreen(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXsL_NtCs2AWtUsOyxgP_3std7processNtB5_10ExitStatusNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_7Display3fmtCsb9oa454Wl6i_11clearscreen(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 134) i32 @_RNvMNtCsc3achR2mlIj_3nix5errnoNtNtB2_6consts5Errno4last() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3arg(ptr noalias noundef align 8 dereferenceable(200), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3new(ptr dead_on_unwind noalias noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @isatty(i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @tcgetattr(i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvMNtNtCsc3achR2mlIj_3nix3sys7termiosNtB2_7Termios16get_libc_termios(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsL_NtCs2AWtUsOyxgP_3std7processNtB5_10ExitStatusNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i64 4}
!5 = !{i64 8}
end_hunk_0
