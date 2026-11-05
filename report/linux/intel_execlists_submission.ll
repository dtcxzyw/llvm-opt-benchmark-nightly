Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_execlists_submission?download=true
inline.NumInlined: 512
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@execlists_resume:bb.a
  tail call void %i.cf(ptr noundef %i.cb, i32 %i.cd, i32 noundef -2, i1 noundef zeroext true) #18, !inline_history !107
  %i.cg = getelementptr i8, ptr %0, i64 1240
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = and i32 %i.ch, 2048
  %.not = icmp eq i32 %i.ci, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %enable_execlists.exit
  tail call void @xehp_enable_ccs_engines(ptr noundef %0) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %enable_execlists.exit
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @execlists_request_alloc(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 476        ; 4 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add i32 %i.b, 64
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 328
  %.val = load i64, ptr %i.h, align 8
  %i.i = add i64 %.val, -4294967297
  %i.j = icmp ult i64 %i.i, -4294967296
  br i1 %i.j, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = tail call ptr @intel_ring_begin(ptr noundef %0, i32 noundef 2) #18 ; 4 uses
  %i.n = icmp ugt ptr %i.m, inttoptr (i64 -4096 to ptr)
  br i1 %i.n, label %emit_pdps.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.m, i64 4
  store i32 67108864, ptr %i.m, align 4
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %i.l, i64 880      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef %0, i32 noundef 2) #18, !inline_history !109 ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %emit_pdps.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = tail call i32 %i.s(ptr noundef %0, i32 noundef 1) #18, !inline_history !109 ; 2 uses
  %.not45.i = icmp eq i32 %i.t, 0
  br i1 %.not45.i, label %bb.e, label %emit_pdps.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @intel_ring_begin(ptr noundef %0, i32 noundef 18) #18 ; 20 uses
  %i.v = icmp ugt ptr %i.u, inttoptr (i64 -4096 to ptr)
  br i1 %i.v, label %emit_pdps.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.u, i64 4
  store i32 285216783, ptr %i.u, align 4
  %i.x = getelementptr i8, ptr %i.g, i64 680      ; 4 uses
  %i.y = getelementptr i8, ptr %i.g, i64 456      ; 4 uses
  %i.z = getelementptr i8, ptr %i.g, i64 521      ; 4 uses
  %i.aa = getelementptr i8, ptr %i.l, i64 72      ; 4 uses
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %i915_page_dir_dma_addr.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %i.z, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %i.y, i64 %i.ah
  br label %i915_page_dir_dma_addr.exit.i

i915_page_dir_dma_addr.exit.i:                    ; preds = %bb.g, %bb.f
  %.in.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.af, %bb.f ]
  %i.aj = load ptr, ptr %.in.i.i, align 8
  %i.ak = tail call i64 @__px_dma(ptr noundef %i.aj) #18 ; 2 uses
  %i.al = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.am = add i32 %i.al, 648
  %i.an = add i32 %i.al, 652
  %i.ao = getelementptr i8, ptr %i.u, i64 8
  store i32 %i.an, ptr %i.w, align 4
  %i.ap = lshr i64 %i.ak, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = getelementptr i8, ptr %i.u, i64 12
  store i32 %i.aq, ptr %i.ao, align 4
  %i.as = getelementptr i8, ptr %i.u, i64 16
  store i32 %i.am, ptr %i.ar, align 4
  %i.at = trunc i64 %i.ak to i32
  %i.au = getelementptr i8, ptr %i.u, i64 20
  store i32 %i.at, ptr %i.as, align 4
  %i.av = load ptr, ptr %i.x, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i.1.i = icmp eq ptr %i.az, null
  br i1 %.not.i.1.i, label %bb.h, label %i915_page_dir_dma_addr.exit.1.i

bb.h:                                             ; preds = %i915_page_dir_dma_addr.exit.i
  %i.ba = load i8, ptr %i.z, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr [8 x i8], ptr %i.y, i64 %i.bb
  br label %i915_page_dir_dma_addr.exit.1.i

i915_page_dir_dma_addr.exit.1.i:                  ; preds = %bb.h, %i915_page_dir_dma_addr.exit.i
  %.in.i.1.i = phi ptr [ %i.bc, %bb.h ], [ %i.az, %i915_page_dir_dma_addr.exit.i ]
  %i.bd = load ptr, ptr %.in.i.1.i, align 8
  %i.be = tail call i64 @__px_dma(ptr noundef %i.bd) #18 ; 2 uses
  %i.bf = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.bg = add i32 %i.bf, 640
  %i.bh = add i32 %i.bf, 644
  %i.bi = getelementptr i8, ptr %i.u, i64 24
  store i32 %i.bh, ptr %i.au, align 4
  %i.bj = lshr i64 %i.be, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = getelementptr i8, ptr %i.u, i64 28
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bm = getelementptr i8, ptr %i.u, i64 32
  store i32 %i.bg, ptr %i.bl, align 4
  %i.bn = trunc i64 %i.be to i32
  %i.bo = getelementptr i8, ptr %i.u, i64 36
  store i32 %i.bn, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.x, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i.2.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.2.i, label %bb.i, label %i915_page_dir_dma_addr.exit.2.i

