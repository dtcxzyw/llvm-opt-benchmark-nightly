loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ff_h264_filter_mb:bb.a
  %i.bnk = getelementptr inbounds nuw i8, ptr @beta_table, i64 %i.bnj
  %i.bnl = load i8, ptr %i.bnk, align 1, !tbaa !84
  %i.bnm = zext i8 %i.bnl to i32
  %i.bnn = zext i32 %i.bnf to i64                 ; 2 uses
  %i.bno = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.bnn
  %i.bnp = load i8, ptr %i.bno, align 1, !tbaa !84
  %i.bnq = zext i8 %i.bnp to i32
  %i.bnr = load i32, ptr %i.bgx, align 8, !tbaa !64
  %i.bns = trunc nuw nsw i64 %i.bks to i32
  %i.bnt = shl i32 %i.bns, %i.bnr
  %i.bnu = sext i32 %i.bnt to i64
  %i.bnv = getelementptr inbounds i8, ptr %6, i64 %i.bnu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #5
  %i.bnw = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.bnn ; 4 uses
  %i.bnx = zext nneg i16 %.sroa.0824.5 to i64
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnw, i64 %i.bnx
  %i.bnz = load i8, ptr %i.bny, align 1, !tbaa !84
  store i8 %i.bnz, ptr %i.z, align 1, !tbaa !84
  %i.boa = zext nneg i16 %.sroa.14.3 to i64
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnw, i64 %i.boa
  %i.boc = load i8, ptr %i.bob, align 1, !tbaa !84
  store i8 %i.boc, ptr %i.bhq, align 1, !tbaa !84
  %i.bod = zext nneg i16 %.sroa.24.3 to i64
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bnw, i64 %i.bod
  %i.bof = load i8, ptr %i.boe, align 1, !tbaa !84
  store i8 %i.bof, ptr %i.bhr, align 1, !tbaa !84
  %i.bog = zext nneg i16 %.sroa.34.3 to i64
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bnw, i64 %i.bog
  %i.boi = load i8, ptr %i.boh, align 1, !tbaa !84
  store i8 %i.boi, ptr %i.bhs, align 1, !tbaa !84
  %i.boj = load ptr, ptr %i.bhb, align 8, !tbaa !89
  call void %i.boj(ptr noundef %i.bnv, i64 noundef %i.bhi, i32 noundef %i.bnq, i32 noundef %i.bnm, ptr noundef nonnull %i.z) #5, !inline_history !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #5
  br label %filter_mb_edgev.exit398

bb.fp:                                            ; preds = %bb.fl
  %i.bok = and i64 %indvars.iv, 1
  %i.bol = icmp eq i64 %i.bok, 0
  br i1 %i.bol, label %bb.fq, label %filter_mb_edgev.exit398

bb.fq:                                            ; preds = %bb.fp
  %i.bom = shl nuw nsw i64 %indvars.iv, 1         ; 2 uses
  %i.bon = load i32, ptr %i.bhd, align 4, !tbaa !77 ; 2 uses
  %i.boo = add i32 %i.bon, %i.bs                  ; 2 uses
  %i.bop = add i32 %i.bon, %i.bw                  ; 2 uses
  %i.boq = icmp ult i32 %i.boo, 68
  %i.bor = icmp ult i32 %i.bop, 68
  %or.cond.i425 = or i1 %i.boq, %i.bor
  br i1 %or.cond.i425, label %filter_mb_edgecv.exit426, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.bos = zext i32 %i.bop to i64
  %i.bot = getelementptr inbounds nuw i8, ptr @beta_table, i64 %i.bos
  %i.bou = load i8, ptr %i.bot, align 1, !tbaa !84
  %i.bov = zext i8 %i.bou to i32
  %i.bow = zext i32 %i.boo to i64                 ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.bow
  %i.boy = load i8, ptr %i.box, align 1, !tbaa !84
  %i.boz = zext i8 %i.boy to i32
  %i.bpa = load i32, ptr %i.bgx, align 8, !tbaa !64
  %i.bpb = trunc nuw nsw i64 %i.bom to i32
  %i.bpc = shl i32 %i.bpb, %i.bpa
  %i.bpd = sext i32 %i.bpc to i64
  %i.bpe = getelementptr inbounds i8, ptr %5, i64 %i.bpd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  %i.bpf = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.bow ; 4 uses
  %i.bpg = zext nneg i16 %.sroa.0824.5 to i64
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpf, i64 %i.bpg
  %i.bpi = load i8, ptr %i.bph, align 1, !tbaa !84
  %i.bpj = add i8 %i.bpi, 1
  store i8 %i.bpj, ptr %i.k, align 1, !tbaa !84
  %i.bpk = zext nneg i16 %.sroa.14.3 to i64
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpf, i64 %i.bpk
  %i.bpm = load i8, ptr %i.bpl, align 1, !tbaa !84
  %i.bpn = add i8 %i.bpm, 1
  store i8 %i.bpn, ptr %i.bhe, align 1, !tbaa !84
  %i.bpo = zext nneg i16 %.sroa.24.3 to i64
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpf, i64 %i.bpo
  %i.bpq = load i8, ptr %i.bpp, align 1, !tbaa !84
  %i.bpr = add i8 %i.bpq, 1
  store i8 %i.bpr, ptr %i.bhf, align 1, !tbaa !84
  %i.bps = zext nneg i16 %.sroa.34.3 to i64
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpf, i64 %i.bps
  %i.bpu = load i8, ptr %i.bpt, align 1, !tbaa !84
  %i.bpv = add i8 %i.bpu, 1
  store i8 %i.bpv, ptr %i.bhg, align 1, !tbaa !84
  %i.bpw = load ptr, ptr %i.bhh, align 8, !tbaa !96
  call void %i.bpw(ptr noundef %i.bpe, i64 noundef %i.bhi, i32 noundef %i.boz, i32 noundef %i.bov, ptr noundef nonnull %i.k) #5, !inline_history !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  br label %filter_mb_edgecv.exit426

