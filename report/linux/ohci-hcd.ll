Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ohci-hcd?download=true
inline.NumInlined: 478
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.105 = private unnamed_addr constant [5 x i8] c"FIT \00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"fmremaining 0x%08x %sFR=0x%04x\0A\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"FRT \00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"periodicstart 0x%04x\0A\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"lsthresh 0x%04x\0A\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"hub poll timer %s\0A\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@cc_to_error = internal unnamed_addr constant [16 x i32] [i32 0, i32 -84, i32 -71, i32 -84, i32 -32, i32 -62, i32 -71, i32 -71, i32 -75, i32 -121, i32 -5, i32 -5, i32 -70, i32 -63, i32 -114, i32 -114], align 16
@.str.113 = private unnamed_addr constant [26 x i8] c"drivers/usb/host/ohci-q.c\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"USB HC reset timed out!\0A\00", align 1
@.str.115 = private unnamed_addr constant [22 x i8] c"init err (%08x %04x)\0A\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"controller won't resume\0A\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"bad entry %8x\0A\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"OHCI Host Controller\00", align 1
@ohci_hc_driver = internal unnamed_addr constant { ptr, ptr, i64, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @hcd_name, ptr @.str.118, i64 1160, ptr @ohci_irq, i32 19, [4 x i8] zeroinitializer, ptr @ohci_setup, ptr @ohci_start, ptr null, ptr null, ptr null, ptr @ohci_stop, ptr @ohci_shutdown, ptr @ohci_get_frame, ptr @ohci_urb_enqueue, ptr @ohci_urb_dequeue, ptr null, ptr null, ptr @ohci_endpoint_disable, ptr null, ptr @ohci_hub_status_data, ptr @ohci_hub_control, ptr @ohci_bus_suspend, ptr @ohci_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.120 = private unnamed_addr constant [55 x i8] c"OHCI Unrecoverable Error, scheduling NEC chip restart\0A\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"OHCI Unrecoverable Error, disabled\0A\00", align 1
@system_percpu_wq = external dso_local local_unnamed_addr global ptr, align 8
@.str.122 = private unnamed_addr constant [13 x i8] c"can't start\0A\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"ED unlink timeout\0A\00", align 1
@.str.124 = private unnamed_addr constant [31 x i8] c"leak ed %p (#%02x) state %d%s\0A\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c" (has tds)\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"ohci\00", align 1
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 8
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_addressable_ohci_hcd_mod_init_656, ptr @__UNIQUE_ID_addressable_ohci_hub_control_625, ptr @__UNIQUE_ID_addressable_ohci_hub_status_data_624, ptr @__UNIQUE_ID_addressable_ohci_init_driver_650, ptr @__UNIQUE_ID_addressable_ohci_restart_647, ptr @__UNIQUE_ID_addressable_ohci_resume_649, ptr @__UNIQUE_ID_addressable_ohci_setup_645, ptr @__UNIQUE_ID_addressable_ohci_suspend_648, ptr @__UNIQUE_ID_modinfo_637, ptr @__UNIQUE_ID_modinfo_638, ptr @__UNIQUE_ID_modinfo_639, ptr @__UNIQUE_ID_modinfo_640, ptr @__UNIQUE_ID_modinfo_651, ptr @__UNIQUE_ID_modinfo_652, ptr @__UNIQUE_ID_modinfo_653, ptr @__UNIQUE_ID_modinfo_654, ptr @__param_distrust_firmware, ptr @__param_no_handshake, ptr @ohci_hcd_mod_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 3) i32 @ohci_hub_status_data(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 584        ; 5 uses
  %i.b = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #12 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 320        ; 5 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 1640       ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 1
  %.not44 = icmp eq i64 %i.h, 0
  br i1 %.not44, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 592        ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 72
  %i.l = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k) #13, !srcloc !15 ; 3 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %roothub_a.exit.thread, label %bb.d

roothub_a.exit.thread:                            ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 1480
  store i32 0, ptr %i.n, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.f, align 8
  %i.p = and i64 %i.o, 1
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = and i32 %i.l, -66068480
  %.not1112.i = icmp eq i32 %i.q, 0
  %or.cond.i = or i1 %.not1112.i, %.not.i
  br i1 %or.cond.i, label %roothub_a.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 72
  %i.t = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.s) #13, !srcloc !15 ; 2 uses
  %i.u = and i32 %i.t, -66068480
  %.not11.i = icmp eq i32 %i.u, 0
  br i1 %.not11.i, label %roothub_a.exit, label %.lr.ph.i, !llvm.loop !0

roothub_a.exit:                                   ; preds = %.lr.ph.i, %bb.d
  %.1.i = phi i32 [ %i.l, %bb.d ], [ %i.t, %.lr.ph.i ]
  %i.v = and i32 %.1.i, 240
  %.not45 = icmp eq i32 %i.v, 0
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %roothub_a.exit.thread, %roothub_a.exit
  %i.w = load ptr, ptr %0, align 8
  %i.x = load ptr, ptr %i.i, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 72
  %i.z = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.y) #13, !srcloc !15
  %i.aa = and i32 %i.z, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.w, ptr noundef nonnull @.str, i32 noundef %i.aa) #14
  br label %.thread

bb.f:                                             ; preds = %roothub_a.exit, %bb.b
  %i.ab = getelementptr i8, ptr %0, i64 592       ; 8 uses
  %.val = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %.val, i64 80
  %i.ad = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ac) #13, !srcloc !15
  %.fr70 = freeze i32 %i.ad
  %i.ae = and i32 %.fr70, 196608
  %.not46 = icmp ne i32 %i.ae, 0                  ; 2 uses
  %. = zext i1 %.not46 to i8
  %.50 = zext i1 %.not46 to i32                   ; 2 uses
  store i8 %., ptr %1, align 1
  %i.af = getelementptr i8, ptr %0, i64 1484      ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp sgt i32 %i.ag, 7
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %1, i64 1
  store i8 0, ptr %i.ai, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.042 = phi i32 [ 2, %bb.g ], [ 1, %bb.f ]
  %i.aj = load ptr, ptr %i.ab, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 12
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 64, ptr elementtype(i32) %i.ak) #13, !srcloc !17
  %i.al = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 12
  %i.an = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.am) #13, !srcloc !15
  %i.ao = and i32 %i.an, 64                       ; 2 uses
  %i.ap = load i32, ptr %i.af, align 4
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %0, i64 1480
  %i.as = getelementptr i8, ptr %1, i64 1         ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 5 uses
  %.173 = phi i32 [ %.50, %.lr.ph ], [ %.2, %bb.n ]
  %.04172 = phi i32 [ 0, %.lr.ph ], [ %i.bv, %bb.n ]
  %i.at = load ptr, ptr %i.ab, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 84
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.av) #13, !srcloc !15 ; 3 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %roothub_portstatus.exit.thread, label %bb.j

roothub_portstatus.exit.thread:                   ; preds = %bb.i
  store i32 0, ptr %i.ar, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load i64, ptr %i.f, align 8
  %i.az = and i64 %i.ay, 1
  %.not.i51 = icmp eq i64 %i.az, 0
  %i.ba = and i32 %i.aw, -2032416
  %.not1314.i = icmp eq i32 %i.ba, 0
  %or.cond.i52 = or i1 %.not1314.i, %.not.i51
  br i1 %or.cond.i52, label %roothub_portstatus.exit, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.j, %.lr.ph.i53
  %i.bb = load ptr, ptr %i.ab, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 84
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bd) #13, !srcloc !15 ; 2 uses
  %i.bf = and i32 %i.be, -2032416
  %.not13.i = icmp eq i32 %i.bf, 0
  br i1 %.not13.i, label %roothub_portstatus.exit, label %.lr.ph.i53, !llvm.loop !1

roothub_portstatus.exit:                          ; preds = %.lr.ph.i53, %bb.j
  %.1.i54 = phi i32 [ %i.aw, %bb.j ], [ %i.be, %.lr.ph.i53 ] ; 2 uses
  %i.bg = and i32 %.1.i54, 1
  %i.bh = or i32 %i.bg, %.04172                   ; 2 uses
  %i.bi = and i32 %.1.i54, 2031616
  %.not48 = icmp eq i32 %i.bi, 0
  br i1 %.not48, label %bb.n, label %bb.k

bb.k:                                             ; preds = %roothub_portstatus.exit.thread, %roothub_portstatus.exit
  %i.bj = phi i32 [ 1, %roothub_portstatus.exit.thread ], [ %i.bh, %roothub_portstatus.exit ] ; 2 uses
  %i.bk = icmp samesign ult i64 %indvars.iv, 7
  %i.bl = trunc i64 %indvars.iv to i32            ; 2 uses
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = shl nuw nsw i32 2, %i.bl
  %i.bn = load i8, ptr %1, align 1
  %i.bo = trunc nuw i32 %i.bm to i8
  %i.bp = or i8 %i.bn, %i.bo
  store i8 %i.bp, ptr %1, align 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bq = add i32 %i.bl, -7
  %i.br = shl nuw i32 1, %i.bq
  %i.bs = load i8, ptr %i.as, align 1
  %i.bt = trunc i32 %i.br to i8
  %i.bu = or i8 %i.bs, %i.bt
  store i8 %i.bu, ptr %i.as, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %roothub_portstatus.exit
  %i.bv = phi i32 [ %i.bj, %bb.l ], [ %i.bj, %bb.m ], [ %i.bh, %roothub_portstatus.exit ] ; 2 uses
  %.2 = phi i32 [ 1, %bb.l ], [ 1, %bb.m ], [ %.173, %roothub_portstatus.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = load i32, ptr %i.af, align 4
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %bb.i, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.n, %bb.h
  %.041.lcssa = phi i32 [ 0, %bb.h ], [ %i.bv, %bb.n ] ; 2 uses
  %.1.lcssa = phi i32 [ %.50, %bb.h ], [ %.2, %bb.n ] ; 4 uses
  %i.bz = load ptr, ptr %i.ab, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ca) #13, !srcloc !15
  %.fr60.i = freeze i32 %i.cb
  %i.cc = and i32 %.fr60.i, 64                    ; 4 uses
  %i.cd = getelementptr i8, ptr %0, i64 1616      ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = lshr i32 %i.ce, 6
  %i.cg = and i32 %i.cf, 3
  switch i32 %i.cg, label %default.unreachable [
    i32 2, label %bb.o
    i32 3, label %bb.aa
    i32 1, label %bb.aa
    i32 0, label %ohci_root_hub_state_changes.exit.thread
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.ch = or i32 %.1.lcssa, %i.ao
  %i.ci = or i32 %i.ch, %i.cc
  %or.cond3.not.i = icmp eq i32 %i.ci, 0
  br i1 %or.cond3.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cj = load ptr, ptr %i.ab, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 64, ptr elementtype(i32) %i.ck) #13, !srcloc !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i32 [ %i.cc, %bb.o ], [ 64, %bb.p ] ; 4 uses
  %i.cl = getelementptr i8, ptr %0, i64 1636      ; 3 uses
  %i.cm = load i8, ptr %i.cl, align 4             ; 3 uses
  %i.cn = and i8 %i.cm, 1
  %.not48.i = icmp eq i8 %i.cn, 0
  br i1 %.not48.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not49.i = icmp eq i32 %.041.lcssa, 0
  br i1 %.not49.i, label %bb.s, label %ohci_root_hub_state_changes.exit

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr i8, ptr %0, i64 88
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 404
  %i.cr = load i16, ptr %i.cq, align 4
  %i.cs = trunc i16 %i.cr to i1
  br i1 %i.cs, label %device_may_wakeup.exit.i, label %ohci_root_hub_state_changes.exit

device_may_wakeup.exit.i:                         ; preds = %bb.s
  %i.ct = getelementptr i8, ptr %i.cp, i64 464
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not61.i = icmp eq ptr %i.cu, null
  br i1 %.not61.i, label %ohci_root_hub_state_changes.exit, label %bb.t

bb.t:                                             ; preds = %device_may_wakeup.exit.i
  %i.cv = or disjoint i8 %i.cm, 1
  store i8 %i.cv, ptr %i.cl, align 4
  %i.cw = load volatile i64, ptr @jiffies, align 64
  %i.cx = add i64 %i.cw, 1000
  %i.cy = getelementptr i8, ptr %0, i64 1624
  store i64 %i.cx, ptr %i.cy, align 8
  br label %ohci_root_hub_state_changes.exit.thread

bb.u:                                             ; preds = %bb.q
  %i.cz = or i32 %.1.lcssa, %.041.lcssa
  %or.cond5.not.i = icmp eq i32 %i.cz, 0
  br i1 %or.cond5.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = and i8 %i.cm, -2
  store i8 %i.da, ptr %i.cl, align 4
  %i.db = load volatile i64, ptr @jiffies, align 64
  %i.dc = add i64 %i.db, 300
  %i.dd = getelementptr i8, ptr %0, i64 1624
  store i64 %i.dc, ptr %i.dd, align 8
  br label %ohci_root_hub_state_changes.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.de = load volatile i64, ptr @jiffies, align 64
  %i.df = getelementptr i8, ptr %0, i64 1624
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = sub i64 %i.de, %i.dg
  %i.di = icmp sgt i64 %i.dh, -1
  br i1 %i.di, label %bb.x, label %ohci_root_hub_state_changes.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr i8, ptr %0, i64 616
  %i.dk = load ptr, ptr %i.dj, align 8
  %.not51.i = icmp eq ptr %i.dk, null
  br i1 %.not51.i, label %bb.y, label %ohci_root_hub_state_changes.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dl = load i32, ptr %i.cd, align 8
  %i.dm = and i32 %i.dl, 60
  %.not52.i = icmp eq i32 %i.dm, 0
  br i1 %.not52.i, label %bb.z, label %ohci_root_hub_state_changes.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.dn = tail call fastcc i32 @ohci_rh_suspend(ptr noundef %i.a, i32 noundef 1) #15, !srcloc !25 ; 0 uses
  br label %ohci_root_hub_state_changes.exit

bb.aa:                                            ; preds = %._crit_edge, %._crit_edge
  %.not.i55 = icmp eq i32 %.1.lcssa, 0
  %i.do = getelementptr i8, ptr %0, i64 1636
  %i.dp = load i8, ptr %i.do, align 4
  %i.dq = and i8 %i.dp, 1
  %.not44.i = icmp eq i8 %i.dq, 0                 ; 2 uses
  br i1 %.not.i55, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not44.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = tail call fastcc i32 @ohci_rh_resume(ptr noundef %i.a) #15, !srcloc !26 ; 0 uses
  br label %ohci_root_hub_state_changes.exit.thread

bb.ad:                                            ; preds = %bb.ab
  tail call void @usb_hcd_resume_root_hub(ptr noundef %0) #12
  br label %ohci_root_hub_state_changes.exit.thread

bb.ae:                                            ; preds = %bb.aa
  br i1 %.not44.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ds = getelementptr i8, ptr %0, i64 88
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr i8, ptr %i.dt, i64 1336
  %i.dv = load i8, ptr %i.du, align 8
  %i.dw = and i8 %i.dv, 1
  %.not45.i = icmp eq i8 %i.dw, 0
  br i1 %.not45.i, label %ohci_root_hub_state_changes.exit.thread63, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dx = or i32 %i.cc, %i.ao
  %or.cond7.not.i = icmp eq i32 %i.dx, 0
  br i1 %or.cond7.not.i, label %.thread.i, label %ohci_root_hub_state_changes.exit

.thread.i:                                        ; preds = %bb.ag
  %i.dy = load ptr, ptr %i.ab, align 8
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 64, ptr elementtype(i32) %i.dz) #13, !srcloc !17
  br label %ohci_root_hub_state_changes.exit.thread63

default.unreachable:                              ; preds = %._crit_edge
  unreachable

ohci_root_hub_state_changes.exit:                 ; preds = %bb.ag, %bb.r, %bb.s, %device_may_wakeup.exit.i, %bb.z
  %.043.i.in.in = phi i32 [ %.0.i, %bb.r ], [ %.0.i, %bb.z ], [ %.0.i, %device_may_wakeup.exit.i ], [ %.0.i, %bb.s ], [ %i.cc, %bb.ag ]
  %.not47 = icmp eq i32 %.043.i.in.in, 64
  br i1 %.not47, label %ohci_root_hub_state_changes.exit.thread63, label %ohci_root_hub_state_changes.exit.thread

