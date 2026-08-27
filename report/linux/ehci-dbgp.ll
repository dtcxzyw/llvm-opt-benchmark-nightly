Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ehci-dbgp?download=true
inline.NumInlined: 121
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ehci_setup:bb.a
  %i.ae = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ad) #8, !srcloc !12
  %i.af = and i32 %i.ae, -1342178321
  %i.ag = load ptr, ptr @ehci_debug, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.af, ptr elementtype(i32) %i.ag) #8, !srcloc !22
  br label %dbgp_ehci_controller_reset.exit

bb.k:                                             ; preds = %dbgp_ehci_controller_reset.exit.thread
  %i.ah = add nsw i32 %i.e, -1
  %i.ai = shl nuw nsw i32 1, %i.ah
  %i.aj = or i32 %i.ai, %.030                     ; 2 uses
  %i.ak = urem i32 %i.e, %i.f
  %i.al = add nuw nsw i32 %i.ak, 1                ; 3 uses
  %notmask = shl nsw i32 -1, %i.f
  %i.am = xor i32 %i.aj, %notmask
  %.not43 = icmp eq i32 %i.am, -1
  br i1 %.not43, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr @set_debug_port, align 8
  tail call void %i.an(i32 noundef %i.al) #9, !callees !25
  br label %bb.c

bb.m:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %.0, -1                     ; 2 uses
  %.not44 = icmp eq i32 %i.ao, 0
  br i1 %.not44, label %dbgp_ehci_controller_reset.exit, label %.backedge

dbgp_ehci_controller_reset.exit:                  ; preds = %bb.m, %bb.d, %bb.h, %bb.i, %bb.j
  %.033 = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.m ]
  ret i32 %.033
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_dbgp_write(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.b = load ptr, ptr @ehci_debug, align 8
  %i.c = icmp eq ptr %i.b, null
  %.b = load i1, ptr @dbgp_not_safe, align 4
  %or.cond = select i1 %i.c, i1 true, i1 %.b
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @ehci_regs, align 8
  %i.e = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d) #8, !srcloc !12 ; 2 uses
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.f, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @ehci_debug, align 8
  %i.h = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.g) #8, !srcloc !12
  %i.i = and i32 %i.h, 268435456
  %.not31 = icmp eq i32 %i.i, 0
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i1 true, ptr @dbgp_not_safe, align 4
  %i.j = tail call fastcc i32 @_dbgp_external_startup() #11, !srcloc !27 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = or disjoint i32 %i.e, 1
  %i.l = load ptr, ptr @ehci_regs, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.k, ptr elementtype(i32) %i.l) #8, !srcloc !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.not33 = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.b ]
  %.not3241 = icmp eq i32 %2, 0
  br i1 %.not3241, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.f, %.preheader.backedge
  %indvars.iv = phi i64 [ %indvars.iv.be, %.preheader.backedge ], [ 0, %bb.f ] ; 7 uses
  %.140 = phi i32 [ %.2, %.preheader.backedge ], [ 0, %bb.f ]
  %.12638 = phi i32 [ %.227, %.preheader.backedge ], [ %2, %bb.f ] ; 2 uses
  %.12937 = phi ptr [ %i.q, %.preheader.backedge ], [ %1, %bb.f ] ; 3 uses
  %.not35 = icmp eq i32 %.140, 0
  %.pre = load i8, ptr %.12937, align 1           ; 2 uses
  %i.m = icmp eq i8 %.pre, 10
  %or.cond51 = select i1 %.not35, i1 %i.m, i1 false
  %i.n = getelementptr i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  br i1 %or.cond51, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  store i8 13, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %.12937, i64 -1
  br label %bb.i

bb.h:                                             ; preds = %.preheader
  store i8 %.pre, ptr %i.n, align 1
  %i.p = add i32 %.12638, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.230 = phi ptr [ %.12937, %bb.h ], [ %i.o, %bb.g ]
  %.227 = phi i32 [ %i.p, %bb.h ], [ %.12638, %bb.g ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.h ], [ 1, %bb.g ]
  %i.q = getelementptr i8, ptr %.230, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv, 7
  %i.s = icmp ne i32 %.227, 0
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.preheader.backedge, label %bb.j

.preheader.backedge:                              ; preds = %bb.i, %dbgp_bulk_write.exit
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %dbgp_bulk_write.exit ]
  br label %.preheader, !llvm.loop !28

