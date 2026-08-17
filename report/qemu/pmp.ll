inline.NumInlined: 80
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pmp_hart_has_privs:bb.a
  %i.bl = and i64 %i.bk, 2
  %.not16.i78 = icmp eq i64 %i.bl, 0
  br i1 %.not16.i78, label %bb.z, label %pmp_hart_has_privs_default.exit88

bb.z:                                             ; preds = %._crit_edge
  %i.bm = and i64 %i.bk, 1
  %.not17.i81 = icmp eq i64 %i.bm, 0
  br i1 %.not17.i81, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bn = icmp eq i8 %5, 3
  %i.bo = and i32 %3, 4
  %.not.i82 = icmp eq i32 %i.bo, 0
  %or.cond.i83 = and i1 %.not.i82, %i.bn          ; 2 uses
  %storemerge19.i84 = select i1 %or.cond.i83, i32 3, i32 0
  br label %pmp_hart_has_privs_default.exit88

bb.ab:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 15790
  %i.bq = load i8, ptr %i.bp, align 2, !range !12, !noundef !13
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = icmp ne i8 %5, 3
  %or.cond.not.i85 = and i1 %i.bs, %i.br          ; 2 uses
  %..i86 = select i1 %or.cond.not.i85, i32 0, i32 7
  %.1.i87 = xor i1 %or.cond.not.i85, true
  br label %pmp_hart_has_privs_default.exit88

pmp_hart_has_privs_default.exit88:                ; preds = %._crit_edge, %bb.aa, %bb.ab
  %..sink.i79 = phi i32 [ %..i86, %bb.ab ], [ %storemerge19.i84, %bb.aa ], [ 0, %._crit_edge ]
  %.015.i80 = phi i1 [ %.1.i87, %bb.ab ], [ %or.cond.i83, %bb.aa ], [ false, %._crit_edge ]
  store i32 %..sink.i79, ptr %4, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %pmp_hart_has_privs_default.exit88, %bb.s, %pmp_hart_has_privs_default.exit
  %.2 = phi i1 [ %.015.i, %pmp_hart_has_privs_default.exit ], [ false, %bb.s ], [ %i.bi, %bb.y ], [ %.015.i80, %pmp_hart_has_privs_default.exit88 ]
  ret i1 %.2
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pmpcfg_csr_write(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %i.b = shl i32 2, %.val                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5056
  %i.d = load i64, ptr %i.c, align 16
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_pmpcfg_csr_write.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_PMPCFG_CSR_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.f, 0
  br i1 %.not3.i, label %trace_pmpcfg_csr_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not4.i = icmp eq i32 %i.h, 0
  br i1 %.not4.i, label %trace_pmpcfg_csr_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i64 noundef %i.d, i32 noundef %1, i64 noundef %2) #10
  br label %trace_pmpcfg_csr_write.exit

trace_pmpcfg_csr_write.exit:                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = icmp sgt i32 %i.b, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %trace_pmpcfg_csr_write.exit
  %i.j = shl i32 %1, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 15830 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 15192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 15702
  %i.m = getelementptr i8, ptr %0, i64 15832      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 13136
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 14160
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  br label %.outer

.outer:                                           ; preds = %pmp_write_cfg.exit.thread, %.lr.ph
  %indvars.iv.ph = phi i64 [ %indvars.iv.next29, %pmp_write_cfg.exit.thread ], [ 0, %.lr.ph ]
  %.021.ph = phi i1 [ true, %pmp_write_cfg.exit.thread ], [ false, %.lr.ph ]
  br label %bb.e

bb.e:                                             ; preds = %.outer, %pmp_write_cfg.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %pmp_write_cfg.exit ], [ %indvars.iv.ph, %.outer ] ; 4 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = shl i64 %indvars.iv, 3
  %i.r = and i64 %i.q, 4294967288
  %i.s = lshr i64 %2, %i.r                        ; 2 uses
  %i.t = trunc i64 %i.s to i8                     ; 8 uses
  %i.u = add i32 %i.j, %i.p                       ; 3 uses
  %i.v = load i8, ptr %i.k, align 2
  %i.w = zext i8 %i.v to i32
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.y = zext nneg i32 %i.u to i64                ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 13144
  %i.ab = load i8, ptr %i.aa, align 8             ; 3 uses
  %i.ac = icmp eq i8 %i.ab, %i.t
  br i1 %i.ac, label %pmp_write_cfg.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp slt i8 %i.ab, 0
  %.val.pre.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.ad = and i64 %.val.pre.i, 4
  %.not2.i.not.i = icmp eq i64 %i.ad, 0
  %or.cond43.i = select i1 %.not.i.i, i1 %.not2.i.not.i, i1 false
  br i1 %or.cond43.i, label %bb.h, label %pmp_is_readonly.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr @qemu_loglevel, align 4
  %i.af = and i32 %i.ae, 2048
  %.not.i17 = icmp eq i32 %i.af, 0
  br i1 %.not.i17, label %pmp_write_cfg.exit, label %pmp_write_cfg.exit.sink.split, !prof !15

