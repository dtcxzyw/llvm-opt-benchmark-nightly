Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xhci?download=true
inline.NumInlined: 585
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@xhci_configure_endpoint:bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.cf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 64         ; 9 uses
  %i.b = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #20 ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 400
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 1
  %.not77 = icmp eq i32 %i.e, 0
  br i1 %.not77, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.b) #20
  br label %bb.cf

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 1360       ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr [8 x i8], ptr %i.g, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  %i.m = load ptr, ptr %2, align 8
  %i.n = tail call ptr @xhci_get_input_control_ctx(ptr noundef %i.m) #20 ; 10 uses
  %.not78 = icmp eq ptr %i.n, null
  br i1 %.not78, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.b) #20
  %.val87 = load ptr, ptr %0, align 8
  %i.o = load ptr, ptr %.val87, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.o, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.xhci_configure_endpoint) #21
  br label %bb.cf

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 440        ; 5 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = and i64 %i.q, 32
  %.not79 = icmp eq i64 %i.r, 0
  br i1 %.not79, label %bb.h, label %xhci_count_num_new_endpoints.exit.i

xhci_count_num_new_endpoints.exit.i:              ; preds = %bb.f
  %.val88 = load i32, ptr %i.n, align 4
  %i.s = getelementptr i8, ptr %i.n, i64 4
  %.val89 = load i32, ptr %i.s, align 4           ; 2 uses
  %i.t = lshr i32 %.val89, 2
  %i.u = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.v = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 1073741824) %i.t, i64 %i.u) #23, !srcloc !45 ; 2 uses
  %i.w = extractvalue { i32, i64 } %i.v, 0
  %i.x = extractvalue { i32, i64 } %i.v, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.x)
  %i.y = and i32 %.val89, %.val88
  %i.z = lshr i32 %i.y, 2
  %i.aa = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.ab = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 1073741824) %i.z, i64 %i.aa) #23, !srcloc !45 ; 2 uses
  %i.ac = extractvalue { i32, i64 } %i.ab, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ac)
  %i.ad = extractvalue { i32, i64 } %i.ab, 0
  %i.ae = sub i32 %i.w, %i.ad                     ; 3 uses
  %i.af = getelementptr i8, ptr %0, i64 448       ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8            ; 2 uses
  %i.ah = add i32 %i.ag, %i.ae                    ; 3 uses
  %i.ai = getelementptr i8, ptr %0, i64 452
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = icmp ugt i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.g, label %xhci_reserve_host_resources.exit.thread

xhci_reserve_host_resources.exit.thread:          ; preds = %xhci_count_num_new_endpoints.exit.i
  store i32 %i.ah, ptr %i.af, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.63, i32 noundef %i.ae, i32 noundef %i.ah) #20
  %.pre = load i64, ptr %i.p, align 8
  br label %bb.h

bb.g:                                             ; preds = %xhci_count_num_new_endpoints.exit.i
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.62, i32 noundef %i.ag, i32 noundef %i.ae, i32 noundef %i.aj) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.b) #20
  %.val86 = load ptr, ptr %0, align 8
  %i.al = load ptr, ptr %.val86, align 8
  %i.am = load i32, ptr %i.af, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.al, ptr noundef nonnull @.str.34, i32 noundef %i.am) #21
  br label %bb.cf

bb.h:                                             ; preds = %xhci_reserve_host_resources.exit.thread, %bb.f
  %i.an = phi i64 [ %.pre, %xhci_reserve_host_resources.exit.thread ], [ %i.q, %bb.f ]
  %i.ao = and i64 %i.an, 256
  %i.ap = icmp eq i64 %i.ao, 0
  %or.cond = or i1 %3, %i.ap
  br i1 %or.cond, label %bb.az, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ar = getelementptr i8, ptr %i.l, i64 5008    ; 9 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.as, i64 688
  %i.au = load i32, ptr %i.at, align 8
  %i.av = icmp eq i32 %i.au, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i100 = phi i1 [ %i.av, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.aw = tail call ptr @xhci_get_input_control_ctx(ptr noundef %i.aq) #20 ; 6 uses
  %.not79.i = icmp eq ptr %i.aw, null
  br i1 %.not79.i, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(744) %5, i8 0, i64 744, i1 false), !annotation !46
  %i.ax = getelementptr i8, ptr %i.aw, i64 4      ; 3 uses
  %i.ay = getelementptr i8, ptr %i.l, i64 32      ; 5 uses
  %i.az = getelementptr i8, ptr %i.l, i64 5000    ; 6 uses
  %i.ba = getelementptr i8, ptr %i.l, i64 8       ; 6 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val.i = load ptr, ptr %0, align 8
  %i.bb = load ptr, ptr %.val.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.bb, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.xhci_reserve_bandwidth) #21
  br label %.loopexit

