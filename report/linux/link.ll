Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/link?download=true
inline.NumInlined: 61
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ieee80211_set_active_links: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ieee80211_set_active_links ; .previous"
    ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ieee80211_set_active_links_async: ; .asciz \22GPL\22 ; .ascii \22\22 \22\\0\22 ; .balign 8 ; .quad ieee80211_set_active_links_async ; .previous"

%struct.static_call_key = type { ptr, %union.anon.42 }
%union.anon.42 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { i64 }
%struct.srcu_struct = type { ptr, ptr, i8, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"net/mac80211/link.c\00", align 1
@__UNIQUE_ID_addressable_ieee80211_set_active_links_2241 = internal global ptr @ieee80211_set_active_links, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_ieee80211_set_active_links_async_2244 = internal global ptr @ieee80211_set_active_links_async, section ".discard.addressable", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [40 x i8] c"Invalid links: valid=0x%x, dormant=0x%x\00", align 1
@ieee80211_set_vif_links_bitmaps.__UNIQUE_ID_addressable___SCK__WARN_trap_2208 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"%s: Failed check-sdata-in-driver check, flags: 0x%x\0A\00", align 1
@drv_can_activate_links.__UNIQUE_ID_addressable___SCK__WARN_trap_2193 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"net/mac80211/driver-ops.h\00", align 1
@__tracepoint_drv_can_activate_links = external dso_local global %struct.tracepoint, align 8
@__do_trace_drv_can_activate_links.__trace_check_drv_can_activate_links = internal constant [23 x i8] c"drv_can_activate_links\00", section "__tracepoint_check", align 16
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 8
@__do_trace_drv_can_activate_links.__UNIQUE_ID_addressable___SCK__tp_func_drv_can_activate_links_1874 = internal global ptr @__SCK__tp_func_drv_can_activate_links, section ".discard.addressable", align 8
@__SCK__tp_func_drv_can_activate_links = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_drv_return_bool = external dso_local global %struct.tracepoint, align 8
@__do_trace_drv_return_bool.__trace_check_drv_return_bool = internal constant [16 x i8] c"drv_return_bool\00", section "__tracepoint_check", align 16
@__do_trace_drv_return_bool.__UNIQUE_ID_addressable___SCK__tp_func_drv_return_bool_1097 = internal global ptr @__SCK__tp_func_drv_return_bool, section ".discard.addressable", align 8
@__SCK__tp_func_drv_return_bool = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_addressable_ieee80211_set_active_links_2241, ptr @__UNIQUE_ID_addressable_ieee80211_set_active_links_async_2244, ptr @__do_trace_drv_can_activate_links.__UNIQUE_ID_addressable___SCK__tp_func_drv_can_activate_links_1874, ptr @__do_trace_drv_can_activate_links.__trace_check_drv_can_activate_links, ptr @__do_trace_drv_return_bool.__UNIQUE_ID_addressable___SCK__tp_func_drv_return_bool_1097, ptr @__do_trace_drv_return_bool.__trace_check_drv_return_bool, ptr @drv_can_activate_links.__UNIQUE_ID_addressable___SCK__WARN_trap_2193, ptr @ieee80211_set_vif_links_bitmaps.__UNIQUE_ID_addressable___SCK__WARN_trap_2208], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_apvlan_link_setup(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2272
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4656
  %i.d = load i16, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i16 %i.d, 32767
  %i.f = zext nneg i16 %i.e to i64
  %i.g = getelementptr i8, ptr %0, i64 1744       ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 424
  %i.i = getelementptr i8, ptr %i.b, i64 -2080
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %i.j = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.d ]
  %i.k = shl nsw i64 -1, %i.j
  %i.l = and i64 %i.k, %i.f                       ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.c
  %i.m = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.l) #9, !srcloc !11 ; 3 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp slt i32 %i.n, 15
  br i1 %i.o, label %bb.d, label %find_next_bit.exit.thread

bb.d:                                             ; preds = %find_next_bit.exit
  %i.p = and i64 %i.m, 4294967295
  %i.q = shl nuw i64 1, %i.p
  %i.r = load i16, ptr %i.g, align 8
  %i.s = trunc i64 %i.q to i16
  %i.t = or i16 %i.r, %i.s
  store i16 %i.t, ptr %i.g, align 8
  %sext17 = shl i64 %i.m, 32                      ; 2 uses
  %i.u = ashr exact i64 %sext17, 32               ; 2 uses
  %i.v = getelementptr [88 x i8], ptr %i.h, i64 %i.u ; 2 uses
  %i.w = getelementptr [88 x i8], ptr %i.i, i64 %i.u ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr i8, ptr %i.w, i64 4
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = getelementptr i8, ptr %i.v, i64 4
  store i16 %i.z, ptr %i.aa, align 4
  %sext = add i64 %sext17, 4294967296
  %i.ab = ashr exact i64 %sext, 32                ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 14
  br i1 %i.ac, label %find_next_bit.exit.thread, label %bb.c, !prof !12, !llvm.loop !13

find_next_bit.exit.thread:                        ; preds = %bb.c, %bb.d, %find_next_bit.exit
  %i.ad = tail call i32 @ieee80211_vif_set_links(ptr noundef %0, i16 noundef zeroext %i.d, i16 noundef zeroext 0) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %find_next_bit.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ieee80211_vif_set_links(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.list_head, align 8          ; 9 uses
  %i.a = alloca [15 x ptr], align 16              ; 22 uses
  %i.b = alloca [15 x ptr], align 16              ; 6 uses
  %i.c = alloca [15 x ptr], align 16              ; 5 uses
  %i.d = alloca [15 x ptr], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = getelementptr i8, ptr %0, i64 5072       ; 7 uses
  %i.f = getelementptr i8, ptr %0, i64 7160       ; 2 uses
  %i.g = load i16, ptr %i.f, align 8              ; 6 uses
  %i.h = getelementptr i8, ptr %0, i64 7162       ; 2 uses
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %1 to i32                       ; 2 uses
  %i.k = zext i16 %i.g to i32                     ; 2 uses
  %i.l = xor i32 %i.k, -1
  %i.m = and i32 %i.l, %i.j
  %i.n = xor i32 %i.j, -1
  %i.o = and i32 %i.k, %i.n
  %i.p = zext nneg i32 %i.o to i64                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.a, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.b, i8 0, i64 120, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.c, i8 0, i64 120, i1 false)
  %i.q = icmp eq i16 %i.g, 0                      ; 2 uses
  %i.r = load i32, ptr %i.e, align 8
  %i.s = icmp ne i32 %i.r, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.d, i8 0, i64 120, i1 false)
  %i.t = icmp eq i16 %i.g, %1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %0, i64 7164
  %i.v = load i16, ptr %i.u, align 4
  %i.w = icmp eq i16 %2, %i.v
  br i1 %i.w, label %ieee80211_vif_update_links.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = icmp ne i16 %i.g, 0                      ; 2 uses
  %i.y = icmp ne i16 %1, 0                        ; 2 uses
  %or.cond.i = and i1 %i.y, %i.x
  br i1 %or.cond.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call i32 @__sta_info_flush(ptr noundef %0, i1 noundef zeroext false, i32 noundef -1, ptr noundef null) #12
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "2215: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2215b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2215) #11, !inline_history !17, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 313, i32 2305, i64 16) #11, !inline_history !17, !srcloc !19
  tail call void asm sideeffect "2216: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2216b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2216) #11, !inline_history !17, !srcloc !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %not. = xor i1 %i.x, true
  %i.ab = zext i1 %not. to i64
  %spec.select = or i64 %i.p, %i.ab
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.c
  %.0 = phi i64 [ %spec.select, %bb.f ], [ %i.p, %bb.c ] ; 3 uses
  %i.ac = and i32 %i.m, 32767
  %i.ad = zext nneg i32 %i.ac to i64              ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.i
  %i.ae = phi i64 [ 0, %.thread ], [ %i.ao, %bb.i ]
  %i.af = shl nsw i64 -1, %i.ae
  %i.ag = and i64 %i.af, %i.ad                    ; 2 uses
  %.not.i182.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i182.i, label %find_next_bit.exit184.i.thread, label %find_next_bit.exit184.i

