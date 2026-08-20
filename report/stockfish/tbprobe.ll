inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a

._crit_edge.i.i:                                  ; preds = %.lr.ph.i16.i.prol.loopexit, %.loopexit168.i.i.3, %bb.ca
  %i.bme = load i8, ptr %i.a, align 1, !tbaa !95
  %i.bmf = and i8 %i.bme, 4
  %.not159.i.i = icmp eq i8 %i.bmf, 0
  %.not135182.i.i = icmp slt i64 %indvars.iv237.i.i, 0 ; 2 uses
  %or.cond214.i.i = or i1 %.not135182.i.i, %.not159.i.i
  br i1 %or.cond214.i.i, label %.loopexit167.i.i, label %.lr.ph184.preheader.i.i

.lr.ph184.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %wide.trip.count257.i.i = and i64 %indvars.iv.next238.i.i, 4294967295
  %i.bmg = add nsw i64 %wide.trip.count257.i.i, -1
  %xtraiter510 = and i64 %indvars.iv.next238.i.i, 7 ; 3 uses
  %i.bmh = icmp ult i64 %i.bmg, 7
  br i1 %i.bmh, label %.lr.ph184.i.i.epil.preheader, label %.lr.ph184.preheader.i.i.new

.lr.ph184.preheader.i.i.new:                      ; preds = %.lr.ph184.preheader.i.i
  %unroll_iter = and i64 %indvars.iv.next238.i.i, 4294967288
  br label %.lr.ph184.i.i

.lr.ph.i16.i:                                     ; preds = %.lr.ph.i16.i.prol.loopexit, %.loopexit168.i.i.3
  %indvars.iv247.i.i = phi i64 [ %indvars.iv.next248.i.i.3, %.loopexit168.i.i.3 ], [ %indvars.iv247.i.i.unr, %.lr.ph.i16.i.prol.loopexit ] ; 7 uses
  %indvars.iv.next248.i.i = add nsw i64 %indvars.iv247.i.i, 1 ; 4 uses
  %i.bmi = getelementptr inbounds i8, ptr %i.blo, i64 %indvars.iv247.i.i
  %i.bmj = load i8, ptr %i.bmi, align 1, !tbaa !241 ; 2 uses
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cf
  %indvars.iv.next243.i.i = add nsw i64 %indvars.iv242.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next243.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %indvars67.le.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %.loopexit168.i.i, label %bb.cf, !llvm.loop !321

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i16.i
  %indvars.iv242.i.i = phi i64 [ %indvars.iv.next248.i.i, %.lr.ph.i16.i ], [ %indvars.iv.next243.i.i, %bb.ce ] ; 4 uses
  %i.bmk = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i
  %i.bml = load i8, ptr %i.bmk, align 1, !tbaa !241
  %i.bmm = icmp eq i8 %i.bmj, %i.bml
  br i1 %i.bmm, label %bb.cg, label %bb.ce

bb.cg:                                            ; preds = %bb.cf
  %i.bmn = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i
  %i.bmo = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv247.i.i ; 2 uses
  %i.bmp = load i8, ptr %i.bmo, align 1, !tbaa !241
  store i8 %i.bmj, ptr %i.bmo, align 1, !tbaa !241
  store i8 %i.bmp, ptr %i.bmn, align 1, !tbaa !241
  %i.bmq = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv247.i.i ; 2 uses
  %i.bmr = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv242.i.i ; 2 uses
  %i.bms = load i8, ptr %i.bmq, align 1, !tbaa !95
  %i.bmt = load i8, ptr %i.bmr, align 1, !tbaa !95
  store i8 %i.bmt, ptr %i.bmq, align 1, !tbaa !95
  store i8 %i.bms, ptr %i.bmr, align 1, !tbaa !95
  br label %.loopexit168.i.i

.loopexit168.i.i:                                 ; preds = %bb.ce, %bb.cg
  %indvars.iv.next248.i.i.1 = add nsw i64 %indvars.iv247.i.i, 2 ; 4 uses
  %i.bmu = getelementptr inbounds i8, ptr %i.blo, i64 %indvars.iv.next248.i.i
  %i.bmv = load i8, ptr %i.bmu, align 1, !tbaa !241 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ci, %.loopexit168.i.i
  %indvars.iv242.i.i.1 = phi i64 [ %indvars.iv.next248.i.i.1, %.loopexit168.i.i ], [ %indvars.iv.next243.i.i.1, %bb.ci ] ; 4 uses
  %i.bmw = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i.1
  %i.bmx = load i8, ptr %i.bmw, align 1, !tbaa !241
  %i.bmy = icmp eq i8 %i.bmv, %i.bmx
  br i1 %i.bmy, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %indvars.iv.next243.i.i.1 = add nsw i64 %indvars.iv242.i.i.1, 1 ; 2 uses
  %lftr.wideiv.i.i.1 = trunc i64 %indvars.iv.next243.i.i.1 to i32
  %exitcond.not.i.i.1 = icmp eq i32 %indvars67.le.i, %lftr.wideiv.i.i.1
  br i1 %exitcond.not.i.i.1, label %.loopexit168.i.i.1, label %bb.ch, !llvm.loop !321

bb.cj:                                            ; preds = %bb.ch
  %i.bmz = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i.1
  %i.bna = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next248.i.i ; 2 uses
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !241
  store i8 %i.bmv, ptr %i.bna, align 1, !tbaa !241
  store i8 %i.bnb, ptr %i.bmz, align 1, !tbaa !241
  %i.bnc = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next248.i.i ; 2 uses
  %i.bnd = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv242.i.i.1 ; 2 uses
  %i.bne = load i8, ptr %i.bnc, align 1, !tbaa !95
  %i.bnf = load i8, ptr %i.bnd, align 1, !tbaa !95
  store i8 %i.bnf, ptr %i.bnc, align 1, !tbaa !95
  store i8 %i.bne, ptr %i.bnd, align 1, !tbaa !95
  br label %.loopexit168.i.i.1

.loopexit168.i.i.1:                               ; preds = %bb.ci, %bb.cj
  %indvars.iv.next248.i.i.2 = add nsw i64 %indvars.iv247.i.i, 3 ; 4 uses
  %i.bng = getelementptr inbounds i8, ptr %i.blo, i64 %indvars.iv.next248.i.i.1
  %i.bnh = load i8, ptr %i.bng, align 1, !tbaa !241 ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.loopexit168.i.i.1
  %indvars.iv242.i.i.2 = phi i64 [ %indvars.iv.next248.i.i.2, %.loopexit168.i.i.1 ], [ %indvars.iv.next243.i.i.2, %bb.cl ] ; 4 uses
  %i.bni = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i.2
  %i.bnj = load i8, ptr %i.bni, align 1, !tbaa !241
  %i.bnk = icmp eq i8 %i.bnh, %i.bnj
  br i1 %i.bnk, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %indvars.iv.next243.i.i.2 = add nsw i64 %indvars.iv242.i.i.2, 1 ; 2 uses
  %lftr.wideiv.i.i.2 = trunc i64 %indvars.iv.next243.i.i.2 to i32
  %exitcond.not.i.i.2 = icmp eq i32 %indvars67.le.i, %lftr.wideiv.i.i.2
  br i1 %exitcond.not.i.i.2, label %.loopexit168.i.i.2, label %bb.ck, !llvm.loop !321

bb.cm:                                            ; preds = %bb.ck
  %i.bnl = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i.2
  %i.bnm = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next248.i.i.1 ; 2 uses
  %i.bnn = load i8, ptr %i.bnm, align 1, !tbaa !241
  store i8 %i.bnh, ptr %i.bnm, align 1, !tbaa !241
  store i8 %i.bnn, ptr %i.bnl, align 1, !tbaa !241
  %i.bno = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next248.i.i.1 ; 2 uses
  %i.bnp = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv242.i.i.2 ; 2 uses
  %i.bnq = load i8, ptr %i.bno, align 1, !tbaa !95
  %i.bnr = load i8, ptr %i.bnp, align 1, !tbaa !95
  store i8 %i.bnr, ptr %i.bno, align 1, !tbaa !95
  store i8 %i.bnq, ptr %i.bnp, align 1, !tbaa !95
  br label %.loopexit168.i.i.2

.loopexit168.i.i.2:                               ; preds = %bb.cl, %bb.cm
  %indvars.iv.next248.i.i.3 = add nsw i64 %indvars.iv247.i.i, 4 ; 3 uses
  %i.bns = getelementptr inbounds i8, ptr %i.blo, i64 %indvars.iv.next248.i.i.2
  %i.bnt = load i8, ptr %i.bns, align 1, !tbaa !241 ; 2 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.co, %.loopexit168.i.i.2
  %indvars.iv242.i.i.3 = phi i64 [ %indvars.iv.next248.i.i.3, %.loopexit168.i.i.2 ], [ %indvars.iv.next243.i.i.3, %bb.co ] ; 4 uses
  %i.bnu = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i.3
  %i.bnv = load i8, ptr %i.bnu, align 1, !tbaa !241
  %i.bnw = icmp eq i8 %i.bnt, %i.bnv
  br i1 %i.bnw, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %indvars.iv.next243.i.i.3 = add nsw i64 %indvars.iv242.i.i.3, 1 ; 2 uses
  %lftr.wideiv.i.i.3 = trunc i64 %indvars.iv.next243.i.i.3 to i32
  %exitcond.not.i.i.3 = icmp eq i32 %indvars67.le.i, %lftr.wideiv.i.i.3
  br i1 %exitcond.not.i.i.3, label %.loopexit168.i.i.3, label %bb.cn, !llvm.loop !321

bb.cp:                                            ; preds = %bb.cn
  %i.bnx = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i.3
  %i.bny = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next248.i.i.2 ; 2 uses
  %i.bnz = load i8, ptr %i.bny, align 1, !tbaa !241
  store i8 %i.bnt, ptr %i.bny, align 1, !tbaa !241
  store i8 %i.bnz, ptr %i.bnx, align 1, !tbaa !241
  %i.boa = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next248.i.i.2 ; 2 uses
  %i.bob = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv242.i.i.3 ; 2 uses
  %i.boc = load i8, ptr %i.boa, align 1, !tbaa !95
  %i.bod = load i8, ptr %i.bob, align 1, !tbaa !95
  store i8 %i.bod, ptr %i.boa, align 1, !tbaa !95
  store i8 %i.boc, ptr %i.bob, align 1, !tbaa !95
  br label %.loopexit168.i.i.3

.loopexit168.i.i.3:                               ; preds = %bb.co, %bb.cp
  %exitcond252.not.i.i.3 = icmp eq i64 %indvars.iv.next248.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond252.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i16.i, !llvm.loop !323

.lr.ph184.i.i:                                    ; preds = %.lr.ph184.i.i, %.lr.ph184.preheader.i.i.new
  %indvars.iv253.i.i = phi i64 [ 0, %.lr.ph184.preheader.i.i.new ], [ %indvars.iv.next254.i.i.7, %.lr.ph184.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph184.preheader.i.i.new ], [ %niter.next.7, %.lr.ph184.i.i ]
  %i.boe = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i ; 2 uses
  %i.bof = load i8, ptr %i.boe, align 1, !tbaa !95
  %i.bog = xor i8 %i.bof, 7
  store i8 %i.bog, ptr %i.boe, align 1, !tbaa !95
  %i.boh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 1 ; 2 uses
  %i.boj = load i8, ptr %i.boi, align 1, !tbaa !95
  %i.bok = xor i8 %i.boj, 7
  store i8 %i.bok, ptr %i.boi, align 1, !tbaa !95
  %i.bol = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 2 ; 2 uses
  %i.bon = load i8, ptr %i.bom, align 1, !tbaa !95
  %i.boo = xor i8 %i.bon, 7
  store i8 %i.boo, ptr %i.bom, align 1, !tbaa !95
  %i.bop = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 3 ; 2 uses
  %i.bor = load i8, ptr %i.boq, align 1, !tbaa !95
  %i.bos = xor i8 %i.bor, 7
  store i8 %i.bos, ptr %i.boq, align 1, !tbaa !95
  %i.bot = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 4 ; 2 uses
  %i.bov = load i8, ptr %i.bou, align 1, !tbaa !95
  %i.bow = xor i8 %i.bov, 7
  store i8 %i.bow, ptr %i.bou, align 1, !tbaa !95
  %i.box = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 5 ; 2 uses
  %i.boz = load i8, ptr %i.boy, align 1, !tbaa !95
  %i.bpa = xor i8 %i.boz, 7
  store i8 %i.bpa, ptr %i.boy, align 1, !tbaa !95
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 6 ; 2 uses
  %i.bpd = load i8, ptr %i.bpc, align 1, !tbaa !95
  %i.bpe = xor i8 %i.bpd, 7
  store i8 %i.bpe, ptr %i.bpc, align 1, !tbaa !95
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 7 ; 2 uses
  %i.bph = load i8, ptr %i.bpg, align 1, !tbaa !95
  %i.bpi = xor i8 %i.bph, 7
  store i8 %i.bpi, ptr %i.bpg, align 1, !tbaa !95
  %indvars.iv.next254.i.i.7 = add nuw nsw i64 %indvars.iv253.i.i, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit167.i.i.loopexit.unr-lcssa, label %.lr.ph184.i.i, !llvm.loop !324

.loopexit167.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph184.i.i
  %lcmp.mod511.not = icmp eq i64 %xtraiter510, 0
  br i1 %lcmp.mod511.not, label %.loopexit167.i.i, label %.lr.ph184.i.i.epil.preheader

.lr.ph184.i.i.epil.preheader:                     ; preds = %.loopexit167.i.i.loopexit.unr-lcssa, %.lr.ph184.preheader.i.i
  %indvars.iv253.i.i.epil.init = phi i64 [ 0, %.lr.ph184.preheader.i.i ], [ %indvars.iv.next254.i.i.7, %.loopexit167.i.i.loopexit.unr-lcssa ]
  %lcmp.mod512 = icmp ne i64 %xtraiter510, 0
  call void @llvm.assume(i1 %lcmp.mod512)
  br label %.lr.ph184.i.i.epil

.lr.ph184.i.i.epil:                               ; preds = %.lr.ph184.i.i.epil, %.lr.ph184.i.i.epil.preheader
  %indvars.iv253.i.i.epil = phi i64 [ %indvars.iv253.i.i.epil.init, %.lr.ph184.i.i.epil.preheader ], [ %indvars.iv.next254.i.i.epil, %.lr.ph184.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph184.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph184.i.i.epil ]
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i.epil ; 2 uses
  %i.bpk = load i8, ptr %i.bpj, align 1, !tbaa !95
  %i.bpl = xor i8 %i.bpk, 7
  store i8 %i.bpl, ptr %i.bpj, align 1, !tbaa !95
  %indvars.iv.next254.i.i.epil = add nuw nsw i64 %indvars.iv253.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter510
  br i1 %epil.iter.cmp.not, label %.loopexit167.i.i, label %.lr.ph184.i.i.epil, !llvm.loop !326

.loopexit167.i.i:                                 ; preds = %.loopexit167.i.i.loopexit.unr-lcssa, %.lr.ph184.i.i.epil, %._crit_edge.i.i
  br i1 %i.bgz, label %bb.cq, label %bb.cx

bb.cq:                                            ; preds = %.loopexit167.i.i
  %i.bpm = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 %i.blc
  %i.bpn = load i8, ptr %i.a, align 1, !tbaa !95
  %i.bpo = zext i8 %i.bpn to i64
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %i.bpm, i64 %i.bpo
  %i.bpq = load i32, ptr %i.bpp, align 4, !tbaa !89
  %i.bpr = sext i32 %i.bpq to i64                 ; 5 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.bpt = getelementptr inbounds i8, ptr %i.a, i64 %i.blc ; 3 uses
  %i.bpu = icmp eq i32 %.1119.i.i, 1
  br i1 %i.bpu, label %.loopexit.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bpv = sdiv i32 %.1119.i.i, 2
  %.sext.i.i = sext i32 %i.bpv to i64             ; 3 uses
  %i.bpw = icmp sgt i32 %.1119.i.i, 1             ; 2 uses
  br i1 %i.bpw, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.cr, %bb.cs
  %.010.i.i.i.i.i.i = phi i64 [ %i.bqa, %bb.cs ], [ %.sext.i.i, %bb.cr ] ; 4 uses
  %i.bpx = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %.010.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bpx, null
  br i1 %.not.i.i.i.i.i.i, label %bb.cs, label %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i.i

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bpy = icmp eq i64 %.010.i.i.i.i.i.i, 1
  %i.bpz = add nuw nsw i64 %.010.i.i.i.i.i.i, 1
  %i.bqa = lshr i64 %i.bpz, 1
  br i1 %i.bpy, label %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !327

_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i.i: ; preds = %bb.cs, %.lr.ph.i.i.i.i.i.i, %bb.cr
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.cr ], [ %.010.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.cs ] ; 3 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ null, %bb.cr ], [ %i.bpx, %.lr.ph.i.i.i.i.i.i ], [ null, %bb.cs ] ; 4 uses
  %i.bqb = icmp eq i64 %.sroa.4.0.i.i.i.i, %.sext.i.i
  br i1 %i.bqb, label %bb.ct, label %bb.cu, !prof !190

bb.ct:                                            ; preds = %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i.i
  %i.bqc = getelementptr inbounds i8, ptr %i.bps, i64 %.sext.i.i
  call void @_ZSt22__stable_sort_adaptiveIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_T1_(ptr noundef nonnull %i.bps, ptr noundef nonnull %i.bqc, ptr noundef nonnull %i.bpt, ptr noundef %.sroa.10.0.i.i.i.i, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_110pawns_compENS_6SquareES1_)
  br label %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i.i

bb.cu:                                            ; preds = %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i.i
  %i.bqd = icmp eq ptr %.sroa.10.0.i.i.i.i, null
  br i1 %i.bqd, label %bb.cv, label %bb.cw, !prof !191

bb.cv:                                            ; preds = %bb.cu
  call void @_ZSt21__inplace_stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_(ptr noundef nonnull %i.bps, ptr noundef nonnull %i.bpt, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_110pawns_compENS_6SquareES1_)
  br label %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i.i

bb.cw:                                            ; preds = %bb.cu
  call void @_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef nonnull %i.bps, ptr noundef nonnull %i.bpt, ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %.sroa.4.0.i.i.i.i, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_110pawns_compENS_6SquareES1_)
  br label %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i.i

_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i.i: ; preds = %bb.cw, %bb.cv, %bb.ct
  call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i.i.i, i64 noundef %.sroa.4.0.i.i.i.i) #26
  br i1 %i.bpw, label %iter.check332, label %.loopexit.i.i

iter.check332:                                    ; preds = %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i.i
  %wide.trip.count280.i.i = zext nneg i32 %.1119.i.i to i64 ; 2 uses
  %i.bqe = add nsw i64 %wide.trip.count280.i.i, -1 ; 5 uses
  %min.iters.check294 = icmp ult i32 %.1119.i.i, 9
  br i1 %min.iters.check294, label %.lr.ph196.i.i.preheader, label %vector.main.loop.iter.check295