bb.m:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 6 uses
  %i.bc = load i32, ptr %i.ax, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.be = shl nuw i32 2, %i.bd                    ; 2 uses
  %i.bf = and i32 %i.be, %i.bc
  %.not86.i = icmp eq i32 %i.bf, 0
  %.pre.i = load i32, ptr %i.aw, align 4
  %i.bg = and i32 %.pre.i, %i.be
  %.not87.i = icmp eq i32 %i.bg, 0                ; 2 uses
  br i1 %.not86.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %.not87.i, label %bb.q, label %.thread122.i

.thread122.i:                                     ; preds = %bb.n
  %i.bh = getelementptr [24 x i8], ptr %5, i64 %indvars.iv.i
  %i.bi = getelementptr [160 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 92     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.bh, ptr noundef align 4 dereferenceable(24) %i.bj, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bk = getelementptr [24 x i8], ptr %5, i64 %indvars.iv.i
  %i.bl = getelementptr [160 x i8], ptr %i.ay, i64 %indvars.iv.i ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 92     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.bk, ptr noundef align 4 dereferenceable(24) %i.bm, i64 24, i1 false)
  br i1 %.not87.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread122.i
  %i.bn = phi ptr [ %i.bj, %.thread122.i ], [ %i.bm, %bb.o ]
  %i.bo = phi ptr [ %i.bi, %.thread122.i ], [ %i.bl, %bb.o ]
  %i.bp = load ptr, ptr %i.az, align 8
  %i.bq = load ptr, ptr %i.ba, align 8
  %i.br = load ptr, ptr %i.ar, align 8
  tail call fastcc void @xhci_drop_ep_from_interval_table(ptr noundef %0, ptr noundef %i.bn, ptr noundef %i.bp, ptr noundef %i.bq, ptr noundef %i.bo, ptr noundef %i.br) #22, !srcloc !47
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 31
  br i1 %exitcond.not.i, label %bb.r, label %bb.m, !llvm.loop !48

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr i8, ptr %i.l, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void @xhci_update_bw_info(ptr noundef %0, ptr noundef %i.bt, ptr noundef nonnull %i.aw, ptr noundef %i.l) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %indvars.iv104.i = phi i64 [ 0, %bb.r ], [ %indvars.iv.next105.i, %bb.u ] ; 3 uses
  %i.bu = load i32, ptr %i.ax, align 4
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv104.i to i32
  %i.bw = shl nuw i32 2, %i.bv
  %i.bx = and i32 %i.bw, %i.bu
  %.not85.i = icmp eq i32 %i.bx, 0
  br i1 %.not85.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr [160 x i8], ptr %i.ay, i64 %indvars.iv104.i ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 92
  %i.ca = load ptr, ptr %i.az, align 8
  %i.cb = load ptr, ptr %i.ba, align 8
  %i.cc = load ptr, ptr %i.ar, align 8
  tail call fastcc void @xhci_add_ep_to_interval_table(ptr noundef %0, ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef %i.cb, ptr noundef %i.by, ptr noundef %i.cc) #22, !srcloc !49
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %exitcond107.not.i = icmp eq i64 %indvars.iv.next105.i, 31
  br i1 %exitcond107.not.i, label %bb.v, label %bb.s, !llvm.loop !50

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.ba, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 28
  %i.cf = load i32, ptr %i.ce, align 4
  %.fr.i.i = freeze i32 %i.cf                     ; 2 uses
  %i.cg = icmp ugt i32 %.fr.i.i, 4
  br i1 %i.cg, label %bb.w, label %xhci_get_block_size.exit.i.i

bb.w:                                             ; preds = %bb.v
  %.val124.i.i = load ptr, ptr %i.az, align 8     ; 2 uses
  %i.ch = getelementptr i8, ptr %.val124.i.i, i64 652
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = icmp ugt i32 %i.ci, 3515
  br i1 %i.cj, label %xhci_check_bw_table.exit.i.preheader, label %bb.x