find_next_bit.exit184.i:                          ; preds = %bb.g
  %i.ah = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.ag) #9, !inline_history !17, !srcloc !11 ; 3 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp ult i32 %i.ai, 15
  br i1 %i.aj, label %bb.h, label %find_next_bit.exit184.i.thread

bb.h:                                             ; preds = %find_next_bit.exit184.i
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 96), align 16
  %i.al = tail call noalias noundef align 8 dereferenceable_or_null(2248) ptr @__kmalloc_cache_noprof(ptr noundef %i.ak, i32 noundef 3520, i64 noundef 2248) #13 ; 2 uses
  %.not169.i = icmp eq ptr %i.al, null
  br i1 %.not169.i, label %.loopexit55, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = and i64 %i.ah, 15
  %4 = getelementptr [8 x i8], ptr %i.a, i64 %i.am
  store ptr %i.al, ptr %4, align 8
  %i.an = add nuw nsw i64 %i.ah, 1
  %i.ao = and i64 %i.an, 31                       ; 2 uses
  %i.ap = icmp samesign ugt i64 %i.ao, 14
  br i1 %i.ap, label %find_next_bit.exit184.i.thread, label %bb.g, !prof !12, !llvm.loop !21

find_next_bit.exit184.i.thread:                   ; preds = %bb.g, %bb.i, %find_next_bit.exit184.i
  %i.aq = getelementptr i8, ptr %0, i64 7040      ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.b, ptr noundef align 8 dereferenceable(120) %i.aq, i64 120, i1 false)
  %i.ar = getelementptr i8, ptr %0, i64 4920      ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.c, ptr noundef align 8 dereferenceable(120) %i.ar, i64 120, i1 false)
  %i.as = and i64 %.0, 32767
  %i.at = getelementptr i8, ptr %0, i64 3848      ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %find_next_bit.exit184.i.thread, %bb.m
  %i.au = phi i64 [ 0, %find_next_bit.exit184.i.thread ], [ %i.bh, %bb.m ]
  %i.av = shl nsw i64 -1, %i.au
  %i.aw = and i64 %i.as, %i.av                    ; 2 uses
  %.not.i179.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i179.i, label %find_next_bit.exit181.i.thread.preheader, label %find_next_bit.exit181.i

find_next_bit.exit181.i:                          ; preds = %bb.j
  %i.ax = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.aw) #9, !inline_history !17, !srcloc !11 ; 3 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = icmp ult i32 %i.ay, 15
  br i1 %i.az, label %bb.k, label %find_next_bit.exit181.i.thread.preheader

bb.k:                                             ; preds = %find_next_bit.exit181.i
  %i.ba = and i64 %i.ax, 15                       ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ar, i64 %i.ba ; 3 uses
  %i.bc = load volatile ptr, ptr %i.bb, align 8
  %.not168.i = icmp eq ptr %i.bc, %i.at
  br i1 %.not168.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load volatile ptr, ptr %i.bb, align 8
  %i.be = getelementptr [8 x i8], ptr %i.d, i64 %i.ba
  store ptr %i.bd, ptr %i.be, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store volatile ptr null, ptr %i.bb, align 8
  %i.bf = getelementptr [8 x i8], ptr %i.aq, i64 %i.ba
  store volatile ptr null, ptr %i.bf, align 8
  %i.bg = add nuw nsw i64 %i.ax, 1
  %i.bh = and i64 %i.bg, 31                       ; 2 uses
  %i.bi = icmp samesign ugt i64 %i.bh, 14
  br i1 %i.bi, label %find_next_bit.exit181.i.thread.preheader, label %bb.j, !prof !12, !llvm.loop !22

find_next_bit.exit181.i.thread.preheader:         ; preds = %find_next_bit.exit181.i, %bb.m, %bb.j
  br label %find_next_bit.exit181.i.thread

find_next_bit.exit181.i.thread:                   ; preds = %find_next_bit.exit181.i.thread.preheader, %ieee80211_link_setup.exit
  %i.bj = phi i64 [ %i.bz, %ieee80211_link_setup.exit ], [ 0, %find_next_bit.exit181.i.thread.preheader ]
  %i.bk = shl nsw i64 -1, %i.bj
  %i.bl = and i64 %i.bk, %i.ad                    ; 2 uses
  %.not.i176.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i176.i, label %find_next_bit.exit178.i.thread, label %find_next_bit.exit178.i

find_next_bit.exit178.i:                          ; preds = %find_next_bit.exit181.i.thread
  %i.bm = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.bl) #9, !inline_history !17, !srcloc !11 ; 3 uses
  %i.bn = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 15
  br i1 %i.bo, label %bb.n, label %find_next_bit.exit178.i.thread

bb.n:                                             ; preds = %find_next_bit.exit178.i
  %.pre71 = and i64 %i.bm, 15                     ; 2 uses
  br i1 %i.q, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr [8 x i8], ptr %i.ar, i64 %.pre71
  %i.bq = load volatile ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, %i.at
  br i1 %i.br, label %bb.p, label %.critedge.i, !prof !16

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "2227: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2227b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2227) #11, !inline_history !17, !srcloc !23
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 358, i32 2305, i64 16) #11, !inline_history !17, !srcloc !24
  tail call void asm sideeffect "2228: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2228b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2228) #11, !inline_history !17, !srcloc !25
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.n, %bb.p, %bb.o
  %5 = getelementptr [8 x i8], ptr %i.a, i64 %.pre71
  %i.bs = load ptr, ptr %5, align 8               ; 5 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 1072
  tail call void @ieee80211_link_init(ptr noundef %0, i32 noundef %i.bn, ptr noundef %i.bs, ptr noundef %i.bt) #10, !inline_history !17
  %i.bu = load ptr, ptr %i.bs, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 5072
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = icmp eq i32 %i.bw, 2
  br i1 %i.bx, label %bb.q, label %ieee80211_link_setup.exit

