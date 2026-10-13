Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pipe?download=true
inline.NumInlined: 180
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@anon_pipe_read:bb.a
  call void @finish_wait(ptr noundef %i.n, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.critedge

.thread162:                                       ; preds = %bb.q
  %i.bv = and i64 %i.bq, 2147483648
  %i.bw = icmp eq i64 %i.bv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %i.bw, label %.critedge, label %.thread175

.critedge:                                        ; preds = %.thread162.thread, %bb.n, %.thread162
  call void @mutex_lock(ptr noundef %i.d) #14
  br label %.thread233.outer

.thread166:                                       ; preds = %bb.j, %.thread, %bb.m, %bb.l, %.loopexit, %bb.h, %bb.g, %bb.e
  %.495174 = phi i1 [ %.091.ph268, %bb.e ], [ %.091.ph268, %bb.h ], [ %.091.ph268, %bb.g ], [ %i.ba, %bb.j ], [ %.091.ph268, %.thread ], [ %.394, %bb.m ], [ %.394, %bb.l ], [ %.394, %.loopexit ]
  %.4103173 = phi i64 [ %spec.store.select, %bb.e ], [ %spec.store.select1, %bb.h ], [ %spec.select, %bb.g ], [ %i.an, %.thread ], [ %i.an, %bb.j ], [ -11, %bb.l ], [ %.3102, %.loopexit ], [ -11, %bb.m ]
  %.val131 = load i32, ptr %i.f, align 8
  %.val132 = load i32, ptr %i.g, align 4
  %.not.i.i148 = icmp ne i32 %.val131, %.val132
  call void @mutex_unlock(ptr noundef %i.d) #14
  br i1 %.495174, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread166
  %i.bx = getelementptr i8, ptr %i.d, i64 48
  call void @__wake_up_sync_key(ptr noundef %i.bx, i32 noundef 1, ptr noundef nonnull inttoptr (i64 260 to ptr)) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread166
  %i.by = and i1 %.not.i.i148, %.0104.ph
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @__wake_up_sync_key(ptr noundef %i.n, i32 noundef 1, ptr noundef nonnull inttoptr (i64 65 to ptr)) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bz = getelementptr i8, ptr %i.d, i64 144
  call void @kill_fasync(ptr noundef %i.bz, i32 noundef 29, i32 noundef 2) #14
  br label %.thread175

.thread175:                                       ; preds = %.thread162, %bb.a, %bb.v
  %.2 = phi i64 [ %.4103173, %bb.v ], [ 0, %bb.a ], [ -512, %.thread162 ]
  ret i64 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_page_to_iter(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @anon_pipe_write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.anon_pipe_prealloc, align 8 ; 9 uses
  %3 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.d = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %.val146 = load i64, ptr %i.d, align 8          ; 4 uses
  %i.e = icmp eq i64 %.val146, 0
  br i1 %i.e, label %bb.ap, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false), !annotation !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 10 uses
  %i.g = icmp ult i64 %.val146, 4097
  br i1 %i.g, label %anon_pipe_get_page_prealloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.val146, 4095
  %i.i = lshr i64 %i.h, 12
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = tail call i32 @llvm.umin.i32(i32 %i.j, i32 8)
  %.not21.i = icmp eq i32 %i.j, 0
  br i1 %.not21.i, label %anon_pipe_get_page_prealloc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.019.i = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.l = tail call ptr @alloc_pages_noprof(i32 noundef 5246146, i32 noundef 0) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %anon_pipe_get_page_prealloc.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = load i32, ptr %i.f, align 8              ; 2 uses
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr [8 x i8], ptr %2, i64 %i.o
  store ptr %i.l, ptr %i.p, align 8
  %i.q = add nuw nsw i32 %.019.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.q, %i.k
  br i1 %exitcond.not.i, label %anon_pipe_get_page_prealloc.exit, label %.lr.ph.i, !llvm.loop !60

anon_pipe_get_page_prealloc.exit:                 ; preds = %.lr.ph.i, %bb.d, %bb.b, %bb.c
  tail call void @mutex_lock(ptr noundef %i.c) #14
  %i.r = getelementptr i8, ptr %i.c, i64 92       ; 6 uses
  %i.s = load i32, ptr %i.r, align 4
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %anon_pipe_get_page_prealloc.exit
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 256
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %select.unfold

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16, !srcloc !16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call i32 @send_sig(i32 noundef 13, ptr noundef %i.y, i32 noundef 0) #14 ; 0 uses
  br label %select.unfold

bb.g:                                             ; preds = %anon_pipe_get_page_prealloc.exit
  %i.aa = getelementptr i8, ptr %i.c, i64 72      ; 7 uses
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 76      ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %.not.i150 = icmp eq i32 %i.ab, %i.ad           ; 2 uses
  %i.ae = zext i1 %.not.i150 to i8                ; 5 uses
  %i.af = and i64 %.val146, 4095                  ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  %or.cond = select i1 %i.ag, i1 true, i1 %.not.i150
  br i1 %or.cond, label %.lr.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add i32 %i.ab, -1
  %i.ai = getelementptr i8, ptr %i.c, i64 84
  %.val141 = load i32, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %i.c, i64 152
  %.val142 = load ptr, ptr %i.aj, align 8
  %i.ak = add i32 %.val141, -1
  %i.al = and i32 %i.ak, %i.ah
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr [40 x i8], ptr %.val142, i64 %i.am ; 6 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 12     ; 3 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 24
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = and i32 %i.aq, 16
  %.not122 = icmp eq i32 %i.ar, 0
  br i1 %.not122, label %.lr.ph, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr i8, ptr %i.an, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = load i32, ptr %i.ao, align 4
  %i.av = add i32 %i.au, %i.at
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = add nsw i64 %i.af, %i.aw
  %i.ay = icmp ult i64 %i.ax, 4097
  br i1 %i.ay, label %bb.j, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr i8, ptr %i.an, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i151 = icmp eq ptr %i.bb, null
  br i1 %.not.i151, label %pipe_buf_confirm.exit.thread, label %pipe_buf_confirm.exit

pipe_buf_confirm.exit:                            ; preds = %bb.j
  %i.bc = tail call i32 %i.bb(ptr noundef %i.c, ptr noundef %i.an) #14, !inline_history !0 ; 2 uses
  %.not123 = icmp eq i32 %i.bc, 0
  br i1 %.not123, label %pipe_buf_confirm.exit.thread, label %bb.k

bb.k:                                             ; preds = %pipe_buf_confirm.exit
  %i.bd = sext i32 %i.bc to i64
  br label %select.unfold

pipe_buf_confirm.exit.thread:                     ; preds = %bb.j, %pipe_buf_confirm.exit
  %i.be = load ptr, ptr %i.an, align 8
  %i.bf = tail call i64 @copy_page_from_iter(ptr noundef %i.be, i64 noundef %i.aw, i64 noundef %i.af, ptr noundef %1) #14 ; 5 uses
  %i.bg = icmp slt i64 %i.bf, %i.af
  br i1 %i.bg, label %select.unfold, label %bb.l, !prof !12

bb.l:                                             ; preds = %pipe_buf_confirm.exit.thread
  %i.bh = load i32, ptr %i.ao, align 4
  %i.bi = trunc i64 %i.bf to i32
  %i.bj = add i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.ao, align 4
  %.val145 = load i64, ptr %i.d, align 8
  %.not124 = icmp eq i64 %.val145, 0
  br i1 %.not124, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.l
  %.pre = load i32, ptr %i.r, align 4
  %i.bk = icmp eq i32 %.pre, 0
  br i1 %i.bk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.h, %bb.g, %.thread
  %.2116257 = phi i64 [ %i.bf, %.thread ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  %.promoted = load i32, ptr %i.f, align 8
  %i.bl = getelementptr i8, ptr %i.c, i64 80      ; 4 uses
  %i.bm = getelementptr i8, ptr %i.a, i64 40      ; 2 uses
  %i.bn = getelementptr i8, ptr %0, i64 32
  %i.bo = getelementptr i8, ptr %i.c, i64 24
  %i.bp = getelementptr i8, ptr %i.c, i64 136
  %i.bq = getelementptr i8, ptr %i.c, i64 48      ; 2 uses
  %i.br = getelementptr i8, ptr %i.c, i64 120     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.c, i64 128
  %i.bt = getelementptr i8, ptr %i.c, i64 84
  %i.bu = getelementptr i8, ptr %i.c, i64 152
  br label %bb.o

._crit_edge:                                      ; preds = %.backedge, %.thread
  %.3.lcssa = phi i64 [ %i.bf, %.thread ], [ %.3.be, %.backedge ] ; 2 uses
  %.0112.lcssa = phi i8 [ %i.ae, %.thread ], [ %.0112.be, %.backedge ]
  %.0109.lcssa = phi i1 [ false, %.thread ], [ %.0109.be, %.backedge ]
  %i.bv = getelementptr i8, ptr %0, i64 32
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = and i32 %i.bw, 256
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.bz = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16, !srcloc !16
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = call i32 @send_sig(i32 noundef 13, ptr noundef %i.ca, i32 noundef 0) #14 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.not126 = icmp eq i64 %.3.lcssa, 0
  %spec.store.select = select i1 %.not126, i64 -32, i64 %.3.lcssa
  br label %select.unfold

bb.o:                                             ; preds = %.lr.ph, %.backedge
  %.0109217 = phi i1 [ false, %.lr.ph ], [ %.0109.be, %.backedge ] ; 6 uses
  %.0112216 = phi i8 [ %i.ae, %.lr.ph ], [ %.0112.be, %.backedge ] ; 7 uses
  %.3215 = phi i64 [ %.2116257, %.lr.ph ], [ %.3.be, %.backedge ] ; 10 uses
  %4 = phi i32 [ %.promoted, %.lr.ph ], [ %7, %.backedge ] ; 3 uses
  %i.cc = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.cd = load i32, ptr %i.ac, align 4
  %i.ce = load i32, ptr %i.bl, align 8
  %i.cf = sub i32 %i.cc, %i.cd
  %.not193 = icmp ult i32 %i.cf, %i.ce
  br i1 %.not193, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i, label %.preheader.i, label %anon_pipe_prealloc_pop.exit.i

anon_pipe_prealloc_pop.exit.i:                    ; preds = %bb.p
  %i.cg = add i32 %4, -1                          ; 4 uses
  store i32 %i.cg, ptr %i.f, align 8
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr %2, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not.i152 = icmp eq ptr %i.cj, null
  br i1 %.not.i152, label %.preheader.i, label %anon_pipe_get_page.exit.thread

.preheader.i:                                     ; preds = %anon_pipe_prealloc_pop.exit.i, %bb.p
  %5 = phi i32 [ %i.cg, %anon_pipe_prealloc_pop.exit.i ], [ 0, %bb.p ] ; 2 uses
  %i.ck = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not22.i = icmp eq ptr %i.ck, null
  br i1 %.not22.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader.i
  %i.cl = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not22.1.i = icmp eq ptr %i.cl, null
  br i1 %.not22.1.i, label %anon_pipe_get_page.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader.i
  %.lcssa30.i = phi i64 [ 0, %.preheader.i ], [ 1, %bb.q ]
  %.lcssa.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.cl, %bb.q ]
  %i.cm = getelementptr [8 x i8], ptr %i.br, i64 %.lcssa30.i
  store ptr null, ptr %i.cm, align 8
  br label %anon_pipe_get_page.exit.thread

anon_pipe_get_page.exit:                          ; preds = %bb.q
  %i.cn = call ptr @alloc_pages_noprof(i32 noundef 5246146, i32 noundef 0) #14 ; 2 uses
  %.not127 = icmp eq ptr %i.cn, null
  br i1 %.not127, label %bb.s, label %anon_pipe_get_page.exit.thread, !prof !62

bb.s:                                             ; preds = %anon_pipe_get_page.exit
  %.not131 = icmp eq i64 %.3215, 0
  %spec.store.select2 = select i1 %.not131, i64 -12, i64 %.3215
  br label %select.unfold

anon_pipe_get_page.exit.thread:                   ; preds = %anon_pipe_prealloc_pop.exit.i, %bb.r, %anon_pipe_get_page.exit
  %6 = phi i32 [ %5, %anon_pipe_get_page.exit ], [ %i.cg, %anon_pipe_prealloc_pop.exit.i ], [ %5, %bb.r ]
  %.1.i179 = phi ptr [ %i.cn, %anon_pipe_get_page.exit ], [ %i.cj, %anon_pipe_prealloc_pop.exit.i ], [ %.lcssa.i, %bb.r ] ; 3 uses
  %i.co = call i64 @copy_page_from_iter(ptr noundef nonnull %.1.i179, i64 noundef 0, i64 noundef 4096, ptr noundef %1) #14 ; 2 uses
  %i.cp = trunc i64 %i.co to i32
  %sext = shl i64 %i.co, 32
  %i.cq = ashr exact i64 %sext, 32                ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 4096
  br i1 %i.cr, label %bb.t, label %.critedge

bb.t:                                             ; preds = %anon_pipe_get_page.exit.thread
  %.val144 = load i64, ptr %i.d, align 8
  %.not194 = icmp eq i64 %.val144, 0
  br i1 %.not194, label %.critedge, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  call fastcc void @anon_pipe_put_page(ptr noundef %i.c, ptr noundef nonnull %.1.i179) #19, !srcloc !63
  %.not130 = icmp eq i64 %.3215, 0
  %spec.store.select3 = select i1 %.not130, i64 -14, i64 %.3215
  br label %select.unfold

.critedge:                                        ; preds = %anon_pipe_get_page.exit.thread, %bb.t
  %i.cs = add i32 %i.cc, 1
  store i32 %i.cs, ptr %i.aa, align 8
  %.val = load i32, ptr %i.bt, align 4
  %.val140 = load ptr, ptr %i.bu, align 8
  %i.ct = add i32 %.val, -1
  %i.cu = and i32 %i.ct, %i.cc
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr [40 x i8], ptr %.val140, i64 %i.cv ; 5 uses
  store ptr %.1.i179, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store ptr @anon_pipe_buf_ops, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %i.cw, i64 8
  store i32 0, ptr %i.cy, align 8
  %.val147 = load i32, ptr %i.bm, align 8
  %i.cz = and i32 %.val147, 16384
  %.not128 = icmp eq i32 %i.cz, 0
  %spec.select = select i1 %.not128, i32 16, i32 8
  %i.da = getelementptr i8, ptr %i.cw, i64 24
  store i32 %spec.select, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %i.cw, i64 12
  store i32 %i.cp, ptr %i.db, align 4
  %i.dc = add i64 %i.cq, %.3215                   ; 2 uses
  %.val143 = load i64, ptr %i.d, align 8
  %.not129 = icmp eq i64 %.val143, 0
  br i1 %.not129, label %select.unfold, label %.backedge

bb.v:                                             ; preds = %bb.o
  %i.dd = load i32, ptr %i.bm, align 8
  %i.de = and i32 %i.dd, 2048
  %.not132 = icmp eq i32 %i.de, 0
  br i1 %.not132, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.df = load i32, ptr %i.bn, align 8
  %i.dg = and i32 %i.df, 8
  %.not133 = icmp eq i32 %i.dg, 0
  br i1 %.not133, label %test_tsk_thread_flag.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not137 = icmp eq i64 %.3215, 0
  %spec.store.select4 = select i1 %.not137, i64 -11, i64 %.3215
  br label %select.unfold

test_tsk_thread_flag.exit.i:                      ; preds = %bb.w
  %i.dh = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #16, !srcloc !16
  %i.di = inttoptr i64 %i.dh to ptr               ; 2 uses
  %i.dj = load volatile i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 4
  %.not.i153 = icmp eq i64 %i.dk, 0
  br i1 %.not.i153, label %signal_pending.exit, label %signal_pending.exit.thread, !prof !13

signal_pending.exit:                              ; preds = %test_tsk_thread_flag.exit.i
  %i.dl = load volatile i64, ptr %i.di, align 8
  %i.dm = and i64 %i.dl, 2
  %.not134 = icmp eq i64 %i.dm, 0
  br i1 %.not134, label %bb.y, label %signal_pending.exit.thread

signal_pending.exit.thread:                       ; preds = %test_tsk_thread_flag.exit.i, %signal_pending.exit
  %.not136 = icmp eq i64 %.3215, 0
  %spec.store.select5 = select i1 %.not136, i64 -512, i64 %.3215
  br label %select.unfold

bb.y:                                             ; preds = %signal_pending.exit
  call void @mutex_unlock(ptr noundef %i.c) #14
  %i.dn = trunc nuw i8 %.0112216 to i1
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @__wake_up_sync_key(ptr noundef %i.bo, i32 noundef 1, ptr noundef nonnull inttoptr (i64 65 to ptr)) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @kill_fasync(ptr noundef %i.bp, i32 noundef 29, i32 noundef 1) #14
  %i.do = call i32 @__SCT__might_resched() #14    ; 0 uses
  %i.dp = load volatile i64, ptr %i.aa, align 8   ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.dp to i32
  %.sroa.5.0.extract.shift.i = lshr i64 %i.dp, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  %i.dq = load volatile i32, ptr %i.bl, align 8
  %i.dr = sub i32 %.sroa.0.0.extract.trunc.i, %.sroa.5.0.extract.trunc.i
  %.not6.i = icmp ult i32 %i.dr, %i.dq
  br i1 %.not6.i, label %pipe_writable.exit.thread, label %pipe_writable.exit

pipe_writable.exit:                               ; preds = %bb.aa
  %i.ds = load volatile i32, ptr %i.r, align 4
  %.not.i155 = icmp eq i32 %i.ds, 0
  br i1 %.not.i155, label %pipe_writable.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %pipe_writable.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 1) #14
  br label %bb.ac

