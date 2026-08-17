inline.NumInlined: 184
inline.NumDeleted: 73
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ip6_datagram_release_cb: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ip6_datagram_release_cb ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol___ip6_datagram_connect: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad __ip6_datagram_connect ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ip6_datagram_connect: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ip6_datagram_connect ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ip6_datagram_connect_v6_only: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ip6_datagram_connect_v6_only ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ipv6_icmp_error: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ipv6_icmp_error ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ipv6_recv_error: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ipv6_recv_error ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ip6_datagram_recv_ctl: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ip6_datagram_recv_ctl ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ip6_datagram_send_ctl: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ip6_datagram_send_ctl ; .previous"

%struct.in6_addr = type { %union.anon.4 }
%union.anon.4 = type { [4 x i32] }
%struct.static_key_false_deferred = type { %struct.static_key_false, i64, %struct.delayed_work }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.78 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%struct.anon.69 = type { %struct.sock_extended_err, %struct.sockaddr_in6 }
%struct.sock_extended_err = type { i32, i8, i8, i8, i8, i32, %union.anon.59 }
%union.anon.59 = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.ip6_mtuinfo = type { %struct.sockaddr_in6, i32 }

@__UNIQUE_ID_addressable_ip6_datagram_release_cb_1146 = internal global ptr @ip6_datagram_release_cb, section ".discard.addressable", align 8
@in6addr_loopback = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@__UNIQUE_ID_addressable___ip6_datagram_connect_1150 = internal global ptr @__ip6_datagram_connect, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ip6_datagram_connect_1151 = internal global ptr @ip6_datagram_connect, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ip6_datagram_connect_v6_only_1153 = internal global ptr @ip6_datagram_connect_v6_only, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ipv6_icmp_error_1154 = internal global ptr @ipv6_icmp_error, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ipv6_recv_error_1156 = internal global ptr @ipv6_recv_error, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ip6_datagram_recv_ctl_1158 = internal global ptr @ip6_datagram_recv_ctl, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ip6_datagram_send_ctl_1160 = internal global ptr @ip6_datagram_send_ctl, section ".discard.addressable", align 8
@.str = private unnamed_addr constant [104 x i8] c"%5d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %llu %d %pK %u\0A\00", align 1
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"include/linux/skbuff.h\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_addressable___ip6_datagram_connect_1150, ptr @__UNIQUE_ID_addressable_ip6_datagram_connect_1151, ptr @__UNIQUE_ID_addressable_ip6_datagram_connect_v6_only_1153, ptr @__UNIQUE_ID_addressable_ip6_datagram_recv_ctl_1158, ptr @__UNIQUE_ID_addressable_ip6_datagram_release_cb_1146, ptr @__UNIQUE_ID_addressable_ip6_datagram_send_ctl_1160, ptr @__UNIQUE_ID_addressable_ipv6_icmp_error_1154, ptr @__UNIQUE_ID_addressable_ipv6_recv_error_1156], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ip6_datagram_dst_update(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i.i = alloca i32, align 4              ; 3 uses
  %i.a = getelementptr i8, ptr %0, i64 18         ; 2 uses
  %i.b = load volatile i8, ptr %i.a, align 2
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = and i32 %i.d, -4161
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %inet6_sk.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 776
  %i.g = load ptr, ptr %i.f, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.i = getelementptr i8, ptr %0, i64 792
  %i.j = load volatile i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 536870912
  %.not80 = icmp eq i64 %i.k, 0
  br i1 %.not80, label %fl6_sock_lookup.exit.thread, label %bb.c

bb.c:                                             ; preds = %inet6_sk.exit
  %i.l = getelementptr i8, ptr %i.h, i64 32
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = and i32 %i.m, -61696
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %fl6_sock_lookup.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @ipv6_flowlabel_exclusive, i1 false) #5
          to label %fl6_sock_lookup.exit.thread [label %bb.e], !srcloc !10

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val.i, i64 2456
  %i.q = load volatile i8, ptr %i.p, align 8
  %.not.i70 = icmp eq i8 %i.q, 0
  br i1 %.not.i70, label %fl6_sock_lookup.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__fl6_sock_lookup(ptr noundef %0, i32 noundef %i.m) #6 ; 3 uses
  %.not7.i = icmp eq ptr %i.r, null
  %i.s = icmp ugt ptr %i.r, inttoptr (i64 -4096 to ptr)
  %or.cond = or i1 %.not7.i, %i.s
  br i1 %or.cond, label %fl6_sock_release.exit, label %fl6_sock_lookup.exit.thread