bb.q:                                             ; preds = %.critedge.i
  tail call void @ieee80211_mgd_setup_link(ptr noundef %i.bs) #12
  br label %ieee80211_link_setup.exit

ieee80211_link_setup.exit:                        ; preds = %.critedge.i, %bb.q
  tail call void @ieee80211_set_wmm_default(ptr noundef %i.bs, i1 noundef zeroext true, i1 noundef zeroext %i.s) #12, !inline_history !17
  %i.by = add nuw nsw i64 %i.bm, 1
  %i.bz = and i64 %i.by, 31                       ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bz, 14
  br i1 %i.ca, label %find_next_bit.exit178.i.thread, label %find_next_bit.exit181.i.thread, !prof !12, !llvm.loop !26

find_next_bit.exit178.i.thread:                   ; preds = %find_next_bit.exit181.i.thread, %ieee80211_link_setup.exit, %find_next_bit.exit178.i
  %i.cb = icmp eq i16 %1, 0                       ; 3 uses
  br i1 %i.cb, label %bb.r, label %.preheader106

bb.r:                                             ; preds = %find_next_bit.exit178.i.thread
  %i.cc = getelementptr i8, ptr %0, i64 5864      ; 4 uses
  %i.cd = load i32, ptr %i.e, align 8
  %i.ce = icmp eq i32 %i.cd, 4
  br i1 %i.ce, label %bb.s, label %ieee80211_link_init.exit22

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %0, i64 2272
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %i.cg, i64 3360
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(1176) %i.cc, ptr noundef align 8 dereferenceable(1176) %i.ch, i64 1176, i1 false)
  br label %ieee80211_link_init.exit22

ieee80211_link_init.exit22:                       ; preds = %bb.r, %bb.s
  store ptr %0, ptr %i.at, align 8
  %i.ci = getelementptr i8, ptr %0, i64 3856
  store i32 0, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %0, i64 4904
  store ptr %i.cc, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %0, i64 5888
  store i32 0, ptr %i.ck, align 8
  store ptr %i.e, ptr %i.cc, align 8
  %i.cl = getelementptr i8, ptr %0, i64 4316
  store i32 -2147483648, ptr %i.cl, align 4
  %i.cm = getelementptr i8, ptr %0, i64 1856
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 5636
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr i8, ptr %0, i64 4312
  store i32 %i.cp, ptr %i.cq, align 8
  %i.cr = getelementptr i8, ptr %0, i64 6132
  store i32 -2147483648, ptr %i.cr, align 4
  %i.cs = getelementptr i8, ptr %0, i64 3960      ; 3 uses
  store volatile ptr %i.cs, ptr %i.cs, align 8
  %i.ct = getelementptr i8, ptr %0, i64 3968
  store volatile ptr %i.cs, ptr %i.ct, align 8
  %i.cu = getelementptr i8, ptr %0, i64 3976
  store ptr @ieee80211_csa_finalize_work, ptr %i.cu, align 8
  %i.cv = getelementptr i8, ptr %0, i64 4088      ; 3 uses
  store volatile ptr %i.cv, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %0, i64 4096
  store volatile ptr %i.cv, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %0, i64 4104
  store ptr @ieee80211_color_change_finalize_work, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %0, i64 4112      ; 3 uses
  %i.cz = getelementptr i8, ptr %0, i64 4144
  tail call void @timer_init_key(ptr noundef %i.cz, ptr noundef nonnull @wiphy_delayed_work_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  store volatile ptr %i.cy, ptr %i.cy, align 8
  %i.da = getelementptr i8, ptr %0, i64 4120
  store volatile ptr %i.cy, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %0, i64 4128
  store ptr @ieee80211_color_collision_detection_work, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %0, i64 4328      ; 3 uses
  %i.dd = getelementptr i8, ptr %0, i64 4360
  tail call void @hrtimer_setup(ptr noundef %i.dd, ptr noundef nonnull @wiphy_hrtimer_work_timer, i32 noundef 7, i32 noundef 1) #12
  store volatile ptr %i.dc, ptr %i.dc, align 8
  %i.de = getelementptr i8, ptr %0, i64 4336
  store volatile ptr %i.dc, ptr %i.de, align 8
  %i.df = getelementptr i8, ptr %0, i64 4344
  store ptr @ieee80211_dfs_cac_timer_work, ptr %i.df, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !27
  store volatile ptr %i.cc, ptr %i.aq, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !28
  store volatile ptr %i.at, ptr %i.ar, align 8
  br label %.preheader106

.preheader106:                                    ; preds = %ieee80211_link_init.exit22, %find_next_bit.exit178.i.thread
  br label %bb.t

bb.t:                                             ; preds = %.preheader106, %.loopexit.i
  %indvars.iv.i14 = phi i64 [ %indvars.iv.next.i17, %.loopexit.i ], [ 0, %.preheader106 ] ; 4 uses
  %i.dg = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv.i14
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not.i15 = icmp ne ptr %i.dh, null
  %i.di = icmp samesign ult i64 %indvars.iv.i14, 14
  %or.cond.i16 = select i1 %.not.i15, i1 %i.di, i1 false
  br i1 %or.cond.i16, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.dj = getelementptr i8, ptr %i.dh, i64 1056
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.i14, %.lr.ph.i ], [ %indvars.iv.next38.i, %bb.w ]
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 3 uses
  %i.dk = getelementptr [8 x i8], ptr %i.ar, i64 %indvars.iv.next38.i
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not23.i19 = icmp eq ptr %i.dl, null
  br i1 %.not23.i19, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 28
  %i.do = getelementptr i8, ptr %i.dl, i64 1056
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 28
  %.val.i = load i32, ptr %i.dn, align 4
  %i.dr = getelementptr i8, ptr %i.dm, i64 32
  %.val24.i = load i16, ptr %i.dr, align 4
  %.val25.i = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr i8, ptr %i.dp, i64 32
  %.val26.i = load i16, ptr %i.ds, align 4
  %i.dt = xor i32 %.val25.i, %.val.i
  %i.du = xor i16 %.val26.i, %.val24.i
  %i.dv = zext i16 %i.du to i32
  %i.dw = or i32 %i.dt, %i.dv
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %ieee80211_check_dup_link_addrs.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.next38.i, 14
  br i1 %exitcond.not.i20, label %.loopexit.i, label %bb.u, !llvm.loop !29

