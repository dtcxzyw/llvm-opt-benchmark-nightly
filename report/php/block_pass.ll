Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/block_pass?download=true
inline.NumInlined: 42
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zend_optimize_cfg:bb.a

thread-pre-split.i:                               ; preds = %.lr.ph681
  store i32 %i.bqr, ptr %i.bqf, align 4, !tbaa !47
  store i32 %i.bqp, ptr %i.bqb, align 8, !tbaa !48
  br label %thread-pre-split.thread.i

thread-pre-split.thread.i:                        ; preds = %thread-pre-split.i, %bb.li
  %i.bqx = phi i32 [ %i.bqp, %thread-pre-split.i ], [ %i.bqc, %bb.li ] ; 3 uses
  %i.bqy = phi i32 [ %i.bqr, %thread-pre-split.i ], [ %i.bqg, %bb.li ] ; 4 uses
  %i.bqz = add i32 %i.bqy, 1                      ; 3 uses
  %i.bra = add i32 %i.bqy, %i.bqx
  %i.brb = icmp ult i32 %i.bqz, %i.bra
  br i1 %i.brb, label %.lr.ph.preheader.i, label %.loopexit.sink.split.i

.lr.ph.preheader.i:                               ; preds = %thread-pre-split.thread.i
  %i.brc = zext i32 %i.bqz to i64
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %bb.lo, %.lr.ph.preheader.i
  %.pre5862.i = phi i32 [ %i.bqx, %.lr.ph.preheader.i ], [ %.pre5863.i, %bb.lo ] ; 2 uses
  %.pre5759.i = phi i32 [ %i.bqy, %.lr.ph.preheader.i ], [ %.pre5760.i, %bb.lo ] ; 2 uses
  %i.brd = phi i32 [ %i.bqx, %.lr.ph.preheader.i ], [ %i.brn, %bb.lo ]
  %i.bre = phi i32 [ %i.bqy, %.lr.ph.preheader.i ], [ %i.bro, %bb.lo ]
  %i.brf = phi ptr [ %i.bqe, %.lr.ph.preheader.i ], [ %i.brp, %bb.lo ] ; 4 uses
  %indvars.iv.i120 = phi i64 [ %i.brc, %.lr.ph.preheader.i ], [ %indvars.iv.next.i124, %bb.lo ] ; 4 uses
  %.043.i = phi i32 [ %i.bqz, %.lr.ph.preheader.i ], [ %.1.i123, %bb.lo ] ; 3 uses
  %i.brg = getelementptr inbounds nuw [32 x i8], ptr %i.brf, i64 %indvars.iv.i120 ; 2 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 28
  %i.bri = load i8, ptr %i.brh, align 4, !tbaa !51
  %.not.i121 = icmp eq i8 %i.bri, 0
  br i1 %.not.i121, label %bb.lo, label %bb.ll

bb.ll:                                            ; preds = %.lr.ph.i119
  %i.brj = zext i32 %.043.i to i64                ; 2 uses
  %.not40.i = icmp eq i64 %indvars.iv.i120, %i.brj
  br i1 %.not40.i, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.brk = getelementptr inbounds nuw [32 x i8], ptr %i.brf, i64 %i.brj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.brk, ptr noundef nonnull align 8 dereferenceable(32) %i.brg, i64 32, i1 false), !tbaa.struct !158
  %.pre.i122 = load ptr, ptr %i.cj, align 8, !tbaa !46
  %.pre57.pre.i = load i32, ptr %i.bqf, align 4, !tbaa !47
  %.pre58.pre.i = load i32, ptr %i.bqb, align 8, !tbaa !48
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  %.pre58.i = phi i32 [ %.pre58.pre.i, %bb.lm ], [ %.pre5862.i, %bb.ll ] ; 2 uses
  %.pre57.i = phi i32 [ %.pre57.pre.i, %bb.lm ], [ %.pre5759.i, %bb.ll ] ; 2 uses
  %i.brl = phi ptr [ %.pre.i122, %bb.lm ], [ %i.brf, %bb.ll ]
  %i.brm = add i32 %.043.i, 1
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %.lr.ph.i119
  %.pre5863.i = phi i32 [ %.pre58.i, %bb.ln ], [ %.pre5862.i, %.lr.ph.i119 ]
  %.pre5760.i = phi i32 [ %.pre57.i, %bb.ln ], [ %.pre5759.i, %.lr.ph.i119 ]
  %i.brn = phi i32 [ %.pre58.i, %bb.ln ], [ %i.brd, %.lr.ph.i119 ] ; 2 uses
  %i.bro = phi i32 [ %.pre57.i, %bb.ln ], [ %i.bre, %.lr.ph.i119 ] ; 3 uses
  %i.brp = phi ptr [ %i.brl, %bb.ln ], [ %i.brf, %.lr.ph.i119 ]
  %.1.i123 = phi i32 [ %i.brm, %bb.ln ], [ %.043.i, %.lr.ph.i119 ] ; 4 uses
  %indvars.iv.next.i124 = add nuw nsw i64 %indvars.iv.i120, 1 ; 3 uses
  %i.brq = add i32 %i.bro, %i.brn
  %i.brr = zext i32 %i.brq to i64
  %i.brs = icmp samesign ult i64 %indvars.iv.next.i124, %i.brr
  br i1 %i.brs, label %.lr.ph.i119, label %._crit_edge.i125, !llvm.loop !114

._crit_edge.i125:                                 ; preds = %bb.lo
  %i.brt = trunc nuw i64 %indvars.iv.next.i124 to i32
  %i.bru = sub i32 %.1.i123, %i.bro
  store i32 %i.bru, ptr %i.bqb, align 8, !tbaa !48
  %i.brv = icmp ult i32 %.1.i123, %i.brt
  br i1 %i.brv, label %.lr.ph48.preheader.i, label %strip_nops.exit

.lr.ph48.preheader.i:                             ; preds = %._crit_edge.i125
  %i.brw = zext i32 %.1.i123 to i64
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i, %.lr.ph48.preheader.i
  %indvars.iv53.i = phi i64 [ %i.brw, %.lr.ph48.preheader.i ], [ %indvars.iv.next54.i, %.lr.ph48.i ] ; 5 uses
  %i.brx = load ptr, ptr %i.cj, align 8, !tbaa !46
  %i.bry = getelementptr inbounds nuw [32 x i8], ptr %i.brx, i64 %indvars.iv53.i ; 3 uses
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bry, i64 28
  store i8 0, ptr %i.brz, align 4, !tbaa !51
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bry, i64 29
  store i8 0, ptr %i.bsa, align 1, !tbaa !49
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bry, i64 8
  store i32 -1, ptr %i.bsb, align 8, !tbaa !24
  %i.bsc = load ptr, ptr %i.cj, align 8, !tbaa !46
  %i.bsd = getelementptr inbounds nuw [32 x i8], ptr %i.bsc, i64 %indvars.iv53.i ; 2 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 30
  store i8 0, ptr %i.bse, align 2, !tbaa !50
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bsd, i64 12
  store i32 -1, ptr %i.bsf, align 4, !tbaa !24
  %i.bsg = load ptr, ptr %i.cj, align 8, !tbaa !46
  %i.bsh = getelementptr inbounds nuw [32 x i8], ptr %i.bsg, i64 %indvars.iv53.i ; 2 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 31
  store i8 0, ptr %i.bsi, align 1, !tbaa !146
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsh, i64 16
  store i32 -1, ptr %i.bsj, align 8, !tbaa !24
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv53.i, %indvars.iv.i120
  br i1 %exitcond.not.i, label %strip_nops.exit, label %.lr.ph48.i, !llvm.loop !115

.loopexit.sink.split.i:                           ; preds = %thread-pre-split.thread.i, %thread-pre-split.thread70.i
  %.sink.i117 = phi i32 [ 0, %thread-pre-split.thread70.i ], [ 1, %thread-pre-split.thread.i ]
  store i32 %.sink.i117, ptr %i.bqb, align 8, !tbaa !48
  br label %strip_nops.exit

strip_nops.exit:                                  ; preds = %.lr.ph48.i, %.loopexit.sink.split.i, %._crit_edge.i125, %bb.lh, %.loopexit
  %i.bsk = getelementptr inbounds nuw i8, ptr %.1302, i64 64 ; 2 uses
  %i.bsl = icmp ult ptr %i.bsk, %i.ci
  br i1 %i.bsl, label %.lr.ph303.a, label %.lr.ph316, !llvm.loop !116

.lr.ph316:                                        ; preds = %strip_nops.exit, %zend_jmp_optimization.exit
  %.2313 = phi ptr [ %i.coc, %zend_jmp_optimization.exit ], [ %i.ch, %strip_nops.exit ] ; 16 uses
  %.2208312 = phi i32 [ %.3, %zend_jmp_optimization.exit ], [ 0, %strip_nops.exit ] ; 15 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %.2313, i64 8
  %i.bsn = load i32, ptr %i.bsm, align 8, !tbaa !45
  %.not81 = icmp sgt i32 %i.bsn, -1
  br i1 %.not81, label %zend_jmp_optimization.exit, label %bb.lp

bb.lp:                                            ; preds = %.lr.ph316
  %i.bso = getelementptr inbounds nuw i8, ptr %.2313, i64 16 ; 7 uses
  %i.bsp = load i32, ptr %i.bso, align 8, !tbaa !48 ; 2 uses
  %i.bsq = icmp eq i32 %i.bsp, 0
  br i1 %i.bsq, label %zend_jmp_optimization.exit, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.bsr = load ptr, ptr %i.cj, align 8, !tbaa !46 ; 6 uses
  %i.bss = getelementptr inbounds nuw i8, ptr %.2313, i64 12
  %i.bst = load i32, ptr %i.bss, align 4, !tbaa !47
  %i.bsu = zext i32 %i.bst to i64
  %i.bsv = getelementptr inbounds nuw [32 x i8], ptr %i.bsr, i64 %i.bsu
  %i.bsw = zext i32 %i.bsp to i64
  %i.bsx = getelementptr inbounds nuw [32 x i8], ptr %i.bsv, i64 %i.bsw ; 14 uses
  %i.bsy = getelementptr inbounds i8, ptr %i.bsx, i64 -32 ; 3 uses
  %i.bsz = getelementptr inbounds i8, ptr %i.bsx, i64 -4 ; 6 uses
  %i.bta = load i8, ptr %i.bsz, align 4, !tbaa !51 ; 7 uses
  switch i8 %i.bta, label %zend_jmp_optimization.exit [
    i8 42, label %bb.lr
    i8 -104, label %bb.mk
    i8 -87, label %bb.mk
    i8 -58, label %bb.mk
    i8 43, label %bb.mr
    i8 44, label %bb.mr
    i8 47, label %bb.nz
    i8 46, label %bb.nz
  ]

bb.lr:                                            ; preds = %bb.lq
  %i.btb = load ptr, ptr %i.cg, align 8, !tbaa !43 ; 6 uses
  %i.btc = load ptr, ptr %.2313, align 8, !tbaa !54 ; 4 uses
  %i.btd = load i32, ptr %i.btc, align 4, !tbaa !56
  %i.bte = sext i32 %i.btd to i64
  %i.btf = getelementptr inbounds [64 x i8], ptr %i.btb, i64 %i.bte ; 5 uses
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 16
  %i.bth = load i32, ptr %i.btg, align 8, !tbaa !48 ; 2 uses
  %i.bti = icmp eq i32 %i.bth, 0
  br i1 %i.bti, label %bb.ls, label %get_target_block.exit309.i

bb.ls:                                            ; preds = %bb.lr
  %i.btj = getelementptr inbounds nuw i8, ptr %i.btf, i64 8
  %i.btk = load i32, ptr %i.btj, align 8, !tbaa !45
  %i.btl = and i32 %i.btk, 6640
  %.not.i305.i = icmp eq i32 %i.btl, 0
  br i1 %.not.i305.i, label %.preheader344.i, label %in_hitlist.exit316.thread.i

.preheader344.i:                                  ; preds = %bb.ls, %bb.lt
  %.0.i306.i = phi ptr [ %i.btp, %bb.lt ], [ %i.btf, %bb.ls ]
  %i.btm = load ptr, ptr %.0.i306.i, align 8, !tbaa !54
  %i.btn = load i32, ptr %i.btm, align 4, !tbaa !56 ; 2 uses
  %i.bto = sext i32 %i.btn to i64
  %i.btp = getelementptr inbounds [64 x i8], ptr %i.btb, i64 %i.bto ; 5 uses
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 16
  %i.btr = load i32, ptr %i.btq, align 8, !tbaa !48
  %i.bts = icmp eq i32 %i.btr, 0
  br i1 %i.bts, label %bb.lt, label %.critedge.i307.i