bb.j:                                             ; preds = %bb.i
  %i.u = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.v = load i32, ptr @dbgp_endpoint_out, align 4
  %i.w = load ptr, ptr @ehci_debug, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.x) #8, !srcloc !12
  %i.z = load i32, ptr @dbgp_pid_write_update.data0, align 4
  %i.aa = xor i32 %i.z, 136                       ; 2 uses
  store i32 %i.aa, ptr @dbgp_pid_write_update.data0, align 4
  %i.ab = load ptr, ptr @ehci_debug, align 8
  %i.ac = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ab) #8, !srcloc !12
  %invariant.umin.i.i = tail call i32 @llvm.umin.i32(i32 range(i32 1, 9) %i.u, i32 4)
  %wide.trip.count.i.i = zext nneg i32 %invariant.umin.i.i to i64 ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.ad = icmp ult i64 %indvars.iv, 3
  br i1 %i.ad, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %wide.trip.count.i.i, 4
  br label %bb.l

.preheader.i.i.unr-lcssa:                         ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.unr-lcssa, %bb.j
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.i.3, %.preheader.i.i.unr-lcssa ]
  %.01920.i.i.epil.init = phi i32 [ 0, %bb.j ], [ %i.bs, %.preheader.i.i.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.k ] ; 3 uses
  %.01920.i.i.epil = phi i32 [ %.01920.i.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ae = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i.epil
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %indvars.iv.tr.i.i.epil = trunc i64 %indvars.iv.i.i.epil to i32
  %i.ah = shl i32 %indvars.iv.tr.i.i.epil, 3
  %i.ai = shl nuw i32 %i.ag, %i.ah
  %i.aj = or i32 %i.ai, %.01920.i.i.epil          ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i, label %bb.k, !llvm.loop !29

.preheader.i.i:                                   ; preds = %bb.k, %.preheader.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bs, %.preheader.i.i.unr-lcssa ], [ %i.aj, %bb.k ]
  %i.ak = or disjoint i32 %i.v, 32512
  %i.al = and i32 %i.y, -65536
  %i.am = shl nuw nsw i32 %i.aa, 8
  %i.an = or i32 %i.al, %i.am
  %i.ao = or disjoint i32 %i.an, 225
  %i.ap = and i32 %i.ac, -64
  %i.aq = or disjoint i32 %i.ap, %i.u
  %i.ar = or disjoint i32 %i.aq, 48
  %i.as = icmp samesign ugt i64 %indvars.iv, 3
  br i1 %i.as, label %.lr.ph.i.i.preheader, label %dbgp_bulk_write.exit

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.at = add i64 %indvars.iv, 1
  %i.au = sub i64 %i.at, %wide.trip.count.i.i     ; 2 uses
  %i.av = sub i64 %indvars.iv, %wide.trip.count.i.i
  %xtraiter57 = and i64 %i.au, 3                  ; 3 uses
  %i.aw = icmp ult i64 %i.av, 3
  br i1 %i.aw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter62 = and i64 %i.au, -4
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.l, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.3, %bb.l ] ; 5 uses
  %.01920.i.i = phi i32 [ 0, %.new ], [ %i.bs, %bb.l ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.ax = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = zext i8 %i.ay to i32
  %i.ba = or i32 %.01920.i.i, %i.az
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %indvars.iv.tr.i.i.1 = trunc i64 %indvars.iv.next.i.i to i32
  %i.be = shl nsw i32 %indvars.iv.tr.i.i.1, 3
  %i.bf = shl nuw i32 %i.bd, %i.be
  %i.bg = or i32 %i.bf, %i.ba
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  %i.bi = load i8, ptr %i.bh, align 2
  %i.bj = zext i8 %i.bi to i32
  %indvars.iv.tr.i.i.2 = trunc i64 %indvars.iv.next.i.i.1 to i32
  %i.bk = shl nsw i32 %indvars.iv.tr.i.i.2, 3
  %i.bl = shl nuw i32 %i.bj, %i.bk
  %i.bm = or i32 %i.bl, %i.bg
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %indvars.iv.tr.i.i.3 = trunc i64 %indvars.iv.next.i.i.2 to i32
  %i.bq = shl nsw i32 %indvars.iv.tr.i.i.3, 3
  %i.br = shl nuw i32 %i.bp, %i.bq
  %i.bs = or i32 %i.br, %i.bm                     ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.unr-lcssa, label %bb.l, !llvm.loop !31

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv29.i.i = phi i64 [ %wide.trip.count.i.i, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next30.i.i.3, %.lr.ph.i.i ] ; 6 uses
  %.01824.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cu, %.lr.ph.i.i ]
  %niter63 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter63.next.3, %.lr.ph.i.i ]
  %i.bt = getelementptr i8, ptr %i.a, i64 %indvars.iv29.i.i
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  %indvars.iv29.tr.i.i = trunc i64 %indvars.iv29.i.i to i32
  %i.bw = shl nsw i32 %indvars.iv29.tr.i.i, 3
  %i.bx = add nsw i32 %i.bw, -32
  %i.by = shl nuw i32 %i.bv, %i.bx
  %i.bz = or i32 %i.by, %.01824.i.i
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.a, i64 %indvars.iv.next30.i.i
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %indvars.iv29.tr.i.i.1 = trunc i64 %indvars.iv.next30.i.i to i32
  %i.cd = shl nsw i32 %indvars.iv29.tr.i.i.1, 3
  %i.ce = add nsw i32 %i.cd, -32
  %i.cf = shl nuw i32 %i.cc, %i.ce
  %i.cg = or i32 %i.cf, %i.bz
  %indvars.iv.next30.i.i.1 = add nuw nsw i64 %indvars.iv29.i.i, 2 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 %indvars.iv.next30.i.i.1
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i32
  %indvars.iv29.tr.i.i.2 = trunc i64 %indvars.iv.next30.i.i.1 to i32
  %i.ck = shl nsw i32 %indvars.iv29.tr.i.i.2, 3
  %i.cl = add nsw i32 %i.ck, -32
  %i.cm = shl nuw i32 %i.cj, %i.cl
  %i.cn = or i32 %i.cm, %i.cg
  %indvars.iv.next30.i.i.2 = add nuw nsw i64 %indvars.iv29.i.i, 3 ; 2 uses
  %i.co = getelementptr i8, ptr %i.a, i64 %indvars.iv.next30.i.i.2
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %indvars.iv29.tr.i.i.3 = trunc i64 %indvars.iv.next30.i.i.2 to i32
  %i.cr = shl nsw i32 %indvars.iv29.tr.i.i.3, 3
  %i.cs = add nsw i32 %i.cr, -32
  %i.ct = shl nuw i32 %i.cq, %i.cs
  %i.cu = or i32 %i.ct, %i.cn                     ; 3 uses
  %indvars.iv.next30.i.i.3 = add nuw nsw i64 %indvars.iv29.i.i, 4 ; 2 uses
  %niter63.next.3 = add i64 %niter63, 4           ; 2 uses
  %niter63.ncmp.3 = icmp eq i64 %niter63.next.3, %unroll_iter62
  br i1 %niter63.ncmp.3, label %dbgp_bulk_write.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !32