.loopexit.i:                                      ; preds = %bb.w, %bb.t
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next.i17, 15
  br i1 %exitcond41.not.i, label %bb.x, label %bb.t, !llvm.loop !30

bb.x:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %3, ptr %3, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.dy, align 8
  %i.dz = and i64 %.0, 1
  %.not.peel.i = icmp eq i64 %i.dz, 0
  br i1 %.not.peel.i, label %.peel.next.i.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = load ptr, ptr %i.d, align 16            ; 2 uses
  %.not23.i = icmp eq ptr %i.ea, null
  %spec.select.peel.i = select i1 %.not23.i, ptr %i.at, ptr %i.ea ; 3 uses
  %.not19.peel.i = icmp eq ptr %spec.select.peel.i, null
  br i1 %.not19.peel.i, label %bb.z, label %.critedge.peel.i, !prof !16

.critedge.peel.i:                                 ; preds = %bb.y
  call void @ieee80211_remove_link_keys(ptr noundef nonnull %spec.select.peel.i, ptr noundef nonnull %3) #12
  call void @ieee80211_link_stop(ptr noundef nonnull %spec.select.peel.i) #10
  br label %.peel.next.i.preheader

bb.z:                                             ; preds = %bb.y
  call void asm sideeffect "2206: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2206b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2206) #11, !srcloc !31
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 204, i32 2305, i64 16) #11, !srcloc !32
  call void asm sideeffect "2207: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2207b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2207) #11, !srcloc !33
  br label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.z, %.critedge.peel.i, %bb.x
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %bb.ac
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ac ], [ 1, %.peel.next.i.preheader ] ; 3 uses
  %i.eb = shl nuw nsw i64 1, %indvars.iv.i
  %i.ec = and i64 %.0, %i.eb
  %.not.i12 = icmp eq i64 %i.ec, 0
  br i1 %.not.i12, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.peel.next.i
  %i.ed = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %.not19.i = icmp eq ptr %i.ee, null
  br i1 %.not19.i, label %bb.ab, label %.critedge.i13, !prof !16

bb.ab:                                            ; preds = %bb.aa
  call void asm sideeffect "2206: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2206b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2206) #11, !srcloc !31
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 204, i32 2305, i64 16) #11, !srcloc !32
  call void asm sideeffect "2207: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2207b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2207) #11, !srcloc !33
  br label %bb.ac

.critedge.i13:                                    ; preds = %bb.aa
  call void @ieee80211_remove_link_keys(ptr noundef nonnull %i.ee, ptr noundef nonnull %3) #12
  call void @ieee80211_link_stop(ptr noundef nonnull %i.ee) #10
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i13, %bb.ab, %.peel.next.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 15
  br i1 %exitcond.not.i, label %ieee80211_tear_down_links.exit, label %.peel.next.i, !llvm.loop !34

end_hunk_0
begin_hunk_1_@ieee80211_vif_set_links:bb.a
  %i.ef = getelementptr i8, ptr %0, i64 1856      ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  call void @ieee80211_free_key_list(ptr noundef %i.eg, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call fastcc void @ieee80211_set_vif_links_bitmaps(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #10, !inline_history !17, !srcloc !36
  %i.eh = load i32, ptr %i.e, align 8
  %.not164.i = icmp eq i32 %i.eh, 4
  br i1 %.not164.i, label %ieee80211_check_dup_link_addrs.exit, label %bb.ad

bb.ad:                                            ; preds = %ieee80211_tear_down_links.exit
  %i.ei = load ptr, ptr %i.ef, align 8
  %i.ej = and i16 %i.i, %i.g
  %i.ek = load i16, ptr %i.h, align 2
  %i.el = and i16 %i.ek, %1
  %i.em = call i32 @drv_change_vif_links(ptr noundef %i.ei, ptr noundef %0, i16 noundef zeroext %i.ej, i16 noundef zeroext %i.el, ptr noundef nonnull %i.b) #12, !inline_history !17 ; 3 uses
  %.pre = load i32, ptr %i.e, align 8
  %i.en = icmp eq i32 %.pre, 3
  br i1 %i.en, label %bb.ae, label %ieee80211_check_dup_link_addrs.exit

bb.ae:                                            ; preds = %bb.ad
  %i.eo = load i16, ptr %i.f, align 8             ; 2 uses
  %i.ep = and i16 %i.eo, 32767
  %i.eq = xor i16 %i.ep, 32767
  %i.er = zext nneg i16 %i.eq to i64
  %i.es = getelementptr i8, ptr %0, i64 2504      ; 3 uses
  %.pn.i56 = load ptr, ptr %i.es, align 8         ; 2 uses
  %.not58 = icmp eq ptr %.pn.i56, %i.es
  br i1 %.not58, label %ieee80211_check_dup_link_addrs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.et = zext i16 %i.eo to i64
  %i.eu = getelementptr i8, ptr %0, i64 424
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %find_next_bit.exit.i10.thread
  %.pn.i60 = phi ptr [ %.pn.i56, %.lr.ph ], [ %.pn.i, %find_next_bit.exit.i10.thread ] ; 8 uses
  %.03759 = phi i64 [ %i.et, %.lr.ph ], [ %.1, %find_next_bit.exit.i10.thread ] ; 3 uses
  %.0.i561 = getelementptr i8, ptr %.pn.i60, i64 -2504
  %i.ev = getelementptr i8, ptr %.pn.i60, i64 -2423
  %i.ew = load i8, ptr %i.ev, align 1, !range !37, !noundef !38
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr i8, ptr %.pn.i60, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %.not46.i = icmp eq ptr %i.ez, null
  br i1 %.not46.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = getelementptr i8, ptr %i.ez, i64 2968
  %i.fb = load i16, ptr %i.fa, align 8
  %i.fc = zext i16 %i.fb to i64
  %i.fd = and i64 %.03759, %i.fc
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.1 = phi i64 [ %.03759, %bb.ag ], [ %i.fd, %bb.ah ], [ %.03759, %bb.af ] ; 4 uses
  %i.fe = getelementptr i8, ptr %.pn.i60, i64 4656
  %i.ff = load i16, ptr %i.fe, align 8
  %i.fg = zext i16 %i.ff to i64
  %i.fh = icmp eq i64 %.1, %i.fg
  br i1 %i.fh, label %find_next_bit.exit.i10.thread, label %.preheader53

.preheader53:                                     ; preds = %bb.ai
  %i.fi = and i64 %.1, 32767                      ; 2 uses
  %i.fj = getelementptr i8, ptr %.pn.i60, i64 -760 ; 4 uses
  %i.fk = getelementptr i8, ptr %.pn.i60, i64 -2080 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader53, %bb.ak
  %i.fl = phi i64 [ 0, %.preheader53 ], [ %i.ge, %bb.ak ]
  %i.fm = shl nsw i64 -1, %i.fl
  %i.fn = and i64 %i.fi, %i.fm                    ; 2 uses
  %.not.i55.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i55.i, label %.preheader52.preheader, label %find_next_bit.exit57.i

find_next_bit.exit57.i:                           ; preds = %bb.aj
  %i.fo = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.fn) #9, !inline_history !39, !srcloc !11 ; 4 uses
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = icmp slt i32 %i.fp, 15
  br i1 %i.fq, label %bb.ak, label %.preheader52.preheader

bb.ak:                                            ; preds = %find_next_bit.exit57.i
  %i.fr = and i64 %i.fo, 4294967295
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = load i16, ptr %i.fj, align 8
  %i.fu = trunc i64 %i.fs to i16
  %i.fv = or i16 %i.ft, %i.fu
  store i16 %i.fv, ptr %i.fj, align 8
  %sext51.i = shl i64 %i.fo, 32
  %i.fw = ashr exact i64 %sext51.i, 32            ; 2 uses
  %i.fx = getelementptr [88 x i8], ptr %i.fk, i64 %i.fw ; 2 uses
  %i.fy = getelementptr [88 x i8], ptr %i.eu, i64 %i.fw ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4
  store i32 %i.fz, ptr %i.fx, align 4
  %i.ga = getelementptr i8, ptr %i.fy, i64 4
  %i.gb = load i16, ptr %i.ga, align 4
  %i.gc = getelementptr i8, ptr %i.fx, i64 4
  store i16 %i.gb, ptr %i.gc, align 4
  %i.gd = shl i64 %i.fo, 32
  %sext.i = add i64 %i.gd, 4294967296
  %i.ge = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.gf = icmp ugt i64 %i.ge, 14
  br i1 %i.gf, label %.preheader52.preheader, label %bb.aj, !prof !12, !llvm.loop !40

.preheader52.preheader:                           ; preds = %bb.aj, %bb.ak, %find_next_bit.exit57.i
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %bb.al
  %i.gg = phi i64 [ %i.gu, %bb.al ], [ 0, %.preheader52.preheader ]
  %i.gh = shl nsw i64 -1, %i.gg
  %i.gi = and i64 %i.gh, %i.er                    ; 2 uses
  %.not.i52.i = icmp eq i64 %i.gi, 0
  br i1 %.not.i52.i, label %find_next_bit.exit54.i.thread, label %find_next_bit.exit54.i

find_next_bit.exit54.i:                           ; preds = %.preheader52
  %i.gj = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.gi) #9, !inline_history !39, !srcloc !11 ; 3 uses
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = icmp slt i32 %i.gk, 15
  br i1 %i.gl, label %bb.al, label %find_next_bit.exit54.i.thread