pmp_is_readonly.exit.thread.i:                    ; preds = %bb.g
  %i.ag = and i64 %.val.pre.i, 5
  %or.cond.i.i = icmp eq i64 %i.ag, 1
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %pmp_is_readonly.exit.thread.i
  %i.ah = lshr i8 %i.t, 4
  %i.ai = and i8 %i.ah, 8
  %i.aj = lshr i8 %i.t, 2
  %i.ak = and i8 %i.aj, 1
  %trunc.i.i.i = trunc i64 %i.s to i3
  %i.al = and i3 %trunc.i.i.i, 3
  %mask.i.i.i = tail call i3 @llvm.bitreverse.i3(i3 %i.al)
  %i.am = zext i3 %mask.i.i.i to i8
  %i.an = or disjoint i8 %i.ak, %i.ai
  %i.ao = or disjoint i8 %i.an, %i.am
  switch i8 %i.ao, label %.unreachabledefault [
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 2, label %bb.j
    i8 3, label %bb.j
    i8 4, label %bb.j
    i8 5, label %bb.j
    i8 6, label %bb.j
    i8 7, label %bb.j
    i8 8, label %bb.j
    i8 12, label %bb.j
    i8 14, label %bb.j
    i8 15, label %bb.j
    i8 9, label %pmp_is_invalid_smepmp_cfg.exit.i
    i8 10, label %pmp_is_invalid_smepmp_cfg.exit.i
    i8 11, label %pmp_is_invalid_smepmp_cfg.exit.i
    i8 13, label %pmp_is_invalid_smepmp_cfg.exit.i
  ]

.unreachabledefault:                              ; preds = %bb.i
  unreachable

default.unreachable:                              ; preds = %bb.p
  unreachable

