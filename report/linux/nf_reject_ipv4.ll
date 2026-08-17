inline.NumInlined: 98
inline.NumDeleted: 44
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nf_reject_skb_v4_tcp_reset: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad nf_reject_skb_v4_tcp_reset ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nf_reject_skb_v4_unreach: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad nf_reject_skb_v4_unreach ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nf_send_reset: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad nf_send_reset ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nf_send_unreach: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad nf_send_unreach ; .previous"

%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.flowi = type { %union.anon.41 }
%union.anon.41 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, i32, %struct.flowi_tunnel }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.40 }
%union.anon.40 = type { [4 x i32] }
%union.flowi_uli = type { i32 }

@__UNIQUE_ID_addressable_nf_reject_skb_v4_tcp_reset_1122 = internal global ptr @nf_reject_skb_v4_tcp_reset, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_nf_reject_skb_v4_unreach_1126 = internal global ptr @nf_reject_skb_v4_unreach, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_nf_send_reset_1128 = internal global ptr @nf_send_reset, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_nf_send_unreach_1129 = internal global ptr @nf_send_unreach, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_1130 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1131 = internal constant [39 x i8] c"description=IPv4 packet rejection core\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_addressable_nf_reject_skb_v4_tcp_reset_1122, ptr @__UNIQUE_ID_addressable_nf_reject_skb_v4_unreach_1126, ptr @__UNIQUE_ID_addressable_nf_send_reset_1128, ptr @__UNIQUE_ID_addressable_nf_send_unreach_1129, ptr @__UNIQUE_ID_modinfo_1130, ptr @__UNIQUE_ID_modinfo_1131], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nf_reject_skb_v4_tcp_reset(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.tcphdr, align 4             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = getelementptr i8, ptr %1, i64 112        ; 3 uses
  %.val24.i = load i32, ptr %i.a, align 8         ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 116        ; 3 uses
  %.val25.i = load i32, ptr %i.b, align 4
  %i.c = sub i32 %.val24.i, %.val25.i             ; 2 uses
  %.not.i.i = icmp ult i32 %i.c, 20
  br i1 %.not.i.i, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %.val24.i, 20
  br i1 %i.d, label %nf_reject_iphdr_validate.exit.thread, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i32 20, %i.c
  %i.f = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.e) #8
  %.not9.i.i = icmp eq ptr %i.f, null
  br i1 %.not9.i.i, label %nf_reject_iphdr_validate.exit.thread, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i64 20, i1 false), !annotation !11
  %i.g = getelementptr i8, ptr %1, i64 184        ; 4 uses
  %.val26.i = load i16, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %1, i64 200        ; 4 uses
  %.val27.i = load ptr, ptr %i.h, align 8         ; 2 uses
  %i.i = zext i16 %.val26.i to i64                ; 2 uses
  %i.j = getelementptr i8, ptr %.val27.i, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 4               ; 3 uses
  %i.l = and i8 %i.k, 15
  %i.m = icmp samesign ugt i8 %i.l, 4
  %.mask.i = and i8 %i.k, -16
  %.not.i = icmp eq i8 %.mask.i, 64
  %or.cond.i = and i1 %i.m, %.not.i
  br i1 %or.cond.i, label %bb.e, label %nf_reject_iphdr_validate.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.j, i64 2
  %i.o = load i16, ptr %i.n, align 2
  %i.p = tail call i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = load i32, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp ult i32 %i.r, %i.q
  br i1 %i.s, label %nf_reject_iphdr_validate.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = shl i8 %i.k, 2
  %i.u = zext nneg i8 %i.t to i32                 ; 3 uses
  %i.v = icmp samesign ult i32 %i.q, %i.u
  br i1 %i.v, label %nf_reject_iphdr_validate.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val21.i = load i32, ptr %i.b, align 4
  %i.w = sub i32 %i.r, %.val21.i                  ; 2 uses
  %.not.i14.i = icmp ult i32 %i.w, %i.u
  br i1 %.not.i14.i, label %bb.h, label %nf_reject_iphdr_validate.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.x = sub nuw nsw i32 %i.u, %i.w
  %i.y = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.x) #8
  %.not9.i16.i = icmp eq ptr %i.y, null
  br i1 %.not9.i16.i, label %nf_reject_iphdr_validate.exit.thread, label %.nf_reject_iphdr_validate.exit_crit_edge, !prof !10

.nf_reject_iphdr_validate.exit_crit_edge:         ; preds = %bb.h
  %.val18.i.pre = load i16, ptr %i.g, align 8
  %.val19.i.pre = load ptr, ptr %i.h, align 8
  %.pre = zext i16 %.val18.i.pre to i64
  br label %nf_reject_iphdr_validate.exit

nf_reject_iphdr_validate.exit:                    ; preds = %.nf_reject_iphdr_validate.exit_crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre, %.nf_reject_iphdr_validate.exit_crit_edge ], [ %i.i, %bb.g ]
  %.val19.i = phi ptr [ %.val19.i.pre, %.nf_reject_iphdr_validate.exit_crit_edge ], [ %.val27.i, %bb.g ]
  %5 = getelementptr i8, ptr %.val19.i, i64 %.pre-phi ; 3 uses
  %6 = getelementptr i8, ptr %5, i64 6
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, -225
  %.not.i24 = icmp eq i16 %8, 0
  br i1 %.not.i24, label %9, label %nf_reject_iphdr_validate.exit.thread

9:                                                ; preds = %nf_reject_iphdr_validate.exit
  %10 = getelementptr i8, ptr %5, i64 9
  %11 = load i8, ptr %10, align 1
  %.not12.i = icmp eq i8 %11, 6
  br i1 %.not12.i, label %12, label %nf_reject_iphdr_validate.exit.thread

12:                                               ; preds = %9
  %13 = load i8, ptr %5, align 4
  %14 = shl i8 %13, 2
  %15 = and i8 %14, 60                            ; 2 uses
  %16 = zext nneg i8 %15 to i32                   ; 2 uses
  %.val.i = load i32, ptr %i.a, align 8
  %.val15.i = load i32, ptr %i.b, align 4
  %17 = add i32 %.val15.i, %16
  %18 = sub i32 %.val.i, %17
  %.not.i.i26 = icmp slt i32 %18, 20
  br i1 %.not.i.i26, label %19, label %__skb_header_pointer.exit.i, !prof !10

19:                                               ; preds = %12
  %.not13.i.i = icmp eq ptr %1, null
  br i1 %.not13.i.i, label %nf_reject_iphdr_validate.exit.thread, label %20

20:                                               ; preds = %19
  %21 = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %16, ptr noundef nonnull %4, i32 noundef 20) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %nf_reject_iphdr_validate.exit.thread, label %__skb_header_pointer.exit.i.thread, !prof !10

