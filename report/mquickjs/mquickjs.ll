Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@JS_Parse2:bb.a
  store i32 -1, ptr %i.dh, align 4, !tbaa !125
  %i.di = load i64, ptr %i.h, align 8
  %i.dj = and i64 %i.di, -4294967041
  %i.dk = shl i32 %5, 16
  %i.dl = and i32 %i.dk, 65536
  %i.dm = shl i32 %5, 23
  %i.dn = and i32 %i.dm, 16777216
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = or disjoint i32 %i.do, 256
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = or disjoint i64 %i.dj, %i.dq
  store i64 %i.dr, ptr %i.h, align 8
  %i.ds = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !39
  store ptr %10, ptr %i.ah, align 8, !tbaa !36
  store i64 %i.cv, ptr %10, align 8, !tbaa !40
  call fastcc void @next_token(ptr noundef nonnull %9) #28
  %i.du = load i64, ptr %i.h, align 8
  %i.dv = and i64 %i.du, 16711680
  %.not.i93 = icmp eq i64 %i.dv, 0
  br i1 %.not.i93, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = load ptr, ptr %9, align 8, !tbaa !109
  %i.dx = getelementptr i8, ptr %i.dw, i64 96
  %.val.i = load ptr, ptr %i.dx, align 8, !tbaa !42
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i, i64 920
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = add i64 %i.dz, 1
  %i.eb = call fastcc i32 @add_var(ptr noundef nonnull %9, i64 noundef %i.ea) #28
  store i32 %i.eb, ptr %i.dh, align 4, !tbaa !125
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ec = load i32, ptr %i.cx, align 8, !tbaa !119
  %.not1718.i = icmp eq i32 %i.ec, 160
  br i1 %.not1718.i, label %._crit_edge.i, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %bb.w, %.lr.ph.i94
  call fastcc void @js_parse_source_element(ptr noundef nonnull %9) #28
  %i.ed = load i32, ptr %i.cx, align 8, !tbaa !119
  %.not17.i = icmp eq i32 %i.ed, 160
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i94, !llvm.loop !244

._crit_edge.i:                                    ; preds = %.lr.ph.i94, %bb.w
  %i.ee = load i32, ptr %i.dh, align 4, !tbaa !125 ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  %i.eg = load i32, ptr %i.dd, align 4, !tbaa !126 ; 2 uses
  br i1 %i.ef, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i
  call fastcc void @emit_var(ptr noundef nonnull %9, i32 noundef 44, i32 noundef %i.ee, i32 noundef %i.eg) #28
  %i.eh = load i32, ptr %i.dd, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %9, i8 noundef zeroext 28, i32 noundef %i.eh) #28
  br label %js_parse_program.exit

bb.y:                                             ; preds = %._crit_edge.i
  call fastcc void @emit_op_pos(ptr noundef nonnull %9, i8 noundef zeroext 29, i32 noundef %i.eg) #28
  br label %js_parse_program.exit

js_parse_program.exit:                            ; preds = %bb.x, %bb.y
  call fastcc void @define_hoisted_functions(ptr noundef nonnull %9, i32 noundef 1) #28
  %i.ei = load i64, ptr %i.cy, align 8, !tbaa !120
  %i.ej = add i64 %i.ei, -1
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load i64, ptr %i.cz, align 8, !tbaa !121
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %i.el, ptr %i.em, align 8, !tbaa !59
  %i.en = load ptr, ptr %9, align 8, !tbaa !109   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 8 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !42
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -152 ; 2 uses
  %i.er = call fastcc i32 @check_free_mem(ptr noundef %i.en, ptr noundef nonnull %i.eq, i32 noundef 152) #28, !inline_history !80
  %.not.i.i = icmp eq i32 %i.er, 0
  br i1 %.not.i.i, label %.lr.ph143.i, label %JS_StackCheck.exit.i

.lr.ph143.i:                                      ; preds = %js_parse_program.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 3 uses
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !42
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !42 ; 4 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  store i64 7, ptr %i.eu, align 8, !tbaa !46
  %i.ev = load i64, ptr %10, align 8, !tbaa !46
  %i.ew = getelementptr inbounds i8, ptr %i.et, i64 -16
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !46
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 -24 ; 3 uses
  store ptr %i.ex, ptr %i.eo, align 8, !tbaa !42
  store i64 0, ptr %i.ex, align 8, !tbaa !46
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 80 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.z

JS_StackCheck.exit.i:                             ; preds = %js_parse_program.exit
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %9, ptr noundef nonnull @.str.190) #34
  unreachable

bb.z:                                             ; preds = %bb.cg, %.lr.ph143.i
  %i.fc = phi ptr [ %i.ex, %.lr.ph143.i ], [ %i.ul, %bb.cg ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 9 uses
  %i.ff = load i64, ptr %i.fc, align 8, !tbaa !46
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = ashr i32 %i.fg, 1                       ; 3 uses
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.aa, label %bb.bg

bb.aa:                                            ; preds = %bb.z
  %i.fj = load i64, ptr %i.fe, align 8, !tbaa !46
  %i.fk = add i64 %i.fj, -1
  %i.fl = inttoptr i64 %i.fk to ptr               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.fm = load i64, ptr %i.cy, align 8, !tbaa !120
  %i.fn = add i64 %i.fm, -1
  %i.fo = inttoptr i64 %i.fn to ptr               ; 4 uses
  %i.fp = load i16, ptr %i.dg, align 8, !tbaa !124
  %i.fq = icmp eq i16 %i.fp, 0
  br i1 %i.fq, label %convert_ext_vars_to_local_vars.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 50 ; 3 uses
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !127 ; 2 uses
  %i.ft = icmp eq i16 %i.fs, 0
  br i1 %i.ft, label %convert_ext_vars_to_local_vars.exit.i, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %bb.ab
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !100
  %i.fw = add i64 %i.fv, -1
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !59
  %i.ga = add i64 %i.fz, -1
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %convert_ext_vars_to_local_vars_bytecode.exit.i.i, %.lr.ph64.i.i
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %convert_ext_vars_to_local_vars_bytecode.exit.i.i ], [ 0, %.lr.ph64.i.i ] ; 2 uses
  %i.ge = phi i16 [ %i.ip, %convert_ext_vars_to_local_vars_bytecode.exit.i.i ], [ %i.fs, %.lr.ph64.i.i ] ; 4 uses
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i, %convert_ext_vars_to_local_vars_bytecode.exit.i.i ], [ 0, %.lr.ph64.i.i ] ; 6 uses
  %.062.i.i = phi i32 [ %.1.lcssa.i.i, %convert_ext_vars_to_local_vars_bytecode.exit.i.i ], [ 0, %.lr.ph64.i.i ] ; 2 uses
  %i.gf = zext i16 %i.ge to i32                   ; 2 uses
  %indvars73.i.i = trunc nuw nsw i64 %indvars.iv71.i.i to i32 ; 2 uses
  %i.gg = sub nuw nsw i32 %i.gf, %indvars73.i.i
  %i.gh = call i32 @llvm.umin.i32(i32 %i.gg, i32 16)
  %i.gi = zext i16 %i.ge to i64                   ; 3 uses
  %.not68.i.i = icmp eq i64 %indvars.iv71.i.i, %i.gi
  br i1 %.not68.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.gj = load i16, ptr %i.dg, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.gj, 0
  %wide.trip.count.i.i.i = zext i16 %i.gj to i64
  %i.gk = add i32 %indvars.iv.i, %i.gf
  %i.gl = call i32 @llvm.umax.i32(i32 %i.gk, i32 1)
  %i.gm = call i32 @llvm.umin.i32(i32 %i.gl, i32 16)
  %umax.i = zext nneg i32 %i.gm to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ag ] ; 4 uses
  %.160.i.i = phi i32 [ %.062.i.i, %.lr.ph.i.i ], [ %.2.i.i, %bb.ag ] ; 4 uses
  %i.gn = add nuw nsw i64 %indvars.iv.i.i, %indvars.iv71.i.i
  %.idx.i.i = shl nuw nsw i64 %i.gn, 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i.i ; 2 uses
  %i.gp = load <2 x i64>, ptr %i.go, align 8, !tbaa !46
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !46
  %i.gr = load i64, ptr %i.cy, align 8, !tbaa !120
  %i.gs = add i64 %i.gr, -1
  %i.gt = inttoptr i64 %i.gs to ptr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !98
  %i.gw = add i64 %i.gv, -1
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  br i1 %.not.i.i.i, label %find_var.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %bb.ae
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.i.i.i
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !46
  %i.hb = icmp eq i64 %i.ha, %i.gq
  br i1 %i.hb, label %find_var.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %find_var.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