bb.al:                                            ; preds = %find_next_bit.exit54.i
  %i.gm = and i64 %i.gj, 4294967295
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = load i16, ptr %i.fj, align 8
  %i.gp = trunc i64 %i.gn to i16
  %i.gq = xor i16 %i.gp, -1
  %i.gr = and i16 %i.go, %i.gq
  store i16 %i.gr, ptr %i.fj, align 8
  %sext50.i = shl i64 %i.gj, 32                   ; 2 uses
  %i.gs = ashr exact i64 %sext50.i, 32
  %i.gt = getelementptr [88 x i8], ptr %i.fk, i64 %i.gs
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %i.gt, i8 0, i64 6, i1 false)
  %sext47.i = add i64 %sext50.i, 4294967296
  %i.gu = ashr exact i64 %sext47.i, 32            ; 2 uses
  %i.gv = icmp ugt i64 %i.gu, 14
  br i1 %i.gv, label %find_next_bit.exit54.i.thread, label %.preheader52, !prof !12, !llvm.loop !41

find_next_bit.exit54.i.thread:                    ; preds = %.preheader52, %bb.al, %find_next_bit.exit54.i
  %i.gw = trunc nuw i64 %.1 to i16
  %i.gx = call i32 @ieee80211_vif_set_links(ptr noundef %.0.i561, i16 noundef zeroext %i.gw, i16 noundef zeroext 0) #10, !inline_history !39 ; 0 uses
  %i.gy = getelementptr i8, ptr %.pn.i60, i64 2416
  br label %bb.am

bb.am:                                            ; preds = %find_next_bit.exit54.i.thread, %bb.an
  %i.gz = phi i64 [ 0, %find_next_bit.exit54.i.thread ], [ %i.hi, %bb.an ]
  %i.ha = shl nsw i64 -1, %i.gz
  %i.hb = and i64 %i.fi, %i.ha                    ; 2 uses
  %.not.i.i9 = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i9, label %find_next_bit.exit.i10.thread, label %find_next_bit.exit.i10

find_next_bit.exit.i10:                           ; preds = %bb.am
  %i.hc = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.hb) #9, !inline_history !39, !srcloc !11 ; 2 uses
  %i.hd = trunc i64 %i.hc to i32
  %i.he = icmp slt i32 %i.hd, 15
  br i1 %i.he, label %bb.an, label %find_next_bit.exit.i10.thread

bb.an:                                            ; preds = %find_next_bit.exit.i10
  %sext49.i = shl i64 %i.hc, 32                   ; 2 uses
  %i.hf = ashr exact i64 %sext49.i, 29
  %i.hg = getelementptr i8, ptr %i.gy, i64 %i.hf
  %i.hh = load ptr, ptr %i.hg, align 8
  call void @ieee80211_link_vlan_copy_chanctx(ptr noundef %i.hh) #12, !inline_history !39
  %sext48.i = add i64 %sext49.i, 4294967296
  %i.hi = ashr exact i64 %sext48.i, 32            ; 2 uses
  %i.hj = icmp ugt i64 %i.hi, 14
  br i1 %i.hj, label %find_next_bit.exit.i10.thread, label %bb.am, !prof !12, !llvm.loop !42

find_next_bit.exit.i10.thread:                    ; preds = %bb.am, %bb.an, %find_next_bit.exit.i10, %bb.ai
  %.pn.i = load ptr, ptr %.pn.i60, align 8        ; 2 uses
  %.not = icmp eq ptr %.pn.i, %i.es
  br i1 %.not, label %ieee80211_check_dup_link_addrs.exit, label %bb.af, !llvm.loop !43