vector.main.loop.iter.check295:                   ; preds = %iter.check332
  %min.iters.check296 = icmp ult i32 %.1119.i.i, 33
  br i1 %min.iters.check296, label %vec.epilog.ph336, label %vector.ph297

vector.ph297:                                     ; preds = %vector.main.loop.iter.check295
  %i.bqf = and i64 %i.bqe, 24
  %n.vec298 = and i64 %i.bqe, -32                 ; 4 uses
  %i.bqg = or disjoint i64 %n.vec298, 1           ; 2 uses
  %i.bqh = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %i.bpr, i64 0
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next326, %vector.body299 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph297 ], [ %vec.ind.next, %vector.body299 ] ; 5 uses
  %vec.phi = phi <8 x i64> [ %i.bqh, %vector.ph297 ], [ %i.bqz, %vector.body299 ]
  %vec.phi301 = phi <8 x i64> [ zeroinitializer, %vector.ph297 ], [ %i.bra, %vector.body299 ]
  %vec.phi302 = phi <8 x i64> [ zeroinitializer, %vector.ph297 ], [ %i.brb, %vector.body299 ]
  %vec.phi303 = phi <8 x i64> [ zeroinitializer, %vector.ph297 ], [ %i.brc, %vector.body299 ]
  %step.add = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %vec.ind
  %wide.gep304 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %step.add
  %wide.gep305 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %step.add.2
  %wide.gep306 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %step.add.3
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index300 ; 4 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 1
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqi, i64 9
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqi, i64 17
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqi, i64 25
  %wide.load307 = load <8 x i8>, ptr %i.bqj, align 1, !tbaa !95
  %wide.load308 = load <8 x i8>, ptr %i.bqk, align 1, !tbaa !95
  %wide.load309 = load <8 x i8>, ptr %i.bql, align 1, !tbaa !95
  %wide.load310 = load <8 x i8>, ptr %i.bqm, align 1, !tbaa !95
  %i.bqn = zext <8 x i8> %wide.load307 to <8 x i64>
  %i.bqo = zext <8 x i8> %wide.load308 to <8 x i64>
  %i.bqp = zext <8 x i8> %wide.load309 to <8 x i64>
  %i.bqq = zext <8 x i8> %wide.load310 to <8 x i64>
  %wide.gep311 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.bqn
  %wide.gep312 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.bqo
  %wide.gep313 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.bqp
  %wide.gep314 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.bqq
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep311, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather315 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep312, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather316 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep313, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather317 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep314, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.bqr = sext <8 x i32> %wide.masked.gather to <8 x i64>
  %i.bqs = sext <8 x i32> %wide.masked.gather315 to <8 x i64>
  %i.bqt = sext <8 x i32> %wide.masked.gather316 to <8 x i64>
  %i.bqu = sext <8 x i32> %wide.masked.gather317 to <8 x i64>
  %wide.gep318 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, <8 x i64> %i.bqr
  %wide.gep319 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep304, <8 x i64> %i.bqs
  %wide.gep320 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep305, <8 x i64> %i.bqt
  %wide.gep321 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep306, <8 x i64> %i.bqu
  %wide.masked.gather322 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep318, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather323 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep319, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather324 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep320, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather325 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep321, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.bqv = sext <8 x i32> %wide.masked.gather322 to <8 x i64>
  %i.bqw = sext <8 x i32> %wide.masked.gather323 to <8 x i64>
  %i.bqx = sext <8 x i32> %wide.masked.gather324 to <8 x i64>
  %i.bqy = sext <8 x i32> %wide.masked.gather325 to <8 x i64>
  %i.bqz = add <8 x i64> %vec.phi, %i.bqv         ; 2 uses
  %i.bra = add <8 x i64> %vec.phi301, %i.bqw      ; 2 uses
  %i.brb = add <8 x i64> %vec.phi302, %i.bqx      ; 2 uses
  %i.brc = add <8 x i64> %vec.phi303, %i.bqy      ; 2 uses
  %index.next326 = add nuw i64 %index300, 32      ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.brd = icmp eq i64 %index.next326, %n.vec298
  br i1 %i.brd, label %middle.block327, label %vector.body299, !llvm.loop !328

middle.block327:                                  ; preds = %vector.body299
  %bin.rdx = add <8 x i64> %i.bra, %i.bqz
  %bin.rdx328 = add <8 x i64> %i.brb, %bin.rdx
  %bin.rdx329 = add <8 x i64> %i.brc, %bin.rdx328
  %i.bre = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx329) ; 3 uses
  %cmp.n330 = icmp eq i64 %i.bqe, %n.vec298
  br i1 %cmp.n330, label %.loopexit.i.i, label %vec.epilog.iter.check334

vec.epilog.iter.check334:                         ; preds = %middle.block327
  %min.epilog.iters.check335 = icmp eq i64 %i.bqf, 0
  br i1 %min.epilog.iters.check335, label %.lr.ph196.i.i.preheader, label %vec.epilog.ph336, !prof !114

vec.epilog.ph336:                                 ; preds = %vector.main.loop.iter.check295, %vec.epilog.iter.check334
  %vec.epilog.resume.val331 = phi i64 [ %n.vec298, %vec.epilog.iter.check334 ], [ 0, %vector.main.loop.iter.check295 ]
  %bc.resume.val = phi i64 [ %i.bqg, %vec.epilog.iter.check334 ], [ 1, %vector.main.loop.iter.check295 ]
  %bc.merge.rdx = phi i64 [ %i.bre, %vec.epilog.iter.check334 ], [ %i.bpr, %vector.main.loop.iter.check295 ]
  %n.vec337 = and i64 %i.bqe, -8                  ; 3 uses
  %i.brf = or disjoint i64 %n.vec337, 1
  %i.brg = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body338

vec.epilog.vector.body338:                        ; preds = %vec.epilog.vector.body338, %vec.epilog.ph336
  %index339 = phi i64 [ %vec.epilog.resume.val331, %vec.epilog.ph336 ], [ %index.next348, %vec.epilog.vector.body338 ] ; 2 uses
  %vec.ind340 = phi <8 x i64> [ %induction, %vec.epilog.ph336 ], [ %vec.ind.next349, %vec.epilog.vector.body338 ] ; 2 uses
  %vec.phi341 = phi <8 x i64> [ %i.brg, %vec.epilog.ph336 ], [ %i.brm, %vec.epilog.vector.body338 ]
  %wide.gep342 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %vec.ind340
  %i.brh = getelementptr inbounds nuw i8, ptr %i.a, i64 %index339
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 1
  %wide.load343 = load <8 x i8>, ptr %i.bri, align 1, !tbaa !95
  %i.brj = zext <8 x i8> %wide.load343 to <8 x i64>
  %wide.gep344 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.brj
  %wide.masked.gather345 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep344, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.brk = sext <8 x i32> %wide.masked.gather345 to <8 x i64>
  %wide.gep346 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep342, <8 x i64> %i.brk
  %wide.masked.gather347 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep346, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.brl = sext <8 x i32> %wide.masked.gather347 to <8 x i64>
  %i.brm = add <8 x i64> %vec.phi341, %i.brl      ; 2 uses
  %index.next348 = add nuw i64 %index339, 8       ; 2 uses
  %vec.ind.next349 = add nuw nsw <8 x i64> %vec.ind340, splat (i64 8)
  %i.brn = icmp eq i64 %index.next348, %n.vec337
  br i1 %i.brn, label %vec.epilog.middle.block350, label %vec.epilog.vector.body338, !llvm.loop !329

vec.epilog.middle.block350:                       ; preds = %vec.epilog.vector.body338
  %i.bro = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.brm) ; 2 uses
  %cmp.n351 = icmp eq i64 %i.bqe, %n.vec337
  br i1 %cmp.n351, label %.loopexit.i.i, label %.lr.ph196.i.i.preheader

.lr.ph196.i.i.preheader:                          ; preds = %iter.check332, %vec.epilog.iter.check334, %vec.epilog.middle.block350
  %indvars.iv277.i.i.ph = phi i64 [ 1, %iter.check332 ], [ %i.bqg, %vec.epilog.iter.check334 ], [ %i.brf, %vec.epilog.middle.block350 ]
  %.0116195.i.i.ph = phi i64 [ %i.bpr, %iter.check332 ], [ %i.bre, %vec.epilog.iter.check334 ], [ %i.bro, %vec.epilog.middle.block350 ]
  br label %.lr.ph196.i.i

.lr.ph196.i.i:                                    ; preds = %.lr.ph196.i.i.preheader, %.lr.ph196.i.i
  %indvars.iv277.i.i = phi i64 [ %indvars.iv.next278.i.i, %.lr.ph196.i.i ], [ %indvars.iv277.i.i.ph, %.lr.ph196.i.i.preheader ] ; 3 uses
  %.0116195.i.i = phi i64 [ %i.brz, %.lr.ph196.i.i ], [ %.0116195.i.i.ph, %.lr.ph196.i.i.preheader ]
  %i.brp = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %indvars.iv277.i.i
  %i.brq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv277.i.i
  %i.brr = load i8, ptr %i.brq, align 1, !tbaa !95
  %i.brs = zext i8 %i.brr to i64
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.brs
  %i.bru = load i32, ptr %i.brt, align 4, !tbaa !89
  %i.brv = sext i32 %i.bru to i64
  %i.brw = getelementptr inbounds [4 x i8], ptr %i.brp, i64 %i.brv
  %i.brx = load i32, ptr %i.brw, align 4, !tbaa !89
  %i.bry = sext i32 %i.brx to i64
  %i.brz = add i64 %.0116195.i.i, %i.bry          ; 2 uses
  %indvars.iv.next278.i.i = add nuw nsw i64 %indvars.iv277.i.i, 1 ; 2 uses
  %exitcond281.not.i.i = icmp eq i64 %indvars.iv.next278.i.i, %wide.trip.count280.i.i
  br i1 %exitcond281.not.i.i, label %.loopexit.i.i, label %.lr.ph196.i.i, !llvm.loop !330

bb.cx:                                            ; preds = %.loopexit167.i.i
  %i.bsa = load i8, ptr %i.a, align 1, !tbaa !95
  %i.bsb = icmp ult i8 %i.bsa, 32
  %or.cond215.i.i = or i1 %.not135182.i.i, %i.bsb
  br i1 %or.cond215.i.i, label %.loopexit165.i.i, label %.lr.ph187.preheader.i.i

.lr.ph187.preheader.i.i:                          ; preds = %bb.cx
  %wide.trip.count263.i.i = and i64 %indvars.iv.next238.i.i, 4294967295
  %i.bsc = add nsw i64 %wide.trip.count263.i.i, -1
  %xtraiter513 = and i64 %indvars.iv.next238.i.i, 7 ; 3 uses
  %i.bsd = icmp ult i64 %i.bsc, 7
  br i1 %i.bsd, label %.lr.ph187.i.i.epil.preheader, label %.lr.ph187.preheader.i.i.new

.lr.ph187.preheader.i.i.new:                      ; preds = %.lr.ph187.preheader.i.i
  %unroll_iter517 = and i64 %indvars.iv.next238.i.i, 4294967288
  br label %.lr.ph187.i.i

.lr.ph187.i.i:                                    ; preds = %.lr.ph187.i.i, %.lr.ph187.preheader.i.i.new
  %indvars.iv259.i.i = phi i64 [ 0, %.lr.ph187.preheader.i.i.new ], [ %indvars.iv.next260.i.i.7, %.lr.ph187.i.i ] ; 9 uses
  %niter518 = phi i64 [ 0, %.lr.ph187.preheader.i.i.new ], [ %niter518.next.7, %.lr.ph187.i.i ]
  %i.bse = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv259.i.i ; 2 uses
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !95
  %i.bsg = xor i8 %i.bsf, 56
  store i8 %i.bsg, ptr %i.bse, align 1, !tbaa !95
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv259.i.i
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 1 ; 2 uses
  %i.bsj = load i8, ptr %i.bsi, align 1, !tbaa !95
  %i.bsk = xor i8 %i.bsj, 56
  store i8 %i.bsk, ptr %i.bsi, align 1, !tbaa !95
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv259.i.i
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 2 ; 2 uses
  %i.bsn = load i8, ptr %i.bsm, align 1, !tbaa !95
  %i.bso = xor i8 %i.bsn, 56
  store i8 %i.bso, ptr %i.bsm, align 1, !tbaa !95
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv259.i.i
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsp, i64 3 ; 2 uses
  %i.bsr = load i8, ptr %i.bsq, align 1, !tbaa !95
  %i.bss = xor i8 %i.bsr, 56
  store i8 %i.bss, ptr %i.bsq, align 1, !tbaa !95
  %i.bst = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv259.i.i
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 4 ; 2 uses
  %i.bsv = load i8, ptr %i.bsu, align 1, !tbaa !95
  %i.bsw = xor i8 %i.bsv, 56
  store i8 %i.bsw, ptr %i.bsu, align 1, !tbaa !95
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv259.i.i
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsx, i64 5 ; 2 uses
  %i.bsz = load i8, ptr %i.bsy, align 1, !tbaa !95
  %i.bta = xor i8 %i.bsz, 56
  store i8 %i.bta, ptr %i.bsy, align 1, !tbaa !95
  %i.btb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv259.i.i
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 6 ; 2 uses
  %i.btd = load i8, ptr %i.btc, align 1, !tbaa !95
  %i.bte = xor i8 %i.btd, 56
  store i8 %i.bte, ptr %i.btc, align 1, !tbaa !95
  %i.btf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv259.i.i
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 7 ; 2 uses
  %i.bth = load i8, ptr %i.btg, align 1, !tbaa !95
  %i.bti = xor i8 %i.bth, 56
  store i8 %i.bti, ptr %i.btg, align 1, !tbaa !95
  %indvars.iv.next260.i.i.7 = add nuw nsw i64 %indvars.iv259.i.i, 8 ; 2 uses
  %niter518.next.7 = add nuw i64 %niter518, 8     ; 2 uses
  %niter518.ncmp.7 = icmp eq i64 %niter518.next.7, %unroll_iter517
  br i1 %niter518.ncmp.7, label %.loopexit165.i.i.loopexit.unr-lcssa, label %.lr.ph187.i.i, !llvm.loop !331

.loopexit165.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph187.i.i
  %lcmp.mod515.not = icmp eq i64 %xtraiter513, 0
  br i1 %lcmp.mod515.not, label %.loopexit165.i.i, label %.lr.ph187.i.i.epil.preheader

.lr.ph187.i.i.epil.preheader:                     ; preds = %.loopexit165.i.i.loopexit.unr-lcssa, %.lr.ph187.preheader.i.i
  %indvars.iv259.i.i.epil.init = phi i64 [ 0, %.lr.ph187.preheader.i.i ], [ %indvars.iv.next260.i.i.7, %.loopexit165.i.i.loopexit.unr-lcssa ]
  %lcmp.mod516 = icmp ne i64 %xtraiter513, 0
  call void @llvm.assume(i1 %lcmp.mod516)
  br label %.lr.ph187.i.i.epil

.lr.ph187.i.i.epil:                               ; preds = %.lr.ph187.i.i.epil, %.lr.ph187.i.i.epil.preheader
  %indvars.iv259.i.i.epil = phi i64 [ %indvars.iv259.i.i.epil.init, %.lr.ph187.i.i.epil.preheader ], [ %indvars.iv.next260.i.i.epil, %.lr.ph187.i.i.epil ] ; 2 uses
  %epil.iter514 = phi i64 [ 0, %.lr.ph187.i.i.epil.preheader ], [ %epil.iter514.next, %.lr.ph187.i.i.epil ]
  %i.btj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv259.i.i.epil ; 2 uses
  %i.btk = load i8, ptr %i.btj, align 1, !tbaa !95
  %i.btl = xor i8 %i.btk, 56
  store i8 %i.btl, ptr %i.btj, align 1, !tbaa !95
  %indvars.iv.next260.i.i.epil = add nuw nsw i64 %indvars.iv259.i.i.epil, 1
  %epil.iter514.next = add i64 %epil.iter514, 1   ; 2 uses
  %epil.iter514.cmp.not = icmp eq i64 %epil.iter514.next, %xtraiter513
  br i1 %epil.iter514.cmp.not, label %.loopexit165.i.i, label %.lr.ph187.i.i.epil, !llvm.loop !332

.loopexit165.i.i:                                 ; preds = %.loopexit165.i.i.loopexit.unr-lcssa, %.lr.ph187.i.i.epil, %bb.cx
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bks, i64 200
  %i.btn = load i32, ptr %i.btm, align 8, !tbaa !89 ; 2 uses
  %i.bto = icmp sgt i32 %i.btn, 0
  br i1 %i.bto, label %.lr.ph190.preheader.i.i, label %.loopexit162.i.i

.lr.ph190.preheader.i.i:                          ; preds = %.loopexit165.i.i
  %wide.trip.count268.i.i = zext nneg i32 %i.btn to i64
  br label %.lr.ph190.i.i

.lr.ph190.i.i:                                    ; preds = %bb.cz, %.lr.ph190.preheader.i.i
  %indvars.iv265.i.i = phi i64 [ 0, %.lr.ph190.preheader.i.i ], [ %indvars.iv.next266.i.i, %bb.cz ] ; 7 uses
  %i.btp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv265.i.i
  %i.btq = load i8, ptr %i.btp, align 1, !tbaa !95 ; 2 uses
  %i.btr = lshr i8 %i.btq, 3                      ; 2 uses
  %i.bts = and i8 %i.btq, 7                       ; 2 uses
  %.not137.i.i = icmp eq i8 %i.btr, %i.bts
  br i1 %.not137.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph190.i.i
  %i.btt = icmp samesign ule i8 %i.btr, %i.bts
  %.not138191.i.i = icmp sgt i64 %indvars.iv265.i.i, %indvars.iv237.i.i
  %or.cond216.i.i = or i1 %.not138191.i.i, %i.btt
  br i1 %or.cond216.i.i, label %.loopexit162.i.i, label %.lr.ph193.preheader.i.i

.lr.ph193.preheader.i.i:                          ; preds = %bb.cy
  %wide.trip.count275.i.i = and i64 %indvars.iv.next238.i.i, 4294967295 ; 2 uses
  %i.btu = sub i64 %indvars.iv.next238.i.i, %indvars.iv265.i.i
  %xtraiter521 = and i64 %i.btu, 7                ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %.lr.ph193.i.i.prol.loopexit, label %.lr.ph193.i.i.prol