ohci_root_hub_state_changes.exit.thread:          ; preds = %bb.ad, %bb.ac, %bb.t, %._crit_edge, %bb.w, %bb.y, %bb.x, %bb.v, %ohci_root_hub_state_changes.exit
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.c, i32 4, ptr elementtype(i8) %i.c) #13, !srcloc !18
  br label %bb.ah

ohci_root_hub_state_changes.exit.thread63:        ; preds = %bb.af, %.thread.i, %ohci_root_hub_state_changes.exit
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.c, i32 -5, ptr elementtype(i8) %i.c) #13, !srcloc !19
  br label %bb.ah

.thread:                                          ; preds = %bb.e, %bb.a
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.b) #12
  br label %bb.ai

bb.ah:                                            ; preds = %ohci_root_hub_state_changes.exit.thread, %ohci_root_hub_state_changes.exit.thread63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.b) #12
  %.not49 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not49, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread, %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ea = phi i32 [ 0, %bb.ai ], [ %.042, %bb.ah ]
  ret i32 %i.ea
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -108, 1) i32 @ohci_hub_control(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr nofree noundef writeonly captures(none) %4, i16 zeroext %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 584
  %i.b = getelementptr i8, ptr %0, i64 1484       ; 4 uses
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 320
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.ae, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  switch i16 %1, label %bb.ad [
    i16 8193, label %bb.c
    i16 8961, label %bb.e
    i16 -24570, label %bb.o
    i16 -24576, label %bb.s
    i16 -23808, label %bb.t
    i16 8195, label %bb.x
    i16 8963, label %bb.y
  ]

bb.c:                                             ; preds = %bb.b
  switch i16 %2, label %bb.ad [
    i16 1, label %bb.d
    i16 0, label %bb.ae
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 592
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 80
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 131072, ptr elementtype(i32) %i.i) #13, !srcloc !17
  br label %bb.ae

bb.e:                                             ; preds = %bb.b
  %.not50 = icmp eq i16 %3, 0
  %i.j = zext i16 %3 to i32
  %i.k = icmp slt i32 %i.c, %i.j
  %or.cond = select i1 %.not50, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i16 %3, -1
  switch i16 %2, label %bb.ad [
    i16 1, label %bb.n
    i16 17, label %bb.g
    i16 2, label %bb.h
    i16 18, label %bb.i
    i16 8, label %bb.j
    i16 16, label %bb.k
    i16 19, label %bb.l
    i16 20, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.045 = phi i32 [ 1048576, %bb.m ], [ 131072, %bb.g ], [ 8, %bb.h ], [ 262144, %bb.i ], [ 512, %bb.j ], [ 65536, %bb.k ], [ 524288, %bb.l ], [ 1, %bb.f ]
  %i.m = getelementptr i8, ptr %0, i64 592
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 84
  %i.p = zext i16 %i.l to i64
  %i.q = getelementptr [4 x i8], ptr %i.o, i64 %i.p
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.045, ptr elementtype(i32) %i.q) #13, !srcloc !17
  br label %bb.ae

bb.o:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %0, i64 592        ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 72
  %i.u = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.t) #13, !srcloc !15 ; 3 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr i8, ptr %0, i64 1480
  store i32 0, ptr %i.w, align 8
  br label %roothub_a.exit.i

bb.q:                                             ; preds = %bb.o
  %i.x = getelementptr i8, ptr %0, i64 1640
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 1
  %.not.i.i = icmp eq i64 %i.z, 0
  %i.aa = and i32 %i.u, -66068480
  %.not1112.i.i = icmp eq i32 %i.aa, 0
  %or.cond.i.i = or i1 %.not1112.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %roothub_a.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i
  %i.ab = load ptr, ptr %i.r, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 72
  %i.ad = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ac) #13, !srcloc !15 ; 2 uses
  %i.ae = and i32 %i.ad, -66068480
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %roothub_a.exit.i, label %.lr.ph.i.i, !llvm.loop !0

roothub_a.exit.i:                                 ; preds = %.lr.ph.i.i, %bb.q, %bb.p
  %.1.i.i = phi i32 [ -1, %bb.p ], [ %i.u, %bb.q ], [ %i.ad, %.lr.ph.i.i ] ; 3 uses
  %i.af = getelementptr i8, ptr %4, i64 1
  store i8 41, ptr %i.af, align 1
  %i.ag = lshr i32 %.1.i.i, 24
  %i.ah = trunc nuw i32 %i.ag to i8
  %i.ai = getelementptr i8, ptr %4, i64 5
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr i8, ptr %4, i64 6
  store i8 0, ptr %i.aj, align 1
  %i.ak = load i32, ptr %i.b, align 4
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr i8, ptr %4, i64 2
  store i8 %i.al, ptr %i.am, align 1
  %i.an = load i32, ptr %i.b, align 4
  %i.ao = sdiv i32 %i.an, 8
  %.tr.i = trunc i32 %i.ao to i8
  %i.ap = shl i8 %.tr.i, 1
  %i.aq = add i8 %i.ap, 9
  store i8 %i.aq, ptr %4, align 1
  %i.ar = trunc i32 %.1.i.i to i16
  %i.as = lshr i16 %i.ar, 8                       ; 2 uses
  %.1.i = and i16 %i.as, 3
  %i.at = and i32 %.1.i.i, 4096
  %.not29.i = icmp eq i32 %i.at, 0
  %i.au = and i16 %i.as, 8
  %.2.v.i = select i1 %.not29.i, i16 %i.au, i16 16
  %.2.i = or disjoint i16 %.2.v.i, %.1.i
  %i.av = getelementptr i8, ptr %4, i64 3
  store i16 %.2.i, ptr %i.av, align 1
  %.val.i = load ptr, ptr %i.r, align 8
  %i.aw = getelementptr i8, ptr %.val.i, i64 76
  %i.ax = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aw) #13, !srcloc !15 ; 2 uses
  %i.ay = getelementptr i8, ptr %4, i64 7         ; 2 uses
  store i32 -1, ptr %i.ay, align 1
  %i.az = trunc i32 %i.ax to i8
  store i8 %i.az, ptr %i.ay, align 1
  %i.ba = load i32, ptr %i.b, align 4
  %i.bb = icmp sgt i32 %i.ba, 7
  br i1 %i.bb, label %bb.r, label %ohci_hub_descriptor.exit

bb.r:                                             ; preds = %roothub_a.exit.i
  %i.bc = lshr i32 %i.ax, 8
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr i8, ptr %4, i64 9
  store i8 -1, ptr %i.be, align 1
  br label %ohci_hub_descriptor.exit

ohci_hub_descriptor.exit:                         ; preds = %roothub_a.exit.i, %bb.r
  %.sink.i = phi i8 [ %i.bd, %bb.r ], [ -1, %roothub_a.exit.i ]
  %i.bf = getelementptr i8, ptr %4, i64 8
  store i8 %.sink.i, ptr %i.bf, align 1
  br label %bb.ae

bb.s:                                             ; preds = %bb.b
  %i.bg = getelementptr i8, ptr %0, i64 592
  %.val = load ptr, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %.val, i64 80
  %i.bi = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bh) #13, !srcloc !15
  %i.bj = and i32 %i.bi, 2147450879
  store i32 %i.bj, ptr %4, align 1
  br label %bb.ae

bb.t:                                             ; preds = %bb.b
  %.not49 = icmp eq i16 %3, 0
  %i.bk = zext i16 %3 to i32
  %i.bl = icmp slt i32 %i.c, %i.bk
  %or.cond53 = select i1 %.not49, i1 true, i1 %i.bl
  br i1 %or.cond53, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = add i16 %3, -1
  %i.bn = getelementptr i8, ptr %0, i64 592       ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 84
  %i.bq = zext i16 %i.bm to i64                   ; 2 uses
  %i.br = getelementptr [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.br) #13, !srcloc !15 ; 3 uses
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr i8, ptr %0, i64 1480
  store i32 0, ptr %i.bu, align 8
  br label %roothub_portstatus.exit

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr i8, ptr %0, i64 1640
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = and i64 %i.bw, 1
  %.not.i = icmp eq i64 %i.bx, 0
  %i.by = and i32 %i.bs, -2032416
  %.not1314.i = icmp eq i32 %i.by, 0
  %or.cond.i = or i1 %.not1314.i, %.not.i
  br i1 %or.cond.i, label %roothub_portstatus.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %i.bz = load ptr, ptr %i.bn, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 84
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %i.bq
  %i.cc = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cb) #13, !srcloc !15 ; 2 uses
  %i.cd = and i32 %i.cc, -2032416
  %.not13.i = icmp eq i32 %i.cd, 0
  br i1 %.not13.i, label %roothub_portstatus.exit, label %.lr.ph.i, !llvm.loop !1

roothub_portstatus.exit:                          ; preds = %.lr.ph.i, %bb.v, %bb.w
  %.1.i56 = phi i32 [ -1, %bb.v ], [ %i.bs, %bb.w ], [ %i.cc, %.lr.ph.i ]
  store i32 %.1.i56, ptr %4, align 1
  br label %bb.ae

bb.x:                                             ; preds = %bb.b
  %switch = icmp ult i16 %2, 2
  br i1 %switch, label %bb.ae, label %bb.ad

bb.y:                                             ; preds = %bb.b
  %.not48 = icmp eq i16 %3, 0
  %i.ce = zext i16 %3 to i32
  %i.cf = icmp slt i32 %i.c, %i.ce
  %or.cond55 = select i1 %.not48, i1 true, i1 %i.cf
  br i1 %or.cond55, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = add i16 %3, -1                          ; 3 uses
  switch i16 %2, label %bb.ad [
    i16 2, label %bb.aa
    i16 8, label %bb.ab
    i16 4, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %0, i64 592
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %i.ci, i64 84
  %i.ck = zext i16 %i.cg to i64
  %i.cl = getelementptr [4 x i8], ptr %i.cj, i64 %i.ck
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, ptr elementtype(i32) %i.cl) #13, !srcloc !17
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.cm = getelementptr i8, ptr %0, i64 592
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 84
  %i.cp = zext i16 %i.cg to i64
  %i.cq = getelementptr [4 x i8], ptr %i.co, i64 %i.cp
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 256, ptr elementtype(i32) %i.cq) #13, !srcloc !17
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.cr = zext i16 %i.cg to i32
  %i.cs = tail call fastcc i32 @root_port_reset(ptr noundef %i.a, i32 noundef %i.cr) #15, !srcloc !27
  br label %bb.ae

bb.ad:                                            ; preds = %bb.x, %bb.b, %bb.z, %bb.y, %bb.t, %bb.f, %bb.e, %bb.c
  br label %bb.ae

bb.ae:                                            ; preds = %bb.n, %ohci_hub_descriptor.exit, %bb.s, %roothub_portstatus.exit, %bb.ad, %bb.d, %bb.c, %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.a
  %.046 = phi i32 [ -108, %bb.a ], [ -32, %bb.ad ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.n ], [ 0, %ohci_hub_descriptor.exit ], [ 0, %bb.s ], [ 0, %roothub_portstatus.exit ], [ %i.cs, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.aa ], [ 0, %bb.ab ]
  ret i32 %.046
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -108, 1) i32 @root_port_reset(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 65535) %1) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 84
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr [4 x i8], ptr %i.c, i64 %i.d ; 22 uses
  %i.f = getelementptr i8, ptr %i.b, i64 60
  %i.g = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f) #13, !srcloc !15
  %i.h = trunc i32 %i.g to i16
  %invariant.op = sub i16 -50, %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.at, %bb.a
  %.024 = phi i32 [ 5, %bb.a ], [ %i.bx, %bb.at ] ; 2 uses
  %i.i = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.i, 16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.l = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.l, 16
  %.not.1 = icmp eq i32 %i.n, 0
  br i1 %.not.1, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.o = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = and i32 %i.o, 16
  %.not.2 = icmp eq i32 %i.q, 0
  br i1 %.not.2, label %bb.aq, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.r = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = and i32 %i.r, 16
  %.not.3 = icmp eq i32 %i.t, 0
  br i1 %.not.3, label %bb.aq, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.u = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = and i32 %i.u, 16
  %.not.4 = icmp eq i32 %i.w, 0
  br i1 %.not.4, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.x = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = and i32 %i.x, 16
  %.not.5 = icmp eq i32 %i.z, 0
  br i1 %.not.5, label %bb.aq, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.aa = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = and i32 %i.aa, 16
  %.not.6 = icmp eq i32 %i.ac, 0
  br i1 %.not.6, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.ad = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = and i32 %i.ad, 16
  %.not.7 = icmp eq i32 %i.af, 0
  br i1 %.not.7, label %bb.aq, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.ag = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = and i32 %i.ag, 16
  %.not.8 = icmp eq i32 %i.ai, 0
  br i1 %.not.8, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.aj = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = and i32 %i.aj, 16
  %.not.9 = icmp eq i32 %i.al, 0
  br i1 %.not.9, label %bb.aq, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.am = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = and i32 %i.am, 16
  %.not.10 = icmp eq i32 %i.ao, 0
  br i1 %.not.10, label %bb.aq, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.ap = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ar = and i32 %i.ap, 16
  %.not.11 = icmp eq i32 %i.ar, 0
  br i1 %.not.11, label %bb.aq, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.as = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = and i32 %i.as, 16
  %.not.12 = icmp eq i32 %i.au, 0
  br i1 %.not.12, label %bb.aq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.av = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = and i32 %i.av, 16
  %.not.13 = icmp eq i32 %i.ax, 0
  br i1 %.not.13, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.ay = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ba = and i32 %i.ay, 16
  %.not.14 = icmp eq i32 %i.ba, 0
  br i1 %.not.14, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.bb = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bd = and i32 %i.bb, 16
  %.not.15 = icmp eq i32 %i.bd, 0
  br i1 %.not.15, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.be = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bg = and i32 %i.be, 16
  %.not.16 = icmp eq i32 %i.bg, 0
  br i1 %.not.16, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.bh = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = and i32 %i.bh, 16
  %.not.17 = icmp eq i32 %i.bj, 0
  br i1 %.not.17, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.bk = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.bl = icmp eq i32 %i.bk, -1
  br i1 %i.bl, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bm = and i32 %i.bk, 16
  %.not.18 = icmp eq i32 %i.bm, 0
  br i1 %.not.18, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @__const_udelay(i64 noundef 2147500) #12
  %i.bn = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e) #13, !srcloc !15 ; 3 uses
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bp = and i32 %i.bn, 16
  %.not.19 = icmp eq i32 %i.bp, 0
  br i1 %.not.19, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @__const_udelay(i64 noundef 2147500) #12
  br label %.critedge

bb.aq:                                            ; preds = %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.lcssa52 = phi i32 [ %i.i, %bb.c ], [ %i.l, %bb.e ], [ %i.o, %bb.g ], [ %i.r, %bb.i ], [ %i.u, %bb.k ], [ %i.x, %bb.m ], [ %i.aa, %bb.o ], [ %i.ad, %bb.q ], [ %i.ag, %bb.s ], [ %i.aj, %bb.u ], [ %i.am, %bb.w ], [ %i.ap, %bb.y ], [ %i.as, %bb.aa ], [ %i.av, %bb.ac ], [ %i.ay, %bb.ae ], [ %i.bb, %bb.ag ], [ %i.be, %bb.ai ], [ %i.bh, %bb.ak ], [ %i.bk, %bb.am ], [ %i.bn, %bb.ao ] ; 2 uses
  %i.bq = and i32 %.lcssa52, 1
  %.not35 = icmp eq i32 %i.bq, 0
  br i1 %.not35, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.br = and i32 %.lcssa52, 1048576
  %.not36 = icmp eq i32 %i.br, 0
  br i1 %.not36, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1048576, ptr elementtype(i32) %i.e) #13, !srcloc !17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 16, ptr elementtype(i32) %i.e) #13, !srcloc !17
  tail call void @msleep(i32 noundef 10) #12
  %i.bs = load ptr, ptr %i.a, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 60
  %i.bu = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bt) #13, !srcloc !15
  %i.bv = trunc i32 %i.bu to i16
  %.reass.reass = add i16 %i.bv, %invariant.op
  %i.bw = icmp slt i16 %.reass.reass, 0
  %i.bx = add nsw i32 %.024, -1
  %i.by = icmp ne i32 %.024, 0
  %or.cond = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !28