pmp_is_invalid_smepmp_cfg.exit.i:                 ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.ap = load i32, ptr @qemu_loglevel, align 4
  %i.aq = and i32 %i.ap, 2048
  %.not36.i = icmp eq i32 %i.aq, 0
  br i1 %.not36.i, label %pmp_write_cfg.exit, label %pmp_write_cfg.exit.sink.split, !prof !15

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %pmp_is_readonly.exit.thread.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 13144
  %i.as = load i8, ptr %i.l, align 2, !range !12, !noundef !13
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = and i8 %i.t, -97
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.av = and i8 %i.t, 96
  %i.aw = icmp eq i8 %i.av, 96
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = and i8 %i.t, -97
  %i.ay = and i8 %i.ab, 96
  %i.az = or disjoint i8 %i.ay, %i.ax
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.027.i = phi i8 [ %i.az, %bb.m ], [ %i.t, %bb.l ], [ %i.au, %bb.k ] ; 2 uses
  %i.ba = load i32, ptr %i.m, align 8
  %i.bb = icmp ugt i32 %i.ba, 4
  %i.bc = and i8 %i.t, 24
  %i.bd = icmp eq i8 %i.bc, 16
  %or.cond.i = and i1 %i.bd, %i.bb
  %i.be = or i8 %.027.i, 24
  %spec.select.i = select i1 %or.cond.i, i8 %i.be, i8 %.027.i ; 2 uses
  store i8 %spec.select.i, ptr %i.ar, align 8
  %i.bf = getelementptr [16 x i8], ptr %i.n, i64 %i.y ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 16           ; 3 uses
  %.val.i.i = load i32, ptr %i.m, align 8
  %i.bh = lshr i32 %.val.i.i, 2
  %i.bi = tail call range(i32 0, 30) i32 @llvm.cttz.i32(i32 %i.bh, i1 true) ; 3 uses
  %.not.i31.i = icmp eq i32 %i.u, 0
  br i1 %.not.i31.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr i8, ptr %i.bf, i64 -16
  %i.bk = load i64, ptr %i.bj, align 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.027.i.i = phi i64 [ %i.bk, %bb.o ], [ 0, %bb.n ]
  %i.bl = lshr i8 %spec.select.i, 3
  %i.bm = and i8 %i.bl, 3
  switch i8 %i.bm, label %default.unreachable [
    i8 0, label %pmp_write_cfg.exit.thread
    i8 1, label %bb.q
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.bn = zext nneg i32 %i.bi to i64
  %.neg.i.i = shl nsw i64 -1, %i.bn               ; 2 uses
  %i.bo = and i64 %.027.i.i, %.neg.i.i            ; 2 uses
  %i.bp = and i64 %.neg.i.i, %i.bg                ; 2 uses
  %.not33.i.i = icmp ult i64 %i.bo, %i.bp
  br i1 %.not33.i.i, label %bb.r, label %pmp_write_cfg.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bq = shl i64 %i.bo, 2
  %i.br = shl i64 %i.bp, 2
  %i.bs = add i64 %i.br, -1
  br label %pmp_write_cfg.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.bt = shl i64 %i.bg, 2                        ; 2 uses
  %i.bu = or disjoint i64 %i.bt, 3
  br label %pmp_write_cfg.exit.thread

bb.t:                                             ; preds = %bb.p
  %i.bv = icmp samesign ugt i32 %i.bi, 1
  %i.bw = sub nuw nsw i32 65, %i.bi
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = lshr i64 -1, %i.bx
  %i.bz = select i1 %i.bv, i64 %i.by, i64 0
  %.1.i.i = or i64 %i.bz, %i.bg
  %i.ca = shl i64 %.1.i.i, 2                      ; 3 uses
  %i.cb = add i64 %i.ca, 4                        ; 2 uses
  %i.cc = and i64 %i.cb, %i.ca
  %i.cd = or i64 %i.ca, %i.cb
  %i.ce = or disjoint i64 %i.cd, 3
  br label %pmp_write_cfg.exit.thread

bb.u:                                             ; preds = %bb.e
  %i.cf = load i32, ptr @qemu_loglevel, align 4
  %i.cg = and i32 %i.cf, 2048
  %.not35.i = icmp eq i32 %i.cg, 0
  br i1 %.not35.i, label %pmp_write_cfg.exit, label %pmp_write_cfg.exit.sink.split, !prof !15

pmp_write_cfg.exit.sink.split:                    ; preds = %bb.u, %pmp_is_invalid_smepmp_cfg.exit.i, %bb.h
  %.str.9.sink = phi ptr [ @.str.10, %pmp_is_invalid_smepmp_cfg.exit.i ], [ @.str.9, %bb.h ], [ @.str.11, %bb.u ]
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull %.str.9.sink) #10
  br label %pmp_write_cfg.exit

pmp_write_cfg.exit:                               ; preds = %pmp_write_cfg.exit.sink.split, %bb.f, %bb.h, %pmp_is_invalid_smepmp_cfg.exit.i, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !16

pmp_write_cfg.exit.thread:                        ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.036.i.i = phi i64 [ %i.cc, %bb.t ], [ %i.bq, %bb.r ], [ 0, %bb.p ], [ %i.bt, %bb.s ], [ 0, %bb.q ]
  %.035.i.i = phi i64 [ %i.ce, %bb.t ], [ %i.bs, %bb.r ], [ -1, %bb.p ], [ %i.bu, %bb.s ], [ 0, %bb.q ]
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.y ; 2 uses
  store i64 %.036.i.i, ptr %i.ch, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %.035.i.i, ptr %i.ci, align 8
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not30 = icmp eq i64 %indvars.iv.next29, %wide.trip.count
  br i1 %exitcond.not30, label %._crit_edge.thread, label %.outer, !llvm.loop !16

._crit_edge:                                      ; preds = %pmp_write_cfg.exit
  br i1 %.021.ph, label %._crit_edge.thread, label %.critedge