bb.ac:                                            ; preds = %pipe_writable.exit167, %bb.ab
  %i.dt = call i64 @prepare_to_wait_event(ptr noundef %i.bq, ptr noundef nonnull %3, i32 noundef 1) #14
  %i.du = load volatile i64, ptr %i.aa, align 8   ; 2 uses
  %.sroa.0.0.extract.trunc.i156 = trunc i64 %i.du to i32
  %.sroa.5.0.extract.shift.i157 = lshr i64 %i.du, 32
  %.sroa.5.0.extract.trunc.i158 = trunc nuw i64 %.sroa.5.0.extract.shift.i157 to i32
  %i.dv = load volatile i32, ptr %i.bl, align 8
  %i.dw = sub i32 %.sroa.0.0.extract.trunc.i156, %.sroa.5.0.extract.trunc.i158
  %.not6.i159 = icmp ult i32 %i.dw, %i.dv
  br i1 %.not6.i159, label %pipe_writable.exit161.thread, label %pipe_writable.exit161

pipe_writable.exit161:                            ; preds = %bb.ac
  %i.dx = load volatile i32, ptr %i.r, align 4
  %.not.i160 = icmp eq i32 %i.dx, 0
  br i1 %.not.i160, label %pipe_writable.exit161.thread, label %bb.ad