.lr.ph193.i.i.prol:                               ; preds = %.lr.ph193.preheader.i.i, %.lr.ph193.i.i.prol
  %indvars.iv271.i.i.prol = phi i64 [ %indvars.iv.next272.i.i.prol, %.lr.ph193.i.i.prol ], [ %indvars.iv265.i.i, %.lr.ph193.preheader.i.i ] ; 2 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %.lr.ph193.i.i.prol ], [ 0, %.lr.ph193.preheader.i.i ]
  %i.btv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i.prol ; 2 uses
  %i.btw = load i8, ptr %i.btv, align 1, !tbaa !95 ; 2 uses
  %i.btx = lshr i8 %i.btw, 3
  %i.bty = shl i8 %i.btw, 3
  %.masked.i.i.prol = and i8 %i.bty, 56
  %i.btz = or i8 %.masked.i.i.prol, %i.btx
  store i8 %i.btz, ptr %i.btv, align 1, !tbaa !95
  %indvars.iv.next272.i.i.prol = add nuw nsw i64 %indvars.iv271.i.i.prol, 1 ; 2 uses
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph193.i.i.prol.loopexit, label %.lr.ph193.i.i.prol, !llvm.loop !333

.lr.ph193.i.i.prol.loopexit:                      ; preds = %.lr.ph193.i.i.prol, %.lr.ph193.preheader.i.i
  %indvars.iv271.i.i.unr = phi i64 [ %indvars.iv265.i.i, %.lr.ph193.preheader.i.i ], [ %indvars.iv.next272.i.i.prol, %.lr.ph193.i.i.prol ]
  %i.bua = sub nsw i64 %indvars.iv265.i.i, %wide.trip.count275.i.i
  %i.bub = icmp ugt i64 %i.bua, -8
  br i1 %i.bub, label %.loopexit162.i.i, label %.lr.ph193.i.i

.lr.ph193.i.i:                                    ; preds = %.lr.ph193.i.i.prol.loopexit, %.lr.ph193.i.i
  %indvars.iv271.i.i = phi i64 [ %indvars.iv.next272.i.i.7, %.lr.ph193.i.i ], [ %indvars.iv271.i.i.unr, %.lr.ph193.i.i.prol.loopexit ] ; 9 uses
  %i.buc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i ; 2 uses
  %i.bud = load i8, ptr %i.buc, align 1, !tbaa !95 ; 2 uses
  %i.bue = lshr i8 %i.bud, 3
  %i.buf = shl i8 %i.bud, 3
  %.masked.i.i = and i8 %i.buf, 56
  %i.bug = or i8 %.masked.i.i, %i.bue
  store i8 %i.bug, ptr %i.buc, align 1, !tbaa !95
  %i.buh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bui = getelementptr inbounds nuw i8, ptr %i.buh, i64 1 ; 2 uses
  %i.buj = load i8, ptr %i.bui, align 1, !tbaa !95 ; 2 uses
  %i.buk = lshr i8 %i.buj, 3
  %i.bul = shl i8 %i.buj, 3
  %.masked.i.i.1 = and i8 %i.bul, 56
  %i.bum = or i8 %.masked.i.i.1, %i.buk
  store i8 %i.bum, ptr %i.bui, align 1, !tbaa !95
  %i.bun = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bun, i64 2 ; 2 uses
  %i.bup = load i8, ptr %i.buo, align 1, !tbaa !95 ; 2 uses
  %i.buq = lshr i8 %i.bup, 3
  %i.bur = shl i8 %i.bup, 3
  %.masked.i.i.2 = and i8 %i.bur, 56
  %i.bus = or i8 %.masked.i.i.2, %i.buq
  store i8 %i.bus, ptr %i.buo, align 1, !tbaa !95
  %i.but = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.buu = getelementptr inbounds nuw i8, ptr %i.but, i64 3 ; 2 uses
  %i.buv = load i8, ptr %i.buu, align 1, !tbaa !95 ; 2 uses
  %i.buw = lshr i8 %i.buv, 3
  %i.bux = shl i8 %i.buv, 3
  %.masked.i.i.3 = and i8 %i.bux, 56
  %i.buy = or i8 %.masked.i.i.3, %i.buw
  store i8 %i.buy, ptr %i.buu, align 1, !tbaa !95
  %i.buz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 4 ; 2 uses
  %i.bvb = load i8, ptr %i.bva, align 1, !tbaa !95 ; 2 uses
  %i.bvc = lshr i8 %i.bvb, 3
  %i.bvd = shl i8 %i.bvb, 3
  %.masked.i.i.4 = and i8 %i.bvd, 56
  %i.bve = or i8 %.masked.i.i.4, %i.bvc
  store i8 %i.bve, ptr %i.bva, align 1, !tbaa !95
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 5 ; 2 uses
  %i.bvh = load i8, ptr %i.bvg, align 1, !tbaa !95 ; 2 uses
  %i.bvi = lshr i8 %i.bvh, 3
  %i.bvj = shl i8 %i.bvh, 3
  %.masked.i.i.5 = and i8 %i.bvj, 56
  %i.bvk = or i8 %.masked.i.i.5, %i.bvi
  store i8 %i.bvk, ptr %i.bvg, align 1, !tbaa !95
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 6 ; 2 uses
  %i.bvn = load i8, ptr %i.bvm, align 1, !tbaa !95 ; 2 uses
  %i.bvo = lshr i8 %i.bvn, 3
  %i.bvp = shl i8 %i.bvn, 3
  %.masked.i.i.6 = and i8 %i.bvp, 56
  %i.bvq = or i8 %.masked.i.i.6, %i.bvo
  store i8 %i.bvq, ptr %i.bvm, align 1, !tbaa !95
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv271.i.i
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 7 ; 2 uses
  %i.bvt = load i8, ptr %i.bvs, align 1, !tbaa !95 ; 2 uses
  %i.bvu = lshr i8 %i.bvt, 3
  %i.bvv = shl i8 %i.bvt, 3
  %.masked.i.i.7 = and i8 %i.bvv, 56
  %i.bvw = or i8 %.masked.i.i.7, %i.bvu
  store i8 %i.bvw, ptr %i.bvs, align 1, !tbaa !95
  %indvars.iv.next272.i.i.7 = add nuw nsw i64 %indvars.iv271.i.i, 8 ; 2 uses
  %exitcond276.not.i.i.7 = icmp eq i64 %indvars.iv.next272.i.i.7, %wide.trip.count275.i.i
  br i1 %exitcond276.not.i.i.7, label %.loopexit162.i.i, label %.lr.ph193.i.i, !llvm.loop !334

bb.cz:                                            ; preds = %.lr.ph190.i.i
  %indvars.iv.next266.i.i = add nuw nsw i64 %indvars.iv265.i.i, 1 ; 2 uses
  %exitcond269.not.i.i = icmp eq i64 %indvars.iv.next266.i.i, %wide.trip.count268.i.i
  br i1 %exitcond269.not.i.i, label %.loopexit162.i.i, label %.lr.ph190.i.i, !llvm.loop !335

.loopexit162.i.i:                                 ; preds = %bb.cz, %.lr.ph193.i.i.prol.loopexit, %.lr.ph193.i.i, %bb.cy, %.loopexit165.i.i
  %i.bvx = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 53
  %i.bvy = load i8, ptr %i.bvx, align 1, !tbaa !210, !range !206, !noundef !207
  %i.bvz = trunc nuw i8 %i.bvy to i1
  br i1 %i.bvz, label %bb.da, label %bb.dh

bb.da:                                            ; preds = %.loopexit162.i.i
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bwb = load i8, ptr %i.bwa, align 1, !tbaa !95 ; 6 uses
  %i.bwc = load i8, ptr %i.a, align 1, !tbaa !95  ; 5 uses
  %i.bwd = icmp ugt i8 %i.bwb, %i.bwc
  %.neg.i.i = sext i1 %i.bwd to i32               ; 2 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bwf = load i8, ptr %i.bwe, align 1, !tbaa !95 ; 7 uses
  %i.bwg = icmp ugt i8 %i.bwf, %i.bwc
  %.neg217.i.i = sext i1 %i.bwg to i32
  %i.bwh = icmp ugt i8 %i.bwf, %i.bwb
  %.neg218.i.i = sext i1 %i.bwh to i32
  %.neg219.i.i = add nsw i32 %.neg217.i.i, %.neg218.i.i ; 3 uses
  %i.bwi = lshr i8 %i.bwc, 3                      ; 2 uses
  %i.bwj = zext nneg i8 %i.bwi to i32             ; 3 uses
  %i.bwk = and i8 %i.bwc, 7
  %.not139.i.i = icmp eq i8 %i.bwi, %i.bwk
  br i1 %.not139.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.bwl = zext i8 %i.bwc to i64
  %i.bwm = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %i.bwl
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !89
  %i.bwo = mul nsw i32 %i.bwn, 63
  %i.bwp = zext i8 %i.bwb to i32
  %i.bwq = add nsw i32 %.neg.i.i, %i.bwp
  %i.bwr = add nsw i32 %i.bwq, %i.bwo
  %i.bws = mul nsw i32 %i.bwr, 62
  %i.bwt = zext i8 %i.bwf to i32
  %i.bwu = add nsw i32 %.neg219.i.i, %i.bwt
  %i.bwv = add i32 %i.bwu, %i.bws
  %i.bww = sext i32 %i.bwv to i64
  br label %.loopexit.i.i

bb.dc:                                            ; preds = %bb.da
  %i.bwx = lshr i8 %i.bwb, 3                      ; 2 uses
  %i.bwy = and i8 %i.bwb, 7
  %.not140.i.i = icmp eq i8 %i.bwx, %i.bwy
  br i1 %.not140.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.bwz = mul nuw nsw i32 %i.bwj, 28
end_hunk_0
begin_hunk_1_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a
  %.060.us.i.i.i = phi i32 [ %.161.us.i.i.i, %bb.bb ], [ %i.rg, %.thread68.split.us.preheader.i.i.i ] ; 4 uses
  %.059.us.i.i.i = phi i64 [ %.1.us.i.i.i, %bb.bb ], [ 1, %.thread68.split.us.preheader.i.i.i ] ; 5 uses
  %.0.us.i.i.i = phi i32 [ %i.sf, %bb.bb ], [ 0, %.thread68.split.us.preheader.i.i.i ] ; 4 uses
  %.not.us.i.i.i = icmp sle i32 %.062.us.i.i.i, %.066.lcssa.i.i.i
  %i.ro = icmp eq i32 %.0.us.i.i.i, %.pre78.pre.i.i.i ; 2 uses
  %or.cond.i.i.i = select i1 %.not.us.i.i.i, i1 true, i1 %i.ro
  br i1 %or.cond.i.i.i, label %.critedge.us.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.thread68.split.us.i.i.i
  %i.rp = load i32, ptr %i.rh, align 4, !tbaa !89
  %i.rq = icmp eq i32 %.0.us.i.i.i, %i.rp
  br i1 %i.rq, label %.critedge.us.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i

.critedge.us.i.i.i:                               ; preds = %bb.aw, %.thread68.split.us.i.i.i
  br i1 %i.ro, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.critedge.us.i.i.i
  %i.rr = load i32, ptr %i.rh, align 4, !tbaa !89
  %i.rs = icmp eq i32 %.0.us.i.i.i, %i.rr
  br i1 %i.rs, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.rt = sext i32 %.062.us.i.i.i to i64          ; 2 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.ri, i64 %i.rt
  store i64 %.059.us.i.i.i, ptr %i.ru, align 8, !tbaa !17
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.rt
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !89 ; 2 uses
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.rx
  %i.rz = sext i32 %.060.us.i.i.i to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.rz
  %i.sb = add nsw i32 %.062.us.i.i.i, 1
  %i.sc = sub nsw i32 %.060.us.i.i.i, %i.rw
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  store i64 %.059.us.i.i.i, ptr %i.rj, align 8, !tbaa !17
  %i.sd = load i32, ptr %i.rk, align 4, !tbaa !89
  %i.se = sext i32 %i.sd to i64
  %gep.us.i.i.i = getelementptr [256 x i8], ptr %invariant.gep80.i.i.i, i64 %i.se
  br label %bb.bb

bb.ba:                                            ; preds = %.critedge.us.i.i.i
  store i64 %.059.us.i.i.i, ptr %i.ri, align 8, !tbaa !17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.163.us.i.i.i = phi i32 [ %i.sb, %bb.ay ], [ %.062.us.i.i.i, %bb.az ], [ %.062.us.i.i.i, %bb.ba ]
  %.161.us.i.i.i = phi i32 [ %i.sc, %bb.ay ], [ %.060.us.i.i.i, %bb.az ], [ %.060.us.i.i.i, %bb.ba ]
  %.pn.in.us.in.i.i.i = phi ptr [ %i.sa, %bb.ay ], [ %gep.us.i.i.i, %bb.az ], [ %gep141.i.i, %bb.ba ]
  %.pn.in.us.i.i.i = load i32, ptr %.pn.in.us.in.i.i.i, align 4, !tbaa !89
  %.pn.us.i.i.i = sext i32 %.pn.in.us.i.i.i to i64
  %.1.us.i.i.i = mul i64 %.059.us.i.i.i, %.pn.us.i.i.i
  %i.sf = add nuw nsw i32 %.0.us.i.i.i, 1
  br label %.thread68.split.us.i.i.i, !llvm.loop !444

.thread68.split.i.i.i:                            ; preds = %bb.bh, %.thread68.split.preheader.i.i.i
  %.062.i.i.i = phi i32 [ %.163.i.i.i, %bb.bh ], [ 1, %.thread68.split.preheader.i.i.i ] ; 5 uses
  %.060.i.i.i = phi i32 [ %.161.i.i.i, %bb.bh ], [ %i.qx, %.thread68.split.preheader.i.i.i ] ; 4 uses
  %.059.i.i.i = phi i64 [ %.1.i.i.i, %bb.bh ], [ 1, %.thread68.split.preheader.i.i.i ] ; 5 uses
  %.0.i.i.i = phi i32 [ %i.sz, %bb.bh ], [ 0, %.thread68.split.preheader.i.i.i ] ; 4 uses
  %.not.i.i61.i = icmp sle i32 %.062.i.i.i, %.066.lcssa.i.i.i
  %i.sg = icmp eq i32 %.0.i.i.i, %.pre.pre.i.i.i  ; 2 uses
  %or.cond83.i.i.i = select i1 %.not.i.i61.i, i1 true, i1 %i.sg
  br i1 %or.cond83.i.i.i, label %.critedge.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.thread68.split.i.i.i
  %i.sh = load i32, ptr %i.qy, align 4, !tbaa !89
  %i.si = icmp eq i32 %.0.i.i.i, %i.sh
  br i1 %i.si, label %.critedge.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.bc, %.thread68.split.i.i.i
  br i1 %i.sg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.critedge.i.i.i
  store i64 %.059.i.i.i, ptr %i.qz, align 8, !tbaa !17
  br label %bb.bh

bb.be:                                            ; preds = %.critedge.i.i.i
  %i.sj = load i32, ptr %i.qy, align 4, !tbaa !89
  %i.sk = icmp eq i32 %.0.i.i.i, %i.sj
  br i1 %i.sk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i64 %.059.i.i.i, ptr %i.ra, align 8, !tbaa !17
  %i.sl = load i32, ptr %i.rb, align 4, !tbaa !89
  %i.sm = sext i32 %i.sl to i64
  %gep.i.i.i = getelementptr [256 x i8], ptr %invariant.gep.i.i.i, i64 %i.sm
  %i.sn = load i32, ptr %gep.i.i.i, align 4, !tbaa !89
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.so = sext i32 %.062.i.i.i to i64             ; 2 uses
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.qz, i64 %i.so
  store i64 %.059.i.i.i, ptr %i.sp, align 8, !tbaa !17
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.so
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !89 ; 2 uses
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.ss
  %i.su = sext i32 %.060.i.i.i to i64
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !89
  %i.sx = add nsw i32 %.062.i.i.i, 1
  %i.sy = sub nsw i32 %.060.i.i.i, %i.sr
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bd
  %.163.i.i.i = phi i32 [ %i.sx, %bb.bg ], [ %.062.i.i.i, %bb.bf ], [ %.062.i.i.i, %bb.bd ]
  %.161.i.i.i = phi i32 [ %i.sy, %bb.bg ], [ %.060.i.i.i, %bb.bf ], [ %.060.i.i.i, %bb.bd ]
  %.pn.in.i.i.i = phi i32 [ %i.sw, %bb.bg ], [ %i.sn, %bb.bf ], [ %i.re, %bb.bd ]
  %.pn.i.i.i = sext i32 %.pn.in.i.i.i to i64
  %.1.i.i.i = mul i64 %.059.i.i.i, %.pn.i.i.i
  %i.sz = add nuw nsw i32 %.0.i.i.i, 1
  br label %.thread68.split.i.i.i, !llvm.loop !444

_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i: ; preds = %bb.bc, %bb.aw
  %.us-phi.i.i.i = phi i64 [ %.059.us.i.i.i, %bb.aw ], [ %.059.i.i.i, %bb.bc ]
  %i.ta = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 136
  %i.tb = getelementptr inbounds [8 x i8], ptr %i.ta, i64 %i.pz
  store i64 %.us-phi.i.i.i, ptr %i.tb, align 8, !tbaa !17
  %indvars.iv.next183.i.i = add nuw nsw i64 %indvars.iv182.i.i, 1 ; 2 uses
  %exitcond186.not.i.i = icmp eq i64 %indvars.iv.next183.i.i, %wide.trip.count185.i.i
  br i1 %exitcond186.not.i.i, label %bb.ao, label %bb.ap, !llvm.loop !445

.preheader130.i.i:                                ; preds = %bb.bk, %bb.ag
  %indvars.iv193.i.i = phi i64 [ 0, %bb.ag ], [ %indvars.iv.next194.i.i, %bb.bk ] ; 2 uses
  %.2147.i.i = phi ptr [ %i.hu, %bb.ag ], [ %i.uc, %bb.bk ]
  br label %bb.bl

.preheader129.i.i:                                ; preds = %bb.bk
  %i.tc = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206, !noundef !207
  %i.td = trunc nuw i8 %i.tc to i1                ; 3 uses
  br i1 %i.td, label %.preheader128.us.i.i.preheader, label %.preheader128.i.i.preheader

.preheader128.i.i.preheader:                      ; preds = %.preheader129.i.i
  %xtraiter290 = and i8 %i.hq, 1
  br i1 %i.hf, label %.preheader128.i.i.preheader.new, label %.preheader128.i.i.epil.preheader

.preheader128.i.i.preheader.new:                  ; preds = %.preheader128.i.i.preheader
  %unroll_iter297 = and i8 %i.hq, 4
  br label %.preheader128.i.i

.preheader128.us.i.i.preheader:                   ; preds = %.preheader129.i.i
  %xtraiter308 = and i64 %wide.trip.count190.i.i, 1
  br i1 %i.hf, label %.preheader128.us.i.i.preheader.new, label %.preheader128.us.i.i.epil.preheader

.preheader128.us.i.i.preheader.new:               ; preds = %.preheader128.us.i.i.preheader
  %unroll_iter315 = and i64 %wide.trip.count190.i.i, 4
  br label %.preheader128.us.i.i