xhci_check_bw_table.exit.i.preheader:             ; preds = %bb.an, %bb.ai, %xhci_check_tt_bw_table.exit.i.i, %bb.x, %bb.w
  br label %xhci_check_bw_table.exit.i

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr i8, ptr %.val124.i.i, i64 656
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = icmp ugt i32 %i.cl, 3515
  br i1 %i.cm, label %xhci_check_bw_table.exit.i.preheader, label %bb.ap

xhci_get_block_size.exit.i.i:                     ; preds = %bb.v
  %i.cn = icmp eq i32 %.fr.i.i, 3                 ; 6 uses
  %..i.i = select i1 %i.cn, i32 1607, i32 1285    ; 7 uses
  %.119.i.i = select i1 %i.cn, i32 322, i32 129   ; 2 uses
  %i.co = load ptr, ptr %i.az, align 8            ; 5 uses
  %i.cp = load ptr, ptr %i.ar, align 8
  %.not.i.i = icmp eq ptr %i.cp, null
  %i.cq = getelementptr i8, ptr %i.l, i64 4992    ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = add i32 %i.ct, 1
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.64, i32 noundef %i.cu) #20
  br i1 %.not.i.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %xhci_get_block_size.exit.i.i
  %i.cv = getelementptr i8, ptr %0, i64 352
  %.val126.i.i = load ptr, ptr %i.cv, align 8
  %.val127.i.i = load ptr, ptr %i.cq, align 8
  %.val128.i.i = load ptr, ptr %i.ar, align 8     ; 3 uses
  %i.cw = getelementptr i8, ptr %.val127.i.i, i64 8
  %.val127.val.i.i = load i32, ptr %i.cw, align 8
  %i.cx = sext i32 %.val127.val.i.i to i64
  %i.cy = getelementptr [688 x i8], ptr %.val126.i.i, i64 %i.cx
  br i1 %.0.i100, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cz = getelementptr i8, ptr %.val128.i.i, i64 688
  %i.da = load i32, ptr %i.cz, align 8
  %.not7.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not7.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr i8, ptr %i.cy, i64 672
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = add i32 %i.dc, -1483
  %i.de = icmp ult i32 %i.dd, -1608
  br i1 %i.de, label %xhci_check_tt_bw_table.exit.i.i, label %bb.ab

xhci_check_tt_bw_table.exit.i.i:                  ; preds = %bb.aa
  %.val123.i.i = load ptr, ptr %0, align 8
  %i.df = load ptr, ptr %.val123.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.df, ptr noundef nonnull @.str.65) #21
  br label %xhci_check_bw_table.exit.i.preheader

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.dg = getelementptr i8, ptr %.val128.i.i, i64 16
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = getelementptr i8, ptr %.val128.i.i, i64 20
  %i.dj = load i32, ptr %i.di, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.66, i32 noundef %i.dh, i32 noundef %i.dj) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %xhci_get_block_size.exit.i.i
  %i.dk = load i32, ptr %i.co, align 8            ; 2 uses
  %i.dl = select i1 %i.cn, i32 3, i32 0           ; 3 uses
  %i.dm = add i32 %i.dk, %i.dl
  %6 = lshr i32 %i.dm, 2
  %7 = select i1 %i.cn, i32 %6, i32 %i.dk
  %i.dn = getelementptr i8, ptr %i.co, i64 8      ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = getelementptr i8, ptr %i.co, i64 32
  %i.dq = load i32, ptr %i.dp, align 8
  %.not.i132.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i132.i.i, label %bb.ad, label %xhci_get_largest_overhead.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr i8, ptr %i.co, i64 36
  %i.ds = load i32, ptr %i.dr, align 4
  %.not2.i.i.i = icmp eq i32 %i.ds, 0
  %..i134.i.i = select i1 %.not2.i.i.i, i32 26, i32 20
  br label %xhci_get_largest_overhead.exit.i.i

xhci_get_largest_overhead.exit.i.i:               ; preds = %bb.ad, %bb.ac
  %.0.i133.i.i = phi i32 [ 128, %bb.ac ], [ %..i134.i.i, %bb.ad ]
  %i.dt = mul i32 %.0.i133.i.i, %i.do
  %i.du = add i32 %i.dt, %7                       ; 2 uses
  br i1 %i.cn, label %bb.ae, label %.critedge.i.i.preheader