filter_mb_edgecv.exit426:                         ; preds = %bb.fq, %bb.fr
  %i.bpx = load i32, ptr %i.bhj, align 16, !tbaa !77 ; 2 uses
  %i.bpy = add i32 %i.bpx, %i.bs                  ; 2 uses
  %i.bpz = add i32 %i.bpx, %i.bw                  ; 2 uses
  %i.bqa = icmp ult i32 %i.bpy, 68
  %i.bqb = icmp ult i32 %i.bpz, 68
  %or.cond.i424 = or i1 %i.bqa, %i.bqb
  br i1 %or.cond.i424, label %filter_mb_edgev.exit398, label %bb.fs

bb.fs:                                            ; preds = %filter_mb_edgecv.exit426
  %i.bqc = zext i32 %i.bpz to i64
  %i.bqd = getelementptr inbounds nuw i8, ptr @beta_table, i64 %i.bqc
  %i.bqe = load i8, ptr %i.bqd, align 1, !tbaa !84
  %i.bqf = zext i8 %i.bqe to i32
  %i.bqg = zext i32 %i.bpy to i64                 ; 2 uses
  %i.bqh = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.bqg
  %i.bqi = load i8, ptr %i.bqh, align 1, !tbaa !84
  %i.bqj = zext i8 %i.bqi to i32
  %i.bqk = load i32, ptr %i.bgx, align 8, !tbaa !64
  %i.bql = trunc nuw nsw i64 %i.bom to i32
  %i.bqm = shl i32 %i.bql, %i.bqk
  %i.bqn = sext i32 %i.bqm to i64
  %i.bqo = getelementptr inbounds i8, ptr %6, i64 %i.bqn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.bqg ; 4 uses
  %i.bqq = zext nneg i16 %.sroa.0824.5 to i64
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqp, i64 %i.bqq
  %i.bqs = load i8, ptr %i.bqr, align 1, !tbaa !84
  %i.bqt = add i8 %i.bqs, 1
  store i8 %i.bqt, ptr %i.l, align 1, !tbaa !84
  %i.bqu = zext nneg i16 %.sroa.14.3 to i64
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqp, i64 %i.bqu
  %i.bqw = load i8, ptr %i.bqv, align 1, !tbaa !84
  %i.bqx = add i8 %i.bqw, 1
  store i8 %i.bqx, ptr %i.bhk, align 1, !tbaa !84
  %i.bqy = zext nneg i16 %.sroa.24.3 to i64
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqp, i64 %i.bqy
  %i.bra = load i8, ptr %i.bqz, align 1, !tbaa !84
  %i.brb = add i8 %i.bra, 1
  store i8 %i.brb, ptr %i.bhl, align 1, !tbaa !84
  %i.brc = zext nneg i16 %.sroa.34.3 to i64
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bqp, i64 %i.brc
  %i.bre = load i8, ptr %i.brd, align 1, !tbaa !84
  %i.brf = add i8 %i.bre, 1
  store i8 %i.brf, ptr %i.bhm, align 1, !tbaa !84
  %i.brg = load ptr, ptr %i.bhh, align 8, !tbaa !96
  call void %i.brg(ptr noundef %i.bqo, i64 noundef %i.bhi, i32 noundef %i.bqj, i32 noundef %i.bqf, ptr noundef nonnull %i.l) #5, !inline_history !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  br label %filter_mb_edgev.exit398

filter_mb_edgev.exit398:                          ; preds = %bb.fs, %filter_mb_edgecv.exit426, %bb.fo, %filter_mb_edgev.exit400, %bb.fp, %filter_mb_edgev.exit402, %.split460.us, %bb.fa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %filter_mb_dir.exit393, label %bb.fa, !llvm.loop !115

filter_mb_dir.exit393:                            ; preds = %filter_mb_edgev.exit398, %filter_mb_edgev.exit
  %i.brh = load ptr, ptr %i.bj, align 8, !tbaa !65
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 12
  %i.brj = load i32, ptr %i.bri, align 4, !tbaa !66 ; 2 uses
  %i.brk = icmp eq i32 %i.brj, 3                  ; 3 uses
  %i.brl = icmp ne i32 %i.brj, 2                  ; 2 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %1, i64 20924
  %i.brn = load i32, ptr %i.brm, align 4, !tbaa !85
  %i.bro = getelementptr inbounds nuw i8, ptr %1, i64 20944
  %i.brp = load i32, ptr %i.bro, align 16, !tbaa !77 ; 5 uses
  %i.brq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @filter_mb_dir.mask_edge_tab, i64 8), i64 %i.avx
  %i.brr = load i8, ptr %i.brq, align 1, !tbaa !84 ; 2 uses
  %i.brs = zext i8 %i.brr to i32
  %i.brt = icmp eq i8 %i.brr, 3
  br i1 %i.brt, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %filter_mb_dir.exit393
  %i.bru = getelementptr inbounds nuw i8, ptr %1, i64 21092
  %i.brv = load i32, ptr %i.bru, align 4, !tbaa !100
  %i.brw = and i32 %i.brv, 15
  %.not.i = icmp eq i32 %i.brw, 0
  %i.brx = select i1 %.not.i, i32 1, i32 4
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %filter_mb_dir.exit393
  %i.bry = phi i32 [ 4, %filter_mb_dir.exit393 ], [ %i.brx, %bb.ft ] ; 2 uses
  %i.brz = and i32 %i.bi, 24                      ; 2 uses
  %i.bsa = icmp eq i32 %i.brp, 0
  br i1 %i.bsa, label %.loopexit453, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.bsb = load i32, ptr %i.bx, align 8, !tbaa !104 ; 2 uses
  %i.bsc = icmp ne i32 %i.bsb, 0
  %i.bsd = and i32 %3, 1
  %i.bse = icmp eq i32 %i.bsd, 0
  %or.cond506.i = and i1 %i.bse, %i.bsc
  br i1 %or.cond506.i, label %bb.fw, label %bb.gm