ieee80211_check_dup_link_addrs.exit:              ; preds = %bb.v, %find_next_bit.exit.i10.thread, %ieee80211_tear_down_links.exit, %bb.ae, %bb.ad
  %.1149.i = phi i32 [ %i.em, %bb.ad ], [ %i.em, %bb.ae ], [ %i.em, %find_next_bit.exit.i10.thread ], [ 0, %ieee80211_tear_down_links.exit ], [ -114, %bb.v ]
  %spec.select.i = select i1 %i.y, i32 %.1149.i, i32 0 ; 2 uses
  %.not165.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not165.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %ieee80211_check_dup_link_addrs.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(120) %i.ar, ptr noundef nonnull align 16 dereferenceable(120) %i.c, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(120) %i.aq, ptr noundef nonnull align 16 dereferenceable(120) %i.b, i64 120, i1 false)
  call fastcc void @ieee80211_set_vif_links_bitmaps(ptr noundef %0, i16 noundef zeroext %i.g, i16 noundef zeroext %2) #10, !inline_history !17, !srcloc !44
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.aq
  %i.hk = phi i64 [ 0, %bb.ao ], [ %i.ht, %bb.aq ]
  %i.hl = shl nsw i64 -1, %i.hk
  %i.hm = and i64 %i.hl, %i.ad                    ; 2 uses
  %.not.i173.i = icmp eq i64 %i.hm, 0
  br i1 %.not.i173.i, label %find_next_bit.exit175.i.thread, label %find_next_bit.exit175.i

find_next_bit.exit175.i:                          ; preds = %bb.ap
  %i.hn = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.hm) #9, !inline_history !17, !srcloc !11 ; 3 uses
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = icmp ult i32 %i.ho, 15
  br i1 %i.hp, label %bb.aq, label %find_next_bit.exit175.i.thread

bb.aq:                                            ; preds = %find_next_bit.exit175.i
  %i.hq = and i64 %i.hn, 15
  %6 = getelementptr [8 x i8], ptr %i.a, i64 %i.hq
  %i.hr = load ptr, ptr %6, align 8
  call void @ieee80211_link_stop(ptr noundef %i.hr) #10, !inline_history !17
  %i.hs = add nuw nsw i64 %i.hn, 1
  %i.ht = and i64 %i.hs, 31                       ; 2 uses
  %i.hu = icmp samesign ugt i64 %i.ht, 14
  br i1 %i.hu, label %find_next_bit.exit175.i.thread, label %bb.ap, !prof !12, !llvm.loop !45

find_next_bit.exit175.i.thread:                   ; preds = %bb.ap, %bb.aq, %find_next_bit.exit175.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.d, i8 0, i64 120, i1 false)
  br label %.loopexit55

bb.ar:                                            ; preds = %ieee80211_check_dup_link_addrs.exit
  %i.hv = getelementptr i8, ptr %0, i64 1856      ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 1632   ; 2 uses
  %.0154.i63 = load ptr, ptr %i.hx, align 8       ; 2 uses
  %.not4964 = icmp eq ptr %.0154.i63, %i.hx
  br i1 %.not4964, label %.preheader, label %.lr.ph66

.preheader:                                       ; preds = %find_next_bit.exit172.i.thread, %bb.ar
  %i.hy = and i64 %i.p, 32767
  br label %bb.au

.lr.ph66:                                         ; preds = %bb.ar, %find_next_bit.exit172.i.thread
  %i.hz = phi ptr [ %i.ir, %find_next_bit.exit172.i.thread ], [ %i.hw, %bb.ar ]
  %.0154.i65 = phi ptr [ %.0154.i, %find_next_bit.exit172.i.thread ], [ %.0154.i63, %bb.ar ] ; 4 uses
  %i.ia = getelementptr i8, ptr %.0154.i65, i64 2968
  %i.ib = load i16, ptr %i.ia, align 8
  %i.ic = zext i16 %i.ib to i64                   ; 2 uses
  %i.id = and i64 %i.ic, %i.p                     ; 2 uses
  %i.ie = getelementptr i8, ptr %.0154.i65, i64 80
  %i.if = load ptr, ptr %i.ie, align 8
  %.not167.i = icmp ne ptr %i.if, %0
  %i.ig = icmp eq i64 %i.id, %i.ic
  %or.cond = select i1 %.not167.i, i1 true, i1 %i.ig
  br i1 %or.cond, label %find_next_bit.exit172.i.thread, label %.preheader50

.preheader50:                                     ; preds = %.lr.ph66
  %i.ih = and i64 %i.id, 32767
  br label %bb.as

bb.as:                                            ; preds = %.preheader50, %bb.at
  %i.ii = phi i64 [ 0, %.preheader50 ], [ %i.ip, %bb.at ]
  %i.ij = shl nsw i64 -1, %i.ii
  %i.ik = and i64 %i.ih, %i.ij                    ; 2 uses
  %.not.i170.i = icmp eq i64 %i.ik, 0
  br i1 %.not.i170.i, label %find_next_bit.exit172.i.thread.loopexit, label %find_next_bit.exit172.i

find_next_bit.exit172.i:                          ; preds = %bb.as
  %i.il = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.ik) #9, !inline_history !17, !srcloc !11 ; 2 uses
  %i.im = trunc i64 %i.il to i32                  ; 2 uses
  %i.in = icmp ult i32 %i.im, 15
  br i1 %i.in, label %bb.at, label %find_next_bit.exit172.i.thread.loopexit

bb.at:                                            ; preds = %find_next_bit.exit172.i
  call void @ieee80211_sta_remove_link(ptr noundef %.0154.i65, i32 noundef %i.im) #12, !inline_history !17
  %i.io = add nuw nsw i64 %i.il, 1
  %i.ip = and i64 %i.io, 31                       ; 2 uses
  %i.iq = icmp samesign ugt i64 %i.ip, 14
  br i1 %i.iq, label %find_next_bit.exit172.i.thread.loopexit, label %bb.as, !prof !12, !llvm.loop !46

find_next_bit.exit172.i.thread.loopexit:          ; preds = %find_next_bit.exit172.i, %bb.at, %bb.as
  %.pre70 = load ptr, ptr %i.hv, align 8
  br label %find_next_bit.exit172.i.thread

find_next_bit.exit172.i.thread:                   ; preds = %find_next_bit.exit172.i.thread.loopexit, %.lr.ph66
  %i.ir = phi ptr [ %.pre70, %find_next_bit.exit172.i.thread.loopexit ], [ %i.hz, %.lr.ph66 ] ; 2 uses
  %.0154.i = load ptr, ptr %.0154.i65, align 8    ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 1632
  %.not49 = icmp eq ptr %.0154.i, %i.is
  br i1 %.not49, label %.preheader, label %.lr.ph66, !llvm.loop !47

bb.au:                                            ; preds = %.preheader, %bb.av
  %i.it = phi i64 [ 0, %.preheader ], [ %i.jb, %bb.av ]
  %i.iu = shl nsw i64 -1, %i.it
  %i.iv = and i64 %i.hy, %i.iu                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i, label %find_next_bit.exit.i.thread, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.au
  %i.iw = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 32768) %i.iv) #9, !inline_history !17, !srcloc !11 ; 2 uses
  %i.ix = trunc i64 %i.iw to i32                  ; 2 uses
  %i.iy = icmp ult i32 %i.ix, 15
  br i1 %i.iy, label %bb.av, label %.loopexit