.critedge:                                        ; preds = %bb.aq, %bb.at, %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an, %bb.ap
  %.230 = phi i32 [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.at ], [ -108, %bb.al ], [ -108, %bb.aj ], [ -108, %bb.ah ], [ -108, %bb.af ], [ -108, %bb.ad ], [ -108, %bb.ab ], [ -108, %bb.z ], [ -108, %bb.x ], [ -108, %bb.v ], [ -108, %bb.t ], [ -108, %bb.r ], [ -108, %bb.p ], [ -108, %bb.n ], [ -108, %bb.l ], [ -108, %bb.j ], [ -108, %bb.h ], [ -108, %bb.f ], [ -108, %bb.d ], [ -108, %bb.b ], [ -108, %bb.an ]
  ret i32 %.230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -16, 1) i32 @ohci_setup(ptr noundef initializes((584, 588), (1624, 1632)) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 584        ; 2 uses
  %i.b = load volatile i64, ptr @jiffies, align 64
  %i.c = getelementptr i8, ptr %0, i64 1624
  store i64 %i.b, ptr %i.c, align 8
  store i32 0, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 1448       ; 3 uses
  store volatile ptr %i.d, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 1456
  store volatile ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 1464       ; 3 uses
  store volatile ptr %i.f, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 1472
  store volatile ptr %i.f, ptr %i.g, align 8
  %i.h = tail call fastcc i32 @ohci_init(ptr noundef %i.a) #15, !srcloc !29
  ret i32 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -16, 1) i32 @ohci_init(ptr noundef initializes((8, 16), (896, 900)) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -584       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 -548
  store i32 -1, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i8, ptr @distrust_firmware, align 1, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 1056       ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = or i64 %i.h, 256
  store i64 %i.i, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %0, i64 896        ; 3 uses
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 -240
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 8          ; 10 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = load i8, ptr @no_handshake, align 1, !range !31, !noundef !32
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.l, i64 4
  %i.q = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p) #13, !srcloc !15
  %i.r = and i32 %i.q, 256
  %.not46 = icmp eq i32 %i.r, 0
  %.pre55 = load ptr, ptr %i.m, align 8           ; 2 uses
  br i1 %.not46, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.pre55, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1073741824, ptr elementtype(i32) %i.s) #13, !srcloc !17
  %i.t = load ptr, ptr %i.m, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 8, ptr elementtype(i32) %i.u) #13, !srcloc !17
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.042 = phi i32 [ 500, %bb.g ], [ %i.z, %bb.i ]
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.w) #13, !srcloc !15
  %i.y = and i32 %i.x, 256
  %.not47 = icmp eq i32 %i.y, 0
  br i1 %.not47, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @msleep(i32 noundef 10) #12
  %i.z = add nsw i32 %.042, -1                    ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.h, !llvm.loop !30

.thread:                                          ; preds = %bb.h
  %i.ab = load ptr, ptr %i.m, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %i.ad = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ac) #13, !srcloc !15
  %i.ae = getelementptr i8, ptr %0, i64 1032
  %i.af = and i32 %i.ad, 512                      ; 2 uses
  store i32 %i.af, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.m, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.af, ptr elementtype(i32) %i.ah) #13, !srcloc !17
  store i32 0, ptr %i.j, align 8
  %.pre = load ptr, ptr %i.m, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ai, ptr noundef nonnull @.str.2) #14
  br label %bb.aa

bb.k:                                             ; preds = %.thread, %bb.f, %bb.e
  %i.aj = phi ptr [ %.pre, %.thread ], [ %.pre55, %bb.f ], [ %i.l, %bb.e ]
  %i.ak = getelementptr i8, ptr %i.aj, i64 20
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 -2147483648, ptr elementtype(i32) %i.ak) #13, !srcloc !17
  %i.al = load ptr, ptr %i.m, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.am) #13, !srcloc !15
  %i.ao = and i32 %i.an, 512
  %.not48 = icmp eq i32 %i.ao, 0
  br i1 %.not48, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %0, i64 1032      ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = or i32 %i.aq, 512
  store i32 %i.ar, ptr %i.ap, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = getelementptr i8, ptr %0, i64 900       ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.m, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 72
  %i.ax = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.aw) #13, !srcloc !15 ; 3 uses
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.j, align 8
  br label %roothub_a.exit

bb.p:                                             ; preds = %bb.n
  %i.az = getelementptr i8, ptr %0, i64 1056
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, 1
  %.not.i = icmp eq i64 %i.bb, 0
  %i.bc = and i32 %i.ax, -66068480
  %.not1112.i = icmp eq i32 %i.bc, 0
  %or.cond.i = or i1 %.not1112.i, %.not.i
  br i1 %or.cond.i, label %roothub_a.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %i.bd = load ptr, ptr %i.m, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 72
  %i.bf = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.be) #13, !srcloc !15 ; 2 uses
  %i.bg = and i32 %i.bf, -66068480
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %roothub_a.exit, label %.lr.ph.i, !llvm.loop !0

roothub_a.exit:                                   ; preds = %.lr.ph.i, %bb.o, %bb.p
  %.1.i = phi i32 [ -1, %bb.o ], [ %i.ax, %bb.p ], [ %i.bf, %.lr.ph.i ]
  %i.bh = and i32 %.1.i, 255
  store i32 %i.bh, ptr %i.as, align 4
  br label %bb.q

bb.q:                                             ; preds = %roothub_a.exit, %bb.m
  %i.bi = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %.not49 = icmp eq ptr %i.bj, null
  br i1 %.not49, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr i8, ptr %0, i64 1080
  tail call void @timer_init_key(ptr noundef %i.bk, ptr noundef nonnull @io_watchdog_func, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %i.bl = getelementptr i8, ptr %0, i64 1064
  store i32 -256, ptr %i.bl, align 8
  %i.bm = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not50 = icmp eq ptr %i.bm, null
  br i1 %.not50, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr i8, ptr %0, i64 24
  %i.bo = tail call ptr @gen_pool_dma_alloc_align(ptr noundef nonnull %i.bm, i64 noundef 256, ptr noundef %i.bn, i32 noundef 256) #12
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = getelementptr i8, ptr %0, i64 24
  %i.br = tail call ptr @dma_alloc_attrs(ptr noundef %i.bp, i64 noundef 256, ptr noundef %i.bq, i32 noundef 3264, i64 noundef 0) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %storemerge = phi ptr [ %i.br, %bb.t ], [ %i.bo, %bb.s ] ; 2 uses
  store ptr %storemerge, ptr %i.bi, align 8
  %.not51 = icmp eq ptr %storemerge, null
  br i1 %.not51, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %i.b, align 8
  %.not.i52 = icmp eq ptr %i.bs, null
  br i1 %.not.i52, label %bb.w, label %ohci_mem_init.exit

bb.w:                                             ; preds = %bb.v
  %i.bt = load ptr, ptr %i.a, align 8
  %i.bu = tail call ptr @dma_pool_create_node(ptr noundef nonnull @.str.75, ptr noundef %i.bt, i64 noundef 96, i64 noundef 32, i64 noundef 0, i32 noundef -1) #12 ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 320       ; 2 uses
  store ptr %i.bu, ptr %i.bv, align 8
  %.not8.i = icmp eq ptr %i.bu, null
  br i1 %.not8.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = tail call ptr @dma_pool_create_node(ptr noundef nonnull @.str.76, ptr noundef %i.bw, i64 noundef 112, i64 noundef 16, i64 noundef 0, i32 noundef -1) #12 ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 328
  store ptr %i.bx, ptr %i.by, align 8
  %.not9.i = icmp eq ptr %i.bx, null
  br i1 %.not9.i, label %bb.y, label %ohci_mem_init.exit

bb.y:                                             ; preds = %bb.x
  %i.bz = load ptr, ptr %i.bv, align 8
  tail call void @dma_pool_destroy(ptr noundef %i.bz) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  tail call void @ohci_stop(ptr noundef %i.a) #15, !srcloc !33
  br label %bb.aa

ohci_mem_init.exit:                               ; preds = %bb.x, %bb.v
  %i.ca = getelementptr i8, ptr %0, i64 -560
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = load ptr, ptr @ohci_debug_root, align 8
  %i.cd = tail call ptr @debugfs_create_dir(ptr noundef %i.cb, ptr noundef %i.cc) #12 ; 4 uses
  %i.ce = getelementptr i8, ptr %0, i64 1152
  store ptr %i.cd, ptr %i.ce, align 8
  %i.cf = tail call ptr @debugfs_create_file_full(ptr noundef nonnull @.str.77, i16 noundef zeroext 292, ptr noundef %i.cd, ptr noundef %0, ptr noundef null, ptr noundef nonnull @debug_async_fops) #12 ; 0 uses
  %i.cg = tail call ptr @debugfs_create_file_full(ptr noundef nonnull @.str.78, i16 noundef zeroext 292, ptr noundef %i.cd, ptr noundef %0, ptr noundef null, ptr noundef nonnull @debug_periodic_fops) #12 ; 0 uses
  %i.ch = tail call ptr @debugfs_create_file_full(ptr noundef nonnull @.str.79, i16 noundef zeroext 292, ptr noundef %i.cd, ptr noundef %0, ptr noundef null, ptr noundef nonnull @debug_registers_fops) #12 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.j, %bb.z, %ohci_mem_init.exit, %bb.u, %bb.q
  %.1 = phi i32 [ -16, %bb.j ], [ -12, %bb.u ], [ 0, %bb.q ], [ 0, %ohci_mem_init.exit ], [ -12, %bb.z ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -75, 1) i32 @ohci_restart(ptr noundef initializes((8, 16), (896, 900)) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i32 @ohci_init(ptr noundef %0) #15, !srcloc !35 ; 0 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #12
  %i.b = getelementptr i8, ptr %0, i64 896
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 864        ; 3 uses
  %.pn48 = load volatile ptr, ptr %i.c, align 8   ; 2 uses
  %.not49 = icmp eq ptr %.pn48, %i.c
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.pn50 = phi ptr [ %.pn48, %.lr.ph ], [ %.pn, %bb.f ] ; 3 uses
  %.045 = getelementptr i8, ptr %.pn50, i64 -16
  %i.e = getelementptr i8, ptr %.pn50, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = load ptr, ptr %.045, align 8             ; 7 uses
  %i.j = getelementptr i8, ptr %i.i, i64 80       ; 2 uses
  %i.k = load i8, ptr %i.j, align 16
  %cond = icmp eq i8 %i.k, 2
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.j, align 16
  %i.l = load i32, ptr %i.i, align 16
  %i.m = or i32 %i.l, 134217728
  store i32 %i.m, ptr %i.i, align 16
  tail call fastcc void @ed_deschedule(ptr noundef %0, ptr noundef %i.i) #15, !srcloc !36
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = getelementptr i8, ptr %i.i, i64 32
  store ptr %i.n, ptr %i.o, align 16
  %i.p = getelementptr i8, ptr %i.i, i64 40
  store ptr null, ptr %i.p, align 8
  store ptr %i.i, ptr %i.d, align 8
  br label %bb.d
end_hunk_0
begin_hunk_1_@ohci_work:bb.a
bb.d:                                             ; preds = %finish_unlinks.exit, %bb.c
  %storemerge = phi i8 [ %i.e, %bb.c ], [ %i.my, %finish_unlinks.exit ]
  store i8 %storemerge, ptr %i.a, align 4
  %i.p = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.p, null
  br i1 %.not10.i, label %process_done_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %takeback_td.exit.i
  %i.q = phi ptr [ %i.eb, %takeback_td.exit.i ], [ %i.p, %bb.d ] ; 14 uses
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %i.g, align 8
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr i8, ptr %i.q, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge.i = phi ptr [ %i.u, %bb.f ], [ null, %bb.e ]
  store ptr %storemerge.i, ptr %i.f, align 8
  %i.v = getelementptr i8, ptr %i.q, i64 48
  %i.w = load ptr, ptr %i.v, align 16             ; 9 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.q, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 12 uses
  %.val67.i = load i32, ptr %i.q, align 16        ; 3 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 72      ; 2 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 80      ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 16           ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  store volatile ptr %i.ae, ptr %i.ad, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.ab, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ac, align 16
  %i.ag = and i32 %.val67.i, 65536
  %.not.i16 = icmp eq i32 %i.ag, 0
  br i1 %.not.i16, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.q, i64 16
  %.val68.i = load i16, ptr %i.ah, align 16
  %i.ai = zext i16 %.val68.i to i32               ; 2 uses
  %i.aj = lshr i32 %i.ai, 12                      ; 3 uses
  %.not64.i = icmp ult i32 %.val67.i, 268435456
  br i1 %.not64.i, label %bb.i, label %td_done.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.w, i64 80
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, 128
  %.not65.i = icmp eq i32 %i.am, 0
  br i1 %.not65.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %i.q, i64 20
  %i.ao = load i8, ptr %i.an, align 4
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr [16 x i8], ptr %i.w, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 196
  %i.as = load i32, ptr %i.ar, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.at = icmp eq i32 %i.aj, 9
  %spec.store.select.i = select i1 %i.at, i32 0, i32 %i.aj
  %i.au = and i32 %i.ai, 1023
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.056.i = phi i32 [ %spec.store.select.i, %bb.k ], [ %i.aj, %bb.j ]
  %.054.i = phi i32 [ %i.au, %bb.k ], [ %i.as, %bb.j ] ; 2 uses
  %i.av = getelementptr i8, ptr %i.w, i64 140     ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.aw, %.054.i
  store i32 %i.ax, ptr %i.av, align 4
  %i.ay = getelementptr i8, ptr %i.w, i64 192     ; 2 uses
  %i.az = getelementptr i8, ptr %i.q, i64 20      ; 2 uses
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr [16 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  store i32 %.054.i, ptr %i.bd, align 8
  %i.be = zext nneg i32 %.056.i to i64
  %i.bf = getelementptr [4 x i8], ptr @cc_to_error, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = load i8, ptr %i.az, align 4
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr [16 x i8], ptr %i.ay, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 12
  store i32 %i.bg, ptr %i.bk, align 4
  br label %td_done.exit

bb.m:                                             ; preds = %bb.g
  %i.bl = getelementptr i8, ptr %i.w, i64 80
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.q, i64 12
  %.val66.i = load i32, ptr %i.bn, align 4        ; 3 uses
  %i.bo = lshr i32 %.val67.i, 28                  ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 9
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr i8, ptr %i.w, i64 92
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = and i32 %i.br, 1
  %.not62.i = icmp eq i32 %i.bs, 0
  %spec.select.i17 = select i1 %.not62.i, i32 0, i32 9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.157.i = phi i32 [ %spec.select.i17, %bb.n ], [ %i.bo, %bb.m ] ; 2 uses
  %i.bt = add nsw i32 %.157.i, -1
  %or.cond.i = icmp ult i32 %i.bt, 13
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = zext nneg i32 %.157.i to i64
  %i.bv = getelementptr [4 x i8], ptr @cc_to_error, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.055.i = phi i32 [ %i.bw, %bb.p ], [ -115, %bb.o ] ; 4 uses
  %.not63.i = icmp slt i32 %i.bm, -1073741824
  br i1 %.not63.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr i8, ptr %i.q, i64 20
  %i.by = load i8, ptr %i.bx, align 4
  %i.bz = icmp ne i8 %i.by, 0
  %i.ca = icmp ne i32 %.val66.i, 0
  %or.cond3.i = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond3.i, label %bb.t, label %td_done.exit

bb.s:                                             ; preds = %bb.q
  %.old2.not.i = icmp eq i32 %.val66.i, 0
  br i1 %.old2.not.i, label %td_done.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cb = getelementptr i8, ptr %i.q, i64 4
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = getelementptr i8, ptr %i.q, i64 64
  %i.cf = load i64, ptr %i.ce, align 32
  %i.cg = getelementptr i8, ptr %i.w, i64 140     ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ci = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cj = add i32 %.val66.i, 1
  %i.ck = sub i32 %i.cj, %i.ci
  %i.cl = add i32 %i.ck, %i.ch
  store i32 %i.cl, ptr %i.cg, align 4
  br label %td_done.exit

bb.v:                                             ; preds = %bb.t
  %i.cm = sub i32 %i.cc, %i.ci
  %i.cn = add i32 %i.cm, %i.ch
  store i32 %i.cn, ptr %i.cg, align 4
  br label %td_done.exit

td_done.exit:                                     ; preds = %bb.h, %bb.l, %bb.r, %bb.s, %bb.u, %bb.v
  %.159.i = phi i32 [ %.055.i, %bb.r ], [ -115, %bb.h ], [ -115, %bb.l ], [ %.055.i, %bb.u ], [ %.055.i, %bb.v ], [ %.055.i, %bb.s ]
  %i.co = getelementptr i8, ptr %i.y, i64 10      ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = add i16 %i.cp, 1                        ; 2 uses
  store i16 %i.cq, ptr %i.co, align 2
  %i.cr = getelementptr i8, ptr %i.y, i64 8
  %i.cs = load i16, ptr %i.cr, align 8
  %.not.i.i = icmp ult i16 %i.cq, %i.cs
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %td_done.exit
  tail call fastcc void @finish_urb(ptr noundef %0, ptr noundef %i.w, i32 noundef %.159.i) #15, !srcloc !47
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %td_done.exit
  %i.ct = getelementptr i8, ptr %i.aa, i64 48     ; 2 uses
  %i.cu = load volatile ptr, ptr %i.ct, align 8   ; 2 uses
  %.not32.i.i = icmp eq ptr %i.cu, %i.ct
  br i1 %.not32.i.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr i8, ptr %i.aa, i64 80
  %i.cw = load i8, ptr %i.cv, align 16
  %i.cx = icmp eq i8 %i.cw, 2
  br i1 %i.cx, label %bb.z, label %takeback_td.exit.i

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %i.aa, align 16
  %i.cz = or i32 %i.cy, 134217728
  store i32 %i.cz, ptr %i.aa, align 16
  tail call fastcc void @ed_deschedule(ptr noundef %0, ptr noundef %i.aa) #15, !srcloc !21
  %i.da = load ptr, ptr %i.i, align 8
  %i.db = getelementptr i8, ptr %i.aa, i64 32
  store ptr %i.da, ptr %i.db, align 16
  %i.dc = getelementptr i8, ptr %i.aa, i64 40
  store ptr null, ptr %i.dc, align 8
  store ptr %i.aa, ptr %i.i, align 8
  %i.dd = load ptr, ptr %i.h, align 8
  %i.de = getelementptr i8, ptr %i.dd, i64 12
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, ptr elementtype(i32) %i.de) #13, !srcloc !17
  %i.df = load ptr, ptr %i.h, align 8
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, ptr elementtype(i32) %i.dg) #13, !srcloc !17
  %i.dh = load ptr, ptr %i.h, align 8
  %i.di = getelementptr i8, ptr %i.dh, i64 4
  %i.dj = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.di) #13, !srcloc !15 ; 0 uses
  %.val.i.i.i = load ptr, ptr %i.j, align 8
  %i.dk = getelementptr i8, ptr %.val.i.i.i, i64 128
  %.val.val.i.i.i = load i32, ptr %i.dk, align 4
  %i.dl = trunc i32 %.val.val.i.i.i to i16
  %i.dm = add i16 %i.dl, 1
  %i.dn = getelementptr i8, ptr %i.aa, i64 90
  store i16 %i.dm, ptr %i.dn, align 2
  br label %takeback_td.exit.i