._crit_edge.thread:                               ; preds = %pmp_write_cfg.exit.thread, %._crit_edge
  %i.cj = load i8, ptr %i.k, align 2              ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 15184 ; 4 uses
  store i32 0, ptr %i.ck, align 16
  %.not9.i = icmp eq i8 %i.cj, 0
  br i1 %.not9.i, label %pmp_update_rule_nums.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.thread
  %wide.trip.count.i = zext i8 %i.cj to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cl = icmp eq i8 %i.cj, 1
  br i1 %i.cl, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i.new
  %i.cm = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.cy, %bb.x ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.x ]
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 13144
  %i.cp = load i8, ptr %i.co, align 8
  %i.cq = and i8 %i.cp, 24
  %.not.i18 = icmp eq i8 %i.cq, 0
  br i1 %.not.i18, label %.lr.ph.i.1, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.cr = add i32 %i.cm, 1                        ; 2 uses
  store i32 %i.cr, ptr %i.ck, align 16
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.v, %.lr.ph.i
  %i.cs = phi i32 [ %i.cr, %bb.v ], [ %i.cm, %.lr.ph.i ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 13160
  %i.cv = load i8, ptr %i.cu, align 8
  %i.cw = and i8 %i.cv, 24
  %.not.i18.1 = icmp eq i8 %i.cw, 0
  br i1 %.not.i18.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.1
  %i.cx = add i32 %i.cs, 1                        ; 2 uses
  store i32 %i.cx, ptr %i.ck, align 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i.1
  %i.cy = phi i32 [ %i.cx, %bb.w ], [ %i.cs, %.lr.ph.i.1 ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %pmp_update_rule_nums.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !11

pmp_update_rule_nums.exit.loopexit.unr-lcssa:     ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmp_update_rule_nums.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %pmp_update_rule_nums.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.cy, %pmp_update_rule_nums.exit.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %pmp_update_rule_nums.exit.loopexit.unr-lcssa ]
  %lcmp.mod83 = trunc i8 %i.cj to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i.epil.init
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 13144
  %i.db = load i8, ptr %i.da, align 8
  %i.dc = and i8 %i.db, 24
  %.not.i18.epil = icmp eq i8 %i.dc, 0
  br i1 %.not.i18.epil, label %pmp_update_rule_nums.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.dd = add i32 %.epil.init, 1
  store i32 %i.dd, ptr %i.ck, align 16
  br label %pmp_update_rule_nums.exit

pmp_update_rule_nums.exit:                        ; preds = %pmp_update_rule_nums.exit.loopexit.unr-lcssa, %bb.y, %.lr.ph.i.epil.preheader, %._crit_edge.thread
  %i.de = getelementptr inbounds i8, ptr %0, i64 -16496
  tail call void @tlb_flush(ptr noundef nonnull %i.de) #10
  br label %.critedge

.critedge:                                        ; preds = %trace_pmpcfg_csr_write.exit, %pmp_update_rule_nums.exit, %._crit_edge
  ret void
}

declare void @tlb_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @pmpcfg_csr_read(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4960
  %.val = load i32, ptr %i.a, align 16
  %i.b = shl i32 2, %.val                         ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = shl i32 %1, 2                            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 15830
  %i.f = load i8, ptr %i.e, align 2
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %pmp_read_cfg.exit.1, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %pmp_read_cfg.exit.1 ] ; 4 uses
  %.01314 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %pmp_read_cfg.exit.1 ]
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  %i.i = add i32 %i.d, %i.h                       ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.g
  br i1 %i.j, label %bb.c, label %pmp_read_cfg.exit

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 13144
  %i.n = load i8, ptr %i.m, align 8
  %i.o = zext i8 %i.n to i64
  br label %pmp_read_cfg.exit

pmp_read_cfg.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.o, %bb.c ], [ 0, %bb.b ]
  %i.p = shl nuw nsw i64 %indvars.iv, 3
  %i.q = and i64 %i.p, 4294967280
  %i.r = shl i64 %.0.i, %i.q
  %i.s = or i64 %i.r, %.01314
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.u = add i32 %i.d, %i.t                       ; 2 uses
  %i.v = icmp ult i32 %i.u, %i.g
  br i1 %i.v, label %bb.d, label %pmp_read_cfg.exit.1

bb.d:                                             ; preds = %pmp_read_cfg.exit
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 13144
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = zext i8 %i.z to i64
  br label %pmp_read_cfg.exit.1