find_var.exit.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.hc = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %i.hd = load i64, ptr %i.fo, align 8
  %i.he = trunc i64 %i.hd to i32
  %i.hf = lshr i32 %i.he, 7                       ; 2 uses
  %i.hg = and i32 %i.hf, 65535
  %.not52.i.i = icmp sgt i32 %i.hg, %i.hc
  br i1 %.not52.i.i, label %find_var.exit.thread.i.i, label %bb.af

bb.af:                                            ; preds = %find_var.exit.i.i
  %i.hh = sub nsw i32 %i.hc, %i.hf
  %i.hi = trunc i32 %i.hh to i16
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i.i ; 2 uses
  store i16 %i.hi, ptr %i.hj, align 4, !tbaa !255
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  store i8 1, ptr %i.hk, align 2, !tbaa !256
  br label %bb.ag

find_var.exit.thread.i.i:                         ; preds = %bb.ae, %find_var.exit.i.i, %bb.ad
  %i.hl = trunc i32 %.160.i.i to i16
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i.i ; 2 uses
  store i16 %i.hl, ptr %i.hm, align 4, !tbaa !255
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  store i8 0, ptr %i.hn, align 2, !tbaa !256
  %i.ho = shl nsw i32 %.160.i.i, 1
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.hp
  store <2 x i64> %i.gp, ptr %i.hq, align 8, !tbaa !46
  %i.hr = add nsw i32 %.160.i.i, 1
  br label %bb.ag

bb.ag:                                            ; preds = %find_var.exit.thread.i.i, %bb.af
  %.2.i.i = phi i32 [ %.160.i.i, %bb.af ], [ %i.hr, %find_var.exit.thread.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %indvars.iv.next.i.i, %umax.i
  br i1 %exitcond.not.i98, label %._crit_edge.i.i, label %bb.ad, !llvm.loop !245

._crit_edge.i.i:                                  ; preds = %bb.ag, %bb.ac
  %.1.lcssa.i.i = phi i32 [ %.062.i.i, %bb.ac ], [ %.2.i.i, %bb.ag ] ; 3 uses
  %i.hs = add nuw nsw i32 %i.gh, %indvars73.i.i   ; 2 uses
  %.not.i85.i = icmp eq i32 %.1.lcssa.i.i, %i.hs
  br i1 %.not.i85.i, label %convert_ext_vars_to_local_vars_bytecode.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i
  %i.ht = load i32, ptr %i.da, align 8, !tbaa !128 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph.i53.i.i, label %convert_ext_vars_to_local_vars_bytecode.exit.i.i

.lr.ph.i53.i.i:                                   ; preds = %bb.ah, %bb.ak
  %.01.i.i.i = phi i32 [ %i.in, %bb.ak ], [ 0, %bb.ah ] ; 2 uses
  %i.hv = zext nneg i32 %.01.i.i.i to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.hv ; 3 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !51  ; 3 uses
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %i.hy
  %i.ia = and i8 %i.hx, -4
  %switch.i.i.i = icmp eq i8 %i.ia, 48
  br i1 %switch.i.i.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph.i53.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 2 uses
  %.val.i.i.i = load i16, ptr %i.ib, align 1, !tbaa !89 ; 2 uses
  %i.ic = zext i16 %.val.i.i.i to i32
  %i.id = zext i16 %.val.i.i.i to i64             ; 2 uses
  %.not.i54.i.i = icmp samesign ule i64 %indvars.iv71.i.i, %i.id
  %i.ie = icmp samesign ugt i32 %i.hs, %i.ic
  %or.cond33.i.i.i = select i1 %.not.i54.i.i, i1 %i.ie, i1 false
  br i1 %or.cond33.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.if = sub nuw nsw i64 %i.id, %indvars.iv71.i.i
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.if ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 4, !tbaa !255
  store i16 %i.ih, ptr %i.ib, align 1, !tbaa !89
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.ij = load i8, ptr %i.ii, align 2, !tbaa !256
  %.not32.i.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not32.i.i.i, label %bb.ak, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aj
  %i.ik = and i8 %i.hx, 49
  %or.cond.i.i.i = icmp eq i8 %i.ik, 48
  %..i55.i.i = select i1 %or.cond.i.i.i, i8 44, i8 45
  store i8 %..i55.i.i, ptr %i.hw, align 1, !tbaa !51
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split.i.i.i, %bb.aj, %bb.ai, %.lr.ph.i53.i.i
  %i.il = load i8, ptr %i.hz, align 4, !tbaa !62
  %i.im = zext i8 %i.il to i32
  %i.in = add nuw nsw i32 %.01.i.i.i, %i.im       ; 2 uses
  %i.io = icmp slt i32 %i.in, %i.ht
  br i1 %i.io, label %.lr.ph.i53.i.i, label %convert_ext_vars_to_local_vars_bytecode.exit.loopexit.i.i, !llvm.loop !246

convert_ext_vars_to_local_vars_bytecode.exit.loopexit.i.i: ; preds = %bb.ak
  %.pre.i.i = load i16, ptr %i.fr, align 2, !tbaa !127 ; 2 uses
  %.pre169.i = zext i16 %.pre.i.i to i64
  br label %convert_ext_vars_to_local_vars_bytecode.exit.i.i

convert_ext_vars_to_local_vars_bytecode.exit.i.i: ; preds = %convert_ext_vars_to_local_vars_bytecode.exit.loopexit.i.i, %bb.ah, %._crit_edge.i.i
  %.pre-phi170.i = phi i64 [ %.pre169.i, %convert_ext_vars_to_local_vars_bytecode.exit.loopexit.i.i ], [ %i.gi, %bb.ah ], [ %i.gi, %._crit_edge.i.i ]
  %i.ip = phi i16 [ %.pre.i.i, %convert_ext_vars_to_local_vars_bytecode.exit.loopexit.i.i ], [ %i.ge, %bb.ah ], [ %i.ge, %._crit_edge.i.i ]
  %indvars.iv.next72.i.i = add nuw nsw i64 %indvars.iv71.i.i, 16 ; 2 uses
  %i.iq = icmp samesign ult i64 %indvars.iv.next72.i.i, %.pre-phi170.i
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -16
  br i1 %i.iq, label %bb.ac, label %._crit_edge65.i.i, !llvm.loop !247

._crit_edge65.i.i:                                ; preds = %convert_ext_vars_to_local_vars_bytecode.exit.i.i
  %i.ir = trunc i32 %.1.lcssa.i.i to i16
  store i16 %i.ir, ptr %i.fr, align 2, !tbaa !127
  br label %convert_ext_vars_to_local_vars.exit.i

convert_ext_vars_to_local_vars.exit.i:            ; preds = %._crit_edge65.i.i, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.is = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.it = load i32, ptr %i.da, align 8, !tbaa !128
  call fastcc void @js_shrink_byte_array(ptr noundef %i.en, ptr noundef nonnull %i.is, i32 noundef %i.it) #28
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.iv = load i16, ptr %i.de, align 8, !tbaa !122
  %i.iw = zext i16 %i.iv to i32
  call fastcc void @js_shrink_value_array(ptr noundef %i.en, ptr noundef nonnull %i.iu, i32 noundef %i.iw) #28
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.iy = load i16, ptr %i.dg, align 8, !tbaa !124
  %i.iz = zext i16 %i.iy to i32
  call fastcc void @js_shrink_value_array(ptr noundef %i.en, ptr noundef nonnull %i.ix, i32 noundef %i.iz) #28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.jb = load i32, ptr %i.dc, align 8, !tbaa !129
  %i.jc = add i32 %i.jb, 7
  %i.jd = lshr i32 %i.jc, 3
  call fastcc void @js_shrink_byte_array(ptr noundef %i.en, ptr noundef nonnull %i.ja, i32 noundef %i.jd) #28
  %i.je = load ptr, ptr %9, align 8, !tbaa !109   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.jf = load i64, ptr %i.fe, align 8, !tbaa !46
  %i.jg = add i64 %i.jf, -1
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !59
  %i.jk = add i64 %i.jj, -1
  %i.jl = inttoptr i64 %i.jk to ptr
  %i.jm = load i64, ptr %i.jl, align 8
  %i.jn = lshr i64 %i.jm, 4
  %i.jo = trunc i64 %i.jn to i32
  %i.jp = call fastcc ptr @js_alloc_byte_array(ptr noundef %i.je, i32 noundef %i.jo) #28 ; 3 uses
  %.not.i86.i = icmp eq ptr %i.jp, null
  br i1 %.not.i86.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %convert_ext_vars_to_local_vars.exit.i
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %9, ptr noundef nonnull @.str.218) #34
  unreachable