bb.aa:                                            ; preds = %bb.x
  %i.do = load i32, ptr %i.aa, align 16           ; 2 uses
  %i.dp = and i32 %i.do, 134234112
  %i.dq = icmp eq i32 %i.dp, 16384
  br i1 %i.dq, label %bb.ab, label %takeback_td.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr i8, ptr %i.cu, i64 -72
  %i.ds = load i32, ptr %i.dr, align 32
  %i.dt = and i32 %i.ds, 131072
  %.not31.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not31.i.i, label %bb.ac, label %takeback_td.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.du = and i32 %i.do, -134234113
  store i32 %i.du, ptr %i.aa, align 16
  %i.dv = getelementptr i8, ptr %i.aa, i64 81
  %i.dw = load i8, ptr %i.dv, align 1
  switch i8 %i.dw, label %takeback_td.exit.i [
    i8 2, label %bb.ad
    i8 3, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load ptr, ptr %i.h, align 8
  %i.dy = getelementptr i8, ptr %i.dx, i64 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 2, ptr elementtype(i32) %i.dy) #13, !srcloc !17
  br label %takeback_td.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.dz = load ptr, ptr %i.h, align 8
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, ptr elementtype(i32) %i.ea) #13, !srcloc !17
  br label %takeback_td.exit.i

takeback_td.exit.i:                               ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.eb = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.eb, null
  br i1 %.not.i, label %process_done_list.exit, label %.lr.ph.i, !llvm.loop !42

process_done_list.exit:                           ; preds = %takeback_td.exit.i, %bb.d
  %i.ec = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not9 = icmp eq ptr %i.ec, null
  br i1 %.not9, label %finish_unlinks.exit, label %.lr.ph.lr.ph.preheader

.lr.ph.lr.ph.preheader:                           ; preds = %process_done_list.exit
  %.val147.i = load ptr, ptr %i.j, align 8
  %i.ed = getelementptr i8, ptr %.val147.i, i64 128
  %.val147.val.i = load i32, ptr %i.ed, align 4
  %i.ee = trunc i32 %.val147.val.i to i16
  %i.ef = load i32, ptr %i.k, align 8
  br label %.lr.ph

.loopexit.i.loopexit:                             ; preds = %.split199.i, %.split200.i
  %.0109.i4145.pre = load ptr, ptr %i.i, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %select.unfold153.i, %.loopexit.i.loopexit
  %.0109.i4145 = phi ptr [ %.0109.i4145.pre, %.loopexit.i.loopexit ], [ %.0109.i43, %select.unfold153.i ] ; 2 uses
  %.not.i124246 = icmp eq ptr %.0109.i4145, null
  %i.eg = load i32, ptr %i.k, align 8             ; 2 uses
  br i1 %.not.i124246, label %.outer.i._crit_edge, label %.lr.ph.backedge

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph.preheader
  %i.eh = phi i32 [ %i.ef, %.lr.ph.lr.ph.preheader ], [ %.be, %.lr.ph.backedge ]
  %.0109.i4148 = phi ptr [ %i.ec, %.lr.ph.lr.ph.preheader ], [ %.0109.i4148.be, %.lr.ph.backedge ]
  %.0110.ph.i47 = phi ptr [ %i.i, %.lr.ph.lr.ph.preheader ], [ %.0110.ph.i47.be, %.lr.ph.backedge ] ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %.backedge.i
  %i.ei = phi i32 [ %i.eh, %.lr.ph ], [ %i.lp, %.backedge.i ] ; 2 uses
  %.0109.i43 = phi ptr [ %.0109.i4148, %.lr.ph ], [ %.0109.i, %.backedge.i ] ; 15 uses
  %i.ej = icmp ne i32 %i.ei, 2                    ; 2 uses
  br i1 %i.ej, label %bb.ah, label %bb.ag, !prof !20

bb.ag:                                            ; preds = %bb.af
  %i.ek = getelementptr i8, ptr %.0109.i43, i64 90
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = sub i16 %i.ee, %i.el
  %i.en = icmp slt i16 %i.em, 0
  br i1 %i.en, label %.thread.i, label %bb.ah

.thread.i:                                        ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.eo = getelementptr i8, ptr %.0109.i43, i64 32
  br label %.outer.backedge.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ep = getelementptr i8, ptr %.0109.i43, i64 48 ; 13 uses
  %i.eq = load volatile ptr, ptr %i.ep, align 8   ; 3 uses
  %.not163.i = icmp eq ptr %i.eq, %i.ep
  %.phi.trans.insert.i = getelementptr i8, ptr %.0109.i43, i64 8 ; 9 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  br i1 %.not163.i, label %._crit_edge177.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = and i32 %.pre.i, -32
  %i.es = getelementptr i8, ptr %i.eq, i64 -16
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = zext i32 %i.er to i64
  %.not137.i = icmp eq i64 %i.et, %i.eu
  %brmerge.i = or i1 %i.ej, %.not137.i
  br i1 %brmerge.i, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %bb.ai
  %i.ev = getelementptr i8, ptr %i.eq, i64 -32
  %i.ew = load ptr, ptr %i.ev, align 8
  %.not138.i = icmp eq ptr %i.ew, null
  br i1 %.not138.i, label %._crit_edge177.i, label %.thread.i

._crit_edge177.i:                                 ; preds = %bb.aj, %bb.ah
  %i.ex = and i32 %.pre.i, -2
  store i32 %i.ex, ptr %.phi.trans.insert.i, align 8
  %i.ey = getelementptr i8, ptr %.0109.i43, i64 12
  store i32 0, ptr %i.ey, align 4
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !48
  %i.ez = load i32, ptr %.0109.i43, align 16
  %i.fa = and i32 %i.ez, -134234113
  store i32 %i.fa, ptr %.0109.i43, align 16
  %i.fb = getelementptr i8, ptr %.0109.i43, i64 32 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 16
  store ptr %i.fc, ptr %.0110.ph.i47, align 8
  store ptr null, ptr %i.fb, align 16
  %i.fd = load ptr, ptr %i.ep, align 16           ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ep
  br i1 %i.fe, label %.split176.us.i, label %.split.i

.split.i:                                         ; preds = %._crit_edge177.i, %._crit_edge.thread195.i
  %i.ff = phi ptr [ %i.lg, %._crit_edge.thread195.i ], [ %i.fd, %._crit_edge177.i ] ; 2 uses
  %.0117.i = phi i32 [ %.3194198.i, %._crit_edge.thread195.i ], [ 0, %._crit_edge177.i ] ; 2 uses
  %.not164168.i = icmp eq ptr %i.ff, %i.ep
  br i1 %.not164168.i, label %.split176.us.loopexit.i, label %.lr.ph.outer.i.outer

.lr.ph.outer.i.outer:                             ; preds = %.split.i, %.loopexit201.i
  %.0112172.ph.i.ph = phi ptr [ %.0123173.i60, %.loopexit201.i ], [ %i.ff, %.split.i ]
  %.0115171.ph.i.ph = phi ptr [ %.1116.i, %.loopexit201.i ], [ %.phi.trans.insert.i, %.split.i ] ; 5 uses
  %.1118170.ph.i.ph = phi i32 [ %.1118170.i66, %.loopexit201.i ], [ %.0117.i, %.split.i ]
  %.0120169.ph.i.ph = phi i32 [ %.0120169.i63, %.loopexit201.i ], [ 0, %.split.i ]
  br label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %.lr.ph.outer.i.outer, %.loopexit201.i.thread
  %.0112172.ph.i = phi ptr [ %.0123173.i, %.loopexit201.i.thread ], [ %.0112172.ph.i.ph, %.lr.ph.outer.i.outer ] ; 15 uses
  %.1118170.ph.i = phi i32 [ 1, %.loopexit201.i.thread ], [ %.1118170.ph.i.ph, %.lr.ph.outer.i.outer ] ; 2 uses
  %.0120169.ph.i = phi i32 [ 1, %.loopexit201.i.thread ], [ %.0120169.ph.i.ph, %.lr.ph.outer.i.outer ] ; 2 uses
  %.0123173.i.peel = load ptr, ptr %.0112172.ph.i, align 8 ; 4 uses
  %i.fg = getelementptr i8, ptr %.0112172.ph.i, i64 -72 ; 2 uses
  %i.fh = getelementptr i8, ptr %.0112172.ph.i, i64 -24
  %i.fi = load ptr, ptr %i.fh, align 16           ; 9 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fi, i64 4
  %i.fm = load i32, ptr %i.fl, align 4
  %.not144.i.peel = icmp eq i32 %i.fm, 0
  br i1 %.not144.i.peel, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.outer.i
  %i.fn = load i32, ptr %.0115171.ph.i.ph, align 4
  %i.fo = and i32 %i.fn, 31
  %i.fp = getelementptr i8, ptr %.0112172.ph.i, i64 -64
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = or i32 %i.fq, %i.fo
  store i32 %i.fr, ptr %.0115171.ph.i.ph, align 4
  %.val.i.peel = load i32, ptr %i.fg, align 8     ; 2 uses
  %i.fs = and i32 %.val.i.peel, 50331648
  switch i32 %i.fs, label %bb.an [
    i32 33554432, label %bb.am
    i32 50331648, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ft = load i32, ptr %.phi.trans.insert.i, align 8
  %i.fu = or i32 %i.ft, 2
  br label %thread-pre-split.i.peel

bb.am:                                            ; preds = %bb.ak
  %i.fv = load i32, ptr %.phi.trans.insert.i, align 8
  %i.fw = and i32 %i.fv, -3
end_hunk_1
begin_hunk_2_@fill_registers_buffer:bb.a
  %i.hr = getelementptr i8, ptr %i.b, i64 1056    ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = and i64 %i.hs, 1
  %.not.i.i = icmp eq i64 %i.ht, 0
  %i.hu = and i32 %i.hp, -66068480
  %.not1112.i.i = icmp eq i32 %i.hu, 0
  %or.cond.i.i = or i1 %.not1112.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %.loopexit107.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %i.hv = load ptr, ptr %i.d, align 8
  %i.hw = getelementptr i8, ptr %i.hv, i64 72
  %i.hx = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hw) #13, !srcloc !15 ; 2 uses
  %i.hy = and i32 %i.hx, -66068480
  %.not11.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not11.i.i, label %.loopexit107.i, label %.lr.ph.i.i, !llvm.loop !0

roothub_a.exit.i:                                 ; preds = %bb.r
  store i32 0, ptr %i.ag, align 8
  br label %ohci_dump_roothub.exit

