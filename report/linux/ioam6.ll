Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ioam6?download=true
inline.NumInlined: 293
inline.NumDeleted: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i8, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.list_head = type { ptr, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.static_call_key = type { ptr, %union.anon.38 }
%union.anon.38 = type { i64 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.35 }
%union.anon.35 = type { ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.94 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { i64 }
%struct.lock_class_key = type {}
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"net/ipv6/ioam6.c\00", align 1
@rht_ns_params = internal constant %struct.rhashtable_params { i16 0, i16 2, i16 32, i16 0, i32 0, i16 0, i8 0, i8 1, ptr null, ptr null, ptr @ioam6_ns_cmpfn }, align 8
@ioam6_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ioam6_net_init, ptr null, ptr @ioam6_net_exit, ptr null, ptr null, ptr null, i64 0 }, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"\016In-situ OAM (IOAM) with IPv6\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"include/net/genetlink.h\00", align 1
@ioam6_genl_ops = internal constant [7 x %struct.genl_ops] [%struct.genl_ops { ptr @ioam6_genl_addns, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_addns, i32 3, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_delns, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_delns, i32 1, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr @ioam6_genl_dumpns_start, ptr @ioam6_genl_dumpns, ptr @ioam6_genl_dumpns_done, ptr null, i32 0, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_addsc, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_addsc, i32 5, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_delsc, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_delsc, i32 4, i8 5, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr @ioam6_genl_dumpsc_start, ptr @ioam6_genl_dumpsc, ptr @ioam6_genl_dumpsc_done, ptr null, i32 0, i8 6, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @ioam6_genl_ns_set_schema, ptr null, ptr null, ptr null, ptr @ioam6_genl_policy_ns_sc, i32 6, i8 7, i8 0, i8 1, i8 3 }], align 16
@ioam6_mcgrps = internal constant [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"ioam6_events\00\00\00\00", i8 1 }], align 16
@ioam6_genl_family = internal global { i32, [16 x i8], i32, i32, i8, i8, i8, i8, i8, i8, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, ptr } { i32 0, [16 x i8] c"IOAM6\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i8 3, i8 7, i8 0, i8 0, i8 1, i8 8, [6 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ioam6_genl_ops, ptr null, ptr null, ptr @ioam6_mcgrps, ptr null, i64 0, ptr null, ptr null, i32 0, i32 0, ptr null }, section ".data..ro_after_init", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [27 x i8] c"include/linux/rhashtable.h\00", align 1
@bit_spin_lock.__UNIQUE_ID_addressable___SCK__preempt_schedule_214 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__preempt_count = external dso_local global i32, section ".data..percpu..hot..__preempt_count", align 4
@bit_spin_unlock.__UNIQUE_ID_addressable___SCK__preempt_schedule_216 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8
@rht_assign_unlock.__UNIQUE_ID_addressable___SCK__preempt_schedule_486 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8
@ioam6_genl_policy_addns = internal constant <{ %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.35 }, { i8, i8, i16, [4 x i8], %union.anon.35 }, { i8, i8, i16, [4 x i8], %union.anon.35 } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 2, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 4, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer } }>, align 16
@ioam6_genl_policy_delns = internal constant <{ %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.35 } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 2, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer } }>, align 16
@.str.9 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@rht_sc_params = internal constant %struct.rhashtable_params { i16 0, i16 4, i16 32, i16 0, i32 0, i16 0, i8 0, i8 1, ptr null, ptr null, ptr @ioam6_sc_cmpfn }, align 8
@ioam6_genl_policy_addsc = internal constant <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.35 }, { i8, i8, i16, [4 x i8], %union.anon.35 } }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer }, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 11, i8 0, i16 1020, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer } }>, align 16
@ioam6_genl_policy_delsc = internal constant <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.35 } }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer } }>, align 16
@ioam6_genl_policy_ns_sc = internal constant <{ %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.35 }, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.35 }, %struct.nla_policy, { i8, i8, i16, [4 x i8], %union.anon.35 } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 2, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 3, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer }, %struct.nla_policy zeroinitializer, { i8, i8, i16, [4 x i8], %union.anon.35 } { i8 6, i8 0, i16 0, [4 x i8] zeroinitializer, %union.anon.35 zeroinitializer } }>, align 16
@netstamp_needed_key = external dso_local global %struct.static_key_false, align 8
@ioam6_net_init.__key.16 = internal global %struct.lock_class_key zeroinitializer, align 1
@ioam6_net_init.__key.18 = internal global %struct.lock_class_key zeroinitializer, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @bit_spin_lock.__UNIQUE_ID_addressable___SCK__preempt_schedule_214, ptr @bit_spin_unlock.__UNIQUE_ID_addressable___SCK__preempt_schedule_216, ptr @rht_assign_unlock.__UNIQUE_ID_addressable___SCK__preempt_schedule_486], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ioam6_event(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @ioam6_genl_family, i64 32), align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %genl_has_listeners.exit.thread, label %genl_has_listeners.exit, !prof !18

