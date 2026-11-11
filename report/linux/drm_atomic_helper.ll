Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_atomic_helper?download=true
inline.NumInlined: 250
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@drm_atomic_helper_wait_for_fences:bb.a
.lr.ph:                                           ; preds = %set_fence_deadline.exit
  %i.av = getelementptr i8, ptr %1, i64 32
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.w
  %i.aw = phi ptr [ %i.ar, %.lr.ph ], [ %i.bp, %bb.w ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8
  %i.ay = getelementptr [32 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %i.ay, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 24     ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not24 = icmp eq ptr %i.bd, null
  br i1 %.not24, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr i8, ptr %i.bb, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %.not25 = icmp eq ptr %i.bf, null
  br i1 %.not25, label %bb.p, label %bb.q, !prof !21

bb.p:                                             ; preds = %bb.o
  call void asm sideeffect "601: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 601b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 601) #10, !srcloc !122
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1848, i32 2305, i64 16) #10, !srcloc !123
  call void asm sideeffect "602: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 602b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 602) #10, !srcloc !124
  %.pre = load ptr, ptr %i.bc, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bg = phi ptr [ %.pre, %bb.p ], [ %i.bd, %bb.o ]
  %i.bh = call i64 @dma_fence_wait_timeout(ptr noundef %i.bg, i1 noundef zeroext %2, i64 noundef 9223372036854775807) #9
  %i.bi = call range(i64 -9223372036854775808, 1) i64 @llvm.smin.i64(i64 %i.bh, i64 0)
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  %.not26 = icmp eq i32 %i.bj, 0
  br i1 %.not26, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not.i27 = icmp eq ptr %i.bk, null
  br i1 %.not.i27, label %dma_fence_put.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr i8, ptr %i.bk, i64 56     ; 4 uses
  %i.bm = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bl, i32 -1, ptr elementtype(i32) %i.bl) #10, !srcloc !26 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = icmp slt i32 %i.bm, 1
  br i1 %i.bo, label %bb.u, label %dma_fence_put.exit, !prof !21

bb.u:                                             ; preds = %bb.t
  call void @refcount_warn_saturate(ptr noundef %i.bl, i32 noundef 3) #9
  br label %dma_fence_put.exit

bb.v:                                             ; preds = %bb.s
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !27
  call void @dma_fence_release(ptr noundef %i.bl) #9, !callees !28, !inline_history !2
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  store ptr null, ptr %i.bc, align 8
  %.pre32 = load ptr, ptr %i.b, align 8
  br label %bb.w