bb.lt:                                            ; preds = %.preheader344.i
  %i.btt = getelementptr inbounds nuw i8, ptr %i.btp, i64 8
  %i.btu = load i32, ptr %i.btt, align 8, !tbaa !45
  %i.btv = and i32 %i.btu, 6640
  %.not14.i308.i = icmp eq i32 %i.btv, 0
  br i1 %.not14.i308.i, label %.preheader344.i, label %.critedge.i307.i, !llvm.loop !117

.critedge.i307.i:                                 ; preds = %bb.lt, %.preheader344.i
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btp, i64 16
  store i32 %i.btn, ptr %i.btc, align 4, !tbaa !56
  %i.btx = add i32 %.2208312, 1
  %.pre504.i = load i32, ptr %i.btw, align 8, !tbaa !48
  br label %get_target_block.exit309.i

get_target_block.exit309.i:                       ; preds = %.critedge.i307.i, %bb.lr
  %.36 = phi i32 [ %i.btx, %.critedge.i307.i ], [ %.2208312, %bb.lr ] ; 2 uses
  %i.bty = phi i32 [ %.pre504.i, %.critedge.i307.i ], [ %i.bth, %bb.lr ]
  %.1.i304.i = phi ptr [ %i.btp, %.critedge.i307.i ], [ %i.btf, %bb.lr ] ; 2 uses
  %i.btz = icmp eq i32 %i.bty, 1
  br i1 %i.btz, label %.lr.ph425.i, label %in_hitlist.exit316.thread.i

.lr.ph425.i:                                      ; preds = %get_target_block.exit309.i, %get_target_block.exit303.i
  %.38 = phi i32 [ %.39, %get_target_block.exit303.i ], [ %.36, %get_target_block.exit309.i ] ; 4 uses
  %.0424.i = phi i32 [ %10, %get_target_block.exit303.i ], [ 0, %get_target_block.exit309.i ] ; 3 uses
  %.0254423.i = phi ptr [ %.1.i298.i, %get_target_block.exit303.i ], [ %.1.i304.i, %get_target_block.exit309.i ] ; 4 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %.0254423.i, i64 12
  %i.bub = load i32, ptr %i.bua, align 4, !tbaa !47
  %i.buc = zext i32 %i.bub to i64
  %i.bud = getelementptr inbounds nuw [32 x i8], ptr %i.bsr, i64 %i.buc
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 28
  %i.buf = load i8, ptr %i.bue, align 4, !tbaa !51
  %.not577.i.not.not = icmp ne i8 %i.buf, 42      ; 4 uses
  br i1 %.not577.i.not.not, label %in_hitlist.exit316.thread.i, label %bb.lu

bb.lu:                                            ; preds = %.lr.ph425.i
  %i.bug = load ptr, ptr %.0254423.i, align 8, !tbaa !54
  %i.buh = load i32, ptr %i.bug, align 4, !tbaa !56 ; 4 uses
  %.not439.i = icmp eq i32 %.0424.i, 0
  br i1 %.not439.i, label %in_hitlist.exit316.i, label %.lr.ph422.preheader.i

.lr.ph422.preheader.i:                            ; preds = %bb.lu
  %wide.trip.count486.i = zext nneg i32 %.0424.i to i64 ; 2 uses
  br label %.lr.ph422.i

bb.lv:                                            ; preds = %.lr.ph422.i
  %indvars.iv.next491.i = add nuw nsw i64 %indvars.iv490.i, 1 ; 2 uses
  %exitcond493.not.i = icmp eq i64 %indvars.iv.next491.i, %wide.trip.count486.i
  br i1 %exitcond493.not.i, label %in_hitlist.exit316.i, label %.lr.ph422.i, !llvm.loop !118

.lr.ph422.i:                                      ; preds = %bb.lv, %.lr.ph422.preheader.i
  %indvars.iv490.i = phi i64 [ 0, %.lr.ph422.preheader.i ], [ %indvars.iv.next491.i, %bb.lv ] ; 2 uses
  %i.bui = getelementptr inbounds nuw [4 x i8], ptr %.0.i95, i64 %indvars.iv490.i
  %i.buj = load i32, ptr %i.bui, align 4, !tbaa !56
  %i.buk = icmp eq i32 %i.buj, %i.buh
  br i1 %i.buk, label %in_hitlist.exit316.thread.i, label %bb.lv

in_hitlist.exit316.i:                             ; preds = %bb.lv, %bb.lu
  %.pre-phi.i138 = phi i64 [ 0, %bb.lu ], [ %wide.trip.count486.i, %bb.lv ]
  %10 = add nuw nsw i32 %.0424.i, 1
  %i.bul = getelementptr inbounds nuw [4 x i8], ptr %.0.i95, i64 %.pre-phi.i138
  store i32 %i.buh, ptr %i.bul, align 4, !tbaa !56
  store i32 %i.buh, ptr %i.btc, align 4, !tbaa !56
  %i.bum = add i32 %.38, 1                        ; 2 uses
  %i.bun = sext i32 %i.buh to i64
  %i.buo = getelementptr inbounds [64 x i8], ptr %i.btb, i64 %i.bun ; 5 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %i.buo, i64 16
  %i.buq = load i32, ptr %i.bup, align 8, !tbaa !48 ; 2 uses
  %i.bur = icmp eq i32 %i.buq, 0
  br i1 %i.bur, label %bb.lw, label %get_target_block.exit303.i

bb.lw:                                            ; preds = %in_hitlist.exit316.i
  %i.bus = getelementptr inbounds nuw i8, ptr %i.buo, i64 8
  %i.but = load i32, ptr %i.bus, align 8, !tbaa !45
  %i.buu = and i32 %i.but, 6640
  %.not.i299.i = icmp eq i32 %i.buu, 0
  br i1 %.not.i299.i, label %.preheader342.i, label %in_hitlist.exit316.thread.i

.preheader342.i:                                  ; preds = %bb.lw, %bb.lx
  %.0.i300.i = phi ptr [ %i.buy, %bb.lx ], [ %i.buo, %bb.lw ]
  %i.buv = load ptr, ptr %.0.i300.i, align 8, !tbaa !54
  %i.buw = load i32, ptr %i.buv, align 4, !tbaa !56 ; 2 uses
  %i.bux = sext i32 %i.buw to i64
  %i.buy = getelementptr inbounds [64 x i8], ptr %i.btb, i64 %i.bux ; 5 uses
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 16
  %i.bva = load i32, ptr %i.buz, align 8, !tbaa !48
  %i.bvb = icmp eq i32 %i.bva, 0
  br i1 %i.bvb, label %bb.lx, label %.critedge.i301.i

bb.lx:                                            ; preds = %.preheader342.i
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.buy, i64 8
  %i.bvd = load i32, ptr %i.bvc, align 8, !tbaa !45
  %i.bve = and i32 %i.bvd, 6640
  %.not14.i302.i = icmp eq i32 %i.bve, 0
  br i1 %.not14.i302.i, label %.preheader342.i, label %.critedge.i301.i, !llvm.loop !117

.critedge.i301.i:                                 ; preds = %bb.lx, %.preheader342.i
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.buy, i64 16
  store i32 %i.buw, ptr %i.btc, align 4, !tbaa !56
  %i.bvg = add i32 %.38, 2
  %.pre505.i = load i32, ptr %i.bvf, align 8, !tbaa !48
  br label %get_target_block.exit303.i

get_target_block.exit303.i:                       ; preds = %.critedge.i301.i, %in_hitlist.exit316.i
  %.39 = phi i32 [ %i.bvg, %.critedge.i301.i ], [ %i.bum, %in_hitlist.exit316.i ] ; 2 uses
  %i.bvh = phi i32 [ %.pre505.i, %.critedge.i301.i ], [ %i.buq, %in_hitlist.exit316.i ]
  %.1.i298.i = phi ptr [ %i.buy, %.critedge.i301.i ], [ %i.buo, %in_hitlist.exit316.i ] ; 2 uses
  %i.bvi = icmp eq i32 %i.bvh, 1
  br i1 %i.bvi, label %.lr.ph425.i, label %in_hitlist.exit316.thread.i, !llvm.loop !119

in_hitlist.exit316.thread.i:                      ; preds = %get_target_block.exit303.i, %bb.lw, %.lr.ph425.i, %.lr.ph422.i, %get_target_block.exit309.i, %bb.ls
  %.37 = phi i32 [ %.38, %.lr.ph422.i ], [ %.36, %get_target_block.exit309.i ], [ %.2208312, %bb.ls ], [ %.38, %.lr.ph425.i ], [ %i.bum, %bb.lw ], [ %.39, %get_target_block.exit303.i ] ; 5 uses
  %.0254363.i = phi ptr [ %.0254423.i, %.lr.ph422.i ], [ %.1.i304.i, %get_target_block.exit309.i ], [ %i.btf, %bb.ls ], [ %.0254423.i, %.lr.ph425.i ], [ %i.buo, %bb.lw ], [ %.1.i298.i, %get_target_block.exit303.i ] ; 2 uses
  %i.bvj = phi i1 [ true, %.lr.ph422.i ], [ false, %get_target_block.exit309.i ], [ false, %bb.ls ], [ %.not577.i.not.not, %.lr.ph425.i ], [ %.not577.i.not.not, %bb.lw ], [ %.not577.i.not.not, %get_target_block.exit303.i ]
  %i.bvk = load i32, ptr %9, align 8, !tbaa !32
  %i.bvl = sext i32 %i.bvk to i64
  %i.bvm = getelementptr inbounds [64 x i8], ptr %i.btb, i64 %i.bvl
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lz, %in_hitlist.exit316.thread.i
  %.pn.i322.i = phi ptr [ %.2313, %in_hitlist.exit316.thread.i ], [ %.0.i323.i, %bb.lz ] ; 3 uses
  %.0.i323.i = getelementptr inbounds nuw i8, ptr %.pn.i322.i, i64 64 ; 4 uses
  %i.bvn = icmp eq ptr %.0.i323.i, %i.bvm
  br i1 %i.bvn, label %get_next_block.exit329.i, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.bvo = getelementptr inbounds nuw i8, ptr %.pn.i322.i, i64 72
  %i.bvp = load i32, ptr %i.bvo, align 8, !tbaa !45
  %.not.i324.i = icmp sgt i32 %i.bvp, -1
  br i1 %.not.i324.i, label %bb.ly, label %.preheader.i136

.preheader.i136:                                  ; preds = %bb.lz
  %i.bvq = getelementptr inbounds nuw i8, ptr %.pn.i322.i, i64 80
  %i.bvr = load i32, ptr %i.bvq, align 8, !tbaa !48
  %i.bvs = icmp eq i32 %i.bvr, 0
  br i1 %i.bvs, label %.lr.ph432.i, label %get_next_block.exit329.i

.lr.ph432.i:                                      ; preds = %.preheader.i136, %bb.ma
  %.1.i325431.i = phi ptr [ %i.bvz, %bb.ma ], [ %.0.i323.i, %.preheader.i136 ] ; 3 uses
  %i.bvt = getelementptr inbounds nuw i8, ptr %.1.i325431.i, i64 8
  %i.bvu = load i32, ptr %i.bvt, align 8, !tbaa !45
  %i.bvv = and i32 %i.bvu, 6644
  %.not14.i328.i = icmp eq i32 %i.bvv, 0
  br i1 %.not14.i328.i, label %bb.ma, label %get_next_block.exit329.i

bb.ma:                                            ; preds = %.lr.ph432.i
  %i.bvw = load ptr, ptr %.1.i325431.i, align 8, !tbaa !54
  %i.bvx = load i32, ptr %i.bvw, align 4, !tbaa !56
  %i.bvy = sext i32 %i.bvx to i64
  %i.bvz = getelementptr inbounds [64 x i8], ptr %i.btb, i64 %i.bvy ; 3 uses
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 16
  %i.bwb = load i32, ptr %i.bwa, align 8, !tbaa !48
  %i.bwc = icmp eq i32 %i.bwb, 0
  br i1 %i.bwc, label %.lr.ph432.i, label %get_next_block.exit329.i, !llvm.loop !120