.critedge.i.i.a:                                  ; preds = %xhci_get_largest_overhead.exit139.us.i.i
  %i.dv = trunc nuw nsw i64 %indvars.iv.i.i305 to i32
  %i.dw = shl nuw nsw i32 2, %i.dv
  %i.dx = add nsw i32 %i.dw, -1
  %i.dy = and i32 %i.ed, %i.dx                    ; 3 uses
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %.not117.i.i.a = icmp eq i32 %15, 0             ; 2 uses
  %spec.select121.i.i.a = select i1 %.not117.i.i.a, i32 %.1103.us.i.i, i32 %.0.i136.us.i.i
  %.2104.i.i.a = select i1 %i.dz, i32 0, i32 %spec.select121.i.i.a ; 2 uses
  %spec.select120.i.i.a = select i1 %.not117.i.i.a, i32 %spec.select.us.i.i, i32 %.098.us.i.i
  %.2107.i.i.a = select i1 %i.dz, i32 0, i32 %spec.select120.i.i.a ; 2 uses
  %exitcond.not.i.i.a = icmp eq i64 %indvars.iv.next167.i.i, 16
  br i1 %exitcond.not.i.i.a, label %bb.aj, label %bb.ae, !llvm.loop !51

bb.ae:                                            ; preds = %xhci_get_largest_overhead.exit.i.i, %.critedge.i.i.a
  %.095.i.i309 = phi i32 [ %18, %.critedge.i.i.a ], [ %i.du, %xhci_get_largest_overhead.exit.i.i ]
  %.0101.i.i308 = phi i32 [ %i.dy, %.critedge.i.i.a ], [ 0, %xhci_get_largest_overhead.exit.i.i ]
  %.0102.i.i307 = phi i32 [ %.2104.i.i.a, %.critedge.i.i.a ], [ 0, %xhci_get_largest_overhead.exit.i.i ]
  %.0105.i.i306 = phi i32 [ %.2107.i.i.a, %.critedge.i.i.a ], [ 0, %xhci_get_largest_overhead.exit.i.i ]
  %indvars.iv.i.i305 = phi i64 [ %indvars.iv.next167.i.i, %.critedge.i.i.a ], [ 1, %xhci_get_largest_overhead.exit.i.i ] ; 3 uses
  %i.ea = shl nuw nsw i32 %.0101.i.i308, 1
  %i.eb = getelementptr [40 x i8], ptr %i.dn, i64 %indvars.iv.i.i305 ; 4 uses
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = add i32 %i.ec, %i.ea                    ; 2 uses
  %i.ee = getelementptr i8, ptr %i.eb, i64 8      ; 2 uses
  %i.ef = load volatile ptr, ptr %i.ee, align 8   ; 2 uses
  %.not143.i.i.a = icmp eq ptr %i.ef, %i.ee
  br i1 %.not143.i.i.a, label %8, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eg = getelementptr i8, ptr %i.ef, i64 -16
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = add i32 %i.eh, %i.dl
  %i.ej = lshr i32 %i.ei, 2
  br label %8