.preheader128.us.i.i:                             ; preds = %.epilog-lcssa304.1, %.preheader128.us.i.i.preheader.new
  %indvars.iv201.i.i = phi i64 [ 0, %.preheader128.us.i.i.preheader.new ], [ %indvars.iv.next202.i.i.1, %.epilog-lcssa304.1 ] ; 3 uses
  %.4153.us.i.i = phi ptr [ %i.uc, %.preheader128.us.i.i.preheader.new ], [ %i.tt, %.epilog-lcssa304.1 ]
  %niter316 = phi i64 [ 0, %.preheader128.us.i.i.preheader.new ], [ %niter316.next.1, %.epilog-lcssa304.1 ]
  %invariant.gep148.us.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv201.i.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader128.us.i.i
  %.081151.us.i.i.epil = phi i32 [ 0, %.preheader128.us.i.i ], [ %i.tl, %bb.bi ] ; 2 uses
  %.5150.us.i.i.epil = phi ptr [ %.4153.us.i.i, %.preheader128.us.i.i ], [ %i.tk, %bb.bi ] ; 2 uses
  %epil.iter302 = phi i32 [ 0, %.preheader128.us.i.i ], [ %epil.iter302.next, %bb.bi ]
  %i.te = and i32 %.081151.us.i.i.epil, 1
  %i.tf = zext nneg i32 %i.te to i64
  %gep149.us.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep148.us.i.i, i64 %i.tf ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil, i64 56
  store ptr %.5150.us.i.i.epil, ptr %i.tg, align 8, !tbaa !310
  %i.th = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil, i64 64
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !309
  %i.tj = mul i64 %i.ti, 6
  %i.tk = getelementptr inbounds nuw i8, ptr %.5150.us.i.i.epil, i64 %i.tj ; 2 uses
  %i.tl = add nuw nsw i32 %.081151.us.i.i.epil, 1
  %epil.iter302.next = add i32 %epil.iter302, 1   ; 2 uses
  %epil.iter302.cmp.not = icmp eq i32 %epil.iter302.next, %i.hc
  br i1 %epil.iter302.cmp.not, label %.preheader128.us.i.i.1, label %bb.bi, !llvm.loop !446

.preheader128.us.i.i.1:                           ; preds = %bb.bi
  %i.tm = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv201.i.i
  %invariant.gep148.us.i.i.1 = getelementptr inbounds nuw i8, ptr %i.tm, i64 240
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.preheader128.us.i.i.1
  %.081151.us.i.i.epil.1 = phi i32 [ 0, %.preheader128.us.i.i.1 ], [ %i.tu, %bb.bj ] ; 2 uses
  %.5150.us.i.i.epil.1 = phi ptr [ %i.tk, %.preheader128.us.i.i.1 ], [ %i.tt, %bb.bj ] ; 2 uses
  %epil.iter302.1 = phi i32 [ 0, %.preheader128.us.i.i.1 ], [ %epil.iter302.next.1, %bb.bj ]
  %i.tn = and i32 %.081151.us.i.i.epil.1, 1
  %i.to = zext nneg i32 %i.tn to i64
  %gep149.us.i.i.epil.1 = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep148.us.i.i.1, i64 %i.to ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.1, i64 56
  store ptr %.5150.us.i.i.epil.1, ptr %i.tp, align 8, !tbaa !310
  %i.tq = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.1, i64 64
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !309
  %i.ts = mul i64 %i.tr, 6
  %i.tt = getelementptr inbounds nuw i8, ptr %.5150.us.i.i.epil.1, i64 %i.ts ; 4 uses
  %i.tu = add nuw nsw i32 %.081151.us.i.i.epil.1, 1
  %epil.iter302.next.1 = add i32 %epil.iter302.1, 1 ; 2 uses
  %epil.iter302.cmp.1.not = icmp eq i32 %epil.iter302.next.1, %i.hc
  br i1 %epil.iter302.cmp.1.not, label %.epilog-lcssa304.1, label %bb.bj, !llvm.loop !446

.epilog-lcssa304.1:                               ; preds = %bb.bj
  %indvars.iv.next202.i.i.1 = add nuw nsw i64 %indvars.iv201.i.i, 2 ; 2 uses
  %niter316.next.1 = add nuw i64 %niter316, 2     ; 2 uses
  %niter316.ncmp.1 = icmp eq i64 %niter316.next.1, %unroll_iter315
  br i1 %niter316.ncmp.1, label %.preheader127.i.i.loopexit.unr-lcssa, label %.preheader128.us.i.i, !llvm.loop !447

bb.bk:                                            ; preds = %bb.bl
  %indvars.iv.next194.i.i = add nuw nsw i64 %indvars.iv193.i.i, 1 ; 2 uses
  %exitcond197.i.i = icmp eq i64 %indvars.iv.next194.i.i, %wide.trip.count190.i.i
  br i1 %exitcond197.i.i, label %.preheader129.i.i, label %.preheader130.i.i, !llvm.loop !448

bb.bl:                                            ; preds = %bb.bl, %.preheader130.i.i
  %.082145.i.i = phi i32 [ 0, %.preheader130.i.i ], [ %i.ud, %bb.bl ] ; 2 uses
  %.3144.i.i = phi ptr [ %.2147.i.i, %.preheader130.i.i ], [ %i.uc, %bb.bl ]
  %i.tv = and i32 %.082145.i.i, 1
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.tw
  %i.ty = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206, !noundef !207
  %i.tz = trunc nuw i8 %i.ty to i1
  %i.ua = select i1 %i.tz, i64 %indvars.iv193.i.i, i64 0
  %i.ub = getelementptr inbounds nuw [240 x i8], ptr %i.tx, i64 %i.ua
  %i.uc = call fastcc noundef ptr @_ZN9Stockfish12_GLOBAL__N_19set_sizesEPNS0_9PairsDataEPh(ptr noundef %i.ub, ptr noundef %.3144.i.i) ; 6 uses
  %i.ud = add nuw nsw i32 %.082145.i.i, 1         ; 2 uses
  %exitcond192.not.i.i = icmp eq i32 %i.ud, %i.hc
  br i1 %exitcond192.not.i.i, label %bb.bk, label %bb.bl, !llvm.loop !449

.preheader128.i.i:                                ; preds = %.epilog-lcssa.1, %.preheader128.i.i.preheader.new
  %.4153.i.i = phi ptr [ %i.uc, %.preheader128.i.i.preheader.new ], [ %i.wt, %.epilog-lcssa.1 ]
  %niter298 = phi i8 [ 0, %.preheader128.i.i.preheader.new ], [ %niter298.next.1, %.epilog-lcssa.1 ]
  br label %bb.bs

.preheader127.i.i.loopexit.unr-lcssa:             ; preds = %.epilog-lcssa304.1
  %lcmp.mod312.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod312.not, label %.preheader127.i.i, label %.preheader128.us.i.i.epil.preheader

.preheader128.us.i.i.epil.preheader:              ; preds = %.preheader127.i.i.loopexit.unr-lcssa, %.preheader128.us.i.i.preheader
  %indvars.iv201.i.i.epil.init = phi i64 [ 0, %.preheader128.us.i.i.preheader ], [ %indvars.iv.next202.i.i.1, %.preheader127.i.i.loopexit.unr-lcssa ]
  %.4153.us.i.i.epil.init = phi ptr [ %i.uc, %.preheader128.us.i.i.preheader ], [ %i.tt, %.preheader127.i.i.loopexit.unr-lcssa ]
  %lcmp.mod314 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %invariant.gep148.us.i.i.epil = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv201.i.i.epil.init
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.preheader128.us.i.i.epil.preheader
  %.081151.us.i.i.epil.epil = phi i32 [ 0, %.preheader128.us.i.i.epil.preheader ], [ %i.ul, %bb.bm ] ; 2 uses
  %.5150.us.i.i.epil.epil = phi ptr [ %.4153.us.i.i.epil.init, %.preheader128.us.i.i.epil.preheader ], [ %i.uk, %bb.bm ] ; 2 uses
  %epil.iter302.epil = phi i32 [ 0, %.preheader128.us.i.i.epil.preheader ], [ %epil.iter302.next.epil, %bb.bm ]
  %i.ue = and i32 %.081151.us.i.i.epil.epil, 1
  %i.uf = zext nneg i32 %i.ue to i64
  %gep149.us.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep148.us.i.i.epil, i64 %i.uf ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.epil, i64 56
  store ptr %.5150.us.i.i.epil.epil, ptr %i.ug, align 8, !tbaa !310
  %i.uh = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.epil, i64 64
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !309
  %i.uj = mul i64 %i.ui, 6
  %i.uk = getelementptr inbounds nuw i8, ptr %.5150.us.i.i.epil.epil, i64 %i.uj ; 2 uses
  %i.ul = add nuw nsw i32 %.081151.us.i.i.epil.epil, 1
  %epil.iter302.next.epil = add i32 %epil.iter302.epil, 1 ; 2 uses
  %epil.iter302.cmp.epil.not = icmp eq i32 %epil.iter302.next.epil, %i.hc
  br i1 %epil.iter302.cmp.epil.not, label %.preheader127.i.i, label %bb.bm, !llvm.loop !446

.preheader127.i.i.loopexit276.unr-lcssa:          ; preds = %.epilog-lcssa.1
  %lcmp.mod294.not = icmp eq i8 %xtraiter290, 0
  br i1 %lcmp.mod294.not, label %.preheader127.i.i, label %.preheader128.i.i.epil.preheader

.preheader128.i.i.epil.preheader:                 ; preds = %.preheader127.i.i.loopexit276.unr-lcssa, %.preheader128.i.i.preheader
  %.4153.i.i.epil.init = phi ptr [ %i.uc, %.preheader128.i.i.preheader ], [ %i.wt, %.preheader127.i.i.loopexit276.unr-lcssa ]
  %lcmp.mod296 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod296)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.preheader128.i.i.epil.preheader
  %.081151.i.i.epil.epil = phi i32 [ 0, %.preheader128.i.i.epil.preheader ], [ %i.ut, %bb.bn ] ; 2 uses
  %.5150.i.i.epil.epil = phi ptr [ %.4153.i.i.epil.init, %.preheader128.i.i.epil.preheader ], [ %i.us, %bb.bn ] ; 2 uses
  %epil.iter.epil = phi i32 [ 0, %.preheader128.i.i.epil.preheader ], [ %epil.iter.next.epil, %bb.bn ]
  %i.um = and i32 %.081151.i.i.epil.epil, 1
  %i.un = zext nneg i32 %i.um to i64
  %gep149.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.un ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.epil, i64 56
  store ptr %.5150.i.i.epil.epil, ptr %i.uo, align 8, !tbaa !310
  %i.up = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.epil, i64 64
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !309
  %i.ur = mul i64 %i.uq, 6
  %i.us = getelementptr inbounds nuw i8, ptr %.5150.i.i.epil.epil, i64 %i.ur ; 2 uses
  %i.ut = add nuw nsw i32 %.081151.i.i.epil.epil, 1
  %epil.iter.next.epil = add i32 %epil.iter.epil, 1 ; 2 uses
  %epil.iter.cmp.epil.not = icmp eq i32 %epil.iter.next.epil, %i.hc
  br i1 %epil.iter.cmp.epil.not, label %.preheader127.i.i, label %bb.bn, !llvm.loop !450

.preheader127.i.i:                                ; preds = %.preheader127.i.i.loopexit276.unr-lcssa, %bb.bn, %.preheader127.i.i.loopexit.unr-lcssa, %bb.bm
  %.us-phi.i.i = phi ptr [ %i.uk, %bb.bm ], [ %i.tt, %.preheader127.i.i.loopexit.unr-lcssa ], [ %i.wt, %.preheader127.i.i.loopexit276.unr-lcssa ], [ %i.us, %bb.bn ] ; 4 uses
  br i1 %i.td, label %.preheader126.us.i.i.preheader, label %.preheader126.i.i.preheader

.preheader126.i.i.preheader:                      ; preds = %.preheader127.i.i
  %xtraiter326 = and i8 %i.hq, 1
  br i1 %i.hf, label %.preheader126.i.i.preheader.new, label %.preheader126.i.i.epil.preheader

.preheader126.i.i.preheader.new:                  ; preds = %.preheader126.i.i.preheader
  %unroll_iter333 = and i8 %i.hq, 4
  br label %.preheader126.i.i

.preheader126.us.i.i.preheader:                   ; preds = %.preheader127.i.i
  %xtraiter344 = and i64 %wide.trip.count190.i.i, 1
  br i1 %i.hf, label %.preheader126.us.i.i.preheader.new, label %.preheader126.us.i.i.epil.preheader

.preheader126.us.i.i.preheader.new:               ; preds = %.preheader126.us.i.i.preheader
  %unroll_iter351 = and i64 %wide.trip.count190.i.i, 4
  br label %.preheader126.us.i.i

.preheader126.us.i.i:                             ; preds = %.epilog-lcssa340.1, %.preheader126.us.i.i.preheader.new
  %indvars.iv209.i.i = phi i64 [ 0, %.preheader126.us.i.i.preheader.new ], [ %indvars.iv.next210.i.i.1, %.epilog-lcssa340.1 ] ; 3 uses
  %.6159.us.i.i = phi ptr [ %.us-phi.i.i, %.preheader126.us.i.i.preheader.new ], [ %i.vl, %.epilog-lcssa340.1 ]
  %niter352 = phi i64 [ 0, %.preheader126.us.i.i.preheader.new ], [ %niter352.next.1, %.epilog-lcssa340.1 ]
  %invariant.gep154.us.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv209.i.i
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.preheader126.us.i.i
  %.080157.us.i.i.epil = phi i32 [ 0, %.preheader126.us.i.i ], [ %i.vc, %bb.bo ] ; 2 uses
  %.7156.us.i.i.epil = phi ptr [ %.6159.us.i.i, %.preheader126.us.i.i ], [ %i.vb, %bb.bo ] ; 2 uses
  %epil.iter338 = phi i32 [ 0, %.preheader126.us.i.i ], [ %epil.iter338.next, %bb.bo ]
  %i.uu = and i32 %.080157.us.i.i.epil, 1
  %i.uv = zext nneg i32 %i.uu to i64
  %gep155.us.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep154.us.i.i, i64 %i.uv ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil, i64 40
  store ptr %.7156.us.i.i.epil, ptr %i.uw, align 8, !tbaa !312
  %i.ux = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil, i64 48
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !311
  %i.uz = zext i32 %i.uy to i64
  %i.va = shl nuw nsw i64 %i.uz, 1
  %i.vb = getelementptr inbounds nuw i8, ptr %.7156.us.i.i.epil, i64 %i.va ; 2 uses
  %i.vc = add nuw nsw i32 %.080157.us.i.i.epil, 1
  %epil.iter338.next = add i32 %epil.iter338, 1   ; 2 uses
  %epil.iter338.cmp.not = icmp eq i32 %epil.iter338.next, %i.hc
  br i1 %epil.iter338.cmp.not, label %.preheader126.us.i.i.1, label %bb.bo, !llvm.loop !451

.preheader126.us.i.i.1:                           ; preds = %bb.bo
  %i.vd = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv209.i.i
  %invariant.gep154.us.i.i.1 = getelementptr inbounds nuw i8, ptr %i.vd, i64 240
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.preheader126.us.i.i.1
  %.080157.us.i.i.epil.1 = phi i32 [ 0, %.preheader126.us.i.i.1 ], [ %i.vm, %bb.bp ] ; 2 uses
  %.7156.us.i.i.epil.1 = phi ptr [ %i.vb, %.preheader126.us.i.i.1 ], [ %i.vl, %bb.bp ] ; 2 uses
  %epil.iter338.1 = phi i32 [ 0, %.preheader126.us.i.i.1 ], [ %epil.iter338.next.1, %bb.bp ]
  %i.ve = and i32 %.080157.us.i.i.epil.1, 1
  %i.vf = zext nneg i32 %i.ve to i64
  %gep155.us.i.i.epil.1 = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep154.us.i.i.1, i64 %i.vf ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil.1, i64 40
  store ptr %.7156.us.i.i.epil.1, ptr %i.vg, align 8, !tbaa !312
  %i.vh = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil.1, i64 48
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !311
  %i.vj = zext i32 %i.vi to i64
  %i.vk = shl nuw nsw i64 %i.vj, 1
  %i.vl = getelementptr inbounds nuw i8, ptr %.7156.us.i.i.epil.1, i64 %i.vk ; 4 uses
  %i.vm = add nuw nsw i32 %.080157.us.i.i.epil.1, 1
  %epil.iter338.next.1 = add i32 %epil.iter338.1, 1 ; 2 uses
  %epil.iter338.cmp.1.not = icmp eq i32 %epil.iter338.next.1, %i.hc
  br i1 %epil.iter338.cmp.1.not, label %.epilog-lcssa340.1, label %bb.bp, !llvm.loop !451

.epilog-lcssa340.1:                               ; preds = %bb.bp
  %indvars.iv.next210.i.i.1 = add nuw nsw i64 %indvars.iv209.i.i, 2 ; 2 uses
  %niter352.next.1 = add nuw i64 %niter352, 2     ; 2 uses
  %niter352.ncmp.1 = icmp eq i64 %niter352.next.1, %unroll_iter351
  br i1 %niter352.ncmp.1, label %.preheader.i.i.preheader.loopexit.unr-lcssa, label %.preheader126.us.i.i, !llvm.loop !452

.preheader.i.i.preheader.loopexit.unr-lcssa:      ; preds = %.epilog-lcssa340.1
  %lcmp.mod348.not = icmp eq i64 %xtraiter344, 0
  br i1 %lcmp.mod348.not, label %.preheader.i.i.preheader, label %.preheader126.us.i.i.epil.preheader