__skb_header_pointer.exit.i:                      ; preds = %12
  %23 = getelementptr i8, ptr %1, i64 208
  %24 = load ptr, ptr %23, align 8
  %25 = zext nneg i8 %15 to i64
  %26 = getelementptr i8, ptr %24, i64 %25        ; 2 uses
  %27 = icmp eq ptr %26, null
  br i1 %27, label %nf_reject_iphdr_validate.exit.thread, label %__skb_header_pointer.exit.i.thread

__skb_header_pointer.exit.i.thread:               ; preds = %20, %__skb_header_pointer.exit.i
  %.0.i.i31 = phi ptr [ %26, %__skb_header_pointer.exit.i ], [ %4, %20 ] ; 2 uses
  %28 = getelementptr i8, ptr %.0.i.i31, i64 12
  %29 = load i16, ptr %28, align 4
  %30 = and i16 %29, 1024
  %.not13.i = icmp eq i16 %30, 0
  br i1 %.not13.i, label %nf_reject_iphdr_validate.exit.a, label %nf_reject_iphdr_validate.exit.thread

nf_reject_iphdr_validate.exit.a:                  ; preds = %__skb_header_pointer.exit.i.thread
  %.val20.i = load i16, ptr %i.g, align 8
  %.val21.i27 = load ptr, ptr %i.h, align 8
  %31 = zext i16 %.val20.i to i64
  %32 = getelementptr i8, ptr %.val21.i27, i64 %31
  %33 = load i8, ptr %32, align 4
  %34 = shl i8 %33, 2
  %35 = and i8 %34, 60
  %36 = zext nneg i8 %35 to i32
  %37 = call zeroext i16 @nf_ip_checksum(ptr noundef %1, i32 noundef %3, i32 noundef %36, i8 noundef zeroext 6) #8
  %.not21 = icmp eq i16 %37, 0
  br i1 %.not21, label %bb.i, label %nf_reject_iphdr_validate.exit.thread

bb.i:                                             ; preds = %nf_reject_iphdr_validate.exit.a
  %i.z = call ptr @__alloc_skb(i32 noundef 136, i32 noundef 2080, i32 noundef 0, i32 noundef -1) #8 ; 11 uses
  %.not22 = icmp eq ptr %i.z, null
  br i1 %.not22, label %nf_reject_iphdr_validate.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store ptr %2, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 208     ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 96     ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr i8, ptr %i.z, i64 188     ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add i32 %i.af, 96
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr i8, ptr %0, i64 1448
  %i.ai = load volatile i8, ptr %i.ah, align 8
  %.val = load i16, ptr %i.g, align 8
  %.val23 = load ptr, ptr %i.h, align 8
  %i.aj = zext i16 %.val to i64
  %i.ak = getelementptr i8, ptr %.val23, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.z, i64 200
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.ad to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = getelementptr i8, ptr %i.z, i64 184
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = call ptr @skb_put(ptr noundef nonnull %i.z, i32 noundef 20) #8 ; 11 uses
  store i8 69, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %i.as, i64 1
  store i8 0, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %i.as, i64 4
  store i16 0, ptr %i.au, align 4
  %i.av = getelementptr i8, ptr %i.as, i64 6
  store i16 64, ptr %i.av, align 2
  %i.aw = getelementptr i8, ptr %i.as, i64 9
  store i8 6, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %i.as, i64 10
  store i16 0, ptr %i.ax, align 2
  %i.ay = getelementptr i8, ptr %i.ak, i64 12
  %i.az = getelementptr i8, ptr %i.ak, i64 16
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = getelementptr i8, ptr %i.as, i64 12
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = load i32, ptr %i.ay, align 4
  %i.bd = getelementptr i8, ptr %i.as, i64 16
  store i32 %i.bc, ptr %i.bd, align 4
  %i.be = getelementptr i8, ptr %i.as, i64 8
  store i8 %i.ai, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %i.z, i64 180
  store i16 8, ptr %i.bf, align 4
  call fastcc void @nf_reject_ip_tcphdr_put(ptr noundef %i.z, ptr noundef %1, ptr noundef %.0.i.i31) #9, !srcloc !12
  %i.bg = getelementptr i8, ptr %i.z, i64 112
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = call i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = getelementptr i8, ptr %i.as, i64 2
  store i16 %i.bj, ptr %i.bk, align 2
  call void @ip_send_check(ptr noundef %i.as) #8
  br label %nf_reject_iphdr_validate.exit.thread

