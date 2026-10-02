Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg?download=true
inline.NumInlined: 1043
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 32
begin_hunk_0_@tcg_gen_code:bb.a
  %i.bmc = trunc i64 %i.bmb to i8
  br label %bb.nw

bb.nn:                                            ; preds = %bb.lr
  %i.bmd = zext nneg i32 %i.bgr to i64
  %i.bme = getelementptr inbounds nuw [4 x i8], ptr @tcg_out_vec_op.vpshldi_insn, i64 %i.bmd
  %i.bmf = load i32, ptr %i.bme, align 4
  %i.bmg = load i64, ptr %i.bz, align 8
  %i.bmh = trunc i64 %i.bmg to i8
  br label %bb.nw

bb.no:                                            ; preds = %bb.lr
  %i.bmi = load i64, ptr %i.bz, align 8
  %i.bmj = trunc i64 %i.bmi to i8
  br label %bb.nw

bb.np:                                            ; preds = %bb.lr
  br label %bb.nw

bb.nq:                                            ; preds = %bb.lr
  br label %bb.nw

bb.nr:                                            ; preds = %bb.lr
  br label %bb.nw

bb.ns:                                            ; preds = %bb.lr
  br label %bb.nw

bb.nt:                                            ; preds = %bb.lr
  %i.bmk = load i64, ptr %i.bz, align 8           ; 3 uses
  %i.bml = icmp eq i64 %i.bgs, %i.bgt
  br i1 %i.bml, label %bb.nw, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.bmm = icmp eq i64 %i.bgs, %i.bgu
  br i1 %i.bmm, label %bb.nw, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.bmn = trunc i64 %i.bgs to i32
  %i.bmo = trunc i64 %i.bmk to i32
  tail call fastcc void @tcg_out_mov(ptr noundef %0, i32 noundef %i.awz, i32 noundef %i.bmn, i32 noundef %i.bmo)
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nh, %bb.lr
  %.5.i = phi i32 [ 454, %bb.nh ], [ %.4.i, %bb.nl ], [ 590918, %bb.nm ], [ %i.bmf, %bb.nn ], [ 70862, %bb.no ], [ 1119269, %bb.nv ], [ 1119269, %bb.np ], [ 1119269, %bb.nq ], [ 1119269, %bb.nr ], [ 1119269, %bb.ns ], [ 1119269, %bb.lr ], [ 1119269, %bb.nt ], [ 1119269, %bb.nu ] ; 3 uses
  %.1133.i = phi i8 [ %i.blv, %bb.nh ], [ %i.bma, %bb.nl ], [ %i.bmc, %bb.nm ], [ %i.bmh, %bb.nn ], [ %i.bmj, %bb.no ], [ -72, %bb.nv ], [ 17, %bb.np ], [ 119, %bb.nq ], [ -103, %bb.nr ], [ -35, %bb.ns ], [ 51, %bb.lr ], [ -54, %bb.nt ], [ -30, %bb.nu ]
  %.1131.i = phi i64 [ %i.bgt, %bb.nh ], [ %i.bgt, %bb.nl ], [ %i.bgt, %bb.nm ], [ %i.bgt, %bb.nn ], [ %i.bgt, %bb.no ], [ %i.bgt, %bb.nv ], [ %i.bgt, %bb.np ], [ %i.bgt, %bb.nq ], [ %i.bgt, %bb.nr ], [ %i.bgt, %bb.ns ], [ %i.bgt, %bb.lr ], [ %i.bgu, %bb.nt ], [ %i.bgt, %bb.nu ]
  %.1.i250 = phi i64 [ %i.bgu, %bb.nh ], [ %i.bgu, %bb.nl ], [ %i.bgu, %bb.nm ], [ %i.bgu, %bb.nn ], [ %i.bgu, %bb.no ], [ %i.bgu, %bb.nv ], [ %i.bgu, %bb.np ], [ %i.bgu, %bb.nq ], [ %i.bgu, %bb.nr ], [ %i.bgu, %bb.ns ], [ %i.bgt, %bb.lr ], [ %i.bmk, %bb.nt ], [ %i.bmk, %bb.nu ]
  %i.bmp = icmp ne i32 %.5.i, 267
  tail call void @llvm.assume(i1 %i.bmp)
  %i.bmq = trunc i64 %i.bgs to i32
  %i.bmr = trunc i64 %.1131.i to i32
  %i.bms = trunc i64 %.1.i250 to i32
  %i.bmt = icmp eq i32 %i.awz, 5
  %i.bmu = or i32 %.5.i, 524288
  %spec.select.i143.i = select i1 %i.bmt, i32 %i.bmu, i32 %.5.i
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i143.i, i32 noundef %i.bmq, i32 noundef %i.bmr, i32 noundef %i.bms)
  %i.bmv = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 1
  store ptr %i.bmw, ptr %i.av, align 8
  store i8 %.1133.i, ptr %i.bmv, align 1
  br label %tcg_out_vec_op.exit

bb.nx:                                            ; preds = %bb.lr
  %i.bmx = trunc i64 %i.bgs to i32
  %i.bmy = trunc i64 %i.bgt to i32
  tail call fastcc void @tcg_out_vex_opc(ptr noundef %0, i32 noundef 1395, i32 noundef 3, i32 noundef %i.bmx, i32 noundef %i.bmy, i32 noundef 0)
  %i.bmz = trunc i64 %i.bgt to i8
  %i.bna = and i8 %i.bmz, 7
  %i.bnb = or disjoint i8 %i.bna, -40
  %i.bnc = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 1
  store ptr %i.bnd, ptr %i.av, align 8
  store i8 %i.bnb, ptr %i.bnc, align 1
  %i.bne = trunc i64 %i.bgu to i8
  %i.bnf = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 1
  store ptr %i.bng, ptr %i.av, align 8
  store i8 %i.bne, ptr %i.bnf, align 1
  br label %tcg_out_vec_op.exit