fl6_sock_lookup.exit.thread:                      ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %inet6_sk.exit
  %.059 = phi ptr [ %i.r, %bb.f ], [ null, %bb.c ], [ null, %bb.e ], [ null, %inet6_sk.exit ], [ null, %bb.d ] ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 920        ; 6 uses
  %i.u = load volatile i8, ptr %i.a, align 2
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, -4161
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %inet6_sk.exit.i, label %bb.g

bb.g:                                             ; preds = %fl6_sock_lookup.exit.thread
  %i.y = getelementptr i8, ptr %0, i64 776
  %i.z = load ptr, ptr %i.y, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %bb.g, %fl6_sock_lookup.exit.thread
  %i.aa = phi ptr [ %i.z, %bb.g ], [ null, %fl6_sock_lookup.exit.thread ] ; 5 uses
  %i.ab = getelementptr i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(88) %i.t, i8 0, i64 88, i1 false)
  %i.ad = getelementptr i8, ptr %0, i64 532
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = trunc i16 %i.ae to i8
  %i.ag = getelementptr i8, ptr %0, i64 938
  store i8 %i.af, ptr %i.ag, align 2
  %i.ah = getelementptr i8, ptr %0, i64 960       ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ah, ptr noundef align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr i8, ptr %0, i64 976       ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.aj, ptr noundef align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.ak = getelementptr i8, ptr %0, i64 524
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr i8, ptr %0, i64 932
  store i32 %i.al, ptr %i.am, align 4
  %i.an = getelementptr i8, ptr %0, i64 12
  %i.ao = load i16, ptr %i.an, align 4
  %i.ap = getelementptr i8, ptr %0, i64 996
  store i16 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %0, i64 806
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = getelementptr i8, ptr %0, i64 998
  store i16 %i.ar, ptr %i.as, align 2
  %i.at = getelementptr i8, ptr %i.aa, i64 51
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr i8, ptr %i.aa, i64 32
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = shl nuw nsw i32 %i.av, 20
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.ba = or i32 %i.az, %i.ax
  %i.bb = getelementptr i8, ptr %0, i64 992
  store i32 %i.ba, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %0, i64 944
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.bd = getelementptr i8, ptr %0, i64 528
  %.sroa.0.0.copyload.i.i = load volatile i32, ptr %i.bd, align 8 ; 2 uses
  store volatile i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.0.i.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.bc, align 8
  %.not.i71 = icmp eq i32 %i.ac, 0
  br i1 %.not.i71, label %bb.h, label %ip6_datagram_flow_key_init.exit

bb.h:                                             ; preds = %inet6_sk.exit.i
  %i.be = getelementptr i8, ptr %i.aa, i64 92
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %.not35.i = icmp eq i32 %i.bf, 0
  br i1 %.not35.i, label %bb.i, label %ip6_datagram_flow_key_init.exit

bb.i:                                             ; preds = %bb.h
  %.val.i72 = load i32, ptr %i.ah, align 8
  %i.bg = and i32 %.val.i72, 255
  %i.bh = icmp eq i32 %i.bg, 255
  %..i = select i1 %i.bh, i64 64, i64 60
  %2 = getelementptr i8, ptr %i.aa, i64 %..i
  %3 = load volatile i32, ptr %2, align 4
  br label %ip6_datagram_flow_key_init.exit

ip6_datagram_flow_key_init.exit:                  ; preds = %inet6_sk.exit.i, %bb.h, %bb.i
  %.1.i = phi i32 [ %i.bf, %bb.h ], [ %i.ac, %inet6_sk.exit.i ], [ %3, %bb.i ]
  store i32 %.1.i, ptr %i.t, align 8
  tail call void @security_sk_classify_flow(ptr noundef %0, ptr noundef %i.t) #6
  tail call void @__rcu_read_lock() #6
  %.not62 = icmp eq ptr %.059, null               ; 2 uses
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %ip6_datagram_flow_key_init.exit
  %i.bi = getelementptr i8, ptr %.059, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %bb.l