bb.ad:                                            ; preds = %pipe_writable.exit161
  %.not135 = icmp eq i64 %i.dt, 0
  br i1 %.not135, label %bb.ae, label %.thread191

bb.ae:                                            ; preds = %bb.ad
  call void @schedule() #14
  %i.dy = load volatile i64, ptr %i.aa, align 8   ; 2 uses
  %.sroa.0.0.extract.trunc.i162 = trunc i64 %i.dy to i32
  %.sroa.5.0.extract.shift.i163 = lshr i64 %i.dy, 32
  %.sroa.5.0.extract.trunc.i164 = trunc nuw i64 %.sroa.5.0.extract.shift.i163 to i32
  %i.dz = load volatile i32, ptr %i.bl, align 8
  %i.ea = sub i32 %.sroa.0.0.extract.trunc.i162, %.sroa.5.0.extract.trunc.i164
  %.not6.i165 = icmp ult i32 %i.ea, %i.dz
  br i1 %.not6.i165, label %pipe_writable.exit161.thread, label %pipe_writable.exit167

pipe_writable.exit167:                            ; preds = %bb.ae
  %i.eb = load volatile i32, ptr %i.r, align 4
  %.fr = freeze i32 %i.eb
  %.not.i166 = icmp eq i32 %.fr, 0
  br i1 %.not.i166, label %pipe_writable.exit161.thread, label %bb.ac

