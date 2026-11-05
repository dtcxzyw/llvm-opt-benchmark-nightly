Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evutil?download=true
inline.NumInlined: 93
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"fcntl(%d, F_GETFL)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"fcntl(%d, F_SETFL)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"fcntl(%d, F_GETFD)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"fcntl(%d, F_SETFD)\00", align 1
@had_ipv4_address = internal unnamed_addr global i1 false, align 4
@had_ipv6_address = internal unnamed_addr global i1 false, align 4
@evdns_getaddrinfo_impl = internal unnamed_addr global ptr null, align 8
@evdns_getaddrinfo_cancel_impl = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Request canceled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"address family for nodename not supported\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"temporary failure in name resolution\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"invalid value for ai_flags\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"non-recoverable failure in name resolution\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"ai_family not supported\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"memory allocation failure\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"no address associated with nodename\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"nodename nor servname provided, or not known\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"servname not supported for ai_socktype\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"ai_socktype not supported\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"system error\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"::%d.%d.%d.%d\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"::%x:%d.%d.%d.%d\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%u.%u.%u.%u%c\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"<addr with socktype %d>\00", align 1
@EVUTIL_ISALPHA_TABLE = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 134217726, i32 134217726, i32 0, i32 0, i32 0, i32 0], align 16
@EVUTIL_ISALNUM_TABLE = internal unnamed_addr constant [8 x i32] [i32 0, i32 67043328, i32 134217726, i32 134217726, i32 0, i32 0, i32 0, i32 0], align 16
@EVUTIL_ISSPACE_TABLE = internal unnamed_addr constant [8 x i32] [i32 15872, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@EVUTIL_ISDIGIT_TABLE = internal unnamed_addr constant [8 x i32] [i32 0, i32 67043328, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@EVUTIL_ISXDIGIT_TABLE = internal unnamed_addr constant [8 x i32] [i32 0, i32 67043328, i32 126, i32 126, i32 0, i32 0, i32 0, i32 0], align 16
@EVUTIL_ISPRINT_TABLE = internal unnamed_addr constant [8 x i32] [i32 0, i32 -1, i32 -1, i32 2147483647, i32 0, i32 0, i32 0, i32 0], align 16
@EVUTIL_ISLOWER_TABLE = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 134217726, i32 0, i32 0, i32 0, i32 0], align 16
@EVUTIL_ISUPPER_TABLE = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 134217726, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@EVUTIL_TOLOWER_TABLE = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@EVUTIL_TOUPPER_TABLE = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@evutil_memset_volatile_ = hidden global ptr @memset, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"%s: pipe\00", align 1
@__func__.evutil_make_internal_pipe_ = private unnamed_addr constant [27 x i8] c"evutil_make_internal_pipe_\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"sctp\00", align 1
@have_checked_interfaces = internal unnamed_addr global i1 false, align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"18.244.0.188\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"2001:4860:b002::68\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Unable to call getifaddrs()\00", align 1
@event_debug_logging_mask_ = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [27 x i8] c"Detected an IPv4 interface\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Detected an IPv6 interface\00", align 1
@tested_for_getaddrinfo_hacks = internal unnamed_addr global i1 false, align 4
@need_numeric_port_hack_ = internal unnamed_addr global i1 false, align 4
@.str.34 = private unnamed_addr constant [8 x i8] c"1.2.3.4\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@need_socktype_protocol_hack_ = internal unnamed_addr global i1 false, align 4
@switch.table.evutil_hex_char_to_int_ = private unnamed_addr constant [55 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4

; Function Attrs: nounwind uwtable
define hidden noundef i32 @evutil_open_closeonexec_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, 524288
  %i.b = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %i.a, i32 noundef %2) #21 ; 3 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #22
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 22
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %2) #21 ; 4 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 2, i32 noundef 1) #21
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @close(i32 noundef %i.g) #21 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %bb.e
  %.0 = phi i32 [ -1, %bb.c ], [ %i.b, %bb.a ], [ -1, %bb.e ], [ %i.b, %bb.b ], [ %i.g, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @evutil_read_file_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %1, align 8
  store i64 0, ptr %2, align 8
  %i.a = tail call i32 (ptr, i32, ...) @open(ptr noundef readonly %0, i32 noundef 524288, i32 noundef 0) #21 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %evutil_open_closeonexec_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #22
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 22
  br i1 %i.e, label %evutil_open_closeonexec_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 (ptr, i32, ...) @open(ptr noundef readonly %0, i32 noundef 0, i32 noundef 0) #21 ; 4 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %evutil_open_closeonexec_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.f, i32 noundef 2, i32 noundef 1) #21
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %evutil_open_closeonexec_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @close(i32 noundef %i.f) #21 ; 0 uses
  br label %evutil_open_closeonexec_.exit.thread

evutil_open_closeonexec_.exit:                    ; preds = %bb.d, %bb.a
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.a, %bb.a ] ; 6 uses
  %i.k = call i32 @fstat(i32 noundef %.0.i, ptr noundef nonnull %4) #21
  %i.l = icmp ne i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %i.o = icmp ugt i64 %i.n, 9223372036854775806
  %or.cond5 = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %evutil_open_closeonexec_.exit
  %i.p = tail call i32 @close(i32 noundef %.0.i) #21 ; 0 uses
  br label %evutil_open_closeonexec_.exit.thread

