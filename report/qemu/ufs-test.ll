Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ufs-test?download=true
inline.NumInlined: 201
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ufs_init:bb.a

ufs_send_nop_out.exit:                            ; preds = %alloc_cmd_desc_slot.exit.i
  %i.gj = xor i64 %i.fk, -1
  %i.gk = and i64 %i.gh, %i.gj
  store i64 %i.gk, ptr %i.fm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.gl = icmp eq i32 %i.gd, 0
  br i1 %i.gl, label %bb.w, label %bb.v

bb.v:                                             ; preds = %ufs_send_nop_out.exit
  %i.gm = uitofp nneg i32 %i.gd to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 555, ptr noundef nonnull @__func__.ufs_init, ptr noundef nonnull @.str.39, x86_fp80 noundef %i.gm, ptr noundef nonnull @.str.31, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #12
  br label %bb.w

bb.w:                                             ; preds = %ufs_send_nop_out.exit, %bb.v
  %i.gn = call fastcc i32 @ufs_send_query(ptr noundef nonnull %0, i8 noundef zeroext -127, i8 noundef zeroext 6, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %4) ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gp = uitofp nneg i32 %i.gn to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 561, ptr noundef nonnull @__func__.ufs_init, ptr noundef nonnull @.str.39, x86_fp80 noundef %i.gp, ptr noundef nonnull @.str.31, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1             ; 2 uses
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gt = uitofp i8 %i.gr to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 562, ptr noundef nonnull @__func__.ufs_init, ptr noundef nonnull @.str.72, x86_fp80 noundef %i.gt, ptr noundef nonnull @.str.31, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.gu = call i64 @g_get_monotonic_time() #12
  %i.gv = add i64 %i.gu, 10000000
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ag, %bb.aa
  %i.gx = load ptr, ptr %i.b, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 128
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = call i64 @qtest_clock_step(ptr noundef %i.gz, i64 noundef 100) #12 ; 0 uses
  %i.hb = call fastcc i32 @ufs_send_query(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %4) ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hd = uitofp nneg i32 %i.hb to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 572, ptr noundef nonnull @__func__.ufs_init, ptr noundef nonnull @.str.39, x86_fp80 noundef %i.hd, ptr noundef nonnull @.str.31, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.he = load i8, ptr %i.gq, align 1             ; 2 uses
  %i.hf = icmp eq i8 %i.he, 0
  br i1 %i.hf, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = uitofp i8 %i.he to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 574, ptr noundef nonnull @__func__.ufs_init, ptr noundef nonnull @.str.72, x86_fp80 noundef %i.hg, ptr noundef nonnull @.str.31, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #12
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.hh = load i32, ptr %i.gw, align 1
  %.not292 = icmp eq i32 %i.hh, 0
  br i1 %.not292, label %.critedge2.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = call i64 @g_get_monotonic_time() #12
  %i.hj = icmp ult i64 %i.hi, %i.gv
  br i1 %i.hj, label %bb.ab, label %.critedge2, !llvm.loop !29

.critedge2:                                       ; preds = %bb.ag
  %.pre = load i32, ptr %i.gw, align 1            ; 2 uses
  %i.hk = icmp eq i32 %.pre, 0
  br i1 %i.hk, label %.critedge2.thread, label %bb.ah

bb.ah:                                            ; preds = %.critedge2
  %i.hl = call noundef i32 @llvm.bswap.i32(i32 %.pre)
  %i.hm = uitofp i32 %i.hl to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 577, ptr noundef nonnull @__func__.ufs_init, ptr noundef nonnull @.str.73, x86_fp80 noundef %i.hm, ptr noundef nonnull @.str.31, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #12
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.af, %.critedge2, %bb.ah
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.hn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 256) i32 @ufs_send_scsi_command(ptr noundef %0, i8 noundef zeroext range(i8 0, 2) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 0, 4294967296) %6, ptr noundef nonnull %7) unnamed_addr #0 {
bb.a:
  %8 = alloca [10 x %struct.UfshcdSgEntry], align 16 ; 10 uses
  %9 = alloca %struct.UtpUpiuReq, align 1         ; 10 uses
  %10 = alloca %struct.UtpTransferReqDesc, align 4 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %8, i8 0, i64 160, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = tail call i64 @find_next_zero_bit(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 0) #12 ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = icmp eq i32 %i.c, 32
  br i1 %i.d, label %bb.b, label %alloc_cmd_desc_slot.exit

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 79, ptr noundef nonnull @__func__.alloc_cmd_desc_slot, ptr noundef null) #15
  unreachable