get_next_block.exit329.i:                         ; preds = %bb.ly, %bb.ma, %.lr.ph432.i, %.preheader.i136
  %.013.i327.i = phi ptr [ %i.bvz, %bb.ma ], [ %.0.i323.i, %.preheader.i136 ], [ %.1.i325431.i, %.lr.ph432.i ], [ null, %bb.ly ]
  %i.bwd = icmp eq ptr %.0254363.i, %.013.i327.i
  br i1 %i.bwd, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %get_next_block.exit329.i
  %i.bwe = getelementptr inbounds i8, ptr %i.bsx, i64 -24
  store i32 -1, ptr %i.bwe, align 8, !tbaa !24
  %i.bwf = getelementptr inbounds i8, ptr %i.bsx, i64 -20
  store i32 -1, ptr %i.bwf, align 4, !tbaa !24
  store <4 x i8> zeroinitializer, ptr %i.bsz, align 4, !tbaa !24
  %i.bwg = getelementptr inbounds i8, ptr %i.bsx, i64 -16
  store i32 -1, ptr %i.bwg, align 8, !tbaa !24
  %i.bwh = add i32 %.37, 1
  %i.bwi = load i32, ptr %i.bso, align 8, !tbaa !48
  %i.bwj = add i32 %i.bwi, -1
  store i32 %i.bwj, ptr %i.bso, align 8, !tbaa !48
  br label %zend_jmp_optimization.exit

bb.mc:                                            ; preds = %get_next_block.exit329.i
  br i1 %i.bvj, label %bb.md, label %zend_jmp_optimization.exit

bb.md:                                            ; preds = %bb.mc
  %i.bwk = getelementptr inbounds nuw i8, ptr %.0254363.i, i64 12
  %i.bwl = load i32, ptr %i.bwk, align 4, !tbaa !47
  %i.bwm = zext i32 %i.bwl to i64
  %i.bwn = getelementptr inbounds nuw [32 x i8], ptr %i.bsr, i64 %i.bwm ; 2 uses
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwn, i64 28
  %i.bwp = load i8, ptr %i.bwo, align 4, !tbaa !51
  switch i8 %i.bwp, label %zend_jmp_optimization.exit [
    i8 62, label %bb.me
    i8 111, label %bb.me
    i8 -95, label %bb.me
  ]

bb.me:                                            ; preds = %bb.md, %bb.md, %bb.md
  %i.bwq = load i32, ptr %i.cr, align 4, !tbaa !57
  %i.bwr = and i32 %i.bwq, 32768
  %.not266.i = icmp eq i32 %i.bwr, 0
  br i1 %.not266.i, label %bb.mf, label %zend_jmp_optimization.exit

bb.mf:                                            ; preds = %bb.me
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bsy, ptr noundef nonnull align 8 dereferenceable(32) %i.bwn, i64 32, i1 false), !tbaa.struct !158
  %i.bws = getelementptr inbounds i8, ptr %i.bsx, i64 -3
  %i.bwt = load i8, ptr %i.bws, align 1, !tbaa !49
  %i.bwu = icmp eq i8 %i.bwt, 1
  br i1 %i.bwu, label %bb.mg, label %bb.mj

bb.mg:                                            ; preds = %bb.mf
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.bwv = load ptr, ptr %i.cl, align 8, !tbaa !52
  %i.bww = getelementptr inbounds i8, ptr %i.bsx, i64 -24 ; 2 uses
  %i.bwx = load i32, ptr %i.bww, align 8, !tbaa !24
  %i.bwy = zext i32 %i.bwx to i64
  %i.bwz = getelementptr inbounds nuw [16 x i8], ptr %i.bwv, i64 %i.bwy ; 2 uses
  %i.bxa = load ptr, ptr %i.bwz, align 8, !tbaa !24 ; 3 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwz, i64 8
  %i.bxc = load i32, ptr %i.bxb, align 8, !tbaa !24 ; 2 uses
  store ptr %i.bxa, ptr %2, align 8, !tbaa !24
  store i32 %i.bxc, ptr %i.cs, align 8, !tbaa !24
  %i.bxd = and i32 %i.bxc, 65280
  %.not267.i = icmp eq i32 %i.bxd, 0
  br i1 %.not267.i, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bxe = load i32, ptr %i.bxa, align 4, !tbaa !26
  %i.bxf = add i32 %i.bxe, 1
  store i32 %i.bxf, ptr %i.bxa, align 4, !tbaa !26
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %i.bxg = call i32 @zend_optimizer_add_literal(ptr noundef nonnull %0, ptr noundef nonnull %2) #11
  store i32 %i.bxg, ptr %i.bww, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mf
  %i.bxh = getelementptr inbounds nuw i8, ptr %.2313, i64 20
  store i32 0, ptr %i.bxh, align 4, !tbaa !149
  %i.bxi = add i32 %.37, 1
  br label %zend_jmp_optimization.exit

bb.mk:                                            ; preds = %bb.lq, %bb.lq, %bb.lq
  %i.bxj = load ptr, ptr %i.cg, align 8, !tbaa !43 ; 4 uses
  %i.bxk = load ptr, ptr %.2313, align 8, !tbaa !54 ; 4 uses
  %i.bxl = load i32, ptr %i.bxk, align 4, !tbaa !56
  %i.bxm = sext i32 %i.bxl to i64
  %i.bxn = getelementptr inbounds [64 x i8], ptr %i.bxj, i64 %i.bxm ; 4 uses
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxn, i64 16
  %i.bxp = load i32, ptr %i.bxo, align 8, !tbaa !48 ; 2 uses
  %i.bxq = icmp eq i32 %i.bxp, 0
  br i1 %i.bxq, label %bb.ml, label %get_target_block.exit297.i

bb.ml:                                            ; preds = %bb.mk
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxn, i64 8
  %i.bxs = load i32, ptr %i.bxr, align 8, !tbaa !45
  %i.bxt = and i32 %i.bxs, 6640
  %.not.i293.i = icmp eq i32 %i.bxt, 0
  br i1 %.not.i293.i, label %.preheader347.i, label %zend_jmp_optimization.exit

.preheader347.i:                                  ; preds = %bb.ml, %bb.mm
  %.0.i294.i = phi ptr [ %i.bxx, %bb.mm ], [ %i.bxn, %bb.ml ]
  %i.bxu = load ptr, ptr %.0.i294.i, align 8, !tbaa !54
  %i.bxv = load i32, ptr %i.bxu, align 4, !tbaa !56 ; 2 uses
  %i.bxw = sext i32 %i.bxv to i64
  %i.bxx = getelementptr inbounds [64 x i8], ptr %i.bxj, i64 %i.bxw ; 5 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 16
  %i.bxz = load i32, ptr %i.bxy, align 8, !tbaa !48
  %i.bya = icmp eq i32 %i.bxz, 0
  br i1 %i.bya, label %bb.mm, label %.critedge.i295.i

bb.mm:                                            ; preds = %.preheader347.i
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bxx, i64 8
  %i.byc = load i32, ptr %i.byb, align 8, !tbaa !45
  %i.byd = and i32 %i.byc, 6640
  %.not14.i296.i = icmp eq i32 %i.byd, 0
  br i1 %.not14.i296.i, label %.preheader347.i, label %.critedge.i295.i, !llvm.loop !117

.critedge.i295.i:                                 ; preds = %bb.mm, %.preheader347.i
  %i.bye = getelementptr inbounds nuw i8, ptr %i.bxx, i64 16
  store i32 %i.bxv, ptr %i.bxk, align 4, !tbaa !56
  %i.byf = add i32 %.2208312, 1
  %.pre502.i = load i32, ptr %i.bye, align 8, !tbaa !48
  br label %get_target_block.exit297.i

get_target_block.exit297.i:                       ; preds = %.critedge.i295.i, %bb.mk
  %.33 = phi i32 [ %i.byf, %.critedge.i295.i ], [ %.2208312, %bb.mk ] ; 2 uses
  %i.byg = phi i32 [ %.pre502.i, %.critedge.i295.i ], [ %i.bxp, %bb.mk ]
  %.1.i292.i = phi ptr [ %i.bxx, %.critedge.i295.i ], [ %i.bxn, %bb.mk ]
  %i.byh = icmp eq i32 %i.byg, 1
  br i1 %i.byh, label %.lr.ph419.i, label %zend_jmp_optimization.exit

.lr.ph419.i:                                      ; preds = %get_target_block.exit297.i, %get_target_block.exit291.i
  %.34 = phi i32 [ %.35, %get_target_block.exit291.i ], [ %.33, %get_target_block.exit297.i ] ; 4 uses
  %.1418.i = phi i32 [ %11, %get_target_block.exit291.i ], [ 0, %get_target_block.exit297.i ] ; 3 uses
  %.1255417.i = phi ptr [ %.1.i286.i, %get_target_block.exit291.i ], [ %.1.i292.i, %get_target_block.exit297.i ] ; 2 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %.1255417.i, i64 12
  %i.byj = load i32, ptr %i.byi, align 4, !tbaa !47
  %i.byk = zext i32 %i.byj to i64
  %i.byl = getelementptr inbounds nuw [32 x i8], ptr %i.bsr, i64 %i.byk
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 28
  %i.byn = load i8, ptr %i.bym, align 4, !tbaa !51
  %i.byo = icmp eq i8 %i.byn, 42
  br i1 %i.byo, label %bb.mn, label %zend_jmp_optimization.exit

bb.mn:                                            ; preds = %.lr.ph419.i
  %i.byp = load ptr, ptr %.1255417.i, align 8, !tbaa !54
  %i.byq = load i32, ptr %i.byp, align 4, !tbaa !56 ; 4 uses
  %.not438.i = icmp eq i32 %.1418.i, 0
  br i1 %.not438.i, label %in_hitlist.exit314.i, label %.lr.ph416.preheader.i

.lr.ph416.preheader.i:                            ; preds = %bb.mn
  %wide.trip.count481.i = zext nneg i32 %.1418.i to i64 ; 2 uses
  br label %.lr.ph416.i

bb.mo:                                            ; preds = %.lr.ph416.i
  %indvars.iv.next484.i = add nuw nsw i64 %indvars.iv483.i, 1 ; 2 uses
  %exitcond486.not.i = icmp eq i64 %indvars.iv.next484.i, %wide.trip.count481.i
  br i1 %exitcond486.not.i, label %in_hitlist.exit314.i, label %.lr.ph416.i, !llvm.loop !118

.lr.ph416.i:                                      ; preds = %bb.mo, %.lr.ph416.preheader.i
  %indvars.iv483.i = phi i64 [ 0, %.lr.ph416.preheader.i ], [ %indvars.iv.next484.i, %bb.mo ] ; 2 uses
  %i.byr = getelementptr inbounds nuw [4 x i8], ptr %.0.i95, i64 %indvars.iv483.i
  %i.bys = load i32, ptr %i.byr, align 4, !tbaa !56
  %i.byt = icmp eq i32 %i.bys, %i.byq
  br i1 %i.byt, label %zend_jmp_optimization.exit, label %bb.mo

in_hitlist.exit314.i:                             ; preds = %bb.mo, %bb.mn
  %.pre-phi499.i = phi i64 [ 0, %bb.mn ], [ %wide.trip.count481.i, %bb.mo ]
  %11 = add nuw nsw i32 %.1418.i, 1
  %i.byu = getelementptr inbounds nuw [4 x i8], ptr %.0.i95, i64 %.pre-phi499.i
  store i32 %i.byq, ptr %i.byu, align 4, !tbaa !56
  store i32 %i.byq, ptr %i.bxk, align 4, !tbaa !56
  %i.byv = add i32 %.34, 1                        ; 2 uses
  %i.byw = sext i32 %i.byq to i64
  %i.byx = getelementptr inbounds [64 x i8], ptr %i.bxj, i64 %i.byw ; 4 uses
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 16
  %i.byz = load i32, ptr %i.byy, align 8, !tbaa !48 ; 2 uses
  %i.bza = icmp eq i32 %i.byz, 0
  br i1 %i.bza, label %bb.mp, label %get_target_block.exit291.i

bb.mp:                                            ; preds = %in_hitlist.exit314.i
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.byx, i64 8
  %i.bzc = load i32, ptr %i.bzb, align 8, !tbaa !45
  %i.bzd = and i32 %i.bzc, 6640
  %.not.i287.i = icmp eq i32 %i.bzd, 0
  br i1 %.not.i287.i, label %.preheader345.i, label %zend_jmp_optimization.exit

.preheader345.i:                                  ; preds = %bb.mp, %bb.mq
  %.0.i288.i = phi ptr [ %i.bzh, %bb.mq ], [ %i.byx, %bb.mp ]
  %i.bze = load ptr, ptr %.0.i288.i, align 8, !tbaa !54
  %i.bzf = load i32, ptr %i.bze, align 4, !tbaa !56 ; 2 uses
  %i.bzg = sext i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds [64 x i8], ptr %i.bxj, i64 %i.bzg ; 5 uses
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzh, i64 16
  %i.bzj = load i32, ptr %i.bzi, align 8, !tbaa !48
  %i.bzk = icmp eq i32 %i.bzj, 0
  br i1 %i.bzk, label %bb.mq, label %.critedge.i289.i