8:                                                ; preds = %bb.af, %bb.ae
  %.098.us.i.i = phi i32 [ %i.ej, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %spec.select.us.i.i = tail call i32 @llvm.umax.i32(i32 %.098.us.i.i, i32 %.0105.i.i306) ; 2 uses
  %9 = getelementptr i8, ptr %i.eb, i64 24
  %10 = load i32, ptr %9, align 8
  %.not.i135.us.i.i = icmp eq i32 %10, 0
  br i1 %.not.i135.us.i.i, label %11, label %xhci_get_largest_overhead.exit139.us.i.i

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %i.eb, i64 28
  %13 = load i32, ptr %12, align 4
  %.not2.i137.us.i.i = icmp eq i32 %13, 0
  %..i138.us.i.i = select i1 %.not2.i137.us.i.i, i32 26, i32 20
  br label %xhci_get_largest_overhead.exit139.us.i.i

xhci_get_largest_overhead.exit139.us.i.i:         ; preds = %11, %8
  %.0.i136.us.i.i = phi i32 [ 128, %8 ], [ %..i138.us.i.i, %11 ] ; 2 uses
  %.1103.us.i.i = tail call i32 @llvm.umax.i32(i32 %.0.i136.us.i.i, i32 %.0102.i.i307) ; 2 uses
  %indvars.iv.next167.i.i = add nuw nsw i64 %indvars.iv.i.i305, 1 ; 3 uses
  %14 = trunc nuw nsw i64 %indvars.iv.next167.i.i to i32
  %15 = lshr i32 %i.ed, %14                       ; 2 uses
  %16 = add nuw nsw i32 %.1103.us.i.i, %spec.select.us.i.i
  %17 = mul i32 %16, %15
  %18 = add i32 %17, %.095.i.i309                 ; 4 uses
  %.not118.us.i.i = icmp ugt i32 %18, %..i.i
  br i1 %.not118.us.i.i, label %bb.ai, label %.critedge.i.i.a, !llvm.loop !51

.critedge.i.i:                                    ; preds = %xhci_get_largest_overhead.exit139.i.i
  %19 = trunc nuw nsw i64 %indvars.iv.i.i335 to i32
  %20 = shl nuw nsw i32 2, %19
  %21 = add nsw i32 %20, -1
  %22 = and i32 %27, %21                          ; 3 uses
  %23 = icmp eq i32 %22, 0                        ; 2 uses
  %.not117.i.i = icmp eq i32 %i.ep, 0             ; 2 uses
  %spec.select121.i.i = select i1 %.not117.i.i, i32 %.1103.i.i, i32 %.0.i136.i.i
  %.2104.i.i = select i1 %23, i32 0, i32 %spec.select121.i.i ; 2 uses
  %spec.select120.i.i = select i1 %.not117.i.i, i32 %spec.select.i.i, i32 %.098.i.i
  %.2107.i.i = select i1 %23, i32 0, i32 %spec.select120.i.i ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i.i, label %bb.aj, label %.critedge.i.i.preheader, !llvm.loop !51

.critedge.i.i.preheader:                          ; preds = %xhci_get_largest_overhead.exit.i.i, %.critedge.i.i
  %.095.i.i339 = phi i32 [ %i.es, %.critedge.i.i ], [ %i.du, %xhci_get_largest_overhead.exit.i.i ]
  %.0101.i.i338 = phi i32 [ %22, %.critedge.i.i ], [ 0, %xhci_get_largest_overhead.exit.i.i ]
  %.0102.i.i337 = phi i32 [ %.2104.i.i, %.critedge.i.i ], [ 0, %xhci_get_largest_overhead.exit.i.i ]
  %.0105.i.i336 = phi i32 [ %.2107.i.i, %.critedge.i.i ], [ 0, %xhci_get_largest_overhead.exit.i.i ]
  %indvars.iv.i.i335 = phi i64 [ %indvars.iv.next.i.i, %.critedge.i.i ], [ 1, %xhci_get_largest_overhead.exit.i.i ] ; 3 uses
  %24 = shl nuw nsw i32 %.0101.i.i338, 1
  %25 = getelementptr [40 x i8], ptr %i.dn, i64 %indvars.iv.i.i335 ; 4 uses
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, %24                          ; 2 uses
  %28 = getelementptr i8, ptr %25, i64 8          ; 2 uses
  %29 = load volatile ptr, ptr %28, align 8       ; 2 uses
  %.not143.i.i = icmp eq ptr %29, %28
  br i1 %.not143.i.i, label %bb.ag, label %30

30:                                               ; preds = %.critedge.i.i.preheader
  %31 = getelementptr i8, ptr %29, i64 -16
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %i.dl
  br label %bb.ag

bb.ag:                                            ; preds = %30, %.critedge.i.i.preheader
  %.098.i.i = phi i32 [ %33, %30 ], [ 0, %.critedge.i.i.preheader ] ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.umax.i32(i32 %.098.i.i, i32 %.0105.i.i336) ; 2 uses
  %i.ek = getelementptr i8, ptr %25, i64 24
  %i.el = load i32, ptr %i.ek, align 8
  %.not.i135.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i135.i.i, label %bb.ah, label %xhci_get_largest_overhead.exit139.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.em = getelementptr i8, ptr %25, i64 28
  %i.en = load i32, ptr %i.em, align 4
  %.not2.i137.i.i = icmp eq i32 %i.en, 0
  %..i138.i.i = select i1 %.not2.i137.i.i, i32 26, i32 20
  br label %xhci_get_largest_overhead.exit139.i.i

xhci_get_largest_overhead.exit139.i.i:            ; preds = %bb.ah, %bb.ag
  %.0.i136.i.i = phi i32 [ 128, %bb.ag ], [ %..i138.i.i, %bb.ah ] ; 2 uses
  %.1103.i.i = tail call i32 @llvm.umax.i32(i32 %.0.i136.i.i, i32 %.0102.i.i337) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i335, 1 ; 3 uses
  %i.eo = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.ep = lshr i32 %27, %i.eo                     ; 2 uses
  %i.eq = add i32 %.1103.i.i, %spec.select.i.i
  %i.er = mul i32 %i.eq, %i.ep
  %i.es = add i32 %i.er, %.095.i.i339             ; 4 uses
  %.not118.i.i = icmp ugt i32 %i.es, %..i.i
  br i1 %.not118.i.i, label %bb.ai, label %.critedge.i.i, !llvm.loop !51

bb.ai:                                            ; preds = %xhci_get_largest_overhead.exit139.i.i, %xhci_get_largest_overhead.exit139.us.i.i
  %.us-phi153.i.i = phi i32 [ %18, %xhci_get_largest_overhead.exit139.us.i.i ], [ %i.es, %xhci_get_largest_overhead.exit139.i.i ]
  %.val122.i.i = load ptr, ptr %0, align 8
  %i.et = load ptr, ptr %.val122.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.et, ptr noundef nonnull @.str.67, i32 noundef %.us-phi153.i.i, i32 noundef %..i.i) #21
  br label %xhci_check_bw_table.exit.i.preheader