bb.fw:                                            ; preds = %bb.fv
  %i.bsf = xor i32 %i.avq, 128
  %i.bsg = and i32 %i.bsf, %i.brp
  %.not464.i = icmp eq i32 %i.bsg, 0
  br i1 %.not464.i, label %bb.gm, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.bsh = shl i32 %7, 1
  %i.bsi = shl i32 %8, 1
  %i.bsj = load i32, ptr %i.ba, align 4, !tbaa !103
  %i.bsk = shl nsw i32 %i.bsj, 1
  %i.bsl = sub nsw i32 %i.bd, %i.bsk
  %i.bsm = getelementptr inbounds nuw i8, ptr %0, i64 28560 ; 2 uses
  %i.bsn = getelementptr inbounds nuw i8, ptr %0, i64 34072 ; 2 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %0, i64 31088
  %i.bsp = getelementptr inbounds nuw i8, ptr %1, i64 28628 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 28629
  %i.bsq = getelementptr inbounds nuw i8, ptr %1, i64 28630
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 28631
  %i.bsr = getelementptr inbounds nuw i8, ptr %0, i64 30640
  %i.bss = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.bst = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.bsv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bsw = sext i32 %i.bsh to i64
  %i.bsx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bsy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bta = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.btb = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.btc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.btd = sext i32 %i.bsi to i64                 ; 4 uses
  %i.bte = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.btf = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.btg = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.bth = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bti = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.btj = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.btk = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.btl = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.btm = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.btn = zext i32 %8 to i64
  %i.bto = zext i32 %7 to i64
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %filter_mb_edgeh.exit
  %i.btp = phi i1 [ true, %bb.fx ], [ false, %filter_mb_edgeh.exit ]
  %indvars.iv486 = phi i64 [ 0, %bb.fx ], [ 1, %filter_mb_edgeh.exit ] ; 2 uses
  %.0454.i464 = phi i32 [ %i.bsl, %bb.fx ], [ %i.cba, %filter_mb_edgeh.exit ] ; 2 uses
  %i.btq = load ptr, ptr %i.be, align 8, !tbaa !82
  %i.btr = sext i32 %.0454.i464 to i64            ; 5 uses
  %i.bts = getelementptr inbounds [4 x i8], ptr %i.btq, i64 %i.btr
  %i.btt = load i32, ptr %i.bts, align 4, !tbaa !77 ; 2 uses
  %i.btu = or i32 %i.btt, %i.bi
  %i.btv = and i32 %i.btu, 7
  %.not478.i = icmp eq i32 %i.btv, 0
  br i1 %.not478.i, label %bb.fz, label %.loopexit

bb.fz:                                            ; preds = %bb.fy
  %i.btw = load ptr, ptr %i.bsn, align 8, !tbaa !61
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btw, i64 8
  %i.bty = load i32, ptr %i.btx, align 8, !tbaa !106
  %.not479.i = icmp ne i32 %i.bty, 0
  %i.btz = and i32 %i.btt, 16777216
  %.not480.i = icmp eq i32 %i.btz, 0
  %or.cond507.i = or i1 %.not480.i, %.not479.i
  br i1 %or.cond507.i, label %.loopexit.loopexit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.bua = load ptr, ptr %i.bso, align 8, !tbaa !107
  %i.bub = getelementptr inbounds [2 x i8], ptr %i.bua, i64 %i.btr
  %i.buc = load i16, ptr %i.bub, align 2, !tbaa !90 ; 2 uses
  %i.bud = and i16 %i.buc, 16384
  %.not481.i = icmp eq i16 %i.bud, 0
  br i1 %.not481.i, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %11 = load i8, ptr %i.bsp, align 4, !tbaa !84
  %.not482.i = icmp eq i8 %11, 0
  %12 = select i1 %.not482.i, i16 1, i16 2
  %13 = load i8, ptr %9, align 1, !tbaa !84
  %.not484.i = icmp eq i8 %13, 0
  %14 = select i1 %.not484.i, i16 1, i16 2
  br label %bb.gc

bb.gc:                                            ; preds = %bb.ga, %bb.gb
  %.sroa.0807.0 = phi i16 [ %12, %bb.gb ], [ 2, %bb.ga ] ; 2 uses
  %15 = phi i16 [ %14, %bb.gb ], [ 2, %bb.ga ]    ; 2 uses
  %.not485.i = icmp sgt i16 %i.buc, -1
  br i1 %.not485.i, label %bb.gd, label %.loopexit

bb.gd:                                            ; preds = %bb.gc
  %16 = load i8, ptr %i.bsq, align 2, !tbaa !84
  %.not486.i = icmp eq i8 %16, 0
  %17 = select i1 %.not486.i, i16 1, i16 2
  %18 = load i8, ptr %10, align 1, !tbaa !84
  %.not488.i = icmp eq i8 %18, 0
  %19 = select i1 %.not488.i, i16 1, i16 2
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.fz
  %i.bue = load ptr, ptr %i.bsr, align 8, !tbaa !108
  %i.buf = getelementptr inbounds [48 x i8], ptr %i.bue, i64 %i.btr
  %i.bug = getelementptr inbounds nuw i8, ptr %i.buf, i64 12
  %i.buh = load <4 x i8>, ptr %i.bsp, align 4, !tbaa !84
  %i.bui = load <4 x i8>, ptr %i.bug, align 1, !tbaa !84
  %i.buj = or <4 x i8> %i.bui, %i.buh
  %i.buk = icmp eq <4 x i8> %i.buj, zeroinitializer ; 4 uses
  %20 = extractelement <4 x i1> %i.buk, i64 0
  %21 = select i1 %20, i16 1, i16 2
  %22 = extractelement <4 x i1> %i.buk, i64 1
  %23 = select i1 %22, i16 1, i16 2
  %24 = extractelement <4 x i1> %i.buk, i64 2
  %25 = select i1 %24, i16 1, i16 2
  %26 = extractelement <4 x i1> %i.buk, i64 3
  %27 = select i1 %26, i16 1, i16 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.gd, %bb.gc, %bb.fy, %.loopexit.loopexit
  %.sroa.26.0 = phi i16 [ %27, %.loopexit.loopexit ], [ 3, %bb.fy ], [ %19, %bb.gd ], [ 2, %bb.gc ] ; 5 uses
  %.sroa.18.1 = phi i16 [ %25, %.loopexit.loopexit ], [ 3, %bb.fy ], [ %17, %bb.gd ], [ 2, %bb.gc ] ; 5 uses
  %.sroa.11.0 = phi i16 [ %23, %.loopexit.loopexit ], [ 3, %bb.fy ], [ %15, %bb.gd ], [ %15, %bb.gc ] ; 5 uses
  %.sroa.0807.1 = phi i16 [ %21, %.loopexit.loopexit ], [ 3, %bb.fy ], [ %.sroa.0807.0, %bb.gd ], [ %.sroa.0807.0, %bb.gc ] ; 5 uses
  %i.bul = load ptr, ptr %i.bsm, align 8, !tbaa !83 ; 2 uses
  %i.bum = getelementptr inbounds i8, ptr %i.bul, i64 %i.bg
  %i.bun = load i8, ptr %i.bum, align 1, !tbaa !84
  %i.buo = getelementptr inbounds i8, ptr %i.bul, i64 %i.btr
  %i.bup = load i8, ptr %i.buo, align 1, !tbaa !84 ; 2 uses
  %i.buq = sext i8 %i.bun to i32
  %i.bur = sext i8 %i.bup to i32
  %i.bus = add nsw i32 %i.buq, 1
  %i.but = add nsw i32 %i.bus, %i.bur
  %i.buu = ashr i32 %i.but, 1                     ; 2 uses
  %i.buv = add i32 %i.buu, %i.bs                  ; 2 uses
  %i.buw = add i32 %i.buu, %i.bw                  ; 2 uses
  %i.bux = icmp ult i32 %i.buv, 68
  %i.buy = icmp ult i32 %i.buw, 68
  %or.cond.i408 = or i1 %i.bux, %i.buy
  br i1 %or.cond.i408, label %filter_mb_edgeh.exit409, label %bb.ge