dbgp_bulk_write.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %dbgp_bulk_write.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %dbgp_bulk_write.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv29.i.i.epil.init = phi i64 [ %wide.trip.count.i.i, %.lr.ph.i.i.preheader ], [ %indvars.iv.next30.i.i.3, %dbgp_bulk_write.exit.loopexit.unr-lcssa ]
  %.01824.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.cu, %dbgp_bulk_write.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv29.i.i.epil = phi i64 [ %indvars.iv.next30.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv29.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 3 uses
  %.01824.i.i.epil = phi i32 [ %i.db, %.lr.ph.i.i.epil ], [ %.01824.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter58 = phi i64 [ %epil.iter58.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cv = getelementptr i8, ptr %i.a, i64 %indvars.iv29.i.i.epil
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i32
  %indvars.iv29.tr.i.i.epil = trunc i64 %indvars.iv29.i.i.epil to i32
  %i.cy = shl i32 %indvars.iv29.tr.i.i.epil, 3
  %i.cz = add i32 %i.cy, -32
  %i.da = shl nuw i32 %i.cx, %i.cz
  %i.db = or i32 %i.da, %.01824.i.i.epil          ; 2 uses
  %indvars.iv.next30.i.i.epil = add nuw nsw i64 %indvars.iv29.i.i.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %dbgp_bulk_write.exit, label %.lr.ph.i.i.epil, !llvm.loop !33

dbgp_bulk_write.exit:                             ; preds = %dbgp_bulk_write.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.preheader.i.i
  %.018.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.cu, %dbgp_bulk_write.exit.loopexit.unr-lcssa ], [ %i.db, %.lr.ph.i.i.epil ]
  %i.dc = load ptr, ptr @ehci_debug, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.lcssa, ptr elementtype(i32) %i.dd) #8, !srcloc !22
  %i.de = load ptr, ptr @ehci_debug, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 12
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.018.lcssa.i.i, ptr elementtype(i32) %i.df) #8, !srcloc !22
  %i.dg = load ptr, ptr @ehci_debug, align 8
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ak, ptr elementtype(i32) %i.dh) #8, !srcloc !22
  %i.di = load ptr, ptr @ehci_debug, align 8
  %i.dj = getelementptr i8, ptr %i.di, i64 4
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ao, ptr elementtype(i32) %i.dj) #8, !srcloc !22
  %i.dk = tail call fastcc i32 @dbgp_wait_until_done(i32 noundef %i.ar) #11 ; 0 uses
  %.not32 = icmp eq i32 %.227, 0
  br i1 %.not32, label %._crit_edge, label %.preheader.backedge