pipe_writable.exit161.thread:                     ; preds = %pipe_writable.exit167, %bb.ae, %bb.ac, %pipe_writable.exit161
  call void @finish_wait(ptr noundef %i.bq, ptr noundef nonnull %3) #14
  br label %.thread191

.thread191:                                       ; preds = %bb.ad, %pipe_writable.exit161.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %pipe_writable.exit.thread

pipe_writable.exit.thread:                        ; preds = %bb.aa, %.thread191, %pipe_writable.exit
  call void @mutex_lock(ptr noundef %i.c) #14
  %.val148 = load i32, ptr %i.aa, align 8
  %.val149 = load i32, ptr %i.ac, align 4
  %.not.i.i168 = icmp eq i32 %.val148, %.val149
  %i.ec = zext i1 %.not.i.i168 to i8
  br label %.backedge

.backedge:                                        ; preds = %pipe_writable.exit.thread, %.critedge
  %7 = phi i32 [ %4, %pipe_writable.exit.thread ], [ %6, %.critedge ]
  %.3.be = phi i64 [ %.3215, %pipe_writable.exit.thread ], [ %i.dc, %.critedge ] ; 2 uses
  %.0112.be = phi i8 [ %i.ec, %pipe_writable.exit.thread ], [ %.0112216, %.critedge ] ; 2 uses
  %.0109.be = phi i1 [ true, %pipe_writable.exit.thread ], [ %.0109217, %.critedge ] ; 2 uses
  %i.ed = load i32, ptr %i.r, align 4
  %.not125 = icmp eq i32 %i.ed, 0
  br i1 %.not125, label %._crit_edge, label %bb.o