bb.ge:                                            ; preds = %.loopexit
  %i.buz = zext i32 %i.buw to i64
  %i.bva = getelementptr inbounds nuw i8, ptr @beta_table, i64 %i.buz
  %i.bvb = load i8, ptr %i.bva, align 1, !tbaa !84
  %i.bvc = zext i8 %i.bvb to i32
  %i.bvd = zext i32 %i.buv to i64                 ; 2 uses
  %i.bve = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.bvd
  %i.bvf = load i8, ptr %i.bve, align 1, !tbaa !84
  %i.bvg = zext i8 %i.bvf to i32
  %i.bvh = mul nuw nsw i64 %indvars.iv486, %i.bto
  %i.bvi = getelementptr inbounds nuw i8, ptr %4, i64 %i.bvh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #5
  %i.bvj = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.bvd ; 4 uses
  %i.bvk = zext nneg i16 %.sroa.0807.1 to i64
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvj, i64 %i.bvk
  %i.bvm = load i8, ptr %i.bvl, align 1, !tbaa !84
  store i8 %i.bvm, ptr %i.t, align 1, !tbaa !84
  %i.bvn = zext nneg i16 %.sroa.11.0 to i64
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvj, i64 %i.bvn
  %i.bvp = load i8, ptr %i.bvo, align 1, !tbaa !84
  store i8 %i.bvp, ptr %i.bss, align 1, !tbaa !84
  %i.bvq = zext nneg i16 %.sroa.18.1 to i64
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvj, i64 %i.bvq
  %i.bvs = load i8, ptr %i.bvr, align 1, !tbaa !84
  store i8 %i.bvs, ptr %i.bst, align 1, !tbaa !84
  %i.bvt = zext nneg i16 %.sroa.26.0 to i64
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvj, i64 %i.bvt
  %i.bvv = load i8, ptr %i.bvu, align 1, !tbaa !84
  store i8 %i.bvv, ptr %i.bsu, align 1, !tbaa !84
  %i.bvw = load ptr, ptr %i.bsv, align 8, !tbaa !91
  call void %i.bvw(ptr noundef %i.bvi, i64 noundef %i.bsw, i32 noundef %i.bvg, i32 noundef %i.bvc, ptr noundef nonnull %i.t) #5, !inline_history !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  %.pre855 = load ptr, ptr %i.bsm, align 8, !tbaa !83
  %.phi.trans.insert856 = getelementptr inbounds i8, ptr %.pre855, i64 %i.btr
  %.pre857 = load i8, ptr %.phi.trans.insert856, align 1, !tbaa !84
  br label %filter_mb_edgeh.exit409

filter_mb_edgeh.exit409:                          ; preds = %.loopexit, %bb.ge
  %i.bvx = phi i8 [ %i.bup, %.loopexit ], [ %.pre857, %bb.ge ]
  %i.bvy = load ptr, ptr %i.bsn, align 8, !tbaa !61 ; 2 uses
  %i.bvz = sext i8 %i.bvx to i64                  ; 2 uses
  %i.bwa = load i32, ptr %i.bsy, align 16, !tbaa !77
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bvy, i64 646
  %i.bwc = getelementptr inbounds i8, ptr %i.bwb, i64 %i.bvz
  %i.bwd = load i8, ptr %i.bwc, align 1, !tbaa !84
  %i.bwe = zext i8 %i.bwd to i32
  %i.bwf = add i32 %i.bwa, 1
  %i.bwg = add i32 %i.bwf, %i.bwe
  %i.bwh = ashr i32 %i.bwg, 1                     ; 4 uses
  br i1 %.not452, label %filter_mb_edgeh.exit, label %bb.gf

bb.gf:                                            ; preds = %filter_mb_edgeh.exit409
  %i.bwi = load i32, ptr %i.bsx, align 4, !tbaa !77
  %i.bwj = add i32 %i.bwi, 1
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bvy, i64 558
  %i.bwl = getelementptr inbounds i8, ptr %i.bwk, i64 %i.bvz
  %i.bwm = load i8, ptr %i.bwl, align 1, !tbaa !84
  %i.bwn = zext i8 %i.bwm to i32
  %i.bwo = add i32 %i.bwj, %i.bwn
  %i.bwp = ashr i32 %i.bwo, 1                     ; 2 uses
  %i.bwq = mul nuw nsw i64 %indvars.iv486, %i.btn ; 4 uses
  %i.bwr = add i32 %i.bwp, %i.bs                  ; 3 uses
  %i.bws = add i32 %i.bwp, %i.bw                  ; 3 uses
  %i.bwt = icmp ult i32 %i.bwr, 68
  %i.bwu = icmp ult i32 %i.bws, 68
  %or.cond.i406 = or i1 %i.bwt, %i.bwu            ; 2 uses
  br i1 %i.brk, label %bb.gg, label %bb.gj