nf_reject_iphdr_validate.exit.thread:             ; preds = %20, %19, %nf_reject_iphdr_validate.exit.a, %__skb_header_pointer.exit.i, %9, %nf_reject_iphdr_validate.exit, %__skb_header_pointer.exit.i.thread, %bb.h, %bb.c, %bb.b, %bb.f, %bb.e, %bb.d, %bb.i, %bb.j
  %.0 = phi ptr [ %i.z, %bb.j ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ], [ null, %__skb_header_pointer.exit.i.thread ], [ null, %nf_reject_iphdr_validate.exit ], [ null, %9 ], [ null, %__skb_header_pointer.exit.i ], [ null, %nf_reject_iphdr_validate.exit.a ], [ null, %19 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @nf_reject_iphdr_put(ptr noundef nonnull initializes((184, 186)) %0, i16 %.184.val, ptr nofree readonly captures(none) %.200.val, i8 noundef zeroext range(i8 1, 7) %1, i32 noundef %2) unnamed_addr #0 align 16 {
bb.a:
  %i.a = zext i16 %.184.val to i64
  %i.b = getelementptr i8, ptr %.200.val, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i16
  %i.k = getelementptr i8, ptr %0, i64 184
  store i16 %i.j, ptr %i.k, align 8
  %i.l = tail call ptr @skb_put(ptr noundef nonnull %0, i32 noundef 20) #8 ; 10 uses
  store i8 69, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %i.l, i64 1
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr i8, ptr %i.l, i64 4
  store i16 0, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.l, i64 6
  store i16 64, ptr %i.o, align 2
  %i.p = getelementptr i8, ptr %i.l, i64 9
  store i8 %1, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.l, i64 10
  store i16 0, ptr %i.q, align 2
  %i.r = getelementptr i8, ptr %i.b, i64 12
  %i.s = getelementptr i8, ptr %i.b, i64 16
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr i8, ptr %i.l, i64 12
  store i32 %i.t, ptr %i.u, align 4
  %i.v = load i32, ptr %i.r, align 4
  %i.w = getelementptr i8, ptr %i.l, i64 16
  store i32 %i.v, ptr %i.w, align 4
  %i.x = trunc i32 %2 to i8
  %i.y = getelementptr i8, ptr %i.l, i64 8
  store i8 %i.x, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %0, i64 180
  store i16 8, ptr %i.z, align 4
  ret ptr %i.l
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @nf_reject_ip_tcphdr_put(ptr noundef nonnull initializes((182, 184)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val = load i16, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %.val28 = load ptr, ptr %i.b, align 8           ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %.val28 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i16
  %i.i = getelementptr i8, ptr %0, i64 182
  store i16 %i.h, ptr %i.i, align 2
  %i.j = tail call noundef ptr @skb_put(ptr noundef nonnull %0, i32 noundef 20) #8 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  %i.k = getelementptr i8, ptr %2, i64 2
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.j, align 4
  %i.m = load i16, ptr %2, align 4
  %i.n = getelementptr i8, ptr %i.j, i64 2
  store i16 %i.m, ptr %i.n, align 2
  %i.o = getelementptr i8, ptr %i.j, i64 12       ; 2 uses
  store i16 80, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %2, i64 12
  %i.q = load i16, ptr %i.p, align 4              ; 4 uses
  %i.r = and i16 %i.q, 4096
  %.not = icmp eq i16 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = lshr i16 %i.q, 9
  %i.y = and i16 %i.x, 1
  %i.z = lshr i16 %i.q, 8
  %i.aa = and i16 %i.z, 1
  %i.ab = getelementptr i8, ptr %1, i64 112
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %1, i64 184
  %.val29 = load i16, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %1, i64 200
  %.val30 = load ptr, ptr %i.ae, align 8
  %i.af = zext i16 %.val29 to i64
  %i.ag = getelementptr i8, ptr %.val30, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = shl i8 %i.ah, 2
  %i.aj = and i8 %i.ai, 60
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = lshr i16 %i.q, 2
  %i.am = and i16 %i.al, 60
  %i.an = zext nneg i16 %i.am to i32
  %narrow = add nuw nsw i16 %i.aa, %i.y
  %.neg32 = zext nneg i16 %narrow to i32
  %i.ao = sub nsw i32 %.neg32, %i.an
  %i.ap = add i32 %i.ao, %i.w
  %i.aq = add i32 %i.ap, %i.ac
  %i.ar = sub i32 %i.aq, %i.ak
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink34 = phi i64 [ 8, %bb.c ], [ 4, %bb.b ]
  %.sink = phi i32 [ %i.as, %bb.c ], [ %i.t, %bb.b ]
  %i.at = phi i16 [ 5200, %bb.c ], [ 1104, %bb.b ]
  %i.au = getelementptr i8, ptr %i.j, i64 %.sink34
  store i32 %.sink, ptr %i.au, align 4
  %i.av = zext i16 %.val to i64
  %i.aw = getelementptr i8, ptr %.val28, i64 %i.av ; 2 uses
  store i16 %i.at, ptr %i.o, align 4
  %i.ax = getelementptr i8, ptr %i.aw, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr i8, ptr %i.aw, i64 16
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call i32 asm "  addl $1, $0\0A  adcl $2, $0\0A  adcl $3, $0\0A  adcl $$0, $0\0A", "=r,imr,imr,imr,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ba, i32 %i.ay, i32 6656, i32 0) #10, !srcloc !13 ; 2 uses
  %i.bc = shl i32 %i.bb, 16
  %i.bd = and i32 %i.bb, -65536
  %i.be = tail call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bc, i32 %i.bd) #11, !srcloc !14
  %i.bf = xor i32 %i.be, -1
  %i.bg = lshr i32 %i.bf, 16
  %i.bh = trunc nuw i32 %i.bg to i16
  %i.bi = xor i16 %i.bh, -1
  %i.bj = getelementptr i8, ptr %i.j, i64 16
  store i16 %i.bi, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = or i8 %i.bl, 96
  store i8 %i.bm, ptr %i.bk, align 8
  %i.bn = load ptr, ptr %i.b, align 8
  %i.bo = ptrtoint ptr %i.j to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr i8, ptr %0, i64 140
  store i16 %i.br, ptr %i.bs, align 4
  %i.bt = getelementptr i8, ptr %0, i64 142
  store i16 16, ptr %i.bt, align 2
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @nf_reject_skb_v4_unreach(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 112        ; 5 uses
  %.val24.i = load i32, ptr %i.b, align 8         ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 116        ; 4 uses
  %.val25.i = load i32, ptr %i.c, align 4
  %i.d = sub i32 %.val24.i, %.val25.i             ; 2 uses
  %.not.i.i = icmp ult i32 %i.d, 20
  br i1 %.not.i.i, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %.val24.i, 20
  br i1 %i.e, label %pskb_may_pull_reason.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i32 20, %i.d
  %i.g = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.f) #8
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %pskb_may_pull_reason.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = getelementptr i8, ptr %1, i64 184        ; 7 uses
  %.val26.i = load i16, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %1, i64 200        ; 7 uses
  %.val27.i = load ptr, ptr %i.i, align 8         ; 2 uses
  %i.j = zext i16 %.val26.i to i64                ; 2 uses
  %i.k = getelementptr i8, ptr %.val27.i, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 4               ; 3 uses
  %i.m = and i8 %i.l, 15
  %i.n = icmp samesign ugt i8 %i.m, 4
  %.mask.i = and i8 %i.l, -16
  %.not.i71 = icmp eq i8 %.mask.i, 64
  %or.cond.i = and i1 %i.n, %.not.i71
  br i1 %or.cond.i, label %bb.e, label %pskb_may_pull_reason.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.k, i64 2
  %i.p = load i16, ptr %i.o, align 2
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = load i32, ptr %i.b, align 8              ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.r
  br i1 %i.t, label %pskb_may_pull_reason.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = shl i8 %i.l, 2
  %i.v = zext nneg i8 %i.u to i32                 ; 3 uses
  %i.w = icmp samesign ult i32 %i.r, %i.v
  br i1 %i.w, label %pskb_may_pull_reason.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val21.i = load i32, ptr %i.c, align 4
  %i.x = sub i32 %i.s, %.val21.i                  ; 2 uses
  %.not.i14.i = icmp ult i32 %i.x, %i.v
  br i1 %.not.i14.i, label %bb.h, label %nf_reject_iphdr_validate.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.y = sub nuw nsw i32 %i.v, %i.x
  %i.z = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.y) #8
  %.not9.i16.i = icmp eq ptr %i.z, null
  br i1 %.not9.i16.i, label %pskb_may_pull_reason.exit, label %.nf_reject_iphdr_validate.exit_crit_edge, !prof !10

.nf_reject_iphdr_validate.exit_crit_edge:         ; preds = %bb.h
  %.val63.pre = load i16, ptr %i.h, align 8
  %.val64.pre = load ptr, ptr %i.i, align 8
  %.pre90 = zext i16 %.val63.pre to i64
  br label %nf_reject_iphdr_validate.exit

nf_reject_iphdr_validate.exit:                    ; preds = %.nf_reject_iphdr_validate.exit_crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre90, %.nf_reject_iphdr_validate.exit_crit_edge ], [ %i.j, %bb.g ]
  %.val64 = phi ptr [ %.val64.pre, %.nf_reject_iphdr_validate.exit_crit_edge ], [ %.val27.i, %bb.g ]
  %i.aa = getelementptr i8, ptr %.val64, i64 %.pre-phi ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 6
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = and i16 %i.ac, -225
  %.not49 = icmp eq i16 %i.ad, 0
  br i1 %.not49, label %bb.i, label %pskb_may_pull_reason.exit