select.unfold:                                    ; preds = %.critedge, %bb.u, %bb.s, %bb.l, %bb.k, %pipe_buf_confirm.exit.thread, %bb.e, %bb.f, %bb.n, %bb.x, %signal_pending.exit.thread
  %.5 = phi i64 [ %spec.store.select4, %bb.x ], [ %spec.store.select5, %signal_pending.exit.thread ], [ %i.bf, %bb.l ], [ %spec.store.select, %bb.n ], [ -32, %bb.e ], [ -32, %bb.f ], [ %i.bd, %bb.k ], [ -14, %pipe_buf_confirm.exit.thread ], [ %spec.store.select2, %bb.s ], [ %spec.store.select3, %bb.u ], [ %i.dc, %.critedge ] ; 2 uses
  %.1113 = phi i8 [ %.0112216, %bb.x ], [ %.0112216, %signal_pending.exit.thread ], [ %i.ae, %bb.l ], [ %.0112.lcssa, %bb.n ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.ae, %bb.k ], [ %i.ae, %pipe_buf_confirm.exit.thread ], [ %.0112216, %bb.s ], [ %.0112216, %bb.u ], [ %.0112216, %.critedge ]
  %.1110 = phi i1 [ %.0109217, %bb.x ], [ %.0109217, %signal_pending.exit.thread ], [ false, %bb.l ], [ %.0109.lcssa, %bb.n ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.k ], [ false, %pipe_buf_confirm.exit.thread ], [ %.0109217, %bb.s ], [ %.0109217, %bb.u ], [ %.0109217, %.critedge ]
  %i.ee = load i32, ptr %i.f, align 8             ; 3 uses
  %.not.i169 = icmp eq i32 %i.ee, 0
  br i1 %.not.i169, label %anon_pipe_refill_tmp_pages.exit, label %.preheader.i170