find_next_bit.exit.i.thread:                      ; preds = %bb.av, %bb.au
  br i1 %i.cb, label %bb.aw, label %ieee80211_vif_update_links.exit

bb.av:                                            ; preds = %find_next_bit.exit.i
  %i.iz = call i32 @__sta_info_flush(ptr noundef %0, i1 noundef zeroext false, i32 noundef range(i32 -1, 15) %i.ix, ptr noundef null) #12 ; 0 uses
  %i.ja = add nuw nsw i64 %i.iw, 1
  %i.jb = and i64 %i.ja, 31                       ; 2 uses
  %i.jc = icmp samesign ugt i64 %i.jb, 14
  br i1 %i.jc, label %find_next_bit.exit.i.thread, label %bb.au, !prof !12, !llvm.loop !48

.loopexit55:                                      ; preds = %bb.h, %find_next_bit.exit175.i.thread
  %.3151.i = phi i32 [ %spec.select.i, %find_next_bit.exit175.i.thread ], [ -12, %bb.h ] ; 2 uses
  %i.jd = load ptr, ptr %i.a, align 16
  call void @kfree(ptr noundef %i.jd) #12, !inline_history !17
  store ptr null, ptr %i.a, align 16
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  call void @kfree(ptr noundef %i.jf) #12, !inline_history !17
  store ptr null, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 16
  call void @kfree(ptr noundef %i.jh) #12, !inline_history !17
  store ptr null, ptr %i.jg, align 16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8
  call void @kfree(ptr noundef %i.jj) #12, !inline_history !17
  store ptr null, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 16
  call void @kfree(ptr noundef %i.jl) #12, !inline_history !17
  store ptr null, ptr %i.jk, align 16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8
  call void @kfree(ptr noundef %i.jn) #12, !inline_history !17
  store ptr null, ptr %i.jm, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 16
  call void @kfree(ptr noundef %i.jp) #12, !inline_history !17
  store ptr null, ptr %i.jo, align 16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8
  call void @kfree(ptr noundef %i.jr) #12, !inline_history !17
  store ptr null, ptr %i.jq, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 16
  call void @kfree(ptr noundef %i.jt) #12, !inline_history !17
  store ptr null, ptr %i.js, align 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8
  call void @kfree(ptr noundef %i.jv) #12, !inline_history !17
  store ptr null, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 16
  call void @kfree(ptr noundef %i.jx) #12, !inline_history !17
  store ptr null, ptr %i.jw, align 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8
  call void @kfree(ptr noundef %i.jz) #12, !inline_history !17
  store ptr null, ptr %i.jy, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 16
  call void @kfree(ptr noundef %i.kb) #12, !inline_history !17
  store ptr null, ptr %i.ka, align 16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8
  call void @kfree(ptr noundef %i.kd) #12, !inline_history !17
  store ptr null, ptr %i.kc, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 16
  call void @kfree(ptr noundef %i.kf) #12, !inline_history !17
  store ptr null, ptr %i.ke, align 16
  br i1 %i.q, label %bb.aw, label %ieee80211_vif_update_links.exit

.loopexit:                                        ; preds = %find_next_bit.exit.i
  br i1 %i.cb, label %bb.aw, label %ieee80211_vif_update_links.exit

bb.aw:                                            ; preds = %.loopexit55, %find_next_bit.exit.i.thread, %.loopexit
  %.4152.i48 = phi i32 [ 0, %find_next_bit.exit.i.thread ], [ 0, %.loopexit ], [ %.3151.i, %.loopexit55 ]
  %i.kg = getelementptr i8, ptr %0, i64 3848      ; 2 uses
  %i.kh = getelementptr i8, ptr %0, i64 5864      ; 4 uses
  %i.ki = load i32, ptr %i.e, align 8
  %i.kj = icmp eq i32 %i.ki, 4
  br i1 %i.kj, label %bb.ax, label %ieee80211_link_init.exit

bb.ax:                                            ; preds = %bb.aw
  %i.kk = getelementptr i8, ptr %0, i64 2272
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = getelementptr i8, ptr %i.kl, i64 3360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(1176) %i.kh, ptr noundef align 8 dereferenceable(1176) %i.km, i64 1176, i1 false)
  br label %ieee80211_link_init.exit