bb.w:                                             ; preds = %dma_fence_put.exit, %bb.m, %bb.n
  %i.bp = phi ptr [ %.pre32, %dma_fence_put.exit ], [ %i.aw, %bb.m ], [ %i.aw, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 640
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %bb.m, label %._crit_edge, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.q, %bb.w, %set_fence_deadline.exit
  %.0 = phi i32 [ 0, %set_fence_deadline.exit ], [ 0, %bb.w ], [ %i.bj, %bb.q ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_atomic_helper_wait_for_vblanks(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.preheader108, label %.loopexit

.preheader108:                                    ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 688
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader108
  %i.i = getelementptr i8, ptr %1, i64 40         ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.f
  %i.j = icmp sgt i32 %i.ad, 0
  br i1 %i.j, label %.lr.ph112, label %.loopexit

.lr.ph112:                                        ; preds = %.preheader
  %i.k = getelementptr i8, ptr %1, i64 40         ; 4 uses
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.084109 = phi i32 [ 0, %.lr.ph ], [ %.185, %bb.f ] ; 4 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = getelementptr [56 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not100 = icmp eq ptr %i.n, null
  br i1 %.not100, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 9
  %i.r = load i8, ptr %i.q, align 1, !range !19, !noundef !20
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @drm_crtc_vblank_get(ptr noundef nonnull %i.n) #9
  %.not101 = icmp eq i32 %i.t, 0
  br i1 %.not101, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.n, i64 136
  %.val104 = load i32, ptr %i.u, align 8
  %i.v = shl nuw i32 1, %.val104
  %i.w = or i32 %i.v, %.084109
  %i.x = tail call i64 @drm_crtc_vblank_count(ptr noundef nonnull %i.n) #9
  %i.y = load ptr, ptr %i.i, align 8
  %i.z = getelementptr [56 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = getelementptr i8, ptr %i.z, i64 48
  store i64 %i.x, ptr %i.aa, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.d, %bb.c
  %.185 = phi i32 [ %.084109, %bb.d ], [ %i.w, %bb.e ], [ %.084109, %bb.c ], [ %.084109, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 688
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.b, label %.preheader, !llvm.loop !125

bb.g:                                             ; preds = %.lr.ph112, %bb.n
  %indvars.iv114 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next115, %bb.n ] ; 5 uses
  %i.ag = load ptr, ptr %i.k, align 8
  %i.ah = getelementptr [56 x i8], ptr %i.ag, i64 %indvars.iv114
  %i.ai = load ptr, ptr %i.ah, align 8            ; 9 uses
  %.not92 = icmp eq ptr %i.ai, null
  br i1 %.not92, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = call ptr @drm_crtc_vblank_waitqueue(ptr noundef nonnull %i.ai) #9 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 136
  %.val = load i32, ptr %i.ak, align 8
  %i.al = shl nuw i32 1, %.val
  %i.am = and i32 %i.al, %.185
  %.not93 = icmp eq i32 %i.am, 0
  br i1 %.not93, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = call i32 @__SCT__might_resched() #9     ; 0 uses
  %i.ao = load ptr, ptr %i.k, align 8
  %i.ap = getelementptr [56 x i8], ptr %i.ao, i64 %indvars.iv114
  %i.aq = getelementptr i8, ptr %i.ap, i64 48
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = call i64 @drm_crtc_vblank_count(ptr noundef nonnull %i.ai) #9
  %.not94.not = icmp eq i64 %i.ar, %i.as
  br i1 %.not94.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !22
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.088 = phi i64 [ 1000, %bb.j ], [ %spec.store.select9, %bb.l ] ; 2 uses
  %i.at = call i64 @prepare_to_wait_event(ptr noundef %i.aj, ptr noundef nonnull %2, i32 noundef 2) #9 ; 0 uses
  %i.au = load ptr, ptr %i.k, align 8
  %i.av = getelementptr [56 x i8], ptr %i.au, i64 %indvars.iv114
  %i.aw = getelementptr i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = call i64 @drm_crtc_vblank_count(ptr noundef nonnull %i.ai) #9
  %.not95 = icmp eq i64 %i.ax, %i.ay              ; 2 uses
  %3 = icmp ne i64 %.088, 0                       ; 2 uses
  %or.cond4 = select i1 %.not95, i1 true, i1 %3
  %spec.store.select8 = select i1 %or.cond4, i64 %.088, i64 1 ; 2 uses
  %spec.select.not = select i1 %.not95, i1 %3, i1 false
  br i1 %spec.select.not, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.az = call i64 @schedule_timeout(i64 noundef %spec.store.select8) #9 ; 2 uses
  %i.ba = load ptr, ptr %i.k, align 8
  %i.bb = getelementptr [56 x i8], ptr %i.ba, i64 %indvars.iv114
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = call i64 @drm_crtc_vblank_count(ptr noundef nonnull %i.ai) #9
  %.not97 = icmp eq i64 %i.bd, %i.be              ; 2 uses
  %i.bf = icmp ne i64 %i.az, 0                    ; 2 uses
  %or.cond7 = select i1 %.not97, i1 true, i1 %i.bf
  %spec.store.select9 = select i1 %or.cond7, i64 %i.az, i64 1 ; 2 uses
  %spec.select102.not = select i1 %.not97, i1 %i.bf, i1 false
  br i1 %spec.select102.not, label %bb.k, label %select.unfold

select.unfold:                                    ; preds = %bb.l, %bb.k
  %.189.ph = phi i64 [ %spec.store.select8, %bb.k ], [ %spec.store.select9, %bb.l ]
  call void @finish_wait(ptr noundef %i.aj, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.bg = and i64 %.189.ph, 4294967295
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %.critedge, !prof !21

bb.m:                                             ; preds = %select.unfold
  %i.bi = getelementptr i8, ptr %i.ai, i64 88
  %i.bj = getelementptr i8, ptr %i.ai, i64 32
  %i.bk = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.28, ptr @.str.1, i32 1922, i32 2321, i64 16) #10, !srcloc !127
  %i.bl = load i32, ptr %i.bi, align 8
  %i.bm = load ptr, ptr %i.bj, align 8
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bk, i32 noundef %i.bl, ptr noundef %i.bm) #9
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !128
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.m, %select.unfold
  call void @drm_crtc_vblank_put(ptr noundef nonnull %i.ai) #9
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.h, %bb.g
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.bn = load ptr, ptr %i.d, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 688
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next115, %i.bq
  br i1 %i.br, label %bb.g, label %.loopexit, !llvm.loop !126

.loopexit:                                        ; preds = %bb.n, %.preheader108, %.preheader, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @drm_crtc_vblank_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_crtc_vblank_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_atomic_helper_wait_for_flip_done(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 688        ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %.not.i = icmp eq ptr %0, null
  %i.e = getelementptr i8, ptr %0, i64 8
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr [56 x i8], ptr %i.f, i64 %indvars.iv22 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.k = icmp ne ptr %i.j, null
  %i.l = icmp ne ptr %i.i, null
  %or.cond.us = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.us, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.m = getelementptr i8, ptr %i.i, i64 16
  %i.n = tail call i64 @wait_for_completion_timeout(ptr noundef %i.m, i64 noundef 10000) #9
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %__drm_to_dev.exit.us, label %bb.c

__drm_to_dev.exit.us:                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.j, i64 88
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.j, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef @.str.29, i32 noundef %i.r, ptr noundef %i.t) #12
  br label %bb.c

bb.c:                                             ; preds = %__drm_to_dev.exit.us, %bb.b, %.lr.ph.split.us
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %i.u = load i32, ptr %i.a, align 16
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next23, %i.v
  br i1 %i.w, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !129

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = getelementptr [56 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8             ; 3 uses
  %i.ac = icmp ne ptr %i.ab, null
  %i.ad = icmp ne ptr %i.aa, null
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.ae = getelementptr i8, ptr %i.aa, i64 16
  %i.af = tail call i64 @wait_for_completion_timeout(ptr noundef %i.ae, i64 noundef 10000) #9
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %__drm_to_dev.exit, label %bb.e

__drm_to_dev.exit:                                ; preds = %bb.d
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = getelementptr i8, ptr %i.ab, i64 88
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.ab, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ai, ptr noundef @.str.29, i32 noundef %i.ak, ptr noundef %i.am) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %__drm_to_dev.exit, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.a, align 8
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.lr.ph.split, label %._crit_edge, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.e, %bb.c, %bb.a
  %i.aq = getelementptr i8, ptr %1, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  tail call void @complete_all(ptr noundef %i.as) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @wait_for_completion_timeout(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_atomic_helper_commit_tail(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %i.b, ptr noundef %0) #11
  tail call void @drm_atomic_helper_commit_planes(ptr poison, ptr noundef %0, i32 noundef 0) #11
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %i.b, ptr noundef %0) #11
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 688
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %drm_atomic_helper_fake_vblank.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.h = phi ptr [ %i.c, %.lr.ph.i ], [ %i.w, %bb.g ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr [56 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 11
  %i.o = load i8, ptr %i.n, align 1, !range !19, !noundef !20
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.h, i64 328
  %i.r = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.q) #9
  %i.s = getelementptr i8, ptr %i.m, i64 320      ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not18.i = icmp eq ptr %i.t, null
  br i1 %.not18.i, label %bb.f, label %bb.e
end_hunk_0