.preheader126.us.i.i.epil.preheader:              ; preds = %.preheader.i.i.preheader.loopexit.unr-lcssa, %.preheader126.us.i.i.preheader
  %indvars.iv209.i.i.epil.init = phi i64 [ 0, %.preheader126.us.i.i.preheader ], [ %indvars.iv.next210.i.i.1, %.preheader.i.i.preheader.loopexit.unr-lcssa ]
  %.6159.us.i.i.epil.init = phi ptr [ %.us-phi.i.i, %.preheader126.us.i.i.preheader ], [ %i.vl, %.preheader.i.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod350 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod350)
  %invariant.gep154.us.i.i.epil = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv209.i.i.epil.init
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.preheader126.us.i.i.epil.preheader
  %.080157.us.i.i.epil.epil = phi i32 [ 0, %.preheader126.us.i.i.epil.preheader ], [ %i.vv, %bb.bq ] ; 2 uses
  %.7156.us.i.i.epil.epil = phi ptr [ %.6159.us.i.i.epil.init, %.preheader126.us.i.i.epil.preheader ], [ %i.vu, %bb.bq ] ; 2 uses
  %epil.iter338.epil = phi i32 [ 0, %.preheader126.us.i.i.epil.preheader ], [ %epil.iter338.next.epil, %bb.bq ]
  %i.vn = and i32 %.080157.us.i.i.epil.epil, 1
  %i.vo = zext nneg i32 %i.vn to i64
  %gep155.us.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep154.us.i.i.epil, i64 %i.vo ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil.epil, i64 40
  store ptr %.7156.us.i.i.epil.epil, ptr %i.vp, align 8, !tbaa !312
  %i.vq = getelementptr inbounds nuw i8, ptr %gep155.us.i.i.epil.epil, i64 48
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !311
  %i.vs = zext i32 %i.vr to i64
  %i.vt = shl nuw nsw i64 %i.vs, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %.7156.us.i.i.epil.epil, i64 %i.vt ; 2 uses
  %i.vv = add nuw nsw i32 %.080157.us.i.i.epil.epil, 1
  %epil.iter338.next.epil = add i32 %epil.iter338.epil, 1 ; 2 uses
  %epil.iter338.cmp.epil.not = icmp eq i32 %epil.iter338.next.epil, %i.hc
  br i1 %epil.iter338.cmp.epil.not, label %.preheader.i.i.preheader, label %bb.bq, !llvm.loop !451

.preheader.i.i.preheader.loopexit273.unr-lcssa:   ; preds = %.epilog-lcssa322.1
  %lcmp.mod330.not = icmp eq i8 %xtraiter326, 0
  br i1 %lcmp.mod330.not, label %.preheader.i.i.preheader, label %.preheader126.i.i.epil.preheader

.preheader126.i.i.epil.preheader:                 ; preds = %.preheader.i.i.preheader.loopexit273.unr-lcssa, %.preheader126.i.i.preheader
  %.6159.i.i.epil.init = phi ptr [ %.us-phi.i.i, %.preheader126.i.i.preheader ], [ %i.xl, %.preheader.i.i.preheader.loopexit273.unr-lcssa ]
  %lcmp.mod332 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod332)
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.preheader126.i.i.epil.preheader
  %.080157.i.i.epil.epil = phi i32 [ 0, %.preheader126.i.i.epil.preheader ], [ %i.we, %bb.br ] ; 2 uses
  %.7156.i.i.epil.epil = phi ptr [ %.6159.i.i.epil.init, %.preheader126.i.i.epil.preheader ], [ %i.wd, %bb.br ] ; 2 uses
  %epil.iter320.epil = phi i32 [ 0, %.preheader126.i.i.epil.preheader ], [ %epil.iter320.next.epil, %bb.br ]
  %i.vw = and i32 %.080157.i.i.epil.epil, 1
  %i.vx = zext nneg i32 %i.vw to i64
  %gep155.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.vx ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil.epil, i64 40
  store ptr %.7156.i.i.epil.epil, ptr %i.vy, align 8, !tbaa !312
  %i.vz = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil.epil, i64 48
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !311
  %i.wb = zext i32 %i.wa to i64
  %i.wc = shl nuw nsw i64 %i.wb, 1
  %i.wd = getelementptr inbounds nuw i8, ptr %.7156.i.i.epil.epil, i64 %i.wc ; 2 uses
  %i.we = add nuw nsw i32 %.080157.i.i.epil.epil, 1
  %epil.iter320.next.epil = add i32 %epil.iter320.epil, 1 ; 2 uses
  %epil.iter320.cmp.epil.not = icmp eq i32 %epil.iter320.next.epil, %i.hc
  br i1 %epil.iter320.cmp.epil.not, label %.preheader.i.i.preheader, label %bb.br, !llvm.loop !453

.preheader.i.i.preheader:                         ; preds = %.preheader.i.i.preheader.loopexit273.unr-lcssa, %bb.br, %.preheader.i.i.preheader.loopexit.unr-lcssa, %bb.bq
  %.8168.i.i.ph = phi ptr [ %i.vu, %bb.bq ], [ %i.vl, %.preheader.i.i.preheader.loopexit.unr-lcssa ], [ %i.xl, %.preheader.i.i.preheader.loopexit273.unr-lcssa ], [ %i.wd, %bb.br ]
  br label %.preheader.i.i

bb.bs:                                            ; preds = %bb.bs, %.preheader128.i.i
  %.081151.i.i.epil = phi i32 [ 0, %.preheader128.i.i ], [ %i.wm, %bb.bs ] ; 2 uses
  %.5150.i.i.epil = phi ptr [ %.4153.i.i, %.preheader128.i.i ], [ %i.wl, %bb.bs ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.preheader128.i.i ], [ %epil.iter.next, %bb.bs ]
  %i.wf = and i32 %.081151.i.i.epil, 1
  %i.wg = zext nneg i32 %i.wf to i64
  %gep149.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.wg ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil, i64 56
  store ptr %.5150.i.i.epil, ptr %i.wh, align 8, !tbaa !310
  %i.wi = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil, i64 64
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !309
  %i.wk = mul i64 %i.wj, 6
  %i.wl = getelementptr inbounds nuw i8, ptr %.5150.i.i.epil, i64 %i.wk ; 2 uses
  %i.wm = add nuw nsw i32 %.081151.i.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.hc
  br i1 %epil.iter.cmp.not, label %.epil.preheader.1, label %bb.bs, !llvm.loop !450

.epil.preheader.1:                                ; preds = %bb.bs, %.epil.preheader.1
  %.081151.i.i.epil.1 = phi i32 [ %i.wu, %.epil.preheader.1 ], [ 0, %bb.bs ] ; 2 uses
  %.5150.i.i.epil.1 = phi ptr [ %i.wt, %.epil.preheader.1 ], [ %i.wl, %bb.bs ] ; 2 uses
  %epil.iter.1 = phi i32 [ %epil.iter.next.1, %.epil.preheader.1 ], [ 0, %bb.bs ]
  %i.wn = and i32 %.081151.i.i.epil.1, 1
  %i.wo = zext nneg i32 %i.wn to i64
  %gep149.i.i.epil.1 = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.wo ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.1, i64 56
  store ptr %.5150.i.i.epil.1, ptr %i.wp, align 8, !tbaa !310
  %i.wq = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.1, i64 64
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !309
  %i.ws = mul i64 %i.wr, 6
  %i.wt = getelementptr inbounds nuw i8, ptr %.5150.i.i.epil.1, i64 %i.ws ; 4 uses
  %i.wu = add nuw nsw i32 %.081151.i.i.epil.1, 1
  %epil.iter.next.1 = add i32 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i32 %epil.iter.next.1, %i.hc
  br i1 %epil.iter.cmp.1.not, label %.epilog-lcssa.1, label %.epil.preheader.1, !llvm.loop !450

.epilog-lcssa.1:                                  ; preds = %.epil.preheader.1
  %niter298.next.1 = add nuw i8 %niter298, 2      ; 2 uses
  %niter298.ncmp.1 = icmp eq i8 %niter298.next.1, %unroll_iter297
  br i1 %niter298.ncmp.1, label %.preheader127.i.i.loopexit276.unr-lcssa, label %.preheader128.i.i, !llvm.loop !447

.preheader126.i.i:                                ; preds = %.epilog-lcssa322.1, %.preheader126.i.i.preheader.new
  %.6159.i.i = phi ptr [ %.us-phi.i.i, %.preheader126.i.i.preheader.new ], [ %i.xl, %.epilog-lcssa322.1 ]
  %niter334 = phi i8 [ 0, %.preheader126.i.i.preheader.new ], [ %niter334.next.1, %.epilog-lcssa322.1 ]
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.preheader126.i.i
  %.080157.i.i.epil = phi i32 [ 0, %.preheader126.i.i ], [ %i.xd, %bb.bt ] ; 2 uses
  %.7156.i.i.epil = phi ptr [ %.6159.i.i, %.preheader126.i.i ], [ %i.xc, %bb.bt ] ; 2 uses
  %epil.iter320 = phi i32 [ 0, %.preheader126.i.i ], [ %epil.iter320.next, %bb.bt ]
  %i.wv = and i32 %.080157.i.i.epil, 1
  %i.ww = zext nneg i32 %i.wv to i64
  %gep155.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.ww ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil, i64 40
  store ptr %.7156.i.i.epil, ptr %i.wx, align 8, !tbaa !312
  %i.wy = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil, i64 48
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !311
  %i.xa = zext i32 %i.wz to i64
  %i.xb = shl nuw nsw i64 %i.xa, 1
  %i.xc = getelementptr inbounds nuw i8, ptr %.7156.i.i.epil, i64 %i.xb ; 2 uses
  %i.xd = add nuw nsw i32 %.080157.i.i.epil, 1
  %epil.iter320.next = add i32 %epil.iter320, 1   ; 2 uses
  %epil.iter320.cmp.not = icmp eq i32 %epil.iter320.next, %i.hc
  br i1 %epil.iter320.cmp.not, label %.epil.preheader318.1, label %bb.bt, !llvm.loop !453

.epil.preheader318.1:                             ; preds = %bb.bt, %.epil.preheader318.1
  %.080157.i.i.epil.1 = phi i32 [ %i.xm, %.epil.preheader318.1 ], [ 0, %bb.bt ] ; 2 uses
  %.7156.i.i.epil.1 = phi ptr [ %i.xl, %.epil.preheader318.1 ], [ %i.xc, %bb.bt ] ; 2 uses
  %epil.iter320.1 = phi i32 [ %epil.iter320.next.1, %.epil.preheader318.1 ], [ 0, %bb.bt ]
  %i.xe = and i32 %.080157.i.i.epil.1, 1
  %i.xf = zext nneg i32 %i.xe to i64
  %gep155.i.i.epil.1 = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.xf ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil.1, i64 40
  store ptr %.7156.i.i.epil.1, ptr %i.xg, align 8, !tbaa !312
  %i.xh = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil.1, i64 48
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !311
  %i.xj = zext i32 %i.xi to i64
  %i.xk = shl nuw nsw i64 %i.xj, 1
  %i.xl = getelementptr inbounds nuw i8, ptr %.7156.i.i.epil.1, i64 %i.xk ; 4 uses
  %i.xm = add nuw nsw i32 %.080157.i.i.epil.1, 1
  %epil.iter320.next.1 = add i32 %epil.iter320.1, 1 ; 2 uses
  %epil.iter320.cmp.1.not = icmp eq i32 %epil.iter320.next.1, %i.hc
  br i1 %epil.iter320.cmp.1.not, label %.epilog-lcssa322.1, label %.epil.preheader318.1, !llvm.loop !453

.epilog-lcssa322.1:                               ; preds = %.epil.preheader318.1
  %niter334.next.1 = add nuw i8 %niter334, 2      ; 2 uses
  %niter334.ncmp.1 = icmp eq i8 %niter334.next.1, %unroll_iter333
  br i1 %niter334.ncmp.1, label %.preheader.i.i.preheader.loopexit273.unr-lcssa, label %.preheader126.i.i, !llvm.loop !452

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.epilog-lcssa358
  %indvars.iv215.i.i = phi i64 [ %indvars.iv.next216.i.i, %.epilog-lcssa358 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.8168.i.i = phi ptr [ %i.yb, %.epilog-lcssa358 ], [ %.8168.i.i.ph, %.preheader.i.i.preheader ]
  %i.xn = select i1 %i.td, i64 %indvars.iv215.i.i, i64 0
  %invariant.gep163.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %i.xn
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.preheader.i.i
  %.0166.i.i.epil = phi i32 [ 0, %.preheader.i.i ], [ %i.yc, %bb.bu ] ; 2 uses
  %.9165.i.i.epil = phi ptr [ %.8168.i.i, %.preheader.i.i ], [ %i.yb, %bb.bu ]
  %epil.iter356 = phi i32 [ 0, %.preheader.i.i ], [ %epil.iter356.next, %bb.bu ]
  %i.xo = ptrtoint ptr %.9165.i.i.epil to i64
  %i.xp = add i64 %i.xo, 63
  %i.xq = and i64 %i.xp, -64
  %i.xr = inttoptr i64 %i.xq to ptr               ; 2 uses
  %i.xs = and i32 %.0166.i.i.epil, 1
  %i.xt = zext nneg i32 %i.xs to i64
  %gep164.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep163.i.i, i64 %i.xt ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %gep164.i.i.epil, i64 72
  store ptr %i.xr, ptr %i.xu, align 8, !tbaa !315
  %i.xv = getelementptr inbounds nuw i8, ptr %gep164.i.i.epil, i64 4
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !313
  %i.xx = zext i32 %i.xw to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %gep164.i.i.epil, i64 8
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !314
  %i.ya = mul i64 %i.xz, %i.xx
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.ya ; 2 uses
  %i.yc = add nuw nsw i32 %.0166.i.i.epil, 1
  %epil.iter356.next = add i32 %epil.iter356, 1   ; 2 uses
  %epil.iter356.cmp.not = icmp eq i32 %epil.iter356.next, %i.hc
  br i1 %epil.iter356.cmp.not, label %.epilog-lcssa358, label %bb.bu, !llvm.loop !454

.epilog-lcssa358:                                 ; preds = %bb.bu
  %indvars.iv.next216.i.i = add nuw nsw i64 %indvars.iv215.i.i, 1 ; 2 uses
  %exitcond219.i.i = icmp eq i64 %indvars.iv.next216.i.i, %wide.trip.count190.i.i
  br i1 %exitcond219.i.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, label %.preheader.i.i, !llvm.loop !455

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i: ; preds = %.epilog-lcssa358, %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i
  store atomic i8 1, ptr %.0.val.i release, align 8
  %i.yd = load ptr, ptr %i.gj, align 8, !tbaa !384
  %i.ye = load ptr, ptr %4, align 8, !tbaa !175   ; 2 uses
  %i.yf = icmp eq ptr %i.ye, %i.al
  br i1 %i.yf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i
  %i.yg = load i64, ptr %i.al, align 8, !tbaa !156
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.yi = load ptr, ptr %3, align 8, !tbaa !175   ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.aj
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i
  %i.yk = load i64, ptr %i.aj, align 8, !tbaa !156
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.yl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ym = load ptr, ptr %2, align 8, !tbaa !175   ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.ah
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i
  %i.yo = load i64, ptr %i.ah, align 8, !tbaa !156
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, %bb.h
  %.023.i = phi ptr [ %i.ag, %bb.h ], [ %i.yd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ]
  %i.yq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionEE5mutex) #26 ; 0 uses
  br label %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit

_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit: ; preds = %bb.e, %bb.bv
  %.1.i = phi ptr [ %i.ab, %bb.e ], [ %.023.i, %bb.bv ]
  %.not11 = icmp eq ptr %.1.i, null
  br i1 %.not11, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit, %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE0EEEPNS0_7TBTableIXT_EEEm.exit
  store i32 0, ptr %1, align 4, !tbaa !234
  br label %bb.dn

bb.bx:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.yr = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 32
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !214 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 40
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !226
  %i.yv = icmp eq i64 %i.ys, %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.yx = load i8, ptr %i.yw, align 4             ; 2 uses
  %i.yy = icmp ne i8 %i.yx, 0
  %i.yz = select i1 %i.yv, i1 %i.yy, i1 false
  %i.za = load ptr, ptr %i.m, align 8, !tbaa !245
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !254
  %i.zc = icmp ne i64 %i.zb, %i.ys
  %i.zd = select i1 %i.yz, i1 true, i1 %i.zc      ; 3 uses
  %i.ze = select i1 %i.zd, i32 8, i32 0           ; 2 uses
  %i.zf = select i1 %i.zd, i32 56, i32 0          ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 52 ; 2 uses
  %i.zh = load i8, ptr %i.zg, align 4, !tbaa !205, !range !206, !noundef !207
  %i.zi = trunc nuw i8 %i.zh to i1                ; 2 uses
  br i1 %i.zi, label %bb.by, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.bx
  %.pre149.i = trunc nuw nsw i32 %i.zf to i8
  %.pre150.i = trunc nuw nsw i32 %i.ze to i8
  br label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.zj = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 184
  %i.zk = load i8, ptr %i.zj, align 8, !tbaa !241
  %i.zl = trunc nuw nsw i32 %i.ze to i8           ; 2 uses
  %i.zm = xor i8 %i.zk, %i.zl
  %i.zn = lshr i8 %i.zm, 3
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.zp = zext nneg i8 %i.zn to i64
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.zp
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !17
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !17
  %i.zu = and i64 %i.zt, %i.zr                    ; 2 uses
  %i.zv = trunc nuw nsw i32 %i.zf to i8           ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %bb.by
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i16, %bb.bz ], [ 0, %bb.by ] ; 5 uses
  %.09.i = phi i64 [ %i.zz, %bb.bz ], [ %i.zu, %bb.by ] ; 3 uses
  %i.zw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.09.i, i1 true)
  %i.zx = trunc nuw nsw i64 %i.zw to i8
  %i.zy = add i64 %.09.i, -1
  %i.zz = and i64 %i.zy, %.09.i                   ; 2 uses
  %i.aaa = xor i8 %i.zx, %i.zv
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 1 ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i15
  store i8 %i.aaa, ptr %i.aab, align 1, !tbaa !95
  %.not.i17 = icmp eq i64 %i.zz, 0
  br i1 %.not.i17, label %bb.ca, label %bb.bz, !llvm.loop !456

bb.ca:                                            ; preds = %bb.bz
  %i.aac = trunc nuw i64 %indvars.iv.next.i16 to i32
  %i.aad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i16
  %.not17.i.i.i = icmp eq i64 %indvars.iv.i15, 0
  %.pre147.i = load i8, ptr %i.a, align 1, !tbaa !95 ; 3 uses
  br i1 %.not17.i.i.i, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.ca
  %i.aae = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.phi.trans.insert.i = zext i8 %.pre147.i to i64
  %.phi.trans.insert145.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %.phi.trans.insert.i
  %.pre146.i = load i32, ptr %.phi.trans.insert145.i, align 4, !tbaa !89 ; 2 uses
  %xtraiter362 = and i64 %indvars.iv.i15, 7       ; 2 uses
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %.lr.ph.i.i.i18.prol.loopexit, label %.lr.ph.i.i.i18.prol