bb.ny:                                            ; preds = %bb.lr
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 3833, ptr noundef nonnull @__func__.tcg_out_vec_op, ptr noundef null) #27
  unreachable

tcg_out_vec_op.exit:                              ; preds = %bb.nx, %bb.nw, %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.mx, %bb.mw, %bb.mv, %bb.mu, %tcg_out_goto_ptr.exit.i, %bb.lo, %bb.ln, %bb.ll, %bb.lk, %bb.lj, %bb.lh, %bb.lg, %bb.lf, %bb.le, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.ko, %bb.kn, %bb.kj, %bb.ki, %bb.kh
  %i.bnh = and i16 %i.ahb, 768
  %.not282 = icmp eq i16 %i.bnh, 0
  br i1 %.not282, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %tcg_out_vec_op.exit
  %i.bni = lshr i16 %i.ahb, 8
  %i.bnj = trunc nuw i16 %i.bni to i8
  %spec.select = and i8 %i.bnj, 1
  store i8 %spec.select, ptr %i.br, align 8
  br label %bb.oa

bb.oa:                                            ; preds = %tcg_out_vec_op.exit, %bb.nz
  %.not625.i = icmp eq i8 %i.ahd, 0
  br i1 %.not625.i, label %tcg_reg_alloc_op.exit, label %.lr.ph620.i

.lr.ph620.i:                                      ; preds = %bb.oa, %temp_dead.exit557.i
  %indvars.iv641.i = phi i64 [ %indvars.iv.next642.i, %temp_dead.exit557.i ], [ 0, %bb.oa ] ; 3 uses
  %i.bnk = getelementptr inbounds nuw [8 x i8], ptr %i.ahk, i64 %indvars.iv641.i
  %i.bnl = load i64, ptr %i.bnk, align 8
  %i.bnm = inttoptr i64 %i.bnl to ptr             ; 5 uses
  %.val530.i = load i64, ptr %i.bnm, align 8      ; 5 uses
  %i.bnn = and i64 %.val530.i, 30064771072
  %i.bno = icmp samesign ult i64 %i.bnn, 8589934593
  tail call void @llvm.assume(i1 %i.bno)
  %i.bnp = trunc nuw nsw i64 %indvars.iv641.i to i32 ; 2 uses
  %i.bnq = shl nuw i32 1, %i.bnp
  %i.bnr = and i32 %i.bnq, %i.agv
  %.not499.i = icmp eq i32 %i.bnr, 0
  %i.bns = shl i32 16, %i.bnp
  %i.bnt = and i32 %i.bns, %i.agv                 ; 2 uses
  br i1 %.not499.i, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %.lr.ph620.i
  tail call fastcc void @temp_sync(ptr noundef %0, ptr noundef nonnull %i.bnm, i32 noundef %.1435.i, i32 noundef 0, i32 noundef %i.bnt)
  br label %temp_dead.exit557.i

bb.oc:                                            ; preds = %.lr.ph620.i
  %.not500.i = icmp eq i32 %i.bnt, 0
  br i1 %.not500.i, label %temp_dead.exit557.i, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bnu = lshr i64 %.val530.i, 32
  %i.bnv = trunc nuw i64 %i.bnu to i32
  %i.bnw = and i32 %i.bnv, 7
  switch i32 %i.bnw, label %bb.og [
    i32 3, label %temp_dead.exit557.i
    i32 2, label %bb.oh
    i32 1, label %bb.oh
    i32 0, label %bb.oe
    i32 4, label %bb.of
  ]

bb.oe:                                            ; preds = %bb.od
  br label %bb.oh

bb.of:                                            ; preds = %bb.od
  br label %bb.oh

bb.og:                                            ; preds = %bb.od
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 4571, ptr noundef nonnull @__func__.temp_free_or_dead, ptr noundef null) #27
  unreachable

bb.oh:                                            ; preds = %bb.of, %bb.oe, %bb.od, %bb.od
  %.0.i.i554.i = phi i64 [ 768, %bb.of ], [ 0, %bb.oe ], [ 512, %bb.od ], [ 512, %bb.od ]
  %i.bnx = and i64 %.val530.i, 65280
  %i.bny = icmp eq i64 %i.bnx, 256
  br i1 %i.bny, label %bb.oi, label %set_temp_val_nonreg.exit.i.i555.i

bb.oi:                                            ; preds = %bb.oh
  %i.bnz = and i64 %.val530.i, 255
  %i.boa = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bnz ; 2 uses
  %i.bob = load ptr, ptr %i.boa, align 8
  %i.boc = icmp eq ptr %i.bob, %i.bnm
  tail call void @llvm.assume(i1 %i.boc)
  store ptr null, ptr %i.boa, align 8
  %.pre.i.i.i556.i = load i64, ptr %i.bnm, align 8
  br label %set_temp_val_nonreg.exit.i.i555.i

set_temp_val_nonreg.exit.i.i555.i:                ; preds = %bb.oi, %bb.oh
  %i.bod = phi i64 [ %.pre.i.i.i556.i, %bb.oi ], [ %.val530.i, %bb.oh ]
  %i.boe = and i64 %i.bod, -65281
  %i.bof = or disjoint i64 %i.boe, %.0.i.i554.i
  store i64 %i.bof, ptr %i.bnm, align 8
  br label %temp_dead.exit557.i