bb.mq:                                            ; preds = %.preheader345.i
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzh, i64 8
  %i.bzm = load i32, ptr %i.bzl, align 8, !tbaa !45
  %i.bzn = and i32 %i.bzm, 6640
  %.not14.i290.i = icmp eq i32 %i.bzn, 0
  br i1 %.not14.i290.i, label %.preheader345.i, label %.critedge.i289.i, !llvm.loop !117

.critedge.i289.i:                                 ; preds = %bb.mq, %.preheader345.i
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzh, i64 16
  store i32 %i.bzf, ptr %i.bxk, align 4, !tbaa !56
  %i.bzp = add i32 %.34, 2
  %.pre503.i = load i32, ptr %i.bzo, align 8, !tbaa !48
  br label %get_target_block.exit291.i

get_target_block.exit291.i:                       ; preds = %.critedge.i289.i, %in_hitlist.exit314.i
  %.35 = phi i32 [ %i.bzp, %.critedge.i289.i ], [ %i.byv, %in_hitlist.exit314.i ] ; 2 uses
  %i.bzq = phi i32 [ %.pre503.i, %.critedge.i289.i ], [ %i.byz, %in_hitlist.exit314.i ]
  %.1.i286.i = phi ptr [ %i.bzh, %.critedge.i289.i ], [ %i.byx, %in_hitlist.exit314.i ]
  %i.bzr = icmp eq i32 %i.bzq, 1
  br i1 %i.bzr, label %.lr.ph419.i, label %zend_jmp_optimization.exit, !llvm.loop !121

bb.mr:                                            ; preds = %bb.lq, %bb.lq
  %i.bzs = load ptr, ptr %i.cg, align 8, !tbaa !43 ; 9 uses
  %i.bzt = load ptr, ptr %.2313, align 8, !tbaa !54 ; 6 uses
  %i.bzu = load i32, ptr %i.bzt, align 4, !tbaa !56 ; 3 uses
  %i.bzv = sext i32 %i.bzu to i64
  %i.bzw = getelementptr inbounds [64 x i8], ptr %i.bzs, i64 %i.bzv ; 5 uses
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzw, i64 16
  %i.bzy = load i32, ptr %i.bzx, align 8, !tbaa !48 ; 2 uses
  %i.bzz = icmp eq i32 %i.bzy, 0
  br i1 %i.bzz, label %bb.ms, label %get_target_block.exit285.i

bb.ms:                                            ; preds = %bb.mr
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzw, i64 8
  %i.cab = load i32, ptr %i.caa, align 8, !tbaa !45
  %i.cac = and i32 %i.cab, 6640
  %.not.i281.i = icmp eq i32 %i.cac, 0
  br i1 %.not.i281.i, label %.preheader353.i, label %in_hitlist.exit312.thread.i

.preheader353.i:                                  ; preds = %bb.ms, %bb.mt
  %.0.i282.i = phi ptr [ %i.cag, %bb.mt ], [ %i.bzw, %bb.ms ]
  %i.cad = load ptr, ptr %.0.i282.i, align 8, !tbaa !54
  %i.cae = load i32, ptr %i.cad, align 4, !tbaa !56 ; 3 uses
  %i.caf = sext i32 %i.cae to i64
  %i.cag = getelementptr inbounds [64 x i8], ptr %i.bzs, i64 %i.caf ; 5 uses
  %i.cah = getelementptr inbounds nuw i8, ptr %i.cag, i64 16
  %i.cai = load i32, ptr %i.cah, align 8, !tbaa !48
  %i.caj = icmp eq i32 %i.cai, 0
  br i1 %i.caj, label %bb.mt, label %.critedge.i283.i

bb.mt:                                            ; preds = %.preheader353.i
  %i.cak = getelementptr inbounds nuw i8, ptr %i.cag, i64 8
  %i.cal = load i32, ptr %i.cak, align 8, !tbaa !45
  %i.cam = and i32 %i.cal, 6640
  %.not14.i284.i = icmp eq i32 %i.cam, 0
  br i1 %.not14.i284.i, label %.preheader353.i, label %.critedge.i283.i, !llvm.loop !117

.critedge.i283.i:                                 ; preds = %bb.mt, %.preheader353.i
  %i.can = getelementptr inbounds nuw i8, ptr %i.cag, i64 16
  store i32 %i.cae, ptr %i.bzt, align 4, !tbaa !56
  %i.cao = add i32 %.2208312, 1
  %.pre500.i = load i32, ptr %i.can, align 8, !tbaa !48
  br label %get_target_block.exit285.i

get_target_block.exit285.i:                       ; preds = %.critedge.i283.i, %bb.mr
  %i.cap = phi i32 [ %i.cae, %.critedge.i283.i ], [ %i.bzu, %bb.mr ] ; 2 uses
  %.28 = phi i32 [ %i.cao, %.critedge.i283.i ], [ %.2208312, %bb.mr ] ; 2 uses
  %i.caq = phi i32 [ %.pre500.i, %.critedge.i283.i ], [ %i.bzy, %bb.mr ]
  %.1.i280.i = phi ptr [ %i.cag, %.critedge.i283.i ], [ %i.bzw, %bb.mr ] ; 2 uses
  %i.car = icmp eq i32 %i.caq, 1
  br i1 %i.car, label %.lr.ph402.i, label %in_hitlist.exit312.thread.i

.lr.ph402.i:                                      ; preds = %get_target_block.exit285.i
  %i.cas = getelementptr inbounds i8, ptr %i.bsx, i64 -3 ; 2 uses
  %i.cat = getelementptr inbounds i8, ptr %i.bsx, i64 -24 ; 2 uses
  %i.cau = icmp eq i8 %i.bta, 43
  %i.cav = select i1 %i.cau, i32 44, i32 43
  br label %bb.mu

bb.mu:                                            ; preds = %get_target_block.exit279.i, %.lr.ph402.i
  %i.caw = phi i32 [ %i.cap, %.lr.ph402.i ], [ %i.cda, %get_target_block.exit279.i ] ; 4 uses
  %.31 = phi i32 [ %.28, %.lr.ph402.i ], [ %.32, %get_target_block.exit279.i ] ; 6 uses
  %.2401.i = phi i32 [ 0, %.lr.ph402.i ], [ %12, %get_target_block.exit279.i ] ; 3 uses
  %.2256400.i = phi ptr [ %.1.i280.i, %.lr.ph402.i ], [ %.1.i274.i, %get_target_block.exit279.i ] ; 8 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %.2256400.i, i64 12
  %i.cay = load i32, ptr %i.cax, align 4, !tbaa !47
  %i.caz = zext i32 %i.cay to i64
  %i.cba = getelementptr inbounds nuw [32 x i8], ptr %i.bsr, i64 %i.caz ; 5 uses
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cba, i64 28
  %i.cbc = load i8, ptr %i.cbb, align 4, !tbaa !51 ; 3 uses
  %i.cbd = icmp eq i8 %i.cbc, 42
  br i1 %i.cbd, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  %i.cbe = load ptr, ptr %.2256400.i, align 8, !tbaa !54
  br label %bb.ne

bb.mw:                                            ; preds = %bb.mu
  %i.cbf = icmp eq i8 %i.cbc, %i.bta
  br i1 %i.cbf, label %bb.mx, label %bb.na

bb.mx:                                            ; preds = %bb.mw
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cba, i64 29
  %i.cbh = load i8, ptr %i.cbg, align 1, !tbaa !49
  %i.cbi = load i8, ptr %i.cas, align 1, !tbaa !49
  %i.cbj = icmp eq i8 %i.cbh, %i.cbi
  br i1 %i.cbj, label %bb.my, label %bb.na

bb.my:                                            ; preds = %bb.mx
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cba, i64 8
  %i.cbl = load i32, ptr %i.cbk, align 8, !tbaa !24
  %i.cbm = load i32, ptr %i.cat, align 8, !tbaa !24
  %i.cbn = icmp eq i32 %i.cbl, %i.cbm
  br i1 %i.cbn, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  %i.cbo = load ptr, ptr %.2256400.i, align 8, !tbaa !54
  br label %bb.ne

bb.na:                                            ; preds = %bb.my, %bb.mx, %bb.mw
  %i.cbp = zext i8 %i.cbc to i32
  %i.cbq = icmp eq i32 %i.cav, %i.cbp
  br i1 %i.cbq, label %bb.nb, label %in_hitlist.exit312.thread.i

bb.nb:                                            ; preds = %bb.na
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cba, i64 29
  %i.cbs = load i8, ptr %i.cbr, align 1, !tbaa !49
  %i.cbt = load i8, ptr %i.cas, align 1, !tbaa !49
  %i.cbu = icmp eq i8 %i.cbs, %i.cbt
  br i1 %i.cbu, label %bb.nc, label %in_hitlist.exit312.thread.i

bb.nc:                                            ; preds = %bb.nb
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cba, i64 8
  %i.cbw = load i32, ptr %i.cbv, align 8, !tbaa !24
  %i.cbx = load i32, ptr %i.cat, align 8, !tbaa !24
  %i.cby = icmp eq i32 %i.cbw, %i.cbx
  br i1 %i.cby, label %bb.nd, label %in_hitlist.exit312.thread.i

bb.nd:                                            ; preds = %bb.nc
  %i.cbz = load ptr, ptr %.2256400.i, align 8, !tbaa !54
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbz, i64 4
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.mz, %bb.mv
  %.0252.in.i = phi ptr [ %i.cbe, %bb.mv ], [ %i.cbo, %bb.mz ], [ %i.cca, %bb.nd ]
  %.0252.i = load i32, ptr %.0252.in.i, align 4, !tbaa !56 ; 6 uses
  %.not437.i = icmp eq i32 %.2401.i, 0
  br i1 %.not437.i, label %in_hitlist.exit312.i, label %.lr.ph399.preheader.i

.lr.ph399.preheader.i:                            ; preds = %bb.ne
  %wide.trip.count476.i = zext nneg i32 %.2401.i to i64 ; 2 uses
  br label %.lr.ph399.i

bb.nf:                                            ; preds = %.lr.ph399.i
  %indvars.iv.next477.i = add nuw nsw i64 %indvars.iv476.i, 1 ; 2 uses
  %exitcond479.not.i = icmp eq i64 %indvars.iv.next477.i, %wide.trip.count476.i
  br i1 %exitcond479.not.i, label %in_hitlist.exit312.i, label %.lr.ph399.i, !llvm.loop !118

.lr.ph399.i:                                      ; preds = %bb.nf, %.lr.ph399.preheader.i
  %indvars.iv476.i = phi i64 [ 0, %.lr.ph399.preheader.i ], [ %indvars.iv.next477.i, %bb.nf ] ; 2 uses
  %i.ccb = getelementptr inbounds nuw [4 x i8], ptr %.0.i95, i64 %indvars.iv476.i
  %i.ccc = load i32, ptr %i.ccb, align 4, !tbaa !56
  %i.ccd = icmp eq i32 %i.ccc, %.0252.i
  br i1 %i.ccd, label %in_hitlist.exit312.thread.i, label %bb.nf

in_hitlist.exit312.i:                             ; preds = %bb.nf, %bb.ne
  %.pre-phi501.i = phi i64 [ 0, %bb.ne ], [ %wide.trip.count476.i, %bb.nf ]
  %12 = add nuw nsw i32 %.2401.i, 1
  %i.cce = getelementptr inbounds nuw [4 x i8], ptr %.0.i95, i64 %.pre-phi501.i
  store i32 %.0252.i, ptr %i.cce, align 4, !tbaa !56
  store i32 %.0252.i, ptr %i.bzt, align 4, !tbaa !56
  %i.ccf = add i32 %.31, 1                        ; 2 uses
  %i.ccg = sext i32 %.0252.i to i64
  %i.cch = getelementptr inbounds [64 x i8], ptr %i.bzs, i64 %i.ccg ; 5 uses
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cch, i64 16
  %i.ccj = load i32, ptr %i.cci, align 8, !tbaa !48 ; 2 uses
  %i.cck = icmp eq i32 %i.ccj, 0
  br i1 %i.cck, label %bb.ng, label %get_target_block.exit279.i

