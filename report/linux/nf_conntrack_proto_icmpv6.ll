Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/nf_conntrack_proto_icmpv6?download=true
inline.NumInlined: 40
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.30 = type { ptr, ptr, i16, i16, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { ptr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon }
%union.anon = type { [1 x i32] }
%union.nf_inet_addr = type { [4 x i32] }
%union.anon.54 = type { %struct.rd_msg }
%struct.rd_msg = type { %struct.icmp6hdr, %struct.in6_addr, %struct.in6_addr, [0 x i8] }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }

@invmap = internal unnamed_addr constant [13 x i8] c"\82\81\00\00\00\00\00\00\00\00\00\8D\8C", align 1
@.str = private unnamed_addr constant [13 x i8] c"short packet\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ICMPv6 checksum failed\00", align 1
@nf_conntrack_l4proto_icmpv6 = dso_local local_unnamed_addr constant { i8, i8, i16, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.30 } { i8 58, i8 1, i16 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr @icmpv6_tuple_to_nlattr, ptr @icmpv6_nlattr_tuple_size, ptr @icmpv6_nlattr_to_tuple, ptr @icmpv6_nla_policy, %struct.anon.30 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"short redirect\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"invalid saddr or hoplimit for redirect\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"redirect without options\00", align 1
@icmpv6_nlattr_tuple_size.size = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@icmpv6_nla_policy = internal constant <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.28 }, { i8, i8, i16, [4 x i8], %union.anon.28 }, { i8, i8, i16, [4 x i8], %union.anon.28 } }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.28 } { i8 2, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.28 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.28 } { i8 1, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.28 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.28 } { i8 1, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.28 zeroinitializer } }>, align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @icmpv6_pkt_to_tuple(ptr noundef %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.icmp6hdr, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !10
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 116
  %.val10 = load i32, ptr %i.b, align 4
  %i.c = add i32 %1, %.val10
  %i.d = sub i32 %.val, %i.c
  %.not.i = icmp slt i32 %i.d, 8
  br i1 %.not.i, label %bb.b, label %__skb_header_pointer.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %.not13.i = icmp eq ptr %0, null
  br i1 %.not13.i, label %__skb_header_pointer.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 8) #10
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread12, !prof !11

__skb_header_pointer.exit:                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread12

__skb_header_pointer.exit.thread12:               ; preds = %bb.c, %__skb_header_pointer.exit
  %.0.i14 = phi ptr [ %i.j, %__skb_header_pointer.exit ], [ %4, %bb.c ] ; 3 uses
  %i.k = load i8, ptr %.0.i14, align 4
  %i.l = getelementptr i8, ptr %3, i64 36
  store i8 %i.k, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %.0.i14, i64 4
  %i.n = load i16, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %3, i64 16
  store i16 %i.n, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %.0.i14, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = getelementptr i8, ptr %3, i64 37
  store i8 %i.q, ptr %i.r, align 1
  br label %__skb_header_pointer.exit.thread