bb.gg:                                            ; preds = %bb.gf
  br i1 %or.cond.i406, label %filter_mb_edgeh.exit407, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.bwv = zext i32 %i.bws to i64
  %i.bww = getelementptr inbounds nuw i8, ptr @beta_table, i64 %i.bwv
  %i.bwx = load i8, ptr %i.bww, align 1, !tbaa !84
  %i.bwy = zext i8 %i.bwx to i32
  %i.bwz = zext i32 %i.bwr to i64                 ; 2 uses
  %i.bxa = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.bwz
  %i.bxb = load i8, ptr %i.bxa, align 1, !tbaa !84
  %i.bxc = zext i8 %i.bxb to i32
  %i.bxd = getelementptr inbounds nuw i8, ptr %5, i64 %i.bwq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #5
  %i.bxe = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.bwz ; 4 uses
  %i.bxf = zext nneg i16 %.sroa.0807.1 to i64
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxe, i64 %i.bxf
  %i.bxh = load i8, ptr %i.bxg, align 1, !tbaa !84
  store i8 %i.bxh, ptr %i.u, align 1, !tbaa !84
  %i.bxi = zext nneg i16 %.sroa.11.0 to i64
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxe, i64 %i.bxi
  %i.bxk = load i8, ptr %i.bxj, align 1, !tbaa !84
  store i8 %i.bxk, ptr %i.bth, align 1, !tbaa !84
  %i.bxl = zext nneg i16 %.sroa.18.1 to i64
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bxe, i64 %i.bxl
  %i.bxn = load i8, ptr %i.bxm, align 1, !tbaa !84
  store i8 %i.bxn, ptr %i.bti, align 1, !tbaa !84
  %i.bxo = zext nneg i16 %.sroa.26.0 to i64
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxe, i64 %i.bxo
  %i.bxq = load i8, ptr %i.bxp, align 1, !tbaa !84
  store i8 %i.bxq, ptr %i.btj, align 1, !tbaa !84
  %i.bxr = load ptr, ptr %i.bsv, align 8, !tbaa !91
  call void %i.bxr(ptr noundef %i.bxd, i64 noundef %i.btd, i32 noundef %i.bxc, i32 noundef %i.bwy, ptr noundef nonnull %i.u) #5, !inline_history !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  br label %filter_mb_edgeh.exit407

filter_mb_edgeh.exit407:                          ; preds = %bb.gg, %bb.gh
  %i.bxs = add i32 %i.bwh, %i.bs                  ; 2 uses
  %i.bxt = add i32 %i.bwh, %i.bw                  ; 2 uses
  %i.bxu = icmp ult i32 %i.bxs, 68
  %i.bxv = icmp ult i32 %i.bxt, 68
  %or.cond.i405 = or i1 %i.bxu, %i.bxv
  br i1 %or.cond.i405, label %filter_mb_edgeh.exit, label %bb.gi

bb.gi:                                            ; preds = %filter_mb_edgeh.exit407
  %i.bxw = zext i32 %i.bxt to i64
  %i.bxx = getelementptr inbounds nuw i8, ptr @beta_table, i64 %i.bxw
  %i.bxy = load i8, ptr %i.bxx, align 1, !tbaa !84
  %i.bxz = zext i8 %i.bxy to i32
  %i.bya = zext i32 %i.bxs to i64                 ; 2 uses
  %i.byb = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.bya
  %i.byc = load i8, ptr %i.byb, align 1, !tbaa !84
  %i.byd = zext i8 %i.byc to i32
  %i.bye = getelementptr inbounds nuw i8, ptr %6, i64 %i.bwq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #5
  %i.byf = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.bya ; 4 uses
  %i.byg = zext nneg i16 %.sroa.0807.1 to i64
  %i.byh = getelementptr inbounds nuw i8, ptr %i.byf, i64 %i.byg
  %i.byi = load i8, ptr %i.byh, align 1, !tbaa !84
  store i8 %i.byi, ptr %i.v, align 1, !tbaa !84
  %i.byj = zext nneg i16 %.sroa.11.0 to i64
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byf, i64 %i.byj
  %i.byl = load i8, ptr %i.byk, align 1, !tbaa !84
  store i8 %i.byl, ptr %i.btk, align 1, !tbaa !84
  %i.bym = zext nneg i16 %.sroa.18.1 to i64
  %i.byn = getelementptr inbounds nuw i8, ptr %i.byf, i64 %i.bym
  %i.byo = load i8, ptr %i.byn, align 1, !tbaa !84
  store i8 %i.byo, ptr %i.btl, align 1, !tbaa !84
  %i.byp = zext nneg i16 %.sroa.26.0 to i64
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byf, i64 %i.byp
  %i.byr = load i8, ptr %i.byq, align 1, !tbaa !84
  store i8 %i.byr, ptr %i.btm, align 1, !tbaa !84
  %i.bys = load ptr, ptr %i.bsv, align 8, !tbaa !91
  call void %i.bys(ptr noundef %i.bye, i64 noundef %i.btd, i32 noundef %i.byd, i32 noundef %i.bxz, ptr noundef nonnull %i.v) #5, !inline_history !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #5
  br label %filter_mb_edgeh.exit

