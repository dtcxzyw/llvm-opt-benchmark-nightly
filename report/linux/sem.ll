Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sem?download=true
inline.NumInlined: 266
inline.NumDeleted: 96
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@perform_atomic_semop_slow:bb.a
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.x, %i.w                      ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp samesign ugt i32 %i.aa, 32767
  br i1 %i.ac, label %.thread81, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %.07191, i64 4
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = and i16 %i.ae, 4096
  %.not75 = icmp eq i16 %i.af, 0
  br i1 %.not75, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i16, ptr %.07191, align 2
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr [2 x i8], ptr %i.l, i64 %i.ah ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = sext i16 %i.aj to i32
  %i.al = sub nsw i32 %i.ak, %i.w                 ; 2 uses
  %i.am = add nsw i32 %i.al, 32768
  %or.cond3 = icmp ult i32 %i.am, 65536
  br i1 %or.cond3, label %.thread, label %.thread81

.thread:                                          ; preds = %bb.f
  %i.an = trunc nsw i32 %i.al to i16
  store i16 %i.an, ptr %i.ai, align 2
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.e
  store i32 %i.aa, ptr %i.t, align 64
  %i.ao = getelementptr i8, ptr %.07191, i64 6    ; 3 uses
  %i.ap = icmp ult ptr %i.ao, %i.f
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.071.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.ao, %bb.g ]
  %i.aq = getelementptr i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %.fr = freeze ptr %i.ar                         ; 6 uses
  %.17292 = getelementptr i8, ptr %.071.lcssa, i64 -6 ; 3 uses
  %.not93 = icmp ult ptr %.17292, %i.b
  br i1 %.not93, label %.loopexit, label %.lr.ph96

.lr.ph96:                                         ; preds = %._crit_edge
  %.not.i.i = icmp eq ptr %.fr, null
  br i1 %.not.i.i, label %.lr.ph96.split.us, label %.lr.ph96.split

.lr.ph96.split.us:                                ; preds = %.lr.ph96, %ipc_update_pid.exit.us
  %.17294.us = phi ptr [ %.172.us, %ipc_update_pid.exit.us ], [ %.17292, %.lr.ph96 ] ; 2 uses
  %i.as = load i16, ptr %.17294.us, align 2
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr [64 x i8], ptr %0, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 264    ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i.us = icmp eq ptr %i.aw, null
  br i1 %.not.i.us, label %ipc_update_pid.exit.us, label %get_pid.exit.i.us

get_pid.exit.i.us:                                ; preds = %.lr.ph96.split.us
  store ptr null, ptr %i.av, align 8
  tail call void @put_pid(ptr noundef nonnull %i.aw) #13
  br label %ipc_update_pid.exit.us

ipc_update_pid.exit.us:                           ; preds = %get_pid.exit.i.us, %.lr.ph96.split.us
  %.172.us = getelementptr i8, ptr %.17294.us, i64 -6 ; 2 uses
  %.not.us = icmp ult ptr %.172.us, %i.b
  br i1 %.not.us, label %.loopexit, label %.lr.ph96.split.us, !llvm.loop !125

.lr.ph96.split:                                   ; preds = %.lr.ph96, %ipc_update_pid.exit
  %.17294 = phi ptr [ %.172, %ipc_update_pid.exit ], [ %.17292, %.lr.ph96 ] ; 2 uses
  %i.ax = load i16, ptr %.17294, align 2
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr [64 x i8], ptr %0, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 264    ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %.fr
  br i1 %.not.i, label %ipc_update_pid.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph96.split
  %i.bc = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %.fr, i32 1, ptr nonnull elementtype(i32) %.fr) #14, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.bd = add i32 %i.bc, 1
  %i.be = or i32 %i.bd, %i.bc
  %.not10.i.i.i.i.i = icmp sgt i32 %i.be, -1
  br i1 %.not10.i.i.i.i.i, label %get_pid.exit.i, label %.sink.split.i.i.i.i.i, !prof !21

.sink.split.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %.fr, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %.sink.split.i.i.i.i.i, %bb.i
  store ptr %.fr, ptr %i.ba, align 8
  tail call void @put_pid(ptr noundef %i.bb) #13
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %.lr.ph96.split, %get_pid.exit.i
  %.172 = getelementptr i8, ptr %.17294, i64 -6   ; 2 uses
  %.not = icmp ult ptr %.172, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph96.split, !llvm.loop !125

bb.j:                                             ; preds = %bb.b, %bb.c
  %i.bf = getelementptr i8, ptr %1, i64 56
  store ptr %.07191, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %.07191, i64 4
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = and i16 %i.bh, 2048
  %.not76 = icmp eq i16 %i.bi, 0
  %. = select i1 %.not76, i32 1, i32 -11
  br label %.thread81