ieee80211_link_init.exit:                         ; preds = %bb.aw, %bb.ax
  store ptr %0, ptr %i.kg, align 8
  %i.kn = getelementptr i8, ptr %0, i64 3856
  store i32 0, ptr %i.kn, align 8
  %i.ko = getelementptr i8, ptr %0, i64 4904
  store ptr %i.kh, ptr %i.ko, align 8
  %i.kp = getelementptr i8, ptr %0, i64 5888
  store i32 0, ptr %i.kp, align 8
  store ptr %i.e, ptr %i.kh, align 8
  %i.kq = getelementptr i8, ptr %0, i64 4316
  store i32 -2147483648, ptr %i.kq, align 4
  %i.kr = getelementptr i8, ptr %0, i64 1856
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = getelementptr i8, ptr %i.ks, i64 5636
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = getelementptr i8, ptr %0, i64 4312
  store i32 %i.ku, ptr %i.kv, align 8
  %i.kw = getelementptr i8, ptr %0, i64 6132
  store i32 -2147483648, ptr %i.kw, align 4
  %i.kx = getelementptr i8, ptr %0, i64 3960      ; 3 uses
  store volatile ptr %i.kx, ptr %i.kx, align 8
  %i.ky = getelementptr i8, ptr %0, i64 3968
  store volatile ptr %i.kx, ptr %i.ky, align 8
  %i.kz = getelementptr i8, ptr %0, i64 3976
  store ptr @ieee80211_csa_finalize_work, ptr %i.kz, align 8
  %i.la = getelementptr i8, ptr %0, i64 4088      ; 3 uses
  store volatile ptr %i.la, ptr %i.la, align 8
  %i.lb = getelementptr i8, ptr %0, i64 4096
  store volatile ptr %i.la, ptr %i.lb, align 8
  %i.lc = getelementptr i8, ptr %0, i64 4104
  store ptr @ieee80211_color_change_finalize_work, ptr %i.lc, align 8
  %i.ld = getelementptr i8, ptr %0, i64 4112      ; 3 uses
  %i.le = getelementptr i8, ptr %0, i64 4144
  call void @timer_init_key(ptr noundef %i.le, ptr noundef nonnull @wiphy_delayed_work_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  store volatile ptr %i.ld, ptr %i.ld, align 8
  %i.lf = getelementptr i8, ptr %0, i64 4120
  store volatile ptr %i.ld, ptr %i.lf, align 8
  %i.lg = getelementptr i8, ptr %0, i64 4128
  store ptr @ieee80211_color_collision_detection_work, ptr %i.lg, align 8
  %i.lh = getelementptr i8, ptr %0, i64 4328      ; 3 uses
  %i.li = getelementptr i8, ptr %0, i64 4360
  call void @hrtimer_setup(ptr noundef %i.li, ptr noundef nonnull @wiphy_hrtimer_work_timer, i32 noundef 7, i32 noundef 1) #12
  store volatile ptr %i.lh, ptr %i.lh, align 8
  %i.lj = getelementptr i8, ptr %0, i64 4336
  store volatile ptr %i.lh, ptr %i.lj, align 8
  %i.lk = getelementptr i8, ptr %0, i64 4344
  store ptr @ieee80211_dfs_cac_timer_work, ptr %i.lk, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !27
  %i.ll = getelementptr i8, ptr %0, i64 7040
  store volatile ptr %i.kh, ptr %i.ll, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !28
  %i.lm = getelementptr i8, ptr %0, i64 4920
  store volatile ptr %i.kg, ptr %i.lm, align 8
  br label %ieee80211_vif_update_links.exit

ieee80211_vif_update_links.exit:                  ; preds = %.loopexit55, %find_next_bit.exit.i.thread, %bb.b, %.loopexit, %ieee80211_link_init.exit
  %.0.i = phi i32 [ 0, %bb.b ], [ %.4152.i48, %ieee80211_link_init.exit ], [ 0, %.loopexit ], [ 0, %find_next_bit.exit.i.thread ], [ %.3151.i, %.loopexit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ln = load ptr, ptr %i.d, align 16
  call void @kfree(ptr noundef %i.ln) #12
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void @kfree(ptr noundef %i.lp) #12
  %i.lq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.lr = load ptr, ptr %i.lq, align 16
  call void @kfree(ptr noundef %i.lr) #12
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8
  call void @kfree(ptr noundef %i.lt) #12
  %i.lu = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.lv = load ptr, ptr %i.lu, align 16
  call void @kfree(ptr noundef %i.lv) #12
  %i.lw = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.lx = load ptr, ptr %i.lw, align 8
  call void @kfree(ptr noundef %i.lx) #12
  %i.ly = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.lz = load ptr, ptr %i.ly, align 16
  call void @kfree(ptr noundef %i.lz) #12
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.mb = load ptr, ptr %i.ma, align 8
  call void @kfree(ptr noundef %i.mb) #12
  %i.mc = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.md = load ptr, ptr %i.mc, align 16
  call void @kfree(ptr noundef %i.md) #12
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.mf = load ptr, ptr %i.me, align 8
  call void @kfree(ptr noundef %i.mf) #12
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.mh = load ptr, ptr %i.mg, align 16
  call void @kfree(ptr noundef %i.mh) #12
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.mj = load ptr, ptr %i.mi, align 8
  call void @kfree(ptr noundef %i.mj) #12
  %i.mk = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ml = load ptr, ptr %i.mk, align 16
  call void @kfree(ptr noundef %i.ml) #12
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.mn = load ptr, ptr %i.mm, align 8
  call void @kfree(ptr noundef %i.mn) #12
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.mp = load ptr, ptr %i.mo, align 16
  call void @kfree(ptr noundef %i.mp) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_apvlan_link_clear(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1744       ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %i.a, align 8
  %i.c = tail call i32 @ieee80211_vif_set_links(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_link_setup(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 5072
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ieee80211_mgd_setup_link(ptr noundef %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_mgd_setup_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_link_init(ptr noundef %0, i32 noundef %1, ptr noundef initializes((0, 12), (464, 472), (1056, 1064)) %2, ptr noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp slt i32 %1, 0                       ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 5072       ; 3 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 2272
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 3360
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 4536
  %i.i = zext nneg i32 %spec.store.select to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(1176) %3, ptr noundef align 8 dereferenceable(1176) %.0, i64 1176, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  store ptr %0, ptr %2, align 8
  %i.l = getelementptr i8, ptr %2, i64 8
  store i32 %spec.store.select, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %2, i64 1056
  store ptr %3, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %3, i64 24
  store i32 %spec.store.select, ptr %i.n, align 8
  store ptr %i.b, ptr %3, align 8
  %i.o = getelementptr i8, ptr %2, i64 468
  store i32 -2147483648, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %0, i64 1856
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 5636
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %2, i64 464
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %3, i64 268
  store i32 -2147483648, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %2, i64 112        ; 3 uses
  store volatile ptr %i.v, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %2, i64 120
  store volatile ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %2, i64 128
  store ptr @ieee80211_csa_finalize_work, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %2, i64 240        ; 3 uses
  store volatile ptr %i.y, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %2, i64 248
  store volatile ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %2, i64 256
  store ptr @ieee80211_color_change_finalize_work, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %2, i64 264       ; 3 uses
  %i.ac = getelementptr i8, ptr %2, i64 296
  tail call void @timer_init_key(ptr noundef %i.ac, ptr noundef nonnull @wiphy_delayed_work_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  store volatile ptr %i.ab, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %2, i64 272
  store volatile ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %2, i64 280
  store ptr @ieee80211_color_collision_detection_work, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %2, i64 480       ; 3 uses
  %i.ag = getelementptr i8, ptr %2, i64 512
  tail call void @hrtimer_setup(ptr noundef %i.ag, ptr noundef nonnull @wiphy_hrtimer_work_timer, i32 noundef 7, i32 noundef 1) #12
  store volatile ptr %i.af, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %2, i64 488
  store volatile ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %2, i64 496
  store ptr @ieee80211_dfs_cac_timer_work, ptr %i.ai, align 8
  br i1 %i.a, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.b, align 8
  switch i32 %i.aj, label %bb.j [
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 2, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ak = getelementptr i8, ptr %3, i64 28        ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 424
  %i.am = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %i.an = getelementptr [88 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  store i32 %i.ao, ptr %i.ak, align 4
  %i.ap = getelementptr i8, ptr %i.an, i64 4
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = getelementptr i8, ptr %3, i64 32
  store i16 %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %3, i64 16
  store ptr %i.ak, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %0, i64 1744
  %i.au = load i16, ptr %i.at, align 8
  %i.av = zext i16 %i.au to i64
  %i.aw = shl nuw i64 1, %i.am
  %i.ax = and i64 %i.aw, %i.av
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %bb.i, label %bb.k, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "2196: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2196b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2196) #11, !srcloc !49
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 146, i32 2305, i64 16) #11, !srcloc !50
  tail call void asm sideeffect "2197: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2197b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2197) #11, !srcloc !51
  br label %bb.k

end_hunk_1