.preheader.i170:                                  ; preds = %select.unfold
  %i.ef = getelementptr i8, ptr %i.c, i64 120     ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %.not14.i = icmp eq ptr %i.eg, null
  br i1 %.not14.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.preheader.i170
  %i.eh = add i32 %i.ee, -1                       ; 2 uses
  store i32 %i.eh, ptr %i.f, align 8
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr [8 x i8], ptr %2, i64 %i.ei ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  store ptr %i.ek, ptr %i.ef, align 8
  store ptr null, ptr %i.ej, align 8
  %.pre238.pre = load i32, ptr %i.f, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.preheader.i170
  %.pre238 = phi i32 [ %.pre238.pre, %bb.af ], [ %i.ee, %.preheader.i170 ] ; 3 uses
  %i.el = getelementptr i8, ptr %i.c, i64 128     ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8
  %.not14.1.i = icmp eq ptr %i.em, null
  br i1 %.not14.1.i, label %bb.ah, label %anon_pipe_refill_tmp_pages.exit

bb.ah:                                            ; preds = %bb.ag
  %.not15.1.i = icmp eq i32 %.pre238, 0
  br i1 %.not15.1.i, label %anon_pipe_refill_tmp_pages.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = add i32 %.pre238, -1                    ; 2 uses
  store i32 %i.en, ptr %i.f, align 8
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr [8 x i8], ptr %2, i64 %i.eo ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8
  store ptr %i.eq, ptr %i.el, align 8
  store ptr null, ptr %i.ep, align 8
  %.pre237 = load i32, ptr %i.f, align 8
  br label %anon_pipe_refill_tmp_pages.exit