.lr.ph.i.i.i18.prol:                              ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i18.prol
  %i.aaf = phi i32 [ %i.aan, %.lr.ph.i.i.i18.prol ], [ %.pre146.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.aag = phi ptr [ %i.aam, %.lr.ph.i.i.i18.prol ], [ %i.aae, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.018.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i18.prol ], [ %i.a, %.lr.ph.i.i.preheader.i ]
  %prol.iter364 = phi i64 [ %prol.iter364.next, %.lr.ph.i.i.i18.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !95
  %i.aai = zext i8 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !89 ; 2 uses
  %i.aal = icmp slt i32 %i.aaf, %i.aak
  %spec.select.i.i.i.prol = select i1 %i.aal, ptr %i.aag, ptr %.018.i.i.i.prol ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aag, i64 1 ; 2 uses
  %i.aan = call i32 @llvm.smax.i32(i32 %i.aaf, i32 %i.aak) ; 2 uses
  %prol.iter364.next = add i64 %prol.iter364, 1   ; 2 uses
  %prol.iter364.cmp.not = icmp eq i64 %prol.iter364.next, %xtraiter362
  br i1 %prol.iter364.cmp.not, label %.lr.ph.i.i.i18.prol.loopexit, label %.lr.ph.i.i.i18.prol, !llvm.loop !457

.lr.ph.i.i.i18.prol.loopexit:                     ; preds = %.lr.ph.i.i.i18.prol, %.lr.ph.i.i.preheader.i
  %spec.select.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i18.prol ]
  %.unr = phi i32 [ %.pre146.i, %.lr.ph.i.i.preheader.i ], [ %i.aan, %.lr.ph.i.i.i18.prol ]
  %.unr365 = phi ptr [ %i.aae, %.lr.ph.i.i.preheader.i ], [ %i.aam, %.lr.ph.i.i.i18.prol ]
  %.018.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i18.prol ]
  %i.aao = icmp samesign ult i64 %indvars.iv.i15, 8
  br i1 %i.aao, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %.lr.ph.i.i.i18.prol.loopexit, %.lr.ph.i.i.i18
  %i.aap = phi i32 [ %i.acu, %.lr.ph.i.i.i18 ], [ %.unr, %.lr.ph.i.i.i18.prol.loopexit ] ; 2 uses
  %i.aaq = phi ptr [ %i.act, %.lr.ph.i.i.i18 ], [ %.unr365, %.lr.ph.i.i.i18.prol.loopexit ] ; 10 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i.7, %.lr.ph.i.i.i18 ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i18.prol.loopexit ]
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !95
  %i.aas = zext i8 %i.aar to i64
end_hunk_1
begin_hunk_2_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.i14.prol.loopexit, %.loopexit19.i.3, %bb.cd
  %i.aek = load i8, ptr %i.a, align 1, !tbaa !95
  %i.ael = and i8 %i.aek, 4
  %.not10.i = icmp eq i8 %i.ael, 0
  %.not13533.i = icmp slt i64 %indvars.iv87.i, 0  ; 2 uses
  %or.cond.i = or i1 %.not13533.i, %.not10.i
  br i1 %or.cond.i, label %.loopexit18.i, label %.lr.ph35.preheader.i

.lr.ph35.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count107.i = and i64 %indvars.iv.next88.i, 4294967295
  %i.aem = add nsw i64 %wide.trip.count107.i, -1
  %xtraiter369 = and i64 %indvars.iv.next88.i, 7  ; 3 uses
  %i.aen = icmp ult i64 %i.aem, 7
  br i1 %i.aen, label %.lr.ph35.i.epil.preheader, label %.lr.ph35.preheader.i.new

.lr.ph35.preheader.i.new:                         ; preds = %.lr.ph35.preheader.i
  %unroll_iter373 = and i64 %indvars.iv.next88.i, 4294967288
  br label %.lr.ph35.i

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.prol.loopexit, %.loopexit19.i.3
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i.3, %.loopexit19.i.3 ], [ %indvars.iv97.i.unr, %.lr.ph.i14.prol.loopexit ] ; 7 uses
  %indvars.iv.next98.i = add nsw i64 %indvars.iv97.i, 1 ; 4 uses
  %i.aeo = getelementptr inbounds i8, ptr %i.adu, i64 %indvars.iv97.i
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !241 ; 2 uses
  br label %bb.ci

bb.ch:                                            ; preds = %bb.ci
  %indvars.iv.next93.i = add nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next93.i to i32
  %exitcond.not.i = icmp eq i32 %indvars70.le, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit19.i, label %bb.ci, !llvm.loop !459

bb.ci:                                            ; preds = %bb.ch, %.lr.ph.i14
  %indvars.iv92.i = phi i64 [ %indvars.iv.next98.i, %.lr.ph.i14 ], [ %indvars.iv.next93.i, %bb.ch ] ; 4 uses
  %i.aeq = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !241
  %i.aes = icmp eq i8 %i.aep, %i.aer
  br i1 %i.aes, label %bb.cj, label %bb.ch

bb.cj:                                            ; preds = %bb.ci
  %i.aet = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i
  %i.aeu = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv97.i ; 2 uses
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !241
  store i8 %i.aep, ptr %i.aeu, align 1, !tbaa !241
  store i8 %i.aev, ptr %i.aet, align 1, !tbaa !241
  %i.aew = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv97.i ; 2 uses
  %i.aex = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv92.i ; 2 uses
  %i.aey = load i8, ptr %i.aew, align 1, !tbaa !95
  %i.aez = load i8, ptr %i.aex, align 1, !tbaa !95
  store i8 %i.aez, ptr %i.aew, align 1, !tbaa !95
  store i8 %i.aey, ptr %i.aex, align 1, !tbaa !95
  br label %.loopexit19.i

.loopexit19.i:                                    ; preds = %bb.ch, %bb.cj
  %indvars.iv.next98.i.1 = add nsw i64 %indvars.iv97.i, 2 ; 4 uses
  %i.afa = getelementptr inbounds i8, ptr %i.adu, i64 %indvars.iv.next98.i
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !241 ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.loopexit19.i
  %indvars.iv92.i.1 = phi i64 [ %indvars.iv.next98.i.1, %.loopexit19.i ], [ %indvars.iv.next93.i.1, %bb.cl ] ; 4 uses
  %i.afc = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i.1
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !241
  %i.afe = icmp eq i8 %i.afb, %i.afd
  br i1 %i.afe, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %indvars.iv.next93.i.1 = add nsw i64 %indvars.iv92.i.1, 1 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next93.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %indvars70.le, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %.loopexit19.i.1, label %bb.ck, !llvm.loop !459

bb.cm:                                            ; preds = %bb.ck
  %i.aff = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i.1
  %i.afg = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next98.i ; 2 uses
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !241
  store i8 %i.afb, ptr %i.afg, align 1, !tbaa !241
  store i8 %i.afh, ptr %i.aff, align 1, !tbaa !241
  %i.afi = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next98.i ; 2 uses
  %i.afj = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv92.i.1 ; 2 uses
  %i.afk = load i8, ptr %i.afi, align 1, !tbaa !95
  %i.afl = load i8, ptr %i.afj, align 1, !tbaa !95
  store i8 %i.afl, ptr %i.afi, align 1, !tbaa !95
  store i8 %i.afk, ptr %i.afj, align 1, !tbaa !95
  br label %.loopexit19.i.1

.loopexit19.i.1:                                  ; preds = %bb.cl, %bb.cm
  %indvars.iv.next98.i.2 = add nsw i64 %indvars.iv97.i, 3 ; 4 uses
  %i.afm = getelementptr inbounds i8, ptr %i.adu, i64 %indvars.iv.next98.i.1
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !241 ; 2 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.co, %.loopexit19.i.1
  %indvars.iv92.i.2 = phi i64 [ %indvars.iv.next98.i.2, %.loopexit19.i.1 ], [ %indvars.iv.next93.i.2, %bb.co ] ; 4 uses
  %i.afo = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i.2
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !241
  %i.afq = icmp eq i8 %i.afn, %i.afp
  br i1 %i.afq, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %indvars.iv.next93.i.2 = add nsw i64 %indvars.iv92.i.2, 1 ; 2 uses
  %lftr.wideiv.i.2 = trunc i64 %indvars.iv.next93.i.2 to i32
  %exitcond.not.i.2 = icmp eq i32 %indvars70.le, %lftr.wideiv.i.2
  br i1 %exitcond.not.i.2, label %.loopexit19.i.2, label %bb.cn, !llvm.loop !459

bb.cp:                                            ; preds = %bb.cn
  %i.afr = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i.2
  %i.afs = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next98.i.1 ; 2 uses
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !241
  store i8 %i.afn, ptr %i.afs, align 1, !tbaa !241
  store i8 %i.aft, ptr %i.afr, align 1, !tbaa !241
  %i.afu = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next98.i.1 ; 2 uses
  %i.afv = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv92.i.2 ; 2 uses
  %i.afw = load i8, ptr %i.afu, align 1, !tbaa !95
  %i.afx = load i8, ptr %i.afv, align 1, !tbaa !95
  store i8 %i.afx, ptr %i.afu, align 1, !tbaa !95
  store i8 %i.afw, ptr %i.afv, align 1, !tbaa !95
  br label %.loopexit19.i.2

.loopexit19.i.2:                                  ; preds = %bb.co, %bb.cp
  %indvars.iv.next98.i.3 = add nsw i64 %indvars.iv97.i, 4 ; 3 uses
  %i.afy = getelementptr inbounds i8, ptr %i.adu, i64 %indvars.iv.next98.i.2
  %i.afz = load i8, ptr %i.afy, align 1, !tbaa !241 ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cr, %.loopexit19.i.2
  %indvars.iv92.i.3 = phi i64 [ %indvars.iv.next98.i.3, %.loopexit19.i.2 ], [ %indvars.iv.next93.i.3, %bb.cr ] ; 4 uses
  %i.aga = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i.3
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !241
  %i.agc = icmp eq i8 %i.afz, %i.agb
  br i1 %i.agc, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %indvars.iv.next93.i.3 = add nsw i64 %indvars.iv92.i.3, 1 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next93.i.3 to i32
  %exitcond.not.i.3 = icmp eq i32 %indvars70.le, %lftr.wideiv.i.3
  br i1 %exitcond.not.i.3, label %.loopexit19.i.3, label %bb.cq, !llvm.loop !459

bb.cs:                                            ; preds = %bb.cq
  %i.agd = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i.3
  %i.age = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next98.i.2 ; 2 uses
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !241
  store i8 %i.afz, ptr %i.age, align 1, !tbaa !241
  store i8 %i.agf, ptr %i.agd, align 1, !tbaa !241
  %i.agg = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next98.i.2 ; 2 uses
  %i.agh = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv92.i.3 ; 2 uses
  %i.agi = load i8, ptr %i.agg, align 1, !tbaa !95
  %i.agj = load i8, ptr %i.agh, align 1, !tbaa !95
  store i8 %i.agj, ptr %i.agg, align 1, !tbaa !95
  store i8 %i.agi, ptr %i.agh, align 1, !tbaa !95
  br label %.loopexit19.i.3

.loopexit19.i.3:                                  ; preds = %bb.cr, %bb.cs
  %exitcond102.not.i.3 = icmp eq i64 %indvars.iv.next98.i.3, %wide.trip.count.i
  br i1 %exitcond102.not.i.3, label %._crit_edge.i, label %.lr.ph.i14, !llvm.loop !461

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i.new
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph35.preheader.i.new ], [ %indvars.iv.next104.i.7, %.lr.ph35.i ] ; 9 uses
  %niter374 = phi i64 [ 0, %.lr.ph35.preheader.i.new ], [ %niter374.next.7, %.lr.ph35.i ]
  %i.agk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i ; 2 uses
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !95
  %i.agm = xor i8 %i.agl, 7
  store i8 %i.agm, ptr %i.agk, align 1, !tbaa !95
  %i.agn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 1 ; 2 uses
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !95
  %i.agq = xor i8 %i.agp, 7
  store i8 %i.agq, ptr %i.ago, align 1, !tbaa !95
  %i.agr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 2 ; 2 uses
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !95
  %i.agu = xor i8 %i.agt, 7
  store i8 %i.agu, ptr %i.ags, align 1, !tbaa !95
  %i.agv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 3 ; 2 uses
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !95
  %i.agy = xor i8 %i.agx, 7
  store i8 %i.agy, ptr %i.agw, align 1, !tbaa !95
  %i.agz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 4 ; 2 uses
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !95
  %i.ahc = xor i8 %i.ahb, 7
  store i8 %i.ahc, ptr %i.aha, align 1, !tbaa !95
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 5 ; 2 uses
  %i.ahf = load i8, ptr %i.ahe, align 1, !tbaa !95
  %i.ahg = xor i8 %i.ahf, 7
  store i8 %i.ahg, ptr %i.ahe, align 1, !tbaa !95
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 6 ; 2 uses
  %i.ahj = load i8, ptr %i.ahi, align 1, !tbaa !95
  %i.ahk = xor i8 %i.ahj, 7
  store i8 %i.ahk, ptr %i.ahi, align 1, !tbaa !95
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 7 ; 2 uses
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !95
  %i.aho = xor i8 %i.ahn, 7
  store i8 %i.aho, ptr %i.ahm, align 1, !tbaa !95
  %indvars.iv.next104.i.7 = add nuw nsw i64 %indvars.iv103.i, 8 ; 2 uses
  %niter374.next.7 = add nuw i64 %niter374, 8     ; 2 uses
  %niter374.ncmp.7 = icmp eq i64 %niter374.next.7, %unroll_iter373
  br i1 %niter374.ncmp.7, label %.loopexit18.i.loopexit.unr-lcssa, label %.lr.ph35.i, !llvm.loop !462

.loopexit18.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph35.i
  %lcmp.mod371.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod371.not, label %.loopexit18.i, label %.lr.ph35.i.epil.preheader

.lr.ph35.i.epil.preheader:                        ; preds = %.loopexit18.i.loopexit.unr-lcssa, %.lr.ph35.preheader.i
  %indvars.iv103.i.epil.init = phi i64 [ 0, %.lr.ph35.preheader.i ], [ %indvars.iv.next104.i.7, %.loopexit18.i.loopexit.unr-lcssa ]
  %lcmp.mod372 = icmp ne i64 %xtraiter369, 0
  call void @llvm.assume(i1 %lcmp.mod372)
  br label %.lr.ph35.i.epil

.lr.ph35.i.epil:                                  ; preds = %.lr.ph35.i.epil, %.lr.ph35.i.epil.preheader
  %indvars.iv103.i.epil = phi i64 [ %indvars.iv103.i.epil.init, %.lr.ph35.i.epil.preheader ], [ %indvars.iv.next104.i.epil, %.lr.ph35.i.epil ] ; 2 uses
  %epil.iter370 = phi i64 [ 0, %.lr.ph35.i.epil.preheader ], [ %epil.iter370.next, %.lr.ph35.i.epil ]
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i.epil ; 2 uses
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !95
  %i.ahr = xor i8 %i.ahq, 7
  store i8 %i.ahr, ptr %i.ahp, align 1, !tbaa !95
  %indvars.iv.next104.i.epil = add nuw nsw i64 %indvars.iv103.i.epil, 1
  %epil.iter370.next = add i64 %epil.iter370, 1   ; 2 uses
  %epil.iter370.cmp.not = icmp eq i64 %epil.iter370.next, %xtraiter369
  br i1 %epil.iter370.cmp.not, label %.loopexit18.i, label %.lr.ph35.i.epil, !llvm.loop !463

.loopexit18.i:                                    ; preds = %.loopexit18.i.loopexit.unr-lcssa, %.lr.ph35.i.epil, %._crit_edge.i
  br i1 %i.zi, label %bb.ct, label %bb.da

bb.ct:                                            ; preds = %.loopexit18.i
  %i.ahs = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 %i.ade
  %i.aht = load i8, ptr %i.a, align 1, !tbaa !95
  %i.ahu = zext i8 %i.aht to i64
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.ahu
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !89
  %i.ahx = sext i32 %i.ahw to i64                 ; 5 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.ahz = getelementptr inbounds i8, ptr %i.a, i64 %i.ade ; 3 uses
  %i.aia = icmp eq i32 %.1119.i, 1
  br i1 %i.aia, label %.loopexit.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aib = sdiv i32 %.1119.i, 2
  %.sext.i = sext i32 %i.aib to i64               ; 3 uses
  %i.aic = icmp sgt i32 %.1119.i, 1               ; 2 uses
  br i1 %i.aic, label %.lr.ph.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cu, %bb.cv
  %.010.i.i.i.i.i = phi i64 [ %i.aig, %bb.cv ], [ %.sext.i, %bb.cu ] ; 4 uses
  %i.aid = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %.010.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aid, null
  br i1 %.not.i.i.i.i.i, label %bb.cv, label %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.aie = icmp eq i64 %.010.i.i.i.i.i, 1
  %i.aif = add nuw nsw i64 %.010.i.i.i.i.i, 1
  %i.aig = lshr i64 %i.aif, 1
  br i1 %i.aie, label %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !327

_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i: ; preds = %bb.cv, %.lr.ph.i.i.i.i.i, %bb.cu
  %.sroa.4.0.i.i.i = phi i64 [ 0, %bb.cu ], [ 0, %bb.cv ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i = phi ptr [ null, %bb.cu ], [ null, %bb.cv ], [ %i.aid, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.aih = icmp eq i64 %.sroa.4.0.i.i.i, %.sext.i
  br i1 %i.aih, label %bb.cw, label %bb.cx, !prof !190

bb.cw:                                            ; preds = %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i
  %i.aii = getelementptr inbounds i8, ptr %i.ahy, i64 %.sext.i
  call void @_ZSt22__stable_sort_adaptiveIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_T1_(ptr noundef nonnull %i.ahy, ptr noundef nonnull %i.aii, ptr noundef nonnull %i.ahz, ptr noundef %.sroa.10.0.i.i.i, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_110pawns_compENS_6SquareES1_)
  br label %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i

bb.cx:                                            ; preds = %_ZNSt17_Temporary_bufferIPN9Stockfish6SquareES1_EC2ES2_l.exit.i.i.i
  %i.aij = icmp eq ptr %.sroa.10.0.i.i.i, null
  br i1 %i.aij, label %bb.cy, label %bb.cz, !prof !191

bb.cy:                                            ; preds = %bb.cx
  call void @_ZSt21__inplace_stable_sortIPN9Stockfish6SquareEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_(ptr noundef nonnull %i.ahy, ptr noundef nonnull %i.ahz, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_110pawns_compENS_6SquareES1_)
  br label %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i

bb.cz:                                            ; preds = %bb.cx
  call void @_ZSt29__stable_sort_adaptive_resizeIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef nonnull %i.ahy, ptr noundef nonnull %i.ahz, ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %.sroa.4.0.i.i.i, ptr nonnull @_ZN9Stockfish12_GLOBAL__N_110pawns_compENS_6SquareES1_)
  br label %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i

_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i: ; preds = %bb.cz, %bb.cy, %bb.cw
  call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i.i, i64 noundef %.sroa.4.0.i.i.i) #26
  br i1 %i.aic, label %iter.check109, label %.loopexit.i

iter.check109:                                    ; preds = %_ZSt11stable_sortIPN9Stockfish6SquareEPFbS1_S1_EEvT_S5_T0_.exit.i
  %wide.trip.count130.i = zext nneg i32 %.1119.i to i64 ; 2 uses
  %i.aik = add nsw i64 %wide.trip.count130.i, -1  ; 5 uses
  %min.iters.check71 = icmp ult i32 %.1119.i, 9
  br i1 %min.iters.check71, label %.lr.ph47.i.preheader, label %vector.main.loop.iter.check72