bb.i:                                             ; preds = %nf_reject_iphdr_validate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i8 0, ptr %i.a, align 1, !annotation !11
  %i.ae = getelementptr i8, ptr %i.aa, i64 9
  %i.af = load i8, ptr %i.ae, align 1
  %.not.i73 = icmp eq i8 %i.af, 1
  br i1 %.not.i73, label %bb.j, label %nf_skb_is_icmp_unreach.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %1, i64 208
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = ptrtoint ptr %i.aa to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = load i8, ptr %i.aa, align 4
  %i.an = shl i8 %i.am, 2
  %i.ao = and i8 %i.an, 60
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = add i32 %i.ap, %i.al                    ; 3 uses
  %.val.i = load i32, ptr %i.b, align 8
  %.val10.i = load i32, ptr %i.c, align 4
  %i.ar = add i32 %.val10.i, %i.aq
  %i.as = sub i32 %.val.i, %i.ar
  %.not.i.i75 = icmp slt i32 %i.as, 1
  br i1 %.not.i.i75, label %bb.k, label %__skb_header_pointer.exit.i, !prof !10

bb.k:                                             ; preds = %bb.j
  %.not13.i.i = icmp eq ptr %1, null
  br i1 %.not13.i.i, label %nf_skb_is_icmp_unreach.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %i.aq, ptr noundef nonnull %i.a, i32 noundef 1) #8
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %nf_skb_is_icmp_unreach.exit.thread, label %nf_skb_is_icmp_unreach.exit, !prof !10

__skb_header_pointer.exit.i:                      ; preds = %bb.j
  %i.av = sext i32 %i.aq to i64
  %i.aw = getelementptr i8, ptr %i.ah, i64 %i.av  ; 2 uses
  %.not9.i76 = icmp eq ptr %i.aw, null
  br i1 %.not9.i76, label %nf_skb_is_icmp_unreach.exit.thread, label %nf_skb_is_icmp_unreach.exit

nf_skb_is_icmp_unreach.exit.thread:               ; preds = %bb.i, %__skb_header_pointer.exit.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.m

nf_skb_is_icmp_unreach.exit:                      ; preds = %bb.l, %__skb_header_pointer.exit.i
  %.0.i20.i = phi ptr [ %i.aw, %__skb_header_pointer.exit.i ], [ %i.a, %bb.l ]
  %i.ax = load i8, ptr %.0.i20.i, align 1
  %i.ay = icmp eq i8 %i.ax, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %i.ay, label %pskb_may_pull_reason.exit, label %bb.m

bb.m:                                             ; preds = %nf_skb_is_icmp_unreach.exit.thread, %nf_skb_is_icmp_unreach.exit
  %i.az = load i32, ptr %i.b, align 8             ; 3 uses
  %i.ba = call i32 @llvm.umin.i32(i32 %i.az, i32 536) ; 6 uses
  %.val56 = load i32, ptr %i.c, align 4
  %i.bb = sub i32 %i.az, %.val56                  ; 2 uses
  %.not.i = icmp ugt i32 %i.ba, %i.bb
  br i1 %.not.i, label %bb.n, label %bb.o, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.bc = sub nuw nsw i32 %i.ba, %i.bb
  %i.bd = call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %i.bc) #8
  %.not9.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i, label %pskb_may_pull_reason.exit, label %._crit_edge, !prof !10

._crit_edge:                                      ; preds = %bb.n
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.m
  %i.be = phi i32 [ %.pre, %._crit_edge ], [ %i.az, %bb.m ]
  %.val61 = load i16, ptr %i.h, align 8
  %.val62 = load ptr, ptr %i.i, align 8           ; 2 uses
  %i.bf = zext i16 %.val61 to i64                 ; 2 uses
  %i.bg = getelementptr i8, ptr %.val62, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 2
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = call i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %.not.i77 = icmp ugt i32 %i.be, %i.bk
  br i1 %.not.i77, label %pskb_trim_rcsum.exit, label %pskb_trim_rcsum.exit.thread, !prof !10

pskb_trim_rcsum.exit:                             ; preds = %bb.o
  %i.bl = call i32 @pskb_trim_rcsum_slow(ptr noundef %1, i32 noundef range(i32 0, 65536) %i.bk) #8
  %.not50 = icmp eq i32 %i.bl, 0
  br i1 %.not50, label %pskb_trim_rcsum.exit.pskb_trim_rcsum.exit.thread_crit_edge, label %pskb_may_pull_reason.exit

pskb_trim_rcsum.exit.pskb_trim_rcsum.exit.thread_crit_edge: ; preds = %pskb_trim_rcsum.exit
  %.val67.pre = load i16, ptr %i.h, align 8
  %.val68.pre = load ptr, ptr %i.i, align 8
  %.pre91 = zext i16 %.val67.pre to i64
  br label %pskb_trim_rcsum.exit.thread

pskb_trim_rcsum.exit.thread:                      ; preds = %pskb_trim_rcsum.exit.pskb_trim_rcsum.exit.thread_crit_edge, %bb.o
  %.pre-phi92 = phi i64 [ %.pre91, %pskb_trim_rcsum.exit.pskb_trim_rcsum.exit.thread_crit_edge ], [ %i.bf, %bb.o ]
  %.val68 = phi ptr [ %.val68.pre, %pskb_trim_rcsum.exit.pskb_trim_rcsum.exit.thread_crit_edge ], [ %.val62, %bb.o ]
  %i.bm = getelementptr i8, ptr %.val68, i64 %.pre-phi92 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 9
  %i.bo = load i8, ptr %i.bn, align 1             ; 2 uses
  %i.bp = call fastcc i32 @skb_csum_unnecessary(ptr noundef %1) #9, !srcloc !15
  %.not51 = icmp eq i32 %i.bp, 0
  br i1 %.not51, label %bb.p, label %bb.r

bb.p:                                             ; preds = %pskb_trim_rcsum.exit.thread
  %i.bq = load i8, ptr %i.bm, align 4
  %i.br = shl i8 %i.bq, 2
  %i.bs = and i8 %i.br, 60
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = call fastcc zeroext i1 @nf_reject_verify_csum(ptr noundef %1, i32 noundef %i.bt, i8 noundef zeroext %i.bo) #9, !srcloc !16
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.val65 = load i16, ptr %i.h, align 8
  %.val66 = load ptr, ptr %i.i, align 8
  %i.bv = zext i16 %.val65 to i64
  %i.bw = getelementptr i8, ptr %.val66, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = shl i8 %i.bx, 2
  %i.bz = and i8 %i.by, 60
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = call zeroext i16 @nf_ip_checksum(ptr noundef %1, i32 noundef %3, i32 noundef %i.ca, i8 noundef zeroext %i.bo) #8
  %.not52 = icmp eq i16 %i.cb, 0
  br i1 %.not52, label %bb.r, label %pskb_may_pull_reason.exit