bb.am:                                            ; preds = %convert_ext_vars_to_local_vars.exit.i
  %i.jq = load i64, ptr %i.fe, align 8, !tbaa !46
  %i.jr = add i64 %i.jq, -1
  %i.js = inttoptr i64 %i.jr to ptr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !59
  %i.jv = add i64 %i.ju, -1
  %i.jw = inttoptr i64 %i.jv to ptr               ; 2 uses
  %i.jx = ptrtoint ptr %i.jp to i64
  %i.jy = add i64 %i.jx, 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.ka = load i64, ptr %i.jw, align 8
  %i.kb = lshr i64 %i.ka, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.jz, i8 0, i64 %i.kb, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.je, i64 80 ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !36
  store ptr %i.kd, ptr %i.ey, align 8, !tbaa !39
  store ptr %6, ptr %i.kc, align 8, !tbaa !36
  store i64 %i.jy, ptr %6, align 8, !tbaa !40
  %i.ke = getelementptr inbounds nuw i8, ptr %i.je, i64 32 ; 3 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !42 ; 2 uses
  %.val106.i.i = load i64, ptr %i.jw, align 8
  call fastcc void @compute_stack_size_push(ptr noundef nonnull %9, i64 %.val106.i.i, ptr noundef nonnull %i.jz, i32 noundef 0, i32 noundef 0) #28
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !42
  %i.kh = icmp ult ptr %i.kg, %i.kf
  br i1 %i.kh, label %.lr.ph.i90.i.preheader, label %._crit_edge.i87.i

.lr.ph.i90.i.preheader:                           ; preds = %bb.am
  %.val102.i.i.pre122 = load ptr, ptr %9, align 8, !tbaa !109
  br label %.lr.ph.i90.i

.lr.ph.i90.i:                                     ; preds = %.lr.ph.i90.i.preheader, %bb.bd
  %.val102.i.i = phi ptr [ %.val102.i.i.pre122, %.lr.ph.i90.i.preheader ], [ %.val102.i.i123, %bb.bd ] ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.val102.i.i, i64 32 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !42 ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load i64, ptr %i.kj, align 8, !tbaa !46
  %i.km = getelementptr inbounds i8, ptr %i.kj, i64 -120
  %i.kn = getelementptr inbounds nuw i8, ptr %.val102.i.i, i64 24 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !42 ; 2 uses
  %i.kp = icmp ugt ptr %i.km, %i.ko
  %i.kq = trunc i64 %i.kl to i32
  %i.kr = ashr i32 %i.kq, 1                       ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store ptr %i.ks, ptr %i.ki, align 8, !tbaa !42
  %i.kt = load i64, ptr %i.kk, align 8, !tbaa !46
  %i.ku = getelementptr inbounds i8, ptr %i.kj, i64 -112 ; 2 uses
  %i.kv = icmp ugt ptr %i.ku, %i.ko
  %or.cond126.i.i = select i1 %i.kp, i1 true, i1 %i.kv, !prof !130
  br i1 %or.cond126.i.i, label %js_parse_pop_val.exit.thread.i.i, label %js_parse_pop_val.exit107.i.i, !prof !130

js_parse_pop_val.exit.thread.i.i:                 ; preds = %.lr.ph.i90.i
  store ptr %i.ku, ptr %i.kn, align 8, !tbaa !42
  br label %js_parse_pop_val.exit107.i.i

js_parse_pop_val.exit107.i.i:                     ; preds = %js_parse_pop_val.exit.thread.i.i, %.lr.ph.i90.i
  %i.kw = trunc i64 %i.kt to i32
  %i.kx = ashr i32 %i.kw, 1                       ; 7 uses
end_hunk_0
begin_hunk_1_@JS_Parse2:bb.a
  %i.py = and i64 %i.pw, -8388481
  %i.pz = or disjoint i64 %i.py, %i.px
  store i64 %i.pz, ptr %i.pt, align 8
  %i.qa = zext i16 %i.pu to i32                   ; 2 uses
  call fastcc void @next_token(ptr noundef nonnull %9) #28
  call fastcc void @js_parse_expect(ptr noundef nonnull %9, i32 noundef 123) #28
  %i.qb = load i64, ptr %i.cy, align 8, !tbaa !120
  %i.qc = add i64 %i.qb, -1
  %i.qd = inttoptr i64 %i.qc to ptr               ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8            ; 2 uses
  %i.qf = and i64 %i.qe, 16
  %.not54.i.i = icmp eq i64 %i.qf, 0
  br i1 %.not54.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.thread.i.i
  %i.qg = load ptr, ptr %9, align 8, !tbaa !109
  %i.qh = getelementptr i8, ptr %i.qg, i64 96
  %.val.i100.i = load ptr, ptr %i.qh, align 8, !tbaa !42
  %i.qi = getelementptr inbounds nuw i8, ptr %.val.i100.i, i64 968
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = add i64 %i.qj, 1
  %i.ql = call fastcc i32 @add_var(ptr noundef nonnull %9, i64 noundef %i.qk) #28
  %i.qm = load i32, ptr %i.dd, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %9, i8 noundef zeroext 11, i32 noundef %i.qm) #28
  %i.qn = sub nsw i32 %i.ql, %i.qa
  %i.qo = load i32, ptr %i.dd, align 4, !tbaa !126
  call fastcc void @emit_var(ptr noundef nonnull %9, i32 noundef 45, i32 noundef range(i32 -65536, -2147483648) %i.qn, i32 noundef %i.qo) #28
  %.pre.i101.i = load i64, ptr %i.cy, align 8, !tbaa !120
  %.pre71.i.i = add i64 %.pre.i101.i, -1
  %.pre72.i.i = inttoptr i64 %.pre71.i.i to ptr   ; 2 uses
  %.pre.i = load i64, ptr %.pre72.i.i, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.thread.i.i
  %i.qp = phi i64 [ %.pre.i, %bb.br ], [ %i.qe, %.thread.i.i ]
  %.pre-phi73.i.i = phi ptr [ %.pre72.i.i, %bb.br ], [ %i.qd, %.thread.i.i ]
  %i.qq = and i64 %i.qp, 32
  %.not55.i.i = icmp eq i64 %i.qq, 0
  br i1 %.not55.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qr = getelementptr inbounds nuw i8, ptr %.pre-phi73.i.i, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !105
  %i.qt = call fastcc i32 @add_var(ptr noundef nonnull %9, i64 noundef %i.qs) #28
  %i.qu = load i32, ptr %i.dd, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %9, i8 noundef zeroext 10, i32 noundef %i.qu) #28
  %i.qv = sub nsw i32 %i.qt, %i.qa
  %i.qw = load i32, ptr %i.dd, align 4, !tbaa !126
  call fastcc void @emit_var(ptr noundef nonnull %9, i32 noundef 45, i32 noundef range(i32 -65536, -2147483648) %i.qv, i32 noundef %i.qw) #28
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.qx = load i32, ptr %i.cx, align 8, !tbaa !119
  %.not5670.i.i = icmp eq i32 %i.qx, 125
  br i1 %.not5670.i.i, label %._crit_edge.i103.i, label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %bb.bu, %.lr.ph.i102.i
  call fastcc void @js_parse_source_element(ptr noundef nonnull %9) #28
  %i.qy = load i32, ptr %i.cx, align 8, !tbaa !119
  %.not56.i.i = icmp eq i32 %i.qy, 125
  br i1 %.not56.i.i, label %._crit_edge.i103.i, label %.lr.ph.i102.i, !llvm.loop !249