__skb_header_pointer.exit.thread:                 ; preds = %bb.c, %bb.b, %__skb_header_pointer.exit, %__skb_header_pointer.exit.thread12
  %i.s = phi i1 [ true, %__skb_header_pointer.exit.thread12 ], [ false, %__skb_header_pointer.exit ], [ false, %bb.b ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i1 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local noundef zeroext i1 @nf_conntrack_invert_icmpv6_tuple(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4               ; 3 uses
  %i.c = zext i8 %i.b to i64
  %i.d = add nsw i64 %i.c, -128                   ; 2 uses
  %2 = icmp slt i8 %i.b, 0
  %3 = icmp ult i64 %i.d, 13
  %or.cond.not16 = select i1 %2, i1 %3, i1 false
  %4 = add i8 %i.b, 117
  %.not = icmp ult i8 %4, -9
  %or.cond13.not = and i1 %.not, %or.cond.not16   ; 2 uses
  br i1 %or.cond13.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %5 = getelementptr i8, ptr @invmap, i64 %i.d
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i16, ptr %i.e, align 4
  %i.g = getelementptr i8, ptr %0, i64 16
  store i16 %i.f, ptr %i.g, align 4
  %6 = load i8, ptr %5, align 1
  %i.h = add i8 %6, -1
  %i.i = getelementptr i8, ptr %0, i64 36
  store i8 %i.h, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %1, i64 37
  %i.k = load i8, ptr %i.j, align 1
  %i.l = getelementptr i8, ptr %0, i64 37
  store i8 %i.k, ptr %i.l, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %or.cond13.not
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 2) i32 @nf_conntrack_icmpv6_packet(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 10
  br i1 %.not, label %nf_ct_is_confirmed.exit, label %.critedge

nf_ct_is_confirmed.exit:                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 128
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 8
  %.not20 = icmp eq i64 %i.e, 0
  br i1 %.not20, label %bb.b, label %bb.d

bb.b:                                             ; preds = %nf_ct_is_confirmed.exit
  %i.f = getelementptr i8, ptr %0, i64 68
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = add nsw i64 %i.h, -128                   ; 2 uses
  %i.j = icmp sgt i8 %i.g, -1
  %i.k = icmp ugt i64 %i.i, 11
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i64 %i.i, label %.critedge [
    i64 11, label %bb.d
    i64 0, label %bb.d
  ]

bb.d:                                             ; preds = %nf_ct_is_confirmed.exit, %bb.c, %bb.c
  %i.l = getelementptr i8, ptr %0, i64 136
  %.val = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val, i64 2980
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %1, i64 112
  %.val22 = load i32, ptr %i.o, align 8
  tail call void @__nf_ct_refresh_acct(ptr noundef %0, i32 noundef %2, i32 noundef %i.n, i32 noundef %.val22) #10
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ -1, %bb.a ], [ 1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @nf_conntrack_icmpv6_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %union.nf_inet_addr, align 4        ; 4 uses
  %5 = alloca %struct.icmp6hdr, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !10
  %i.a = getelementptr i8, ptr %1, i64 112
  %.val = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 116
  %.val37 = load i32, ptr %i.b, align 4
  %i.c = add i32 %2, %.val37
  %i.d = sub i32 %.val, %i.c
  %.not.i = icmp slt i32 %i.d, 8
  br i1 %.not.i, label %bb.b, label %__skb_header_pointer.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %.not13.i = icmp eq ptr %1, null
  br i1 %.not13.i, label %__skb_header_pointer.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 8) #10
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread41, !prof !11

__skb_header_pointer.exit:                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread41

__skb_header_pointer.exit.thread:                 ; preds = %bb.c, %bb.b, %__skb_header_pointer.exit
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %1, ptr noundef %3, i8 noundef zeroext 58, ptr noundef @.str.2, ptr noundef @.str) #11
  br label %bb.n

__skb_header_pointer.exit.thread41:               ; preds = %bb.c, %__skb_header_pointer.exit
  %.0.i43 = phi ptr [ %i.j, %__skb_header_pointer.exit ], [ %5, %bb.c ]
  %i.l = load i8, ptr %3, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %__skb_header_pointer.exit.thread41
  %i.n = getelementptr i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 2884
  %i.q = load i8, ptr %i.p, align 4
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = call zeroext i16 @nf_ip6_checksum(ptr noundef %1, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 58) #10
  %.not35 = icmp eq i16 %i.r, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %1, ptr noundef %3, i8 noundef zeroext 58, ptr noundef @.str.2, ptr noundef @.str.1) #11
  br label %bb.n