vector.main.loop.iter.check72:                    ; preds = %iter.check109
  %min.iters.check73 = icmp ult i32 %.1119.i, 33
  br i1 %min.iters.check73, label %vec.epilog.ph113, label %vector.ph74

vector.ph74:                                      ; preds = %vector.main.loop.iter.check72
  %i.ail = and i64 %i.aik, 24
  %n.vec75 = and i64 %i.aik, -32                  ; 4 uses
  %i.aim = or disjoint i64 %n.vec75, 1            ; 2 uses
  %i.ain = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %i.ahx, i64 0
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next103, %vector.body76 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph74 ], [ %vec.ind.next, %vector.body76 ] ; 5 uses
  %vec.phi = phi <8 x i64> [ %i.ain, %vector.ph74 ], [ %i.ajf, %vector.body76 ]
  %vec.phi78 = phi <8 x i64> [ zeroinitializer, %vector.ph74 ], [ %i.ajg, %vector.body76 ]
  %vec.phi79 = phi <8 x i64> [ zeroinitializer, %vector.ph74 ], [ %i.ajh, %vector.body76 ]
  %vec.phi80 = phi <8 x i64> [ zeroinitializer, %vector.ph74 ], [ %i.aji, %vector.body76 ]
  %step.add = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %vec.ind
  %wide.gep81 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %step.add
  %wide.gep82 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %step.add.2
  %wide.gep83 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %step.add.3
  %i.aio = getelementptr inbounds nuw i8, ptr %i.a, i64 %index77 ; 4 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 1
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aio, i64 9
  %i.air = getelementptr inbounds nuw i8, ptr %i.aio, i64 17
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aio, i64 25
  %wide.load84 = load <8 x i8>, ptr %i.aip, align 1, !tbaa !95
  %wide.load85 = load <8 x i8>, ptr %i.aiq, align 1, !tbaa !95
  %wide.load86 = load <8 x i8>, ptr %i.air, align 1, !tbaa !95
  %wide.load87 = load <8 x i8>, ptr %i.ais, align 1, !tbaa !95
  %i.ait = zext <8 x i8> %wide.load84 to <8 x i64>
  %i.aiu = zext <8 x i8> %wide.load85 to <8 x i64>
  %i.aiv = zext <8 x i8> %wide.load86 to <8 x i64>
  %i.aiw = zext <8 x i8> %wide.load87 to <8 x i64>
  %wide.gep88 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.ait
  %wide.gep89 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.aiu
  %wide.gep90 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.aiv
  %wide.gep91 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.aiw
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep88, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather92 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep89, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather93 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep90, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather94 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep91, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.aix = sext <8 x i32> %wide.masked.gather to <8 x i64>
  %i.aiy = sext <8 x i32> %wide.masked.gather92 to <8 x i64>
  %i.aiz = sext <8 x i32> %wide.masked.gather93 to <8 x i64>
  %i.aja = sext <8 x i32> %wide.masked.gather94 to <8 x i64>
  %wide.gep95 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, <8 x i64> %i.aix
  %wide.gep96 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep81, <8 x i64> %i.aiy
  %wide.gep97 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep82, <8 x i64> %i.aiz
  %wide.gep98 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep83, <8 x i64> %i.aja
  %wide.masked.gather99 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep95, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather100 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep96, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather101 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep97, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %wide.masked.gather102 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep98, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.ajb = sext <8 x i32> %wide.masked.gather99 to <8 x i64>
  %i.ajc = sext <8 x i32> %wide.masked.gather100 to <8 x i64>
  %i.ajd = sext <8 x i32> %wide.masked.gather101 to <8 x i64>
  %i.aje = sext <8 x i32> %wide.masked.gather102 to <8 x i64>
  %i.ajf = add <8 x i64> %vec.phi, %i.ajb         ; 2 uses
  %i.ajg = add <8 x i64> %vec.phi78, %i.ajc       ; 2 uses
  %i.ajh = add <8 x i64> %vec.phi79, %i.ajd       ; 2 uses
  %i.aji = add <8 x i64> %vec.phi80, %i.aje       ; 2 uses
  %index.next103 = add nuw i64 %index77, 32       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.ajj = icmp eq i64 %index.next103, %n.vec75
  br i1 %i.ajj, label %middle.block104, label %vector.body76, !llvm.loop !464

middle.block104:                                  ; preds = %vector.body76
  %bin.rdx = add <8 x i64> %i.ajg, %i.ajf
  %bin.rdx105 = add <8 x i64> %i.ajh, %bin.rdx
  %bin.rdx106 = add <8 x i64> %i.aji, %bin.rdx105
  %i.ajk = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx106) ; 3 uses
  %cmp.n107 = icmp eq i64 %i.aik, %n.vec75
  br i1 %cmp.n107, label %.loopexit.i, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block104
  %min.epilog.iters.check112 = icmp eq i64 %i.ail, 0
  br i1 %min.epilog.iters.check112, label %.lr.ph47.i.preheader, label %vec.epilog.ph113, !prof !114

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check72, %vec.epilog.iter.check111
  %vec.epilog.resume.val108 = phi i64 [ %n.vec75, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check72 ]
  %bc.resume.val = phi i64 [ %i.aim, %vec.epilog.iter.check111 ], [ 1, %vector.main.loop.iter.check72 ]
  %bc.merge.rdx = phi i64 [ %i.ajk, %vec.epilog.iter.check111 ], [ %i.ahx, %vector.main.loop.iter.check72 ]
  %n.vec114 = and i64 %i.aik, -8                  ; 3 uses
  %i.ajl = or disjoint i64 %n.vec114, 1
  %i.ajm = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body115

vec.epilog.vector.body115:                        ; preds = %vec.epilog.vector.body115, %vec.epilog.ph113
  %index116 = phi i64 [ %vec.epilog.resume.val108, %vec.epilog.ph113 ], [ %index.next125, %vec.epilog.vector.body115 ] ; 2 uses
  %vec.ind117 = phi <8 x i64> [ %induction, %vec.epilog.ph113 ], [ %vec.ind.next126, %vec.epilog.vector.body115 ] ; 2 uses
  %vec.phi118 = phi <8 x i64> [ %i.ajm, %vec.epilog.ph113 ], [ %i.ajs, %vec.epilog.vector.body115 ]
  %wide.gep119 = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <8 x i64> %vec.ind117
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index116
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 1
  %wide.load120 = load <8 x i8>, ptr %i.ajo, align 1, !tbaa !95
  %i.ajp = zext <8 x i8> %wide.load120 to <8 x i64>
  %wide.gep121 = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, <8 x i64> %i.ajp
  %wide.masked.gather122 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep121, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.ajq = sext <8 x i32> %wide.masked.gather122 to <8 x i64>
  %wide.gep123 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep119, <8 x i64> %i.ajq
  %wide.masked.gather124 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep123, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !89
  %i.ajr = sext <8 x i32> %wide.masked.gather124 to <8 x i64>
  %i.ajs = add <8 x i64> %vec.phi118, %i.ajr      ; 2 uses
  %index.next125 = add nuw i64 %index116, 8       ; 2 uses
  %vec.ind.next126 = add nuw nsw <8 x i64> %vec.ind117, splat (i64 8)
  %i.ajt = icmp eq i64 %index.next125, %n.vec114
  br i1 %i.ajt, label %vec.epilog.middle.block127, label %vec.epilog.vector.body115, !llvm.loop !465

vec.epilog.middle.block127:                       ; preds = %vec.epilog.vector.body115
  %i.aju = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.ajs) ; 2 uses
  %cmp.n128 = icmp eq i64 %i.aik, %n.vec114
  br i1 %cmp.n128, label %.loopexit.i, label %.lr.ph47.i.preheader

.lr.ph47.i.preheader:                             ; preds = %iter.check109, %vec.epilog.iter.check111, %vec.epilog.middle.block127
  %indvars.iv127.i.ph = phi i64 [ 1, %iter.check109 ], [ %i.aim, %vec.epilog.iter.check111 ], [ %i.ajl, %vec.epilog.middle.block127 ]
  %.011646.i.ph = phi i64 [ %i.ahx, %iter.check109 ], [ %i.ajk, %vec.epilog.iter.check111 ], [ %i.aju, %vec.epilog.middle.block127 ]
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.preheader, %.lr.ph47.i
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i, %.lr.ph47.i ], [ %indvars.iv127.i.ph, %.lr.ph47.i.preheader ] ; 3 uses
  %.011646.i = phi i64 [ %i.akf, %.lr.ph47.i ], [ %.011646.i.ph, %.lr.ph47.i.preheader ]
  %i.ajv = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %indvars.iv127.i
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv127.i
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !95
  %i.ajy = zext i8 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.ajy
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !89
  %i.akb = sext i32 %i.aka to i64
  %i.akc = getelementptr inbounds [4 x i8], ptr %i.ajv, i64 %i.akb
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !89
  %i.ake = sext i32 %i.akd to i64
  %i.akf = add i64 %.011646.i, %i.ake             ; 2 uses
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next128.i, %wide.trip.count130.i
  br i1 %exitcond131.not.i, label %.loopexit.i, label %.lr.ph47.i, !llvm.loop !466

bb.da:                                            ; preds = %.loopexit18.i
  %i.akg = load i8, ptr %i.a, align 1, !tbaa !95
  %i.akh = icmp ult i8 %i.akg, 32
  %or.cond65.i = or i1 %.not13533.i, %i.akh
  br i1 %or.cond65.i, label %.loopexit16.i, label %.lr.ph38.preheader.i

.lr.ph38.preheader.i:                             ; preds = %bb.da
  %wide.trip.count113.i = and i64 %indvars.iv.next88.i, 4294967295
  %i.aki = add nsw i64 %wide.trip.count113.i, -1
  %xtraiter375 = and i64 %indvars.iv.next88.i, 7  ; 3 uses
  %i.akj = icmp ult i64 %i.aki, 7
  br i1 %i.akj, label %.lr.ph38.i.epil.preheader, label %.lr.ph38.preheader.i.new

.lr.ph38.preheader.i.new:                         ; preds = %.lr.ph38.preheader.i
  %unroll_iter379 = and i64 %indvars.iv.next88.i, 4294967288
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph38.i, %.lr.ph38.preheader.i.new
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph38.preheader.i.new ], [ %indvars.iv.next110.i.7, %.lr.ph38.i ] ; 9 uses
  %niter380 = phi i64 [ 0, %.lr.ph38.preheader.i.new ], [ %niter380.next.7, %.lr.ph38.i ]
  %i.akk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109.i ; 2 uses
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !95
  %i.akm = xor i8 %i.akl, 56
  store i8 %i.akm, ptr %i.akk, align 1, !tbaa !95
  %i.akn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109.i
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 1 ; 2 uses
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !95
  %i.akq = xor i8 %i.akp, 56
  store i8 %i.akq, ptr %i.ako, align 1, !tbaa !95
  %i.akr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109.i
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 2 ; 2 uses
  %i.akt = load i8, ptr %i.aks, align 1, !tbaa !95
  %i.aku = xor i8 %i.akt, 56
  store i8 %i.aku, ptr %i.aks, align 1, !tbaa !95
  %i.akv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109.i
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 3 ; 2 uses
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !95
  %i.aky = xor i8 %i.akx, 56
  store i8 %i.aky, ptr %i.akw, align 1, !tbaa !95
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109.i
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 4 ; 2 uses
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !95
  %i.alc = xor i8 %i.alb, 56
  store i8 %i.alc, ptr %i.ala, align 1, !tbaa !95
  %i.ald = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109.i
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 5 ; 2 uses
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !95
  %i.alg = xor i8 %i.alf, 56
  store i8 %i.alg, ptr %i.ale, align 1, !tbaa !95
  %i.alh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109.i
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 6 ; 2 uses
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !95
  %i.alk = xor i8 %i.alj, 56
  store i8 %i.alk, ptr %i.ali, align 1, !tbaa !95
  %i.all = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109.i
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 7 ; 2 uses
  %i.aln = load i8, ptr %i.alm, align 1, !tbaa !95
  %i.alo = xor i8 %i.aln, 56
  store i8 %i.alo, ptr %i.alm, align 1, !tbaa !95
  %indvars.iv.next110.i.7 = add nuw nsw i64 %indvars.iv109.i, 8 ; 2 uses
  %niter380.next.7 = add nuw i64 %niter380, 8     ; 2 uses
  %niter380.ncmp.7 = icmp eq i64 %niter380.next.7, %unroll_iter379
  br i1 %niter380.ncmp.7, label %.loopexit16.i.loopexit.unr-lcssa, label %.lr.ph38.i, !llvm.loop !467

.loopexit16.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph38.i
  %lcmp.mod377.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod377.not, label %.loopexit16.i, label %.lr.ph38.i.epil.preheader

.lr.ph38.i.epil.preheader:                        ; preds = %.loopexit16.i.loopexit.unr-lcssa, %.lr.ph38.preheader.i
  %indvars.iv109.i.epil.init = phi i64 [ 0, %.lr.ph38.preheader.i ], [ %indvars.iv.next110.i.7, %.loopexit16.i.loopexit.unr-lcssa ]
  %lcmp.mod378 = icmp ne i64 %xtraiter375, 0
  call void @llvm.assume(i1 %lcmp.mod378)
  br label %.lr.ph38.i.epil

.lr.ph38.i.epil:                                  ; preds = %.lr.ph38.i.epil, %.lr.ph38.i.epil.preheader
  %indvars.iv109.i.epil = phi i64 [ %indvars.iv109.i.epil.init, %.lr.ph38.i.epil.preheader ], [ %indvars.iv.next110.i.epil, %.lr.ph38.i.epil ] ; 2 uses
  %epil.iter376 = phi i64 [ 0, %.lr.ph38.i.epil.preheader ], [ %epil.iter376.next, %.lr.ph38.i.epil ]
  %i.alp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109.i.epil ; 2 uses
  %i.alq = load i8, ptr %i.alp, align 1, !tbaa !95
  %i.alr = xor i8 %i.alq, 56
  store i8 %i.alr, ptr %i.alp, align 1, !tbaa !95
  %indvars.iv.next110.i.epil = add nuw nsw i64 %indvars.iv109.i.epil, 1
  %epil.iter376.next = add i64 %epil.iter376, 1   ; 2 uses
  %epil.iter376.cmp.not = icmp eq i64 %epil.iter376.next, %xtraiter375
  br i1 %epil.iter376.cmp.not, label %.loopexit16.i, label %.lr.ph38.i.epil, !llvm.loop !468

.loopexit16.i:                                    ; preds = %.loopexit16.i.loopexit.unr-lcssa, %.lr.ph38.i.epil, %bb.da
  %i.als = getelementptr inbounds nuw i8, ptr %i.ads, i64 200
  %i.alt = load i32, ptr %i.als, align 8, !tbaa !89 ; 2 uses
  %i.alu = icmp sgt i32 %i.alt, 0
  br i1 %i.alu, label %.lr.ph41.preheader.i, label %.loopexit13.i

.lr.ph41.preheader.i:                             ; preds = %.loopexit16.i
  %wide.trip.count118.i = zext nneg i32 %i.alt to i64
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %bb.dc, %.lr.ph41.preheader.i
  %indvars.iv115.i = phi i64 [ 0, %.lr.ph41.preheader.i ], [ %indvars.iv.next116.i, %bb.dc ] ; 7 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv115.i
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !95 ; 2 uses
  %i.alx = lshr i8 %i.alw, 3                      ; 2 uses
  %i.aly = and i8 %i.alw, 7                       ; 2 uses
  %.not137.i = icmp eq i8 %i.alx, %i.aly
  br i1 %.not137.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph41.i
  %i.alz = icmp samesign ule i8 %i.alx, %i.aly
  %.not13842.i = icmp sgt i64 %indvars.iv115.i, %indvars.iv87.i
  %or.cond66.i = or i1 %.not13842.i, %i.alz
  br i1 %or.cond66.i, label %.loopexit13.i, label %.lr.ph44.preheader.i

.lr.ph44.preheader.i:                             ; preds = %bb.db
  %wide.trip.count125.i = and i64 %indvars.iv.next88.i, 4294967295 ; 2 uses
  %i.ama = sub i64 %indvars.iv.next88.i, %indvars.iv115.i
  %xtraiter383 = and i64 %i.ama, 7                ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.preheader.i, %.lr.ph44.i.prol
  %indvars.iv121.i.prol = phi i64 [ %indvars.iv.next122.i.prol, %.lr.ph44.i.prol ], [ %indvars.iv115.i, %.lr.ph44.preheader.i ] ; 2 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %.lr.ph44.i.prol ], [ 0, %.lr.ph44.preheader.i ]
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i.prol ; 2 uses
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !95 ; 2 uses
  %i.amd = lshr i8 %i.amc, 3
  %i.ame = shl i8 %i.amc, 3
  %.masked.i.prol = and i8 %i.ame, 56
  %i.amf = or i8 %.masked.i.prol, %i.amd
  store i8 %i.amf, ptr %i.amb, align 1, !tbaa !95
  %indvars.iv.next122.i.prol = add nuw nsw i64 %indvars.iv121.i.prol, 1 ; 2 uses
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol, !llvm.loop !469