._crit_edge.i103.i:                               ; preds = %.lr.ph.i102.i, %bb.bu
  %i.qz = load i32, ptr %i.db, align 4, !tbaa !132 ; 2 uses
  %i.ra = icmp slt i32 %i.qz, 0
  br i1 %i.ra, label %js_is_live_code.exit.i.i, label %get_prev_opcode.exit.i.i.i

get_prev_opcode.exit.i.i.i:                       ; preds = %._crit_edge.i103.i
  %.val.i.i.i.i = load i64, ptr %i.cz, align 8, !tbaa !121
  %i.rb = add i64 %.val.i.i.i.i, -1
  %i.rc = inttoptr i64 %i.rb to ptr
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = zext nneg i32 %i.qz to i64
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.re
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !51
  switch i8 %i.rg, label %js_is_live_code.exit.i.i [
    i8 28, label %js_parse_function.exit.i
    i8 29, label %js_parse_function.exit.i
    i8 30, label %js_parse_function.exit.i
    i8 54, label %js_parse_function.exit.i
    i8 57, label %js_parse_function.exit.i
  ]

js_is_live_code.exit.i.i:                         ; preds = %get_prev_opcode.exit.i.i.i, %._crit_edge.i103.i
  %i.rh = load i32, ptr %i.dd, align 4, !tbaa !126
  call fastcc void @emit_op_pos(ptr noundef nonnull %9, i8 noundef zeroext 29, i32 noundef %i.rh) #28
  br label %js_parse_function.exit.i

js_parse_function.exit.i:                         ; preds = %js_is_live_code.exit.i.i, %get_prev_opcode.exit.i.i.i, %get_prev_opcode.exit.i.i.i, %get_prev_opcode.exit.i.i.i, %get_prev_opcode.exit.i.i.i, %get_prev_opcode.exit.i.i.i
  call fastcc void @next_token(ptr noundef nonnull %9) #28
  call fastcc void @define_hoisted_functions(ptr noundef nonnull %9, i32 noundef 0) #28
  %i.ri = load i64, ptr %i.cy, align 8, !tbaa !120
  %i.rj = add i64 %i.ri, -1
  %i.rk = inttoptr i64 %i.rj to ptr
  %i.rl = load i64, ptr %i.cz, align 8, !tbaa !121
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  store i64 %i.rl, ptr %i.rm, align 8, !tbaa !59
  %i.rn = load ptr, ptr %i.eo, align 8, !tbaa !42
  %i.ro = getelementptr inbounds i8, ptr %i.rn, i64 -152 ; 2 uses
  %i.rp = call fastcc i32 @check_free_mem(ptr noundef %i.en, ptr noundef nonnull %i.ro, i32 noundef 152) #28, !inline_history !80
  %.not.i105.i = icmp eq i32 %i.rp, 0
  br i1 %.not.i105.i, label %JS_StackCheck.exit107.thread.i, label %bb.bv

JS_StackCheck.exit107.thread.i:                   ; preds = %js_parse_function.exit.i
  store ptr %i.ro, ptr %i.es, align 8, !tbaa !42
  %i.rq = load i64, ptr %8, align 8, !tbaa !40
  %i.rr = load ptr, ptr %i.fa, align 8, !tbaa !39
  store ptr %i.rr, ptr %i.ez, align 8, !tbaa !36
  %i.rs = shl i32 %i.ok, 1
  %i.rt = add i32 %i.rs, 2
  %i.ru = sext i32 %i.rt to i64
  %i.rv = load ptr, ptr %i.eo, align 8, !tbaa !42 ; 4 uses
  store i64 %i.ru, ptr %i.rv, align 8, !tbaa !46
  %i.rw = load i64, ptr %i.fe, align 8, !tbaa !46
  %i.rx = getelementptr inbounds i8, ptr %i.rv, i64 -8
  store i64 %i.rw, ptr %i.rx, align 8, !tbaa !46
  %i.ry = getelementptr inbounds i8, ptr %i.rv, i64 -16
  store i64 %i.rq, ptr %i.ry, align 8, !tbaa !46
  %i.rz = getelementptr inbounds i8, ptr %i.rv, i64 -24 ; 3 uses
  store ptr %i.rz, ptr %i.eo, align 8, !tbaa !42
  store i64 0, ptr %i.rz, align 8, !tbaa !46
  br label %bb.cg

bb.bv:                                            ; preds = %js_parse_function.exit.i
  %i.sa = load ptr, ptr %i.fa, align 8, !tbaa !39
  store ptr %i.sa, ptr %i.ez, align 8, !tbaa !36
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %9, ptr noundef nonnull @.str.190) #34
  unreachable

bb.bw:                                            ; preds = %bb.bj, %bb.bi
  %indvars.iv.next156.i = add nsw i64 %indvars.iv155.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next156.i to i32
  %exitcond158.not.i = icmp eq i32 %lftr.wideiv.i, %i.nz
  br i1 %exitcond158.not.i, label %.thread.i, label %bb.bi, !llvm.loop !250

.thread.i:                                        ; preds = %bb.bw, %bb.bh, %bb.bg
  %i.sb = load i64, ptr %i.fd, align 8, !tbaa !46 ; 2 uses
  %.not84.i = icmp eq i64 %i.sb, 7
  br i1 %.not84.i, label %resolve_var_refs.exit.i, label %bb.bx

bb.bx:                                            ; preds = %.thread.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ns, i64 50
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !127 ; 2 uses
  %i.se = icmp eq i16 %i.sd, 0
  br i1 %i.se, label %resolve_var_refs.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sf = add i64 %i.sb, -1
  %i.sg = inttoptr i64 %i.sf to ptr
  %i.sh = load i64, ptr %i.sg, align 8
  %i.si = trunc i64 %i.sh to i32
  %i.sj = lshr i32 %i.si, 7
  %i.sk = and i32 %i.sj, 65535                    ; 2 uses
  %wide.trip.count.i.i = zext i16 %i.sd to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cf, %bb.by
  %indvars.iv.i109.i = phi i64 [ 0, %bb.by ], [ %indvars.iv.next.i118.i, %bb.cf ] ; 2 uses
  %i.sl = load i64, ptr %i.fe, align 8, !tbaa !46
  %i.sm = add i64 %i.sl, -1
  %i.sn = inttoptr i64 %i.sm to ptr
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 40
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !100
  %i.sq = add i64 %i.sp, -1
  %i.sr = inttoptr i64 %i.sq to ptr               ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = shl nuw nsw i64 %indvars.iv.i109.i, 1   ; 2 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.st
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !46 ; 3 uses
  %i.sw = load i64, ptr %i.fd, align 8, !tbaa !46 ; 2 uses
  %i.sx = add i64 %i.sw, -1
  %i.sy = inttoptr i64 %i.sx to ptr               ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !98 ; 2 uses
  %i.tb = icmp eq i64 %i.ta, 7
  br i1 %i.tb, label %find_func_var.exit.thread.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tc = add i64 %i.ta, -1
  %i.td = inttoptr i64 %i.tc to ptr               ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load i64, ptr %i.td, align 8
  %i.tg = lshr i64 %i.tf, 4                       ; 2 uses
  %.not.i.i110.i = icmp eq i64 %i.tg, 0
  br i1 %.not.i.i110.i, label %find_func_var.exit.thread.i.i, label %.lr.ph.i.i111.i