bb.i:                                             ; preds = %i915_page_dir_dma_addr.exit.1.i
  %i.bu = load i8, ptr %i.z, align 1
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr [8 x i8], ptr %i.y, i64 %i.bv
  br label %i915_page_dir_dma_addr.exit.2.i

i915_page_dir_dma_addr.exit.2.i:                  ; preds = %bb.i, %i915_page_dir_dma_addr.exit.1.i
  %.in.i.2.i = phi ptr [ %i.bw, %bb.i ], [ %i.bt, %i915_page_dir_dma_addr.exit.1.i ]
  %i.bx = load ptr, ptr %.in.i.2.i, align 8
  %i.by = tail call i64 @__px_dma(ptr noundef %i.bx) #18 ; 2 uses
  %i.bz = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ca = add i32 %i.bz, 632
  %i.cb = add i32 %i.bz, 636
  %i.cc = getelementptr i8, ptr %i.u, i64 40
  store i32 %i.cb, ptr %i.bo, align 4
  %i.cd = lshr i64 %i.by, 32
  %i.ce = trunc nuw i64 %i.cd to i32
  %i.cf = getelementptr i8, ptr %i.u, i64 44
  store i32 %i.ce, ptr %i.cc, align 4
  %i.cg = getelementptr i8, ptr %i.u, i64 48
  store i32 %i.ca, ptr %i.cf, align 4
  %i.ch = trunc i64 %i.by to i32
  %i.ci = getelementptr i8, ptr %i.u, i64 52
  store i32 %i.ch, ptr %i.cg, align 4
  %i.cj = load ptr, ptr %i.x, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not.i.3.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.3.i, label %bb.j, label %emit_pdps.exit.thread15

bb.j:                                             ; preds = %i915_page_dir_dma_addr.exit.2.i
  %i.cn = load i8, ptr %i.z, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.y, i64 %i.co
  br label %emit_pdps.exit.thread15

emit_pdps.exit.thread15:                          ; preds = %i915_page_dir_dma_addr.exit.2.i, %bb.j
  %.in.i.3.i = phi ptr [ %i.cp, %bb.j ], [ %i.cm, %i915_page_dir_dma_addr.exit.2.i ]
  %i.cq = load ptr, ptr %.in.i.3.i, align 8
  %i.cr = tail call i64 @__px_dma(ptr noundef %i.cq) #18 ; 2 uses
  %i.cs = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ct = add i32 %i.cs, 624
  %i.cu = add i32 %i.cs, 628
  %i.cv = getelementptr i8, ptr %i.u, i64 56
  store i32 %i.cu, ptr %i.ci, align 4
  %i.cw = lshr i64 %i.cr, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %i.cy = getelementptr i8, ptr %i.u, i64 60
  store i32 %i.cx, ptr %i.cv, align 4
  %i.cz = getelementptr i8, ptr %i.u, i64 64
  store i32 %i.ct, ptr %i.cy, align 4
  %i.da = trunc i64 %i.cr to i32
  %i.db = getelementptr i8, ptr %i.u, i64 68
  store i32 %i.da, ptr %i.cz, align 4
  store i32 67108865, ptr %i.db, align 4
  br label %bb.k

emit_pdps.exit:                                   ; preds = %bb.e, %bb.b
  %.0.i.in.in = phi ptr [ %i.m, %bb.b ], [ %i.u, %bb.e ]
  %.0.i.in = ptrtoint ptr %.0.i.in.in to i64
  %.0.i = trunc i64 %.0.i.in to i32               ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.k, label %emit_pdps.exit.thread

bb.k:                                             ; preds = %emit_pdps.exit.thread15, %emit_pdps.exit, %bb.a
  %i.dc = getelementptr i8, ptr %0, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr i8, ptr %i.dd, i64 880
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call i32 %i.df(ptr noundef %0, i32 noundef 1) #18 ; 2 uses
  %.not12 = icmp eq i32 %i.dg, 0
  br i1 %.not12, label %bb.l, label %emit_pdps.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dh = load i32, ptr %i.a, align 4
  %i.di = add i32 %i.dh, -64
  store i32 %i.di, ptr %i.a, align 4
  br label %emit_pdps.exit.thread