temp_dead.exit557.i:                              ; preds = %set_temp_val_nonreg.exit.i.i555.i, %bb.od, %bb.oc, %bb.ob
  %indvars.iv.next642.i = add nuw nsw i64 %indvars.iv641.i, 1 ; 2 uses
  %exitcond645.not.i = icmp eq i64 %indvars.iv.next642.i, %i.ahe
  br i1 %exitcond645.not.i, label %tcg_reg_alloc_op.exit, label %.lr.ph620.i, !llvm.loop !59

tcg_reg_alloc_op.exit:                            ; preds = %temp_dead.exit557.i, %bb.oa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %tcg_reg_alloc_mov.exit

tcg_reg_alloc_mov.exit:                           ; preds = %temp_dead.exit113.i, %tcg_reg_alloc_mov.exit.loopexit, %bb.gj, %bb.gi, %tcg_out_reloc.exit51.i.i, %bb.ge, %bb.gd, %.preheader.i, %.preheader114.i, %set_temp_val_nonreg.exit.i.i171, %bb.dk, %set_temp_val_nonreg.exit.i.i102.i, %bb.db, %bb.da, %set_temp_val_nonreg.exit.i.i.i.i167, %bb.cb, %bb.ca, %bb.bz, %bb.bp, %set_temp_val_reg.exit.i, %set_temp_val_nonreg.exit.i.i89.i, %temp_dead.exit87.i, %set_temp_val_nonreg.exit.i.i.i.i, %bb.ak, %bb.aj, %bb.ai, %tcg_reg_alloc_op.exit, %tcg_out_goto_tb.exit, %tcg_out_exit_tb.exit, %tcg_reg_alloc_bb_end.exit
  %.1122 = phi i32 [ %.0121323, %tcg_reg_alloc_op.exit ], [ %.0121323, %tcg_out_reloc.exit51.i.i ], [ %.0121323, %bb.bp ], [ %.0121323, %bb.gj ], [ %.0121323, %set_temp_val_nonreg.exit.i.i102.i ], [ %.0121323, %tcg_reg_alloc_bb_end.exit ], [ %.0121323, %set_temp_val_nonreg.exit.i.i171 ], [ %.0121323, %tcg_out_exit_tb.exit ], [ %.0121323, %tcg_out_goto_tb.exit ], [ %i.nz, %tcg_reg_alloc_mov.exit.loopexit ], [ %.0121323, %bb.ai ], [ %.0121323, %bb.aj ], [ %.0121323, %bb.ak ], [ %.0121323, %set_temp_val_nonreg.exit.i.i.i.i ], [ %.0121323, %temp_dead.exit87.i ], [ %.0121323, %set_temp_val_nonreg.exit.i.i89.i ], [ %.0121323, %set_temp_val_reg.exit.i ], [ %.0121323, %bb.bz ], [ %.0121323, %bb.ca ], [ %.0121323, %bb.cb ], [ %.0121323, %set_temp_val_nonreg.exit.i.i.i.i167 ], [ %.0121323, %bb.da ], [ %.0121323, %bb.db ], [ %.0121323, %bb.dk ], [ %.0121323, %.preheader114.i ], [ %.0121323, %.preheader.i ], [ %.0121323, %bb.gd ], [ %.0121323, %bb.ge ], [ %.0121323, %bb.gi ], [ %.0121323, %temp_dead.exit113.i ] ; 2 uses
  %i.bog = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.boh = load ptr, ptr %i.cg, align 8
  %i.boi = icmp ugt ptr %i.bog, %i.boh
  br i1 %i.boi, label %tcg_out_ldst_finalize.exit, label %bb.oj, !prof !11

bb.oj:                                            ; preds = %tcg_reg_alloc_mov.exit
  %.val144 = load ptr, ptr %i.au, align 8
  %i.boj = ptrtoint ptr %i.bog to i64
  %i.bok = ptrtoint ptr %.val144 to i64
  %i.bol = sub i64 %i.boj, %i.bok                 ; 2 uses
  %i.bom = icmp ugt i64 %i.bol, 65535
  br i1 %i.bom, label %tcg_out_ldst_finalize.exit, label %bb.w, !prof !11

._crit_edge.loopexit:                             ; preds = %bb.w
  %i.bon = sext i32 %.1122 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %tcg_malloc.exit.._crit_edge_crit_edge
  %.pre-phi347 = phi i64 [ %.pre346, %tcg_malloc.exit.._crit_edge_crit_edge ], [ %i.bol, %._crit_edge.loopexit ]
  %.0121.lcssa = phi i64 [ -1, %tcg_malloc.exit.._crit_edge_crit_edge ], [ %i.bon, %._crit_edge.loopexit ]
  %i.boo = trunc i64 %.pre-phi347 to i16
  %i.bop = getelementptr inbounds nuw i8, ptr %0, i64 29656
  %i.boq = getelementptr inbounds [2 x i8], ptr %i.bop, i64 %.0121.lcssa
  store i16 %i.boo, ptr %i.boq, align 2
  %.019.i = load ptr, ptr %i.ax, align 8          ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, null
  br i1 %.not20.i, label %.loopexit284, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %._crit_edge
  %i.bor = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bou = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bov = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bow = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 6 uses
  %i.box = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.boy = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.boz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bpa = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bpb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bpc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bpe = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bpf = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bpg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bpl = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.ol