bb.g:                                             ; preds = %bb.e, %bb.d, %__skb_header_pointer.exit.thread41
  %i.s = load i8, ptr %.0.i43, align 4            ; 4 uses
  %i.t = zext i8 %i.s to i64
  %i.u = add nsw i64 %i.t, -130                   ; 2 uses
  %i.v = icmp ugt i8 %i.s, -127
  %i.w = icmp ult i64 %i.u, 23
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %6 = shl nuw nsw i64 1, %i.u
  %7 = and i64 %6, 2088832
  %.not36.not = icmp eq i64 %7, 0
  br i1 %.not36.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %1, i64 129        ; 2 uses
  %i.y = load i32, ptr %i.x, align 1
  %i.z = or i32 %i.y, 2097152
  store i32 %i.z, ptr %i.x, align 1
  %i.aa = getelementptr i8, ptr %1, i64 104
  store i64 7, ptr %i.aa, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ab = icmp eq i8 %i.s, -119
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = call fastcc i32 @nf_conntrack_icmpv6_redirect(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #12, !srcloc !12
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp slt i8 %i.s, 0
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr i8, ptr %1, i64 184
  %.val38 = load i16, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %1, i64 200
  %.val39 = load ptr, ptr %i.af, align 8
  %i.ag = zext i16 %.val38 to i64
  %i.ah = getelementptr i8, ptr %.val39, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.aj = add i32 %2, 8
  %i.ak = call i32 @nf_conntrack_inet_error(ptr noundef %0, ptr noundef %1, i32 noundef %i.aj, ptr noundef %3, i8 noundef zeroext 58, ptr noundef nonnull %4) #10
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k, %bb.i, %bb.f, %__skb_header_pointer.exit.thread
  %.0 = phi i32 [ -1, %__skb_header_pointer.exit.thread ], [ -1, %bb.f ], [ 1, %bb.i ], [ %i.ac, %bb.k ], [ %i.ak, %bb.m ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i16 @nf_ip6_checksum(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @nf_conntrack_icmpv6_redirect(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %4 = alloca %union.nf_inet_addr, align 4        ; 4 uses
  %5 = alloca %union.anon.54, align 4             ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 184        ; 3 uses
  %.val39 = load i16, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 200        ; 3 uses
  %.val40 = load ptr, ptr %i.b, align 8
  %i.c = zext i16 %.val39 to i64
  %i.d = getelementptr i8, ptr %.val40, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 7
  %i.f = load i8, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !10
  %i.g = getelementptr i8, ptr %1, i64 208        ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 112        ; 2 uses
  %.val = load i32, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %1, i64 116        ; 2 uses
  %.val32 = load i32, ptr %i.i, align 4
  %i.j = add i32 %2, %.val32
  %i.k = sub i32 %.val, %i.j
  %.not.i = icmp slt i32 %i.k, 40
  br i1 %.not.i, label %bb.b, label %__skb_header_pointer.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %.not13.i = icmp eq ptr %1, null
  br i1 %.not13.i, label %__skb_header_pointer.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 40) #10
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread48, !prof !11

__skb_header_pointer.exit:                        ; preds = %bb.a
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = sext i32 %2 to i64
  %i.p = getelementptr i8, ptr %i.n, i64 %i.o     ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread48

__skb_header_pointer.exit.thread:                 ; preds = %bb.c, %bb.b, %__skb_header_pointer.exit
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %1, ptr noundef %3, i8 noundef zeroext 58, ptr noundef @.str.2, ptr noundef @.str.3) #11
  br label %bb.l

__skb_header_pointer.exit.thread48:               ; preds = %bb.c, %__skb_header_pointer.exit
  %.0.i51 = phi ptr [ %i.p, %__skb_header_pointer.exit ], [ %5, %bb.c ]
  %i.q = getelementptr i8, ptr %.0.i51, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %.not27 = icmp eq i8 %i.r, 0
  br i1 %.not27, label %bb.d, label %bb.l

bb.d:                                             ; preds = %__skb_header_pointer.exit.thread48
  %.not28 = icmp eq i8 %i.f, -1
  br i1 %.not28, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val37 = load i16, ptr %i.a, align 8
  %.val38 = load ptr, ptr %i.b, align 8
  %i.s = zext i16 %.val37 to i64
  %i.t = getelementptr i8, ptr %.val38, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = call i32 @__ipv6_addr_type(ptr noundef %i.u) #10
  %i.w = and i32 %i.v, 32
  %.not29 = icmp eq i32 %i.w, 0
  br i1 %.not29, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %1, ptr noundef %3, i8 noundef zeroext 58, ptr noundef @.str.2, ptr noundef @.str.4) #11
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.x = add i32 %2, 40                           ; 2 uses
  %.val33 = load i32, ptr %i.h, align 8
  %.val34 = load i32, ptr %i.i, align 4
  %i.y = add i32 %.val33, -40
  %i.z = add i32 %2, %.val34
  %i.aa = sub i32 %i.y, %i.z
  %.not.i41 = icmp slt i32 %i.aa, 2
  br i1 %.not.i41, label %bb.h, label %__skb_header_pointer.exit45, !prof !11

bb.h:                                             ; preds = %bb.g
  %.not13.i43 = icmp eq ptr %1, null
  br i1 %.not13.i43, label %__skb_header_pointer.exit45.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %i.x, ptr noundef nonnull %5, i32 noundef 2) #10
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %__skb_header_pointer.exit45.thread, label %__skb_header_pointer.exit45.thread55, !prof !11