bb.aj:                                            ; preds = %.critedge.i.i, %.critedge.i.i.a
  %.us-phi.i.i = phi i32 [ %.2107.i.i.a, %.critedge.i.i.a ], [ %.2107.i.i, %.critedge.i.i ]
  %.us-phi148.i.i = phi i32 [ %.2104.i.i.a, %.critedge.i.i.a ], [ %.2104.i.i, %.critedge.i.i ]
  %.us-phi149.i.i = phi i32 [ %i.dy, %.critedge.i.i.a ], [ %22, %.critedge.i.i ]
  %.us-phi150.i.i = phi i32 [ %18, %.critedge.i.i.a ], [ %i.es, %.critedge.i.i ]
  %.not114.i.i = icmp eq i32 %.us-phi149.i.i, 0
  %i.eu = add i32 %.us-phi148.i.i, %.us-phi.i.i
  %i.ev = select i1 %.not114.i.i, i32 0, i32 %i.eu
  %.196.i.i = add i32 %i.ev, %.us-phi150.i.i      ; 3 uses
  %i.ew = load ptr, ptr %i.ar, align 8
  %.not115.i.i = icmp eq ptr %i.ew, null
  br i1 %.not115.i.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load ptr, ptr %i.ba, align 8
  %i.ey = getelementptr i8, ptr %i.ex, i64 28
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = icmp eq i32 %i.ez, 3
  br i1 %i.fa, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fb = getelementptr i8, ptr %0, i64 352
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load ptr, ptr %i.cq, align 8
  %i.fe = getelementptr i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr [688 x i8], ptr %i.fc, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  %i.fj = load i32, ptr %i.fi, align 8
  %i.fk = mul i32 %i.fj, 125
  %i.fl = add i32 %i.fk, %.196.i.i
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.297.i.i = phi i32 [ %.196.i.i, %bb.aj ], [ %i.fl, %bb.al ], [ %.196.i.i, %bb.ak ] ; 2 uses
  %i.fm = add i32 %.297.i.i, %.119.i.i            ; 4 uses
  %i.fn = sub i32 %..i.i, %i.fm
  %i.fo = mul i32 %i.fn, 100                      ; 2 uses
  %34 = udiv i32 %i.fo, 1607
  %i.fp = udiv i32 %i.fo, 1285
  %35 = select i1 %i.cn, i32 %34, i32 %i.fp
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.68, i32 noundef %.297.i.i, i32 noundef %..i.i, i32 noundef %.119.i.i, i32 noundef %35) #20
  %i.fq = icmp ugt i32 %i.fm, %..i.i
  br i1 %i.fq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.val.i.i = load ptr, ptr %0, align 8
  %i.fr = load ptr, ptr %.val.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.fr, ptr noundef nonnull @.str.67, i32 noundef %i.fm, i32 noundef %..i.i) #21
  br label %xhci_check_bw_table.exit.i.preheader