bb.ng:                                            ; preds = %in_hitlist.exit312.i
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cch, i64 8
  %i.ccm = load i32, ptr %i.ccl, align 8, !tbaa !45
  %i.ccn = and i32 %i.ccm, 6640
  %.not.i275.i = icmp eq i32 %i.ccn, 0
  br i1 %.not.i275.i, label %.preheader351.i, label %in_hitlist.exit312.thread.i

.preheader351.i:                                  ; preds = %bb.ng, %bb.nh
  %.0.i276.i = phi ptr [ %i.ccr, %bb.nh ], [ %i.cch, %bb.ng ]
  %i.cco = load ptr, ptr %.0.i276.i, align 8, !tbaa !54
  %i.ccp = load i32, ptr %i.cco, align 4, !tbaa !56 ; 3 uses
  %i.ccq = sext i32 %i.ccp to i64
  %i.ccr = getelementptr inbounds [64 x i8], ptr %i.bzs, i64 %i.ccq ; 5 uses
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 16
  %i.cct = load i32, ptr %i.ccs, align 8, !tbaa !48
  %i.ccu = icmp eq i32 %i.cct, 0
  br i1 %i.ccu, label %bb.nh, label %.critedge.i277.i

bb.nh:                                            ; preds = %.preheader351.i
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ccr, i64 8
  %i.ccw = load i32, ptr %i.ccv, align 8, !tbaa !45
  %i.ccx = and i32 %i.ccw, 6640
  %.not14.i278.i = icmp eq i32 %i.ccx, 0
  br i1 %.not14.i278.i, label %.preheader351.i, label %.critedge.i277.i, !llvm.loop !117

.critedge.i277.i:                                 ; preds = %bb.nh, %.preheader351.i
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccr, i64 16
  store i32 %i.ccp, ptr %i.bzt, align 4, !tbaa !56
  %i.ccz = add i32 %.31, 2
  %.pre501.i = load i32, ptr %i.ccy, align 8, !tbaa !48
  br label %get_target_block.exit279.i

get_target_block.exit279.i:                       ; preds = %.critedge.i277.i, %in_hitlist.exit312.i
  %i.cda = phi i32 [ %i.ccp, %.critedge.i277.i ], [ %.0252.i, %in_hitlist.exit312.i ] ; 2 uses
  %.32 = phi i32 [ %i.ccz, %.critedge.i277.i ], [ %i.ccf, %in_hitlist.exit312.i ] ; 2 uses
  %i.cdb = phi i32 [ %.pre501.i, %.critedge.i277.i ], [ %i.ccj, %in_hitlist.exit312.i ]
  %.1.i274.i = phi ptr [ %i.ccr, %.critedge.i277.i ], [ %i.cch, %in_hitlist.exit312.i ] ; 2 uses
  %i.cdc = icmp eq i32 %i.cdb, 1
  br i1 %i.cdc, label %bb.mu, label %in_hitlist.exit312.thread.i, !llvm.loop !122

in_hitlist.exit312.thread.i:                      ; preds = %get_target_block.exit279.i, %bb.ng, %bb.nc, %bb.nb, %bb.na, %.lr.ph399.i, %get_target_block.exit285.i, %bb.ms
  %i.cdd = phi i32 [ %i.caw, %.lr.ph399.i ], [ %i.cap, %get_target_block.exit285.i ], [ %i.bzu, %bb.ms ], [ %i.caw, %bb.na ], [ %i.caw, %bb.nb ], [ %i.caw, %bb.nc ], [ %.0252.i, %bb.ng ], [ %i.cda, %get_target_block.exit279.i ]
  %.29 = phi i32 [ %.31, %.lr.ph399.i ], [ %.28, %get_target_block.exit285.i ], [ %.2208312, %bb.ms ], [ %.31, %bb.na ], [ %.31, %bb.nb ], [ %.31, %bb.nc ], [ %i.ccf, %bb.ng ], [ %.32, %get_target_block.exit279.i ] ; 3 uses
  %.2256376.i = phi ptr [ %.2256400.i, %.lr.ph399.i ], [ %.1.i280.i, %get_target_block.exit285.i ], [ %i.bzw, %bb.ms ], [ %.2256400.i, %bb.na ], [ %.2256400.i, %bb.nb ], [ %.2256400.i, %bb.nc ], [ %i.cch, %bb.ng ], [ %.1.i274.i, %get_target_block.exit279.i ] ; 3 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %i.bzt, i64 4 ; 3 uses
  %i.cdf = load i32, ptr %i.cde, align 4, !tbaa !56
  %i.cdg = sext i32 %i.cdf to i64
  %i.cdh = getelementptr inbounds [64 x i8], ptr %i.bzs, i64 %i.cdg ; 5 uses
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 16
  %i.cdj = load i32, ptr %i.cdi, align 8, !tbaa !48
  %i.cdk = icmp eq i32 %i.cdj, 0
  br i1 %i.cdk, label %bb.ni, label %get_follow_block.exit340.i

bb.ni:                                            ; preds = %in_hitlist.exit312.thread.i
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdh, i64 8
  %i.cdm = load i32, ptr %i.cdl, align 8, !tbaa !45
  %i.cdn = and i32 %i.cdm, 6640
  %.not.i336.i = icmp eq i32 %i.cdn, 0
  br i1 %.not.i336.i, label %.preheader350.i, label %get_follow_block.exit340.i

.preheader350.i:                                  ; preds = %bb.ni, %bb.nj
  %.0.i337.i = phi ptr [ %i.cdr, %bb.nj ], [ %i.cdh, %bb.ni ]
  %i.cdo = load ptr, ptr %.0.i337.i, align 8, !tbaa !54
  %i.cdp = load i32, ptr %i.cdo, align 4, !tbaa !56 ; 2 uses
  %i.cdq = sext i32 %i.cdp to i64
  %i.cdr = getelementptr inbounds [64 x i8], ptr %i.bzs, i64 %i.cdq ; 4 uses
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 16
  %i.cdt = load i32, ptr %i.cds, align 8, !tbaa !48
  %i.cdu = icmp eq i32 %i.cdt, 0
  br i1 %i.cdu, label %bb.nj, label %.critedge.i338.i

bb.nj:                                            ; preds = %.preheader350.i
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdr, i64 8
  %i.cdw = load i32, ptr %i.cdv, align 8, !tbaa !45
  %i.cdx = and i32 %i.cdw, 6640
  %.not14.i339.i = icmp eq i32 %i.cdx, 0
  br i1 %.not14.i339.i, label %.preheader350.i, label %.critedge.i338.i, !llvm.loop !123

.critedge.i338.i:                                 ; preds = %bb.nj, %.preheader350.i
  store i32 %i.cdp, ptr %i.cde, align 4, !tbaa !56
  %i.cdy = add i32 %.29, 1
  br label %get_follow_block.exit340.i

get_follow_block.exit340.i:                       ; preds = %.critedge.i338.i, %bb.ni, %in_hitlist.exit312.thread.i
  %.30 = phi i32 [ %i.cdy, %.critedge.i338.i ], [ %.29, %bb.ni ], [ %.29, %in_hitlist.exit312.thread.i ] ; 7 uses
  %.1.i335.i = phi ptr [ %i.cdr, %.critedge.i338.i ], [ %i.cdh, %bb.ni ], [ %i.cdh, %in_hitlist.exit312.thread.i ] ; 7 uses
  %i.cdz = icmp eq ptr %.2256376.i, %.1.i335.i
  br i1 %i.cdz, label %bb.nk, label %bb.nn

bb.nk:                                            ; preds = %get_follow_block.exit340.i
  call void @zend_optimizer_convert_to_free_op1(ptr noundef %0, ptr noundef nonnull %i.bsy) #11
  %i.cea = load i8, ptr %i.bsz, align 4, !tbaa !51
  %i.ceb = icmp eq i8 %i.cea, 0
  br i1 %i.ceb, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk
  %i.cec = load i32, ptr %i.bso, align 8, !tbaa !48
  %i.ced = add i32 %i.cec, -1
  store i32 %i.ced, ptr %i.bso, align 8, !tbaa !48
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  %i.cee = getelementptr inbounds nuw i8, ptr %.2313, i64 20
  store i32 1, ptr %i.cee, align 4, !tbaa !149
  %i.cef = add i32 %.30, 1
  br label %zend_jmp_optimization.exit

bb.nn:                                            ; preds = %get_follow_block.exit340.i
  %i.ceg = getelementptr inbounds nuw i8, ptr %.1.i335.i, i64 16 ; 2 uses
  %i.ceh = load i32, ptr %i.ceg, align 8, !tbaa !48
  %i.cei = icmp eq i32 %i.ceh, 1
  br i1 %i.cei, label %bb.no, label %zend_jmp_optimization.exit

bb.no:                                            ; preds = %bb.nn
  %i.cej = getelementptr inbounds nuw i8, ptr %.1.i335.i, i64 12
  %i.cek = load i32, ptr %i.cej, align 4, !tbaa !47
  %i.cel = zext i32 %i.cek to i64
  %i.cem = getelementptr inbounds nuw [32 x i8], ptr %i.bsr, i64 %i.cel ; 4 uses
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cem, i64 28 ; 2 uses
  %i.ceo = load i8, ptr %i.cen, align 4, !tbaa !51
  %i.cep = icmp eq i8 %i.ceo, 42
  br i1 %i.cep, label %bb.np, label %zend_jmp_optimization.exit

bb.np:                                            ; preds = %bb.no
  %i.ceq = load ptr, ptr %.1.i335.i, align 8, !tbaa !54
  %i.cer = load i32, ptr %i.ceq, align 4, !tbaa !56 ; 2 uses
  %i.ces = icmp eq i32 %i.cdd, %i.cer
  br i1 %i.ces, label %bb.nq, label %bb.nt

bb.nq:                                            ; preds = %bb.np
  call void @zend_optimizer_convert_to_free_op1(ptr noundef %0, ptr noundef nonnull %i.bsy) #11
  %i.cet = load i8, ptr %i.bsz, align 4, !tbaa !51
  %i.ceu = icmp eq i8 %i.cet, 0
  br i1 %i.ceu, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %bb.nq
  %i.cev = load i32, ptr %i.bso, align 8, !tbaa !48
  %i.cew = add i32 %i.cev, -1
  store i32 %i.cew, ptr %i.bso, align 8, !tbaa !48
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.nq
  %i.cex = load ptr, ptr %i.cg, align 8, !tbaa !43
  %i.cey = ptrtoint ptr %.1.i335.i to i64
  %i.cez = ptrtoint ptr %i.cex to i64
  %i.cfa = sub i64 %i.cey, %i.cez
  %i.cfb = lshr exact i64 %i.cfa, 6
  %i.cfc = trunc i64 %i.cfb to i32
  %i.cfd = load ptr, ptr %.2313, align 8, !tbaa !54
  store i32 %i.cfc, ptr %i.cfd, align 4, !tbaa !56
  %i.cfe = getelementptr inbounds nuw i8, ptr %.2313, i64 20
  store i32 1, ptr %i.cfe, align 4, !tbaa !149
  %i.cff = add i32 %.30, 1
  br label %zend_jmp_optimization.exit

bb.nt:                                            ; preds = %bb.np
  %i.cfg = getelementptr inbounds nuw i8, ptr %.1.i335.i, i64 8 ; 3 uses
  %i.cfh = load i32, ptr %i.cfg, align 8, !tbaa !45
  %i.cfi = and i32 %i.cfh, 6644
  %.not.i135 = icmp eq i32 %i.cfi, 0
  br i1 %.not.i135, label %bb.nu, label %zend_jmp_optimization.exit

bb.nu:                                            ; preds = %bb.nt
  %i.cfj = load i32, ptr %9, align 8, !tbaa !32
  %i.cfk = sext i32 %i.cfj to i64
  %i.cfl = getelementptr inbounds [64 x i8], ptr %i.bzs, i64 %i.cfk
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nw, %bb.nu
  %.pn.i.i = phi ptr [ %.1.i335.i, %bb.nu ], [ %.0.i317.i, %bb.nw ] ; 3 uses
  %.0.i317.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 64 ; 4 uses
  %i.cfm = icmp eq ptr %.0.i317.i, %i.cfl
  br i1 %i.cfm, label %get_next_block.exit.i, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.cfn = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 72
  %i.cfo = load i32, ptr %i.cfn, align 8, !tbaa !45
  %.not.i318.i = icmp sgt i32 %i.cfo, -1
  br i1 %.not.i318.i, label %bb.nv, label %.preheader348.i

.preheader348.i:                                  ; preds = %bb.nw
  %i.cfp = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 80
  %i.cfq = load i32, ptr %i.cfp, align 8, !tbaa !48
  %i.cfr = icmp eq i32 %i.cfq, 0
  br i1 %i.cfr, label %.lr.ph411.i, label %get_next_block.exit.i