.loopexit107.i:                                   ; preds = %.lr.ph.i.i, %bb.s
  %.1.i.ph.i = phi i32 [ %i.hp, %bb.s ], [ %i.hx, %.lr.ph.i.i ] ; 8 uses
  %i.hz = zext i32 %i.hk to i64
  %i.ia = lshr i32 %.1.i.ph.i, 24
  %i.ib = and i32 %.1.i.ph.i, 4096
  %.not72.i = icmp eq i32 %i.ib, 0
  %i.ic = select i1 %.not72.i, ptr @.str.10, ptr @.str.50
  %i.id = and i32 %.1.i.ph.i, 2048
  %.not73.i = icmp eq i32 %i.id, 0
  %i.ie = select i1 %.not73.i, ptr @.str.10, ptr @.str.51
  %i.if = and i32 %.1.i.ph.i, 1024
  %.not74.i = icmp eq i32 %i.if, 0
  %i.ig = select i1 %.not74.i, ptr @.str.10, ptr @.str.52
  %i.ih = and i32 %.1.i.ph.i, 512
  %.not75.i = icmp eq i32 %i.ih, 0
  %i.ii = select i1 %.not75.i, ptr @.str.10, ptr @.str.53
  %i.ij = and i32 %.1.i.ph.i, 256
  %.not76.i = icmp eq i32 %i.ij, 0
  %i.ik = select i1 %.not76.i, ptr @.str.10, ptr @.str.54
  %i.il = and i32 %.1.i.ph.i, 255
  %i.im = getelementptr i8, ptr %i.b, i64 900     ; 3 uses
  %i.in = load i32, ptr %i.im, align 4
  %i.io = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.hm, i64 noundef %i.hz, ptr noundef nonnull @.str.49, i32 noundef %.1.i.ph.i, i32 noundef %i.ia, ptr noundef nonnull %i.ic, ptr noundef nonnull %i.ie, ptr noundef nonnull %i.ig, ptr noundef nonnull %i.ii, ptr noundef nonnull %i.ik, i32 noundef %i.il, i32 noundef %i.in) #12 ; 2 uses
  %i.ip = sub i32 %i.hk, %i.io                    ; 2 uses
  %i.iq = zext i32 %i.io to i64
  %i.ir = getelementptr i8, ptr %i.hm, i64 %i.iq  ; 2 uses
  %.val99.i = load ptr, ptr %i.d, align 8
  %i.is = getelementptr i8, ptr %.val99.i, i64 76
  %i.it = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.is) #13, !srcloc !15 ; 3 uses
  %i.iu = zext i32 %i.ip to i64
  %i.iv = lshr i32 %i.it, 16
  %i.iw = and i32 %i.it, 65535
  %i.ix = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ir, i64 noundef %i.iu, ptr noundef nonnull @.str.55, i32 noundef %i.it, i32 noundef %i.iv, i32 noundef %i.iw) #12 ; 2 uses
  %i.iy = sub i32 %i.ip, %i.ix                    ; 2 uses
  %i.iz = zext i32 %i.ix to i64
  %i.ja = getelementptr i8, ptr %i.ir, i64 %i.iz  ; 2 uses
  %.val.i53 = load ptr, ptr %i.d, align 8
  %i.jb = getelementptr i8, ptr %.val.i53, i64 80
  %i.jc = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.jb) #13, !srcloc !15 ; 7 uses
  %i.jd = zext i32 %i.iy to i64
  %.not77.i = icmp sgt i32 %i.jc, -1
  %i.je = select i1 %.not77.i, ptr @.str.10, ptr @.str.57
  %i.jf = and i32 %i.jc, 131072
  %.not78.i = icmp eq i32 %i.jf, 0
  %i.jg = select i1 %.not78.i, ptr @.str.10, ptr @.str.58
  %i.jh = and i32 %i.jc, 65536
  %.not79.i = icmp eq i32 %i.jh, 0
  %i.ji = select i1 %.not79.i, ptr @.str.10, ptr @.str.59
  %i.jj = and i32 %i.jc, 32768
  %.not80.i = icmp eq i32 %i.jj, 0
  %i.jk = select i1 %.not80.i, ptr @.str.10, ptr @.str.60
  %i.jl = and i32 %i.jc, 2
  %.not81.i = icmp eq i32 %i.jl, 0
  %i.jm = select i1 %.not81.i, ptr @.str.10, ptr @.str.61
  %i.jn = and i32 %i.jc, 1
  %.not82.i = icmp eq i32 %i.jn, 0
  %i.jo = select i1 %.not82.i, ptr @.str.10, ptr @.str.62
  %i.jp = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ja, i64 noundef %i.jd, ptr noundef nonnull @.str.56, i32 noundef %i.jc, ptr noundef nonnull %i.je, ptr noundef nonnull %i.jg, ptr noundef nonnull %i.ji, ptr noundef nonnull %i.jk, ptr noundef nonnull %i.jm, ptr noundef nonnull %i.jo) #12 ; 2 uses
  %i.jq = sub i32 %i.iy, %i.jp                    ; 2 uses
  %i.jr = load i32, ptr %i.im, align 4
  %.not110119.i = icmp eq i32 %i.jr, 0
  br i1 %.not110119.i, label %ohci_dump_roothub.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.loopexit107.i
  %i.js = zext i32 %i.jp to i64
  %i.jt = getelementptr i8, ptr %i.ja, i64 %i.js
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %roothub_portstatus.exit.i
  %.8 = phi i32 [ %i.li, %roothub_portstatus.exit.i ], [ %i.jq, %.lr.ph.split.i.preheader ] ; 2 uses
  %.7 = phi ptr [ %i.lk, %roothub_portstatus.exit.i ], [ %i.jt, %.lr.ph.split.i.preheader ] ; 2 uses
  %.0109.i = phi i32 [ %i.ll, %roothub_portstatus.exit.i ], [ 0, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.ju = load ptr, ptr %i.d, align 8
  %i.jv = getelementptr i8, ptr %i.ju, i64 84
  %i.jw = sext i32 %.0109.i to i64                ; 2 uses
  %i.jx = getelementptr [4 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.jx) #13, !srcloc !15 ; 3 uses
  %i.jz = icmp eq i32 %i.jy, -1
  br i1 %i.jz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i
  store i32 0, ptr %i.ag, align 8
  br label %roothub_portstatus.exit.i

bb.u:                                             ; preds = %.lr.ph.split.i
  %i.ka = load i64, ptr %i.hr, align 8
  %i.kb = and i64 %i.ka, 1
  %.not.i100.i = icmp eq i64 %i.kb, 0
  %i.kc = and i32 %i.jy, -2032416
  %.not1314.i.i = icmp eq i32 %i.kc, 0
  %or.cond.i101.i = or i1 %.not1314.i.i, %.not.i100.i
  br i1 %or.cond.i101.i, label %roothub_portstatus.exit.i, label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %bb.u, %.lr.ph.i102.i
  %i.kd = load ptr, ptr %i.d, align 8
  %i.ke = getelementptr i8, ptr %i.kd, i64 84
  %i.kf = getelementptr [4 x i8], ptr %i.ke, i64 %i.jw
  %i.kg = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.kf) #13, !srcloc !15 ; 2 uses
  %i.kh = and i32 %i.kg, -2032416
  %.not13.i.i = icmp eq i32 %i.kh, 0
  br i1 %.not13.i.i, label %roothub_portstatus.exit.i, label %.lr.ph.i102.i, !llvm.loop !1

roothub_portstatus.exit.i:                        ; preds = %.lr.ph.i102.i, %bb.u, %bb.t
  %.1.i103.i = phi i32 [ -1, %bb.t ], [ %i.jy, %bb.u ], [ %i.kg, %.lr.ph.i102.i ] ; 13 uses
  %i.ki = zext i32 %.8 to i64
  %i.kj = and i32 %.1.i103.i, 1048576
  %.not84.i = icmp eq i32 %i.kj, 0
  %i.kk = select i1 %.not84.i, ptr @.str.10, ptr @.str.64
  %i.kl = and i32 %.1.i103.i, 524288
  %.not85.i = icmp eq i32 %i.kl, 0
  %i.km = select i1 %.not85.i, ptr @.str.10, ptr @.str.58
  %i.kn = and i32 %.1.i103.i, 262144
  %.not86.i = icmp eq i32 %i.kn, 0
  %i.ko = select i1 %.not86.i, ptr @.str.10, ptr @.str.65
  %i.kp = and i32 %.1.i103.i, 131072
  %.not87.i = icmp eq i32 %i.kp, 0
  %i.kq = select i1 %.not87.i, ptr @.str.10, ptr @.str.66
  %i.kr = and i32 %.1.i103.i, 65536
  %.not88.i54 = icmp eq i32 %i.kr, 0
  %i.ks = select i1 %.not88.i54, ptr @.str.10, ptr @.str.67
  %i.kt = and i32 %.1.i103.i, 512
  %.not89.i55 = icmp eq i32 %i.kt, 0
  %i.ku = select i1 %.not89.i55, ptr @.str.10, ptr @.str.68
  %i.kv = and i32 %.1.i103.i, 256
  %.not90.i56 = icmp eq i32 %i.kv, 0
  %i.kw = select i1 %.not90.i56, ptr @.str.10, ptr @.str.69
  %i.kx = and i32 %.1.i103.i, 16
  %.not91.i57 = icmp eq i32 %i.kx, 0
  %i.ky = select i1 %.not91.i57, ptr @.str.10, ptr @.str.70
  %i.kz = and i32 %.1.i103.i, 8
  %.not92.i58 = icmp eq i32 %i.kz, 0
  %i.la = select i1 %.not92.i58, ptr @.str.10, ptr @.str.71
  %i.lb = and i32 %.1.i103.i, 4
  %.not93.i59 = icmp eq i32 %i.lb, 0
  %i.lc = select i1 %.not93.i59, ptr @.str.10, ptr @.str.72
  %i.ld = and i32 %.1.i103.i, 2
  %.not94.i60 = icmp eq i32 %i.ld, 0
  %i.le = select i1 %.not94.i60, ptr @.str.10, ptr @.str.73
  %i.lf = and i32 %.1.i103.i, 1
  %.not95.i61 = icmp eq i32 %i.lf, 0
  %i.lg = select i1 %.not95.i61, ptr @.str.10, ptr @.str.74
  %i.lh = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %.7, i64 noundef %i.ki, ptr noundef nonnull @.str.63, i32 noundef %.0109.i, i32 noundef %.1.i103.i, ptr noundef nonnull %i.kk, ptr noundef nonnull %i.km, ptr noundef nonnull %i.ko, ptr noundef nonnull %i.kq, ptr noundef nonnull %i.ks, ptr noundef nonnull %i.ku, ptr noundef nonnull %i.kw, ptr noundef nonnull %i.ky, ptr noundef nonnull %i.la, ptr noundef nonnull %i.lc, ptr noundef nonnull %i.le, ptr noundef nonnull %i.lg) #12 ; 2 uses
  %i.li = sub i32 %.8, %i.lh                      ; 2 uses
  %i.lj = zext i32 %i.lh to i64
  %i.lk = getelementptr i8, ptr %.7, i64 %i.lj
  %i.ll = add nuw i32 %.0109.i, 1                 ; 2 uses
  %i.lm = load i32, ptr %i.im, align 4
  %i.ln = icmp ult i32 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph.split.i, label %ohci_dump_roothub.exit, !llvm.loop !3

ohci_dump_roothub.exit:                           ; preds = %roothub_portstatus.exit.i, %.loopexit107.i, %roothub_a.exit.i, %bb.c
  %.1150 = phi i32 [ %i.z, %bb.c ], [ %i.hk, %roothub_a.exit.i ], [ %i.jq, %.loopexit107.i ], [ %i.li, %roothub_portstatus.exit.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.b, i64 noundef %i.h) #12
  %i.lo = zext i32 %.1150 to i64
  %i.lp = sub nsw i64 4096, %i.lo
  ret i64 %i.lp
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @finish_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
.peel.begin:
  %i.a = getelementptr i8, ptr %0, i64 -584       ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 -476       ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 -472       ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 1056       ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 1032       ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 32       ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  tail call fastcc void @urb_free_priv(ptr noundef %0, ptr noundef %i.l) #15, !srcloc !77
  store ptr null, ptr %i.k, align 8
  %i.m = icmp eq i32 %2, -115
  %spec.store.select.peel = select i1 %i.m, i32 0, i32 %2, !prof !23
  %i.n = getelementptr i8, ptr %1, i64 80
  %i.o = load i32, ptr %i.n, align 8
  %i.p = lshr i32 %i.o, 30
  switch i32 %i.p, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.a
  ]

bb.a:                                             ; preds = %.peel.begin
  %i.q = load i32, ptr %i.e, align 4
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.e, align 4
  br label %bb.g

bb.b:                                             ; preds = %.peel.begin
  %i.s = load i32, ptr %i.f, align 8
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.f, align 8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.val.peel = load i64, ptr %i.g, align 8        ; 2 uses
  %i.v = and i64 %.val.peel, 512
  %.not.peel = icmp eq i64 %i.v, 0
  br i1 %.not.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @usb_amd_quirk_pll_enable() #12
  %.val35.peel.pre = load i64, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val35.peel = phi i64 [ %.val35.peel.pre, %bb.d ], [ %.val.peel, %bb.c ]
  %i.w = and i64 %.val35.peel, 1024
  %.not33.peel = icmp eq i64 %i.w, 0
  br i1 %.not33.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @sb800_prefetch(ptr noundef %i.b, i32 noundef 0) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.a, %.peel.begin
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %i.a, ptr noundef %1) #12
  tail call void @_raw_spin_unlock(ptr noundef %0) #12
  tail call void @usb_hcd_giveback_urb(ptr noundef %i.a, ptr noundef %1, i32 noundef %spec.store.select.peel) #12
  tail call void @_raw_spin_lock(ptr noundef %0) #12
  %i.x = load i32, ptr %i.f, align 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.e, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.h, align 8
  %i.ac = and i32 %i.ab, -13                      ; 2 uses
  store i32 %i.ac, ptr %i.h, align 8
  %i.ad = load ptr, ptr %i.i, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ac, ptr elementtype(i32) %i.ae) #13, !srcloc !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.af = load volatile ptr, ptr %i.j, align 8    ; 3 uses
  %.not36.peel = icmp eq ptr %i.af, %i.j
  br i1 %.not36.peel, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 10
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  %i.al = load i16, ptr %i.ak, align 8
  %i.am = icmp ugt i16 %i.aj, %i.al
  br i1 %i.am, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.k, %bb.v
  %.pn = phi ptr [ %i.bh, %bb.v ], [ %i.af, %bb.k ] ; 3 uses
  %.0 = getelementptr i8, ptr %.pn, i64 -24       ; 2 uses
  %i.an = getelementptr i8, ptr %.pn, i64 -16     ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  tail call fastcc void @urb_free_priv(ptr noundef %0, ptr noundef %i.ao) #15, !srcloc !77
  store ptr null, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %.pn, i64 56
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = lshr i32 %i.aq, 30
  switch i32 %i.ar, label %bb.r [
    i32 0, label %bb.l
    i32 1, label %bb.q
  ]

bb.l:                                             ; preds = %.peel.next
  %i.as = load i32, ptr %i.f, align 8
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.f, align 8
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.val = load i64, ptr %i.g, align 8             ; 2 uses
  %i.av = and i64 %.val, 512
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @usb_amd_quirk_pll_enable() #12
  %.val35.pre = load i64, ptr %i.g, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.val35 = phi i64 [ %.val35.pre, %bb.n ], [ %.val, %bb.m ]
  %i.aw = and i64 %.val35, 1024
  %.not33 = icmp eq i64 %i.aw, 0
  br i1 %.not33, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @sb800_prefetch(ptr noundef %i.b, i32 noundef 0) #12
  br label %bb.r

bb.q:                                             ; preds = %.peel.next
  %i.ax = load i32, ptr %i.e, align 4
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.e, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.p, %bb.o, %bb.q, %.peel.next
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %i.a, ptr noundef %.0) #12
  tail call void @_raw_spin_unlock(ptr noundef %0) #12
  tail call void @usb_hcd_giveback_urb(ptr noundef %i.a, ptr noundef %.0, i32 noundef 0) #12
  tail call void @_raw_spin_lock(ptr noundef %0) #12
  %i.az = load i32, ptr %i.f, align 8
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bb = load i32, ptr %i.e, align 4
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %i.h, align 8
  %i.be = and i32 %i.bd, -13                      ; 2 uses
  store i32 %i.be, ptr %i.h, align 8
  %i.bf = load ptr, ptr %i.i, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.be, ptr elementtype(i32) %i.bg) #13, !srcloc !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.bh = load volatile ptr, ptr %i.j, align 8    ; 3 uses
  %.not36 = icmp eq ptr %i.bh, %i.j
  br i1 %.not36, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr i8, ptr %i.bh, i64 -16
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 10
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = icmp ugt i16 %i.bl, %i.bn
  br i1 %i.bo, label %.peel.next, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %bb.v, %bb.u, %bb.k, %bb.j
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @urb_free_priv(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = getelementptr i8, ptr %0, i64 336
  %i.e = getelementptr i8, ptr %0, i64 -8
  %i.f = getelementptr i8, ptr %0, i64 320
  %wide.trip.count = zext i16 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %td_free.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %td_free.exit ] ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 6 uses
  %.not14 = icmp eq ptr %i.h, null
  br i1 %.not14, label %td_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 56       ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = lshr i64 %i.j, 6
  %i.l = xor i64 %i.k, %i.j
  %i.m = and i64 %i.l, 63
  %i.n = getelementptr [8 x i8], ptr %i.d, i64 %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %.0.i, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.o, null                ; 2 uses
  %.not21.i = icmp eq ptr %i.o, %i.h
  %or.cond.i = or i1 %.not.i, %.not21.i
  %i.p = getelementptr i8, ptr %i.o, i64 32
  br i1 %or.cond.i, label %.critedge.i, label %bb.d, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.d
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.q = getelementptr i8, ptr %i.h, i64 32
  %i.r = load ptr, ptr %i.q, align 32
  store ptr %i.r, ptr %.0.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.i
  %i.s = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not23.i = icmp eq ptr %i.s, null
  br i1 %.not23.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.h to i64
  tail call void @gen_pool_free_owner(ptr noundef nonnull %i.s, i64 noundef %i.t, i64 noundef 96, ptr noundef null) #12
  br label %td_free.exit

bb.h:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = load i64, ptr %i.i, align 8
  tail call void @dma_pool_free(ptr noundef %i.u, ptr noundef nonnull %i.h, i64 noundef %i.v) #12
  br label %td_free.exit

td_free.exit:                                     ; preds = %bb.h, %bb.g, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !78

.loopexit:                                        ; preds = %td_free.exit, %bb.a
  %i.w = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %i.aa, align 8
  store volatile ptr %i.z, ptr %i.y, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.w, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.x, align 8
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_amd_quirk_pll_enable() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sb800_prefetch(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @ed_schedule(ptr nofree noundef captures(none) %0, ptr noundef nonnull initializes((12, 16), (32, 48)) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 12         ; 2 uses
  store i32 0, ptr %i.c, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !83
  %i.d = getelementptr i8, ptr %1, i64 81
  %i.e = load i8, ptr %i.d, align 1
  switch i8 %i.e, label %bb.t [
    i8 2, label %bb.b
    i8 3, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 1032
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 16
  %.not69 = icmp eq i32 %i.k, 0
  br i1 %.not69, label %bb.e, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "626: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 626b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 626) #13, !srcloc !84
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.113, i32 205, i32 2305, i64 16) #13, !srcloc !85
  tail call void asm sideeffect "627: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 627b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 627) #13, !srcloc !86
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 16
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 32
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.n, ptr elementtype(i32) %i.q) #13, !srcloc !17
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.g, i64 32
  store ptr %1, ptr %i.r, align 16
  %i.s = getelementptr i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 16
  %i.u = trunc i64 %i.t to i32
  %i.v = load ptr, ptr %i.f, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 12
  store i32 %i.u, ptr %i.w, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load ptr, ptr %i.f, align 8              ; 2 uses
  store ptr %i.x, ptr %i.a, align 8
  %.not70 = icmp eq ptr %i.x, null
  br i1 %.not70, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %.not71 = icmp eq ptr %i.z, null
  br i1 %.not71, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !87
  %i.aa = getelementptr i8, ptr %0, i64 1032      ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = or i32 %i.ab, 16
  store i32 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 36
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.af) #13, !srcloc !17
  %i.ag = load i32, ptr %i.aa, align 8
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ag, ptr elementtype(i32) %i.ai) #13, !srcloc !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  store ptr %1, ptr %i.f, align 8
  br label %bb.ae