anon_pipe_refill_tmp_pages.exit:                  ; preds = %select.unfold, %bb.ag, %bb.ah, %bb.ai
  %i.er = phi i32 [ 0, %select.unfold ], [ %.pre238, %bb.ag ], [ 0, %bb.ah ], [ %.pre237, %bb.ai ] ; 2 uses
  %i.es = getelementptr i8, ptr %i.c, i64 72
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = getelementptr i8, ptr %i.c, i64 76
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr i8, ptr %i.c, i64 80
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = sub i32 %i.et, %i.ev
  %.not195 = icmp ult i32 %i.ey, %i.ex
  call void @mutex_unlock(ptr noundef %i.c) #14
  %.not4.i = icmp eq i32 %i.er, 0
  br i1 %.not4.i, label %anon_pipe_free_pages.exit, label %.lr.ph.i171.preheader

.lr.ph.i171.preheader:                            ; preds = %anon_pipe_refill_tmp_pages.exit
  %i.ez = zext i32 %i.er to i64
  br label %.lr.ph.i171

.lr.ph.i171:                                      ; preds = %.lr.ph.i171.preheader, %put_page.exit.i
  %indvars.iv = phi i64 [ %i.ez, %.lr.ph.i171.preheader ], [ %indvars.iv.next, %put_page.exit.i ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %indvars, ptr %i.f, align 8
  %i.fa = and i64 %indvars.iv.next, 4294967295
  %i.fb = getelementptr [8 x i8], ptr %2, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %i.fe = load volatile i64, ptr %i.fd, align 8   ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = and i64 %i.fe, 1
  %i.fh = add nsw i64 %i.fg, -1
  %i.fi = or i64 %i.fh, %i.fe
  %i.fj = and i64 %i.fi, %i.ff
  %i.fk = inttoptr i64 %i.fj to ptr               ; 3 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 48
  %i.fm = load i32, ptr %i.fl, align 16
  %.mask.i.i.i = and i32 %i.fm, -16777216
  switch i32 %.mask.i.i.i, label %bb.aj [
    i32 -184549376, label %put_page.exit.i
    i32 -134217728, label %put_page.exit.i
  ]

bb.aj:                                            ; preds = %.lr.ph.i171
  %i.fn = getelementptr i8, ptr %i.fk, i64 52     ; 2 uses
  %i.fo = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fn, ptr elementtype(i32) %i.fn) #15, !srcloc !14 ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 2
  call void @llvm.assume(i1 %i.fp)
  %.not.i.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i, label %put_page.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @__folio_put(ptr noundef %i.fk) #14
  br label %put_page.exit.i

