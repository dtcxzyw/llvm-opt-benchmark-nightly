Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xt_policy?download=true
inline.NumInlined: 12
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section\09\22.initcall6.init\22, \22a\22\09\09"
    "__initcall__kmod_xt_policy__1020_200_policy_mt_init6:\09\09\09"
    ".long\09policy_mt_init - .\09"
    ".previous\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.30 }
%union.anon.30 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID_modinfo_1016 = internal constant [51 x i8] c"xt_policy.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1017 = internal constant [50 x i8] c"xt_policy.description=Xtables: IPsec policy match\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1018 = internal constant [39 x i8] c"xt_policy.file=net/netfilter/xt_policy\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1019 = internal constant [22 x i8] c"xt_policy.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_addressable_policy_mt_init_1021 = internal global ptr @policy_mt_init, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_1022 = internal constant [27 x i8] c"xt_policy.alias=ipt_policy\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1023 = internal constant [28 x i8] c"xt_policy.alias=ip6t_policy\00", section ".modinfo", align 1
@policy_mt_reg = internal global [2 x { %struct.list_head, [29 x i8], i8, [2 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }] [{ %struct.list_head, [29 x i8], i8, [2 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 } { %struct.list_head zeroinitializer, [29 x i8] c"policy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, [2 x i8] zeroinitializer, ptr @policy_mt, ptr @policy_mt_check, ptr @policy_mt_check_hooks, ptr null, ptr null, ptr null, i32 308, i32 0, i32 0, i16 0, i16 2 }, { %struct.list_head, [29 x i8], i8, [2 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 } { %struct.list_head zeroinitializer, [29 x i8] c"policy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, [2 x i8] zeroinitializer, ptr @policy_mt, ptr @policy_mt_check, ptr @policy_mt_check_hooks, ptr null, ptr null, ptr null, i32 308, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 16
@.str.3 = private unnamed_addr constant [46 x i8] c"neither incoming nor outgoing policy selected\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"too many policy elements\00", align 1
@policy_mt_check._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i64 0 }, align 8
@__func__.policy_mt_check = private unnamed_addr constant [16 x i8] c"policy_mt_check\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\016xt_policy: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"output policy not valid in PREROUTING and INPUT\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"input policy not valid in POSTROUTING and OUTPUT\00", align 1
@policy_mt_check_hooks._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i64 0 }, align 8
@__func__.policy_mt_check_hooks = private unnamed_addr constant [22 x i8] c"policy_mt_check_hooks\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_addressable_policy_mt_init_1021, ptr @__UNIQUE_ID_modinfo_1016, ptr @__UNIQUE_ID_modinfo_1017, ptr @__UNIQUE_ID_modinfo_1018, ptr @__UNIQUE_ID_modinfo_1019, ptr @__UNIQUE_ID_modinfo_1022, ptr @__UNIQUE_ID_modinfo_1023, ptr @policy_mt_exit], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @policy_mt_exit() #0 section ".exit.text" align 16 prefalign(16) {
bb.a:
  tail call void @xt_unregister_matches(ptr noundef nonnull @policy_mt_reg, i32 noundef 2) #6
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @policy_mt_init() #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @xt_register_matches(ptr noundef nonnull @policy_mt_reg, i32 noundef 2) #6
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define internal zeroext i1 @policy_mt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr i8, ptr %i.b, i64 304
  %i.d = load i16, ptr %i.c, align 4
  %.fr9.i = freeze i16 %i.d                       ; 5 uses
  %i.e = and i16 %.fr9.i, 1
  %.not = icmp eq i16 %i.e, 0
  %i.f = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val, i64 1
  %.val.val = load i8, ptr %i.g, align 1
  %i.h = zext i8 %.val.val to i16                 ; 4 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 127
  %.val.i.i.i = load i8, ptr %i.i, align 1
  %i.j = trunc i8 %.val.i.i.i to i1
  br i1 %i.j, label %skb_sec_path.exit.i, label %match_policy_in.exit

skb_sec_path.exit.i:                              ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 224
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p     ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %match_policy_in.exit, label %bb.c

bb.c:                                             ; preds = %skb_sec_path.exit.i
  %i.s = and i16 %.fr9.i, 8                       ; 2 uses
  %.not.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.b, i64 306
  %i.u = load i16, ptr %i.t, align 2              ; 2 uses
  %i.v = getelementptr i8, ptr %i.q, i64 68
  %i.w = load i8, ptr %i.v, align 4               ; 3 uses
  %i.x = zext i8 %i.w to i16
  %.not26.i = icmp eq i16 %i.u, %i.x
  br i1 %.not26.i, label %.thread.i, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr i8, ptr %i.q, i64 68
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4 ; 2 uses
  %i.y = zext i8 %.pre.i to i64
  %.028.i = add nuw nsw i64 %i.y, 4294967295
  %.not31.i = icmp eq i8 %.pre.i, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.split.us.i

.thread.i:                                        ; preds = %bb.d
  %.not3146.i = icmp eq i8 %i.w, 0
  br i1 %.not3146.i, label %._crit_edge.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.thread.i
  %2 = zext i8 %i.w to i64                        ; 2 uses
  %i.z = zext nneg i16 %i.u to i64
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.b, i64 306
  %i.ab = load i16, ptr %i.aa, align 2
  %.not.us.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.us.not.i, label %.loopexit, label %.lr.ph.split.us.split.preheader.i

.lr.ph.split.us.split.preheader.i:                ; preds = %.lr.ph.split.us.i
  %i.ac = and i64 %.028.i, 4294967295
  br label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %bb.f, %.lr.ph.split.us.split.preheader.i
  %indvars.iv39.i = phi i64 [ %i.ac, %.lr.ph.split.us.split.preheader.i ], [ %indvars.iv.next40.i, %bb.f ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv39.i
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call fastcc zeroext i1 @match_xfrm_state(ptr noundef %i.ae, ptr noundef readonly %i.b, i16 noundef zeroext range(i16 0, 256) %i.h) #7, !srcloc !12
  br i1 %i.af, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.split.i
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, -1
  %i.ag = icmp sgt i64 %indvars.iv39.i, 0
  br i1 %i.ag, label %.lr.ph.split.us.split.i, label %._crit_edge.i, !llvm.loop !10

.lr.ph.split.i:                                   ; preds = %bb.h, %.lr.ph.split.preheader.i
  %indvars.iv34.i = phi i64 [ %2, %.lr.ph.split.preheader.i ], [ %indvars.iv.next35.i, %bb.h ] ; 3 uses
  %indvars.iv.next35.i = add nsw i64 %indvars.iv34.i, -1 ; 2 uses
  %3 = sub nuw nsw i64 %2, %indvars.iv34.i        ; 2 uses
  %.not.i = icmp samesign ult i64 %3, %i.z
  br i1 %.not.i, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.ah = getelementptr [76 x i8], ptr %i.b, i64 %3
  %i.ai = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.next35.i
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call fastcc zeroext i1 @match_xfrm_state(ptr noundef %i.aj, ptr noundef readonly %i.ah, i16 noundef zeroext range(i16 0, 256) %i.h) #7, !srcloc !12
  br i1 %i.ak, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %4 = icmp samesign ugt i64 %indvars.iv34.i, 1
  br i1 %4, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.h, %bb.f, %.thread.i, %bb.e
  %.lobit.i = lshr exact i16 %i.s, 3
  %i.al = zext nneg i16 %.lobit.i to i32
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  %i.am = getelementptr i8, ptr %0, i64 88
  %.val14 = load i64, ptr %i.am, align 8
  %i.an = and i64 %.val14, -2                     ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = and i16 %.fr9.i, 8                      ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %match_policy_in.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.not2.i = icmp eq i64 %i.an, 0
  br i1 %.not2.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.not27.i = icmp eq i16 %i.ap, 0
  %i.at = getelementptr i8, ptr %i.b, i64 306     ; 2 uses
  br i1 %.not27.i, label %.lr.ph.split.us.i19, label %.lr.ph.split.i15

.lr.ph.split.us.i19:                              ; preds = %.lr.ph.i, %bb.l
  %.04.us.i = phi i32 [ %i.ba, %bb.l ], [ 0, %.lr.ph.i ] ; 2 uses
  %.0213.us.i = phi ptr [ %i.az, %bb.l ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.au = getelementptr i8, ptr %.0213.us.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not25.us.i = icmp eq ptr %i.av, null
  br i1 %.not25.us.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i19
  %i.aw = load i16, ptr %i.at, align 2
  %.not28.us.not.i = icmp eq i16 %i.aw, 0
  br i1 %.not28.us.not.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call fastcc zeroext i1 @match_xfrm_state(ptr noundef nonnull %i.av, ptr noundef readonly %i.b, i16 noundef zeroext range(i16 0, 256) %i.h) #7, !srcloc !14
  br i1 %i.ax, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr i8, ptr %.0213.us.i, i64 232
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = add i32 %.04.us.i, 1                    ; 2 uses
  %.not.us.i = icmp eq ptr %i.az, null
  br i1 %.not.us.i, label %.critedge.i, label %.lr.ph.split.us.i19, !llvm.loop !11

.lr.ph.split.i15:                                 ; preds = %.lr.ph.i, %bb.o
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i.a, %bb.o ], [ 0, %.lr.ph.i ] ; 4 uses
  %.0213.i = phi ptr [ %i.bi, %bb.o ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.0213.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not25.i = icmp eq ptr %i.bc, null
  br i1 %.not25.i, label %.critedge.loopexit10.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.i15
  %i.bd = load i16, ptr %i.at, align 2
  %i.be = zext i16 %i.bd to i64
  %.not28.i = icmp samesign ult i64 %indvars.iv.i16, %i.be
  br i1 %.not28.i, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr [76 x i8], ptr %i.b, i64 %indvars.iv.i16
  %i.bg = tail call fastcc zeroext i1 @match_xfrm_state(ptr noundef nonnull %i.bc, ptr noundef readonly %i.bf, i16 noundef zeroext range(i16 0, 256) %i.h) #7, !srcloc !14
  br i1 %i.bg, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr i8, ptr %.0213.i, i64 232
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bi, null
  br i1 %.not.i17, label %.critedge.loopexit10.i, label %.lr.ph.split.i15, !llvm.loop !11

.critedge.loopexit10.i:                           ; preds = %bb.o, %.lr.ph.split.i15
  %.0.lcssa.ph11.in.i = phi i64 [ %indvars.iv.i16, %.lr.ph.split.i15 ], [ %indvars.iv.next.i.a, %bb.o ]
  %.0.lcssa.ph11.i = trunc nuw nsw i64 %.0.lcssa.ph11.in.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.split.us.i19, %.critedge.loopexit10.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.0.lcssa.ph11.i, %.critedge.loopexit10.i ], [ %.04.us.i, %.lr.ph.split.us.i19 ], [ %i.ba, %bb.l ]
  %.not26.i18 = icmp eq i16 %i.ap, 0
  br i1 %.not26.i18, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.critedge.i
  %i.bj = getelementptr i8, ptr %i.b, i64 306
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  %i.bm = icmp eq i32 %.0.lcssa.i, %i.bl
  %i.bn = zext i1 %i.bm to i32
  br label %.loopexit

match_policy_in.exit:                             ; preds = %bb.b, %skb_sec_path.exit.i, %bb.i
  %i.bo = lshr i16 %.fr9.i, 2
  %.lobit = and i16 %i.bo, 1
  %i.bp = zext nneg i16 %.lobit to i32
  br label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.split.i, %.lr.ph.split.us.split.i, %bb.m, %bb.n, %bb.k, %bb.j, %._crit_edge.i, %bb.d, %.lr.ph.split.us.i, %.critedge.i, %bb.p
  %.0.ph = phi i32 [ 0, %bb.d ], [ 0, %bb.j ], [ %i.al, %._crit_edge.i ], [ 0, %bb.m ], [ %i.bn, %bb.p ], [ 0, %.critedge.i ], [ 1, %.lr.ph.split.us.split.i ], [ 0, %.lr.ph.split.us.i ], [ 1, %bb.k ], [ 0, %bb.n ], [ 0, %.lr.ph.split.i ], [ 0, %bb.g ]
  %i.bq = and i16 %.fr9.i, 4
  %.not11 = icmp eq i16 %i.bq, 0
  %spec.select = select i1 %.not11, i32 %.0.ph, i32 0
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %match_policy_in.exit
  %.1 = phi i32 [ %i.bp, %match_policy_in.exit ], [ %spec.select, %.loopexit ]
  %i.br = icmp ne i32 %.1, 0
  ret i1 %i.br
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @policy_mt_check(ptr nofree noundef readonly captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 304
  %i.d = load i16, ptr %i.c, align 4
  %i.e = and i16 %i.d, 3
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 306
  %i.g = load i16, ptr %i.f, align 2
  %i.h = icmp ugt i16 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %.04 = phi ptr [ @.str.3, %bb.a ], [ @.str.4, %bb.b ]
  %i.i = tail call i32 @___ratelimit(ptr noundef nonnull @policy_mt_check._rs, ptr noundef nonnull @__func__.policy_mt_check) #6
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %.04) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.d ], [ -22, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @policy_mt_check_hooks(ptr nofree noundef readonly captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = and i32 %i.d, 3
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 304
  %i.g = load i16, ptr %i.f, align 4
  %i.h = and i16 %i.g, 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = and i32 %i.d, 24
  %.not8 = icmp eq i32 %i.i, 0
  br i1 %.not8, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.b, i64 304
  %i.k = load i16, ptr %i.j, align 4
  %i.l = and i16 %i.k, 1
  %.not9 = icmp eq i16 %i.l, 0
  br i1 %.not9, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.06 = phi ptr [ @.str.6, %bb.b ], [ @.str.7, %bb.d ]
  %i.m = tail call i32 @___ratelimit(ptr noundef nonnull @policy_mt_check_hooks._rs, ptr noundef nonnull @__func__.policy_mt_check_hooks) #6
  %.not10 = icmp eq i32 %i.m, 0
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %.06) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ -22, %bb.f ], [ -22, %bb.e ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal fastcc zeroext i1 @match_xfrm_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext range(i16 0, 256) %2) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 74
  %i.b = load i8, ptr %i.a, align 2               ; 6 uses
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