bb.k:                                             ; preds = %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 40        ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %0, i64 1032
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = and i32 %i.an, 32
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.n, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "628: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 628b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 628) #13, !srcloc !88
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.113, i32 226, i32 2305, i64 16) #13, !srcloc !89
  tail call void asm sideeffect "629: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 629b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 629) #13, !srcloc !90
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = getelementptr i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 16
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 40
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ar, ptr elementtype(i32) %i.au) #13, !srcloc !17
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %i.ak, i64 32
  store ptr %1, ptr %i.av, align 16
  %i.aw = getelementptr i8, ptr %1, i64 16
  %i.ax = load i64, ptr %i.aw, align 16
  %i.ay = trunc i64 %i.ax to i32
  %i.az = load ptr, ptr %i.aj, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 12
  store i32 %i.ay, ptr %i.ba, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bb = load ptr, ptr %i.aj, align 8            ; 2 uses
  store ptr %i.bb, ptr %i.a, align 8
  %.not67 = icmp eq ptr %i.bb, null
  br i1 %.not67, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not68 = icmp eq ptr %i.bd, null
  br i1 %.not68, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !91
  %i.be = getelementptr i8, ptr %0, i64 1032      ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = or i32 %i.bf, 32
  store i32 %i.bg, ptr %i.be, align 8
  %i.bh = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 44
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.bj) #13, !srcloc !17
  %i.bk = load i32, ptr %i.be, align 8
  %i.bl = load ptr, ptr %i.bh, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bk, ptr elementtype(i32) %i.bm) #13, !srcloc !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  store ptr %1, ptr %i.aj, align 8
  br label %bb.ae

bb.t:                                             ; preds = %bb.a
  %i.bn = getelementptr i8, ptr %1, i64 84        ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 4            ; 4 uses
  %i.bp = getelementptr i8, ptr %1, i64 86        ; 3 uses
  %i.bq = load i16, ptr %i.bp, align 2            ; 2 uses
  %i.br = zext i16 %i.bq to i32
  %.not.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i, label %balance.exit.thread, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %bb.t
  %i.bs = tail call i16 @llvm.umin.i16(i16 %i.bo, i16 32)
  %i.bt = getelementptr i8, ptr %0, i64 904       ; 4 uses
  %umin.i = zext nneg i16 %i.bs to i64            ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.i, %.lr.ph26.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph26.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 4 uses
  %.01825.i = phi i32 [ -28, %.lr.ph26.i ], [ %.2.i, %.loopexit.i ] ; 4 uses
  %i.bu = icmp slt i32 %.01825.i, 0
  br i1 %i.bu, label %.lr.ph.preheader.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = zext nneg i32 %.01825.i to i64
  %i.bw = getelementptr [4 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr [4 x i8], ptr %i.bt, i64 %indvars.iv.i
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp sgt i32 %i.bx, %i.bz
  br i1 %i.ca, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.v, %bb.u
  %i.cb = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, %umin.i ; 2 uses
  %i.cc = icmp samesign ult i64 %indvars.iv.next28.i, 32
  br i1 %i.cc, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !79

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next28.i, %bb.w ] ; 2 uses
  %i.cd = getelementptr [4 x i8], ptr %i.bt, i64 %indvars.iv27.i
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = add i32 %i.ce, %i.br
  %i.cg = icmp sgt i32 %i.cf, 900
  br i1 %i.cg, label %.loopexit.i, label %bb.w

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.w, %bb.v
  %.2.i = phi i32 [ %.01825.i, %bb.v ], [ %i.cb, %bb.w ], [ %.01825.i, %.lr.ph.i ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %umin.i
  br i1 %exitcond.not.i, label %balance.exit, label %bb.u, !llvm.loop !80

balance.exit:                                     ; preds = %.loopexit.i
  %i.ch = icmp slt i32 %.2.i, 0
  br i1 %i.ch, label %balance.exit.thread, label %bb.x

bb.x:                                             ; preds = %balance.exit
  %i.ci = trunc i32 %.2.i to i8                   ; 2 uses
  %i.cj = getelementptr i8, ptr %1, i64 82
  store i8 %i.ci, ptr %i.cj, align 2
  %i.ck = icmp ult i8 %i.ci, 32
  br i1 %i.ck, label %.lr.ph55.i, label %periodic_link.exit

.lr.ph55.i:                                       ; preds = %bb.x
  %i.cl = and i32 %.2.i, 31
  %i.cm = getelementptr i8, ptr %0, i64 56
  %i.cn = getelementptr i8, ptr %0, i64 16
  %i.co = getelementptr i8, ptr %1, i64 16
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %.lr.ph55.i
  %i.cp = phi i16 [ %i.bo, %.lr.ph55.i ], [ %i.dt, %bb.ad ] ; 2 uses
  %.03653.i = phi i32 [ %i.cl, %.lr.ph55.i ], [ %i.dv, %bb.ad ] ; 2 uses
  %i.cq = zext nneg i32 %.03653.i to i64          ; 3 uses
  %i.cr = getelementptr [8 x i8], ptr %i.cm, i64 %i.cq ; 3 uses
  %i.cs = load ptr, ptr %i.cn, align 8
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cq ; 2 uses
  %.039.i = load ptr, ptr %i.cr, align 8          ; 6 uses
  %i.cu = icmp ne ptr %.039.i, null               ; 2 uses
  %i.cv = icmp ne ptr %1, %.039.i                 ; 2 uses
  %i.cw = and i1 %i.cu, %i.cv
  br i1 %i.cw, label %.lr.ph.i72, label %._crit_edge.i

.lr.ph.i72:                                       ; preds = %bb.y
  %i.cx = getelementptr i8, ptr %.039.i, i64 84
  %i.cy = load i16, ptr %i.cx, align 4
  %i.cz = icmp ugt i16 %i.cp, %i.cy
  br i1 %i.cz, label %.thread.i, label %.lr.ph

bb.z:                                             ; preds = %.lr.ph
  %i.da = getelementptr i8, ptr %.0.i, i64 84
  %i.db = load i16, ptr %i.da, align 4
  %i.dc = icmp ugt i16 %i.cp, %i.db
  br i1 %i.dc, label %.thread.i.loopexit, label %.lr.ph, !llvm.loop !81

.thread.i.loopexit:                               ; preds = %bb.z
  %i.dd = getelementptr i8, ptr %.042.i81, i64 32
  %i.de = getelementptr i8, ptr %.042.i81, i64 12
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %.lr.ph.i72
  %.042.i.lcssa = phi ptr [ %.039.i, %.lr.ph.i72 ], [ %.0.i, %.thread.i.loopexit ]
  %.03441.i.lcssa = phi ptr [ %i.ct, %.lr.ph.i72 ], [ %i.de, %.thread.i.loopexit ]
  %.03540.i.lcssa = phi ptr [ %i.cr, %.lr.ph.i72 ], [ %i.dd, %.thread.i.loopexit ]
  store ptr %.042.i.lcssa, ptr %i.b, align 16
  br label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph.i72, %bb.z
  %.042.i81 = phi ptr [ %.0.i, %bb.z ], [ %.039.i, %.lr.ph.i72 ] ; 5 uses
  %i.df = getelementptr i8, ptr %.042.i81, i64 32
  %.0.i = load ptr, ptr %i.df, align 8            ; 6 uses
  %i.dg = icmp ne ptr %.0.i, null                 ; 2 uses
  %i.dh = icmp ne ptr %1, %.0.i                   ; 2 uses
  %i.di = and i1 %i.dg, %i.dh
  br i1 %i.di, label %bb.z, label %._crit_edge.i.loopexit, !llvm.loop !81

._crit_edge.i.loopexit:                           ; preds = %.lr.ph
  %i.dj = getelementptr i8, ptr %.042.i81, i64 32
  %i.dk = getelementptr i8, ptr %.042.i81, i64 12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.y
  %.035.lcssa.i = phi ptr [ %i.cr, %bb.y ], [ %i.dj, %._crit_edge.i.loopexit ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %i.ct, %bb.y ], [ %i.dk, %._crit_edge.i.loopexit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.039.i, %bb.y ], [ %.0.i, %._crit_edge.i.loopexit ]
  %.lcssa38.i = phi i1 [ %i.cu, %bb.y ], [ %i.dg, %._crit_edge.i.loopexit ]
  %.lcssa.i = phi i1 [ %i.cv, %bb.y ], [ %i.dh, %._crit_edge.i.loopexit ]
  br i1 %.lcssa.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %._crit_edge.i
  store ptr %.0.lcssa.i, ptr %i.b, align 16
  br i1 %.lcssa38.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %.thread.i
  %.035.lcssa6576.i = phi ptr [ %.03540.i.lcssa, %.thread.i ], [ %.035.lcssa.i, %bb.aa ]
  %.034.lcssa6674.i = phi ptr [ %.03441.i.lcssa, %.thread.i ], [ %.034.lcssa.i, %bb.aa ] ; 2 uses
  %i.dl = load i32, ptr %.034.lcssa6674.i, align 4
  store i32 %i.dl, ptr %i.c, align 4
  br label %bb.ac
end_hunk_2
begin_hunk_3_@ohci_urb_enqueue:bb.a
  %i.al = getelementptr i8, ptr %.0.i66.i, i64 8
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = load i64, ptr %i.b, align 8
  %i.an = getelementptr i8, ptr %.0.i66.i, i64 56 ; 2 uses
  store i64 %i.am, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ao = getelementptr i8, ptr %.0.i.i, i64 24
  store ptr %.0.i66.i, ptr %i.ao, align 8
  %i.ap = load i64, ptr %i.an, align 8
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = getelementptr i8, ptr %.0.i.i, i64 4
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr i8, ptr %.0.i.i, i64 8
  store i32 %i.aq, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %.0.i.i, i64 80
  store i8 0, ptr %i.at, align 16
  %i.au = getelementptr i8, ptr %i.h, i64 2       ; 2 uses
  %i.av = load i8, ptr %i.au, align 2             ; 2 uses
  %i.aw = lshr i32 %i.f, 8
  %i.ax = and i32 %i.aw, 127
  %i.ay = lshr i32 %i.f, 30                       ; 3 uses
  %i.az = trunc nuw nsw i32 %i.ay to i8           ; 2 uses
  %i.ba = getelementptr i8, ptr %.0.i.i, i64 81
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = load i8, ptr %i.au, align 2
  %i.bc = and i8 %i.bb, 127
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 7
  %i.bf = or disjoint i32 %i.be, %i.ax
  %i.bg = getelementptr i8, ptr %i.h, i64 4       ; 2 uses
  %.val64.i = load i16, ptr %i.bg, align 4
  %i.bh = and i16 %.val64.i, 2047
  %i.bi = zext nneg i16 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 16
  %i.bk = or disjoint i32 %i.bf, %i.bj            ; 2 uses
  %i.bl = getelementptr i8, ptr %i.j, i64 28      ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp eq i32 %i.bm, 1
  %i.bo = or i32 %i.bk, 8192
  %spec.select.i = select i1 %i.bn, i32 %i.bo, i32 %i.bk ; 2 uses
  %.not62.i = icmp eq i32 %i.ay, 2
  br i1 %.not62.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp slt i8 %i.av, 0
  %i.bq = select i1 %i.bp, i32 4096, i32 2048
  %i.br = or i32 %spec.select.i, %i.bq            ; 3 uses
  switch i8 %i.az, label %bb.p [
    i8 3, label %bb.r
    i8 0, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bs = or i32 %i.br, 32768
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %spec.store.select.i = call i32 @llvm.smin.i32(i32 %i.l, i32 32)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.052.i = phi i32 [ %i.l, %bb.o ], [ %spec.store.select.i, %bb.p ]
  %.1.i = phi i32 [ %i.bs, %bb.o ], [ %i.br, %bb.p ]
  %i.bt = trunc i32 %.052.i to i16
  %i.bu = getelementptr i8, ptr %.0.i.i, i64 84
  store i16 %i.bt, ptr %i.bu, align 4
  %i.bv = load i32, ptr %i.bl, align 4
  %.lobit.i = lshr i8 %i.av, 7
  %i.bw = zext nneg i8 %.lobit.i to i32
  %i.bx = icmp eq i32 %i.ay, 0
  %i.by = zext i1 %i.bx to i32
  %.val.i = load i16, ptr %i.bg, align 4
  %i.bz = and i16 %.val.i, 2047
  %i.ca = zext nneg i16 %i.bz to i32
  %i.cb = call i64 @usb_calc_bus_time(i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef %i.by, i32 noundef %i.ca) #12
  %i.cc = sdiv i64 %i.cb, 1000
  %i.cd = trunc i64 %i.cc to i16
  %i.ce = getelementptr i8, ptr %.0.i.i, i64 86
  store i16 %i.cd, ptr %i.ce, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.m
  %.2.i = phi i32 [ %.1.i, %bb.q ], [ %i.br, %bb.n ], [ %spec.select.i, %bb.m ]
  store i32 %.2.i, ptr %.0.i.i, align 16
  store ptr %.0.i.i, ptr %i.n, align 8
  br label %bb.s

ed_get.exit.thread:                               ; preds = %ed_alloc.exit.thread.i, %bb.k, %bb.l
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.m) #12
  br label %.critedge

bb.s:                                             ; preds = %bb.r, %bb.a
  %.154.i = phi ptr [ %i.o, %bb.a ], [ %.0.i.i, %bb.r ] ; 11 uses
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.m) #12
  %i.cf = getelementptr i8, ptr %.154.i, i64 81   ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1
  switch i8 %i.cg, label %._crit_edge176 [
    i8 2, label %bb.t
    i8 0, label %bb.aa
  ]

._crit_edge176:                                   ; preds = %bb.s
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 136
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr i8, ptr %1, i64 136
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp ugt i32 %i.ci, 4096
  br i1 %i.cj, label %.critedge, label %bb.u

bb.u:                                             ; preds = %._crit_edge176, %bb.t
  %i.ck = phi i32 [ %.pre, %._crit_edge176 ], [ %i.ci, %bb.t ] ; 5 uses
  %.0131 = phi i32 [ 0, %._crit_edge176 ], [ 2, %bb.t ]
  %i.cl = getelementptr i8, ptr %1, i64 128
  %i.cm = load i32, ptr %i.cl, align 8            ; 3 uses
  %i.cn = icmp sgt i32 %i.ck, 0
  %i.co = icmp sgt i32 %i.cm, 0
  %or.cond.i = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr i8, ptr %1, i64 112
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 24
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.ck) ; 2 uses
  %i.cu = add i32 %i.ct, 4095
  %i.cv = sdiv i32 %i.cu, 4096                    ; 2 uses
  %i.cw = sub i32 %i.ck, %i.ct                    ; 2 uses
  %i.cx = icmp samesign ult i32 %i.cm, 2
  %i.cy = icmp slt i32 %i.cw, 1
  %or.cond330.i = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond330.i, label %number_of_tds.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %sg_next.exit.i
  %i.cz = phi i32 [ %i.dn, %sg_next.exit.i ], [ %i.cw, %bb.v ] ; 2 uses
  %i.da = phi i32 [ %i.dm, %sg_next.exit.i ], [ %i.cv, %bb.v ]
  %.02332.i = phi i32 [ %i.db, %sg_next.exit.i ], [ %i.cm, %bb.v ] ; 2 uses
  %.02531.i = phi ptr [ %.06.i.i, %sg_next.exit.i ], [ %i.cq, %bb.v ] ; 2 uses
  %i.db = add nsw i32 %.02332.i, -1
  %.val.i.i = load i64, ptr %.02531.i, align 8
  %i.dc = and i64 %.val.i.i, 2
  %.not.i.i157 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i157, label %bb.w, label %sg_next.exit.i