bb.ok:                                            ; preds = %bb.qe
  %i.bpm = getelementptr inbounds nuw i8, ptr %.021.i, i64 48
  %.0.i232 = load ptr, ptr %i.bpm, align 8        ; 2 uses
  %.not.i233 = icmp eq ptr %.0.i232, null
  br i1 %.not.i233, label %.loopexit284, label %bb.ol, !llvm.loop !60

bb.ol:                                            ; preds = %bb.ok, %.lr.ph.i230
  %.021.i = phi ptr [ %.019.i, %.lr.ph.i230 ], [ %.0.i232, %bb.ok ] ; 21 uses
  %i.bpn = load i8, ptr %.021.i, align 8, !range !15, !noundef !16
  %i.bpo = trunc nuw i8 %i.bpn to i1
  %i.bpp = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 4 uses
  %i.bpq = load i32, ptr %i.bpp, align 4          ; 2 uses
  br i1 %i.bpo, label %bb.om, label %bb.oy

bb.om:                                            ; preds = %bb.ol
  %i.bpr = lshr i32 %i.bpq, 5
  %i.bps = getelementptr inbounds nuw i8, ptr %.021.i, i64 32
  %i.bpt = load ptr, ptr %i.bps, align 8          ; 2 uses
  %i.bpu = load ptr, ptr %i.av, align 8
  %i.bpv = ptrtoint ptr %i.bpu to i64
  %i.bpw = ptrtoint ptr %i.bpt to i64
  %i.bpx = sub i64 %i.bpv, %i.bpw
  %i.bpy = trunc i64 %i.bpx to i32
  %i.bpz = add i32 %i.bpy, -4
  store i32 %i.bpz, ptr %i.bpt, align 1
  %i.bqa = getelementptr inbounds nuw i8, ptr %.021.i, i64 40
  %i.bqb = load ptr, ptr %i.bqa, align 8          ; 3 uses
  %.not.i.i235 = icmp eq ptr %i.bqb, null
  br i1 %.not.i.i235, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.bqc = load ptr, ptr %i.av, align 8
  %i.bqd = ptrtoint ptr %i.bqc to i64
  %i.bqe = ptrtoint ptr %i.bqb to i64
  %i.bqf = sub i64 %i.bqd, %i.bqe
  %i.bqg = trunc i64 %i.bqf to i32
  %i.bqh = add i32 %i.bqg, -4
  store i32 %i.bqh, ptr %i.bqb, align 1
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.om
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bqi = load i32, ptr %i.bpp, align 4
  %i.bqj = lshr i32 %i.bqi, 5
  %i.bqk = and i32 %i.bqj, 7                      ; 2 uses
  %i.bql = icmp samesign ult i32 %i.bqk, 5
  br i1 %i.bql, label %switch.lookup, label %bb.op

bb.op:                                            ; preds = %bb.oo
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 6347, ptr noundef nonnull @__func__.tcg_out_ld_helper_args, ptr noundef null) #27
  unreachable

switch.lookup:                                    ; preds = %bb.oo
  %i.bqm = zext nneg i32 %i.bqk to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.tcg_gen_code, i64 %i.bqm
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %i.bqn = getelementptr inbounds nuw i8, ptr %switch.load, i64 36
  %i.bqo = load i32, ptr %i.bos, align 4          ; 2 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %.021.i, i64 12
  %i.bqq = load i32, ptr %i.bqp, align 4
  %i.bqr = load i32, ptr %i.bqn, align 4          ; 2 uses
  %trunc.i.i.i.i = trunc i32 %i.bqr to i8
  switch i8 %trunc.i.i.i.i, label %bb.os [
    i8 0, label %bb.oq
    i8 3, label %tcg_out_helper_add_mov.exit.i.i.i
    i8 4, label %bb.or
  ]

bb.oq:                                            ; preds = %switch.lookup
  %i.bqs = icmp eq i32 %i.bqo, 0
  %i.bqt = select i1 %i.bqs, i32 2, i32 3
  br label %tcg_out_helper_add_mov.exit.i.i.i

bb.or:                                            ; preds = %switch.lookup
  br label %tcg_out_helper_add_mov.exit.i.i.i

bb.os:                                            ; preds = %switch.lookup
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 6296, ptr noundef nonnull @__func__.tcg_out_helper_add_mov, ptr noundef null) #27
  unreachable

tcg_out_helper_add_mov.exit.i.i.i:                ; preds = %bb.or, %bb.oq, %switch.lookup
  %.0.i.i.i.i237 = phi i32 [ %i.bqt, %bb.oq ], [ 10, %bb.or ], [ 2, %switch.lookup ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bpc, i8 0, i64 24, i1 false), !annotation !12
  %i.bqu = lshr i32 %i.bqr, 8
  %i.bqv = and i32 %i.bqu, 255
  store i32 %i.bqv, ptr %5, align 16
  store i32 1, ptr %i.bpd, align 8
  store i32 %i.bqq, ptr %i.bpe, align 4
  store i32 %i.bqo, ptr %i.bpf, align 4
  store i32 %.0.i.i.i.i237, ptr %i.bpc, align 16
  call fastcc void @tcg_out_helper_load_slots(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %5)
  %i.bqw = getelementptr inbounds nuw i8, ptr %switch.load, i64 24
  %i.bqx = load i64, ptr %i.bqw, align 8
  %i.bqy = lshr i64 %i.bqx, 56
  %trunc.i.i.i = trunc nuw i64 %i.bqy to i8
  switch i8 %trunc.i.i.i, label %bb.ou [
    i8 0, label %tcg_out_ld_helper_args.exit.i.i
    i8 2, label %tcg_out_ld_helper_args.exit.i.i
    i8 1, label %bb.ot
  ]