genl_has_listeners.exit.thread:                   ; preds = %bb.a
  tail call void asm sideeffect "1015: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1015b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1015) #15, !srcloc !56
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.3, i32 641, i32 2307, i64 16) #15, !srcloc !57
  tail call void asm sideeffect "1016: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1016b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1016) #15, !srcloc !58
  br label %bb.b

genl_has_listeners.exit:                          ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ioam6_genl_family, i64 148), align 4
  %i.g = getelementptr i8, ptr %1, i64 592
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = tail call i32 @netlink_has_listeners(ptr noundef %i.h, i32 noundef %i.f) #16
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %genlmsg_multicast_netns.exit, label %bb.b

bb.b:                                             ; preds = %genl_has_listeners.exit.thread, %genl_has_listeners.exit
  %i.j = tail call ptr @__alloc_skb(i32 noundef 3776, i32 noundef %2, i32 noundef 0, i32 noundef -1) #16 ; 12 uses
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %genlmsg_multicast_netns.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc i32 %0 to i8
  %i.l = tail call ptr @genlmsg_put(ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef 0, ptr noundef @ioam6_genl_family, i32 noundef 0, i8 noundef zeroext %i.k) #16 ; 2 uses
  %.not20 = icmp eq ptr %i.l, null
  br i1 %.not20, label %ioam6_event_put_trace.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %0, label %bb.i [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "1095: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1095b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1095) #15, !srcloc !59
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 655, i32 2307, i64 16) #15, !srcloc !60
  tail call void asm sideeffect "1096: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1096b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1096) #15, !srcloc !61
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.m = load i16, ptr %3, align 1
  %i.n = tail call i16 @llvm.bswap.i16(i16 %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i16 %i.n, ptr %i.c, align 2
  %i.o = call i32 @nla_put(ptr noundef nonnull %i.j, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.g, label %ioam6_event_put_trace.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %3, i64 2
  %i.q = load i16, ptr %i.p, align 1
  %i.r = trunc i16 %i.q to i8
  %i.s = lshr i8 %i.r, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 %i.s, ptr %i.b, align 1
  %i.t = call i32 @nla_put(ptr noundef nonnull %i.j, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.not11.i = icmp eq i32 %i.t, 0
  br i1 %.not11.i, label %bb.h, label %ioam6_event_put_trace.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %3, i64 4
  %i.v = load i32, ptr %i.u, align 1
  %i.w = call i32 @llvm.bswap.i32(i32 %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 %i.w, ptr %i.a, align 4
  %i.x = call i32 @nla_put(ptr noundef nonnull %i.j, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not12.i = icmp eq i32 %i.x, 0
  br i1 %.not12.i, label %ioam6_event_put_trace.exit, label %ioam6_event_put_trace.exit.thread

ioam6_event_put_trace.exit:                       ; preds = %bb.h
  %i.y = zext i32 %4 to i64
  %i.z = add nuw nsw i64 %i.y, 4294967288
  %5 = getelementptr i8, ptr %3, i64 3
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 127
  %i.aa = zext nneg i8 %7 to i64
  %8 = shl nuw nsw i64 %i.aa, 2                   ; 2 uses
  %i.ab = sub nuw nsw i64 %i.z, %8
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr i8, ptr %3, i64 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 %8
  %i.af = call i32 @nla_put(ptr noundef nonnull %i.j, i32 noundef 4, i32 noundef %i.ac, ptr noundef %i.ae) #16
  %.not13.i.not = icmp eq i32 %i.af, 0
  br i1 %.not13.i.not, label %bb.i, label %ioam6_event_put_trace.exit.thread

bb.i:                                             ; preds = %ioam6_event_put_trace.exit, %bb.e, %bb.d
  %i.ag = getelementptr i8, ptr %i.j, i64 188
  %.val = load i32, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %i.j, i64 200
  %.val22 = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.l, i64 -20     ; 2 uses
  %i.aj = zext i32 %.val to i64
  %i.ak = getelementptr i8, ptr %.val22, i64 %i.aj
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.ai, align 4
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @ioam6_genl_family, i64 32), align 8
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %.critedge.i.i, !prof !18

bb.j:                                             ; preds = %bb.i
  call void asm sideeffect "1011: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1011b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1011) #15, !srcloc !62
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.3, i32 492, i32 2307, i64 16) #15, !srcloc !63
  call void asm sideeffect "1012: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1012b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1012) #15, !srcloc !64
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %i.j, i32 noundef 2) #16
  br label %genlmsg_multicast_netns.exit

.critedge.i.i:                                    ; preds = %bb.i
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @ioam6_genl_family, i64 148), align 4 ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 592
  %i.at = load ptr, ptr %i.as, align 16
  %i.au = getelementptr i8, ptr %i.j, i64 56
  store i32 %i.ar, ptr %i.au, align 8
  %i.av = call i32 @netlink_broadcast_filtered(ptr noundef %i.at, ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef %i.ar, i32 noundef %2, ptr noundef null, ptr noundef null) #16 ; 0 uses
  br label %genlmsg_multicast_netns.exit

ioam6_event_put_trace.exit.thread:                ; preds = %bb.g, %bb.h, %bb.f, %ioam6_event_put_trace.exit, %bb.c
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef nonnull %i.j, i32 noundef 2) #16
  br label %genlmsg_multicast_netns.exit