bb.g:                                             ; preds = %evutil_open_closeonexec_.exit
  %i.q = add nuw nsw i64 %i.n, 1
  %i.r = tail call ptr @event_mm_malloc_(i64 noundef %i.q) #21 ; 5 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 @close(i32 noundef %.0.i) #21 ; 0 uses
  br label %evutil_open_closeonexec_.exit.thread

.preheader:                                       ; preds = %bb.g, %bb.i
  %.0 = phi i64 [ %i.z, %bb.i ], [ 0, %bb.g ]     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0
  %i.u = sub nsw i64 %i.n, %.0
  %i.v = tail call i64 @read(i32 noundef %.0.i, ptr noundef nonnull %i.t, i64 noundef %i.u) #21 ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.y = and i64 %i.v, 2147483647
  %i.z = add nuw i64 %i.y, %.0                    ; 3 uses
  %.not37 = icmp ult i64 %i.z, %i.n
  br i1 %.not37, label %.preheader, label %.thread, !llvm.loop !6

.thread:                                          ; preds = %bb.i
  %i.aa = tail call i32 @close(i32 noundef %.0.i) #21 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %.preheader
  %i.ab = tail call i32 @close(i32 noundef %.0.i) #21 ; 0 uses
  %i.ac = icmp slt i32 %i.w, 0
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @event_mm_free_(ptr noundef nonnull %i.r) #21
  br label %evutil_open_closeonexec_.exit.thread