.thread81:                                        ; preds = %bb.f, %bb.d, %bb.j
  %.070 = phi i32 [ %., %bb.j ], [ -34, %bb.d ], [ -34, %bb.f ] ; 2 uses
  %.297 = getelementptr i8, ptr %.07191, i64 -6   ; 2 uses
  %.not7798 = icmp ult ptr %.297, %i.b
  br i1 %.not7798, label %.loopexit, label %.lr.ph101

.lr.ph101:                                        ; preds = %.thread81, %bb.l
  %.2100 = phi ptr [ %.2, %bb.l ], [ %.297, %.thread81 ] ; 4 uses
  %.071.pn7999 = phi ptr [ %.2100, %bb.l ], [ %.07191, %.thread81 ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.071.pn7999, i64 -4
  %i.bk = load i16, ptr %i.bj, align 2            ; 2 uses
  %i.bl = sext i16 %i.bk to i32
  %i.bm = load i16, ptr %.2100, align 2
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr [64 x i8], ptr %i.k, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 64
  %i.bq = sub i32 %i.bp, %i.bl
  store i32 %i.bq, ptr %i.bo, align 64
  %i.br = getelementptr i8, ptr %.071.pn7999, i64 -2
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = and i16 %i.bs, 4096
  %.not78 = icmp eq i16 %i.bt, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph101
  %i.bu = load i16, ptr %.2100, align 2
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr [2 x i8], ptr %i.l, i64 %i.bv ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = add i16 %i.bx, %i.bk
  store i16 %i.by, ptr %i.bw, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph101
  %.2 = getelementptr i8, ptr %.2100, i64 -6      ; 2 uses
  %.not77 = icmp ult ptr %.2, %i.b
  br i1 %.not77, label %.loopexit, label %.lr.ph101, !llvm.loop !126

.loopexit:                                        ; preds = %ipc_update_pid.exit, %ipc_update_pid.exit.us, %bb.l, %._crit_edge, %.thread81
  %.069 = phi i32 [ %.070, %.thread81 ], [ 0, %._crit_edge ], [ 0, %ipc_update_pid.exit.us ], [ %.070, %bb.l ], [ 0, %ipc_update_pid.exit ]
  ret i32 %.069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 2) i32 @update_queue(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %1, -1                       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr [64 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 280
  %.039 = select i1 %i.a, ptr %i.b, ptr %i.e      ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 256        ; 3 uses
  %i.g = getelementptr [64 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %.039, align 8             ; 2 uses
  %.not7079 = icmp eq ptr %i.h, %.039
  br i1 %.not7079, label %.thread64, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 188        ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 184        ; 2 uses
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.o
  %i.k = load ptr, ptr %.039, align 8             ; 2 uses
  %.not70 = icmp eq ptr %i.k, %.039
  br i1 %.not70, label %.thread64, label %.lr.ph.backedge

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %.072 = phi ptr [ %i.h, %.lr.ph.lr.ph ], [ %.072.be, %.lr.ph.backedge ] ; 11 uses
  %.171 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.171.be, %.lr.ph.backedge ] ; 3 uses
  %.03673 = load ptr, ptr %.072, align 8          ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = load i32, ptr %i.g, align 64
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.thread64, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.n = tail call fastcc i32 @perform_atomic_semop(ptr noundef %0, ptr noundef %.072) #18, !srcloc !129 ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %.072, i64 8       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %.072, align 8             ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8
  store volatile ptr %i.r, ptr %i.q, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.072, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.p, align 8
  %i.t = getelementptr i8, ptr %.072, i64 64      ; 3 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %unlink_queue.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.i, align 4
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.i, align 4
  br label %unlink_queue.exit

unlink_queue.exit:                                ; preds = %bb.d, %bb.e
  %.not47 = icmp eq i32 %i.n, 0
  br i1 %.not47, label %.split42, label %.split

.split:                                           ; preds = %unlink_queue.exit
  %i.y = getelementptr i8, ptr %.072, i64 16
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 40      ; 3 uses
  %i.ab = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aa, i32 1, ptr elementtype(i32) %i.aa) #14, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.f, !prof !16

bb.f:                                             ; preds = %.split
  %i.ac = add i32 %i.ab, 1
  %i.ad = or i32 %i.ac, %i.ab
  %.not10.i.i.i.i.i = icmp sgt i32 %i.ad, -1
  br i1 %.not10.i.i.i.i.i, label %.thread, label %.sink.split.i.i.i.i.i, !prof !21

.sink.split.i.i.i.i.i:                            ; preds = %bb.f, %.split
  %.sink.i.i.i.i.i = phi i32 [ 2, %.split ], [ 1, %bb.f ]
  tail call void @refcount_warn_saturate(ptr noundef %i.aa, i32 noundef %.sink.i.i.i.i.i) #13
  br label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i, %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  %i.ae = getelementptr i8, ptr %.072, i64 40
  store volatile i32 %i.n, ptr %i.ae, align 8
  tail call void @wake_q_add_safe(ptr noundef %2, ptr noundef %i.z) #13
  br label %bb.p

.split42:                                         ; preds = %unlink_queue.exit
  %i.af = getelementptr i8, ptr %.072, i64 48
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load i32, ptr %i.t, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.preheader.i, label %.preheader34.i

.preheader34.i:                                   ; preds = %.split42
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %do_smart_wakeup_zero.exit

.lr.ph.i:                                         ; preds = %.preheader34.i
  %wide.trip.count.i = zext nneg i32 %i.ah to i64
  br label %bb.g

.preheader.i:                                     ; preds = %.split42
  %i.aj = load i32, ptr %i.j, align 8             ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph43.i, label %do_smart_wakeup_zero.exit

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %.038.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.i ]
  %i.al = getelementptr [6 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %i.an = zext i16 %i.am to i64
  %i.ao = getelementptr [64 x i8], ptr %i.f, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 64
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = zext i16 %i.am to i32
  %i.as = tail call fastcc i32 @wake_const_ops(ptr noundef %0, i32 noundef %i.ar, ptr noundef %2) #18, !srcloc !33 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i32 [ 1, %bb.h ], [ %.038.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.g, !llvm.loop !4

.lr.ph43.i:                                       ; preds = %.preheader.i, %bb.k
  %i.at = phi i32 [ %i.az, %bb.k ], [ %i.aj, %.preheader.i ]
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %bb.k ], [ 0, %.preheader.i ] ; 3 uses
  %.242.i = phi i32 [ %.3.i, %bb.k ], [ 0, %.preheader.i ]
  %i.au = getelementptr [64 x i8], ptr %i.f, i64 %indvars.iv48.i
  %i.av = load i32, ptr %i.au, align 64
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph43.i
  %i.ax = trunc nuw nsw i64 %indvars.iv48.i to i32
  %i.ay = tail call fastcc i32 @wake_const_ops(ptr noundef %0, i32 noundef %i.ax, ptr noundef %2) #18, !srcloc !34 ; 0 uses
  %.pre.i = load i32, ptr %i.j, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph43.i
  %i.az = phi i32 [ %.pre.i, %bb.j ], [ %i.at, %.lr.ph43.i ] ; 2 uses
  %.3.i = phi i32 [ 1, %bb.j ], [ %.242.i, %.lr.ph43.i ] ; 2 uses
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next49.i, %i.ba
  br i1 %i.bb, label %.lr.ph43.i, label %.loopexit.i, !llvm.loop !5