.lr.ph44.i.prol.loopexit:                         ; preds = %.lr.ph44.i.prol, %.lr.ph44.preheader.i
  %indvars.iv121.i.unr = phi i64 [ %indvars.iv115.i, %.lr.ph44.preheader.i ], [ %indvars.iv.next122.i.prol, %.lr.ph44.i.prol ]
  %i.amg = sub nsw i64 %indvars.iv115.i, %wide.trip.count125.i
  %i.amh = icmp ugt i64 %i.amg, -8
  br i1 %i.amh, label %.loopexit13.i, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.prol.loopexit, %.lr.ph44.i
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i.7, %.lr.ph44.i ], [ %indvars.iv121.i.unr, %.lr.ph44.i.prol.loopexit ] ; 9 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i ; 2 uses
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !95 ; 2 uses
  %i.amk = lshr i8 %i.amj, 3
  %i.aml = shl i8 %i.amj, 3
  %.masked.i = and i8 %i.aml, 56
  %i.amm = or i8 %.masked.i, %i.amk
  store i8 %i.amm, ptr %i.ami, align 1, !tbaa !95
  %i.amn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 1 ; 2 uses
  %i.amp = load i8, ptr %i.amo, align 1, !tbaa !95 ; 2 uses
  %i.amq = lshr i8 %i.amp, 3
  %i.amr = shl i8 %i.amp, 3
  %.masked.i.1 = and i8 %i.amr, 56
  %i.ams = or i8 %.masked.i.1, %i.amq
  store i8 %i.ams, ptr %i.amo, align 1, !tbaa !95
  %i.amt = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 2 ; 2 uses
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !95 ; 2 uses
  %i.amw = lshr i8 %i.amv, 3
  %i.amx = shl i8 %i.amv, 3
  %.masked.i.2 = and i8 %i.amx, 56
  %i.amy = or i8 %.masked.i.2, %i.amw
  store i8 %i.amy, ptr %i.amu, align 1, !tbaa !95
  %i.amz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 3 ; 2 uses
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !95 ; 2 uses
  %i.anc = lshr i8 %i.anb, 3
  %i.and = shl i8 %i.anb, 3
  %.masked.i.3 = and i8 %i.and, 56
  %i.ane = or i8 %.masked.i.3, %i.anc
  store i8 %i.ane, ptr %i.ana, align 1, !tbaa !95
  %i.anf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 4 ; 2 uses
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !95 ; 2 uses
  %i.ani = lshr i8 %i.anh, 3
  %i.anj = shl i8 %i.anh, 3
  %.masked.i.4 = and i8 %i.anj, 56
  %i.ank = or i8 %.masked.i.4, %i.ani
  store i8 %i.ank, ptr %i.ang, align 1, !tbaa !95
  %i.anl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 5 ; 2 uses
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !95 ; 2 uses
  %i.ano = lshr i8 %i.ann, 3
  %i.anp = shl i8 %i.ann, 3
  %.masked.i.5 = and i8 %i.anp, 56
  %i.anq = or i8 %.masked.i.5, %i.ano
  store i8 %i.anq, ptr %i.anm, align 1, !tbaa !95
  %i.anr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 6 ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !95 ; 2 uses
  %i.anu = lshr i8 %i.ant, 3
  %i.anv = shl i8 %i.ant, 3
  %.masked.i.6 = and i8 %i.anv, 56
  %i.anw = or i8 %.masked.i.6, %i.anu
  store i8 %i.anw, ptr %i.ans, align 1, !tbaa !95
  %i.anx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv121.i
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 7 ; 2 uses
  %i.anz = load i8, ptr %i.any, align 1, !tbaa !95 ; 2 uses
  %i.aoa = lshr i8 %i.anz, 3
  %i.aob = shl i8 %i.anz, 3
  %.masked.i.7 = and i8 %i.aob, 56
  %i.aoc = or i8 %.masked.i.7, %i.aoa
  store i8 %i.aoc, ptr %i.any, align 1, !tbaa !95
  %indvars.iv.next122.i.7 = add nuw nsw i64 %indvars.iv121.i, 8 ; 2 uses
  %exitcond126.not.i.7 = icmp eq i64 %indvars.iv.next122.i.7, %wide.trip.count125.i
  br i1 %exitcond126.not.i.7, label %.loopexit13.i, label %.lr.ph44.i, !llvm.loop !470

bb.dc:                                            ; preds = %.lr.ph41.i
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %exitcond119.not.i = icmp eq i64 %indvars.iv.next116.i, %wide.trip.count118.i
  br i1 %exitcond119.not.i, label %.loopexit13.i, label %.lr.ph41.i, !llvm.loop !471

.loopexit13.i:                                    ; preds = %bb.dc, %.lr.ph44.i.prol.loopexit, %.lr.ph44.i, %bb.db, %.loopexit16.i
  %i.aod = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 53
  %i.aoe = load i8, ptr %i.aod, align 1, !tbaa !209, !range !206, !noundef !207
  %i.aof = trunc nuw i8 %i.aoe to i1
  br i1 %i.aof, label %bb.dd, label %bb.dk

bb.dd:                                            ; preds = %.loopexit13.i
  %i.aog = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aoh = load i8, ptr %i.aog, align 1, !tbaa !95 ; 6 uses
  %i.aoi = load i8, ptr %i.a, align 1, !tbaa !95  ; 5 uses
  %i.aoj = icmp ugt i8 %i.aoh, %i.aoi
  %.neg.i = sext i1 %i.aoj to i32                 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aol = load i8, ptr %i.aok, align 1, !tbaa !95 ; 7 uses
  %i.aom = icmp ugt i8 %i.aol, %i.aoi
  %.neg67.i = sext i1 %i.aom to i32
  %i.aon = icmp ugt i8 %i.aol, %i.aoh
  %.neg68.i = sext i1 %i.aon to i32
  %.neg69.i = add nsw i32 %.neg67.i, %.neg68.i    ; 3 uses
  %i.aoo = lshr i8 %i.aoi, 3                      ; 2 uses
  %i.aop = zext nneg i8 %i.aoo to i32             ; 3 uses
  %i.aoq = and i8 %i.aoi, 7
  %.not139.i = icmp eq i8 %i.aoo, %i.aoq
  br i1 %.not139.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aor = zext i8 %i.aoi to i64
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_19MapA1D1D4E, i64 %i.aor
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !89
  %i.aou = mul nsw i32 %i.aot, 63
  %i.aov = zext i8 %i.aoh to i32
  %i.aow = add nsw i32 %.neg.i, %i.aov
  %i.aox = add nsw i32 %i.aow, %i.aou
  %i.aoy = mul nsw i32 %i.aox, 62
  %i.aoz = zext i8 %i.aol to i32
  %i.apa = add nsw i32 %.neg69.i, %i.aoz
  %i.apb = add i32 %i.apa, %i.aoy
  %i.apc = sext i32 %i.apb to i64
  br label %.loopexit.i

bb.df:                                            ; preds = %bb.dd
  %i.apd = lshr i8 %i.aoh, 3                      ; 2 uses
  %i.ape = and i8 %i.aoh, 7
  %.not140.i = icmp eq i8 %i.apd, %i.ape
  br i1 %.not140.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.apf = mul nuw nsw i32 %i.aop, 28
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 72                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 72                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.u, %.lr.ph.i ], [ %1, %bb.c ] ; 5 uses
  %.sroa.04.07.i = phi ptr [ %i.t, %.lr.ph.i ], [ %0, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.04.07.i, i64 44, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !364
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 64 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.04.07.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.08.i, i64 44, i1 false)
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !365
  store <2 x ptr> %i.r, ptr %i.l, align 8, !tbaa !365
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !364
  store ptr %i.s, ptr %i.m, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.08.i, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i.i, i64 44, i1 false)
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !365
  store ptr %i.n, ptr %i.p, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 72
  %.not.i = icmp eq ptr %i.t, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i, !llvm.loop !588

bb.d:                                             ; preds = %bb.c
  %i.v = sub i64 %i.c, %i.g
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.057 = phi i64 [ %i.f, %bb.d ], [ %.057.be, %.backedge ] ; 5 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %.sroa.027.0 = phi ptr [ %0, %bb.d ], [ %.sroa.027.0.be, %.backedge ] ; 7 uses
  %i.x = sub nsw i64 %.057, %.0                   ; 7 uses
  %i.y = icmp slt i64 %.0, %i.x
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = icmp sgt i64 %i.x, 0
  br i1 %i.z, label %.lr.ph67.preheader, label %._crit_edge68

.lr.ph67.preheader:                               ; preds = %bb.f
  %i.aa = getelementptr inbounds [72 x i8], ptr %.sroa.027.0, i64 %.0 ; 2 uses
  %xtraiter84 = and i64 %i.x, 3                   ; 3 uses
  %i.ab = sub i64 %.0, %.057
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.lr.ph67.epil.preheader, label %.lr.ph67.preheader.new

.lr.ph67.preheader.new:                           ; preds = %.lr.ph67.preheader
  %unroll_iter89 = and i64 %i.x, 9223372036854775804
  br label %.lr.ph67

._crit_edge68.loopexit.unr-lcssa:                 ; preds = %.lr.ph67
  %lcmp.mod86.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod86.not, label %._crit_edge68, label %.lr.ph67.epil.preheader

.lr.ph67.epil.preheader:                          ; preds = %._crit_edge68.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.sroa.026.064.epil.init = phi ptr [ %i.aa, %.lr.ph67.preheader ], [ %i.cb, %._crit_edge68.loopexit.unr-lcssa ]
  %.sroa.027.163.epil.init = phi ptr [ %.sroa.027.0, %.lr.ph67.preheader ], [ %i.ca, %._crit_edge68.loopexit.unr-lcssa ]
  %lcmp.mod88 = icmp ne i64 %xtraiter84, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph67.epil

.lr.ph67.epil:                                    ; preds = %.lr.ph67.epil, %.lr.ph67.epil.preheader
  %.sroa.026.064.epil = phi ptr [ %i.am, %.lr.ph67.epil ], [ %.sroa.026.064.epil.init, %.lr.ph67.epil.preheader ] ; 5 uses
  %.sroa.027.163.epil = phi ptr [ %i.al, %.lr.ph67.epil ], [ %.sroa.027.163.epil.init, %.lr.ph67.epil.preheader ] ; 5 uses
  %epil.iter85 = phi i64 [ %epil.iter85.next, %.lr.ph67.epil ], [ 0, %.lr.ph67.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.027.163.epil, i64 44, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.027.163.epil, i64 48 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.027.163.epil, i64 64 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !364
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.026.064.epil, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.026.064.epil, i64 64 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.027.163.epil, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.026.064.epil, i64 44, i1 false)
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !365
  store <2 x ptr> %i.aj, ptr %i.ad, align 8, !tbaa !365
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !364
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.026.064.epil, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, i64 44, i1 false)
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !365
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.027.163.epil, i64 72 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.026.064.epil, i64 72
  %epil.iter85.next = add i64 %epil.iter85, 1     ; 2 uses
  %epil.iter85.cmp.not = icmp eq i64 %epil.iter85.next, %xtraiter84
  br i1 %epil.iter85.cmp.not, label %._crit_edge68, label %.lr.ph67.epil, !llvm.loop !589

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit.unr-lcssa, %.lr.ph67.epil, %bb.f
  %.sroa.027.1.lcssa = phi ptr [ %.sroa.027.0, %bb.f ], [ %i.ca, %._crit_edge68.loopexit.unr-lcssa ], [ %i.al, %.lr.ph67.epil ]
  %i.an = srem i64 %.057, %.0                     ; 2 uses
  %.not21 = icmp eq i64 %i.an, 0
  br i1 %.not21, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.g

.lr.ph67:                                         ; preds = %.lr.ph67, %.lr.ph67.preheader.new
  %.sroa.026.064 = phi ptr [ %i.aa, %.lr.ph67.preheader.new ], [ %i.cb, %.lr.ph67 ] ; 14 uses
  %.sroa.027.163 = phi ptr [ %.sroa.027.0, %.lr.ph67.preheader.new ], [ %i.ca, %.lr.ph67 ] ; 14 uses
  %niter90 = phi i64 [ 0, %.lr.ph67.preheader.new ], [ %niter90.next.3, %.lr.ph67 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.027.163, i64 44, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 48 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 64 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !364
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 64 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.027.163, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.026.064, i64 44, i1 false)
  %i.au = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !365
  store <2 x ptr> %i.au, ptr %i.ao, align 8, !tbaa !365
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !364
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.026.064, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, i64 44, i1 false)
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !365
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 72 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i64 44, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 120 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 136 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !364
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 136 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.ax, i64 44, i1 false)
  %i.be = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !365
  store <2 x ptr> %i.be, ptr %i.ay, align 8, !tbaa !365
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !364
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, i64 44, i1 false)
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !tbaa !365
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 144 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.bg, i64 44, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 192 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 208 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !364
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 192 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 208 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 44, i1 false)
  %i.bo = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !365
  store <2 x ptr> %i.bo, ptr %i.bi, align 8, !tbaa !365
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !364
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, i64 44, i1 false)
  store <2 x ptr> %i.bn, ptr %i.bl, align 8, !tbaa !365
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 216 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i64 44, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 264 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 280 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !364
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 264 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 280 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bq, ptr noundef nonnull align 8 dereferenceable(72) %i.br, i64 44, i1 false)
  %i.by = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !365
  store <2 x ptr> %i.by, ptr %i.bs, align 8, !tbaa !365
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !364
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.br, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i, i64 44, i1 false)
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !365
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.027.163, i64 288 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.026.064, i64 288 ; 2 uses
  %niter90.next.3 = add nuw i64 %niter90, 4       ; 2 uses
  %niter90.ncmp.3 = icmp eq i64 %niter90.next.3, %unroll_iter89
  br i1 %niter90.ncmp.3, label %._crit_edge68.loopexit.unr-lcssa, label %.lr.ph67, !llvm.loop !590

bb.g:                                             ; preds = %._crit_edge68
  %i.cc = sub nsw i64 %.0, %i.an
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds [72 x i8], ptr %.sroa.027.0, i64 %.057 ; 3 uses
  %i.ce = sub i64 0, %i.x
  %i.cf = getelementptr inbounds [72 x i8], ptr %i.cd, i64 %i.ce ; 3 uses
  %i.cg = icmp sgt i64 %.0, 0
  br i1 %i.cg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.0, 3                      ; 3 uses
  %i.ch = icmp ult i64 %.0, 4
  br i1 %i.ch, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.061.epil.init = phi ptr [ %i.cd, %.lr.ph.preheader ], [ %i.dy, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.027.260.epil.init = phi ptr [ %i.cf, %.lr.ph.preheader ], [ %i.dx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.061.epil = phi ptr [ %i.cj, %.lr.ph.epil ], [ %.sroa.0.061.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.sroa.027.260.epil = phi ptr [ %i.ci, %.lr.ph.epil ], [ %.sroa.027.260.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ci = getelementptr inbounds i8, ptr %.sroa.027.260.epil, i64 -72 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.0.061.epil, i64 -72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.ci, i64 44, i1 false)
  %i.ck = getelementptr inbounds i8, ptr %.sroa.027.260.epil, i64 -24 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.027.260.epil, i64 -8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !364
  %i.cn = getelementptr inbounds i8, ptr %.sroa.0.061.epil, i64 -24 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.061.epil, i64 -8 ; 2 uses
  %i.cp = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ci, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, i64 44, i1 false)
  %i.cq = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !365
  store <2 x ptr> %i.cq, ptr %i.ck, align 8, !tbaa !365
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !364
  store ptr %i.cr, ptr %i.cl, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cj, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.cp, ptr %i.cn, align 8, !tbaa !365
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !591

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.h
  %.sroa.027.2.lcssa = phi ptr [ %i.cf, %bb.h ], [ %.sroa.027.0, %.lr.ph.epil ], [ %.sroa.027.0, %._crit_edge.loopexit.unr-lcssa ]
  %i.cs = srem i64 %.057, %i.x                    ; 2 uses
  %.not = icmp eq i64 %i.cs, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.057.be = phi i64 [ %.0, %bb.g ], [ %i.x, %._crit_edge ]
  %.0.be = phi i64 [ %i.cc, %bb.g ], [ %i.cs, %._crit_edge ]
  %.sroa.027.0.be = phi ptr [ %.sroa.027.1.lcssa, %bb.g ], [ %.sroa.027.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !592

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.061 = phi ptr [ %i.cd, %.lr.ph.preheader.new ], [ %i.dy, %.lr.ph ] ; 12 uses
  %.sroa.027.260 = phi ptr [ %i.cf, %.lr.ph.preheader.new ], [ %i.dx, %.lr.ph ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ct = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -72 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.ct, i64 44, i1 false)
  %i.cv = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -24 ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !364
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -24 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -8 ; 2 uses
  %i.da = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull align 8 dereferenceable(72) %i.cu, i64 44, i1 false)
  %i.db = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !365
  store <2 x ptr> %i.db, ptr %i.cv, align 8, !tbaa !365
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !364
  store ptr %i.dc, ptr %i.cw, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.da, ptr %i.cy, align 8, !tbaa !365
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %i.dd = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -144 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.dd, i64 44, i1 false)
  %i.df = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -96 ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -80 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !364
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -96 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -80 ; 2 uses
  %i.dk = load <2 x ptr>, ptr %i.df, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, ptr noundef nonnull align 8 dereferenceable(72) %i.de, i64 44, i1 false)
  %i.dl = load <2 x ptr>, ptr %i.di, align 8, !tbaa !365
  store <2 x ptr> %i.dl, ptr %i.df, align 8, !tbaa !365
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !364
  store ptr %i.dm, ptr %i.dg, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.de, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.dk, ptr %i.di, align 8, !tbaa !365
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %i.dn = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -216 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.dn, i64 44, i1 false)
  %i.dp = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -168 ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -152 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !364
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -168 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -152 ; 2 uses
  %i.du = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dn, ptr noundef nonnull align 8 dereferenceable(72) %i.do, i64 44, i1 false)
  %i.dv = load <2 x ptr>, ptr %i.ds, align 8, !tbaa !365
  store <2 x ptr> %i.dv, ptr %i.dp, align 8, !tbaa !365
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !364
  store ptr %i.dw, ptr %i.dq, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.do, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.du, ptr %i.ds, align 8, !tbaa !365
  store ptr %i.dr, ptr %i.dt, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %i.dx = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -288 ; 4 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -288 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %i.dx, i64 44, i1 false)
  %i.dz = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -240 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.027.260, i64 -224 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !364
  %i.ec = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -240 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.0.061, i64 -224 ; 2 uses
  %i.ee = load <2 x ptr>, ptr %i.dz, align 8, !tbaa !365
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dx, ptr noundef nonnull align 8 dereferenceable(72) %i.dy, i64 44, i1 false)
  %i.ef = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !365
  store <2 x ptr> %i.ef, ptr %i.dz, align 8, !tbaa !365
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !364
  store ptr %i.eg, ptr %i.ea, align 8, !tbaa !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dy, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0.i.i24, i64 44, i1 false)
  store <2 x ptr> %i.ee, ptr %i.ec, align 8, !tbaa !365
  store ptr %i.eb, ptr %i.ed, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i24)
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !593

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %._crit_edge, %._crit_edge68, %.lr.ph.i, %bb.b, %bb.a
  %.sroa.015.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %.lr.ph.i ], [ %i.w, %._crit_edge68 ], [ %i.w, %._crit_edge ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_SQ_T0_SR_T1_SR_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 4611686018427387903) %6) unnamed_addr #4 {
bb.a:
  %.not100 = icmp sgt i64 %3, %6
  %.not66101 = icmp sgt i64 %4, %6
  %or.cond102 = and i1 %.not100, %.not66101
  br i1 %or.cond102, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %tailrecurse ]
  %.tr94.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %3, %bb.a ], [ %i.ak, %tailrecurse ]
  %.tr97.lcssa = phi i64 [ %4, %bb.a ], [ %i.am, %tailrecurse ]
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_SQ_T0_SR_T1_T2_"(ptr %.tr.lcssa, ptr %.tr94.lcssa, ptr %2, i64 noundef %.tr96.lcssa, i64 noundef %.tr97.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr97106 = phi i64 [ %4, %.lr.ph ], [ %i.am, %tailrecurse ] ; 3 uses
  %.tr96105 = phi i64 [ %3, %.lr.ph ], [ %i.ak, %tailrecurse ] ; 3 uses
  %.tr94104 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr103 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr96105, %.tr97106
  %i.c = ptrtoint ptr %.tr94104 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit71

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr96105, 2                    ; 2 uses
  %i.e = getelementptr inbounds [72 x i8], ptr %.tr103, i64 %i.d ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 36
end_hunk_3