bb.gj:                                            ; preds = %bb.gf
  br i1 %or.cond.i406, label %filter_mb_edgech.exit433, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.byt = zext i32 %i.bws to i64
  %i.byu = getelementptr inbounds nuw i8, ptr @beta_table, i64 %i.byt
  %i.byv = load i8, ptr %i.byu, align 1, !tbaa !84
  %i.byw = zext i8 %i.byv to i32
  %i.byx = zext i32 %i.bwr to i64                 ; 2 uses
  %i.byy = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.byx
  %i.byz = load i8, ptr %i.byy, align 1, !tbaa !84
  %i.bza = zext i8 %i.byz to i32
  %i.bzb = getelementptr inbounds nuw i8, ptr %5, i64 %i.bwq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.bzc = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.byx ; 4 uses
  %i.bzd = zext nneg i16 %.sroa.0807.1 to i64
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bzc, i64 %i.bzd
  %i.bzf = load i8, ptr %i.bze, align 1, !tbaa !84
  %i.bzg = add i8 %i.bzf, 1
  store i8 %i.bzg, ptr %i.g, align 1, !tbaa !84
  %i.bzh = zext nneg i16 %.sroa.11.0 to i64
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzc, i64 %i.bzh
  %i.bzj = load i8, ptr %i.bzi, align 1, !tbaa !84
  %i.bzk = add i8 %i.bzj, 1
  store i8 %i.bzk, ptr %i.bsz, align 1, !tbaa !84
  %i.bzl = zext nneg i16 %.sroa.18.1 to i64
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzc, i64 %i.bzl
  %i.bzn = load i8, ptr %i.bzm, align 1, !tbaa !84
  %i.bzo = add i8 %i.bzn, 1
  store i8 %i.bzo, ptr %i.bta, align 1, !tbaa !84
  %i.bzp = zext nneg i16 %.sroa.26.0 to i64
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzc, i64 %i.bzp
  %i.bzr = load i8, ptr %i.bzq, align 1, !tbaa !84
  %i.bzs = add i8 %i.bzr, 1
  store i8 %i.bzs, ptr %i.btb, align 1, !tbaa !84
  %i.bzt = load ptr, ptr %i.btc, align 8, !tbaa !97
  call void %i.bzt(ptr noundef %i.bzb, i64 noundef %i.btd, i32 noundef %i.bza, i32 noundef %i.byw, ptr noundef nonnull %i.g) #5, !inline_history !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %filter_mb_edgech.exit433

filter_mb_edgech.exit433:                         ; preds = %bb.gj, %bb.gk
  %i.bzu = add i32 %i.bwh, %i.bs                  ; 2 uses
  %i.bzv = add i32 %i.bwh, %i.bw                  ; 2 uses
  %i.bzw = icmp ult i32 %i.bzu, 68
  %i.bzx = icmp ult i32 %i.bzv, 68
  %or.cond.i431 = or i1 %i.bzw, %i.bzx
  br i1 %or.cond.i431, label %filter_mb_edgeh.exit, label %bb.gl

bb.gl:                                            ; preds = %filter_mb_edgech.exit433
  %i.bzy = zext i32 %i.bzv to i64
  %i.bzz = getelementptr inbounds nuw i8, ptr @beta_table, i64 %i.bzy
  %i.caa = load i8, ptr %i.bzz, align 1, !tbaa !84
  %i.cab = zext i8 %i.caa to i32
  %i.cac = zext i32 %i.bzu to i64                 ; 2 uses
  %i.cad = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.cac
  %i.cae = load i8, ptr %i.cad, align 1, !tbaa !84
  %i.caf = zext i8 %i.cae to i32
  %i.cag = getelementptr inbounds nuw i8, ptr %6, i64 %i.bwq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.cah = getelementptr inbounds nuw [4 x i8], ptr @tc0_table, i64 %i.cac ; 4 uses
  %i.cai = zext nneg i16 %.sroa.0807.1 to i64
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cah, i64 %i.cai
  %i.cak = load i8, ptr %i.caj, align 1, !tbaa !84
  %i.cal = add i8 %i.cak, 1
  store i8 %i.cal, ptr %i.h, align 1, !tbaa !84
  %i.cam = zext nneg i16 %.sroa.11.0 to i64
  %i.can = getelementptr inbounds nuw i8, ptr %i.cah, i64 %i.cam
  %i.cao = load i8, ptr %i.can, align 1, !tbaa !84
  %i.cap = add i8 %i.cao, 1
  store i8 %i.cap, ptr %i.bte, align 1, !tbaa !84
  %i.caq = zext nneg i16 %.sroa.18.1 to i64
  %i.car = getelementptr inbounds nuw i8, ptr %i.cah, i64 %i.caq
  %i.cas = load i8, ptr %i.car, align 1, !tbaa !84
  %i.cat = add i8 %i.cas, 1
  store i8 %i.cat, ptr %i.btf, align 1, !tbaa !84
  %i.cau = zext nneg i16 %.sroa.26.0 to i64
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cah, i64 %i.cau
  %i.caw = load i8, ptr %i.cav, align 1, !tbaa !84
  %i.cax = add i8 %i.caw, 1
  store i8 %i.cax, ptr %i.btg, align 1, !tbaa !84
  %i.cay = load ptr, ptr %i.btc, align 8, !tbaa !97
  call void %i.cay(ptr noundef %i.cag, i64 noundef %i.btd, i32 noundef %i.caf, i32 noundef %i.cab, ptr noundef nonnull %i.h) #5, !inline_history !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %filter_mb_edgeh.exit

filter_mb_edgeh.exit:                             ; preds = %bb.gl, %filter_mb_edgech.exit433, %bb.gi, %filter_mb_edgeh.exit407, %filter_mb_edgeh.exit409
  %i.caz = load i32, ptr %i.ba, align 4, !tbaa !103
  %i.cba = add nsw i32 %i.caz, %.0454.i464
  br i1 %i.btp, label %bb.fy, label %.loopexit453, !llvm.loop !117

bb.gm:                                            ; preds = %bb.fw, %bb.fv
  %i.cbb = or i32 %i.brp, %i.bi                   ; 2 uses
  %i.cbc = and i32 %i.cbb, 7
  %.not465.i = icmp eq i32 %i.cbc, 0
  br i1 %.not465.i, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.cbd = and i32 %i.cbb, 128
  %.not473.i = icmp eq i32 %i.cbd, 0
  br i1 %.not473.i, label %thread-pre-split447, label %bb.go

bb.go:                                            ; preds = %bb.gn
  br label %thread-pre-split447