.lr.ph.i.i111.i:                                  ; preds = %bb.ca, %bb.cb
  %indvars.iv.i.i112.i = phi i64 [ %indvars.iv.next.i.i113.i, %bb.cb ], [ 0, %bb.ca ] ; 3 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv.i.i112.i
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !46
  %i.tj = icmp eq i64 %i.ti, %i.sv
  br i1 %i.tj, label %find_func_var.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i111.i
  %indvars.iv.next.i.i113.i = add nuw nsw i64 %indvars.iv.i.i112.i, 1 ; 2 uses
  %exitcond.not.i.i114.i = icmp eq i64 %indvars.iv.next.i.i113.i, %i.tg
  br i1 %exitcond.not.i.i114.i, label %find_func_var.exit.thread.i.i, label %.lr.ph.i.i111.i, !llvm.loop !251

find_func_var.exit.i.i:                           ; preds = %.lr.ph.i.i111.i
  %i.tk = trunc nuw nsw i64 %indvars.iv.i.i112.i to i32 ; 3 uses
  %11 = icmp sgt i32 %i.sk, %i.tk
  br i1 %11, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %find_func_var.exit.i.i
  %i.tl = sub nuw nsw i32 %i.tk, %i.sk
  %i.tm = or i32 %i.tl, 65536
  br label %bb.cf

find_func_var.exit.thread.i.i:                    ; preds = %bb.cb, %bb.ca, %bb.bz
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sy, i64 40
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !100
  %i.tp = add i64 %i.to, -1
  %i.tq = inttoptr i64 %i.tp to ptr
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sy, i64 50
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !127 ; 2 uses
  %.not.i41.i.i = icmp eq i16 %i.tt, 0
  br i1 %.not.i41.i.i, label %find_func_ext_var.exit.thread.i.i, label %.lr.ph.preheader.i.i115.i

.lr.ph.preheader.i.i115.i:                        ; preds = %find_func_var.exit.thread.i.i
  %wide.trip.count.i.i116.i = zext i16 %i.tt to i64
  br label %.lr.ph.i42.i.i

.lr.ph.i42.i.i:                                   ; preds = %bb.cd, %.lr.ph.preheader.i.i115.i
  %indvars.iv.i43.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i115.i ], [ %indvars.iv.next.i44.i.i, %bb.cd ] ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i43.i.i, 4
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 %.idx.i.i.i
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !46
  %i.tw = icmp eq i64 %i.tv, %i.sv
  br i1 %i.tw, label %find_func_ext_var.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i42.i.i
  %indvars.iv.next.i44.i.i = add nuw nsw i64 %indvars.iv.i43.i.i, 1 ; 2 uses
  %exitcond.not.i45.i.i = icmp eq i64 %indvars.iv.next.i44.i.i, %wide.trip.count.i.i116.i
  br i1 %exitcond.not.i45.i.i, label %find_func_ext_var.exit.thread.i.i, label %.lr.ph.i42.i.i, !llvm.loop !14

find_func_ext_var.exit.i.i:                       ; preds = %.lr.ph.i42.i.i
  %i.tx = trunc nuw nsw i64 %indvars.iv.i43.i.i to i32
  br label %bb.ce

find_func_ext_var.exit.thread.i.i:                ; preds = %bb.cd, %find_func_var.exit.thread.i.i
  %i.ty = call fastcc i32 @add_func_ext_var(ptr noundef nonnull %9, i64 noundef %i.sw, i64 noundef %i.sv, i32 noundef 196608) #28
  %.pre.pre.i.i = load i64, ptr %i.fe, align 8, !tbaa !46
  %.pre58.i.i = add i64 %.pre.pre.i.i, -1
  %.pre59.i.i = inttoptr i64 %.pre58.i.i to ptr
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre59.i.i, i64 40
  %.pre159.pre.i = load i64, ptr %.phi.trans.insert.phi.trans.insert.i, align 8, !tbaa !100
  %.pre171.i = add i64 %.pre159.pre.i, -1
  %.pre172.i = inttoptr i64 %.pre171.i to ptr
  br label %bb.ce

bb.ce:                                            ; preds = %find_func_ext_var.exit.thread.i.i, %find_func_ext_var.exit.i.i
  %.pre167.pre-phi.i = phi ptr [ %.pre172.i, %find_func_ext_var.exit.thread.i.i ], [ %i.sr, %find_func_ext_var.exit.i.i ]
  %.0.i117.i = phi i32 [ %i.ty, %find_func_ext_var.exit.thread.i.i ], [ %i.tx, %find_func_ext_var.exit.i.i ]
  %i.tz = or i32 %.0.i117.i, 131072
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc, %find_func_var.exit.i.i
  %.pre-phi168.i = phi ptr [ %.pre167.pre-phi.i, %bb.ce ], [ %i.sr, %bb.cc ], [ %i.sr, %find_func_var.exit.i.i ]
  %.035.i.i = phi i32 [ %i.tz, %bb.ce ], [ %i.tm, %bb.cc ], [ %i.tk, %find_func_var.exit.i.i ]
  %i.ua = shl i32 %.035.i.i, 1
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %.pre-phi168.i, i64 %i.st
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  store i64 %i.ub, ptr %i.ud, align 8, !tbaa !46
  %indvars.iv.next.i118.i = add nuw nsw i64 %indvars.iv.i109.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i118.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %resolve_var_refs.exit.loopexit.i, label %bb.bz, !llvm.loop !252

resolve_var_refs.exit.loopexit.i:                 ; preds = %bb.cf
  %.pre160.i = load i64, ptr %i.fe, align 8, !tbaa !46
  %.pre162.i = add i64 %.pre160.i, -1
  %.pre163.i = inttoptr i64 %.pre162.i to ptr
  br label %resolve_var_refs.exit.i

resolve_var_refs.exit.i:                          ; preds = %resolve_var_refs.exit.loopexit.i, %bb.bx, %.thread.i
  %.pre-phi164.i = phi ptr [ %.pre163.i, %resolve_var_refs.exit.loopexit.i ], [ %i.ns, %bb.bx ], [ %i.ns, %.thread.i ] ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.pre-phi164.i, i64 40
  %i.uf = getelementptr inbounds nuw i8, ptr %.pre-phi164.i, i64 50
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !127
  %i.uh = zext i16 %i.ug to i32
  %i.ui = shl nuw nsw i32 %i.uh, 1
  call fastcc void @js_shrink_value_array(ptr noundef %i.en, ptr noundef nonnull %i.ue, i32 noundef %i.ui) #28
  %i.uj = load ptr, ptr %i.eo, align 8, !tbaa !42
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 24 ; 3 uses
  store ptr %i.uk, ptr %i.eo, align 8, !tbaa !42
  store ptr %i.uk, ptr %i.es, align 8, !tbaa !42
  br label %bb.cg

bb.cg:                                            ; preds = %resolve_var_refs.exit.i, %JS_StackCheck.exit107.thread.i
  %i.ul = phi ptr [ %i.rz, %JS_StackCheck.exit107.thread.i ], [ %i.uk, %resolve_var_refs.exit.i ] ; 2 uses
  %i.um = icmp ult ptr %i.ul, %i.et
  br i1 %i.um, label %bb.z, label %js_parse_local_functions.exit, !llvm.loop !253

js_parse_local_functions.exit:                    ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.un = load i64, ptr %10, align 8, !tbaa !40
  %i.uo = load ptr, ptr %i.dt, align 8, !tbaa !39
  store ptr %i.uo, ptr %i.ah, align 8, !tbaa !36
  br label %bb.ch