.lr.ph411.i:                                      ; preds = %.preheader348.i, %bb.nx
  %.1.i319410.i = phi ptr [ %i.cfy, %bb.nx ], [ %.0.i317.i, %.preheader348.i ] ; 3 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr %.1.i319410.i, i64 8
  %i.cft = load i32, ptr %i.cfs, align 8, !tbaa !45
  %i.cfu = and i32 %i.cft, 6644
  %.not14.i321.i = icmp eq i32 %i.cfu, 0
  br i1 %.not14.i321.i, label %bb.nx, label %get_next_block.exit.i

bb.nx:                                            ; preds = %.lr.ph411.i
  %i.cfv = load ptr, ptr %.1.i319410.i, align 8, !tbaa !54
  %i.cfw = load i32, ptr %i.cfv, align 4, !tbaa !56
  %i.cfx = sext i32 %i.cfw to i64
  %i.cfy = getelementptr inbounds [64 x i8], ptr %i.bzs, i64 %i.cfx ; 3 uses
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfy, i64 16
  %i.cga = load i32, ptr %i.cfz, align 8, !tbaa !48
  %i.cgb = icmp eq i32 %i.cga, 0
  br i1 %i.cgb, label %.lr.ph411.i, label %get_next_block.exit.i, !llvm.loop !120

get_next_block.exit.i:                            ; preds = %bb.nv, %bb.nx, %.lr.ph411.i, %.preheader348.i
  %.013.i.i = phi ptr [ %i.cfy, %bb.nx ], [ %.0.i317.i, %.preheader348.i ], [ %.1.i319410.i, %.lr.ph411.i ], [ null, %bb.nv ] ; 2 uses
  %i.cgc = icmp eq ptr %.2256376.i, %.013.i.i
  br i1 %i.cgc, label %bb.ny, label %zend_jmp_optimization.exit

bb.ny:                                            ; preds = %get_next_block.exit.i
  %i.cgd = icmp eq i8 %i.bta, 43
  %i.cge = select i1 %i.cgd, i8 44, i8 43
  store i8 %i.cge, ptr %i.bsz, align 4, !tbaa !51
  store i32 %i.cer, ptr %i.bzt, align 4, !tbaa !56
  %i.cgf = ptrtoint ptr %.2256376.i to i64
  %i.cgg = ptrtoint ptr %i.bzs to i64
  %i.cgh = sub i64 %i.cgf, %i.cgg
  %i.cgi = lshr exact i64 %i.cgh, 6
  %i.cgj = trunc i64 %i.cgi to i32
  store i32 %i.cgj, ptr %i.cde, align 4, !tbaa !56
  %i.cgk = load i32, ptr %i.cfg, align 8, !tbaa !45
  %i.cgl = and i32 %i.cgk, 2147483647
  store i32 %i.cgl, ptr %i.cfg, align 8, !tbaa !45
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cem, i64 8
  store i32 -1, ptr %i.cgm, align 8, !tbaa !24
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cem, i64 12
  store i32 -1, ptr %i.cgn, align 4, !tbaa !24
  store <4 x i8> zeroinitializer, ptr %i.cen, align 4, !tbaa !24
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cem, i64 16
  store i32 -1, ptr %i.cgo, align 8, !tbaa !24
  store i32 0, ptr %i.ceg, align 8, !tbaa !48
  %i.cgp = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8 ; 2 uses
  %i.cgq = load i32, ptr %i.cgp, align 8, !tbaa !45
  %i.cgr = or i32 %i.cgq, 2
  store i32 %i.cgr, ptr %i.cgp, align 8, !tbaa !45
  br label %zend_jmp_optimization.exit

bb.nz:                                            ; preds = %bb.lq, %bb.lq
  %i.cgs = load ptr, ptr %i.cg, align 8, !tbaa !43 ; 5 uses
  %i.cgt = load ptr, ptr %.2313, align 8, !tbaa !54 ; 5 uses
  %i.cgu = load i32, ptr %i.cgt, align 4, !tbaa !56
  %i.cgv = sext i32 %i.cgu to i64
  %i.cgw = getelementptr inbounds [64 x i8], ptr %i.cgs, i64 %i.cgv ; 5 uses
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgw, i64 16
  %i.cgy = load i32, ptr %i.cgx, align 8, !tbaa !48 ; 2 uses
  %i.cgz = icmp eq i32 %i.cgy, 0
  br i1 %i.cgz, label %bb.oa, label %get_target_block.exit273.i

bb.oa:                                            ; preds = %bb.nz
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgw, i64 8
  %i.chb = load i32, ptr %i.cha, align 8, !tbaa !45
  %i.chc = and i32 %i.chb, 6640
  %.not.i269.i = icmp eq i32 %i.chc, 0
  br i1 %.not.i269.i, label %.preheader357.i, label %in_hitlist.exit.thread.i

.preheader357.i:                                  ; preds = %bb.oa, %bb.ob
  %.0.i270.i = phi ptr [ %i.chg, %bb.ob ], [ %i.cgw, %bb.oa ]
  %i.chd = load ptr, ptr %.0.i270.i, align 8, !tbaa !54
  %i.che = load i32, ptr %i.chd, align 4, !tbaa !56 ; 2 uses
  %i.chf = sext i32 %i.che to i64
  %i.chg = getelementptr inbounds [64 x i8], ptr %i.cgs, i64 %i.chf ; 5 uses
  %i.chh = getelementptr inbounds nuw i8, ptr %i.chg, i64 16
  %i.chi = load i32, ptr %i.chh, align 8, !tbaa !48
  %i.chj = icmp eq i32 %i.chi, 0
  br i1 %i.chj, label %bb.ob, label %.critedge.i271.i

bb.ob:                                            ; preds = %.preheader357.i
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chg, i64 8
  %i.chl = load i32, ptr %i.chk, align 8, !tbaa !45
  %i.chm = and i32 %i.chl, 6640
  %.not14.i272.i = icmp eq i32 %i.chm, 0
  br i1 %.not14.i272.i, label %.preheader357.i, label %.critedge.i271.i, !llvm.loop !117

.critedge.i271.i:                                 ; preds = %bb.ob, %.preheader357.i
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chg, i64 16
  store i32 %i.che, ptr %i.cgt, align 4, !tbaa !56
  %i.cho = add i32 %.2208312, 1
  %.pre.i134 = load i32, ptr %i.chn, align 8, !tbaa !48
  br label %get_target_block.exit273.i

get_target_block.exit273.i:                       ; preds = %.critedge.i271.i, %bb.nz
  %.23 = phi i32 [ %i.cho, %.critedge.i271.i ], [ %.2208312, %bb.nz ] ; 2 uses
  %i.chp = phi i32 [ %.pre.i134, %.critedge.i271.i ], [ %i.cgy, %bb.nz ]
  %.1.i268.i = phi ptr [ %i.chg, %.critedge.i271.i ], [ %i.cgw, %bb.nz ] ; 2 uses
  %i.chq = icmp eq i32 %i.chp, 1
  br i1 %i.chq, label %.lr.ph391.i, label %in_hitlist.exit.thread.i

.lr.ph391.i:                                      ; preds = %get_target_block.exit273.i
  %i.chr = getelementptr inbounds i8, ptr %i.bsx, i64 -1 ; 5 uses
  %i.chs = getelementptr inbounds i8, ptr %i.bsx, i64 -16 ; 6 uses
  %i.cht = getelementptr inbounds i8, ptr %i.bsx, i64 -3 ; 5 uses
  %i.chu = getelementptr inbounds i8, ptr %i.bsx, i64 -24 ; 5 uses
  %i.chv = zext i8 %i.bta to i32
  %i.chw = add nsw i32 %i.chv, -3
  %i.chx = icmp eq i8 %i.bta, 46                  ; 2 uses
  %i.chy = select i1 %i.chx, i32 44, i32 43
  %i.chz = select i1 %i.chx, i32 47, i32 46
  br label %bb.oc

bb.oc:                                            ; preds = %get_target_block.exit.i, %.lr.ph391.i
  %.26 = phi i32 [ %.23, %.lr.ph391.i ], [ %.27, %get_target_block.exit.i ] ; 6 uses
  %i.cia = phi ptr [ %i.cgt, %.lr.ph391.i ], [ %i.cmc, %get_target_block.exit.i ] ; 3 uses
  %i.cib = phi ptr [ %i.cgs, %.lr.ph391.i ], [ %i.cme, %get_target_block.exit.i ] ; 3 uses
  %.3390.i = phi i32 [ 0, %.lr.ph391.i ], [ %13, %get_target_block.exit.i ] ; 3 uses
  %.3257388.i = phi ptr [ %.1.i268.i, %.lr.ph391.i ], [ %.1.i.i, %get_target_block.exit.i ] ; 11 uses
  %i.cic = load ptr, ptr %i.cj, align 8, !tbaa !46
  %i.cid = getelementptr inbounds nuw i8, ptr %.3257388.i, i64 12
  %i.cie = load i32, ptr %i.cid, align 4, !tbaa !47
  %i.cif = zext i32 %i.cie to i64
  %i.cig = getelementptr inbounds nuw [32 x i8], ptr %i.cic, i64 %i.cif ; 19 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %i.cig, i64 28
  %i.cii = load i8, ptr %i.cih, align 4, !tbaa !51 ; 4 uses
  %i.cij = icmp eq i8 %i.cii, 42
  br i1 %i.cij, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc
  %i.cik = load ptr, ptr %.3257388.i, align 8, !tbaa !54
  br label %bb.pk

bb.oe:                                            ; preds = %bb.oc
  %i.cil = zext i8 %i.cii to i32                  ; 3 uses
  %i.cim = icmp eq i32 %i.chw, %i.cil
  br i1 %i.cim, label %bb.of, label %bb.ok

bb.of:                                            ; preds = %bb.oe
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cig, i64 29
  %i.cio = load i8, ptr %i.cin, align 1, !tbaa !49 ; 2 uses
  %i.cip = load i8, ptr %i.chr, align 1, !tbaa !146
  %i.ciq = icmp eq i8 %i.cio, %i.cip
  br i1 %i.ciq, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  %i.cir = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.cis = load i32, ptr %i.cir, align 8, !tbaa !24
  %i.cit = load i32, ptr %i.chs, align 8, !tbaa !24
  %i.ciu = icmp eq i32 %i.cis, %i.cit
  br i1 %i.ciu, label %bb.oj, label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  %i.civ = load i8, ptr %i.cht, align 1, !tbaa !49
  %i.ciw = icmp eq i8 %i.cio, %i.civ
  br i1 %i.ciw, label %bb.oi, label %bb.ok

bb.oi:                                            ; preds = %bb.oh
  %i.cix = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.ciy = load i32, ptr %i.cix, align 8, !tbaa !24
  %i.ciz = load i32, ptr %i.chu, align 8, !tbaa !24
  %i.cja = icmp eq i32 %i.ciy, %i.ciz
  br i1 %i.cja, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi, %bb.og
  %i.cjb = load ptr, ptr %.3257388.i, align 8, !tbaa !54
  br label %bb.pk

bb.ok:                                            ; preds = %bb.oi, %bb.oh, %bb.oe
  %i.cjc = icmp eq i8 %i.cii, %i.bta
  br i1 %i.cjc, label %bb.ol, label %bb.or

bb.ol:                                            ; preds = %bb.ok
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.cig, i64 16
  %i.cje = load i32, ptr %i.cjd, align 8, !tbaa !24 ; 2 uses
  %i.cjf = load i32, ptr %i.chs, align 8, !tbaa !24
  %i.cjg = icmp eq i32 %i.cje, %i.cjf
  br i1 %i.cjg, label %bb.om, label %bb.or

bb.om:                                            ; preds = %bb.ol
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cig, i64 29
  %i.cji = load i8, ptr %i.cjh, align 1, !tbaa !49 ; 2 uses
  %i.cjj = load i8, ptr %i.chr, align 1, !tbaa !146
  %i.cjk = icmp eq i8 %i.cji, %i.cjj
  br i1 %i.cjk, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.cjm = load i32, ptr %i.cjl, align 8, !tbaa !24
  %i.cjn = icmp eq i32 %i.cjm, %i.cje
  br i1 %i.cjn, label %bb.oq, label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.om
  %i.cjo = load i8, ptr %i.cht, align 1, !tbaa !49
  %i.cjp = icmp eq i8 %i.cji, %i.cjo
  br i1 %i.cjp, label %bb.op, label %bb.or