__skb_header_pointer.exit45:                      ; preds = %bb.g
  %i.ad = load ptr, ptr %i.g, align 8
  %i.ae = sext i32 %i.x to i64
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae  ; 2 uses
  %.not30 = icmp eq ptr %i.af, null
  br i1 %.not30, label %__skb_header_pointer.exit45.thread, label %__skb_header_pointer.exit45.thread55

__skb_header_pointer.exit45.thread55:             ; preds = %bb.i, %__skb_header_pointer.exit45
  %.0.i4258 = phi ptr [ %i.af, %__skb_header_pointer.exit45 ], [ %5, %bb.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.i4258, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %__skb_header_pointer.exit45.thread, label %bb.j

__skb_header_pointer.exit45.thread:               ; preds = %bb.i, %bb.h, %__skb_header_pointer.exit45.thread55, %__skb_header_pointer.exit45
  call void (ptr, ptr, i8, ptr, ...) @nf_l4proto_log_invalid(ptr noundef %1, ptr noundef %3, i8 noundef zeroext 58, ptr noundef @.str.2, ptr noundef @.str.5) #11
  br label %bb.l

bb.j:                                             ; preds = %__skb_header_pointer.exit45.thread55
  %i.aj = load i8, ptr %.0.i4258, align 1
  %.not31 = icmp eq i8 %i.aj, 4
  br i1 %.not31, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val35 = load i16, ptr %i.a, align 8
  %.val36 = load ptr, ptr %i.b, align 8
  %i.ak = zext i16 %.val35 to i64
  %i.al = getelementptr i8, ptr %.val36, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %i.am, i64 16, i1 false)
  %i.an = add i32 %2, 48
  %i.ao = call i32 @nf_conntrack_inet_error(ptr noundef %0, ptr noundef %1, i32 noundef %i.an, ptr noundef %3, i8 noundef zeroext 58, ptr noundef nonnull %4) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %__skb_header_pointer.exit.thread48, %bb.k, %__skb_header_pointer.exit45.thread, %bb.f, %__skb_header_pointer.exit.thread
  %.0 = phi i32 [ -1, %__skb_header_pointer.exit.thread ], [ -1, %bb.f ], [ -1, %__skb_header_pointer.exit45.thread ], [ 1, %__skb_header_pointer.exit.thread48 ], [ %i.ao, %bb.k ], [ 1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_conntrack_inet_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local void @nf_conntrack_icmpv6_init_net(ptr nofree noundef writeonly captures(none) initializes((2980, 2984)) %0) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2980
  store i32 30000, ptr %i.a, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -1, 1) i32 @icmpv6_tuple_to_nlattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load i16, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i16 %i.e, ptr %i.c, align 2
  %i.f = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 36
  %i.h = load i8, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 %i.h, ptr %i.b, align 1
  %i.i = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %.not6 = icmp eq i32 %i.i, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 37
  %i.k = load i8, ptr %i.j, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 %i.k, ptr %i.a, align 1
  %i.l = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not7 = icmp eq i32 %i.l, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @icmpv6_nlattr_tuple_size() #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @icmpv6_nlattr_tuple_size.size, align 4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @nla_policy_len(ptr noundef @icmpv6_nla_policy, i32 noundef 10) #10 ; 2 uses
  store i32 %i.b, ptr @icmpv6_nlattr_tuple_size.size, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal range(i32 -22, 1) i32 @icmpv6_nlattr_to_tuple(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #7 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %2, 512
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.c, null
  br i1 %.not20, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val27.a = load i8, ptr %i.d, align 1          ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 36
  store i8 %.val27.a, ptr %i.e, align 4
  %i.f = icmp sgt i8 %.val27.a, -116
  %3 = add nsw i8 %.val27.a, 126
  %.not21 = icmp ult i8 %3, 9
  %or.cond26 = select i1 %i.f, i1 true, i1 %.not21
  br i1 %or.cond26, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.g = and i32 %2, 1024
  %.not22 = icmp eq i32 %i.g, 0
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val = load i8, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %1, i64 37
  store i8 %.val, ptr %i.k, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.l = and i32 %2, 2048
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val28 = load i16, ptr %i.o, align 2
  %i.p = getelementptr i8, ptr %1, i64 16
  store i16 %.val28, ptr %i.p, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.h ], [ -22, %bb.e ], [ -22, %bb.c ], [ 0, %bb.i ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__nf_ct_refresh_acct(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @nf_l4proto_log_invalid(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nla_policy_len(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 6079}
end_hunk_0