bb.ao:                                            ; preds = %bb.am
  %i.fs = getelementptr i8, ptr %i.co, i64 648
  store i32 %i.fm, ptr %i.fs, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.x
  %i.ft = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i89.i = icmp eq ptr %i.ft, null
  br i1 %.not.i89.i, label %xhci_reserve_bandwidth.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = getelementptr i8, ptr %0, i64 352
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = getelementptr i8, ptr %i.l, i64 4992
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 8
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr [688 x i8], ptr %i.fv, i64 %i.ga ; 2 uses
  %i.gc = getelementptr i8, ptr %i.ft, i64 688
  %i.gd = load i32, ptr %i.gc, align 8
  %.not10.i.i = icmp eq i32 %i.gd, 0              ; 2 uses
  br i1 %.0.i100, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not10.i.i, label %xhci_reserve_bandwidth.exit.thread, label %.sink.split.i.i

bb.as:                                            ; preds = %bb.aq
  br i1 %.not10.i.i, label %.sink.split.i.i, label %xhci_reserve_bandwidth.exit.thread

.sink.split.i.i:                                  ; preds = %bb.as, %bb.ar
  %.sink17.i.i = phi i32 [ 1, %bb.ar ], [ -1, %bb.as ]
  %.sink14.i.i = phi i32 [ 125, %bb.ar ], [ -125, %bb.as ]
  %i.ge = getelementptr i8, ptr %i.gb, i64 16     ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = add i32 %i.gf, %.sink17.i.i
  store i32 %i.gg, ptr %i.ge, align 8
  %i.gh = getelementptr i8, ptr %i.gb, i64 672    ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = add i32 %i.gi, %.sink14.i.i
  store i32 %i.gj, ptr %i.gh, align 8
  br label %xhci_reserve_bandwidth.exit.thread

xhci_check_bw_table.exit.i:                       ; preds = %xhci_check_bw_table.exit.i.preheader, %bb.aw
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %bb.aw ], [ 0, %xhci_check_bw_table.exit.i.preheader ] ; 5 uses
  %i.gk = load i32, ptr %i.ax, align 4
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1 ; 2 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv108.i to i32
  %i.gm = shl nuw i32 2, %i.gl                    ; 3 uses
  %i.gn = and i32 %i.gm, %i.gk
  %.not81.i = icmp eq i32 %i.gn, 0
  br i1 %.not81.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %xhci_check_bw_table.exit.i
  %i.go = load i32, ptr %i.aw, align 4
  %i.gp = and i32 %i.go, %i.gm
  %.not82.i = icmp eq i32 %i.gp, 0
  br i1 %.not82.i, label %bb.aw, label %.thread.i

bb.au:                                            ; preds = %xhci_check_bw_table.exit.i
  %i.gq = getelementptr [160 x i8], ptr %i.ay, i64 %indvars.iv108.i ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 92
  %i.gs = load ptr, ptr %i.az, align 8
  %i.gt = load ptr, ptr %i.ba, align 8
  %i.gu = load ptr, ptr %i.ar, align 8
  tail call fastcc void @xhci_drop_ep_from_interval_table(ptr noundef %0, ptr noundef %i.gr, ptr noundef %i.gs, ptr noundef %i.gt, ptr noundef %i.gq, ptr noundef %i.gu) #22, !srcloc !52
  br label %.thread.i

.thread.i:                                        ; preds = %bb.au, %bb.at
  %i.gv = getelementptr [160 x i8], ptr %i.ay, i64 %indvars.iv108.i ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 92     ; 2 uses
  %i.gx = getelementptr [24 x i8], ptr %5, i64 %indvars.iv108.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(24) %i.gw, ptr noundef align 8 dereferenceable(24) %i.gx, i64 24, i1 false)
  %i.gy = load i32, ptr %i.aw, align 4
  %i.gz = and i32 %i.gy, %i.gm
  %.not84.i = icmp eq i32 %i.gz, 0
  br i1 %.not84.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.thread.i
  %i.ha = load ptr, ptr %i.az, align 8
  %i.hb = load ptr, ptr %i.ba, align 8
  %i.hc = load ptr, ptr %i.ar, align 8
  tail call fastcc void @xhci_add_ep_to_interval_table(ptr noundef %0, ptr noundef %i.gw, ptr noundef %i.ha, ptr noundef %i.hb, ptr noundef %i.gv, ptr noundef %i.hc) #22, !srcloc !53
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread.i, %bb.at
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next109.i, 31
  br i1 %exitcond111.not.i, label %.loopexit, label %xhci_check_bw_table.exit.i, !llvm.loop !54

xhci_reserve_bandwidth.exit.thread:               ; preds = %.sink.split.i.i, %bb.ap, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.az

