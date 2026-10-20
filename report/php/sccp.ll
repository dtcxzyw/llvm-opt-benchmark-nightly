Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/sccp?download=true
inline.NumInlined: 69
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sccp_optimize_op_array:bb.a
  %.0.i.i = phi ptr [ %i.b, %bb.b ], [ %i.r, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 13 uses
  store ptr %.0.i.i, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i32 255, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i32 254, ptr %i.y, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !130
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %zend_arena_alloc.exit.i
  %.0.lcssa.i = phi i32 [ 0, %zend_arena_alloc.exit.i ], [ %i.ac, %.preheader.loopexit.i ] ; 2 uses
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !126
  %i.ae = icmp slt i32 %.0.lcssa.i, %i.ad
  br i1 %i.ae, label %.lr.ph22.i, label %sccp_context_init.exit

.lr.ph22.i:                                       ; preds = %.preheader.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ag = zext nneg i32 %.0.lcssa.i to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %zend_arena_alloc.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %zend_arena_alloc.exit.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 254, ptr %i.aj, align 8, !tbaa !38
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ak = load i32, ptr %i.z, align 4, !tbaa !130
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !114

bb.d:                                             ; preds = %bb.d, %.lr.ph22.i
  %indvars.iv24.i = phi i64 [ %i.ag, %.lr.ph22.i ], [ %indvars.iv.next25.i, %bb.d ] ; 3 uses
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %indvars.iv24.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = and i8 %i.aq, 12
  %.not.i32 = icmp eq i8 %i.ar, 0
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv24.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %..i = select i1 %.not.i32, i32 255, i32 254
  store i32 %..i, ptr %i.au, align 8, !tbaa !38
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %i.av = load i32, ptr %i.d, align 8, !tbaa !126
  %i.aw = trunc nuw i64 %indvars.iv.next25.i to i32
  %i.ax = icmp sgt i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.d, label %sccp_context_init.exit, !llvm.loop !115

sccp_context_init.exit:                           ; preds = %bb.d, %.preheader.i
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr @sccp_visit_instr, ptr %i.ay, align 8, !tbaa !131
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr @sccp_visit_phi, ptr %i.az, align 8, !tbaa !132
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr @sccp_mark_feasible_successors, ptr %i.ba, align 8, !tbaa !133
  call void @scdf_init(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %1, ptr noundef nonnull %2) #11
  call void @scdf_solve(ptr noundef nonnull %7, ptr noundef nonnull @.str) #11
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !134
  %i.bd = and i64 %i.bc, 536870912
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %sccp_context_init.exit
  %i.be = load i32, ptr %i.z, align 4, !tbaa !130 ; 2 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !126 ; 2 uses
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bi = sext i32 %i.be to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.o
  %i.bj = phi i32 [ %i.bf, %.lr.ph ], [ %i.ck, %bb.o ]
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.062 = phi i32 [ 1, %.lr.ph ], [ %.2, %bb.o ]  ; 2 uses
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %indvars.iv ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !38
  %switch = icmp ugt i8 %i.bn, -3
  br i1 %switch, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not28 = icmp eq i32 %.062, 0
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !136
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1, i64 18, i64 1, ptr %i.bo) #13 ; 0 uses
  call void @zend_dump_op_array_name(ptr noundef nonnull %1) #11
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !136
  %fwrite29 = call i64 @fwrite(ptr nonnull @.str.2, i64 3, i64 1, ptr %i.bp) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !136
  %i.br = trunc nsw i64 %indvars.iv to i32
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.3, i32 noundef %i.br) #14 ; 0 uses
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !51
  %i.bu = getelementptr inbounds [48 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !137
  call void @zend_dump_var(ptr noundef nonnull %1, i8 noundef zeroext 8, i32 noundef %i.bv) #11
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !136
  %fwrite30 = call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr %i.bw) #13 ; 0 uses
  %i.bx = load i8, ptr %i.bm, align 8, !tbaa !38  ; 2 uses
  switch i8 %i.bx, label %bb.n [
    i8 -1, label %bb.j
    i8 -2, label %bb.k
    i8 7, label %bb.l
    i8 -3, label %bb.l
    i8 -4, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !136
  %fwrite13.i = call i64 @fwrite(ptr nonnull @.str.8, i64 4, i64 1, ptr %i.by) #13 ; 0 uses
  br label %scp_dump_value.exit

bb.k:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !136
  %fwrite12.i = call i64 @fwrite(ptr nonnull @.str.9, i64 4, i64 1, ptr %i.bz) #13 ; 0 uses
  br label %scp_dump_value.exit

bb.l:                                             ; preds = %bb.i, %bb.i
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !136
  %i.cb = icmp eq i8 %i.bx, -3
  %i.cc = select i1 %i.cb, ptr @.str.11, ptr @.str.12
  %i.cd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ca, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.cc) #14 ; 0 uses
  %i.ce = load ptr, ptr %i.bl, align 8, !tbaa !38
  call void @zend_dump_ht(ptr noundef %i.ce) #11
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !136
  %fputc11.i = call i32 @fputc(i32 93, ptr %i.cf) ; 0 uses
  br label %scp_dump_value.exit

bb.m:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !136
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr %i.cg) #13 ; 0 uses
  %i.ch = load ptr, ptr %i.bl, align 8, !tbaa !38
  call void @zend_dump_ht(ptr noundef %i.ch) #11
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !136
  %fputc.i = call i32 @fputc(i32 125, ptr %i.ci)  ; 0 uses
  br label %scp_dump_value.exit

bb.n:                                             ; preds = %bb.i
  call void @zend_dump_const(ptr noundef nonnull %i.bl) #11
  br label %scp_dump_value.exit