.loopexit.i:                                      ; preds = %bb.i, %bb.k
  %.4.i = phi i32 [ %.3.i, %bb.k ], [ %.1.i, %bb.i ]
  %.not33.i = icmp eq i32 %.4.i, 0
  br i1 %.not33.i, label %do_smart_wakeup_zero.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.bc = tail call fastcc i32 @wake_const_ops(ptr noundef %0, i32 noundef -1, ptr noundef %2) #18, !srcloc !35 ; 0 uses
  br label %do_smart_wakeup_zero.exit

do_smart_wakeup_zero.exit:                        ; preds = %.preheader34.i, %.preheader.i, %.loopexit.i, %bb.l
  %i.bd = load volatile ptr, ptr %i.b, align 8
  %.not.i49 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i49, label %bb.m, label %check_restart.exit

bb.m:                                             ; preds = %do_smart_wakeup_zero.exit
  %i.be = load i32, ptr %i.t, align 8
  %.fr = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr, 2
  br label %check_restart.exit

check_restart.exit:                               ; preds = %do_smart_wakeup_zero.exit, %bb.m
  %.0.i = phi i1 [ %i.bf, %bb.m ], [ false, %do_smart_wakeup_zero.exit ]
  %i.bg = getelementptr i8, ptr %.072, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 40     ; 3 uses
  %i.bj = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bi, i32 1, ptr elementtype(i32) %i.bi) #14, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i50 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i.i50, label %.sink.split.i.i.i.i.i52, label %bb.n, !prof !16