bb.r:                                             ; preds = %bb.q, %bb.p, %pskb_trim_rcsum.exit.thread
  %i.cc = add nuw nsw i32 %i.ba, 124
  %i.cd = call ptr @__alloc_skb(i32 noundef %i.cc, i32 noundef 2080, i32 noundef 0, i32 noundef -1) #8 ; 11 uses
  %.not53 = icmp eq ptr %i.cd, null
  br i1 %.not53, label %pskb_may_pull_reason.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  store ptr %2, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 208    ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %i.cg, i64 96
  store ptr %i.ch, ptr %i.cf, align 8
  %i.ci = getelementptr i8, ptr %i.cd, i64 188    ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = add i32 %i.cj, 96
  store i32 %i.ck, ptr %i.ci, align 4
  %i.cl = getelementptr i8, ptr %0, i64 1448
  %i.cm = load volatile i8, ptr %i.cl, align 8
  %i.cn = zext i8 %i.cm to i32
  %.val69 = load i16, ptr %i.h, align 8
  %.val70 = load ptr, ptr %i.i, align 8
  %i.co = call fastcc ptr @nf_reject_iphdr_put(ptr noundef %i.cd, i16 %.val69, ptr %.val70, i8 noundef zeroext 1, i32 noundef %i.cn) #9 ; 2 uses
  %i.cp = load ptr, ptr %i.cf, align 8
  %i.cq = getelementptr i8, ptr %i.cd, i64 200
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = trunc i64 %i.cu to i16
  %i.cw = getelementptr i8, ptr %i.cd, i64 182
  store i16 %i.cv, ptr %i.cw, align 2
  %i.cx = call noundef ptr @skb_put(ptr noundef nonnull %i.cd, i32 noundef 8) #8 ; 4 uses
  store i64 3, ptr %i.cx, align 1
  %i.cy = getelementptr i8, ptr %i.cx, i64 1
  store i8 %4, ptr %i.cy, align 1
  %.val57 = load i16, ptr %i.h, align 8
  %.val58 = load ptr, ptr %i.i, align 8
  %i.cz = zext i16 %.val57 to i64
  %i.da = getelementptr i8, ptr %.val58, i64 %i.cz
  %i.db = call ptr @skb_put(ptr noundef nonnull %i.cd, i32 noundef %i.ba) #8
  %i.dc = zext nneg i32 %i.ba to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr readonly align 1 %i.da, i64 %i.dc, i1 false)
  %narrow = add nuw nsw i32 %i.ba, 8
  %i.dd = call i32 @csum_partial(ptr noundef %i.cx, i32 noundef %narrow, i32 noundef 0) #8 ; 2 uses
  %i.de = shl i32 %i.dd, 16
  %i.df = and i32 %i.dd, -65536
  %i.dg = call i32 asm "  addl $1,$0\0A  adcl $$0xffff,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.de, i32 %i.df) #11, !srcloc !14
  %i.dh = xor i32 %i.dg, -1
  %i.di = lshr i32 %i.dh, 16
  %i.dj = trunc nuw i32 %i.di to i16
  %i.dk = getelementptr i8, ptr %i.cx, i64 2
  store i16 %i.dj, ptr %i.dk, align 2
  %i.dl = getelementptr i8, ptr %i.cd, i64 112
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = trunc i32 %i.dm to i16
  %i.do = call i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = getelementptr i8, ptr %i.co, i64 2
  store i16 %i.do, ptr %i.dp, align 2
  call void @ip_send_check(ptr noundef %i.co) #8
  br label %pskb_may_pull_reason.exit