bb.l:                                             ; preds = %.thread, %bb.j
  %.140 = phi i64 [ %i.z, %.thread ], [ %.0, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %.140
  store i8 0, ptr %i.ad, align 1
  store i64 %.140, ptr %2, align 8
  store ptr %i.r, ptr %1, align 8
  br label %evutil_open_closeonexec_.exit.thread

evutil_open_closeonexec_.exit.thread:             ; preds = %bb.b, %bb.e, %bb.c, %bb.l, %bb.k, %bb.h, %bb.f
  %.030 = phi i32 [ -2, %bb.h ], [ -2, %bb.f ], [ -2, %bb.k ], [ 0, %bb.l ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %.030
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @event_mm_malloc_(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @evutil_socketpair(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @socketpair(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #21
  ret i32 %i.a
}

; Function Attrs: nounwind
declare i32 @socketpair(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evutil_ersatz_socketpair_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.sockaddr_in, align 4        ; 9 uses
  %5 = alloca %struct.sockaddr_in, align 4        ; 9 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = add i32 %0, -3
  %i.c = icmp ult i32 %i.b, -2
  %i.d = icmp ne i32 %2, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #22
  store i32 97, ptr %i.e, align 4
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.f, align 4
  br label %bb.y

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i32 @socket(i32 noundef 2, i32 noundef %1, i32 noundef 0) #21 ; 8 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.i, align 4
  store i16 2, ptr %4, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 16777343, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  store i16 0, ptr %i.k, align 2
  %i.l = call i32 @bind(i32 noundef %i.g, ptr nonnull %4, i32 noundef 16) #21
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call i32 @listen(i32 noundef %i.g, i32 noundef 1) #21
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @socket(i32 noundef 2, i32 noundef %1, i32 noundef 0) #21 ; 10 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 16, ptr %i.a, align 4
  %i.r = call i32 @getsockname(i32 noundef %i.g, ptr nonnull %5, ptr noundef nonnull %i.a) #21
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %i.a, align 4
  %.not45 = icmp eq i32 %i.t, 16
  br i1 %.not45, label %bb.k, label %.thread61

bb.k:                                             ; preds = %bb.j
  %i.u = call i32 @connect(i32 noundef %i.p, ptr nonnull %5, i32 noundef 16) #21
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 16, ptr %i.a, align 4
  %i.w = call i32 @accept(i32 noundef %i.g, ptr nonnull %4, ptr noundef nonnull %i.a) #21 ; 9 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load i32, ptr %i.a, align 4
  %.not46 = icmp eq i32 %i.y, 16
  br i1 %.not46, label %bb.n, label %.thread61

bb.n:                                             ; preds = %bb.m
  %i.z = call i32 @getsockname(i32 noundef %i.p, ptr nonnull %5, ptr noundef nonnull %i.a) #21
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load i32, ptr %i.a, align 4
  %.not47 = icmp eq i32 %i.ab, 16
  br i1 %.not47, label %bb.p, label %.thread61

bb.p:                                             ; preds = %bb.o
  %i.ac = load i16, ptr %4, align 4
  %i.ad = load i16, ptr %5, align 4
  %.not48 = icmp eq i16 %i.ac, %i.ad
  br i1 %.not48, label %bb.q, label %.thread61

bb.q:                                             ; preds = %bb.p
  %i.ae = load i32, ptr %i.j, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %.not49 = icmp eq i32 %i.ae, %i.ag
  br i1 %.not49, label %bb.r, label %.thread61

bb.r:                                             ; preds = %bb.q
  %i.ah = load i16, ptr %i.k, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.aj = load i16, ptr %i.ai, align 2
  %.not50 = icmp eq i16 %i.ah, %i.aj
  br i1 %.not50, label %bb.s, label %.thread61

bb.s:                                             ; preds = %bb.r
  %i.ak = call i32 @close(i32 noundef %i.g) #21   ; 0 uses
  store i32 %i.p, ptr %3, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.w, ptr %i.al, align 4
  br label %bb.y

.thread61:                                        ; preds = %bb.j, %bb.o, %bb.p, %bb.q, %bb.r, %bb.m
  %.156.ph = phi i32 [ %i.w, %bb.q ], [ %i.w, %bb.p ], [ %i.w, %bb.o ], [ %i.w, %bb.m ], [ -1, %bb.j ], [ %i.w, %bb.r ]
  %i.am = call i32 @close(i32 noundef %i.g) #21   ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.l, %bb.k, %bb.n, %bb.i, %bb.h, %bb.g, %bb.f
  %.1.ph = phi i32 [ %i.w, %bb.l ], [ -1, %bb.k ], [ %i.w, %bb.n ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.f ] ; 2 uses
  %.035.ph = phi i32 [ %i.p, %bb.l ], [ %i.p, %bb.k ], [ %i.p, %bb.n ], [ %i.p, %bb.i ], [ %i.p, %bb.h ], [ -1, %bb.g ], [ -1, %bb.f ] ; 2 uses
  %i.an = tail call ptr @__errno_location() #22
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %i.ap = call i32 @close(i32 noundef %i.g) #21   ; 0 uses
  %.not51 = icmp eq i32 %.035.ph, -1
  br i1 %.not51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.thread61, %bb.t
  %.13869 = phi i32 [ 103, %.thread61 ], [ %i.ao, %bb.t ]
  %.15667 = phi i32 [ %.156.ph, %.thread61 ], [ %.1.ph, %bb.t ]
  %.0355866 = phi i32 [ %i.p, %.thread61 ], [ %.035.ph, %bb.t ]
  %i.aq = call i32 @close(i32 noundef %.0355866) #21 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.13870 = phi i32 [ %.13869, %bb.u ], [ %i.ao, %bb.t ]
  %.15668 = phi i32 [ %.15667, %bb.u ], [ %.1.ph, %bb.t ] ; 2 uses
  %.not52 = icmp eq i32 %.15668, -1
  br i1 %.not52, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = call i32 @close(i32 noundef %.15668) #21 ; 0 uses
end_hunk_0