pmp_read_cfg.exit.1:                              ; preds = %bb.d, %pmp_read_cfg.exit
  %.0.i.1 = phi i64 [ %i.aa, %bb.d ], [ 0, %pmp_read_cfg.exit ]
  %i.ab = shl nuw nsw i64 %indvars.iv.next, 3
  %i.ac = and i64 %i.ab, 4294967288
  %i.ad = shl i64 %.0.i.1, %i.ac
  %i.ae = or i64 %i.ad, %i.s                      ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %pmp_read_cfg.exit.1, %bb.a
  %.013.lcssa = phi i64 [ 0, %bb.a ], [ %i.ae, %pmp_read_cfg.exit.1 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5056
  %i.ag = load i64, ptr %i.af, align 16
  %i.ah = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %trace_pmpcfg_csr_read.exit, label %bb.e, !prof !15

bb.e:                                             ; preds = %._crit_edge
  %i.ai = load i16, ptr @_TRACE_PMPCFG_CSR_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ai, 0
  br i1 %.not3.i, label %trace_pmpcfg_csr_read.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr @qemu_loglevel, align 4
  %i.ak = and i32 %i.aj, 32768
  %.not4.i = icmp eq i32 %i.ak, 0
  br i1 %.not4.i, label %trace_pmpcfg_csr_read.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i64 noundef %i.ag, i32 noundef %1, i64 noundef %.013.lcssa) #10
  br label %trace_pmpcfg_csr_read.exit

trace_pmpcfg_csr_read.exit:                       ; preds = %._crit_edge, %bb.e, %bb.f, %bb.g
  ret i64 %.013.lcssa
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pmpaddr_csr_write(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5056
  %i.b = load i64, ptr %i.a, align 16
  %i.c = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %trace_pmpaddr_csr_write.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr @_TRACE_PMPADDR_CSR_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.d, 0
  br i1 %.not3.i, label %trace_pmpaddr_csr_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 32768
  %.not4.i = icmp eq i32 %i.f, 0
  br i1 %.not4.i, label %trace_pmpaddr_csr_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, i64 noundef %i.b, i32 noundef %1, i64 noundef %2) #10
  br label %trace_pmpaddr_csr_write.exit

trace_pmpaddr_csr_write.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 15830
  %i.h = load i8, ptr %i.g, align 2
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = icmp ult i32 %1, %i.i
  br i1 %i.j, label %bb.e, label %bb.x

bb.e:                                             ; preds = %trace_pmpaddr_csr_write.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13136 ; 3 uses
  %i.l = zext nneg i32 %1 to i64                  ; 3 uses
  %i.m = getelementptr [16 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = load i64, ptr %i.m, align 16
  %i.o = icmp eq i64 %i.n, %2
  br i1 %i.o, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i32 %1, 1                    ; 3 uses
  %i.q = icmp samesign ult i32 %i.p, %i.i
  br i1 %i.q, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i8, ptr %i.t, align 8               ; 2 uses
  %i.v = and i8 %i.u, 24
  %i.w = icmp eq i8 %i.v, 8                       ; 3 uses
  %.not.i34 = icmp sgt i8 %i.u, -1
  br i1 %.not.i34, label %.critedge, label %pmp_is_readonly.exit

pmp_is_readonly.exit:                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 15192
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 4
  %.not2.i = icmp eq i64 %i.z, 0
  %or.cond = and i1 %.not2.i, %i.w
  br i1 %or.cond, label %bb.h, label %.critedge

bb.h:                                             ; preds = %pmp_is_readonly.exit
  %i.aa = load i32, ptr @qemu_loglevel, align 4
  %i.ab = and i32 %i.aa, 2048
  %.not52 = icmp eq i32 %i.ab, 0
  br i1 %.not52, label %bb.z, label %bb.i, !prof !15

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.2) #10
  br label %bb.z