alloc_cmd_desc_slot.exit:                         ; preds = %bb.a
  %sext.i = shl i64 %i.b, 32
  %i.e = ashr exact i64 %sext.i, 32
  %i.f = and i64 %i.b, 63
  %i.g = shl nuw i64 1, %i.f                      ; 3 uses
  %i.h = lshr i64 %i.e, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.h ; 4 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, %i.g
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i32 %i.c, 12
  %i.o = sext i32 %i.n to i64
  %i.p = add i64 %i.m, %i.o                       ; 4 uses
  %i.q = add i64 %i.p, 2048
  %i.r = icmp ugt i64 %4, 40959
  br i1 %i.r, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %alloc_cmd_desc_slot.exit
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 350, ptr noundef nonnull @__func__.ufs_send_scsi_command, ptr noundef nonnull @.str.76) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %alloc_cmd_desc_slot.exit
  %i.s = icmp samesign ugt i64 %6, 40959
  br i1 %i.s, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 351, ptr noundef nonnull @__func__.ufs_send_scsi_command, ptr noundef nonnull @.str.77) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not = icmp eq i64 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not81 = icmp eq ptr %3, null
  br i1 %.not81, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 353, ptr noundef nonnull @__func__.ufs_send_scsi_command, ptr noundef nonnull @.str.78) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.t = trunc i64 %4 to i32
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  %.not78 = icmp eq i64 %6, 0
  br i1 %.not78, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not79 = icmp eq ptr %5, null
  br i1 %.not79, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 358, ptr noundef nonnull @__func__.ufs_send_scsi_command, ptr noundef nonnull @.str.79) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.u = trunc nuw i64 %6 to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.i
  %.072 = phi i32 [ %i.t, %bb.i ], [ %i.u, %bb.m ], [ 0, %bb.j ] ; 2 uses
  %.070 = phi i32 [ 318767104, %bb.i ], [ 352321536, %bb.m ], [ 285212672, %bb.j ]
  %.0 = phi i8 [ 32, %bb.i ], [ 64, %bb.m ], [ 0, %bb.j ]
  %i.v = add i32 %.072, 4095                      ; 2 uses
  %i.w = lshr i32 %i.v, 12                        ; 3 uses
  %i.x = trunc i32 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8
  tail call void @qtest_memset(ptr noundef %i.ab, i64 noundef %i.ad, i8 noundef zeroext 0, i64 noundef 40960) #12
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = load ptr, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load i64, ptr %i.ac, align 8
  tail call void @qtest_memwrite(ptr noundef %i.ag, i64 noundef %i.ah, ptr noundef %3, i64 noundef %4) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = and i32 %i.w, 65535                     ; 6 uses
  %.not87 = icmp eq i32 %i.ai, 0
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.aj = load i64, ptr %i.ac, align 8            ; 5 uses
  %i.ak = shl nuw nsw i32 %i.ai, 12
  %i.al = sub i32 %i.v, %i.ak                     ; 2 uses
  %.not96 = icmp eq i32 %i.ai, 1
  br i1 %.not96, label %._crit_edge.loopexit.peel.begin.thread, label %.lr.ph.split

._crit_edge.loopexit.peel.begin.thread:           ; preds = %.lr.ph
  store i64 %i.aj, ptr %8, align 16
  br label %._crit_edge.loopexit.peel.next