emit_pdps.exit.thread:                            ; preds = %bb.d, %bb.c, %bb.k, %emit_pdps.exit, %bb.l
  %.0 = phi i32 [ %.0.i, %emit_pdps.exit ], [ 0, %bb.l ], [ %i.dg, %bb.k ], [ %i.t, %bb.d ], [ %i.r, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal void @add_to_engine(ptr noundef %0) #11 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 336        ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = getelementptr i8, ptr %0, i64 344        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %i.j, align 8
  store volatile ptr %i.i, ptr %i.h, align 8
  %i.k = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  store ptr %i.a, ptr %i.k, align 8
  store ptr %i.f, ptr %i.a, align 8
  store ptr %i.l, ptr %i.g, align 8
  store volatile ptr %i.a, ptr %i.l, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_from_engine(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 4
  tail call void @_raw_spin_lock_irq(ptr noundef %i.e) #18
  %i.f = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %.not16 = icmp eq ptr %i.b, %i.f
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !prof !43

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi ptr [ %i.n, %.lr.ph ], [ %i.f, %bb.a ] ; 4 uses
  %.017 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ]
  %i.h = getelementptr i8, ptr %.017, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 4
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #18
  %i.k = getelementptr i8, ptr %i.g, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 4
  tail call void @_raw_spin_lock(ptr noundef %i.m) #18
  %i.n = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %.not = icmp eq ptr %i.g, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !prof !44, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.g, %.lr.ph ]
  %i.o = getelementptr i8, ptr %0, i64 336        ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 344        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8
  store volatile ptr %i.r, ptr %i.q, align 8
  store volatile ptr %i.o, ptr %i.o, align 8
  store volatile ptr %i.o, ptr %i.p, align 8
  %i.t = getelementptr i8, ptr %0, i64 48         ; 4 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.t, i32 -129, ptr elementtype(i8) %i.t) #19, !srcloc !38
  %i.u = getelementptr i8, ptr %0, i64 49         ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.u, i32 -2, ptr elementtype(i8) %i.u) #19, !srcloc !38
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.t, i32 64, ptr elementtype(i8) %i.t) #19, !srcloc !39
  %i.v = getelementptr i8, ptr %.0.lcssa, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.x) #18
  tail call void @i915_request_notify_execute_cb_imm(ptr noundef %0) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @execlists_reset_prepare(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56       ; 2 uses
  %i.d = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.c, i32 1, ptr elementtype(i32) %i.c) #19, !srcloc !23
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %__tasklet_disable_sync_once.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 40
  tail call void @tasklet_unlock_spin_wait(ptr noundef %i.e) #18
  br label %__tasklet_disable_sync_once.exit

__tasklet_disable_sync_once.exit:                 ; preds = %bb.a, %bb.b
  %i.f = getelementptr i8, ptr %0, i64 600
  %.val = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %.val, i64 200
  store i32 1, ptr %i.g, align 4
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !22
  %i.h = tail call i32 @intel_engine_stop_cs(ptr noundef %0) #18 ; 0 uses
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call zeroext i1 @intel_engine_reset_needs_wa_22011802037(ptr noundef %i.j) #18
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %__tasklet_disable_sync_once.exit
  tail call void @intel_engine_wait_for_pending_mi_fw(ptr noundef %0) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %__tasklet_disable_sync_once.exit
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val8 = load ptr, ptr %i.l, align 8            ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 72
  %.val9 = load i32, ptr %i.m, align 8
  %i.n = add i32 %.val9, 568                      ; 3 uses
  %i.o = icmp ult i32 %i.n, 262144
  br i1 %i.o, label %bb.e, label %active_ccid.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %.val8, i64 36
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, %i.n
  br label %active_ccid.exit

active_ccid.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i.i = phi i32 [ %i.r, %bb.e ], [ %i.n, %bb.d ]
  %i.s = load ptr, ptr %.val8, align 8
  %i.t = zext i32 %.0.i.i to i64
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  %i.v = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.u) #19, !srcloc !36
  %i.w = getelementptr i8, ptr %0, i64 1060
  store i32 %i.v, ptr %i.w, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @execlists_reset_rewind(ptr noundef %0, i1 zeroext %1) #0 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @execlists_reset_csb(ptr noundef %0) #20
  tail call void @__rcu_read_lock() #18
  %i.a = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %i.d = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.c) #18
  %i.e = tail call fastcc ptr @__unwind_incomplete_requests(ptr noundef %0) #20, !srcloc !111 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.g, i64 noundef %i.d) #18
  tail call void @__rcu_read_unlock() #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @execlists_reset_cancel(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  tail call fastcc void @execlists_reset_csb(ptr noundef %0) #20
  tail call void @__rcu_read_lock() #18
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %i.e = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #18
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %.pn98 = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not99 = icmp eq ptr %.pn98, %i.g
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %i915_request_put.exit
  %.pn100 = phi ptr [ %.pn, %i915_request_put.exit ], [ %.pn98, %bb.a ] ; 2 uses
  %.0 = getelementptr i8, ptr %.pn100, i64 -336
  %i.h = tail call ptr @i915_request_mark_eio(ptr noundef %.0) #18 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %i915_request_put.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %i.h, i64 56       ; 4 uses
  %i.j = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 -1, ptr elementtype(i32) %i.i) #19, !srcloc !23 ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %i.j, 1
  br i1 %i.l, label %bb.d, label %i915_request_put.exit, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @refcount_warn_saturate(ptr noundef %i.i, i32 noundef 3) #18
  br label %i915_request_put.exit

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !25
  tail call void @dma_fence_release(ptr noundef %i.i) #18, !inline_history !0
  br label %i915_request_put.exit

i915_request_put.exit:                            ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e
  %.pn = load ptr, ptr %.pn100, align 8           ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 8
end_hunk_0