bb.op:                                            ; preds = %bb.oo
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.cjr = load i32, ptr %i.cjq, align 8, !tbaa !24
  %i.cjs = load i32, ptr %i.chu, align 8, !tbaa !24
  %i.cjt = icmp eq i32 %i.cjr, %i.cjs
  br i1 %i.cjt, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op, %bb.on
  %i.cju = load ptr, ptr %.3257388.i, align 8, !tbaa !54
  br label %bb.pk

bb.or:                                            ; preds = %bb.op, %bb.oo, %bb.ol, %bb.ok
  %i.cjv = icmp eq i32 %i.chy, %i.cil
  br i1 %i.cjv, label %bb.os, label %bb.ox

bb.os:                                            ; preds = %bb.or
  %i.cjw = getelementptr inbounds nuw i8, ptr %i.cig, i64 29
  %i.cjx = load i8, ptr %i.cjw, align 1, !tbaa !49 ; 2 uses
  %i.cjy = load i8, ptr %i.chr, align 1, !tbaa !146
  %i.cjz = icmp eq i8 %i.cjx, %i.cjy
  br i1 %i.cjz, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.ckb = load i32, ptr %i.cka, align 8, !tbaa !24
  %i.ckc = load i32, ptr %i.chs, align 8, !tbaa !24
  %i.ckd = icmp eq i32 %i.ckb, %i.ckc
  br i1 %i.ckd, label %bb.ow, label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %i.cke = load i8, ptr %i.cht, align 1, !tbaa !49
  %i.ckf = icmp eq i8 %i.cjx, %i.cke
  br i1 %i.ckf, label %bb.ov, label %bb.ox

bb.ov:                                            ; preds = %bb.ou
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.ckh = load i32, ptr %i.ckg, align 8, !tbaa !24
  %i.cki = load i32, ptr %i.chu, align 8, !tbaa !24
  %i.ckj = icmp eq i32 %i.ckh, %i.cki
  br i1 %i.ckj, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov, %bb.ot
  %i.ckk = load ptr, ptr %.3257388.i, align 8, !tbaa !54
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.ckk, i64 4
  br label %bb.pk

bb.ox:                                            ; preds = %bb.ov, %bb.ou, %bb.or
  %i.ckm = icmp eq i32 %i.chz, %i.cil
  br i1 %i.ckm, label %bb.oy, label %bb.pe

bb.oy:                                            ; preds = %bb.ox
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.cig, i64 16
  %i.cko = load i32, ptr %i.ckn, align 8, !tbaa !24 ; 2 uses
  %i.ckp = load i32, ptr %i.chs, align 8, !tbaa !24
  %i.ckq = icmp eq i32 %i.cko, %i.ckp
  br i1 %i.ckq, label %bb.oz, label %bb.pe

bb.oz:                                            ; preds = %bb.oy
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.cig, i64 29
  %i.cks = load i8, ptr %i.ckr, align 1, !tbaa !49 ; 2 uses
  %i.ckt = load i8, ptr %i.chr, align 1, !tbaa !146
  %i.cku = icmp eq i8 %i.cks, %i.ckt
  br i1 %i.cku, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.ckw = load i32, ptr %i.ckv, align 8, !tbaa !24
  %i.ckx = icmp eq i32 %i.ckw, %i.cko
  br i1 %i.ckx, label %bb.pd, label %bb.pb

bb.pb:                                            ; preds = %bb.pa, %bb.oz
  %i.cky = load i8, ptr %i.cht, align 1, !tbaa !49
  %i.ckz = icmp eq i8 %i.cks, %i.cky
  br i1 %i.ckz, label %bb.pc, label %bb.pe

bb.pc:                                            ; preds = %bb.pb
  %i.cla = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.clb = load i32, ptr %i.cla, align 8, !tbaa !24
  %i.clc = load i32, ptr %i.chu, align 8, !tbaa !24
  %i.cld = icmp eq i32 %i.clb, %i.clc
  br i1 %i.cld, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc, %bb.pa
  %i.cle = load ptr, ptr %.3257388.i, align 8, !tbaa !54
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cle, i64 4
  br label %bb.pk

bb.pe:                                            ; preds = %bb.pc, %bb.pb, %bb.oy, %bb.ox
  %i.clg = icmp eq i8 %i.cii, 52
  br i1 %i.clg, label %bb.pf, label %in_hitlist.exit.thread.i

bb.pf:                                            ; preds = %bb.pe
  %i.clh = getelementptr inbounds nuw i8, ptr %i.cig, i64 29
  %i.cli = load i8, ptr %i.clh, align 1, !tbaa !49 ; 2 uses
  %i.clj = load i8, ptr %i.chr, align 1, !tbaa !146
  %i.clk = icmp eq i8 %i.cli, %i.clj
  br i1 %i.clk, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %i.cll = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.clm = load i32, ptr %i.cll, align 8, !tbaa !24
  %i.cln = load i32, ptr %i.chs, align 8, !tbaa !24
  %i.clo = icmp eq i32 %i.clm, %i.cln
  br i1 %i.clo, label %bb.pj, label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %i.clp = load i8, ptr %i.cht, align 1, !tbaa !49
  %i.clq = icmp eq i8 %i.cli, %i.clp
  br i1 %i.clq, label %bb.pi, label %in_hitlist.exit.thread.i

bb.pi:                                            ; preds = %bb.ph
  %i.clr = getelementptr inbounds nuw i8, ptr %i.cig, i64 8
  %i.cls = load i32, ptr %i.clr, align 8, !tbaa !24
  %i.clt = load i32, ptr %i.chu, align 8, !tbaa !24
  %i.clu = icmp eq i32 %i.cls, %i.clt
  br i1 %i.clu, label %bb.pj, label %in_hitlist.exit.thread.i

bb.pj:                                            ; preds = %bb.pi, %bb.pg
  %i.clv = getelementptr inbounds nuw i8, ptr %i.cig, i64 16
  %i.clw = load i32, ptr %i.clv, align 8, !tbaa !24
  store i32 %i.clw, ptr %i.chs, align 8, !tbaa !24
  %i.clx = load ptr, ptr %.3257388.i, align 8, !tbaa !54
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pd, %bb.ow, %bb.oq, %bb.oj, %bb.od
  %.1253.in.i = phi ptr [ %i.cik, %bb.od ], [ %i.cjb, %bb.oj ], [ %i.cju, %bb.oq ], [ %i.ckl, %bb.ow ], [ %i.clf, %bb.pd ], [ %i.clx, %bb.pj ]
  %.1253.i = load i32, ptr %.1253.in.i, align 4, !tbaa !56 ; 4 uses
  %.not436.i = icmp eq i32 %.3390.i, 0
  br i1 %.not436.i, label %in_hitlist.exit.i, label %.lr.ph.preheader.i127

.lr.ph.preheader.i127:                            ; preds = %bb.pk
  %wide.trip.count.i = zext nneg i32 %.3390.i to i64 ; 2 uses
  br label %.lr.ph.i127

bb.pl:                                            ; preds = %.lr.ph.i127
  %indvars.iv.next.i129 = add nuw nsw i64 %indvars.iv.i128, 1 ; 2 uses
  %exitcond.not.i130 = icmp eq i64 %indvars.iv.next.i129, %wide.trip.count.i
  br i1 %exitcond.not.i130, label %in_hitlist.exit.i, label %.lr.ph.i127, !llvm.loop !118

.lr.ph.i127:                                      ; preds = %bb.pl, %.lr.ph.preheader.i127
  %indvars.iv.i128 = phi i64 [ 0, %.lr.ph.preheader.i127 ], [ %indvars.iv.next.i129, %bb.pl ] ; 2 uses
  %i.cly = getelementptr inbounds nuw [4 x i8], ptr %.0.i95, i64 %indvars.iv.i128
  %i.clz = load i32, ptr %i.cly, align 4, !tbaa !56
  %i.cma = icmp eq i32 %i.clz, %.1253.i
  br i1 %i.cma, label %in_hitlist.exit.thread.loopexit.i, label %bb.pl

in_hitlist.exit.i:                                ; preds = %bb.pl, %bb.pk
  %.pre-phi503.i = phi i64 [ 0, %bb.pk ], [ %wide.trip.count.i, %bb.pl ]
  %13 = add nuw nsw i32 %.3390.i, 1
  %i.cmb = getelementptr inbounds nuw [4 x i8], ptr %.0.i95, i64 %.pre-phi503.i
  store i32 %.1253.i, ptr %i.cmb, align 4, !tbaa !56
  %i.cmc = load ptr, ptr %.2313, align 8, !tbaa !54 ; 5 uses
  store i32 %.1253.i, ptr %i.cmc, align 4, !tbaa !56
  %i.cmd = add i32 %.26, 1                        ; 2 uses
  %i.cme = load ptr, ptr %i.cg, align 8, !tbaa !43 ; 5 uses
  %i.cmf = sext i32 %.1253.i to i64
  %i.cmg = getelementptr inbounds [64 x i8], ptr %i.cme, i64 %i.cmf ; 5 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cmg, i64 16
  %i.cmi = load i32, ptr %i.cmh, align 8, !tbaa !48 ; 2 uses
  %i.cmj = icmp eq i32 %i.cmi, 0
  br i1 %i.cmj, label %bb.pm, label %get_target_block.exit.i

bb.pm:                                            ; preds = %in_hitlist.exit.i
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmg, i64 8
  %i.cml = load i32, ptr %i.cmk, align 8, !tbaa !45
  %i.cmm = and i32 %i.cml, 6640
  %.not.i.i131 = icmp eq i32 %i.cmm, 0
  br i1 %.not.i.i131, label %.preheader355.i, label %in_hitlist.exit.thread.i

.preheader355.i:                                  ; preds = %bb.pm, %bb.pn
  %.0.i.i132 = phi ptr [ %i.cmq, %bb.pn ], [ %i.cmg, %bb.pm ]
  %i.cmn = load ptr, ptr %.0.i.i132, align 8, !tbaa !54
  %i.cmo = load i32, ptr %i.cmn, align 4, !tbaa !56 ; 2 uses
  %i.cmp = sext i32 %i.cmo to i64
  %i.cmq = getelementptr inbounds [64 x i8], ptr %i.cme, i64 %i.cmp ; 5 uses
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmq, i64 16
  %i.cms = load i32, ptr %i.cmr, align 8, !tbaa !48
  %i.cmt = icmp eq i32 %i.cms, 0
  br i1 %i.cmt, label %bb.pn, label %.critedge.i.i133

bb.pn:                                            ; preds = %.preheader355.i
  %i.cmu = getelementptr inbounds nuw i8, ptr %i.cmq, i64 8
  %i.cmv = load i32, ptr %i.cmu, align 8, !tbaa !45
  %i.cmw = and i32 %i.cmv, 6640
  %.not14.i.i = icmp eq i32 %i.cmw, 0
  br i1 %.not14.i.i, label %.preheader355.i, label %.critedge.i.i133, !llvm.loop !117

.critedge.i.i133:                                 ; preds = %bb.pn, %.preheader355.i
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.cmq, i64 16
  store i32 %i.cmo, ptr %i.cmc, align 4, !tbaa !56
  %i.cmy = add i32 %.26, 2
  %.pre497.i = load i32, ptr %i.cmx, align 8, !tbaa !48
  br label %get_target_block.exit.i

get_target_block.exit.i:                          ; preds = %.critedge.i.i133, %in_hitlist.exit.i
  %.27 = phi i32 [ %i.cmy, %.critedge.i.i133 ], [ %i.cmd, %in_hitlist.exit.i ] ; 2 uses
  %i.cmz = phi i32 [ %.pre497.i, %.critedge.i.i133 ], [ %i.cmi, %in_hitlist.exit.i ]
  %.1.i.i = phi ptr [ %i.cmq, %.critedge.i.i133 ], [ %i.cmg, %in_hitlist.exit.i ] ; 2 uses
  %i.cna = icmp eq i32 %i.cmz, 1
  br i1 %i.cna, label %bb.oc, label %in_hitlist.exit.thread.i, !llvm.loop !124

in_hitlist.exit.thread.loopexit.i:                ; preds = %.lr.ph.i127
  %.pre498.i = load ptr, ptr %i.cg, align 8, !tbaa !43
  %.pre499.i = load ptr, ptr %.2313, align 8, !tbaa !54
  br label %in_hitlist.exit.thread.i