.critedge:                                        ; preds = %bb.g, %pmp_is_readonly.exit, %bb.f
  %.0 = phi i1 [ %i.w, %pmp_is_readonly.exit ], [ false, %bb.f ], [ %i.w, %bb.g ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 13144
  %i.ae = load i8, ptr %i.ad, align 8             ; 2 uses
  %.not.i35 = icmp sgt i8 %i.ae, -1
  br i1 %.not.i35, label %pmp_is_readonly.exit37.thread, label %pmp_is_readonly.exit37

pmp_is_readonly.exit37:                           ; preds = %.critedge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 15192
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 4
  %.not2.i36.not = icmp eq i64 %i.ah, 0
  br i1 %.not2.i36.not, label %bb.v, label %pmp_is_readonly.exit37.thread

pmp_is_readonly.exit37.thread:                    ; preds = %.critedge, %pmp_is_readonly.exit37
  store i64 %2, ptr %i.m, align 16
  %i.ai = getelementptr i8, ptr %0, i64 15832     ; 2 uses
  %.val.i = load i32, ptr %i.ai, align 8
  %i.aj = lshr i32 %.val.i, 2
  %i.ak = tail call range(i32 0, 30) i32 @llvm.cttz.i32(i32 %i.aj, i1 true) ; 3 uses
  %.not.i38 = icmp eq i32 %1, 0
  br i1 %.not.i38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %pmp_is_readonly.exit37.thread
  %i.al = getelementptr i8, ptr %i.m, i64 -16
  %i.am = load i64, ptr %i.al, align 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %pmp_is_readonly.exit37.thread
  %.027.i = phi i64 [ %i.am, %bb.j ], [ 0, %pmp_is_readonly.exit37.thread ]
  %i.an = lshr i8 %i.ae, 3
  %i.ao = and i8 %i.an, 3
  switch i8 %i.ao, label %default.unreachable [
    i8 0, label %pmp_update_rule_addr.exit
    i8 1, label %bb.l
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.ak to i64
  %.neg.i = shl nsw i64 -1, %i.ap                 ; 2 uses
  %i.aq = and i64 %.027.i, %.neg.i                ; 2 uses
  %i.ar = and i64 %.neg.i, %2                     ; 2 uses
  %.not33.i = icmp ult i64 %i.aq, %i.ar
  br i1 %.not33.i, label %bb.m, label %pmp_update_rule_addr.exit

bb.m:                                             ; preds = %bb.l
  %i.as = shl i64 %i.aq, 2
  %i.at = shl i64 %i.ar, 2
  %i.au = add i64 %i.at, -1
  br label %pmp_update_rule_addr.exit

bb.n:                                             ; preds = %bb.k
  %i.av = shl i64 %2, 2                           ; 2 uses
  %i.aw = or disjoint i64 %i.av, 3
  br label %pmp_update_rule_addr.exit

bb.o:                                             ; preds = %bb.k
  %i.ax = icmp samesign ugt i32 %i.ak, 1
  %i.ay = sub nuw nsw i32 65, %i.ak
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 -1, %i.az
  %i.bb = select i1 %i.ax, i64 %i.ba, i64 0
  %.1.i = or i64 %i.bb, %2
  %i.bc = shl i64 %.1.i, 2                        ; 3 uses
  %i.bd = add i64 %i.bc, 4                        ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = or i64 %i.bc, %i.bd
  %i.bg = or disjoint i64 %i.bf, 3
  br label %pmp_update_rule_addr.exit

default.unreachable:                              ; preds = %bb.p, %bb.k
  unreachable

pmp_update_rule_addr.exit:                        ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.036.i = phi i64 [ %i.be, %bb.o ], [ %i.as, %bb.m ], [ 0, %bb.k ], [ %i.av, %bb.n ], [ 0, %bb.l ]
  %.035.i = phi i64 [ %i.bg, %bb.o ], [ %i.au, %bb.m ], [ -1, %bb.k ], [ %i.aw, %bb.n ], [ 0, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 14160 ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.l ; 2 uses
  store i64 %.036.i, ptr %i.bi, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %.035.i, ptr %i.bj, align 8
  br i1 %.0, label %bb.p, label %bb.u

bb.p:                                             ; preds = %pmp_update_rule_addr.exit
  %i.bk = zext nneg i32 %i.p to i64               ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = load i64, ptr %i.bl, align 16           ; 3 uses
  %.val.i39 = load i32, ptr %i.ai, align 8
  %i.bp = lshr i32 %.val.i39, 2
  %i.bq = tail call range(i32 0, 30) i32 @llvm.cttz.i32(i32 %i.bp, i1 true) ; 3 uses
  %i.br = lshr i8 %i.bn, 3
  %i.bs = and i8 %i.br, 3
  switch i8 %i.bs, label %default.unreachable [
    i8 0, label %pmp_update_rule_addr.exit48
    i8 1, label %bb.q
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.bt = zext nneg i32 %i.bq to i64
  %.neg.i45 = shl nsw i64 -1, %i.bt               ; 2 uses
  %i.bu = and i64 %.neg.i45, %2                   ; 2 uses
  %i.bv = and i64 %.neg.i45, %i.bo                ; 2 uses
  %.not33.i46 = icmp ult i64 %i.bu, %i.bv
  br i1 %.not33.i46, label %bb.r, label %pmp_update_rule_addr.exit48

bb.r:                                             ; preds = %bb.q
  %i.bw = shl i64 %i.bu, 2
  %i.bx = shl i64 %i.bv, 2
  %i.by = add i64 %i.bx, -1
  br label %pmp_update_rule_addr.exit48

bb.s:                                             ; preds = %bb.p
  %i.bz = shl i64 %i.bo, 2                        ; 2 uses
  %i.ca = or disjoint i64 %i.bz, 3
  br label %pmp_update_rule_addr.exit48

bb.t:                                             ; preds = %bb.p
  %i.cb = icmp samesign ugt i32 %i.bq, 1
  %i.cc = sub nuw nsw i32 65, %i.bq
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = lshr i64 -1, %i.cd
  %i.cf = select i1 %i.cb, i64 %i.ce, i64 0
  %.1.i42 = or i64 %i.cf, %i.bo
  %i.cg = shl i64 %.1.i42, 2                      ; 3 uses
  %i.ch = add i64 %i.cg, 4                        ; 2 uses
  %i.ci = and i64 %i.ch, %i.cg
  %i.cj = or i64 %i.cg, %i.ch
  %i.ck = or disjoint i64 %i.cj, 3
  br label %pmp_update_rule_addr.exit48

pmp_update_rule_addr.exit48:                      ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.036.i43 = phi i64 [ %i.ci, %bb.t ], [ %i.bw, %bb.r ], [ 0, %bb.p ], [ %i.bz, %bb.s ], [ 0, %bb.q ]
  %.035.i44 = phi i64 [ %i.ck, %bb.t ], [ %i.by, %bb.r ], [ -1, %bb.p ], [ %i.ca, %bb.s ], [ 0, %bb.q ]
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bk ; 2 uses
  store i64 %.036.i43, ptr %i.cl, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %.035.i44, ptr %i.cm, align 8
  br label %bb.u

bb.u:                                             ; preds = %pmp_update_rule_addr.exit48, %pmp_update_rule_addr.exit
  %i.cn = getelementptr inbounds i8, ptr %0, i64 -16496
  tail call void @tlb_flush(ptr noundef nonnull %i.cn) #10
  br label %bb.z

bb.v:                                             ; preds = %pmp_is_readonly.exit37
  %i.co = load i32, ptr @qemu_loglevel, align 4
  %i.cp = and i32 %i.co, 2048
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.z, label %bb.w, !prof !15

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3) #10
  br label %bb.z

bb.x:                                             ; preds = %trace_pmpaddr_csr_write.exit
  %i.cq = load i32, ptr @qemu_loglevel, align 4
  %i.cr = and i32 %i.cq, 2048
  %.not51 = icmp eq i32 %i.cr, 0
  br i1 %.not51, label %bb.z, label %bb.y, !prof !15

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.4) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %bb.h, %bb.v, %bb.w, %bb.u, %bb.y, %bb.x, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @pmpaddr_csr_read(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15830
  %i.b = load i8, ptr %i.a, align 2
  %i.c = zext i8 %i.b to i32
  %i.d = icmp ult i32 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 13136
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i64, ptr %i.g, align 16             ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 15832
  %.val = load i32, ptr %i.i, align 8
  %i.j = lshr i32 %.val, 2
  %i.k = tail call range(i32 0, 30) i32 @llvm.cttz.i32(i32 %i.j, i1 true) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i8, ptr %i.l, align 8
  %i.n = lshr i8 %i.m, 3
  %i.o = and i8 %i.n, 3
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 3, label %bb.e
    i8 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.k to i64
  %.neg = shl nsw i64 -1, %i.p
  %i.q = and i64 %.neg, %i.h
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = icmp samesign ugt i32 %i.k, 1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = sub nuw nsw i32 65, %i.k
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 -1, %i.t
  %i.v = or i64 %i.u, %i.h
  br label %bb.g

default.unreachable:                              ; preds = %bb.b
end_hunk_0