.lr.ph.split:                                     ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.ai to i64
  %i.am = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i32 %i.ai, 2
  br i1 %i.an, label %.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %i.am, -2
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.1, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.1, %bb.q ]
  %i.ao = shl nuw nsw i64 %indvars.iv, 4
  %i.ap = add i64 %i.aj, %i.ao
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %indvars.iv ; 2 uses
  store i64 %i.ap, ptr %i.aq, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 4095, ptr %i.ar, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = shl nuw nsw i64 %indvars.iv.next, 4
  %i.at = add i64 %i.aj, %i.as
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %indvars.iv.next ; 2 uses
  store i64 %i.at, ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 4095, ptr %i.av, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.peel.begin.unr-lcssa, label %bb.q, !llvm.loop !31

._crit_edge.loopexit.peel.begin.unr-lcssa:        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.peel.begin, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.peel.begin.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.1, %._crit_edge.loopexit.peel.begin.unr-lcssa ] ; 3 uses
  %lcmp.mod99 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.aw = shl nuw nsw i64 %indvars.iv.epil.init, 4
  %i.ax = add i64 %i.aj, %i.aw
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %indvars.iv.epil.init ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 4095, ptr %i.az, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1
  br label %._crit_edge.loopexit.peel.begin

._crit_edge.loopexit.peel.begin:                  ; preds = %._crit_edge.loopexit.peel.begin.unr-lcssa, %.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %._crit_edge.loopexit.peel.begin.unr-lcssa ], [ %indvars.iv.next.epil, %.epil.preheader ] ; 3 uses
  %11 = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  %12 = add nuw nsw i32 %11, 1
  %i.ba = icmp eq i32 %12, %i.ai
  %i.bb = shl nuw nsw i64 %indvars.iv.next.lcssa, 4
  %i.bc = add i64 %i.aj, %i.bb
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %indvars.iv.next.lcssa ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 16
  %spec.select.a = select i1 %i.ba, i32 %i.al, i32 4095
  br label %._crit_edge.loopexit.peel.next

._crit_edge.loopexit.peel.next:                   ; preds = %._crit_edge.loopexit.peel.begin, %._crit_edge.loopexit.peel.begin.thread
  %i.be = phi ptr [ %i.bd, %._crit_edge.loopexit.peel.begin ], [ %8, %._crit_edge.loopexit.peel.begin.thread ]
  %.sink90 = phi i32 [ %spec.select.a, %._crit_edge.loopexit.peel.begin ], [ %i.al, %._crit_edge.loopexit.peel.begin.thread ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 %.sink90, ptr %i.bf, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.peel.next, %bb.p
  %i.bg = load ptr, ptr %i.y, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = load ptr, ptr %i.bh, align 8
  %.mask = shl nuw nsw i32 %i.w, 4
  %i.bj = and i32 %.mask, 1048560
  %i.bk = zext nneg i32 %i.bj to i64
  call void @qtest_memwrite(ptr noundef %i.bi, i64 noundef %i.q, ptr noundef nonnull %8, i64 noundef %i.bk) #12
  %i.bl = add i64 %i.p, 1024
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(284) %i.bm, i8 0, i64 284, i1 false)
  store i8 1, ptr %9, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 1
  store i8 %.0, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i8 %1, ptr %i.bo, align 1
  %i.bp = trunc i64 %i.b to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 3
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = call noundef i32 @llvm.bswap.i32(i32 %.072)
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.br, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bt, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 noundef 16, i1 noundef false) #12
  %i.bu = load ptr, ptr %i.y, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.bw = load ptr, ptr %i.bv, align 8
  call void @qtest_memwrite(ptr noundef %i.bw, i64 noundef %i.p, ptr noundef nonnull %9, i64 noundef 288) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i8 0, i64 12, i1 false)
  store i32 %.070, ptr %10, align 4, !alias.scope !35
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 15, ptr %i.by, align 4, !alias.scope !35
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.p, ptr %i.bz, align 4, !alias.scope !35
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 26
  store i16 256, ptr %i.ca, align 2, !alias.scope !35
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 288, ptr %i.cb, align 4, !alias.scope !35
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 30
  store i16 512, ptr %i.cc, align 2, !alias.scope !35
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i16 %i.x, ptr %i.cd, align 4, !alias.scope !35
  %i.ce = call fastcc i32 @ufs_send_transfer_request_sync(ptr noundef nonnull %0, ptr noundef %10)
  %i.cf = load ptr, ptr %i.y, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 128
  %i.ch = load ptr, ptr %i.cg, align 8
  call void @qtest_memread(ptr noundef %i.ch, i64 noundef %i.bl, ptr noundef nonnull %7, i64 noundef 288) #12
  %.not84 = icmp eq i64 %6, 0
  br i1 %.not84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.ci = load ptr, ptr %i.y, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 128
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load i64, ptr %i.ac, align 8
  call void @qtest_memread(ptr noundef %i.ck, i64 noundef %i.cl, ptr noundef %5, i64 noundef %6) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.cm = load i64, ptr %i.i, align 8             ; 2 uses
  %i.cn = and i64 %i.cm, %i.g
  %.not.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i, label %bb.t, label %release_cmd_desc_slot.exit