bb.ch:                                            ; preds = %bb.p, %js_parse_local_functions.exit, %js_parse_json.exit
  %.082 = phi i64 [ %i.ca, %js_parse_json.exit ], [ %i.cd, %bb.p ], [ %i.un, %js_parse_local_functions.exit ]
  store ptr null, ptr %i.c, align 8, !tbaa !111
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %get_line_col.exit
  %.0 = phi i64 [ %i.bg, %get_line_col.exit ], [ %.082, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @JS_Run(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = and i64 %1, 7
  %.not = icmp eq i64 %i.a, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %1, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 14
  %.not19 = icmp eq i64 %i.e, 8
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.51) #28
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = tail call fastcc i64 @js_closure(ptr noundef %0, i64 noundef %1, ptr noundef null) #28 ; 2 uses
  %.not24 = icmp eq i64 %i.g, 15
  br i1 %.not24, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !39
  store ptr %2, ptr %i.h, align 8, !tbaa !36
  store i64 %i.g, ptr %2, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -144 ; 2 uses
  %i.n = call fastcc i32 @check_free_mem(ptr noundef %0, ptr noundef nonnull %i.m, i32 noundef 144) #28, !inline_history !80
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.f, label %JS_StackCheck.exit

JS_StackCheck.exit:                               ; preds = %bb.e
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !39
  store ptr %i.o, ptr %i.h, align 8, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.p, align 8, !tbaa !42
  %i.q = load i64, ptr %2, align 8, !tbaa !40
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !39
  store ptr %i.r, ptr %i.h, align 8, !tbaa !36
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store i64 %i.q, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.u, ptr %i.k, align 8, !tbaa !42
  store i64 7, ptr %i.u, align 8, !tbaa !46
  %i.v = call i64 @JS_Call(ptr noundef nonnull %0, i32 noundef 0) #28
  br label %bb.g

bb.g:                                             ; preds = %JS_StackCheck.exit, %bb.d, %bb.f, %bb.c
  %.0 = phi i64 [ %i.f, %bb.c ], [ %i.v, %bb.f ], [ 15, %bb.d ], [ 15, %JS_StackCheck.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @JS_Eval(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i64 @JS_Parse2(ptr noundef %0, i64 noundef 7, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #28 ; 2 uses
  %.not = icmp eq i64 %i.a, 15
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @JS_Run(ptr noundef %0, i64 noundef %i.a) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 15, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @JS_GC(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  tail call fastcc void @JS_GC2(ptr noundef %0, i32 noundef 1) #28
  ret void
end_hunk_1
begin_hunk_2_@js_parse_postfix_expr:bb.a
    i32 2, label %bb.ay
    i32 3, label %bb.bg
    i32 4, label %bb.bq
    i32 5, label %bb.ci
    i32 6, label %bb.dc
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !119  ; 2 uses
  switch i32 %i.e, label %bb.bt [
    i32 128, label %bb.d
    i32 129, label %bb.e
    i32 131, label %bb.f
    i32 40, label %bb.g
    i32 215, label %bb.k
    i32 161, label %bb.l
    i32 175, label %bb.m
    i32 163, label %bb.n
    i32 165, label %bb.n
    i32 130, label %bb.o
    i32 123, label %bb.s
    i32 91, label %.sink.split
    i32 183, label %bb.bj
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !51
  tail call fastcc void @js_emit_push_number(ptr noundef nonnull %0, double noundef %i.g) #28
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %.preheader

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !117
  tail call fastcc void @js_emit_push_const(ptr noundef nonnull %0, i64 noundef %i.i) #28
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %.preheader

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !117
  tail call fastcc void @js_emit_push_const(ptr noundef nonnull %0, i64 noundef %i.k) #28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !120
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !168
  %i.y = add i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !51
  %i.ad = load <2 x i32>, ptr %i.l, align 8, !tbaa !45
  store i32 %i.y, ptr %i.l, align 8, !tbaa !116
  store i32 %i.ab, ptr %i.m, align 4, !tbaa !113
  %i.ae = tail call fastcc i64 @js_parse_regexp(ptr noundef nonnull %0, i32 noundef %i.ac) #28
  store <2 x i32> %i.ad, ptr %i.l, align 8, !tbaa !45
  %i.af = load i64, ptr %i.n, align 8, !tbaa !120
  %i.ag = add i64 %i.af, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !59
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !121
  store i32 %i.v, ptr %i.u, align 8, !tbaa !128
  tail call fastcc void @js_emit_push_const(ptr noundef nonnull %0, i64 noundef %i.ae) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 31, i32 noundef %i.al) #28
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %.preheader

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.am = shl i32 %2, 1
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42
  %.not.i = icmp ugt ptr %i.aq, %i.as
  br i1 %.not.i, label %js_parse_push_val.exit, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.at = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.an) #28
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !42
  br label %js_parse_push_val.exit

js_parse_push_val.exit:                           ; preds = %bb.g, %bb.h
  %i.au = phi ptr [ %.pre.i, %bb.h ], [ %i.aq, %bb.g ]
  %.0.i = phi i64 [ %i.at, %bb.h ], [ %i.an, %bb.g ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 2 uses
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !42
  store i64 %.0.i, ptr %i.av, align 8, !tbaa !46
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  %.val355 = load ptr, ptr %0, align 8, !tbaa !109 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val355, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !42
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !46
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -120 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val355, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42
  %i.bd = icmp ugt ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.j, label %js_parse_pop_val.exit, !prof !67

bb.j:                                             ; preds = %bb.i
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !42
  br label %js_parse_pop_val.exit

js_parse_pop_val.exit:                            ; preds = %bb.i, %bb.j
  %i.be = trunc i64 %i.az to i32
  %i.bf = ashr i32 %i.be, 1
  tail call fastcc void @js_parse_expect(ptr noundef nonnull %0, i32 noundef 41) #28
  br label %.preheader

bb.k:                                             ; preds = %bb.c
  tail call fastcc void @js_parse_function_decl(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 7) #28
  br label %.preheader

bb.l:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 5, i32 noundef %i.bh) #28
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %.preheader

bb.m:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 6, i32 noundef %i.bj) #28
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %.preheader

bb.n:                                             ; preds = %bb.c, %bb.c
  %i.bk = icmp eq i32 %i.e, 165
  %i.bl = select i1 %i.bk, i8 8, i8 7
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext %i.bl, i32 noundef %i.bn) #28
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %.preheader

bb.o:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !120 ; 2 uses
  %i.bq = add i64 %i.bp, -1
  %i.br = inttoptr i64 %i.bq to ptr               ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = lshr i32 %i.bt, 7
  %i.bv = and i32 %i.bu, 65535                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !117 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !98
  %i.ca = add i64 %i.bz, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !124 ; 2 uses
  %.not.i360 = icmp eq i16 %i.ce, 0
  br i1 %.not.i360, label %find_var.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %wide.trip.count.i = zext i16 %i.ce to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !46
  %i.ch = icmp eq i64 %i.cg, %i.bx
  br i1 %i.ch, label %find_var.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_var.exit.thread, label %.lr.ph.i, !llvm.loop !13

find_var.exit:                                    ; preds = %.lr.ph.i
  %i.ci = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %4 = icmp sgt i32 %i.bv, %i.ci                  ; 2 uses
  %i.cj = select i1 %4, i32 0, i32 %i.bv
  %spec.select = sub nsw i32 %i.ci, %i.cj
  %spec.select329 = select i1 %4, i32 46, i32 44
  br label %bb.r

find_var.exit.thread:                             ; preds = %bb.p, %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !100
  %i.cm = add i64 %i.cl, -1
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 50
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !127 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not.i.i, label %find_ext_var.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %find_var.exit.thread
  %wide.trip.count.i.i = zext i16 %i.cq to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.q ] ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !46
  %i.ct = icmp eq i64 %i.cs, %i.bx
  br i1 %i.ct, label %find_ext_var.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %find_ext_var.exit.thread, label %.lr.ph.i.i, !llvm.loop !14

find_ext_var.exit:                                ; preds = %.lr.ph.i.i
  %i.cu = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %bb.r

find_ext_var.exit.thread:                         ; preds = %bb.q, %find_var.exit.thread
  %i.cv = tail call fastcc range(i32 -1, 65535) i32 @add_func_ext_var(ptr noundef %0, i64 noundef %i.bp, i64 noundef %i.bx, i32 noundef 196608) #28
  br label %bb.r

bb.r:                                             ; preds = %find_ext_var.exit, %find_var.exit, %find_ext_var.exit.thread
  %.1303 = phi i32 [ %spec.select, %find_var.exit ], [ %i.cu, %find_ext_var.exit ], [ %i.cv, %find_ext_var.exit.thread ]
  %.0301 = phi i32 [ %spec.select329, %find_var.exit ], [ 48, %find_ext_var.exit ], [ 48, %find_ext_var.exit.thread ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !168
  tail call fastcc void @emit_var(ptr noundef %0, i32 noundef %.0301, i32 noundef %.1303, i32 noundef %i.cx) #28
  tail call fastcc void @next_token(ptr noundef %0) #28
  br label %.preheader

bb.s:                                             ; preds = %bb.c
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 9, i32 noundef %i.cz) #28
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !128
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 2) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !121
  %i.de = add i64 %i.dd, -1
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.da, align 8, !tbaa !128 ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  store i16 0, ptr %i.dj, align 1, !tbaa !89
  %i.dk = add i32 %i.dh, 2
  store i32 %i.dk, ptr %i.da, align 8, !tbaa !128
  br label %bb.t