in_hitlist.exit.thread.i:                         ; preds = %get_target_block.exit.i, %bb.pm, %bb.pi, %bb.ph, %bb.pe, %in_hitlist.exit.thread.loopexit.i, %get_target_block.exit273.i, %bb.oa
  %.24 = phi i32 [ %.2208312, %bb.oa ], [ %.23, %get_target_block.exit273.i ], [ %.26, %in_hitlist.exit.thread.loopexit.i ], [ %.26, %bb.pe ], [ %.26, %bb.ph ], [ %.26, %bb.pi ], [ %i.cmd, %bb.pm ], [ %.27, %get_target_block.exit.i ] ; 3 uses
  %i.cnb = phi ptr [ %i.cgt, %bb.oa ], [ %i.cgt, %get_target_block.exit273.i ], [ %.pre499.i, %in_hitlist.exit.thread.loopexit.i ], [ %i.cia, %bb.pe ], [ %i.cia, %bb.ph ], [ %i.cia, %bb.pi ], [ %i.cmc, %bb.pm ], [ %i.cmc, %get_target_block.exit.i ]
  %i.cnc = phi ptr [ %i.cgs, %bb.oa ], [ %i.cgs, %get_target_block.exit273.i ], [ %.pre498.i, %in_hitlist.exit.thread.loopexit.i ], [ %i.cib, %bb.pe ], [ %i.cib, %bb.ph ], [ %i.cib, %bb.pi ], [ %i.cme, %bb.pm ], [ %i.cme, %get_target_block.exit.i ] ; 2 uses
  %.3257384.i = phi ptr [ %i.cgw, %bb.oa ], [ %.1.i268.i, %get_target_block.exit273.i ], [ %.3257388.i, %in_hitlist.exit.thread.loopexit.i ], [ %.3257388.i, %bb.pe ], [ %.3257388.i, %bb.ph ], [ %.3257388.i, %bb.pi ], [ %i.cmg, %bb.pm ], [ %.1.i.i, %get_target_block.exit.i ]
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cnb, i64 4 ; 2 uses
  %i.cne = load i32, ptr %i.cnd, align 4, !tbaa !56
  %i.cnf = sext i32 %i.cne to i64
  %i.cng = getelementptr inbounds [64 x i8], ptr %i.cnc, i64 %i.cnf ; 5 uses
  %i.cnh = getelementptr inbounds nuw i8, ptr %i.cng, i64 16
  %i.cni = load i32, ptr %i.cnh, align 8, !tbaa !48
  %i.cnj = icmp eq i32 %i.cni, 0
  br i1 %i.cnj, label %bb.po, label %get_follow_block.exit.i

bb.po:                                            ; preds = %in_hitlist.exit.thread.i
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cng, i64 8
  %i.cnl = load i32, ptr %i.cnk, align 8, !tbaa !45
  %i.cnm = and i32 %i.cnl, 6640
  %.not.i331.i = icmp eq i32 %i.cnm, 0
  br i1 %.not.i331.i, label %.preheader354.i, label %get_follow_block.exit.i

.preheader354.i:                                  ; preds = %bb.po, %bb.pp
  %.0.i332.i = phi ptr [ %i.cnq, %bb.pp ], [ %i.cng, %bb.po ]
  %i.cnn = load ptr, ptr %.0.i332.i, align 8, !tbaa !54
  %i.cno = load i32, ptr %i.cnn, align 4, !tbaa !56 ; 2 uses
  %i.cnp = sext i32 %i.cno to i64
  %i.cnq = getelementptr inbounds [64 x i8], ptr %i.cnc, i64 %i.cnp ; 4 uses
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cnq, i64 16
  %i.cns = load i32, ptr %i.cnr, align 8, !tbaa !48
  %i.cnt = icmp eq i32 %i.cns, 0
  br i1 %i.cnt, label %bb.pp, label %.critedge.i333.i

bb.pp:                                            ; preds = %.preheader354.i
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.cnq, i64 8
  %i.cnv = load i32, ptr %i.cnu, align 8, !tbaa !45
  %i.cnw = and i32 %i.cnv, 6640
  %.not14.i334.i = icmp eq i32 %i.cnw, 0
  br i1 %.not14.i334.i, label %.preheader354.i, label %.critedge.i333.i, !llvm.loop !123

.critedge.i333.i:                                 ; preds = %bb.pp, %.preheader354.i
  store i32 %i.cno, ptr %i.cnd, align 4, !tbaa !56
  %i.cnx = add i32 %.24, 1
  br label %get_follow_block.exit.i

get_follow_block.exit.i:                          ; preds = %.critedge.i333.i, %bb.po, %in_hitlist.exit.thread.i
  %.25 = phi i32 [ %i.cnx, %.critedge.i333.i ], [ %.24, %bb.po ], [ %.24, %in_hitlist.exit.thread.i ] ; 2 uses
  %.1.i330.i = phi ptr [ %i.cnq, %.critedge.i333.i ], [ %i.cng, %bb.po ], [ %i.cng, %in_hitlist.exit.thread.i ]
  %i.cny = icmp eq ptr %.3257384.i, %.1.i330.i
  br i1 %i.cny, label %bb.pq, label %zend_jmp_optimization.exit

bb.pq:                                            ; preds = %get_follow_block.exit.i
  store i8 52, ptr %i.bsz, align 4, !tbaa !51
  %i.cnz = getelementptr inbounds i8, ptr %i.bsx, i64 -20
  store i32 0, ptr %i.cnz, align 4, !tbaa !24
  %i.coa = getelementptr inbounds nuw i8, ptr %.2313, i64 20
  store i32 1, ptr %i.coa, align 4, !tbaa !149
  %i.cob = add i32 %.25, 1
  br label %zend_jmp_optimization.exit

zend_jmp_optimization.exit:                       ; preds = %get_target_block.exit291.i, %bb.mp, %.lr.ph419.i, %.lr.ph416.i, %bb.pq, %get_follow_block.exit.i, %bb.ny, %get_next_block.exit.i, %bb.nt, %bb.ns, %bb.no, %bb.nn, %bb.nm, %get_target_block.exit297.i, %bb.ml, %bb.mj, %bb.me, %bb.md, %bb.mc, %bb.mb, %bb.lq, %bb.lp, %.lr.ph316
  %.3 = phi i32 [ %.2208312, %.lr.ph316 ], [ %.2208312, %bb.lp ], [ %.2208312, %bb.lq ], [ %i.bwh, %bb.mb ], [ %.37, %bb.md ], [ %i.bxi, %bb.mj ], [ %.37, %bb.me ], [ %.37, %bb.mc ], [ %.30, %bb.nn ], [ %i.cob, %bb.pq ], [ %.25, %get_follow_block.exit.i ], [ %.34, %.lr.ph416.i ], [ %.33, %get_target_block.exit297.i ], [ %.2208312, %bb.ml ], [ %i.cef, %bb.nm ], [ %i.cff, %bb.ns ], [ %.30, %bb.ny ], [ %.30, %get_next_block.exit.i ], [ %.30, %bb.nt ], [ %.30, %bb.no ], [ %.34, %.lr.ph419.i ], [ %i.byv, %bb.mp ], [ %.35, %get_target_block.exit291.i ] ; 2 uses
  %i.coc = getelementptr inbounds nuw i8, ptr %.2313, i64 64 ; 2 uses
  %i.cod = icmp ult ptr %i.coc, %i.ci
  br i1 %i.cod, label %.lr.ph316, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %zend_jmp_optimization.exit, %zend_t_usage.exit
  %.2208.lcssa = phi i32 [ 0, %zend_t_usage.exit ], [ %.3, %zend_jmp_optimization.exit ] ; 2 uses
  call void @zend_cfg_remark_reachable_blocks(ptr noundef %0, ptr noundef nonnull %9) #11
  %i.coe = load i32, ptr %9, align 8, !tbaa !32   ; 2 uses
  %i.cof = icmp sgt i32 %i.coe, 0
  br i1 %i.cof, label %.lr.ph100.i, label %zend_merge_blocks.exit

.lr.ph100.i:                                      ; preds = %._crit_edge, %bb.qk
  %.41 = phi i32 [ %.42, %bb.qk ], [ %.2208.lcssa, %._crit_edge ] ; 6 uses
  %i.cog = phi i32 [ %i.csi, %bb.qk ], [ %i.coe, %._crit_edge ] ; 5 uses
  %indvars.iv.i137 = phi i64 [ %indvars.iv.next.i141, %bb.qk ], [ 0, %._crit_edge ] ; 3 uses
  %.07598.i = phi ptr [ %.1.i140, %bb.qk ], [ null, %._crit_edge ] ; 12 uses
  %i.coh = load ptr, ptr %i.cg, align 8, !tbaa !43
  %i.coi = getelementptr inbounds nuw [64 x i8], ptr %i.coh, i64 %indvars.iv.i137 ; 13 uses
  %i.coj = getelementptr inbounds nuw i8, ptr %i.coi, i64 8 ; 3 uses
  %i.cok = load i32, ptr %i.coj, align 8, !tbaa !45 ; 3 uses
  %.not.i138 = icmp sgt i32 %i.cok, -1
  br i1 %.not.i138, label %bb.qk, label %bb.pr

bb.pr:                                            ; preds = %.lr.ph100.i
  %i.col = and i32 %i.cok, 2
  %.not82.i = icmp eq i32 %i.col, 0
  br i1 %.not82.i, label %bb.qk, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.com = and i32 %i.cok, 6644
  %i.con = icmp eq i32 %i.com, 0
  %i.coo = icmp ne ptr %.07598.i, null
  %or.cond.i139 = select i1 %i.con, i1 %i.coo, i1 false
  br i1 %or.cond.i139, label %bb.pt, label %bb.qk

bb.pt:                                            ; preds = %bb.ps
  %i.cop = getelementptr inbounds nuw i8, ptr %.07598.i, i64 20 ; 2 uses
  %i.coq = load i32, ptr %i.cop, align 4, !tbaa !149
  %i.cor = icmp eq i32 %i.coq, 1
  br i1 %i.cor, label %bb.pu, label %bb.qk

bb.pu:                                            ; preds = %bb.pt
  %i.cos = load ptr, ptr %.07598.i, align 8, !tbaa !54
  %i.cot = load i32, ptr %i.cos, align 4, !tbaa !56
  %i.cou = zext i32 %i.cot to i64
  %i.cov = icmp eq i64 %indvars.iv.i137, %i.cou
  br i1 %i.cov, label %bb.pv, label %bb.qk

bb.pv:                                            ; preds = %bb.pu
  %i.cow = load ptr, ptr %i.cj, align 8, !tbaa !46
  %i.cox = getelementptr inbounds nuw i8, ptr %.07598.i, i64 12 ; 2 uses
  %i.coy = load i32, ptr %i.cox, align 4, !tbaa !47
  %i.coz = zext i32 %i.coy to i64
  %i.cpa = getelementptr inbounds nuw [32 x i8], ptr %i.cow, i64 %i.coz
  %i.cpb = getelementptr inbounds nuw i8, ptr %.07598.i, i64 16 ; 2 uses
  %i.cpc = load i32, ptr %i.cpb, align 8, !tbaa !48 ; 2 uses
  %i.cpd = zext i32 %i.cpc to i64
  %i.cpe = getelementptr inbounds nuw [32 x i8], ptr %i.cpa, i64 %i.cpd ; 4 uses
  %.not83.i = icmp eq i32 %i.cpc, 0
  br i1 %.not83.i, label %bb.py, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.cpf = getelementptr inbounds i8, ptr %i.cpe, i64 -4 ; 2 uses
  %i.cpg = load i8, ptr %i.cpf, align 4, !tbaa !51
  %i.cph = icmp eq i8 %i.cpg, 42
  br i1 %i.cph, label %bb.px, label %bb.py

bb.px:                                            ; preds = %bb.pw
  %i.cpi = getelementptr inbounds i8, ptr %i.cpe, i64 -24
  store i32 -1, ptr %i.cpi, align 8, !tbaa !24
  %i.cpj = getelementptr inbounds i8, ptr %i.cpe, i64 -20
  store i32 -1, ptr %i.cpj, align 4, !tbaa !24
  store <4 x i8> zeroinitializer, ptr %i.cpf, align 4, !tbaa !24
  %i.cpk = getelementptr inbounds i8, ptr %i.cpe, i64 -16
  store i32 -1, ptr %i.cpk, align 8, !tbaa !24
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %bb.pw, %bb.pv
  %.07690.i = getelementptr inbounds nuw i8, ptr %.07598.i, i64 64 ; 2 uses
  %.not8491.i = icmp eq ptr %.07690.i, %i.coi
  br i1 %.not8491.i, label %._crit_edge96.i, label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.py, %._crit_edge.i144
end_hunk_0