._crit_edge:                                      ; preds = %dbgp_bulk_write.exit, %bb.f
  br i1 %.not33, label %bb.n, label %bb.m, !prof !34

bb.m:                                             ; preds = %._crit_edge
  %i.dl = load ptr, ptr @ehci_regs, align 8
  %i.dm = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dl) #8, !srcloc !12
  %i.dn = and i32 %i.dm, -2
  %i.do = load ptr, ptr @ehci_regs, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.dn, ptr elementtype(i32) %i.do) #8, !srcloc !22
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef range(i32 1, 0) i32 @dbgp_reset_prep(ptr nofree readnone captures(none) %0) #4 align 16 prefalign(16) {
bb.a:
  ret i32 1
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef range(i32 1, 0) i32 @dbgp_external_startup(ptr nofree readnone captures(none) %0) #4 align 16 prefalign(16) {
bb.a:
  ret i32 -1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -19, 1) i32 @_dbgp_external_startup() unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @dbgp_phys_port, align 4
  %i.b = add nsw i32 %i.a, -1
  %i.c = sext i32 %i.b to i64                     ; 19 uses
  br label %dbgp_ehci_controller_reset.exit.outer

dbgp_ehci_controller_reset.exit.outer:            ; preds = %bb.t, %bb.a
  %.038.ph = phi i32 [ %i.eq, %bb.t ], [ 1, %bb.a ] ; 2 uses
  %.037.ph = phi i32 [ %.037, %bb.t ], [ 1, %bb.a ]
  br label %dbgp_ehci_controller_reset.exit

dbgp_ehci_controller_reset.exit.loopexit:         ; preds = %bb.s
  br label %dbgp_ehci_controller_reset.exit, !llvm.loop !23

dbgp_ehci_controller_reset.exit:                  ; preds = %dbgp_ehci_controller_reset.exit.loopexit, %dbgp_ehci_controller_reset.exit.outer
  %.037 = phi i32 [ %.037.ph, %dbgp_ehci_controller_reset.exit.outer ], [ 0, %dbgp_ehci_controller_reset.exit.loopexit ] ; 2 uses
  %i.d = load ptr, ptr @ehci_debug, align 8
  %i.e = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d) #8, !srcloc !12
  %i.f = and i32 %i.e, -1342178305
  %i.g = or disjoint i32 %i.f, 1073741824
  %i.h = load ptr, ptr @ehci_debug, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.g, ptr elementtype(i32) %i.h) #8, !srcloc !22
  tail call void @__const_udelay(i64 noundef 4295) #9
  %i.i = load ptr, ptr @ehci_regs, align 8
  %i.j = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i) #8, !srcloc !12
  %i.k = and i32 %i.j, -244
  %i.l = or disjoint i32 %i.k, 1
  %i.m = load ptr, ptr @ehci_regs, align 8
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.l, ptr elementtype(i32) %i.m) #8, !srcloc !22
  %i.n = load ptr, ptr @ehci_regs, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 64
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 1, ptr elementtype(i32) %i.o) #8, !srcloc !22
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %dbgp_ehci_controller_reset.exit
  %.0.i = phi i32 [ 1000, %dbgp_ehci_controller_reset.exit ], [ %i.t, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr @ehci_regs, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.q) #8, !srcloc !12
  %i.s = and i32 %i.r, 4096
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__const_udelay(i64 noundef 4295) #9
  %i.t = add nsw i32 %.0.i, -1
  %i.u = icmp samesign ugt i32 %.0.i, 1
  br i1 %i.u, label %bb.b, label %dbgp_ehci_startup.exit, !llvm.loop !35