bb.k:                                             ; preds = %ip6_datagram_flow_key_init.exit
  %i.bk = getelementptr i8, ptr %i.h, i64 40
  %i.bl = load volatile ptr, ptr %i.bk, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = phi ptr [ %i.bj, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  %.not.i73 = icmp eq ptr %i.bm, null
  br i1 %.not.i73, label %fl6_update_dst.exit, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr i8, ptr %i.h, i64 16
  %i.bo = tail call ptr @__fl6_update_dst(ptr noundef %i.t, ptr noundef nonnull %i.bm, ptr noundef %i.bn) #6
  br label %fl6_update_dst.exit

fl6_update_dst.exit:                              ; preds = %bb.l, %bb.m
  %.0.i74 = phi ptr [ %i.bo, %bb.m ], [ null, %bb.l ]
  tail call void @__rcu_read_unlock() #6
  %i.bp = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.bp, align 8
  %i.bq = tail call ptr @ip6_dst_lookup_flow(ptr noundef %.val, ptr noundef %0, ptr noundef %i.t, ptr noundef %.0.i74) #6 ; 3 uses
  %i.br = icmp ugt ptr %i.bq, inttoptr (i64 -4096 to ptr)
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %fl6_update_dst.exit
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = trunc i64 %i.bs to i32
  br label %bb.v

bb.o:                                             ; preds = %fl6_update_dst.exit
  br i1 %1, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %.val68 = load i64, ptr %i.h, align 8
  %i.bu = getelementptr i8, ptr %i.h, i64 8
  %.val69 = load i64, ptr %i.bu, align 8
  %i.bv = or i64 %.val69, %.val68
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.h, ptr noundef align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bx = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %.val66 = load i64, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %0, i64 80
  %.val67 = load i64, ptr %i.by, align 8
  %i.bz = or i64 %.val67, %.val66
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bx, ptr noundef align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.cb = getelementptr i8, ptr %0, i64 4
  store i32 100663423, ptr %i.cb, align 4
  %i.cc = getelementptr i8, ptr %0, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 184
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not63 = icmp eq ptr %i.cf, null
  br i1 %.not63, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void %i.cf(ptr noundef %0) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s, %bb.o
  tail call void @ip6_sk_dst_store_flow(ptr noundef %0, ptr noundef %i.bq, ptr noundef %i.t) #6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n
  %.060 = phi i32 [ %i.bt, %bb.n ], [ 0, %bb.u ]  ; 2 uses
  br i1 %.not62, label %fl6_sock_release.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr i8, ptr %.059, i64 12     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cg, ptr elementtype(i32) %i.cg) #5, !srcloc !12
  br label %fl6_sock_release.exit

fl6_sock_release.exit:                            ; preds = %bb.f, %bb.w, %bb.v
  %.0 = phi i32 [ %.060, %bb.w ], [ -22, %bb.f ], [ %.060, %bb.v ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ip6_sk_dst_store_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ip6_datagram_release_cb(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 64
  %.val10 = load i32, ptr %i.b, align 8
  %i.c = xor i32 %.val10, -65536
  %i.d = zext i32 %i.c to i64
  %i.e = or i64 %.val, %i.d
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__rcu_read_lock() #6
  %i.g = getelementptr i8, ptr %0, i64 536
  %i.h = load volatile ptr, ptr %i.g, align 8     ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 58
  %i.j = load volatile i16, ptr %i.i, align 2
  %.not8 = icmp eq i16 %i.j, 0
  br i1 %.not8, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 16
  %i.o = getelementptr i8, ptr %0, i64 18
  %i.p = load volatile i8, ptr %i.o, align 2
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw i32 1, %i.q
  %i.s = and i32 %i.r, -4161
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %inet6_sk.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %0, i64 776
  %i.u = load ptr, ptr %i.t, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %i.u, %bb.e ], [ null, %bb.d ]
  %i.w = getelementptr i8, ptr %i.v, i64 36
  %i.x = load i32, ptr %i.w, align 4
  %i.y = tail call ptr %i.n(ptr noundef nonnull %i.h, i32 noundef %i.x) #6
  %.not9 = icmp eq ptr %i.y, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %inet6_sk.exit, %bb.c, %bb.b
  tail call void @__rcu_read_unlock() #6
  br label %bb.h

bb.g:                                             ; preds = %inet6_sk.exit
  tail call void @__rcu_read_unlock() #6
  %i.z = tail call i32 @ip6_datagram_dst_update(ptr noundef %0, i1 noundef zeroext false) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @__ip6_datagram_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0 = alloca [4 x i32], align 4            ; 5 uses
  %3 = alloca %struct.sockaddr_in, align 4        ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 18         ; 2 uses
  %i.b = load volatile i8, ptr %i.a, align 2
  %i.c = zext nneg i8 %i.b to i32
  %i.d = shl nuw i32 1, %i.c
  %i.e = and i32 %i.d, -4161
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %inet6_sk.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 776
  %i.g = load ptr, ptr %i.f, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, i8 0, i64 16, i1 false)
  %i.i = load i16, ptr %1, align 4                ; 2 uses
end_hunk_0