pskb_may_pull_reason.exit:                        ; preds = %bb.h, %bb.c, %bb.b, %bb.f, %bb.e, %bb.d, %bb.n, %bb.r, %bb.q, %pskb_trim_rcsum.exit, %nf_skb_is_icmp_unreach.exit, %nf_reject_iphdr_validate.exit, %bb.s
  %.0 = phi ptr [ null, %bb.n ], [ null, %nf_reject_iphdr_validate.exit ], [ null, %bb.r ], [ %i.cd, %bb.s ], [ null, %bb.q ], [ null, %pskb_trim_rcsum.exit ], [ null, %nf_skb_is_icmp_unreach.exit ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal fastcc range(i32 0, 2) i32 @skb_csum_unnecessary(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8
  %i.c = lshr i8 %i.b, 5
  %i.d = and i8 %i.c, 3                           ; 2 uses
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 129
  %i.g = load i32, ptr %i.f, align 1
  %i.h = and i32 %i.g, 65536
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.d, 3
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 140
  %i.k = load i16, ptr %i.j, align 4
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr i8, ptr %0, i64 200
  %.val.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %0, i64 208
  %.val2.i = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %.val2.i to i64
  %i.p = ptrtoint ptr %.val.i to i64
  %.neg.i = sub i64 %i.p, %i.o
  %.neg3.i = trunc i64 %.neg.i to i32
  %i.q = add i32 %.neg3.i, %i.l
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = zext i1 %i.r to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %i.t = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ 0, %bb.c ], [ %i.s, %bb.d ]
  ret i32 %i.t
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @nf_reject_verify_csum(ptr noundef %0, i32 noundef range(i32 0, 61) %1, i8 noundef zeroext %2) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.udphdr, align 8             ; 5 uses
  switch i8 %2, label %bb.e [
    i8 17, label %bb.b
    i8 47, label %bb.f
    i8 51, label %bb.f
    i8 50, label %bb.f
    i8 -124, label %bb.f
    i8 -120, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !11
  %i.a = getelementptr i8, ptr %0, i64 112
  %.val = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 116
  %.val7 = load i32, ptr %i.b, align 4
  %i.c = add i32 %1, %.val7
  %i.d = sub i32 %.val, %i.c
  %.not.i = icmp slt i32 %i.d, 8
  br i1 %.not.i, label %bb.c, label %__skb_header_pointer.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  %.not13.i = icmp eq ptr %0, null
  br i1 %.not13.i, label %__skb_header_pointer.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 8) #8
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread10, !prof !10

__skb_header_pointer.exit:                        ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %__skb_header_pointer.exit.thread, label %__skb_header_pointer.exit.thread10

__skb_header_pointer.exit.thread10:               ; preds = %bb.d, %__skb_header_pointer.exit
  %.0.i13 = phi ptr [ %i.j, %__skb_header_pointer.exit ], [ %3, %bb.d ]
  %i.k = getelementptr i8, ptr %.0.i13, i64 6
  %i.l = load i16, ptr %i.k, align 2
  %.not6 = icmp ne i16 %i.l, 0
  br label %__skb_header_pointer.exit.thread

__skb_header_pointer.exit.thread:                 ; preds = %bb.d, %bb.c, %__skb_header_pointer.exit.thread10, %__skb_header_pointer.exit
  %.0 = phi i1 [ true, %__skb_header_pointer.exit ], [ %.not6, %__skb_header_pointer.exit.thread10 ], [ true, %bb.c ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %__skb_header_pointer.exit.thread
  %.1 = phi i1 [ true, %bb.e ], [ %.0, %__skb_header_pointer.exit.thread ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i16 @nf_ip_checksum(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_send_reset(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.flowi, align 8              ; 6 uses
  %5 = alloca %struct.tcphdr, align 4             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false), !annotation !11
  %6 = getelementptr i8, ptr %2, i64 184          ; 4 uses
  %.val18.i = load i16, ptr %6, align 8
  %7 = getelementptr i8, ptr %2, i64 200          ; 4 uses
  %.val19.i = load ptr, ptr %7, align 8
  %8 = zext i16 %.val18.i to i64
  %9 = getelementptr i8, ptr %.val19.i, i64 %8    ; 3 uses
  %10 = getelementptr i8, ptr %9, i64 6
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, -225
  %.not = icmp eq i16 %12, 0
  br i1 %.not, label %13, label %bb.o

13:                                               ; preds = %bb.a
  %14 = getelementptr i8, ptr %9, i64 9
  %15 = load i8, ptr %14, align 1
  %.not12.i = icmp eq i8 %15, 6
  br i1 %.not12.i, label %16, label %bb.o

16:                                               ; preds = %13
  %17 = load i8, ptr %9, align 4
  %18 = shl i8 %17, 2
  %19 = and i8 %18, 60                            ; 2 uses
  %20 = zext nneg i8 %19 to i32                   ; 2 uses
  %21 = getelementptr i8, ptr %2, i64 112
  %.val.i = load i32, ptr %21, align 8
  %22 = getelementptr i8, ptr %2, i64 116
  %.val15.i = load i32, ptr %22, align 4
  %23 = add i32 %.val15.i, %20
  %24 = sub i32 %.val.i, %23
  %.not.i.i = icmp slt i32 %24, 20
  br i1 %.not.i.i, label %25, label %__skb_header_pointer.exit.i, !prof !10

25:                                               ; preds = %16
  %.not13.i.i = icmp eq ptr %2, null
  br i1 %.not13.i.i, label %bb.o, label %26

26:                                               ; preds = %25
  %27 = call i32 @skb_copy_bits(ptr noundef nonnull %2, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 20) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %bb.o, label %__skb_header_pointer.exit.i.thread, !prof !10

__skb_header_pointer.exit.i:                      ; preds = %16
  %29 = getelementptr i8, ptr %2, i64 208
  %30 = load ptr, ptr %29, align 8
  %31 = zext nneg i8 %19 to i64
  %32 = getelementptr i8, ptr %30, i64 %31        ; 2 uses
  %33 = icmp eq ptr %32, null
  br i1 %33, label %bb.o, label %__skb_header_pointer.exit.i.thread

__skb_header_pointer.exit.i.thread:               ; preds = %26, %__skb_header_pointer.exit.i
  %.0.i.i51 = phi ptr [ %32, %__skb_header_pointer.exit.i ], [ %5, %26 ] ; 2 uses
  %34 = getelementptr i8, ptr %.0.i.i51, i64 12
  %35 = load i16, ptr %34, align 4
  %36 = and i16 %35, 1024
  %.not13.i = icmp eq i16 %36, 0
  br i1 %.not13.i, label %37, label %bb.o

37:                                               ; preds = %__skb_header_pointer.exit.i.thread
  %.val20.i = load i16, ptr %6, align 8
  %.val21.i = load ptr, ptr %7, align 8
  %38 = zext i16 %.val20.i to i64
  %39 = getelementptr i8, ptr %.val21.i, i64 %38
  %40 = load i8, ptr %39, align 4
  %41 = shl i8 %40, 2
  %42 = and i8 %41, 60
  %43 = zext nneg i8 %42 to i32
  %44 = call zeroext i16 @nf_ip_checksum(ptr noundef %2, i32 noundef %3, i32 noundef %43, i8 noundef zeroext 6) #8
  %.not14.i = icmp eq i16 %44, 0
  br i1 %.not14.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %37
  %i.b = getelementptr i8, ptr %2, i64 88         ; 3 uses
  %.val41 = load i64, ptr %i.b, align 8           ; 2 uses
  %.not32 = icmp ult i64 %.val41, 2
  br i1 %.not32, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i64 88, i1 false)
  %.val.i.a = load i16, ptr %6, align 8
  %.val4.i = load ptr, ptr %7, align 8
  %i.c = zext i16 %.val.i.a to i64
  %i.d = getelementptr i8, ptr %.val4.i, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 264
  %.val5.i = load ptr, ptr %i.j, align 8
  %i.k = call i32 @nf_ip_route(ptr noundef %.val5.i, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i1 noundef zeroext false) #8 ; 0 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %nf_reject_fill_skb_dst.exit.thread, label %nf_reject_fill_skb_dst.exit

nf_reject_fill_skb_dst.exit.thread:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.o

nf_reject_fill_skb_dst.exit:                      ; preds = %bb.c
  %i.m = getelementptr i8, ptr %2, i64 129        ; 2 uses
  %i.n = load i32, ptr %i.m, align 1
  %i.o = or i32 %i.n, 2097152
  store i32 %i.o, ptr %i.m, align 1
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
  store i64 %i.p, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %nf_reject_fill_skb_dst.exit, %bb.b
  %.val42 = phi i64 [ %i.p, %nf_reject_fill_skb_dst.exit ], [ %.val41, %bb.b ]
  %i.q = and i64 %.val42, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 140
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 805306368
  %.not33 = icmp eq i32 %i.u, 0
  br i1 %.not33, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.v = call ptr @__alloc_skb(i32 noundef 136, i32 noundef 2080, i32 noundef 0, i32 noundef -1) #8 ; 17 uses
  %.not34 = icmp eq ptr %i.v, null
  br i1 %.not34, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val40 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.w = and i64 %.val40, -2                      ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %.not.i44 = icmp eq i64 %i.w, 0
  %i.y = getelementptr i8, ptr %i.v, i64 129      ; 2 uses
  %i.z = load i32, ptr %i.y, align 1              ; 2 uses
  %.mask.i = and i32 %i.z, 2097152
  %i.aa = select i1 %.not.i44, i32 %.mask.i, i32 2097152
  %i.ab = and i32 %i.z, -2097153
  %i.ac = or disjoint i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %i.y, align 1
  %i.ad = or i64 %.val40, 1
  %i.ae = getelementptr i8, ptr %i.v, i64 88      ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %0, i64 1462
  %i.ag = load volatile i8, ptr %i.af, align 2
  %.not35 = icmp eq i8 %i.ag, 0
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %2, i64 168
  %i.ai = load i32, ptr %i.ah, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aj = phi i32 [ %i.ai, %bb.g ], [ 0, %bb.f ]
  %i.ak = getelementptr i8, ptr %i.v, i64 168
  store i32 %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %i.v, i64 208     ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 96     ; 2 uses
  store ptr %i.an, ptr %i.al, align 8
  %i.ao = getelementptr i8, ptr %i.v, i64 188     ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, 96
  store i32 %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr i8, ptr %i.x, i64 16
  %.val.i45 = load i64, ptr %i.ar, align 8
  %i.as = and i64 %.val.i45, -4
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr i8, ptr %i.at, i64 36
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.i, label %ip4_dst_hoplimit.exit

bb.i:                                             ; preds = %bb.h
  call void @__rcu_read_lock() #8
  %i.ax = load volatile ptr, ptr %i.x, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 264
  %i.az = load volatile ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 1448
  %i.bb = load volatile i8, ptr %i.ba, align 8
  %i.bc = zext i8 %i.bb to i32
  call void @__rcu_read_unlock() #8
  %.pre = load ptr, ptr %i.al, align 8
  br label %ip4_dst_hoplimit.exit

ip4_dst_hoplimit.exit:                            ; preds = %bb.h, %bb.i
  %i.bd = phi ptr [ %.pre, %bb.i ], [ %i.an, %bb.h ]
  %.0.i46 = phi i32 [ %i.bc, %bb.i ], [ %i.av, %bb.h ]
  %.val = load i16, ptr %6, align 8
  %.val37 = load ptr, ptr %7, align 8
  %i.be = zext i16 %.val to i64
  %i.bf = getelementptr i8, ptr %.val37, i64 %i.be ; 2 uses
  %i.bg = getelementptr i8, ptr %i.v, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = trunc i64 %i.bk to i16
  %i.bm = getelementptr i8, ptr %i.v, i64 184
  store i16 %i.bl, ptr %i.bm, align 8
  %i.bn = call ptr @skb_put(ptr noundef nonnull %i.v, i32 noundef 20) #8 ; 9 uses
  store i8 69, ptr %i.bn, align 4
  %i.bo = getelementptr i8, ptr %i.bn, i64 1
  store i8 0, ptr %i.bo, align 1
  %i.bp = getelementptr i8, ptr %i.bn, i64 4
  store i16 0, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %i.bn, i64 6
  store i16 64, ptr %i.bq, align 2
  %i.br = getelementptr i8, ptr %i.bn, i64 9
  store i8 6, ptr %i.br, align 1
  %i.bs = getelementptr i8, ptr %i.bn, i64 10
  store i16 0, ptr %i.bs, align 2
  %i.bt = getelementptr i8, ptr %i.bf, i64 12
  %i.bu = getelementptr i8, ptr %i.bf, i64 16
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr i8, ptr %i.bn, i64 12
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = load i32, ptr %i.bt, align 4
  %i.by = getelementptr i8, ptr %i.bn, i64 16
  store i32 %i.bx, ptr %i.by, align 4
  %i.bz = trunc i32 %.0.i46 to i8
  %i.ca = getelementptr i8, ptr %i.bn, i64 8
  store i8 %i.bz, ptr %i.ca, align 4
  %i.cb = getelementptr i8, ptr %i.v, i64 180
  store i16 8, ptr %i.cb, align 4
  call fastcc void @nf_reject_ip_tcphdr_put(ptr noundef %i.v, ptr noundef %2, ptr noundef %.0.i.i51) #9, !srcloc !17
  %i.cc = call i32 @ip_route_me_harder(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.v, i32 noundef 0) #8
  %.not36 = icmp eq i32 %i.cc, 0
  br i1 %.not36, label %bb.j, label %bb.n

bb.j:                                             ; preds = %ip4_dst_hoplimit.exit
  %i.cd = getelementptr i8, ptr %i.v, i64 112
  %i.ce = load i32, ptr %i.cd, align 8
  %.val38 = load i64, ptr %i.ae, align 8
  %i.cf = and i64 %.val38, -2
  %i.cg = inttoptr i64 %i.cf to ptr               ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 32           ; 2 uses
  %i.cl = icmp eq ptr %i.ck, @ipv4_mtu
  br i1 %i.cl, label %bb.k, label %bb.l, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.cm = call i32 @ipv4_mtu(ptr noundef %i.cg) #8
  br label %dst4_mtu.exit

bb.l:                                             ; preds = %bb.j
  %i.cn = call i32 %i.ck(ptr noundef %i.cg) #8, !inline_history !19
  br label %dst4_mtu.exit

dst4_mtu.exit:                                    ; preds = %bb.k, %bb.l
  %i.co = phi i32 [ %i.cm, %bb.k ], [ %i.cn, %bb.l ]
  %i.cp = icmp ugt i32 %i.ce, %i.co
  br i1 %i.cp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %dst4_mtu.exit
  call void @nf_ct_attach(ptr noundef nonnull %i.v, ptr noundef %2) #8
  %i.cq = getelementptr i8, ptr %2, i64 104
  %.val43 = load i64, ptr %i.cq, align 8
  %i.cr = and i64 %.val43, -8
  %i.cs = inttoptr i64 %i.cr to ptr
  call void @nf_ct_set_closing(ptr noundef %i.cs) #8
  %i.ct = getelementptr i8, ptr %i.v, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call i32 @ip_local_out(ptr noundef %0, ptr noundef %i.cu, ptr noundef nonnull %i.v) #8 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %dst4_mtu.exit, %ip4_dst_hoplimit.exit
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %i.v, i32 noundef 2) #8
  br label %bb.o

bb.o:                                             ; preds = %26, %25, %37, %__skb_header_pointer.exit.i, %13, %bb.a, %__skb_header_pointer.exit.i.thread, %nf_reject_fill_skb_dst.exit.thread, %bb.e, %bb.d, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip_route_me_harder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_ct_attach(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nf_ct_set_closing(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ip_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nf_send_unreach(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.udphdr, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.flowi, align 8              ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 184
  %.val = load i16, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %.val19 = load ptr, ptr %i.c, align 8
  %i.d = zext i16 %.val to i64
  %i.e = getelementptr i8, ptr %.val19, i64 %i.d  ; 4 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = shl i8 %i.f, 2
  %i.h = and i8 %i.g, 60                          ; 2 uses
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = getelementptr i8, ptr %i.e, i64 9
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = getelementptr i8, ptr %i.e, i64 6
  %i.m = load i16, ptr %i.l, align 2
  %i.n = and i16 %i.m, -225
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %.val22 = load i64, ptr %i.o, align 8
  %.not17 = icmp ult i64 %.val22, 2
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i64 88, i1 false)
  %i.p = getelementptr i8, ptr %i.e, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 264
  %.val5.i = load ptr, ptr %i.u, align 8
  %i.v = call i32 @nf_ip_route(ptr noundef %.val5.i, ptr noundef nonnull %i.a, ptr noundef nonnull %4, i1 noundef zeroext false) #8 ; 0 uses
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %nf_reject_fill_skb_dst.exit.thread, label %nf_reject_fill_skb_dst.exit

nf_reject_fill_skb_dst.exit.thread:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.k

nf_reject_fill_skb_dst.exit:                      ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 129        ; 2 uses
  %i.y = load i32, ptr %i.x, align 1
  %i.z = or i32 %i.y, 2097152
  store i32 %i.z, ptr %i.x, align 1
  %i.aa = ptrtoint ptr %i.w to i64
  store i64 %i.aa, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %nf_reject_fill_skb_dst.exit, %bb.b
  %i.ab = getelementptr i8, ptr %0, i64 128
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = lshr i8 %i.ac, 5
  %i.ae = and i8 %i.ad, 3                         ; 2 uses
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %skb_csum_unnecessary.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %0, i64 129
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = and i32 %i.ah, 65536
  %.not.i23 = icmp eq i32 %i.ai, 0
  br i1 %.not.i23, label %bb.f, label %skb_csum_unnecessary.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp eq i8 %i.ae, 3
  br i1 %i.aj, label %skb_csum_unnecessary.exit, label %skb_csum_unnecessary.exit.thread29

skb_csum_unnecessary.exit:                        ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %0, i64 140
  %i.al = load i16, ptr %i.ak, align 4
  %i.am = zext i16 %i.al to i32
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.an = getelementptr i8, ptr %0, i64 208
  %.val2.i.i = load ptr, ptr %i.an, align 8
  %i.ao = ptrtoint ptr %.val2.i.i to i64
  %i.ap = ptrtoint ptr %.val.i.i to i64
  %.neg.i.i = sub i64 %i.ap, %i.ao
  %.neg3.i.i = trunc i64 %.neg.i.i to i32
  %i.aq = add i32 %.neg3.i.i, %i.am
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %skb_csum_unnecessary.exit.thread29, label %skb_csum_unnecessary.exit.thread

skb_csum_unnecessary.exit.thread29:               ; preds = %bb.f, %skb_csum_unnecessary.exit
  switch i8 %i.k, label %nf_reject_verify_csum.exit.thread [
    i8 17, label %bb.g
    i8 47, label %skb_csum_unnecessary.exit.thread
    i8 51, label %skb_csum_unnecessary.exit.thread
    i8 50, label %skb_csum_unnecessary.exit.thread
    i8 -124, label %skb_csum_unnecessary.exit.thread
    i8 -120, label %skb_csum_unnecessary.exit.thread
  ]

bb.g:                                             ; preds = %skb_csum_unnecessary.exit.thread29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !11
  %i.as = getelementptr i8, ptr %0, i64 112
  %.val.i24 = load i32, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %0, i64 116
  %.val7.i = load i32, ptr %i.at, align 4
  %i.au = add i32 %.val7.i, %i.i
  %i.av = sub i32 %.val.i24, %i.au
  %.not.i.i = icmp slt i32 %i.av, 8
  br i1 %.not.i.i, label %bb.h, label %__skb_header_pointer.exit.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %.not13.i.i = icmp eq ptr %0, null
  br i1 %.not13.i.i, label %nf_reject_verify_csum.exit.thread35, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef range(i32 0, 61) %i.i, ptr noundef nonnull %3, i32 noundef 8) #8
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %nf_reject_verify_csum.exit.thread35, label %nf_reject_verify_csum.exit, !prof !10

__skb_header_pointer.exit.i:                      ; preds = %bb.g
  %i.ay = getelementptr i8, ptr %0, i64 208
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = zext nneg i8 %i.h to i64
  %i.bb = getelementptr i8, ptr %i.az, i64 %i.ba  ; 2 uses
  %.not.i25 = icmp eq ptr %i.bb, null
  br i1 %.not.i25, label %nf_reject_verify_csum.exit.thread35, label %nf_reject_verify_csum.exit

nf_reject_verify_csum.exit.thread35:              ; preds = %__skb_header_pointer.exit.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %nf_reject_verify_csum.exit.thread

nf_reject_verify_csum.exit:                       ; preds = %bb.i, %__skb_header_pointer.exit.i
  %.0.i13.i = phi ptr [ %i.bb, %__skb_header_pointer.exit.i ], [ %3, %bb.i ]
  %i.bc = getelementptr i8, ptr %.0.i13.i, i64 6
  %i.bd = load i16, ptr %i.bc, align 2
  %.not6.i.not = icmp eq i16 %i.bd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br i1 %.not6.i.not, label %skb_csum_unnecessary.exit.thread, label %nf_reject_verify_csum.exit.thread

skb_csum_unnecessary.exit.thread:                 ; preds = %skb_csum_unnecessary.exit.thread29, %skb_csum_unnecessary.exit.thread29, %skb_csum_unnecessary.exit.thread29, %skb_csum_unnecessary.exit.thread29, %skb_csum_unnecessary.exit.thread29, %bb.d, %bb.e, %nf_reject_verify_csum.exit, %skb_csum_unnecessary.exit
  %i.be = getelementptr i8, ptr %0, i64 40
  call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef %1, i32 noundef 0, ptr noundef %i.be) #8
  br label %bb.k

nf_reject_verify_csum.exit.thread:                ; preds = %skb_csum_unnecessary.exit.thread29, %nf_reject_verify_csum.exit.thread35, %nf_reject_verify_csum.exit
  %i.bf = call zeroext i16 @nf_ip_checksum(ptr noundef %0, i32 noundef %2, i32 noundef %i.i, i8 noundef zeroext %i.k) #8
  %i.bg = icmp eq i16 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %nf_reject_verify_csum.exit.thread
  %i.bh = getelementptr i8, ptr %0, i64 40
  call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef %1, i32 noundef 0, ptr noundef %i.bh) #8
  br label %bb.k

bb.k:                                             ; preds = %nf_reject_fill_skb_dst.exit.thread, %nf_reject_verify_csum.exit.thread, %bb.j, %bb.a, %skb_csum_unnecessary.exit.thread
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nf_ip_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ipv4_mtu(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sk_skb_reason_drop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { noredzone "no-builtin-wcslen" }
attributes #10 = { nounwind memory(read) }
attributes #11 = { nounwind memory(none) }

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
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{i64 1818}
!13 = !{i64 8543933, i64 8543957, i64 8543980, i64 8544003}
!14 = !{i64 8542184, i64 8542207}
!15 = !{i64 3258}
!16 = !{i64 3295}
!17 = !{i64 7270}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = distinct !{null}
end_hunk_0