bb.gp:                                            ; preds = %bb.gm
  %.not467.i = icmp eq i32 %i.bsb, 0
  br i1 %.not467.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.cbe = xor i32 %i.brp, %i.bi
  %i.cbf = and i32 %i.cbe, 128
  %.not468.i = icmp eq i32 %i.cbf, 0
  br i1 %.not468.i, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.not469.i = icmp eq i32 %i.brz, 0
  %i.cbg = and i32 %i.brp, 24
  %.not470.i = icmp eq i32 %i.cbg, 0
  %or.cond508.i = select i1 %.not469.i, i1 true, i1 %.not470.i
  br i1 %or.cond508.i, label %.thread998, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.cbh = call fastcc i32 @check_mv(ptr noundef nonnull %1, i64 noundef 12, i64 noundef 4, i32 noundef range(i32 2, 5) %i.avr)
  %i.cbi = trunc nuw nsw i32 %i.cbh to i16
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gq, %bb.gs
  %.sroa.17806.0 = phi i16 [ 1, %bb.gq ], [ %i.cbi, %bb.gs ] ; 2 uses
  %i.cbj = getelementptr inbounds nuw i8, ptr %1, i64 28628
  %i.cbk = load i8, ptr %i.cbj, align 4, !tbaa !84
  %i.cbl = getelementptr inbounds nuw i8, ptr %1, i64 28620
  %i.cbm = load i8, ptr %i.cbl, align 4, !tbaa !84
  %i.cbn = or i8 %i.cbm, %i.cbk
  %.not471.i = icmp eq i8 %i.cbn, 0
  %spec.select1036 = select i1 %.not471.i, i16 %.sroa.17806.0, i16 2
  br label %bb.gv

.thread998:                                       ; preds = %bb.gr
  %i.cbo = getelementptr inbounds nuw i8, ptr %1, i64 28628
  %i.cbp = load i8, ptr %i.cbo, align 4, !tbaa !84
  %i.cbq = getelementptr inbounds nuw i8, ptr %1, i64 28620
  %i.cbr = load i8, ptr %i.cbq, align 4, !tbaa !84
  %i.cbs = or i8 %i.cbr, %i.cbp
  %.not471.i1001 = icmp eq i8 %i.cbs, 0
  br i1 %.not471.i1001, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %.thread998
  %i.cbt = call fastcc i32 @check_mv(ptr noundef nonnull %1, i64 noundef 12, i64 noundef 4, i32 noundef range(i32 2, 5) %i.avr)
  %i.cbu = trunc nuw nsw i32 %i.cbt to i16
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gt, %.thread998, %bb.gu
  %.not472.i1005 = phi i1 [ true, %bb.gu ], [ true, %.thread998 ], [ false, %bb.gt ] ; 3 uses
  %.sroa.17806.01002 = phi i16 [ undef, %bb.gu ], [ undef, %.thread998 ], [ %.sroa.17806.0, %bb.gt ] ; 4 uses
  %.sroa.0805.1 = phi i16 [ %i.cbu, %bb.gu ], [ 2, %.thread998 ], [ %spec.select1036, %bb.gt ] ; 3 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %1, i64 28629
  %i.cbw = load i8, ptr %i.cbv, align 1, !tbaa !84
  %i.cbx = getelementptr inbounds nuw i8, ptr %1, i64 28621
  %i.cby = load i8, ptr %i.cbx, align 1, !tbaa !84
  %i.cbz = or i8 %i.cby, %i.cbw
  %.not471.i.1 = icmp eq i8 %i.cbz, 0
  br i1 %.not471.i.1, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  br i1 %.not472.i1005, label %.thread1018, label %.thread1011

bb.gx:                                            ; preds = %bb.gv
  %i.cca = getelementptr inbounds nuw i8, ptr %1, i64 28630
  %i.ccb = load i8, ptr %i.cca, align 2, !tbaa !84
  %i.ccc = getelementptr inbounds nuw i8, ptr %1, i64 28622
  %i.ccd = load i8, ptr %i.ccc, align 2, !tbaa !84
  %i.cce = or i8 %i.ccd, %i.ccb
  %.not471.i.2 = icmp eq i8 %i.cce, 0             ; 2 uses
  %brmerge.not = and i1 %.not471.i.2, %.not472.i1005
  %.mux = select i1 %.not471.i.2, i16 %.sroa.17806.01002, i16 2
  br i1 %brmerge.not, label %.thread1021, label %.thread1016

.thread1018:                                      ; preds = %bb.gw
  %i.ccf = call fastcc i32 @check_mv(ptr noundef nonnull %1, i64 noundef 13, i64 noundef 5, i32 noundef range(i32 2, 5) %i.avr)
  %i.ccg = trunc nuw nsw i32 %i.ccf to i16        ; 2 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %1, i64 28630
  %i.cci = load i8, ptr %i.cch, align 2, !tbaa !84
  %i.ccj = getelementptr inbounds nuw i8, ptr %1, i64 28622
  %i.cck = load i8, ptr %i.ccj, align 2, !tbaa !84
  %i.ccl = or i8 %i.cck, %i.cci
  %.not471.i.21020 = icmp eq i8 %i.ccl, 0
  br i1 %.not471.i.21020, label %.thread1021, label %.thread1016

.thread1011:                                      ; preds = %bb.gw
  %i.ccm = getelementptr inbounds nuw i8, ptr %1, i64 28630
  %i.ccn = load i8, ptr %i.ccm, align 2, !tbaa !84
  %i.cco = getelementptr inbounds nuw i8, ptr %1, i64 28622
  %i.ccp = load i8, ptr %i.cco, align 2, !tbaa !84
  %i.ccq = or i8 %i.ccp, %i.ccn
  %.not471.i.21013 = icmp eq i8 %i.ccq, 0
  %spec.select1037 = select i1 %.not471.i.21013, i16 %.sroa.17806.01002, i16 2
  br label %.thread1016

.thread1021:                                      ; preds = %bb.gx, %.thread1018
  %.sroa.9.310151023 = phi i16 [ 2, %bb.gx ], [ %i.ccg, %.thread1018 ]
  %i.ccr = call fastcc i32 @check_mv(ptr noundef nonnull %1, i64 noundef 14, i64 noundef 6, i32 noundef range(i32 2, 5) %i.avr)
  %i.ccs = trunc nuw nsw i32 %i.ccr to i16
  br label %.thread1016