bb.n:                                             ; preds = %check_restart.exit
  %i.bk = add i32 %i.bj, 1
  %i.bl = or i32 %i.bk, %i.bj
  %.not10.i.i.i.i.i51 = icmp sgt i32 %i.bl, -1
  br i1 %.not10.i.i.i.i.i51, label %bb.o, label %.sink.split.i.i.i.i.i52, !prof !21

.sink.split.i.i.i.i.i52:                          ; preds = %bb.n, %check_restart.exit
  %.sink.i.i.i.i.i53 = phi i32 [ 2, %check_restart.exit ], [ 1, %bb.n ]
  tail call void @refcount_warn_saturate(ptr noundef %i.bi, i32 noundef %.sink.i.i.i.i.i53) #13
  br label %bb.o

bb.o:                                             ; preds = %.sink.split.i.i.i.i.i52, %bb.n
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  %i.bm = getelementptr i8, ptr %.072, i64 40
  store volatile i32 0, ptr %i.bm, align 8
  tail call void @wake_q_add_safe(ptr noundef %2, ptr noundef %i.bh) #13
  br i1 %.0.i, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %bb.c, %.thread
  %.3.ph = phi i32 [ %.171, %bb.c ], [ %.171, %.thread ], [ 1, %bb.o ] ; 2 uses
  %.not = icmp eq ptr %.03673, %.039
  br i1 %.not, label %.thread64, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.p, %.loopexit
  %.072.be = phi ptr [ %.03673, %bb.p ], [ %i.k, %.loopexit ]
  %.171.be = phi i32 [ %.3.ph, %bb.p ], [ 1, %.loopexit ]
  br label %.lr.ph, !llvm.loop !128

.thread64:                                        ; preds = %.loopexit, %bb.p, %bb.b, %bb.a
  %.1.lcssa = phi i32 [ 0, %bb.a ], [ 1, %.loopexit ], [ %.3.ph, %bb.p ], [ %.171, %bb.b ]
  ret i32 %.1.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 2) i32 @wake_const_ops(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %1, -1
  %i.b = getelementptr i8, ptr %0, i64 152
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr [64 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 296
  %.026 = select i1 %i.a, ptr %i.b, ptr %i.e      ; 3 uses
  %i.f = load ptr, ptr %.026, align 8             ; 2 uses
  %.not31 = icmp eq ptr %i.f, %.026
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 188        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.033 = phi ptr [ %i.f, %.lr.ph ], [ %.02534, %bb.f ] ; 8 uses
  %.02732 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.f ] ; 2 uses
  %.02534 = load ptr, ptr %.033, align 8          ; 2 uses
  %i.h = tail call fastcc i32 @perform_atomic_semop(ptr noundef %0, ptr noundef %.033) #18, !srcloc !131 ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.033, i64 8       ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %.033, align 8             ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8
  store volatile ptr %i.l, ptr %i.k, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.033, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.j, align 8
  %i.n = getelementptr i8, ptr %.033, i64 64
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %unlink_queue.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.g, align 4
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.g, align 4
  br label %unlink_queue.exit

unlink_queue.exit:                                ; preds = %bb.c, %bb.d
  %i.s = getelementptr i8, ptr %.033, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 40       ; 3 uses
  %i.v = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.u, i32 1, ptr elementtype(i32) %i.u) #14, !srcloc !20 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %unlink_queue.exit
  %i.w = add i32 %i.v, 1
  %i.x = or i32 %i.w, %i.v
  %.not10.i.i.i.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not10.i.i.i.i.i, label %wake_up_sem_queue_prepare.exit, label %.sink.split.i.i.i.i.i, !prof !21

.sink.split.i.i.i.i.i:                            ; preds = %bb.e, %unlink_queue.exit
  %.sink.i.i.i.i.i = phi i32 [ 2, %unlink_queue.exit ], [ 1, %bb.e ]
  tail call void @refcount_warn_saturate(ptr noundef %i.u, i32 noundef %.sink.i.i.i.i.i) #13
  br label %wake_up_sem_queue_prepare.exit

wake_up_sem_queue_prepare.exit:                   ; preds = %bb.e, %.sink.split.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !22
  %i.y = getelementptr i8, ptr %.033, i64 40
  store volatile i32 %i.h, ptr %i.y, align 8
  tail call void @wake_q_add_safe(ptr noundef %2, ptr noundef %i.t) #13
  %i.z = icmp eq i32 %i.h, 0
  %spec.select = select i1 %i.z, i32 1, i32 %.02732
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %wake_up_sem_queue_prepare.exit
  %.2 = phi i32 [ %spec.select, %wake_up_sem_queue_prepare.exit ], [ %.02732, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.02534, %.026
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.027.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.f ]
  ret i32 %.027.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noredzone nounwind "no-builtin-wcslen" }