.preheader:                                       ; preds = %bb.b, %.loopexit.i.i
  %.011.i = phi i32 [ %i.z, %.loopexit.i.i ], [ 0, %bb.b ]
  %i.v = load ptr, ptr @ehci_regs, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.w) #8, !srcloc !12
  %i.y = and i32 %i.x, 4
  %.not.i49 = icmp eq i32 %i.y, 0
  br i1 %.not.i49, label %.preheader.i.i, label %bb.d

.loopexit.i.i:                                    ; preds = %.preheader.i.i
  %i.z = add nuw nsw i32 %.011.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.z, 300
  br i1 %exitcond.not.i, label %bb.d, label %.preheader, !llvm.loop !36

.preheader.i.i:                                   ; preds = %.preheader, %.preheader.i.i
  %.04.i.i = phi i32 [ %i.aa, %.preheader.i.i ], [ 0, %.preheader ]
  tail call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 1, i16 128) #8, !srcloc !37
  %i.aa = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aa, 1000
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.preheader.i.i, !llvm.loop !38

bb.d:                                             ; preds = %.loopexit.i.i, %.preheader
  %i.ab = load ptr, ptr @ehci_regs, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 68
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.c
  %i.ae = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ad) #8, !srcloc !12
  %i.af = and i32 %i.ae, -261
  %i.ag = or disjoint i32 %i.af, 256
  %i.ah = load ptr, ptr @ehci_regs, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 68
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.c
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ag, ptr elementtype(i32) %i.aj) #8, !srcloc !22
  br label %.preheader.i.i.i

.preheader.i.1.i.i:                               ; preds = %dbgp_mdelay.exit.i.i, %.loopexit.i.1.i.i
  %.in.i.1.i.i = phi i32 [ %i.al, %.loopexit.i.1.i.i ], [ 50, %dbgp_mdelay.exit.i.i ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.1.i.i
  %.04.i.1.i.i = phi i32 [ 0, %.preheader.i.1.i.i ], [ %i.ak, %bb.e ]
  tail call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 1, i16 128) #8, !srcloc !37
  %i.ak = add nuw nsw i32 %.04.i.1.i.i, 1         ; 2 uses
  %exitcond.not.i.1.i.i = icmp eq i32 %i.ak, 1000
  br i1 %exitcond.not.i.1.i.i, label %.loopexit.i.1.i.i, label %bb.e, !llvm.loop !38

.loopexit.i.1.i.i:                                ; preds = %bb.e
  %i.al = add nsw i32 %.in.i.1.i.i, -1            ; 2 uses
  %.not.i.1.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.1.i.i, label %dbgp_mdelay.exit.1.i.i, label %.preheader.i.1.i.i, !llvm.loop !39

dbgp_mdelay.exit.1.i.i:                           ; preds = %.loopexit.i.1.i.i
  %i.am = load ptr, ptr @ehci_regs, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 68
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %i.c
  %i.ap = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao) #8, !srcloc !12 ; 2 uses
  %i.aq = and i32 %i.ap, 256
  %.not.1.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.1.i.i, label %ehci_wait_for_port.exit, label %.preheader.i.2.i.i

.preheader.i.2.i.i:                               ; preds = %dbgp_mdelay.exit.1.i.i, %.loopexit.i.2.i.i
  %.in.i.2.i.i = phi i32 [ %i.as, %.loopexit.i.2.i.i ], [ 50, %dbgp_mdelay.exit.1.i.i ]
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.i.2.i.i
  %.04.i.2.i.i = phi i32 [ 0, %.preheader.i.2.i.i ], [ %i.ar, %bb.f ]
  tail call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 1, i16 128) #8, !srcloc !37
  %i.ar = add nuw nsw i32 %.04.i.2.i.i, 1         ; 2 uses
  %exitcond.not.i.2.i.i = icmp eq i32 %i.ar, 1000
end_hunk_0