bb.w:                                             ; preds = %.lr.ph.i
  %i.dd = getelementptr i8, ptr %.02531.i, i64 32 ; 2 uses
  %.val7.i.i = load i64, ptr %i.dd, align 8       ; 2 uses
  %i.de = trunc i64 %.val7.i.i to i1
  br i1 %i.de, label %bb.x, label %sg_next.exit.i, !prof !20

bb.x:                                             ; preds = %bb.w
  %i.df = and i64 %.val7.i.i, -4
  %i.dg = inttoptr i64 %i.df to ptr
  br label %sg_next.exit.i

sg_next.exit.i:                                   ; preds = %bb.x, %bb.w, %.lr.ph.i
  %.06.i.i = phi ptr [ null, %.lr.ph.i ], [ %i.dg, %bb.x ], [ %i.dd, %bb.w ] ; 2 uses
  %i.dh = getelementptr i8, ptr %.06.i.i, i64 24
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = call i32 @llvm.smin.i32(i32 %i.di, i32 %i.cz) ; 2 uses
  %i.dk = add i32 %i.dj, 4095
  %i.dl = sdiv i32 %i.dk, 4096
  %i.dm = add i32 %i.dl, %i.da                    ; 2 uses
  %i.dn = sub i32 %i.cz, %i.dj                    ; 2 uses
  %i.do = icmp samesign ult i32 %.02332.i, 3
  %i.dp = icmp slt i32 %i.dn, 1
  %or.cond3.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond3.i, label %number_of_tds.exit, label %.lr.ph.i

bb.y:                                             ; preds = %bb.u
  %i.dq = add i32 %i.ck, 4095
  %i.dr = sdiv i32 %i.dq, 4096
  br label %number_of_tds.exit

number_of_tds.exit:                               ; preds = %sg_next.exit.i, %bb.v, %bb.y
  %.1.i156 = phi i32 [ %i.dr, %bb.y ], [ %i.cv, %bb.v ], [ %i.dm, %sg_next.exit.i ]
  %i.ds = add i32 %.1.i156, %.0131                ; 3 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_kzalloc_noprof.exit, label %bb.z

bb.z:                                             ; preds = %number_of_tds.exit
  %i.du = getelementptr i8, ptr %1, i64 92
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = and i32 %i.dv, 64
  %.not142 = icmp eq i32 %i.dw, 0
  br i1 %.not142, label %_kzalloc_noprof.exit, label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %bb.z
  %i.dx = load ptr, ptr %i.i, align 8
  %i.dy = and i32 %i.f, 128
  %.not.i.i158 = icmp eq i32 %i.dy, 0
  %.v.i.i = select i1 %.not.i.i158, i64 1112, i64 984
  %i.dz = getelementptr i8, ptr %i.dx, i64 %.v.i.i
  %i.ea = lshr i32 %i.f, 15
  %i.eb = and i32 %i.ea, 15
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr [8 x i8], ptr %i.dz, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  %.val.i160 = load i16, ptr %i.ef, align 1
  %i.eg = and i16 %.val.i160, 2047
  %i.eh = zext nneg i16 %i.eg to i32
  %i.ei = urem i32 %i.ck, %i.eh
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = zext i1 %i.ej to i32
  %spec.select = add i32 %i.ds, %i.ek
  br label %_kzalloc_noprof.exit

bb.aa:                                            ; preds = %bb.s
  %i.el = getelementptr i8, ptr %1, i64 164
  %i.em = load i32, ptr %i.el, align 4
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %usb_maxpacket.exit, %number_of_tds.exit, %bb.z, %bb.aa
  %.1 = phi i32 [ %i.em, %bb.aa ], [ 1, %number_of_tds.exit ], [ %spec.select, %usb_maxpacket.exit ], [ %i.ds, %bb.z ] ; 5 uses
  %i.en = or i32 %2, 256                          ; 2 uses
  %i.eo = icmp slt i32 %.1, 0
  %i.ep = sext i32 %.1 to i64
  %i.eq = shl nsw i64 %i.ep, 3
  %i.er = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 -137438953472, 137438953409) %i.eq, i64 32) ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  %i.et = select i1 %i.eo, i1 true, i1 %i.es
  %i.eu = extractvalue { i64, i1 } %i.er, 0
  %.0.i153 = select i1 %i.et, i64 -1, i64 %i.eu
  %i.ev = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -137438953472, 137438953441) %.0.i153, i32 noundef range(i32 256, 0) %i.en) #17 ; 10 uses
  %.not143 = icmp eq ptr %i.ev, null
  br i1 %.not143, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %_kzalloc_noprof.exit
  %i.ew = trunc i32 %.1 to i16                    ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  %i.ey = getelementptr i8, ptr %i.ev, i64 16     ; 3 uses
  store volatile ptr %i.ey, ptr %i.ey, align 8
  %i.ez = getelementptr i8, ptr %i.ev, i64 24
  store volatile ptr %i.ey, ptr %i.ez, align 8
  store i16 %i.ew, ptr %i.ex, align 8
  store ptr %.154.i, ptr %i.ev, align 8
  %i.fa = icmp sgt i32 %.1, 0
  br i1 %i.fa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ab
  %i.fb = getelementptr i8, ptr %0, i64 576
  %i.fc = getelementptr i8, ptr %0, i64 904
  %i.fd = getelementptr i8, ptr %i.ev, i64 32     ; 2 uses
  %wide.trip.count = zext nneg i32 %.1 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !annotation !104
  %i.fe = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not.i163 = icmp eq ptr %i.fe, null
  br i1 %.not.i163, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ff = call ptr @gen_pool_dma_zalloc_align(ptr noundef nonnull %i.fe, i64 noundef 96, ptr noundef nonnull %i.a, i32 noundef 32) #12
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.fg = load ptr, ptr %i.fc, align 8
  %i.fh = call ptr @dma_pool_alloc(ptr noundef %i.fg, i32 noundef %i.en, ptr noundef nonnull %i.a) #12
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i164 = phi ptr [ %i.ff, %bb.ad ], [ %i.fh, %bb.ae ] ; 4 uses
  %.not10.i = icmp eq ptr %.0.i164, null
  br i1 %.not10.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.fi = getelementptr [8 x i8], ptr %i.fd, i64 %indvars.iv
  store ptr null, ptr %i.fi, align 8
  %i.fj = trunc i64 %indvars.iv to i16
  store i16 %i.fj, ptr %i.ex, align 8
  call fastcc void @urb_free_priv(ptr noundef %i.d, ptr noundef nonnull %i.ev) #15, !srcloc !105
  br label %.critedge

bb.ah:                                            ; preds = %bb.af
  %i.fk = load i64, ptr %i.a, align 8
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr i8, ptr %.0.i164, i64 8
  store i32 %i.fl, ptr %i.fm, align 8
  %i.fn = load i64, ptr %i.a, align 8
  %i.fo = getelementptr i8, ptr %.0.i164, i64 56
  store i64 %i.fn, ptr %i.fo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.fp = getelementptr [8 x i8], ptr %i.fd, i64 %indvars.iv
  store ptr %.0.i164, ptr %i.fp, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ac, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.ah, %bb.ab
  %i.fq = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #12
  %i.fr = getelementptr i8, ptr %0, i64 320
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = and i64 %i.fs, 1
  %.not144 = icmp eq i64 %i.ft, 0
  br i1 %.not144, label %bb.bb, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  %i.fu = getelementptr i8, ptr %0, i64 1480
  %i.fv = load i32, ptr %i.fu, align 8
  %.not145 = icmp eq i32 %i.fv, 2
  br i1 %.not145, label %bb.aj, label %bb.bb

bb.aj:                                            ; preds = %bb.ai
  %i.fw = call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #12 ; 2 uses
  %.not146 = icmp eq i32 %i.fw, 0
  br i1 %.not146, label %bb.ak, label %bb.bb

bb.ak:                                            ; preds = %bb.aj
  %i.fx = getelementptr i8, ptr %.154.i, i64 80
  %i.fy = load i8, ptr %i.fx, align 16
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.ga = call fastcc i32 @ed_schedule(ptr noundef %i.d, ptr noundef %.154.i) #15, !srcloc !106 ; 2 uses
  %i.gb = icmp slt i32 %i.ga, 0
  br i1 %i.gb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #12
  br label %bb.bb

bb.an:                                            ; preds = %bb.al
  %i.gc = getelementptr i8, ptr %0, i64 1648      ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = icmp eq i32 %i.gd, -256
  br i1 %i.ge, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.gf = getelementptr i8, ptr %0, i64 1464      ; 2 uses
  %i.gg = load volatile ptr, ptr %i.gf, align 8
  %.not = icmp eq ptr %i.gg, %i.gf
  br i1 %.not, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gh = getelementptr i8, ptr %0, i64 1640
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = and i64 %i.gi, 4096
  %.not150 = icmp eq i64 %i.gj, 0
  br i1 %.not150, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gk = getelementptr i8, ptr %0, i64 600
  %.val155 = load ptr, ptr %i.gk, align 8
  %i.gl = getelementptr i8, ptr %.val155, i64 128
  %.val155.val = load i32, ptr %i.gl, align 4
  %i.gm = and i32 %.val155.val, 65535
  store i32 %i.gm, ptr %i.gc, align 8
  %i.gn = getelementptr i8, ptr %0, i64 1664
  %i.go = load volatile i64, ptr @jiffies, align 64
  %i.gp = add i64 %i.go, 275
  %i.gq = call i32 @mod_timer(ptr noundef %i.gn, i64 noundef %i.gp) #12 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.gr = getelementptr i8, ptr %.154.i, i64 64   ; 3 uses
  %i.gs = getelementptr i8, ptr %0, i64 1464      ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  store ptr %i.gr, ptr %i.gu, align 8
  store ptr %i.gt, ptr %i.gr, align 16
  %i.gv = getelementptr i8, ptr %.154.i, i64 72
  store ptr %i.gs, ptr %i.gv, align 8
  store volatile ptr %i.gr, ptr %i.gs, align 8
  %i.gw = load i8, ptr %i.cf, align 1
  %i.gx = icmp eq i8 %i.gw, 0
  br i1 %i.gx, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.gy = getelementptr i8, ptr %0, i64 600
  %.val154 = load ptr, ptr %i.gy, align 8
  %i.gz = getelementptr i8, ptr %.val154, i64 128
  %.val154.val = load i32, ptr %i.gz, align 4
  %i.ha = trunc i32 %.val154.val to i16
  %i.hb = getelementptr i8, ptr %.154.i, i64 84   ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 4            ; 2 uses
  %i.hd = call i16 @llvm.umax.i16(i16 %i.hc, i16 8)
  %i.he = add i16 %i.hd, %i.ha
  %i.hf = sub i16 0, %i.hc
  %i.hg = and i16 %i.he, %i.hf
  %i.hh = getelementptr i8, ptr %.154.i, i64 82
  %i.hi = load i8, ptr %i.hh, align 2
  %i.hj = zext i8 %i.hi to i16
  %i.hk = or i16 %i.hg, %i.hj                     ; 2 uses
  %i.hl = zext i16 %i.hk to i32
  %i.hm = getelementptr i8, ptr %1, i64 160
  store i32 %i.hl, ptr %i.hm, align 8
  %i.hn = load i16, ptr %i.hb, align 4
  %i.ho = add i16 %i.ew, -1
  %i.hp = mul i16 %i.hn, %i.ho
  %i.hq = add i16 %i.hp, %i.hk
  %i.hr = getelementptr i8, ptr %.154.i, i64 88
  store i16 %i.hq, ptr %i.hr, align 8
  br label %bb.ba

bb.at:                                            ; preds = %bb.ak
  %i.hs = load i8, ptr %i.cf, align 1
  %i.ht = icmp eq i8 %i.hs, 0
  br i1 %i.ht, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.hu = getelementptr i8, ptr %0, i64 600
  %.val = load ptr, ptr %i.hu, align 8
  %i.hv = getelementptr i8, ptr %.val, i64 128
  %.val.val = load i32, ptr %i.hv, align 4
  %i.hw = trunc i32 %.val.val to i16              ; 2 uses
  %i.hx = add i16 %i.hw, 1                        ; 2 uses
  %i.hy = getelementptr i8, ptr %.154.i, i64 88   ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 8            ; 2 uses
  %i.ia = getelementptr i8, ptr %.154.i, i64 84
  %i.ib = load i16, ptr %i.ia, align 4            ; 4 uses
  %i.ic = zext i16 %i.ib to i32                   ; 2 uses
  %i.id = add i16 %i.ib, %i.hz                    ; 6 uses
  %i.ie = add i16 %i.ew, -1
  %i.if = mul i16 %i.ib, %i.ie
  %i.ig = sub i16 %i.id, %i.hx
  %i.ih = icmp slt i16 %i.ig, 0
  br i1 %i.ih, label %bb.av, label %bb.az, !prof !20

bb.av:                                            ; preds = %bb.au
  %i.ii = getelementptr i8, ptr %1, i64 92
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = and i32 %i.ij, 2
  %.not147 = icmp eq i32 %i.ik, 0
  br i1 %.not147, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.il = sub i16 %i.hw, %i.hz
  %i.im = sub i16 0, %i.ib
  %i.in = and i16 %i.il, %i.im
  %i.io = add i16 %i.in, %i.id
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.ip = sub i16 %i.hx, %i.id
  %i.iq = zext i16 %i.ip to i32
  %i.ir = add nsw i32 %i.ic, -1
  %i.is = add nsw i32 %i.ir, %i.iq
  %i.it = sdiv i32 %i.is, %i.ic                   ; 2 uses
  %i.iu = trunc i32 %i.it to i16                  ; 2 uses
  %i.iv = getelementptr i8, ptr %i.ev, i64 10     ; 2 uses
  store i16 %i.iu, ptr %i.iv, align 2
  %i.iw = and i32 %i.it, 65535
  %i.ix = load i16, ptr %i.ex, align 8
  %i.iy = zext i16 %i.ix to i32
  %.not148 = icmp samesign ult i32 %i.iw, %i.iy
  br i1 %.not148, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iz = add i16 %i.iu, 1
  store i16 %i.iz, ptr %i.iv, align 2
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay, %bb.ax, %bb.au
  %.0 = phi i16 [ %i.io, %bb.aw ], [ %i.id, %bb.ay ], [ %i.id, %bb.ax ], [ %i.id, %bb.au ] ; 2 uses
  %i.ja = zext i16 %.0 to i32
  %i.jb = getelementptr i8, ptr %1, i64 160
  store i32 %i.ja, ptr %i.jb, align 8
  %i.jc = add i16 %.0, %i.if
  store i16 %i.jc, ptr %i.hy, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.as, %bb.ar, %bb.az, %bb.at
  %i.jd = getelementptr i8, ptr %1, i64 8
  store ptr %i.ev, ptr %i.jd, align 8
  call fastcc void @td_submit_urb(ptr noundef %i.d, ptr noundef %1) #15, !srcloc !107
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge, %bb.aj, %bb.am, %bb.ai
  %.1133.ph = phi i32 [ -19, %bb.ai ], [ %i.ga, %bb.am ], [ %i.fw, %bb.aj ], [ -19, %._crit_edge ]
  call fastcc void @urb_free_priv(ptr noundef %i.d, ptr noundef nonnull %i.ev) #15, !srcloc !108
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.1133170 = phi i32 [ %.1133.ph, %bb.bb ], [ 0, %bb.ba ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.fq) #12
  br label %.critedge