genlmsg_multicast_netns.exit:                     ; preds = %.critedge.i.i, %bb.j, %bb.b, %genl_has_listeners.exit, %ioam6_event_put_trace.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ioam6_namespace(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 2 uses
  store i16 %1, ptr %i.a, align 2
  %i.b = getelementptr i8, ptr %0, i64 2648
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 24
  tail call void @__rcu_read_lock() #16
  %i.d = load volatile ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %.val, i64 46
  br label %rht_key_get_hash.exit.i

rht_key_get_hash.exit.i:                          ; preds = %bb.a, %bb.g
  %.031.i = phi ptr [ %i.d, %bb.a ], [ %i.aj, %bb.g ] ; 6 uses
  %i.f = getelementptr i8, ptr %.031.i, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = call fastcc i32 @jhash(ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %i.g) #17, !srcloc !19
  %.031.i.val = load i32, ptr %.031.i, align 64
  %i.i = add i32 %.031.i.val, -1
  %i.j = and i32 %i.i, %i.h                       ; 2 uses
  %i.k = getelementptr i8, ptr %.031.i, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %.not.i12 = icmp eq i32 %i.l, 0
  br i1 %.not.i12, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %rht_key_get_hash.exit.i
  %i.m = tail call ptr @rht_bucket_nested(ptr noundef %.031.i, i32 noundef %i.j) #16
  br label %rht_bucket.exit

bb.c:                                             ; preds = %rht_key_get_hash.exit.i
  %i.n = getelementptr i8, ptr %.031.i, i64 64
  %i.o = zext i32 %i.j to i64
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.o
  br label %rht_bucket.exit

rht_bucket.exit:                                  ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.m, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = or i64 %i.r, 1                           ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %rht_bucket.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !21
  %i.u = load volatile ptr, ptr %i.q, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -2                         ; 2 uses
  %.not.i.i5 = icmp eq i64 %i.w, 0
  %i.x = select i1 %.not.i.i5, i64 %i.s, i64 %i.w ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = trunc i64 %i.x to i1
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.val7 = load i16, ptr %i.e, align 2
  %i.aa = zext i16 %.val7 to i64
  %i.ab = sub nsw i64 0, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.032.i21 = phi ptr [ %i.y, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.032.i21, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = load i16, ptr %i.ad, align 8
  %.not = icmp eq i16 %i.ae, %1
  br i1 %.not, label %__rhashtable_lookup.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load volatile ptr, ptr %.032.i21, align 8 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %._crit_edge, label %bb.e, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.032.i.lcssa = phi ptr [ %i.y, %bb.d ], [ %i.af, %bb.f ]
  %.not.i4 = icmp eq ptr %.032.i.lcssa, %i.t
  br i1 %.not.i4, label %bb.g, label %bb.d, !llvm.loop !1

bb.g:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !23
  %i.ai = getelementptr i8, ptr %.031.i, i64 48
  %i.aj = load volatile ptr, ptr %i.ai, align 16  ; 2 uses
  %.not35.i = icmp eq ptr %i.aj, null
  br i1 %.not35.i, label %rhashtable_lookup.exit, label %rht_key_get_hash.exit.i, !prof !20

__rhashtable_lookup.exit:                         ; preds = %bb.e
  %.not.i = icmp eq ptr %.032.i21, null
  %spec.select = select i1 %.not.i, ptr null, ptr %i.ac
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %bb.g, %__rhashtable_lookup.exit
  %i.ak = phi ptr [ %spec.select, %__rhashtable_lookup.exit ], [ null, %bb.g ]
  tail call void @__rcu_read_unlock() #16
  ret ptr %i.ak
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i8 @ioam6_trace_compute_nodelen(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %0, -14681088
  %i.b = tail call i64 @llvm.read_register.i64(metadata !7)
  %i.c = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, -14681087) %i.a, i64 %i.b) #18, !srcloc !65 ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 1
  tail call void @llvm.write_register.i64(metadata !7, i64 %i.d)
  %i.e = and i32 %0, 14680064
  %i.f = tail call i64 @llvm.read_register.i64(metadata !7)
  %i.g = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, -14681087) %i.e, i64 %i.f) #18, !srcloc !65 ; 2 uses
  %i.h = extractvalue { i32, i64 } %i.g, 1
  tail call void @llvm.write_register.i64(metadata !7, i64 %i.h)
  %i.i = extractvalue { i32, i64 } %i.g, 0
  %i.j = extractvalue { i32, i64 } %i.c, 0
  %i.k = trunc i32 %i.i to i8
  %i.l = shl i8 %i.k, 1
  %i.m = trunc i32 %i.j to i8
  %i.n = add i8 %i.l, %i.m
  ret i8 %i.n
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ioam6_fill_trace_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.gnet_stats_queue, align 4   ; 5 uses
  %i.a = getelementptr i8, ptr %2, i64 2          ; 3 uses
  %i.b = load i16, ptr %i.a, align 1              ; 6 uses
  %i.c = and i16 %i.b, 4
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.ca

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load volatile ptr, ptr %i.d, align 8     ; 6 uses
  %i.f = getelementptr i8, ptr %2, i64 4          ; 23 uses
  %i.g = load i32, ptr %i.f, align 1              ; 3 uses
  %i.h = and i32 %i.g, 131072
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not25 = icmp eq ptr %i.e, null
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.e, i64 36
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sdiv i32 %i.j, 4
end_hunk_0