bb.t:                                             ; preds = %bb.s
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 88, ptr noundef nonnull @__func__.release_cmd_desc_slot, ptr noundef null) #15
  unreachable

release_cmd_desc_slot.exit:                       ; preds = %bb.s
  %i.co = xor i64 %i.g, -1
  %i.cp = and i64 %i.cm, %i.co
  store i64 %i.cp, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret i32 %i.ce
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ufs_exit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.e = load i8, ptr %i.d, align 1, !range !9, !noundef !10
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8
  tail call void @guest_free(ptr noundef %1, i64 noundef %i.l) #12
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8
  tail call void @guest_free(ptr noundef %1, i64 noundef %i.n) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.g, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.c, label %.loopexit, !llvm.loop !36

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load i64, ptr %i.r, align 8
  tail call void @guest_free(ptr noundef %1, i64 noundef %i.s) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load i64, ptr %i.t, align 8
  tail call void @guest_free(ptr noundef %1, i64 noundef %i.u) #12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load i64, ptr %i.v, align 8
  tail call void @guest_free(ptr noundef %1, i64 noundef %i.w) #12
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load i8, ptr %i.aa, align 8
  tail call void @qpci_iounmap(ptr noundef nonnull %i.x, i64 %i.z, i8 %i.ab) #12
  ret void
}

declare i64 @g_get_monotonic_time() local_unnamed_addr #1

declare i64 @qtest_clock_step(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @g_assertion_message(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @guest_alloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 256) i32 @ufs_send_query(ptr noundef %0, i8 noundef zeroext range(i8 -127, 2) %1, i8 noundef zeroext range(i8 1, 9) %2, i8 noundef zeroext range(i8 0, 58) %3, i8 noundef zeroext range(i8 -60, 6) %4, i8 noundef zeroext range(i8 0, 2) %5, i32 noundef range(i32 -1, 257) %6, ptr noundef nonnull %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.UtpUpiuReq, align 1         ; 13 uses
  %9 = alloca %struct.UtpTransferReqDesc, align 4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = tail call i64 @find_next_zero_bit(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 0) #12 ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = icmp eq i32 %i.c, 32
  br i1 %i.d, label %bb.b, label %alloc_cmd_desc_slot.exit

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 79, ptr noundef nonnull @__func__.alloc_cmd_desc_slot, ptr noundef null) #15
  unreachable

alloc_cmd_desc_slot.exit:                         ; preds = %bb.a
  %sext.i = shl i64 %i.b, 32
  %i.e = ashr exact i64 %sext.i, 32
  %i.f = and i64 %i.b, 63
  %i.g = shl nuw i64 1, %i.f                      ; 3 uses
  %i.h = lshr i64 %i.e, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.h ; 4 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, %i.g
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i32 %i.c, 12
  %i.o = sext i32 %i.n to i64
  %i.p = add i64 %i.m, %i.o                       ; 3 uses
  %i.q = add i64 %i.p, 1024
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 1
end_hunk_0