.critedge:                                        ; preds = %ed_get.exit.thread, %_kzalloc_noprof.exit, %bb.t, %bb.bc, %bb.ag
  %.0129 = phi i32 [ -12, %bb.ag ], [ %.1133170, %bb.bc ], [ -90, %bb.t ], [ -12, %ed_get.exit.thread ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0129
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ohci_urb_dequeue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 584        ; 4 uses
  %i.b = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #12
  %i.c = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8              ; 8 uses
  %i.h = getelementptr i8, ptr %i.g, i64 80
  %i.i = load i8, ptr %i.h, align 16
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.g, align 16
  %i.l = or i32 %i.k, 134217728
  store i32 %i.l, ptr %i.g, align 16
  tail call fastcc void @ed_deschedule(ptr noundef %i.a, ptr noundef %i.g) #15, !srcloc !21
  %i.m = getelementptr i8, ptr %0, i64 616        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.g, i64 32
  store ptr %i.n, ptr %i.o, align 16
  %i.p = getelementptr i8, ptr %i.g, i64 40
  store ptr null, ptr %i.p, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.q = getelementptr i8, ptr %0, i64 592        ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 12
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, ptr elementtype(i32) %i.s) #13, !srcloc !17
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 4, ptr elementtype(i32) %i.u) #13, !srcloc !17
  %i.v = load ptr, ptr %i.q, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.w) #13, !srcloc !15 ; 0 uses
  %i.y = getelementptr i8, ptr %0, i64 600
  %.val.i = load ptr, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.val.i, i64 128
  %.val.val.i = load i32, ptr %i.z, align 4
  %i.aa = trunc i32 %.val.val.i to i16
  %i.ab = add i16 %i.aa, 1
  %i.ac = getelementptr i8, ptr %i.g, i64 90
  store i16 %i.ab, ptr %i.ac, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = getelementptr i8, ptr %0, i64 1480
  %i.ae = load i32, ptr %i.ad, align 8
  %.not = icmp eq i32 %i.ae, 2
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @ohci_work(ptr noundef %i.a) #15, !srcloc !109
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.b) #12
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ohci_endpoint_disable(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 584        ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 10 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1480
  %i.e = getelementptr i8, ptr %i.c, i64 80       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.g
  %.0 = phi i32 [ %i.k, %bb.g ], [ 1000, %.preheader ] ; 2 uses
  %i.f = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #12 ; 2 uses
  %i.g = load i32, ptr %i.d, align 8
  %.not26 = icmp eq i32 %i.g, 2
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.1 = phi i32 [ %.0, %bb.b ], [ -1, %bb.f ]
  store i8 0, ptr %i.e, align 16
  tail call fastcc void @ohci_work(ptr noundef %i.a) #15, !srcloc !110
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi i32 [ %.1, %bb.c ], [ %.0, %bb.b ]    ; 2 uses
  %i.h = load i8, ptr %i.e, align 16              ; 2 uses
  switch i8 %i.h, label %.loopexit.loopexit [
    i8 1, label %bb.e
    i8 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %.2, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.j, ptr noundef nonnull @.str.123) #14
  br label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.k = add i32 %.2, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.f) #12
  %i.l = tail call i64 @schedule_timeout_uninterruptible(i64 noundef 1) #12 ; 0 uses
  br label %bb.b

bb.h:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.c, i64 48       ; 2 uses
  %i.n = load volatile ptr, ptr %i.m, align 16
  %.not37 = icmp eq ptr %i.n, %i.m
  br i1 %.not37, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.c, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 5 uses
  %i.q = getelementptr i8, ptr %0, i64 920
  %i.r = getelementptr i8, ptr %i.p, i64 56       ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = lshr i64 %i.s, 6
  %i.u = xor i64 %i.t, %i.s
  %i.v = and i64 %i.u, 63
  %i.w = getelementptr [8 x i8], ptr %i.q, i64 %i.v
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi ptr [ %i.w, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %i.x = load ptr, ptr %.0.i, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.x, null                ; 2 uses
  %.not21.i = icmp eq ptr %i.x, %i.p
  %or.cond.i = or i1 %.not.i, %.not21.i
  %i.y = getelementptr i8, ptr %i.x, i64 32
  br i1 %or.cond.i, label %.critedge.i, label %bb.j, !llvm.loop !4

.critedge.i:                                      ; preds = %bb.j
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.z = getelementptr i8, ptr %i.p, i64 32
  %i.aa = load ptr, ptr %i.z, align 32
  store ptr %i.aa, ptr %.0.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge.i
  %i.ab = getelementptr i8, ptr %0, i64 576       ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not23.i = icmp eq ptr %i.ac, null
  br i1 %.not23.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = ptrtoint ptr %i.p to i64
  tail call void @gen_pool_free_owner(ptr noundef nonnull %i.ac, i64 noundef %i.ad, i64 noundef 96, ptr noundef null) #12
  br label %td_free.exit

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr i8, ptr %0, i64 904
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.r, align 8
  tail call void @dma_pool_free(ptr noundef %i.af, ptr noundef %i.p, i64 noundef %i.ag) #12
  br label %td_free.exit

td_free.exit:                                     ; preds = %bb.m, %bb.n
  %i.ah = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i29 = icmp eq ptr %i.ah, null
  br i1 %.not.i29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %td_free.exit
  %i.ai = ptrtoint ptr %i.c to i64
  tail call void @gen_pool_free_owner(ptr noundef nonnull %i.ah, i64 noundef %i.ai, i64 noundef 112, ptr noundef null) #12
  br label %ed_free.exit

bb.p:                                             ; preds = %td_free.exit
  %i.aj = getelementptr i8, ptr %0, i64 912
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.c, i64 16
  %i.am = load i64, ptr %i.al, align 16
  tail call void @dma_pool_free(ptr noundef %i.ak, ptr noundef nonnull %i.c, i64 noundef %i.am) #12
  br label %ed_free.exit

.loopexit.loopexit:                               ; preds = %bb.d
  %i.an = zext i8 %i.h to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.h
  %i.ao = phi i32 [ %i.an, %.loopexit.loopexit ], [ 0, %bb.h ]
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr i8, ptr %1, i64 2
  %i.ar = load i8, ptr %i.aq, align 2
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr i8, ptr %i.c, i64 48      ; 2 uses
  %i.au = load volatile ptr, ptr %i.at, align 16
  %.not38 = icmp eq ptr %i.au, %i.at
  %i.av = select i1 %.not38, ptr @.str.10, ptr @.str.125
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ap, ptr noundef nonnull @.str.124, ptr noundef nonnull %i.c, i32 noundef %i.as, i32 noundef %i.ao, ptr noundef nonnull %i.av) #14
  %i.aw = getelementptr i8, ptr %i.c, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 5 uses
  %i.ay = getelementptr i8, ptr %0, i64 920
  %i.az = getelementptr i8, ptr %i.ax, i64 56     ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = lshr i64 %i.ba, 6
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = and i64 %i.bc, 63
  %i.be = getelementptr [8 x i8], ptr %i.ay, i64 %i.bd
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.loopexit
  %.0.i30 = phi ptr [ %i.be, %.loopexit ], [ %i.bg, %bb.q ] ; 2 uses
  %i.bf = load ptr, ptr %.0.i30, align 8          ; 3 uses
  %.not.i31 = icmp eq ptr %i.bf, null             ; 2 uses
  %.not21.i32 = icmp eq ptr %i.bf, %i.ax
  %or.cond.i33 = or i1 %.not.i31, %.not21.i32
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  br i1 %or.cond.i33, label %.critedge.i34, label %bb.q, !llvm.loop !4

.critedge.i34:                                    ; preds = %bb.q
end_hunk_3
begin_hunk_4_@td_submit_urb:bb.a
  store ptr %1, ptr %i.nq, align 16
  %i.nr = getelementptr i8, ptr %i.nk, i64 64
  store i64 %i.ms, ptr %i.nr, align 32
  %.not59.i213 = icmp eq i32 %i.mu, 0
  %spec.select.i214 = select i1 %.not59.i213, i64 0, i64 %i.ms ; 3 uses
  store i32 %.0.i212, ptr %i.nk, align 32
  %i.ns = trunc i64 %spec.select.i214 to i32      ; 2 uses
  %i.nt = and i32 %i.ns, -4096
  %i.nu = trunc i64 %spec.select.i214 to i16
  %i.nv = and i16 %i.nu, 4095
  %i.nw = or disjoint i16 %i.nv, -8192
  %i.nx = getelementptr i8, ptr %i.nk, i64 16
  store i16 %i.nw, ptr %i.nx, align 16
  %i.ny = getelementptr i8, ptr %i.nk, i64 4
  store i32 %i.nt, ptr %i.ny, align 4
  %.not61.i217 = icmp eq i64 %spec.select.i214, 0
  %i.nz = add i32 %i.mu, -1
  %i.oa = add i32 %i.nz, %i.ns
  %.sink62.i218 = select i1 %.not61.i217, i32 0, i32 %i.oa
  %i.ob = getelementptr i8, ptr %i.nk, i64 12
  store i32 %.sink62.i218, ptr %i.ob, align 4
  %i.oc = getelementptr i8, ptr %i.nh, i64 56
  %i.od = load i64, ptr %i.oc, align 8
  %i.oe = trunc i64 %i.od to i32
  %i.of = getelementptr i8, ptr %i.nk, i64 8      ; 2 uses
  store i32 %i.oe, ptr %i.of, align 8
  %i.og = getelementptr i8, ptr %i.nk, i64 72     ; 3 uses
  %i.oh = getelementptr i8, ptr %i.nl, i64 48
  %i.oi = getelementptr i8, ptr %i.nl, i64 56     ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8            ; 2 uses
  store ptr %i.og, ptr %i.oi, align 8
  store ptr %i.oh, ptr %i.og, align 8
  %i.ok = getelementptr i8, ptr %i.nk, i64 80
  store ptr %i.oj, ptr %i.ok, align 16
  store volatile ptr %i.og, ptr %i.oj, align 8
  %i.ol = getelementptr i8, ptr %i.nk, i64 56
  %i.om = load i64, ptr %i.ol, align 8            ; 2 uses
  %i.on = lshr i64 %i.om, 6
  %i.oo = xor i64 %i.on, %i.om
  %i.op = and i64 %i.oo, 63
  %i.oq = getelementptr [8 x i8], ptr %i.mh, i64 %i.op ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = getelementptr i8, ptr %i.nk, i64 32
  store ptr %i.or, ptr %i.os, align 32
  store ptr %i.nk, ptr %i.oq, align 8
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !114
  %i.ot = load i32, ptr %i.of, align 8
  %i.ou = load ptr, ptr %i.nm, align 8
  %i.ov = getelementptr i8, ptr %i.ou, i64 4
  store i32 %i.ot, ptr %i.ov, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ow = load i32, ptr %i.ma, align 4
  %i.ox = trunc nuw i64 %indvars.iv.next to i32
  %i.oy = icmp sgt i32 %i.ow, %i.ox
  br i1 %i.oy, label %bb.al, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %td_fill.exit220, %bb.ak
  %i.oz = getelementptr i8, ptr %0, i64 -472      ; 4 uses
  %i.pa = load i32, ptr %i.oz, align 8            ; 2 uses
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %bb.ao, label %.thread

.thread:                                          ; preds = %._crit_edge
  %i.pc = add i32 %i.pa, 1
  store i32 %i.pc, ptr %i.oz, align 8
  br label %.thread221

bb.ao:                                            ; preds = %._crit_edge
  %i.pd = getelementptr i8, ptr %0, i64 1056      ; 2 uses
  %.val = load i64, ptr %i.pd, align 8            ; 2 uses
  %i.pe = and i64 %.val, 512
  %.not168 = icmp eq i64 %i.pe, 0
  br i1 %.not168, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @usb_amd_quirk_pll_disable() #12
  %.val176.pre = load i64, ptr %i.pd, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.val176 = phi i64 [ %.val176.pre, %bb.ap ], [ %.val, %bb.ao ]
  %i.pf = and i64 %.val176, 1024
  %.not169 = icmp eq i64 %i.pf, 0
  br i1 %.not169, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @sb800_prefetch(ptr noundef %i.d, i32 noundef 1) #12
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.pr = load i32, ptr %i.oz, align 8             ; 2 uses
  %i.pg = add i32 %.pr, 1
  store i32 %i.pg, ptr %i.oz, align 8
  %i.ph = icmp eq i32 %.pr, 0
  br i1 %i.ph, label %bb.at, label %.thread221

bb.at:                                            ; preds = %bb.as
  %i.pi = getelementptr i8, ptr %0, i64 -476
  %i.pj = load i32, ptr %i.pi, align 4
  %i.pk = icmp eq i32 %i.pj, 0
  %i.pl = zext i1 %i.pk to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.z, %bb.aa
  %.1150 = phi i32 [ %i.pl, %bb.at ], [ %.0149, %bb.aa ], [ %.0149, %bb.z ]
  %.not174 = icmp eq i32 %.1150, 0
  br i1 %.not174, label %.thread221, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !117
  %i.pm = getelementptr i8, ptr %0, i64 1032      ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 8
  %i.po = or i32 %i.pn, 12                        ; 2 uses
  store i32 %i.po, ptr %i.pm, align 8
  %i.pp = getelementptr i8, ptr %0, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = getelementptr i8, ptr %i.pq, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.po, ptr elementtype(i32) %i.pr) #13, !srcloc !17
  br label %.thread221

.thread221:                                       ; preds = %.thread, %bb.as, %td_fill.exit210, %bb.g, %bb.av, %bb.au
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_zalloc_align(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_amd_quirk_pll_disable() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout_uninterruptible(i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #11

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noredzone nounwind "no-builtin-wcslen" }
attributes #13 = { nounwind }
attributes #14 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #15 = { noredzone "no-builtin-wcslen" }
attributes #16 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #17 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 8, !"cf-protection-branch", i32 1}
!7 = !{i32 4, !"function_return_thunk_extern", i32 1}
!8 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!9 = !{i32 1, !"Code Model", i32 2}
!10 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!11 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!12 = !{i32 1, !"override-stack-alignment", i32 8}
!13 = !{i32 4, !"SkipRaxSetup", i32 1}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!15 = !{i64 2155647510}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i64 2155649903}
!18 = !{i64 2148567881, i64 2148567920, i64 2148567941, i64 2148567978, i64 2148568001, i64 2148567872}
!19 = !{i64 2148569193, i64 2148569232, i64 2148569253, i64 2148569290, i64 2148569313, i64 2148569184}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{i64 10849530}
!22 = !{!"llvm.loop.peeled.count", i32 1}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = distinct !{!24, !16}
!25 = !{i64 10727989}
!26 = !{i64 10728230}
!27 = !{i64 10737939}
!28 = distinct !{!28, !16}
!29 = !{i64 19912}
!30 = distinct !{!30, !16}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{i64 14251}
!34 = distinct !{!34, !16}
!35 = !{i64 29094}
!36 = !{i64 29535}
!37 = !{i64 29828}
!38 = !{i64 30234}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = !{i64 2158468397}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16, !22}
!45 = distinct !{!45, !50}
!46 = distinct !{!46, !16}
!47 = !{i64 10868465}
!48 = !{i64 2158488411}
!49 = !{i64 10866315}
!50 = !{!"llvm.loop.unswitch.partial.disable"}
!51 = !{i64 10866759}
!52 = distinct !{!52, !16}
!53 = !{i64 19701}
!54 = distinct !{!54, !16}
!55 = !{i64 31900}
!56 = !{i64 31924}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = !{i64 10719370}
!60 = !{i64 10719395}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = !{i64 21667}
!66 = !{i64 23182}
!67 = !{i64 28135}
!68 = distinct !{null}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !22}
!77 = !{i64 10836984}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = !{i64 2158457620}
!84 = !{i64 2158458461, i64 2158458336}
!85 = !{i64 2158458984, i64 2158460054, i64 2158460087, i64 2158460122, i64 2158460138, i64 2158461065, i64 2158461123, i64 2158461172, i64 2158460982, i64 2158460197, i64 2158460229, i64 2158460312}
!86 = !{i64 2158461477, i64 2158461353}
!87 = !{i64 2158462131}
!88 = !{i64 2158463102, i64 2158462977}
!89 = !{i64 2158463625, i64 2158464695, i64 2158464728, i64 2158464763, i64 2158464779, i64 2158465706, i64 2158465764, i64 2158465813, i64 2158465623, i64 2158464838, i64 2158464870, i64 2158464953}
!90 = !{i64 2158466118, i64 2158465994}
!91 = !{i64 2158466769}
!92 = !{i64 2158457412}
!93 = !{i64 2158457504}
!94 = distinct !{!94, !16}
!95 = !{i64 2158486045}
!96 = !{i64 2158480364}
!97 = !{i64 25772}
!98 = !{i64 26880}
!99 = !{i64 27033}
!100 = !{i64 27251}
!101 = !{i64 20145}
!102 = !{i64 20214}
!103 = distinct !{!103, !16}
!104 = !{!"auto-init"}
!105 = !{i64 5541}
!106 = !{i64 5965}
!107 = !{i64 8000}
!108 = !{i64 8049}
!109 = !{i64 9038}
!110 = !{i64 9793}
!111 = !{i64 10725872}
!112 = !{i64 10726325}
!113 = distinct !{!113, !16}
!114 = !{i64 2158470551}
!115 = !{i64 2158478181}
!116 = !{i64 2158478495}
!117 = !{i64 2158478677}
end_hunk_4