.thread1016:                                      ; preds = %.thread1011, %bb.gx, %.thread1018, %.thread1021
  %.sroa.9.31014 = phi i16 [ %.sroa.9.310151023, %.thread1021 ], [ %i.ccg, %.thread1018 ], [ 2, %bb.gx ], [ %.sroa.17806.01002, %.thread1011 ] ; 3 uses
  %.sroa.13.3 = phi i16 [ %i.ccs, %.thread1021 ], [ 2, %.thread1018 ], [ %.mux, %bb.gx ], [ %spec.select1037, %.thread1011 ] ; 3 uses
  %i.cct = getelementptr inbounds nuw i8, ptr %1, i64 28631
  %i.ccu = load i8, ptr %i.cct, align 1, !tbaa !84
  %i.ccv = getelementptr inbounds nuw i8, ptr %1, i64 28623
  %i.ccw = load i8, ptr %i.ccv, align 1, !tbaa !84
  %i.ccx = or i8 %i.ccw, %i.ccu
  %.not471.i.3 = icmp eq i8 %i.ccx, 0
  br i1 %.not471.i.3, label %bb.gy, label %thread-pre-split447

bb.gy:                                            ; preds = %.thread1016
  br i1 %.not472.i1005, label %bb.gz, label %thread-pre-split447

bb.gz:                                            ; preds = %bb.gy
  %i.ccy = call fastcc i32 @check_mv(ptr noundef nonnull %1, i64 noundef 15, i64 noundef 7, i32 noundef range(i32 2, 5) %i.avr)
  %i.ccz = trunc nuw nsw i32 %i.ccy to i16
  br label %thread-pre-split447

thread-pre-split447:                              ; preds = %bb.go, %.thread1016, %bb.gz, %bb.gy, %bb.gn
  %.sroa.17806.2 = phi i16 [ 4, %bb.gn ], [ 2, %.thread1016 ], [ 3, %bb.go ], [ %i.ccz, %bb.gz ], [ %.sroa.17806.01002, %bb.gy ] ; 6 uses
  %.sroa.13.2 = phi i16 [ 4, %bb.gn ], [ %.sroa.13.3, %.thread1016 ], [ 3, %bb.go ], [ %.sroa.13.3, %bb.gz ], [ %.sroa.13.3, %bb.gy ] ; 6 uses
  %.sroa.9.2 = phi i16 [ 4, %bb.gn ], [ %.sroa.9.31014, %.thread1016 ], [ 3, %bb.go ], [ %.sroa.9.31014, %bb.gz ], [ %.sroa.9.31014, %bb.gy ] ; 6 uses
  %i.cda = phi i16 [ 4, %bb.gn ], [ %.sroa.0805.1, %.thread1016 ], [ 3, %bb.go ], [ %.sroa.0805.1, %bb.gz ], [ %.sroa.0805.1, %bb.gy ] ; 11 uses
  %i.cdb = zext nneg i16 %i.cda to i32
  %i.cdc = sext i16 %.sroa.9.2 to i32
  %i.cdd = add nsw i32 %i.cdc, %i.cdb
  %i.cde = sext i16 %.sroa.13.2 to i32
  %i.cdf = add nsw i32 %i.cdd, %i.cde
  %i.cdg = sext i16 %.sroa.17806.2 to i32
  %i.cdh = sub nsw i32 0, %i.cdg
  %.not475.i = icmp eq i32 %i.cdf, %i.cdh
  br i1 %.not475.i, label %.loopexit453, label %bb.ha

bb.ha:                                            ; preds = %thread-pre-split447
  %i.cdi = getelementptr inbounds nuw i8, ptr %0, i64 28560
  %i.cdj = load ptr, ptr %i.cdi, align 8, !tbaa !83 ; 2 uses
  %i.cdk = getelementptr inbounds i8, ptr %i.cdj, i64 %i.bg
  %i.cdl = load i8, ptr %i.cdk, align 1, !tbaa !84
  %i.cdm = sext i8 %i.cdl to i32
  %i.cdn = sext i32 %i.brn to i64
  %i.cdo = getelementptr inbounds i8, ptr %i.cdj, i64 %i.cdn
  %i.cdp = load i8, ptr %i.cdo, align 1, !tbaa !84 ; 2 uses
  %i.cdq = sext i8 %i.cdp to i32
  %i.cdr = add nsw i32 %i.cdm, 1
  %i.cds = add nsw i32 %i.cdr, %i.cdq
  %i.cdt = ashr i32 %i.cds, 1                     ; 2 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.cdv = load i32, ptr %i.cdu, align 4, !tbaa !77
  %i.cdw = getelementptr inbounds nuw i8, ptr %0, i64 34072
  %i.cdx = load ptr, ptr %i.cdw, align 8, !tbaa !61 ; 2 uses
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.cdx, i64 558
  %i.cdz = sext i8 %i.cdp to i64                  ; 2 uses
  %i.cea = getelementptr inbounds i8, ptr %i.cdy, i64 %i.cdz
  %i.ceb = load i8, ptr %i.cea, align 1, !tbaa !84
  %i.cec = zext i8 %i.ceb to i32
  %i.ced = add i32 %i.cdv, 1
  %i.cee = add i32 %i.ced, %i.cec
  %i.cef = ashr i32 %i.cee, 1                     ; 2 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ceh = load i32, ptr %i.ceg, align 16, !tbaa !77
  %i.cei = getelementptr inbounds nuw i8, ptr %i.cdx, i64 646
  %i.cej = getelementptr inbounds i8, ptr %i.cei, i64 %i.cdz
  %i.cek = load i8, ptr %i.cej, align 1, !tbaa !84
  %i.cel = zext i8 %i.cek to i32
  %i.cem = add i32 %i.ceh, 1
  %i.cen = add i32 %i.cem, %i.cel
  %i.ceo = ashr i32 %i.cen, 1                     ; 4 uses
  %i.cep = add i32 %i.cdt, %i.bs                  ; 2 uses
  %i.ceq = zext i32 %i.cep to i64                 ; 2 uses
  %i.cer = getelementptr inbounds nuw i8, ptr @alpha_table, i64 %i.ceq
  %i.ces = load i8, ptr %i.cer, align 1, !tbaa !84
end_hunk_0
