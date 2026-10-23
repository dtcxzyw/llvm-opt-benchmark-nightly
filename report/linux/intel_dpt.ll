Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpt?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__UNIQUE_ID_modinfo_556 = internal constant [19 x i8] c"i915.import_ns=PWM\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/i915/display/intel_dpt.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_modinfo_556], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dpt_configure(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 24 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1168
  %i.e = load i16, ptr %i.d, align 8
  switch i16 %i.e, label %.loopexit [
    i16 14, label %bb.d
    i16 13, label %bb.r
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 1664
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 1669       ; 7 uses
  %i.i = shl i32 %i.g, 12                         ; 4 uses
  %1 = add i32 %i.i, 459372                       ; 7 uses
  %i.j = getelementptr i8, ptr %i.c, i64 5160     ; 7 uses
  %i.k = load i8, ptr %i.h, align 1
  %i.l = zext i8 %i.k to i64                      ; 2 uses
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %i.j, align 8, !range !14, !noundef !15
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = select i1 %i.p, i32 0, i32 524288
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %1) #2
  %.val.i = load ptr, ptr %i.c, align 8
  %i.r = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #2 ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 %i.t(ptr noundef %i.r, i32 %1, i1 noundef zeroext true) #2, !inline_history !12
  %i.v = and i32 %i.u, -524289
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr i8, ptr %i.r, i64 176
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef %i.r, i32 %1, i32 noundef %i.w, i1 noundef zeroext true) #2, !inline_history !13
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %1) #2
  %.pre = load i8, ptr %i.h, align 1
  %.pre29 = zext i8 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %.pre29, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.z = and i64 %.pre-phi, 2
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %2 = or disjoint i32 %1, 256                    ; 4 uses
  %i.ab = load i8, ptr %i.j, align 8, !range !14, !noundef !15
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = select i1 %i.ac, i32 0, i32 524288
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %2) #2
  %.val.i.1 = load ptr, ptr %i.c, align 8
  %i.ae = tail call ptr @to_intel_uncore(ptr noundef %.val.i.1) #2 ; 4 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 144
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 %i.ag(ptr noundef %i.ae, i32 %2, i1 noundef zeroext true) #2, !inline_history !12
  %i.ai = and i32 %i.ah, -524289
  %i.aj = or disjoint i32 %i.ai, %i.ad
  %i.ak = getelementptr i8, ptr %i.ae, i64 176
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef %i.ae, i32 %2, i32 noundef %i.aj, i1 noundef zeroext true) #2, !inline_history !13
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %2) #2
  %.pre24 = load i8, ptr %i.h, align 1
  %.pre30 = zext i8 %.pre24 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi31 = phi i64 [ %.pre30, %bb.g ], [ %.pre-phi, %bb.f ] ; 2 uses
  %i.am = and i64 %.pre-phi31, 4
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add i32 %i.i, 459884                    ; 4 uses
  %i.ap = load i8, ptr %i.j, align 8, !range !14, !noundef !15
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.aq, i32 0, i32 524288
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.ao) #2
  %.val.i.2 = load ptr, ptr %i.c, align 8
  %i.as = tail call ptr @to_intel_uncore(ptr noundef %.val.i.2) #2 ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 144
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 %i.au(ptr noundef %i.as, i32 %i.ao, i1 noundef zeroext true) #2, !inline_history !12
  %i.aw = and i32 %i.av, -524289
  %i.ax = or disjoint i32 %i.aw, %i.ar
  %i.ay = getelementptr i8, ptr %i.as, i64 176
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef %i.as, i32 %i.ao, i32 noundef %i.ax, i1 noundef zeroext true) #2, !inline_history !13
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.ao) #2
  %.pre25 = load i8, ptr %i.h, align 1
  %.pre32 = zext i8 %.pre25 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi33 = phi i64 [ %.pre32, %bb.i ], [ %.pre-phi31, %bb.h ] ; 2 uses
  %i.ba = and i64 %.pre-phi33, 8
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add i32 %i.i, 460140                    ; 4 uses
  %i.bd = load i8, ptr %i.j, align 8, !range !14, !noundef !15
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = select i1 %i.be, i32 0, i32 524288
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.bc) #2
  %.val.i.3 = load ptr, ptr %i.c, align 8
  %i.bg = tail call ptr @to_intel_uncore(ptr noundef %.val.i.3) #2 ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call i32 %i.bi(ptr noundef %i.bg, i32 %i.bc, i1 noundef zeroext true) #2, !inline_history !12
  %i.bk = and i32 %i.bj, -524289
  %i.bl = or disjoint i32 %i.bk, %i.bf
  %i.bm = getelementptr i8, ptr %i.bg, i64 176
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef %i.bg, i32 %i.bc, i32 noundef %i.bl, i1 noundef zeroext true) #2, !inline_history !13
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.bc) #2
  %.pre26 = load i8, ptr %i.h, align 1
  %.pre34 = zext i8 %.pre26 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi35 = phi i64 [ %.pre34, %bb.k ], [ %.pre-phi33, %bb.j ] ; 2 uses
  %i.bo = and i64 %.pre-phi35, 16
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %3 = or disjoint i32 %1, 1024                   ; 4 uses
  %i.bq = load i8, ptr %i.j, align 8, !range !14, !noundef !15
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = select i1 %i.br, i32 0, i32 524288
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %3) #2
  %.val.i.4 = load ptr, ptr %i.c, align 8
  %i.bt = tail call ptr @to_intel_uncore(ptr noundef %.val.i.4) #2 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 144
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call i32 %i.bv(ptr noundef %i.bt, i32 %3, i1 noundef zeroext true) #2, !inline_history !12
  %i.bx = and i32 %i.bw, -524289
  %i.by = or disjoint i32 %i.bx, %i.bs
  %i.bz = getelementptr i8, ptr %i.bt, i64 176
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef %i.bt, i32 %3, i32 noundef %i.by, i1 noundef zeroext true) #2, !inline_history !13
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %3) #2
  %.pre27 = load i8, ptr %i.h, align 1
  %.pre36 = zext i8 %.pre27 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi37 = phi i64 [ %.pre36, %bb.m ], [ %.pre-phi35, %bb.l ] ; 2 uses
  %i.cb = and i64 %.pre-phi37, 32
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %4 = or disjoint i32 %1, 1280                   ; 4 uses
  %i.cd = load i8, ptr %i.j, align 8, !range !14, !noundef !15
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = select i1 %i.ce, i32 0, i32 524288
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %4) #2
  %.val.i.5 = load ptr, ptr %i.c, align 8
  %i.cg = tail call ptr @to_intel_uncore(ptr noundef %.val.i.5) #2 ; 4 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 144
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call i32 %i.ci(ptr noundef %i.cg, i32 %4, i1 noundef zeroext true) #2, !inline_history !12
  %i.ck = and i32 %i.cj, -524289
  %i.cl = or disjoint i32 %i.ck, %i.cf
  %i.cm = getelementptr i8, ptr %i.cg, i64 176
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef %i.cg, i32 %4, i32 noundef %i.cl, i1 noundef zeroext true) #2, !inline_history !13
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %4) #2
  %.pre28 = load i8, ptr %i.h, align 1
  %.pre38 = zext i8 %.pre28 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi39 = phi i64 [ %.pre38, %bb.o ], [ %.pre-phi37, %bb.n ]
  %i.co = and i64 %.pre-phi39, 64
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %narrow = add i32 %i.i, 460908
  br label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.c
  %i.cq = getelementptr i8, ptr %i.c, i64 5160
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.r, %bb.q
  %.sink56.in = phi ptr [ %i.j, %bb.q ], [ %i.cq, %bb.r ]
  %.sink55 = phi i32 [ 524288, %bb.q ], [ 1073741824, %bb.r ]
  %narrow.sink54 = phi i32 [ %narrow, %bb.q ], [ 270468, %bb.r ] ; 4 uses
  %.sink48 = phi i32 [ -524289, %bb.q ], [ -1073741825, %bb.r ]
  %.sink56 = load i8, ptr %.sink56.in, align 8, !range !14, !noundef !15
  %i.cr = trunc nuw i8 %.sink56 to i1
  %i.cs = select i1 %i.cr, i32 0, i32 %.sink55
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %narrow.sink54) #2
  %.val.i.6 = load ptr, ptr %i.c, align 8
  %i.ct = tail call ptr @to_intel_uncore(ptr noundef %.val.i.6) #2 ; 4 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 144
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call i32 %i.cv(ptr noundef %i.ct, i32 %narrow.sink54, i1 noundef zeroext true) #2
  %i.cx = and i32 %i.cw, %.sink48
  %i.cy = or disjoint i32 %i.cx, %i.cs
  %i.cz = getelementptr i8, ptr %i.ct, i64 176
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef %i.ct, i32 %narrow.sink54, i32 noundef %i.cy, i1 noundef zeroext true) #2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %narrow.sink54) #2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.p, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dpt_suspend(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1188
  %i.b = load i8, ptr %i.a, align 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 488
  tail call void @mutex_lock(ptr noundef %i.d) #2
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 488
  %i.g = tail call zeroext i1 @mutex_is_locked(ptr noundef %i.f) #2
  br i1 %i.g, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "680: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 680b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 680) #3, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 57, i32 2305, i64 16) #3, !srcloc !18
  tail call void asm sideeffect "681: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 681b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 681) #3, !srcloc !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 520      ; 2 uses
  %.pn24 = load ptr, ptr %i.i, align 8            ; 2 uses
  %.not2225 = icmp eq ptr %.pn24, %i.i
  br i1 %.not2225, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %i.j = phi ptr [ %i.m, %bb.f ], [ %i.h, %bb.d ]
  %.pn26 = phi ptr [ %.pn, %bb.f ], [ %.pn24, %bb.d ] ; 2 uses
  %i.k = getelementptr i8, ptr %.pn26, i64 464
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @intel_parent_dpt_suspend(ptr noundef %0, ptr noundef nonnull %i.l) #2
  %.pre = load ptr, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.m = phi ptr [ %.pre, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %.pn = load ptr, ptr %.pn26, align 8            ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 520
  %.not22 = icmp eq ptr %.pn, %i.n
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.lcssa = phi ptr [ %i.h, %bb.d ], [ %i.m, %bb.f ]
  %i.o = getelementptr i8, ptr %.lcssa, i64 488
  tail call void @mutex_unlock(ptr noundef %i.o) #2
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_parent_dpt_suspend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dpt_resume(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1188
  %i.b = load i8, ptr %i.a, align 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 488
  tail call void @mutex_lock(ptr noundef %i.d) #2
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 488
  %i.g = tail call zeroext i1 @mutex_is_locked(ptr noundef %i.f) #2
  br i1 %i.g, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "682: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 682b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 682) #3, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 87, i32 2305, i64 16) #3, !srcloc !22
  tail call void asm sideeffect "683: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 683b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 683) #3, !srcloc !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 520      ; 2 uses
  %.pn24 = load ptr, ptr %i.i, align 8            ; 2 uses
  %.not2225 = icmp eq ptr %.pn24, %i.i
  br i1 %.not2225, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %i.j = phi ptr [ %i.m, %bb.f ], [ %i.h, %bb.d ]
  %.pn26 = phi ptr [ %.pn, %bb.f ], [ %.pn24, %bb.d ] ; 2 uses
  %i.k = getelementptr i8, ptr %.pn26, i64 464
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @intel_parent_dpt_resume(ptr noundef %0, ptr noundef nonnull %i.l) #2
  %.pre = load ptr, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.m = phi ptr [ %.pre, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %.pn = load ptr, ptr %.pn26, align 8            ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 520
  %.not22 = icmp eq ptr %.pn, %i.n
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.lcssa = phi ptr [ %i.h, %bb.d ], [ %i.m, %bb.f ]
  %i.o = getelementptr i8, ptr %.lcssa, i64 488
  tail call void @mutex_unlock(ptr noundef %i.o) #2
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_parent_dpt_resume(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #1

end_hunk_0