bb.ot:                                            ; preds = %tcg_out_helper_add_mov.exit.i.i.i
  %i.bqz = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqz, i64 1
  store ptr %i.bra, ptr %i.av, align 8
  store i8 72, ptr %i.bqz, align 1
  %i.brb = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 1
  store ptr %i.brc, ptr %i.av, align 8
  store i8 -115, ptr %i.brb, align 1
  %i.brd = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 1
  store ptr %i.bre, ptr %i.av, align 8
  store i8 60, ptr %i.brd, align 1
  %i.brf = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 1
  store ptr %i.brg, ptr %i.av, align 8
  store i8 36, ptr %i.brf, align 1
  br label %tcg_out_ld_helper_args.exit.i.i

bb.ou:                                            ; preds = %tcg_out_helper_add_mov.exit.i.i.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 6384, ptr noundef nonnull @__func__.tcg_out_ld_helper_args, ptr noundef null) #27
  unreachable

tcg_out_ld_helper_args.exit.i.i:                  ; preds = %bb.ot, %tcg_out_helper_add_mov.exit.i.i.i, %tcg_out_helper_add_mov.exit.i.i.i
  tail call fastcc void @tcg_out_helper_load_common_args(ptr noundef nonnull %0, ptr noundef nonnull readonly %.021.i, ptr noundef nonnull %switch.load, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.brh = and i32 %i.bpr, 7
  %i.bri = zext nneg i32 %i.brh to i64
  %i.brj = getelementptr inbounds nuw [8 x i8], ptr @qemu_ld_helpers, i64 %i.bri
  %i.brk = load ptr, ptr %i.brj, align 8
  tail call fastcc void @tcg_out_branch(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.brk)
  %i.brl = load i32, ptr %i.bpp, align 4          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !12
  %i.brm = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %i.brn = load i32, ptr %i.brm, align 8          ; 3 uses
  switch i32 %i.brn, label %bb.ox [
    i32 0, label %bb.ov
    i32 1, label %bb.ov
    i32 2, label %bb.ow
  ]

bb.ov:                                            ; preds = %tcg_out_ld_helper_args.exit.i.i, %tcg_out_ld_helper_args.exit.i.i
  %i.bro = lshr i32 %i.brl, 5
  %i.brp = getelementptr inbounds nuw i8, ptr %.021.i, i64 16
  %i.brq = load i32, ptr %i.brp, align 8
  store i32 %i.brq, ptr %4, align 16
  store i32 %i.brn, ptr %i.bpg, align 8
  store i32 1, ptr %i.bph, align 4
  %i.brr = and i32 %i.brl, 256
  %.not.i.i.i238 = icmp eq i32 %i.brr, 0
  %i.brs = icmp eq i32 %i.brn, 0
  %..i.i.i = select i1 %i.brs, i32 2, i32 3
  %i.brt = and i32 %i.bro, 15
  %.sink.i.i.i = select i1 %.not.i.i.i238, i32 %..i.i.i, i32 %i.brt
  store i32 %.sink.i.i.i, ptr %i.bpi, align 16
  call fastcc void @tcg_out_movext1_new_src(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, i32 noundef 0)
  br label %tcg_out_qemu_ld_slow_path.exit.i

bb.ow:                                            ; preds = %tcg_out_ld_helper_args.exit.i.i
  %i.bru = getelementptr inbounds nuw i8, ptr %.021.i, i64 16
  %i.brv = load i32, ptr %i.bru, align 8
  store i32 %i.brv, ptr %4, align 16
  store i32 1, ptr %i.bpg, align 8
  store i32 1, ptr %i.bph, align 4
end_hunk_0
begin_hunk_1_@liveness_pass_1:bb.a
  %i.wv = getelementptr i8, ptr %i.wr, i64 48
  %.val.i448 = load ptr, ptr %i.wv, align 8       ; 2 uses
  %i.ww = load i32, ptr %.val.i448, align 4
  %i.wx = and i32 %i.ww, %i.wp                    ; 2 uses
  %i.wy = icmp eq i32 %i.wx, 0
  br i1 %i.wy, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.wz = load i64, ptr %i.wr, align 8
  %i.xa = lshr i64 %i.wz, 24
  %i.xb = and i64 %i.xa, 255
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr @tcg_target_available_regs, i64 %i.xb
  %i.xd = load i32, ptr %i.xc, align 4
  %i.xe = and i32 %i.xd, %i.wp
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.0.i449 = phi i32 [ %i.xe, %bb.ci ], [ %i.wx, %bb.ch ]
  store i32 %.0.i449, ptr %.val.i448, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cg
  %indvars.iv.next.i446 = add nuw nsw i64 %indvars.iv.i444, 1 ; 2 uses
  %exitcond.not.i447 = icmp eq i64 %indvars.iv.next.i446, %wide.trip.count.i443
  br i1 %exitcond.not.i447, label %la_func_end.exit416, label %bb.cg, !llvm.loop !79

la_func_end.exit416:                              ; preds = %la_reset_pref.exit16.i404.prol.loopexit, %la_reset_pref.exit16.i404, %bb.bw, %la_reset_pref.exit.i428, %bb.ck, %bb.cf, %bb.by, %la_global_sync.exit.i, %.preheader.i401, %bb.cc, %la_global_sync.exit440
  %i.xf = add nuw nsw i32 %i.qu, %i.qr            ; 3 uses
  %.not514 = icmp eq i8 %i.qq, 0                  ; 3 uses
  br i1 %.not514, label %._crit_edge493, label %.lr.ph492

.lr.ph492:                                        ; preds = %la_func_end.exit416
  %i.xg = getelementptr inbounds nuw i8, ptr %.0303505, i64 32
  %i.xh = zext i8 %i.qt to i64
  %i.xi = zext nneg i32 %i.xf to i64
  br label %bb.cl

._crit_edge493:                                   ; preds = %bb.cl, %la_func_end.exit416
  %.10.lcssa = phi i32 [ %.7.lcssa, %la_func_end.exit416 ], [ %.11, %bb.cl ] ; 5 uses
  %i.xj = and i16 %i.sa, 256
  %.not340 = icmp eq i16 %i.xj, 0
  br i1 %.not340, label %bb.cn, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph492, %bb.cl
  %indvars.iv564 = phi i64 [ %i.xh, %.lr.ph492 ], [ %indvars.iv.next565, %bb.cl ] ; 3 uses
  %.10490 = phi i32 [ %.7.lcssa, %.lr.ph492 ], [ %.11, %bb.cl ]
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %indvars.iv564
  %i.xl = load i64, ptr %i.xk, align 8
  %i.xm = inttoptr i64 %i.xl to ptr
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 40
  %i.xo = load i64, ptr %i.xn, align 8
  %i.xp = and i64 %i.xo, 1
  %.not345 = icmp eq i64 %i.xp, 0
  %i.xq = trunc nuw nsw i64 %indvars.iv564 to i32
  %i.xr = shl i32 16, %i.xq
  %i.xs = select i1 %.not345, i32 0, i32 %i.xr
  %.11 = or i32 %i.xs, %.10490                    ; 2 uses
  %indvars.iv.next565 = add nuw nsw i64 %indvars.iv564, 1 ; 2 uses
  %i.xt = icmp samesign ult i64 %indvars.iv.next565, %i.xi
  br i1 %i.xt, label %bb.cl, label %._crit_edge493, !llvm.loop !88

bb.cm:                                            ; preds = %._crit_edge493
  store i8 0, ptr %i.bu, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge493
  br i1 %.not514, label %._crit_edge499, label %.lr.ph498

.lr.ph498:                                        ; preds = %bb.cn
  %i.xu = getelementptr inbounds nuw i8, ptr %.0303505, i64 32
  %i.xv = zext i8 %i.qt to i64
  %i.xw = zext nneg i32 %i.xf to i64
  br label %bb.co

._crit_edge499:                                   ; preds = %bb.cq, %bb.cn
  %i.xx = and i16 %i.sa, 512
  %.not341 = icmp eq i16 %i.xx, 0
  br i1 %.not341, label %bb.cs, label %bb.cr

bb.co:                                            ; preds = %.lr.ph498, %bb.cq
  %indvars.iv567 = phi i64 [ %i.xv, %.lr.ph498 ], [ %indvars.iv.next568, %bb.cq ] ; 2 uses
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv567
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = inttoptr i64 %i.xz to ptr               ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 40 ; 3 uses
  %i.yc = load i64, ptr %i.yb, align 8
  %i.yd = and i64 %i.yc, 1
  %.not344 = icmp eq i64 %i.yd, 0
  br i1 %.not344, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ye = load i64, ptr %i.ya, align 8
  %i.yf = lshr i64 %i.ye, 24
  %i.yg = and i64 %i.yf, 255
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr @tcg_target_available_regs, i64 %i.yg
  %i.yi = load i32, ptr %i.yh, align 4
  %i.yj = getelementptr i8, ptr %i.ya, i64 48
  %.val350 = load ptr, ptr %i.yj, align 8
  store i32 %i.yi, ptr %.val350, align 4
  %i.yk = load i64, ptr %i.yb, align 8
  %i.yl = and i64 %i.yk, -2
  store i64 %i.yl, ptr %i.yb, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %i.ym = icmp samesign ult i64 %indvars.iv.next568, %i.xw
  br i1 %i.ym, label %bb.co, label %._crit_edge499, !llvm.loop !89

bb.cr:                                            ; preds = %._crit_edge499
  store i8 1, ptr %i.bu, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %._crit_edge499
  %cond = icmp eq i32 %.1292, 6
  br i1 %cond, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.yn = and i32 %.10.lcssa, 32
  %.not343 = icmp eq i32 %i.yn, 0
  br i1 %.not343, label %.thread452, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.yo = getelementptr inbounds nuw i8, ptr %.0303505, i64 32
  %i.yp = getelementptr inbounds nuw i8, ptr %.0303505, i64 40
  %i.yq = load i64, ptr %i.yp, align 8
  %i.yr = inttoptr i64 %i.yq to ptr
  %i.ys = getelementptr i8, ptr %i.yr, i64 48
  %.val349 = load ptr, ptr %i.ys, align 8
  %i.yt = load i32, ptr %.val349, align 4
  %i.yu = load i64, ptr %i.yo, align 8
  %i.yv = inttoptr i64 %i.yu to ptr
  %i.yw = getelementptr i8, ptr %i.yv, i64 48
  %.val348 = load ptr, ptr %i.yw, align 8
  store i32 %i.yt, ptr %.val348, align 4
  br label %.thread452

bb.cv:                                            ; preds = %bb.cs
  %.0303.val = load i32, ptr %.0303505, align 8   ; 3 uses
  %i.yx = and i32 %.0303.val, 255
  %i.yy = lshr i32 %.0303.val, 16
  %i.yz = and i32 %i.yy, 255
  %i.za = lshr i32 %.0303.val, 24
  %i.zb = tail call fastcc nonnull ptr @op_args_ct(i32 noundef %i.yx, i32 noundef %i.yz, i32 noundef %i.za)
  br i1 %.not514, label %.thread452, label %.lr.ph502

.lr.ph502:                                        ; preds = %bb.cv
  %i.zc = getelementptr inbounds nuw i8, ptr %.0303505, i64 32
  %i.zd = getelementptr inbounds nuw i8, ptr %.0303505, i64 24
  %i.ze = zext i8 %i.qt to i64
  %i.zf = zext nneg i32 %i.xf to i64
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph502, %bb.cz
  %indvars.iv570 = phi i64 [ %i.ze, %.lr.ph502 ], [ %indvars.iv.next571, %bb.cz ] ; 3 uses
  %i.zg = getelementptr inbounds nuw [12 x i8], ptr %i.zb, i64 %indvars.iv570 ; 2 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %indvars.iv570
  %i.zi = load i64, ptr %i.zh, align 8
  %i.zj = inttoptr i64 %i.zi to ptr
  %i.zk = getelementptr i8, ptr %i.zj, i64 48
  %.val = load ptr, ptr %i.zk, align 8            ; 2 uses
  %i.zl = load i32, ptr %.val, align 4
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zn = load i32, ptr %i.zm, align 4            ; 2 uses
  %i.zo = and i32 %i.zn, %i.zl                    ; 2 uses
  %i.zp = load i64, ptr %i.zg, align 4            ; 2 uses
  %i.zq = and i64 %i.zp, 2147483648
  %.not342 = icmp eq i64 %i.zq, 0
  br i1 %.not342, label %output_pref.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.zr = trunc i64 %i.zp to i32
  %i.zs = lshr i32 %i.zr, 16
  %i.zt = and i32 %i.zs, 15                       ; 2 uses
  %i.zu = icmp samesign ult i32 %i.zt, 2
  br i1 %i.zu, label %bb.cy, label %output_pref.exit.thread

bb.cy:                                            ; preds = %bb.cx
  %i.zv = zext nneg i32 %i.zt to i64
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.zv
  %i.zx = load i32, ptr %i.zw, align 4
  %i.zy = and i32 %i.zx, %i.zo
  br label %output_pref.exit

output_pref.exit:                                 ; preds = %bb.cy, %bb.cw
  %.0 = phi i32 [ %i.zo, %bb.cw ], [ %i.zy, %bb.cy ]
  %.0.fr = freeze i32 %.0                         ; 2 uses
  %i.zz = icmp eq i32 %.0.fr, 0
  br i1 %i.zz, label %output_pref.exit.thread, label %bb.cz

output_pref.exit.thread:                          ; preds = %bb.cx, %output_pref.exit
  br label %bb.cz

bb.cz:                                            ; preds = %output_pref.exit, %output_pref.exit.thread
  %i.aaa = phi i32 [ %i.zn, %output_pref.exit.thread ], [ %.0.fr, %output_pref.exit ]
  store i32 %i.aaa, ptr %.val, align 4
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %i.aab = icmp samesign ult i64 %indvars.iv.next571, %i.zf
  br i1 %i.aab, label %bb.cw, label %.thread452, !llvm.loop !90

.thread452:                                       ; preds = %bb.z, %bb.cz, %la_cross_call.exit, %bb.cv, %bb.d, %bb.cu, %bb.ct, %.thread455, %la_reset_pref.exit384
  %.5309 = phi i32 [ %.4308, %bb.cu ], [ %.4308, %bb.ct ], [ %.0304504, %la_reset_pref.exit384 ], [ %.3307, %.thread455 ], [ %.0304504, %bb.d ], [ %.4308, %bb.cv ], [ %.4308, %bb.cz ], [ %.0304504, %la_cross_call.exit ], [ %.0304504, %bb.z ]
  %.3302 = phi ptr [ %.2301, %bb.cu ], [ %.2301, %bb.ct ], [ %i.dh, %la_reset_pref.exit384 ], [ %.1300, %.thread455 ], [ %i.dh, %bb.d ], [ %.2301, %bb.cv ], [ %.2301, %bb.cz ], [ %i.dh, %la_cross_call.exit ], [ %i.dh, %bb.z ] ; 2 uses
  %.12 = phi i32 [ %.10.lcssa, %bb.cu ], [ %.10.lcssa, %bb.ct ], [ 0, %la_reset_pref.exit384 ], [ 0, %.thread455 ], [ 0, %bb.d ], [ %.10.lcssa, %bb.cv ], [ %.10.lcssa, %bb.cz ], [ %.3.lcssa, %la_cross_call.exit ], [ %.3.lcssa, %bb.z ]
  %i.aac = getelementptr inbounds nuw i8, ptr %.0303505, i64 4
  store i32 %.12, ptr %i.aac, align 4
  %.not = icmp eq ptr %.3302, null
  br i1 %.not, label %.critedge, label %bb.d, !llvm.loop !91

.critedge:                                        ; preds = %.thread452, %la_func_end.exit
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc zeroext i1 @liveness_pass_2(ptr noundef %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %indvars.iv ; 6 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 34359738368
  %.not177 = icmp eq i64 %i.h, 0
  br i1 %.not177, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 8              ; 3 uses
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.e, align 8
  %i.k = icmp sgt i32 %i.i, 511
  br i1 %i.k, label %bb.d, label %tcg_temp_alloc.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @tcg_raise_tb_overflow(ptr noundef nonnull %0) #28
  unreachable

tcg_temp_alloc.exit:                              ; preds = %bb.c
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [56 x i8], ptr %i.d, i64 %i.l ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.m, i8 noundef 0, i64 noundef 56, i1 noundef false) #26
  %i.n = load i64, ptr %i.f, align 8
  %i.o = and i64 %i.n, 4278190080                 ; 2 uses
  store i64 %i.o, ptr %i.m, align 8
  %i.p = load i64, ptr %i.f, align 8
  %i.q = and i64 %i.p, 16711680
  %i.r = or disjoint i64 %i.o, %i.q               ; 2 uses
  store i64 %i.r, ptr %i.m, align 8
  %i.s = load i64, ptr %i.f, align 8
  %i.t = and i64 %i.s, 3298534883328
  %i.u = or disjoint i64 %i.r, %i.t
  store i64 %i.u, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %tcg_temp_alloc.exit
  %.sink = phi ptr [ %i.m, %tcg_temp_alloc.exit ], [ null, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %.sink, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 1, ptr %i.w, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0148.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp slt i32 %.0148.lcssa, %i.y
  br i1 %i.z, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 5 uses
  %i.ab = zext nneg i32 %.0148.lcssa to i64       ; 4 uses
  %wide.trip.count240 = zext nneg i32 %i.y to i64 ; 3 uses
  %i.ac = sub nsw i64 %wide.trip.count240, %i.ab
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph205, %.prol.preheader
  %indvars.iv237.prol = phi i64 [ %indvars.iv.next238.prol, %.prol.preheader ], [ %i.ab, %.lr.ph205 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph205 ]
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237.prol ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 1, ptr %i.af, align 8
  %indvars.iv.next238.prol = add nuw nsw i64 %indvars.iv237.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !93

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph205
  %indvars.iv237.unr = phi i64 [ %i.ab, %.lr.ph205 ], [ %indvars.iv.next238.prol, %.prol.preheader ]
  %i.ag = sub nsw i64 %i.ab, %wide.trip.count240
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge206, label %.lr.ph205.new

.lr.ph205.new:                                    ; preds = %.prol.loopexit, %.lr.ph205.new
  %indvars.iv237 = phi i64 [ %indvars.iv.next238.3, %.lr.ph205.new ], [ %indvars.iv237.unr, %.prol.loopexit ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store i64 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  store i64 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv237 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 216
  store ptr null, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  store i64 1, ptr %i.at, align 8
  %indvars.iv.next238.3 = add nuw nsw i64 %indvars.iv237, 4 ; 2 uses
  %exitcond241.not.3 = icmp eq i64 %indvars.iv.next238.3, %wide.trip.count240
  br i1 %exitcond241.not.3, label %._crit_edge206, label %.lr.ph205.new, !llvm.loop !94

._crit_edge206:                                   ; preds = %.prol.loopexit, %.lr.ph205.new, %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 29344
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not224 = icmp eq ptr %i.av, null
  br i1 %.not224, label %.critedge, label %.lr.ph228

.lr.ph228:                                        ; preds = %._crit_edge206
  %i.aw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 29352
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph228, %.loopexit
  %.0149226 = phi i1 [ false, %.lr.ph228 ], [ %.5154, %.loopexit ] ; 2 uses
  %.0155225 = phi ptr [ %i.av, %.lr.ph228 ], [ %i.az, %.loopexit ] ; 12 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0155225, i64 8 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = load i32, ptr %.0155225, align 8        ; 3 uses
  %i.bb = and i32 %i.ba, 255                      ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0155225, i64 4
  %i.bd = load i32, ptr %i.bc, align 4            ; 6 uses
  %i.be = icmp eq i32 %i.bb, 2
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = lshr i32 %i.ba, 24
  %i.bg = lshr i32 %i.ba, 16
  %i.bh = and i32 %i.bg, 255
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bi = zext nneg i32 %i.bb to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr @tcg_op_defs, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = zext i8 %i.bo to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0147 = phi i32 [ %i.bh, %bb.g ], [ %i.bm, %bb.h ] ; 2 uses
  %.0146 = phi i32 [ %i.bf, %bb.g ], [ %i.bp, %bb.h ] ; 5 uses
  %i.bq = add nuw nsw i32 %.0146, %.0147          ; 2 uses
  %.not230 = icmp eq i32 %.0147, 0
  br i1 %.not230, label %.loopexit195, label %.lr.ph209

.lr.ph209:                                        ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0155225, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %.0155225, i64 16 ; 3 uses
  %i.bt = zext nneg i32 %.0146 to i64
  %i.bu = zext nneg i32 %i.bq to i64
  br label %bb.j

.lr.ph213:                                        ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %.0155225, i64 32
  %i.bw = zext nneg i32 %.0146 to i64
  %i.bx = zext nneg i32 %i.bq to i64
  br label %bb.z

bb.j:                                             ; preds = %.lr.ph209, %bb.y
  %indvars.iv242 = phi i64 [ %i.bt, %.lr.ph209 ], [ %indvars.iv.next243, %bb.y ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv242
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = inttoptr i64 %i.bz to ptr               ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not176 = icmp eq ptr %i.cc, null
  br i1 %.not176, label %bb.y, label %bb.k

end_hunk_1