attributes #14 = { nounwind }
attributes #15 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #16 = { nounwind memory(none) }
attributes #17 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #18 = { noredzone "no-builtin-wcslen" }
attributes #19 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 8, !"cf-protection-branch", i32 1}
!8 = !{i32 4, !"function_return_thunk_extern", i32 1}
!9 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!10 = !{i32 1, !"Code Model", i32 2}
!11 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!12 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!13 = !{i32 1, !"override-stack-alignment", i32 8}
!14 = !{i32 4, !"SkipRaxSetup", i32 1}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{i64 2158742901, i64 2158742776}
!18 = !{i64 2158743424, i64 2158743900, i64 2158743933, i64 2158743968, i64 2158743984, i64 2158744825, i64 2158744883, i64 2158744932, i64 2158744742, i64 2158744043, i64 2158744075}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{i64 2148887369, i64 2148887408, i64 2148887429, i64 2148887466, i64 2148887489, i64 2148887498}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{i64 2158815050}
!23 = !{i64 2158759857}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"auto-init"}
!26 = !{i64 2148259353}
!27 = !{i64 48135}
!28 = !{i64 2158956380, i64 2158956255}
!29 = !{i64 2158956903, i64 2158957379, i64 2158957412, i64 2158957447, i64 2158957463, i64 2158958304, i64 2158958362, i64 2158958411, i64 2158958221, i64 2158957522, i64 2158957554}
!30 = !{i64 2153004265}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{i64 25961}
!34 = !{i64 26222}
!35 = !{i64 26394}
!36 = !{i64 58678}
!37 = !{i64 58730}
!38 = !{i64 2151722327, i64 2151722202}
!39 = !{i64 2151722850, i64 2151723903, i64 2151723936, i64 2151723971, i64 2151723987, i64 2151724914, i64 2151724972, i64 2151725021, i64 2151724831, i64 2151724046, i64 2151724078, i64 2151724161}
!40 = !{i64 2151725325, i64 2151725201}
!41 = !{i64 59268}
!42 = !{i64 59320}
!43 = !{i64 59702}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !19}
!52 = !{i64 2158895812}
!53 = !{i64 44215}
!54 = !{i64 44459}
!55 = !{i64 44693}
!56 = !{i64 44859}
!57 = !{i64 2158898774}
!58 = !{i64 47903}
!59 = !{i64 47260}
!60 = !{i64 47511}
!61 = !{i64 47574}
!62 = !{i64 47744}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = !{i64 51236}
!66 = !{i64 51306}
!67 = !{i64 51514}
!68 = !{i64 2158970802, i64 2158970677}
!69 = !{i64 2158971325, i64 2158971801, i64 2158971834, i64 2158971869, i64 2158971885, i64 2158972726, i64 2158972784, i64 2158972833, i64 2158972643, i64 2158971944, i64 2158971976}
!70 = !{i64 51914}
!71 = !{i64 53851}
!72 = !{i64 54860}
!73 = !{i64 55075}
!74 = !{i64 55160}
!75 = !{i64 2158973688}
!76 = !{i64 55849}
!77 = !{i64 2148698485, i64 2148698525, i64 2148698642, i64 2148698663, i64 2148698706, i64 2148698721, i64 2148698754, i64 2148698788, i64 2148698812}
!78 = !{i64 56256}
!79 = !{i64 2158984143}
!80 = !{i64 57082}
!81 = !{i64 57687}
!82 = !{i64 2158765203}
!83 = !{i64 2158774552}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = !{i64 21025}
!87 = !{i64 2158810323}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = !{i64 29652}
!91 = !{i64 29850}
!92 = !{i64 30290}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = !{i64 2150773974}
!96 = !{i64 63445}
!97 = distinct !{!97, !24}
!98 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !24}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = !{i64 39466}
!105 = !{i64 39702}
!106 = !{i64 39897}
!107 = !{i64 40732}
!108 = !{i64 41239}
!109 = !{i64 41449}
!110 = !{i64 2158886677}
!111 = !{i64 41787}
!112 = !{i64 41859}
!113 = distinct !{!113, !19}
!114 = !{i64 37934}
!115 = !{i64 38004}
!116 = !{i64 2158865267}
!117 = !{i64 38291}
!118 = !{i64 38447}
!119 = !{i64 38491}
!120 = !{i64 43417}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = !{i64 2158807210}
!128 = distinct !{!128, !19}
!129 = !{i64 27912}
!130 = distinct !{!130, !19}
!131 = !{i64 24903}
end_hunk_0