.loopexit:                                        ; preds = %bb.aw, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.hd = load i64, ptr %i.p, align 8
  %i.he = and i64 %i.hd, 32
  %.not82 = icmp eq i64 %i.he, 0
  br i1 %.not82, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  %.val94 = load i32, ptr %i.n, align 4
  %i.hf = getelementptr i8, ptr %i.n, i64 4
  %.val95 = load i32, ptr %i.hf, align 4
  tail call fastcc void @xhci_free_host_resources(ptr noundef %0, i32 %.val94, i32 %.val95) #22
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.loopexit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %i.b) #20
  %.val = load ptr, ptr %0, align 8
  %i.hg = load ptr, ptr %.val, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.hg, ptr noundef nonnull @.str.60) #21
  br label %bb.cf

bb.az:                                            ; preds = %xhci_reserve_bandwidth.exit.thread, %bb.h
  %i.hh = load ptr, ptr %2, align 8
  %i.hi = tail call ptr @xhci_get_slot_ctx(ptr noundef %0, ptr noundef %i.hh) #20
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, i64 8), i1 false) #19
          to label %trace_xhci_configure_endpoint_ctrl_ctx.exit [label %arch_test_bit.exit.i.i], !srcloc !11

arch_test_bit.exit.i.i:                           ; preds = %bb.az
  %i.hj = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !55
  %i.hk = zext i32 %i.hj to i64
  %i.hl = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.hk) #19, !srcloc !13 ; 2 uses
  %i.hm = icmp ult i8 %i.hl, 2
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = trunc nuw i8 %i.hl to i1
  br i1 %i.hn, label %bb.ba, label %trace_xhci_configure_endpoint_ctrl_ctx.exit

bb.ba:                                            ; preds = %arch_test_bit.exit.i.i
  %i.ho = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ho, ptr elementtype(i64) %i.ho) #19, !srcloc !14
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !15
  %i.hp = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, i64 56), align 8 ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i101, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hq = getelementptr i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = tail call i32 @__SCT__tp_func_xhci_configure_endpoint_ctrl_ctx(ptr noundef %i.hr, ptr noundef nonnull %i.n) #20 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !16
  %i.ht = getelementptr i8, ptr %i.ho, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ht, ptr elementtype(i64) %i.ht) #19, !srcloc !17
  br label %trace_xhci_configure_endpoint_ctrl_ctx.exit

trace_xhci_configure_endpoint_ctrl_ctx.exit:      ; preds = %bb.az, %arch_test_bit.exit.i.i, %bb.bc
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_configure_endpoint, i64 8), i1 false) #19
          to label %trace_xhci_configure_endpoint.exit [label %arch_test_bit.exit.i.i102], !srcloc !11

arch_test_bit.exit.i.i102:                        ; preds = %trace_xhci_configure_endpoint_ctrl_ctx.exit
  %i.hu = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !56
  %i.hv = zext i32 %i.hu to i64
  %i.hw = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.hv) #19, !srcloc !13 ; 2 uses
  %i.hx = icmp ult i8 %i.hw, 2
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = trunc nuw i8 %i.hw to i1
  br i1 %i.hy, label %bb.bd, label %trace_xhci_configure_endpoint.exit

bb.bd:                                            ; preds = %arch_test_bit.exit.i.i102
  %i.hz = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hz, ptr elementtype(i64) %i.hz) #19, !srcloc !14
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !15
  %i.ia = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_configure_endpoint, i64 56), align 8 ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i103, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = tail call i32 @__SCT__tp_func_xhci_configure_endpoint(ptr noundef %i.ic, ptr noundef %i.hi) #20 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !16
  %i.ie = getelementptr i8, ptr %i.hz, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ie, ptr elementtype(i64) %i.ie) #19, !srcloc !17
  br label %trace_xhci_configure_endpoint.exit

trace_xhci_configure_endpoint.exit:               ; preds = %trace_xhci_configure_endpoint_ctrl_ctx.exit, %arch_test_bit.exit.i.i102, %bb.bf
  %i.if = load ptr, ptr %2, align 8
  %i.ig = getelementptr i8, ptr %i.if, i64 16
  %i.ih = load i64, ptr %i.ig, align 8            ; 2 uses
  %i.ii = load i32, ptr %i.h, align 8             ; 2 uses
  br i1 %3, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %trace_xhci_configure_endpoint.exit
  %i.ij = tail call i32 @xhci_queue_configure_endpoint(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %i.ih, i32 noundef %i.ii, i1 noundef zeroext %4) #20
end_hunk_0