bb.t:                                             ; preds = %bb.as, %bb.s
  %.0298 = phi i32 [ %i.db, %bb.s ], [ %.1299, %bb.as ] ; 3 uses
  %.0295 = phi i32 [ 0, %bb.s ], [ %.2297, %bb.as ] ; 3 uses
  %.0287 = phi i32 [ %2, %bb.s ], [ %.1288, %bb.as ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !119 ; 3 uses
  %.not319 = icmp eq i32 %i.dm, 125
  br i1 %.not319, label %bb.at, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = load ptr, ptr %0, align 8, !tbaa !109   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.do = icmp eq i32 %i.dm, 130
  br i1 %i.do, label %bb.v, label %.thread56.i

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !117 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dn, i64 96     ; 2 uses
  %.val52.i = load ptr, ptr %i.dr, align 8, !tbaa !42 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val52.i, i64 1008
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = add i64 %i.dt, 1
  %i.dv = icmp eq i64 %i.dq, %i.du                ; 2 uses
  br i1 %i.dv, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %.val52.i, i64 1024
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = add i64 %i.dx, 1
  %i.dz = icmp eq i64 %i.dq, %i.dy
  br i1 %i.dz, label %.thread.i, label %.sink.split.i

.thread.i:                                        ; preds = %bb.w, %bb.v
  %.04155.i = phi i32 [ 2, %bb.w ], [ 1, %bb.v ]
  call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.ea = load i32, ptr %i.dl, align 8, !tbaa !119 ; 3 uses
  switch i32 %i.ea, label %.thread56.i [
    i32 58, label %.thread60.i
    i32 44, label %.thread60.i
    i32 125, label %.thread60.i
    i32 40, label %.thread60.i
  ]

.thread60.i:                                      ; preds = %.thread.i, %.thread.i, %.thread.i, %.thread.i
  %.val.i = load ptr, ptr %i.dr, align 8, !tbaa !42
  %i.eb = select i1 %i.dv, i64 126, i64 128
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.eb
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = add i64 %i.ed, 1
  br label %bb.ae

.thread56.i:                                      ; preds = %.thread.i, %bb.u
  %i.ef = phi i32 [ %i.dm, %bb.u ], [ %i.ea, %.thread.i ] ; 3 uses
  %.2.i = phi i32 [ 0, %bb.u ], [ %.04155.i, %.thread.i ] ; 3 uses
  %i.eg = icmp eq i32 %i.ef, 130
  %i.eh = icmp sgt i32 %i.ef, 160
  %or.cond.i = or i1 %i.eg, %i.eh
  br i1 %or.cond.i, label %.sink.split.i, label %bb.x

bb.x:                                             ; preds = %.thread56.i
  switch i32 %i.ef, label %bb.aa [
    i32 129, label %.sink.split.i
    i32 128, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.ei = load ptr, ptr %0, align 8, !tbaa !109
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !51
  %i.el = call i64 @JS_NewFloat64(ptr noundef %i.ei, double noundef %i.ek) #28 ; 2 uses
  %.not.i361 = icmp eq i64 %i.el, 15
  br i1 %.not.i361, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.180) #34
  unreachable

.sink.split.i:                                    ; preds = %bb.x, %.thread56.i, %bb.w
  %.273.ph.i = phi i32 [ 0, %bb.w ], [ %.2.i, %.thread56.i ], [ %.2.i, %bb.x ]
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load i64, ptr %i.em, align 8, !tbaa !117
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i, %bb.y
  %.273.i = phi i32 [ %.2.i, %bb.y ], [ %.273.ph.i, %.sink.split.i ] ; 2 uses
  %.144.i = phi i64 [ %i.el, %bb.y ], [ %i.en, %.sink.split.i ]
  %i.eo = load ptr, ptr %0, align 8, !tbaa !109
  %i.ep = call fastcc i64 @JS_ToPropertyKey(ptr noundef %i.eo, i64 noundef %.144.i) #28 ; 2 uses
  %.not65.i = icmp eq i64 %i.ep, 15
  br i1 %.not65.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dn, i64 80 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.er, ptr %i.es, align 8, !tbaa !39
  store ptr %3, ptr %i.eq, align 8, !tbaa !36
  store i64 %i.ep, ptr %3, align 8, !tbaa !40
  call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.et = load i64, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !39
  store ptr %i.eu, ptr %i.eq, align 8, !tbaa !36
  %i.ev = icmp eq i32 %.273.i, 0
  br i1 %i.ev, label %._crit_edge.i, label %js_parse_property_name.exit.thread

._crit_edge.i:                                    ; preds = %bb.ad
  %.pre.i362 = load i32, ptr %i.dl, align 8, !tbaa !119
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i, %.thread60.i
  %i.ew = phi i32 [ %i.ea, %.thread60.i ], [ %.pre.i362, %._crit_edge.i ]
  %.24564.i = phi i64 [ %i.ee, %.thread60.i ], [ %i.et, %._crit_edge.i ] ; 3 uses
  %i.ex = icmp eq i32 %i.ew, 40
  br i1 %i.ex, label %js_parse_property_name.exit.thread, label %bb.af

js_parse_property_name.exit.thread:               ; preds = %bb.ad, %bb.ae
  %.24563.i.ph = phi i64 [ %i.et, %bb.ad ], [ %.24564.i, %bb.ae ]
  %.4.i.ph = phi i32 [ %.273.i, %bb.ad ], [ 3, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ai
end_hunk_2
begin_hunk_3_@emit_op_param:bb.a
bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @js_skip_parens(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 16, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %1, null
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.025 = phi i32 [ 1, %bb.a ], [ %.126, %bb.n ]  ; 10 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.2, %bb.n ]      ; 6 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  switch i32 %i.d, label %bb.n [
    i32 40, label %bb.e
    i32 91, label %bb.c
    i32 123, label %bb.d
    i32 41, label %bb.h
    i32 93, label %bb.h
    i32 125, label %bb.h
    i32 160, label %bb.j
    i32 130, label %bb.k
    i32 59, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.024 = phi i8 [ 125, %bb.d ], [ 93, %bb.c ], [ 41, %bb.b ]
  %i.e = icmp samesign ugt i32 %.025, 127
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.177) #34
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.f = zext nneg i32 %.025 to i64
  %i.g = add nuw nsw i32 %.025, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 %.024, ptr %i.h, align 1, !tbaa !51
  br label %bb.n

bb.h:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.i = add nsw i32 %.025, -1                    ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !51
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %.not30 = icmp eq i32 %i.d, %i.m
  br i1 %.not30, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef %i.m) #34
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %.025 to i64
  %i.o = getelementptr i8, ptr %i.a, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = zext i8 %i.q to i32
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef %i.r) #34
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !109
  %i.u = getelementptr i8, ptr %i.t, i64 96
  %.val = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 968
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 1
  %i.y = icmp eq i64 %i.s, %i.x
  %i.z = zext i1 %i.y to i32
  %spec.select = or i32 %.0, %i.z                 ; 3 uses
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr %1, align 8, !tbaa !46
  %i.ab = icmp eq i64 %i.s, %i.aa
  %i.ac = or i32 %spec.select, 2
  %spec.select31 = select i1 %i.ab, i32 %i.ac, i32 %spec.select
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.ad = icmp eq i32 %.025, 2
  %i.ae = or i32 %.0, 4
  %spec.select33 = select i1 %i.ad, i32 %i.ae, i32 %.0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.b
  %.126 = phi i32 [ %.025, %bb.b ], [ %i.g, %bb.g ], [ %i.i, %bb.h ], [ %.025, %bb.l ], [ %.025, %bb.m ], [ %.025, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %.0, %bb.b ], [ %.0, %bb.g ], [ %.0, %bb.h ], [ %spec.select31, %bb.l ], [ %spec.select33, %bb.m ], [ %spec.select, %bb.k ] ; 2 uses
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %i.af = icmp slt i32 %.126, 2
  br i1 %i.af, label %bb.o, label %bb.b

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.2
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -65536, -2147483648) i32 @define_var(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65280
  %.not = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.n = load i16, ptr %i.m, align 2, !tbaa !127  ; 2 uses
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %find_ext_var.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext i16 %i.n to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = icmp eq i64 %i.p, %2
  br i1 %i.q, label %find_ext_var.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %find_ext_var.exit.thread, label %.lr.ph.i.i, !llvm.loop !14

find_ext_var.exit.thread:                         ; preds = %bb.c, %bb.b
  %i.r = tail call fastcc range(i32 -1, 65535) i32 @add_func_ext_var(ptr noundef %0, i64 noundef %i.e, i64 noundef %2, i32 noundef 196609) #28
  br label %bb.f

find_ext_var.exit:                                ; preds = %.lr.ph.i.i
  %i.s = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.t = shl nuw i64 %indvars.iv.i.i, 1
  %i.u = and i64 %i.t, 4294967294
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 393218, ptr %i.w, align 8, !tbaa !46
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.g, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = lshr i32 %i.y, 7
  %i.aa = and i32 %i.z, 65535                     ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !98
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  %.not.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i, label %find_var.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i16 %i.ah to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.ak = icmp eq i64 %i.aj, %2
  br i1 %i.ak, label %find_var.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_var.exit.thread, label %.lr.ph.i, !llvm.loop !13

find_var.exit:                                    ; preds = %.lr.ph.i
  %i.al = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %3 = icmp sle i32 %i.aa, %i.al                  ; 2 uses
  %i.am = select i1 %3, i32 %i.aa, i32 0
  %spec.select = sub nsw i32 %i.al, %i.am
  %spec.select30 = zext i1 %3 to i32
  br label %bb.f

find_var.exit.thread:                             ; preds = %bb.e, %bb.d
  %i.an = tail call fastcc i32 @add_var(ptr noundef %0, i64 noundef %2) #28
  %i.ao = sub nsw i32 %i.an, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %find_var.exit, %find_var.exit.thread, %find_ext_var.exit.thread, %find_ext_var.exit
  %.2 = phi i32 [ %i.s, %find_ext_var.exit ], [ %i.r, %find_ext_var.exit.thread ], [ %i.ao, %find_var.exit.thread ], [ %spec.select, %find_var.exit ]
  %.1 = phi i32 [ 2, %find_ext_var.exit ], [ 2, %find_ext_var.exit.thread ], [ 1, %find_var.exit.thread ], [ %spec.select30, %find_var.exit ]
  store i32 %.1, ptr %1, align 4, !tbaa !45
  ret i32 %.2
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 65535) i32 @add_var(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.d = icmp eq i16 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.178) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !120
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !39
  store ptr %2, ptr %i.i, align 8, !tbaa !36
  store i64 %1, ptr %2, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !98
  %i.n = call i16 @llvm.umax.i16(i16 %i.c, i16 3)
  %i.o = zext i16 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, 1
  %i.q = call fastcc noundef i64 @js_resize_value_array2(ptr noundef %i.h, i64 noundef %i.m, i32 noundef %i.p, i32 noundef 0) #28, !inline_history !6 ; 3 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.t = load ptr, ptr %0, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store ptr %i.s, ptr %i.u, align 8, !tbaa !36
  %.not = icmp eq i64 %i.q, 15
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.a, align 8, !tbaa !120
  %i.w = add i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %i.q, ptr %i.y, align 8, !tbaa !98
  %i.z = add i64 %i.q, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i16, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.ad = add i16 %i.ac, 1                        ; 2 uses
  store i16 %i.ad, ptr %i.b, align 8, !tbaa !124
  %i.ae = zext i16 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  store i64 %i.r, ptr %i.af, align 8, !tbaa !46
  %i.ag = zext i16 %i.ad to i32
  %i.ah = add nsw i32 %i.ag, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 %i.ah
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 65535) i32 @add_func_ext_var(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 196608, 196610) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.JSGCRef, align 8            ; 6 uses
  %5 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.d = load i16, ptr %i.c, align 2, !tbaa !127  ; 2 uses
  %i.e = icmp eq i16 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef %0, ptr noundef nonnull @.str.179) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !39
  store i64 %1, ptr %5, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.j, align 8, !tbaa !39
  store ptr %4, ptr %i.g, align 8, !tbaa !36
  store i64 %2, ptr %4, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !100
  %i.m = call i16 @llvm.umax.i16(i16 %i.d, i16 1)
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.o, 2
  %i.q = call fastcc noundef i64 @js_resize_value_array2(ptr noundef %i.f, i64 noundef %i.l, i32 noundef %i.p, i32 noundef 0) #28, !inline_history !6 ; 3 uses
  %i.r = load i64, ptr %4, align 8, !tbaa !40
  %i.s = load ptr, ptr %0, align 8, !tbaa !109
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load i64, ptr %5, align 8, !tbaa !40
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !39
  store ptr %i.v, ptr %i.t, align 8, !tbaa !36
  %.not = icmp eq i64 %i.q, 15
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = add i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 %i.q, ptr %i.y, align 8, !tbaa !100
  %i.z = add i64 %i.q, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 50 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !127 ; 2 uses
  %i.ae = zext i16 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.ae, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx ; 2 uses
  store i64 %i.r, ptr %i.af, align 8, !tbaa !46
  %i.ag = shl nuw nsw i32 %3, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !46
  %i.aj = add i16 %i.ad, 1                        ; 2 uses
  store i16 %i.aj, ptr %i.ac, align 2, !tbaa !127
  %i.ak = zext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i32 %i.al
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @push_break_entry(ptr noundef %0, i64 noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.JSGCRef, align 8            ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !109    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !39
  store ptr %5, ptr %i.b, align 8, !tbaa !36
  store i64 %1, ptr %5, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -176 ; 2 uses
  %i.h = call fastcc i32 @check_free_mem(ptr noundef %i.a, ptr noundef nonnull %i.g, i32 noundef 176) #28, !inline_history !80
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %JS_StackCheck.exit.thread, label %bb.b

JS_StackCheck.exit.thread:                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %i.i, align 8, !tbaa !42
  %i.j = load i64, ptr %5, align 8, !tbaa !40
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !39
  store ptr %i.k, ptr %i.b, align 8, !tbaa !36
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !42   ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -48 ; 4 uses
  store ptr %i.m, ptr %i.e, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !115
  store i64 %i.o, ptr %i.m, align 8, !tbaa !172
  %i.p = ptrtoaddr ptr %i.m to i64
  %i.q = ptrtoaddr ptr %i.a to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = shl i32 %i.s, 1
  %i.u = sext i32 %i.t to i64
  store i64 %i.u, ptr %i.n, align 8, !tbaa !115
  %i.v = getelementptr inbounds i8, ptr %i.l, i64 -40
  store i64 %i.j, ptr %i.v, align 8, !tbaa !171
  %i.w = getelementptr inbounds i8, ptr %i.l, i64 -32
  store i64 %2, ptr %i.w, align 8, !tbaa !406
end_hunk_3