scp_dump_value.exit:                              ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !136
  %fputc = call i32 @fputc(i32 10, ptr %i.cj)     ; 0 uses
  %.pre = load i32, ptr %i.d, align 8, !tbaa !126
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %scp_dump_value.exit
  %i.ck = phi i32 [ %.pre, %scp_dump_value.exit ], [ %i.bj, %bb.f ] ; 2 uses
  %.2 = phi i32 [ 0, %scp_dump_value.exit ], [ %.062, %bb.f ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next, %i.cl
  br i1 %i.cm, label %bb.f, label %.loopexit, !llvm.loop !116

.loopexit:                                        ; preds = %bb.o, %bb.e, %sccp_context_init.exit
  %i.cn = call i32 @scdf_remove_unreachable_blocks(ptr noundef nonnull %7) #11
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !55 ; 5 uses
  %i.cq = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !126 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 92 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !130
  %.not.not107.i = icmp sgt i32 %i.cs, %i.cu
  br i1 %.not.not107.i, label %.lr.ph111.i, label %replace_constant_operands.exit.thread

replace_constant_operands.exit.thread:            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %sccp_context_free.exit

.lr.ph111.i:                                      ; preds = %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 104 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.dc = sext i32 %i.cs to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.dl, %.lr.ph111.i
  %indvars.iv.i33 = phi i64 [ %i.dc, %.lr.ph111.i ], [ %indvars.iv.next.i34, %bb.dl ]
  %.082108.i = phi i32 [ 0, %.lr.ph111.i ], [ %.6.i, %bb.dl ] ; 6 uses
  %indvars.iv.next.i34 = add nsw i64 %indvars.iv.i33, -1 ; 12 uses
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !51
  %i.de = getelementptr inbounds [48 x i8], ptr %i.dd, i64 %indvars.iv.next.i34 ; 16 uses
  %i.df = load ptr, ptr %i.w, align 8, !tbaa !37  ; 3 uses
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.df, i64 %indvars.iv.next.i34 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !38  ; 2 uses
  %i.dj = and i8 %i.di, -2
  %switch.i = icmp eq i8 %i.dj, -4
  br i1 %switch.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !38 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !58 ; 2 uses
  %i.dm = icmp ne i32 %i.dl, 0
  call void @llvm.assume(i1 %i.dm)
  %i.dn = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !58
  %.not89.i.a = icmp eq i32 %i.dn, 0
  br i1 %.not89.i.a, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.dg, align 8, !tbaa !38
  call void @zend_array_destroy(ptr noundef %i.do) #11
  %.pre115.i = load ptr, ptr %i.w, align 8, !tbaa !37
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dp = phi ptr [ %.pre115.i, %bb.r ], [ %i.df, %bb.q ]
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %indvars.iv.next.i34
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 254, ptr %i.dr, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !59
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !60
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dz = load i8, ptr %i.dy, align 8
  %i.ea = trunc i8 %i.dz to i1
  br i1 %i.ea, label %.sink.split.i, label %bb.dl

bb.v:                                             ; preds = %bb.p
  %spec.select.i.i = icmp ult i8 %i.di, -2
  %.pre72 = trunc i64 %indvars.iv.next.i34 to i32 ; 4 uses
  br i1 %spec.select.i.i, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eb = call fastcc ptr @value_from_type_and_range(ptr noundef nonnull readonly %7, i32 noundef %.pre72, ptr noundef %6) ; 2 uses
  %.not.i35.a = icmp eq ptr %i.eb, null
  br i1 %.not.i35.a, label %bb.dl, label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %bb.w
  %.081.i = phi ptr [ %i.eb, %bb.w ], [ %i.dg, %bb.v ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !59 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1
  br i1 %i.ee, label %.lr.ph.i36, label %._crit_edge.i

.lr.ph.i36:                                       ; preds = %._crit_edge
  %i.ef = getelementptr inbounds nuw i8, ptr %.081.i, i64 8 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %try_replace_op2.exit.thread.i, %.lr.ph.i36
  %.0104.i = phi i32 [ %i.ed, %.lr.ph.i36 ], [ %.0.i.i3859, %try_replace_op2.exit.thread.i ] ; 3 uses
  %.2103.i = phi i32 [ %.082108.i, %.lr.ph.i36 ], [ %.4.i, %try_replace_op2.exit.thread.i ] ; 50 uses
  %i.eg = load ptr, ptr %i.cw, align 8, !tbaa !61
  %i.eh = zext nneg i32 %.0104.i to i64           ; 3 uses
  %i.ei = getelementptr inbounds nuw [36 x i8], ptr %i.eg, i64 %i.eh ; 11 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !63
  %i.ek = icmp eq i32 %i.ej, %.pre72
  br i1 %i.ek, label %bb.y, label %zend_ssa_next_use.exit.i

zend_ssa_next_use.exit.i:                         ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !64
  %i.en = icmp eq i32 %i.em, %.pre72
  %..i37 = select i1 %i.en, i64 28, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 %..i37
  %.0.i.i38 = load i32, ptr %i.eo, align 4, !tbaa !65
  %i.ep = load ptr, ptr %i.cx, align 8, !tbaa !66
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %i.eh
  br label %try_replace_op1.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 3 uses
  %.0.i.i3858 = load i32, ptr %i.er, align 4, !tbaa !65 ; 49 uses
  %i.es = load ptr, ptr %i.cx, align 8, !tbaa !66
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %i.eh ; 53 uses
  %i.eu = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 28 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !68
  switch i8 %i.ew, label %can_replace_op1.exit.thread.i.i [
    i8 34, label %try_replace_op1.exit.thread.i
    i8 35, label %try_replace_op1.exit.thread.i
    i8 -124, label %try_replace_op1.exit.thread.i
    i8 -123, label %try_replace_op1.exit.thread.i
    i8 36, label %try_replace_op1.exit.thread.i
    i8 37, label %try_replace_op1.exit.thread.i
    i8 -122, label %try_replace_op1.exit.thread.i
    i8 -121, label %try_replace_op1.exit.thread.i
    i8 22, label %try_replace_op1.exit.thread.i
    i8 30, label %try_replace_op1.exit.thread.i
    i8 23, label %try_replace_op1.exit.thread.i
    i8 24, label %try_replace_op1.exit.thread.i
    i8 32, label %try_replace_op1.exit.thread.i
    i8 26, label %try_replace_op1.exit.thread.i
    i8 27, label %try_replace_op1.exit.thread.i
    i8 28, label %try_replace_op1.exit.thread.i
    i8 29, label %try_replace_op1.exit.thread.i
    i8 84, label %try_replace_op1.exit.thread.i
    i8 87, label %try_replace_op1.exit.thread.i
    i8 96, label %try_replace_op1.exit.thread.i
    i8 93, label %try_replace_op1.exit.thread.i
    i8 85, label %try_replace_op1.exit.thread.i
    i8 88, label %try_replace_op1.exit.thread.i
    i8 97, label %try_replace_op1.exit.thread.i
    i8 94, label %try_replace_op1.exit.thread.i
    i8 -101, label %try_replace_op1.exit.thread.i
    i8 75, label %try_replace_op1.exit.thread.i
    i8 76, label %try_replace_op1.exit.thread.i
    i8 67, label %try_replace_op1.exit.thread.i
    i8 66, label %try_replace_op1.exit.thread.i
    i8 -71, label %try_replace_op1.exit.thread.i
    i8 -91, label %try_replace_op1.exit.thread.i
    i8 119, label %try_replace_op1.exit.thread.i
    i8 120, label %try_replace_op1.exit.thread.i
    i8 125, label %try_replace_op1.exit.thread.i
    i8 55, label %try_replace_op1.exit.thread.i
    i8 56, label %try_replace_op1.exit.thread.i
    i8 -73, label %try_replace_op1.exit.thread.i
    i8 -53, label %try_replace_op1.exit.thread.i
    i8 -88, label %try_replace_op1.exit.thread.i
    i8 -116, label %try_replace_op1.exit.thread.i
    i8 -103, label %try_replace_op1.exit.thread.i
    i8 -102, label %try_replace_op1.exit.thread.i
    i8 71, label %.split.i.i
    i8 72, label %.split.i.i
    i8 -96, label %.split21.i.i
    i8 124, label %try_replace_op1.exit.thread.i
    i8 -119, label %can_replace_op1.exit.i.i
  ]

.split.i.i:                                       ; preds = %bb.y, %bb.y
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !69
  %i.ez = and i32 %i.ey, 1
  %.not9.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not9.i.i.i, label %can_replace_op1.exit.thread.i.i, label %try_replace_op1.exit.thread.i

.split21.i.i:                                     ; preds = %bb.y
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !138
  %i.fc = and i32 %i.fb, 4096
  %.not8.i.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not8.i.i.i, label %can_replace_op1.exit.thread.i.i, label %try_replace_op1.exit.thread.i

can_replace_op1.exit.i.i:                         ; preds = %bb.y
  %i.fd = getelementptr inbounds i8, ptr %i.et, i64 -4
  %i.fe = load i8, ptr %i.fd, align 4, !tbaa !68
  %i.ff = add i8 %i.fe, -34
  %spec.select.i.i.i = icmp ult i8 %i.ff, -2
  br i1 %spec.select.i.i.i, label %can_replace_op1.exit.thread.i.i, label %try_replace_op1.exit.thread.i

can_replace_op1.exit.thread.i.i:                  ; preds = %bb.y, %can_replace_op1.exit.i.i, %.split21.i.i, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.fg = load ptr, ptr %.081.i, align 8, !tbaa !38 ; 3 uses
  %i.fh = load i32, ptr %i.ef, align 8, !tbaa !38 ; 2 uses
  store ptr %i.fg, ptr %5, align 8, !tbaa !38
  store i32 %i.fh, ptr %i.cy, align 8, !tbaa !38
  %i.fi = and i32 %i.fh, 65280
  %.not.i.i39 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i39, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %can_replace_op1.exit.thread.i.i
  %i.fj = load i32, ptr %i.fg, align 4, !tbaa !58
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fg, align 4, !tbaa !58
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %can_replace_op1.exit.thread.i.i
  %i.fl = call zeroext i1 @zend_optimizer_update_op1_const(ptr noundef %i.eu, ptr noundef nonnull %i.et, ptr noundef nonnull %5) #11
  br i1 %i.fl, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fm = load i8, ptr %i.cz, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i, label %try_replace_op1.exit.thread99.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !58 ; 2 uses
  %i.fp = icmp ne i32 %i.fo, 0
  call void @llvm.assume(i1 %i.fp)
  %i.fq = add i32 %i.fo, -1                       ; 2 uses
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !58
  %.not3.i.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not3.i.i.i, label %bb.ad, label %try_replace_op1.exit.thread99.i

bb.ad:                                            ; preds = %bb.ac
  %i.fr = load ptr, ptr %5, align 8, !tbaa !38
  call void @rc_dtor_func(ptr noundef %i.fr) #11
  br label %try_replace_op1.exit.thread99.i

try_replace_op1.exit.thread99.i:                  ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %try_replace_op1.exit.thread.i

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.fs = load i8, ptr %i.ev, align 4, !tbaa !68
  %i.ft = icmp eq i8 %i.fs, 0
  %i.fu = zext i1 %i.ft to i32
  %spec.select.i = add nsw i32 %.2103.i, %i.fu
  %i.fv = load i32, ptr %i.ei, align 4, !tbaa !63 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !64
  %.not87.i = icmp eq i32 %i.fv, %i.fx
  br i1 %.not87.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @zend_ssa_unlink_use_chain(ptr noundef nonnull %i.cp, i32 noundef %.0104.i, i32 noundef %i.fv) #11
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fy = load i32, ptr %i.er, align 4, !tbaa !139
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !140
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  store i32 -1, ptr %i.ei, align 4, !tbaa !63
  store i32 -1, ptr %i.er, align 4, !tbaa !139
  br label %try_replace_op1.exit.thread.i

try_replace_op1.exit.thread.i:                    ; preds = %zend_ssa_next_use.exit.i, %bb.ah, %try_replace_op1.exit.thread99.i, %can_replace_op1.exit.i.i, %.split21.i.i, %.split.i.i, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  %i.ga = phi ptr [ %i.et, %bb.ah ], [ %i.et, %try_replace_op1.exit.thread99.i ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %bb.y ], [ %i.et, %.split21.i.i ], [ %i.et, %.split.i.i ], [ %i.eq, %zend_ssa_next_use.exit.i ], [ %i.et, %can_replace_op1.exit.i.i ] ; 2 uses
  %.0.i.i3859 = phi i32 [ %.0.i.i3858, %bb.ah ], [ %.0.i.i3858, %try_replace_op1.exit.thread99.i ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %bb.y ], [ %.0.i.i3858, %.split21.i.i ], [ %.0.i.i3858, %.split.i.i ], [ %.0.i.i38, %zend_ssa_next_use.exit.i ], [ %.0.i.i3858, %can_replace_op1.exit.i.i ] ; 2 uses
  %.4.i = phi i32 [ %spec.select.i, %bb.ah ], [ %.2103.i, %try_replace_op1.exit.thread99.i ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %bb.y ], [ %.2103.i, %.split21.i.i ], [ %.2103.i, %.split.i.i ], [ %.2103.i, %zend_ssa_next_use.exit.i ], [ %.2103.i, %can_replace_op1.exit.i.i ] ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ei, i64 4      ; 3 uses
  %.val91.i = load i32, ptr %i.gb, align 4, !tbaa !64
  %i.gc = icmp eq i32 %.val91.i, %.pre72
  br i1 %i.gc, label %bb.ai, label %try_replace_op2.exit.thread.i

bb.ai:                                            ; preds = %try_replace_op1.exit.thread.i
  %i.gd = getelementptr i8, ptr %i.ga, i64 28
  %.val.i.i = load i8, ptr %i.gd, align 4, !tbaa !68
  switch i8 %.val.i.i, label %bb.aj [
    i8 -111, label %try_replace_op2.exit.thread.i
    i8 -74, label %try_replace_op2.exit.thread.i
    i8 78, label %try_replace_op2.exit.thread.i
    i8 126, label %try_replace_op2.exit.thread.i
  ]

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ge = load ptr, ptr %.081.i, align 8, !tbaa !38 ; 3 uses
  %i.gf = load i32, ptr %i.ef, align 8, !tbaa !38 ; 2 uses
  store ptr %i.ge, ptr %4, align 8, !tbaa !38
  store i32 %i.gf, ptr %i.da, align 8, !tbaa !38
  %i.gg = and i32 %i.gf, 65280
  %.not.i93.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i93.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = load i32, ptr %i.ge, align 4, !tbaa !58
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.ge, align 4, !tbaa !58
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gj = load ptr, ptr %7, align 8, !tbaa !56
  %i.gk = call zeroext i1 @zend_optimizer_update_op2_const(ptr noundef %i.gj, ptr noundef nonnull %i.ga, ptr noundef nonnull %4) #11
  br i1 %i.gk, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gl = load i8, ptr %i.db, align 1, !tbaa !38
  %.not.i.i94.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i94.i, label %try_replace_op2.exit.thread102.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gm = load ptr, ptr %4, align 8, !tbaa !38    ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !58 ; 2 uses
  %i.go = icmp ne i32 %i.gn, 0
  call void @llvm.assume(i1 %i.go)
  %i.gp = add i32 %i.gn, -1                       ; 2 uses
  store i32 %i.gp, ptr %i.gm, align 4, !tbaa !58
  %.not3.i.i95.i = icmp eq i32 %i.gp, 0
  br i1 %.not3.i.i95.i, label %bb.ao, label %try_replace_op2.exit.thread102.i

bb.ao:                                            ; preds = %bb.an
  %i.gq = load ptr, ptr %4, align 8, !tbaa !38
  call void @rc_dtor_func(ptr noundef %i.gq) #11
  br label %try_replace_op2.exit.thread102.i

try_replace_op2.exit.thread102.i:                 ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %try_replace_op2.exit.thread.i

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.gr = load i32, ptr %i.gb, align 4, !tbaa !64 ; 2 uses
  %i.gs = load i32, ptr %i.ei, align 4, !tbaa !63
  %.not88.i = icmp eq i32 %i.gr, %i.gs
  br i1 %.not88.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @zend_ssa_unlink_use_chain(ptr noundef nonnull %i.cp, i32 noundef %.0104.i, i32 noundef %i.gr) #11
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i32 -1, ptr %i.gb, align 4, !tbaa !64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  store i32 -1, ptr %i.gt, align 4, !tbaa !140
  br label %try_replace_op2.exit.thread.i

try_replace_op2.exit.thread.i:                    ; preds = %bb.ar, %try_replace_op2.exit.thread102.i, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %try_replace_op1.exit.thread.i
  %i.gu = icmp sgt i32 %.0.i.i3859, -1
  br i1 %i.gu, label %bb.x, label %._crit_edge.loopexit.i, !llvm.loop !117

._crit_edge.loopexit.i:                           ; preds = %try_replace_op2.exit.thread.i
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !37
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %._crit_edge
  %i.gv = phi ptr [ %i.df, %._crit_edge ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.2.lcssa.i = phi i32 [ %.082108.i, %._crit_edge ], [ %.4.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gw = getelementptr inbounds [16 x i8], ptr %i.gv, i64 %indvars.iv.next.i34
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %.val.i = load i8, ptr %i.gx, align 8, !tbaa !38
  %spec.select.i96.i = icmp ult i8 %.val.i, -2
  br i1 %spec.select.i96.i, label %.sink.split.i, label %bb.dl

.sink.split.i:                                    ; preds = %._crit_edge.i, %bb.u, %bb.t
  %.081.sink.i = phi ptr [ null, %bb.t ], [ null, %bb.u ], [ %.081.i, %._crit_edge.i ] ; 8 uses
  %.2.lcssa.sink.i = phi i32 [ %.082108.i, %bb.t ], [ %.082108.i, %bb.u ], [ %.2.lcssa.i, %._crit_edge.i ]
  %i.gy = trunc nsw i64 %indvars.iv.next.i34 to i32 ; 3 uses
  %i.gz = load ptr, ptr %i.co, align 8, !tbaa !55 ; 17 uses
  %i.ha = load ptr, ptr %7, align 8, !tbaa !56    ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !70 ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, -1
  br i1 %i.hd, label %bb.as, label %bb.dh

bb.as:                                            ; preds = %.sink.split.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 104
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !66
  %i.hg = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %i.hf, i64 %i.hg ; 24 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !61
  %i.hk = getelementptr inbounds nuw [36 x i8], ptr %i.hj, i64 %i.hg ; 22 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 20 ; 9 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !71 ; 6 uses
  %i.hn = icmp eq i32 %i.hm, %i.gy
  br i1 %i.hn, label %bb.at, label %bb.ca

bb.at:                                            ; preds = %bb.as
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 28 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 4, !tbaa !68  ; 9 uses
  %i.hq = icmp eq i8 %i.hp, 22
  br i1 %i.hq, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hr = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !59
  %i.ht = icmp slt i32 %i.hs, 0
  br i1 %i.ht, label %bb.av, label %try_remove_definition.exit

bb.av:                                            ; preds = %bb.au
  %i.hu = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !60
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.aw, label %try_remove_definition.exit

bb.aw:                                            ; preds = %bb.av
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 31
  store i8 0, ptr %i.hx, align 1, !tbaa !141
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !51
  %i.ia = getelementptr inbounds [48 x i8], ptr %i.hz, i64 %indvars.iv.next.i34
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i32 -1, ptr %i.ib, align 8, !tbaa !70
  store i32 -1, ptr %i.hl, align 4, !tbaa !71
  br label %try_remove_definition.exit

bb.ax:                                            ; preds = %bb.at
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !72
  %i.ie = icmp sgt i32 %i.id, -1
  br i1 %i.ie, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.if = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !73
  %i.ih = icmp sgt i32 %i.ig, -1
  br i1 %i.ih, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ii = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !59
  %i.ik = icmp slt i32 %i.ij, 0
  br i1 %i.ik, label %bb.ba, label %try_remove_definition.exit

bb.ba:                                            ; preds = %bb.az
  %i.il = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !60
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.bb, label %try_remove_definition.exit

bb.bb:                                            ; preds = %bb.ba
  switch i8 %i.hp, label %try_remove_definition.exit [
    i8 -105, label %bb.bc
    i8 30, label %bb.bc
    i8 23, label %bb.bc
    i8 24, label %bb.bc
    i8 32, label %bb.bc
    i8 25, label %bb.bc
    i8 33, label %bb.bc
    i8 26, label %bb.bc
    i8 27, label %bb.bc
    i8 28, label %bb.bc
    i8 29, label %bb.bc
    i8 34, label %bb.bc
    i8 35, label %bb.bc
    i8 -124, label %bb.bc
    i8 -123, label %bb.bc
    i8 -127, label %bb.bc
    i8 -126, label %bb.bc
    i8 -125, label %bb.bc
    i8 60, label %bb.bc
    i8 73, label %bb.bc
    i8 -96, label %bb.bc
    i8 -90, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.io = getelementptr inbounds nuw i8, ptr %i.hh, i64 31
  store i8 0, ptr %i.io, align 1, !tbaa !141
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !51
  %i.ir = getelementptr inbounds [48 x i8], ptr %i.iq, i64 %indvars.iv.next.i34
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 -1, ptr %i.is, align 8, !tbaa !70
  store i32 -1, ptr %i.hl, align 4, !tbaa !71
  br label %try_remove_definition.exit

bb.bd:                                            ; preds = %bb.ay
  switch i8 %i.hp, label %bb.be [
    i8 46, label %try_remove_definition.exit
    i8 47, label %try_remove_definition.exit
    i8 -104, label %try_remove_definition.exit
    i8 -87, label %try_remove_definition.exit
    i8 -58, label %try_remove_definition.exit
    i8 77, label %try_remove_definition.exit
    i8 125, label %try_remove_definition.exit
    i8 78, label %try_remove_definition.exit
    i8 126, label %try_remove_definition.exit
    i8 68, label %try_remove_definition.exit
  ]

bb.be:                                            ; preds = %bb.bd
  %i.it = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !59
  %i.iv = icmp sgt i32 %i.iu, -1
  br i1 %i.iv, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iw = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !60
  %.not217.i = icmp eq ptr %i.ix, null
  br i1 %.not217.i, label %bb.bq, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.not220.i = icmp eq ptr %.081.sink.i, null
  br i1 %.not220.i, label %try_remove_definition.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hh, i64 31 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !141 ; 2 uses
  %i.ja = and i8 %i.iz, 6
  %.not221.i = icmp eq i8 %i.ja, 0
  br i1 %.not221.i, label %try_remove_definition.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  switch i8 %i.hp, label %bb.bj [
    i8 31, label %try_remove_definition.exit
    i8 109, label %try_remove_definition.exit
    i8 54, label %try_remove_definition.exit
    i8 55, label %try_remove_definition.exit
    i8 71, label %try_remove_definition.exit
    i8 72, label %try_remove_definition.exit
    i8 -109, label %try_remove_definition.exit
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !38
  store i32 -1, ptr %i.hl, align 4, !tbaa !71
  %i.jd = icmp eq i8 %i.hp, -127
  br i1 %i.jd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.je = call fastcc i32 @remove_call(ptr noundef nonnull readonly %7, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hk) ; 0 uses
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.jf = icmp eq i8 %i.hp, -49
  call void @zend_ssa_remove_instr(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hk) #11
  br i1 %i.jf, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  call void @zend_ssa_remove_instr(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.jg, ptr noundef nonnull %i.jh) #11
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  store i32 %i.gy, ptr %i.hl, align 4, !tbaa !71
  store i8 31, ptr %i.ho, align 4, !tbaa !68
  store i8 %i.iz, ptr %i.iy, align 1, !tbaa !141
  store i32 %i.jc, ptr %i.jb, align 8, !tbaa !38
  %i.ji = getelementptr inbounds nuw i8, ptr %.081.sink.i, i64 9
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !38
  %.not229.i = icmp eq i8 %i.jj, 0
  br i1 %.not229.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jk = load ptr, ptr %.081.sink.i, align 8, !tbaa !38 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !58
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !58
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jn = load ptr, ptr %7, align 8, !tbaa !56
  %i.jo = call zeroext i1 @zend_optimizer_update_op1_const(ptr noundef %i.jn, ptr noundef nonnull %i.hh, ptr noundef nonnull %.081.sink.i) #11 ; 0 uses
  br label %try_remove_definition.exit

bb.bq:                                            ; preds = %bb.bf
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hh, i64 30
  %i.jq = load i8, ptr %i.jp, align 2, !tbaa !74
  %i.jr = and i8 %i.jq, 6
  %.not218.i = icmp eq i8 %i.jr, 0
  br i1 %.not218.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.js = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !64
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [16 x i8], ptr %i.js, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 8
  %.val239.i = load i8, ptr %i.jx, align 8, !tbaa !38
  %i.jy = icmp ugt i8 %.val239.i, -5
  br i1 %i.jy, label %try_remove_definition.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hh, i64 29
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !75
  %i.kb = and i8 %i.ka, 6
  %.not219.i = icmp eq i8 %i.kb, 0
  br i1 %.not219.i, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kc = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.kd = load i32, ptr %i.hk, align 4, !tbaa !63
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [16 x i8], ptr %i.kc, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 8
  %.val238.i = load i8, ptr %i.kg, align 8, !tbaa !38
  %i.kh = icmp ugt i8 %.val238.i, -5
  br i1 %i.kh, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  switch i8 %i.hp, label %try_remove_definition.exit [
    i8 123, label %bb.bv
    i8 52, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu, %bb.bu
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !51
  %i.kk = getelementptr inbounds [48 x i8], ptr %i.kj, i64 %indvars.iv.next.i34
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i32 -1, ptr %i.kl, align 8, !tbaa !70
  store i32 -1, ptr %i.hl, align 4, !tbaa !71
  store i8 70, ptr %i.ho, align 4, !tbaa !68
  %i.km = getelementptr inbounds nuw i8, ptr %i.hh, i64 31
  store i8 0, ptr %i.km, align 1, !tbaa !141
  br label %try_remove_definition.exit

bb.bw:                                            ; preds = %bb.bt, %bb.bs
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !51
  %i.kp = getelementptr inbounds [48 x i8], ptr %i.ko, i64 %indvars.iv.next.i34
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i32 -1, ptr %i.kq, align 8, !tbaa !70
  store i32 -1, ptr %i.hl, align 4, !tbaa !71
  %i.kr = icmp eq i8 %i.hp, -127
  br i1 %i.kr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ks = call fastcc i32 @remove_call(ptr noundef nonnull readonly %7, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hk)
  br label %try_remove_definition.exit

bb.by:                                            ; preds = %bb.bw
  %i.kt = icmp eq i8 %i.hp, -49
  call void @zend_ssa_remove_instr(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hk) #11
  br i1 %i.kt, label %bb.bz, label %try_remove_definition.exit

bb.bz:                                            ; preds = %bb.by
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  call void @zend_ssa_remove_instr(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.ku, ptr noundef nonnull %i.kv) #11
  br label %try_remove_definition.exit

bb.ca:                                            ; preds = %bb.as
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hk, i64 12 ; 4 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !72
  %i.ky = icmp eq i32 %i.kx, %i.gy
  br i1 %i.ky, label %bb.cb, label %try_remove_definition.exit

bb.cb:                                            ; preds = %bb.ca
  %i.kz = getelementptr inbounds nuw i8, ptr %i.hh, i64 28 ; 4 uses
  %i.la = load i8, ptr %i.kz, align 4, !tbaa !68  ; 2 uses
  %i.lb = icmp eq i8 %i.la, 22
  br i1 %i.lb, label %try_remove_definition.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not211.i = icmp eq ptr %.081.sink.i, null     ; 2 uses
  br i1 %.not211.i, label %bb.cd, label %bb.cm

bb.cd:                                            ; preds = %bb.cc
  switch i8 %i.la, label %bb.cl [
    i8 23, label %bb.ce
    i8 24, label %bb.ce
    i8 26, label %bb.ce
    i8 27, label %bb.ce
    i8 28, label %bb.ce
    i8 29, label %bb.ce
    i8 -124, label %bb.ci
    i8 -123, label %bb.ci
    i8 -122, label %bb.ci
    i8 -121, label %bb.ci
    i8 71, label %bb.ck
    i8 72, label %bb.ck
  ]

bb.ce:                                            ; preds = %bb.cd, %bb.cd, %bb.cd, %bb.cd, %bb.cd, %bb.cd
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !64 ; 2 uses
  %i.le = icmp sgt i32 %i.ld, -1
  br i1 %i.le, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lf = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.lg = zext nneg i32 %i.ld to i64
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %i.lg
  %i.li = getelementptr i8, ptr %i.lh, i64 8
  %.val237.i = load i8, ptr %i.li, align 8, !tbaa !38
  %spec.select.i241.i = icmp ult i8 %.val237.i, -2
  br i1 %spec.select.i241.i, label %bb.cg, label %try_remove_definition.exit

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.lj = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !63 ; 2 uses
  %i.ll = icmp sgt i32 %i.lk, -1
  br i1 %i.ll, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.lm = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.ln = zext nneg i32 %i.lk to i64
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.lo, i64 8
  %.val236.i = load i8, ptr %i.lp, align 8, !tbaa !38
  %spec.select.i242.i = icmp ult i8 %.val236.i, -2
  br i1 %spec.select.i242.i, label %bb.cm, label %try_remove_definition.exit

bb.ci:                                            ; preds = %bb.cd, %bb.cd, %bb.cd, %bb.cd
  %i.lq = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !64 ; 2 uses
  %i.ls = icmp sgt i32 %i.lr, -1
  br i1 %i.ls, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.lt = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.lu = zext nneg i32 %i.lr to i64
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = getelementptr i8, ptr %i.lv, i64 8
  %.val.i56 = load i8, ptr %i.lw, align 8, !tbaa !38
  %spec.select.i243.i = icmp ult i8 %.val.i56, -2
  br i1 %spec.select.i243.i, label %bb.cm, label %try_remove_definition.exit

bb.ck:                                            ; preds = %bb.cd, %bb.cd
  %i.lx = getelementptr inbounds nuw i8, ptr %i.hh, i64 30
  %i.ly = load i8, ptr %i.lx, align 2, !tbaa !74
  %i.lz = icmp eq i8 %i.ly, 0
  br i1 %i.lz, label %try_remove_definition.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cd
  %i.ma = call zeroext i1 @zend_may_throw(ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hk, ptr noundef nonnull %i.ha, ptr noundef nonnull %i.gz) #11
  br i1 %i.ma, label %try_remove_definition.exit, label %._crit_edge.i54

._crit_edge.i54:                                  ; preds = %bb.cl
  %.pre.i55 = load i32, ptr %i.hl, align 4, !tbaa !71
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge.i54, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cc
  %i.mb = phi i32 [ %.pre.i55, %._crit_edge.i54 ], [ %i.hm, %bb.ch ], [ %i.hm, %bb.cg ], [ %i.hm, %bb.cj ], [ %i.hm, %bb.ci ], [ %i.hm, %bb.cc ] ; 2 uses
  %i.mc = icmp sgt i32 %i.mb, -1
  br i1 %i.mc, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.md = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !51
  %i.mf = zext nneg i32 %i.mb to i64
  %i.mg = getelementptr inbounds nuw [48 x i8], ptr %i.me, i64 %i.mf ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !59
  %i.mj = icmp slt i32 %i.mi, 0
  br i1 %i.mj, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !60
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store i32 -1, ptr %i.mn, align 8, !tbaa !70
  store i32 -1, ptr %i.hl, align 4, !tbaa !71
  %i.mo = getelementptr inbounds nuw i8, ptr %i.hh, i64 31
  store i8 0, ptr %i.mo, align 1, !tbaa !141
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co, %bb.cn
  %i.mp = load i8, ptr %i.kz, align 4, !tbaa !68
  %i.mq = and i8 %i.mp, -2
  %switch.i53 = icmp eq i8 %i.mq, 34
  br i1 %switch.i53, label %bb.cr, label %try_remove_definition.exit

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.cm
  %i.mr = getelementptr inbounds nuw i8, ptr %i.hh, i64 30 ; 2 uses
  %i.ms = load i8, ptr %i.mr, align 2, !tbaa !74
  %i.mt = icmp eq i8 %i.ms, 1
  br i1 %i.mt, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ha, i64 192 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !76 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.hh, i64 12 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !38
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %i.my ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 9
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !38
  %.not.i.i50 = icmp eq i8 %i.nb, 0
  br i1 %.not.i.i50, label %zval_ptr_dtor_nogc.exit.i52, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !38 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !58 ; 2 uses
  %i.ne = icmp ne i32 %i.nd, 0
  call void @llvm.assume(i1 %i.ne)
  %i.nf = add i32 %i.nd, -1                       ; 2 uses
  store i32 %i.nf, ptr %i.nc, align 4, !tbaa !58
  %.not3.i.i51 = icmp eq i32 %i.nf, 0
  br i1 %.not3.i.i51, label %bb.cu, label %zval_ptr_dtor_nogc.exit.i52

bb.cu:                                            ; preds = %bb.ct
  %i.ng = load ptr, ptr %i.mz, align 8, !tbaa !38
  call void @rc_dtor_func(ptr noundef %i.ng) #11
  %.pre247.i = load ptr, ptr %i.mu, align 8, !tbaa !76
  br label %zval_ptr_dtor_nogc.exit.i52

zval_ptr_dtor_nogc.exit.i52:                      ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.nh = phi ptr [ %i.mv, %bb.cs ], [ %i.mv, %bb.ct ], [ %.pre247.i, %bb.cu ]
  %i.ni = load i32, ptr %i.mw, align 4, !tbaa !38
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %i.nh, i64 %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  store i32 1, ptr %i.nl, align 8, !tbaa !38
  br label %bb.cz

bb.cv:                                            ; preds = %bb.cr
  %i.nm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !64 ; 3 uses
  %i.no = icmp sgt i32 %i.nn, -1
  br i1 %i.no, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.np = load i32, ptr %i.hk, align 4, !tbaa !63
  %.not214.i = icmp eq i32 %i.nn, %i.np
  br i1 %.not214.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nq = load i32, ptr %i.hb, align 8, !tbaa !70
  call void @zend_ssa_unlink_use_chain(ptr noundef nonnull %i.gz, i32 noundef %i.nq, i32 noundef %i.nn) #11
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  store i32 -1, ptr %i.nm, align 4, !tbaa !64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.hk, i64 28
  store i32 -1, ptr %i.nr, align 4, !tbaa !140
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cv, %zval_ptr_dtor_nogc.exit.i52
  %i.ns = load i8, ptr %i.kz, align 4, !tbaa !68
  switch i8 %i.ns, label %bb.da [
    i8 23, label %.sink.split.i48
    i8 24, label %.sink.split.i48
    i8 27, label %.sink.split.i48
    i8 28, label %.sink.split.i48
    i8 29, label %.sink.split.i48
  ]

.sink.split.i48:                                  ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz
  %i.nt = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  call void @zend_ssa_remove_instr(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.nt, ptr noundef nonnull %i.nu) #11
  br label %bb.da

bb.da:                                            ; preds = %.sink.split.i48, %bb.cz
  %.4.i49 = phi i32 [ 0, %bb.cz ], [ 1, %.sink.split.i48 ] ; 3 uses
  br i1 %.not211.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i8 22, ptr %i.kz, align 4, !tbaa !68
  store i8 1, ptr %i.mr, align 2, !tbaa !74
  %i.nv = call i32 @zend_optimizer_add_literal(ptr noundef nonnull %i.ha, ptr noundef nonnull %.081.sink.i) #11
  %i.nw = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 %i.nv, ptr %i.nw, align 4, !tbaa !38
  %i.nx = getelementptr inbounds nuw i8, ptr %.081.sink.i, i64 9
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !38
  %.not216.i = icmp eq i8 %i.ny, 0
  br i1 %.not216.i, label %try_remove_definition.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.nz = load ptr, ptr %.081.sink.i, align 8, !tbaa !38 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !58
  %i.ob = add i32 %i.oa, 1
  store i32 %i.ob, ptr %i.nz, align 4, !tbaa !58
  br label %try_remove_definition.exit

bb.dd:                                            ; preds = %bb.da
  %i.oc = add nuw nsw i32 %.4.i49, 1
  %i.od = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !59
  %i.of = icmp sgt i32 %i.oe, -1
  br i1 %i.of, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.og = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !60
  %.not215.i = icmp eq ptr %i.oh, null
  br i1 %.not215.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.oi = load i32, ptr %i.kw, align 4, !tbaa !72
  %i.oj = load i32, ptr %i.hk, align 4, !tbaa !63
  call void @zend_ssa_rename_var_uses(ptr noundef nonnull %i.gz, i32 noundef %i.oi, i32 noundef %i.oj, i1 noundef zeroext true) #11
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.ok = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !51
  %i.om = load i32, ptr %i.kw, align 4, !tbaa !72
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [48 x i8], ptr %i.ol, i64 %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i32 -1, ptr %i.op, align 8, !tbaa !70
  store i32 -1, ptr %i.kw, align 4, !tbaa !72
  call void @zend_ssa_remove_instr(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hk) #11
  br label %try_remove_definition.exit

bb.dh:                                            ; preds = %.sink.split.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !142 ; 2 uses
  %.not.i46 = icmp eq ptr %i.or, null
  br i1 %.not.i46, label %try_remove_definition.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.os = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !59
  %i.ou = icmp slt i32 %i.ot, 0
  br i1 %i.ou, label %bb.dj, label %try_remove_definition.exit

bb.dj:                                            ; preds = %bb.di
  %i.ov = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !60
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %bb.dk, label %try_remove_definition.exit

bb.dk:                                            ; preds = %bb.dj
  call void @zend_ssa_remove_phi(ptr noundef %i.gz, ptr noundef nonnull %i.or) #11
  br label %try_remove_definition.exit

try_remove_definition.exit:                       ; preds = %bb.au, %bb.av, %bb.aw, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bg, %bb.bh, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bp, %bb.br, %bb.bu, %bb.bv, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cf, %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cq, %bb.db, %bb.dc, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk
  %.1192.i = phi i32 [ %i.ks, %bb.bx ], [ 0, %bb.dh ], [ 0, %bb.dk ], [ 0, %bb.dj ], [ 0, %bb.di ], [ 0, %bb.ca ], [ 1, %bb.by ], [ %i.oc, %bb.dg ], [ 2, %bb.bz ], [ %.4.i49, %bb.dc ], [ %.4.i49, %bb.db ], [ 1, %bb.bv ], [ 0, %bb.ch ], [ 0, %bb.cj ], [ 0, %bb.au ], [ 0, %bb.bh ], [ 0, %bb.bp ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.ba ], [ 0, %bb.bb ], [ 0, %bb.bc ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.cf ], [ 0, %bb.cb ], [ 0, %bb.ck ], [ 0, %bb.cl ], [ 0, %bb.bu ], [ 0, %bb.br ], [ 0, %bb.cq ], [ 0, %bb.bg ], [ 0, %bb.bd ], [ 0, %bb.bd ], [ 0, %bb.bd ], [ 0, %bb.bd ], [ 0, %bb.bd ], [ 0, %bb.bd ], [ 0, %bb.bd ], [ 0, %bb.bd ], [ 0, %bb.bd ], [ 0, %bb.bd ], [ 0, %bb.az ]
  %i.oy = add nsw i32 %.1192.i, %.2.lcssa.sink.i
  br label %bb.dl

bb.dl:                                            ; preds = %try_remove_definition.exit, %._crit_edge.i, %bb.w, %bb.u
  %.6.i = phi i32 [ %.082108.i, %bb.u ], [ %.082108.i, %bb.w ], [ %.2.lcssa.i, %._crit_edge.i ], [ %i.oy, %try_remove_definition.exit ] ; 3 uses
  %i.oz = load i32, ptr %i.ct, align 4, !tbaa !130
  %i.pa = sext i32 %i.oz to i64
  %.not.not.i = icmp sgt i64 %indvars.iv.next.i34, %i.pa
  br i1 %.not.not.i, label %bb.p, label %replace_constant_operands.exit, !llvm.loop !118

replace_constant_operands.exit:                   ; preds = %bb.dl
  %.pre67 = load ptr, ptr %7, align 8, !tbaa !56
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre67, i64 92
  %.pre68 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !130 ; 2 uses
  %.pre69 = load ptr, ptr %i.co, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %.pre69, i64 40
  %.pre71 = load i32, ptr %.phi.trans.insert70, align 8, !tbaa !126
  %i.pb = icmp slt i32 %.pre68, %.pre71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br i1 %i.pb, label %.lr.ph.i41, label %sccp_context_free.exit

.lr.ph.i41:                                       ; preds = %replace_constant_operands.exit
  %i.pc = sext i32 %.pre68 to i64
  br label %bb.dm

bb.dm:                                            ; preds = %zval_ptr_dtor_nogc.exit.i, %.lr.ph.i41
  %i.pd = phi ptr [ %.pre69, %.lr.ph.i41 ], [ %i.pn, %zval_ptr_dtor_nogc.exit.i ] ; 2 uses
  %indvars.iv.i42 = phi i64 [ %i.pc, %.lr.ph.i41 ], [ %indvars.iv.next.i44, %zval_ptr_dtor_nogc.exit.i ] ; 2 uses
  %i.pe = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.pf = getelementptr inbounds [16 x i8], ptr %i.pe, i64 %indvars.iv.i42 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 9
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !38
  %.not.i.i43 = icmp eq i8 %i.ph, 0
  br i1 %.not.i.i43, label %zval_ptr_dtor_nogc.exit.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pi = load ptr, ptr %i.pf, align 8, !tbaa !38 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !58 ; 2 uses
  %i.pk = icmp ne i32 %i.pj, 0
  call void @llvm.assume(i1 %i.pk)
  %i.pl = add i32 %i.pj, -1                       ; 2 uses
  store i32 %i.pl, ptr %i.pi, align 4, !tbaa !58
  %.not3.i.i = icmp eq i32 %i.pl, 0
  br i1 %.not3.i.i, label %bb.do, label %zval_ptr_dtor_nogc.exit.i

bb.do:                                            ; preds = %bb.dn
  %i.pm = load ptr, ptr %i.pf, align 8, !tbaa !38
  call void @rc_dtor_func(ptr noundef %i.pm) #11
  %.pre.i45 = load ptr, ptr %i.co, align 8, !tbaa !55
  br label %zval_ptr_dtor_nogc.exit.i

zval_ptr_dtor_nogc.exit.i:                        ; preds = %bb.do, %bb.dn, %bb.dm
  %i.pn = phi ptr [ %i.pd, %bb.dm ], [ %i.pd, %bb.dn ], [ %.pre.i45, %bb.do ] ; 2 uses
  %indvars.iv.next.i44 = add nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 40
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !126
  %i.pq = sext i32 %i.pp to i64
  %i.pr = icmp slt i64 %indvars.iv.next.i44, %i.pq
  br i1 %i.pr, label %bb.dm, label %sccp_context_free.exit, !llvm.loop !119

sccp_context_free.exit:                           ; preds = %zval_ptr_dtor_nogc.exit.i, %replace_constant_operands.exit.thread, %replace_constant_operands.exit
  %.082.lcssa.i98 = phi i32 [ 0, %replace_constant_operands.exit.thread ], [ %.6.i, %replace_constant_operands.exit ], [ %.6.i, %zval_ptr_dtor_nogc.exit.i ]
  %i.ps = load ptr, ptr %0, align 8, !tbaa !129   ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !127
  %i.pv = icmp ule ptr %i.b, %i.pu
  %.not.i63 = icmp ugt ptr %i.b, %i.ps
  %or.cond.i64 = and i1 %.not.i63, %i.pv
  br i1 %or.cond.i64, label %zend_arena_release.exit, label %.critedge.i, !prof !143

.critedge.i:                                      ; preds = %sccp_context_free.exit, %.critedge.i
  %.0.i65 = phi ptr [ %i.px, %.critedge.i ], [ %i.ps, %sccp_context_free.exit ] ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.i65, i64 16
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !128 ; 5 uses
  call void @_efree(ptr noundef nonnull %.0.i65) #11
  store ptr %i.px, ptr %0, align 8, !tbaa !129
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !127
  %i.qa = icmp ule ptr %i.b, %i.pz
  %.not.i = icmp ugt ptr %i.b, %i.px
  %or.cond.i = and i1 %.not.i, %i.qa
  br i1 %or.cond.i, label %zend_arena_release.exit, label %.critedge.i, !prof !144, !llvm.loop !120

zend_arena_release.exit:                          ; preds = %.critedge.i, %sccp_context_free.exit
  %.0.i.lcssa = phi ptr [ %i.ps, %sccp_context_free.exit ], [ %i.px, %.critedge.i ]
  %i.qb = add nsw i32 %.082.lcssa.i98, %i.cn
  store ptr %i.b, ptr %.0.i.lcssa, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i32 %i.qb
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @sccp_visit_instr(ptr nofree noundef readonly %0, ptr noundef %1, ptr nofree noundef readonly %2) #0 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 247 uses
  %4 = alloca %struct._zval_struct, align 8       ; 21 uses
  %5 = alloca %struct._zval_struct, align 8       ; 21 uses
  %6 = alloca %struct._zval_struct, align 8       ; 10 uses
  %7 = alloca %struct._zval_struct, align 8       ; 9 uses
  %i.a = alloca [3 x ptr], align 16               ; 11 uses
  %i.b = alloca [3 x ptr], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.d = load i8, ptr %i.c, align 1, !tbaa !75
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !38
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  br label %get_op1_value.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load i32, ptr %2, align 4, !tbaa !63     ; 2 uses
  %.not.i1602 = icmp eq i32 %i.m, -1
  br i1 %.not.i1602, label %get_op1_value.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p
  br label %get_op1_value.exit

get_op1_value.exit:                               ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.d ], [ null, %bb.c ] ; 69 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.s = load i8, ptr %i.r, align 2, !tbaa !74
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %get_op1_value.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.z
  br label %get_op2_value.exit

bb.f:                                             ; preds = %get_op1_value.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !64 ; 2 uses
  %.not.i1603 = icmp eq i32 %i.ac, -1
  br i1 %.not.i1603, label %get_op2_value.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.ae, i64 %i.af
  br label %get_op2_value.exit

get_op2_value.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.0.i1604 = phi ptr [ %i.aa, %bb.e ], [ %i.ag, %bb.g ], [ null, %bb.f ] ; 47 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !68
  switch i8 %i.ai, label %bb.hq [
    i8 22, label %bb.h
    i8 23, label %bb.r
    i8 24, label %bb.by
    i8 65, label %bb.dy
    i8 117, label %bb.dy
    i8 32, label %bb.hi
    i8 33, label %bb.hi
    i8 -109, label %bb.gm
    i8 68, label %bb.hc
    i8 72, label %bb.ec
    i8 71, label %bb.eh
  ]

bb.h:                                             ; preds = %get_op2_value.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !38
  %i.al = icmp eq i8 %i.ak, -2
  br i1 %i.al, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !77
  %i.aq = load i32, ptr %2, align 4, !tbaa !63
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [40 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 8, !tbaa !80
  %i.au = and i32 %i.at, 1024
  %.not1288 = icmp eq i32 %i.au, 0
  br i1 %.not1288, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !72 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = getelementptr i8, ptr %0, i64 104
  %.val1598 = load ptr, ptr %i.az, align 8, !tbaa !37
end_hunk_0