put_page.exit.i:                                  ; preds = %bb.ak, %bb.aj, %.lr.ph.i171, %.lr.ph.i171
  %.not.i172 = icmp eq i32 %indvars, 0
  br i1 %.not.i172, label %anon_pipe_free_pages.exit, label %.lr.ph.i171, !llvm.loop !61

anon_pipe_free_pages.exit:                        ; preds = %put_page.exit.i, %anon_pipe_refill_tmp_pages.exit
  %i.fq = trunc nuw i8 %.1113 to i1
  br i1 %i.fq, label %bb.am, label %bb.al

bb.al:                                            ; preds = %anon_pipe_free_pages.exit
  %i.fr = getelementptr i8, ptr %i.c, i64 112
  %i.fs = load i8, ptr %i.fr, align 8, !range !21, !noundef !22
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %anon_pipe_free_pages.exit
  %i.fu = getelementptr i8, ptr %i.c, i64 24
  call void @__wake_up_sync_key(ptr noundef %i.fu, i32 noundef 1, ptr noundef nonnull inttoptr (i64 65 to ptr)) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fv = getelementptr i8, ptr %i.c, i64 136
  call void @kill_fasync(ptr noundef %i.fv, i32 noundef 29, i32 noundef 1) #14
  %i.fw = and i1 %.1110, %.not195
  br i1 %i.fw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fx = getelementptr i8, ptr %i.c, i64 48
  call void @__wake_up_sync_key(ptr noundef %i.fx, i32 noundef 1, ptr noundef nonnull inttoptr (i64 260 to ptr)) #14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %.5, %bb.ao ], [ %.5, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_page_from_iter(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @anon_pipe_put_page(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load volatile i64, ptr %i.a, align 8     ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.b, 1
  %i.e = add nsw i64 %i.d, -1
  %i.f = or i64 %i.e, %i.b
  %i.g = and i64 %i.f, %i.c
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 52
  %i.j = load volatile i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.n = getelementptr i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  %.not.1 = icmp eq ptr %i.o, null
  br i1 %.not.1, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ 1, %bb.b ]
  %i.p = getelementptr [8 x i8], ptr %i.l, i64 %.lcssa
  store ptr %1, ptr %i.p, align 8
  br label %put_page.exit

.thread:                                          ; preds = %bb.b, %bb.a
  %i.q = load volatile i64, ptr %i.a, align 8     ; 2 uses
  %i.r = and i64 %i.q, 1
  %i.s = add nsw i64 %i.r, -1
  %i.t = or i64 %i.s, %i.q
  %i.u = and i64 %i.t, %i.c
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 48
  %i.x = load i32, ptr %i.w, align 16
  %.mask.i.i = and i32 %i.x, -16777216
  switch i32 %.mask.i.i, label %bb.d [
    i32 -184549376, label %put_page.exit
    i32 -134217728, label %put_page.exit
end_hunk_0
