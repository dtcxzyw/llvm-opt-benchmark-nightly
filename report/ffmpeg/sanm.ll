Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sanm?download=true
inline.NumInlined: 57
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 76
begin_hunk_0_@process_frame_obj:bb.a
  br i1 %i.bic, label %bb.en, label %.preheader.split.us.split.3.3.i

bb.en:                                            ; preds = %.preheader.split.us.split.2.3.i
  %i.bnw = getelementptr i8, ptr %i.blb, i64 14
  %i.bnx = load i8, ptr %i.bnw, align 1, !tbaa !48
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnp, i64 %i.bia
  store i8 %i.bnx, ptr %i.bny, align 1, !tbaa !48
  br label %.preheader.split.us.split.3.3.i

.preheader.split.us.split.3.3.i:                  ; preds = %bb.en, %.preheader.split.us.split.2.3.i
  br i1 %i.bif, label %bb.eo, label %.loopexit.i272

bb.eo:                                            ; preds = %.preheader.split.us.split.3.3.i
  %i.bnz = getelementptr i8, ptr %i.blb, i64 15
  %i.boa = load i8, ptr %i.bnz, align 1, !tbaa !48
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnp, i64 %i.bid
  store i8 %i.boa, ptr %i.bob, align 1, !tbaa !48
  br label %.loopexit.i272

.loopexit.i272:                                   ; preds = %bb.eo, %.preheader.split.us.split.3.3.i, %.preheader.split.us.3.i, %.split.us.2.i, %.preheader133.preheader.i, %bb.dx
  %indvars.iv.next.i273 = add nuw nsw i64 %indvars.iv.i266, 4 ; 2 uses
  %i.boc = icmp samesign ult i64 %indvars.iv.next.i273, %i.bhj
  br i1 %i.boc, label %.split150.i, label %.split152.us.i, !llvm.loop !120

.split152.us.i:                                   ; preds = %.loopexit.i272, %bb.dr, %bb.dn
  %indvars.iv.next188.i = add nuw nsw i64 %indvars.iv187.i, 4 ; 2 uses
  %i.bod = icmp samesign ult i64 %indvars.iv.next188.i, %i.bhk
  br i1 %i.bod, label %bb.dm, label %old_codec45.exit, !llvm.loop !121

bb.ep:                                            ; preds = %bb.ad
  %i.boe = sext i16 %i.gb to i32
  %i.bof = sext i16 %i.fz to i32
  %.val = load ptr, ptr %1, align 8, !tbaa !54
  %.val258 = load ptr, ptr %i.r, align 8, !tbaa !55
  tail call fastcc void @old_codec20(ptr noundef nonnull %0, ptr %.val, ptr %.val258, i32 noundef %i.boe, i32 noundef %i.bof, i32 noundef %i.n, i32 noundef %i.q)
  br label %old_codec45.exit

bb.eq:                                            ; preds = %bb.ad
  %i.bog = sext i16 %i.gb to i32
  %i.boh = sext i16 %i.fz to i32
  tail call fastcc void @old_codec21(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bog, i32 noundef %i.boh, i32 noundef %i.n, i32 noundef %i.q)
  br label %old_codec45.exit

bb.er:                                            ; preds = %bb.ad
  %i.boi = sext i16 %i.gb to i32
  %i.boj = sext i16 %i.fz to i32
  %i.bok = tail call fastcc i32 @old_codec23(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.boi, i32 noundef %i.boj, i32 noundef %i.n, i32 noundef %i.q, i8 noundef zeroext %i.f, i16 noundef zeroext %i.y)
  br label %old_codec45.exit

bb.es:                                            ; preds = %bb.ad, %bb.ad
  %i.bol = sext i16 %i.gb to i32                  ; 4 uses
  %i.bom = sext i16 %i.fz to i32                  ; 3 uses
  %.not302 = icmp eq i8 %i.c, 32                  ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %0, i64 4152
  %i.boo = load i32, ptr %i.bon, align 8, !tbaa !41
  %i.bop = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.boq = load i64, ptr %i.bop, align 8, !tbaa !47
  %i.bor = getelementptr inbounds nuw i8, ptr %0, i64 4184
  %i.bos = load ptr, ptr %i.bor, align 8, !tbaa !60
  %i.bot = add nsw i32 %i.bol, %i.q               ; 3 uses
  %i.bou = icmp slt i32 %i.bot, 0
  br i1 %i.bou, label %old_codec45.exit, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bov = getelementptr inbounds nuw i8, ptr %0, i64 4156
  %i.bow = load i32, ptr %i.bov, align 4, !tbaa !42
  %i.box = and i32 %i.bow, 65535                  ; 3 uses
  %.not.i277 = icmp sle i32 %i.box, %i.bol
  %i.boy = add nsw i32 %i.bom, %i.n
  %i.boz = icmp slt i32 %i.boy, 0
  %or.cond151.i = select i1 %.not.i277, i1 true, i1 %i.boz
  br i1 %or.cond151.i, label %old_codec45.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.bpa = and i32 %i.boo, 65535                  ; 17 uses
  %.not141.i = icmp sgt i32 %i.bpa, %i.bom
  br i1 %.not141.i, label %bb.ev, label %old_codec45.exit

bb.ev:                                            ; preds = %bb.eu
  %i.bpb = icmp slt i16 %i.gb, 0
  br i1 %i.bpb, label %bb.ew, label %..critedge_crit_edge.i278

..critedge_crit_edge.i278:                        ; preds = %bb.ev
  %.pre.i280 = load ptr, ptr %i.r, align 8, !tbaa !55 ; 2 uses
  %.pre201.i = load ptr, ptr %1, align 8, !tbaa !54
  %.pre202.i = ptrtoint ptr %.pre.i280 to i64
  br label %.critedge.i281

bb.ew:                                            ; preds = %bb.ev
  %i.bpc = xor i32 %i.bol, -1
  %i.bpd = load ptr, ptr %i.r, align 8, !tbaa !55 ; 3 uses
  %i.bpe = ptrtoint ptr %i.bpd to i64             ; 4 uses
  %.promoted.i293 = load ptr, ptr %1, align 8, !tbaa !57
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ez, %bb.ew
  %i.bpf = phi ptr [ %.promoted.i293, %bb.ew ], [ %i.bps, %bb.ez ] ; 4 uses
  %i.bpg = phi i32 [ %i.bpc, %bb.ew ], [ %i.bpt, %bb.ez ] ; 2 uses
  %i.bph = ptrtoint ptr %i.bpf to i64
  %i.bpi = sub i64 %i.bpe, %i.bph
  %i.bpj = trunc i64 %i.bpi to i32
  %i.bpk = icmp sgt i32 %i.bpj, 1
  br i1 %i.bpk, label %bb.ey, label %.critedge.i281

bb.ey:                                            ; preds = %bb.ex
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpf, i64 2 ; 3 uses
  store ptr %i.bpl, ptr %1, align 8, !tbaa !57
  %i.bpm = load i16, ptr %i.bpf, align 1, !tbaa !48 ; 2 uses
  %i.bpn = zext i16 %i.bpm to i32
  %i.bpo = ptrtoint ptr %i.bpl to i64
  %i.bpp = sub i64 %i.bpe, %i.bpo                 ; 2 uses
  %i.bpq = trunc i64 %i.bpp to i32
  %.not149.i = icmp sgt i32 %i.bpq, %i.bpn
  br i1 %.not149.i, label %bb.ez, label %old_codec45.exit

bb.ez:                                            ; preds = %bb.ey
  %i.bpr = zext i16 %i.bpm to i64
  %..i.i294 = tail call i64 @llvm.smin.i64(i64 %i.bpp, i64 %i.bpr)
  %i.bps = getelementptr inbounds i8, ptr %i.bpl, i64 %..i.i294 ; 3 uses
  store ptr %i.bps, ptr %1, align 8, !tbaa !54
  %i.bpt = add nsw i32 %i.bpg, -1
  %.not142.i = icmp eq i32 %i.bpg, 0
  br i1 %.not142.i, label %.critedge.i281, label %bb.ex, !llvm.loop !122

.critedge.i281:                                   ; preds = %bb.ez, %bb.ex, %..critedge_crit_edge.i278
  %.pre-phi.i282 = phi i64 [ %.pre202.i, %..critedge_crit_edge.i278 ], [ %i.bpe, %bb.ex ], [ %i.bpe, %bb.ez ]
  %i.bpu = phi ptr [ %.pre201.i, %..critedge_crit_edge.i278 ], [ %i.bps, %bb.ez ], [ %i.bpf, %bb.ex ] ; 2 uses
  %i.bpv = phi ptr [ %.pre.i280, %..critedge_crit_edge.i278 ], [ %i.bpd, %bb.ex ], [ %i.bpd, %bb.ez ]
  %.0132.i = phi i32 [ %i.q, %..critedge_crit_edge.i278 ], [ %i.bot, %bb.ex ], [ %i.bot, %bb.ez ] ; 2 uses
  %.0131.i = phi i32 [ %i.bol, %..critedge_crit_edge.i278 ], [ 0, %bb.ex ], [ 0, %bb.ez ] ; 2 uses
  %i.bpw = ptrtoint ptr %i.bpu to i64
  %i.bpx = sub i64 %.pre-phi.i282, %i.bpw
  %i.bpy = trunc i64 %i.bpx to i32
  %i.bpz = icmp sgt i32 %i.bpy, 1
  %i.bqa = icmp sgt i32 %.0132.i, 0
  %or.cond190.i = and i1 %i.bqa, %i.bpz
  %i.bqb = icmp samesign ult i32 %.0131.i, %i.box
  %i.bqc = select i1 %or.cond190.i, i1 %i.bqb, i1 false
  br i1 %i.bqc, label %.lr.ph193.i, label %old_codec45.exit

.lr.ph193.i:                                      ; preds = %.critedge.i281
  %i.bqd = and i64 %i.boq, 65535
  %i.bqe = zext nneg i32 %.0131.i to i64
  %i.bqf = zext nneg i32 %i.box to i64
  br label %bb.fa

bb.fa:                                            ; preds = %._crit_edge.i, %.lr.ph193.i
  %i.bqg = phi ptr [ %i.bpv, %.lr.ph193.i ], [ %i.btt, %._crit_edge.i ] ; 2 uses
  %indvars.iv.i283 = phi i64 [ %i.bqe, %.lr.ph193.i ], [ %indvars.iv.next.i284, %._crit_edge.i ] ; 2 uses
  %i.bqh = phi ptr [ %i.bpu, %.lr.ph193.i ], [ %i.bts, %._crit_edge.i ] ; 2 uses
  %.1133191.i = phi i32 [ %.0132.i, %.lr.ph193.i ], [ %i.btu, %._crit_edge.i ] ; 2 uses
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqh, i64 2 ; 4 uses
  store ptr %i.bqi, ptr %1, align 8, !tbaa !57
  %i.bqj = load i16, ptr %i.bqh, align 1, !tbaa !48 ; 2 uses
  %i.bqk = ptrtoint ptr %i.bqg to i64             ; 2 uses
  %i.bql = ptrtoint ptr %i.bqi to i64
  %i.bqm = sub i64 %i.bqk, %i.bql
  %i.bqn = trunc i64 %i.bqm to i32                ; 2 uses
  %i.bqo = icmp sgt i32 %i.bqn, 1
  %i.bqp = icmp ne i16 %i.bqj, 0
  %i.bqq = select i1 %i.bqo, i1 %i.bqp, i1 false
  br i1 %i.bqq, label %.lr.ph.i286, label %._crit_edge.i

.lr.ph.i286:                                      ; preds = %bb.fa
  %i.bqr = zext i16 %i.bqj to i32
  %i.bqs = mul nuw nsw i64 %indvars.iv.i283, %i.bqd
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bos, i64 %i.bqs ; 8 uses
  br label %bb.fb

bb.fb:                                            ; preds = %.loopexit.i289, %.lr.ph.i286
  %i.bqu = phi i64 [ %i.bqk, %.lr.ph.i286 ], [ %i.btl, %.loopexit.i289 ]
  %i.bqv = phi ptr [ %i.bqi, %.lr.ph.i286 ], [ %i.btk, %.loopexit.i289 ] ; 3 uses
  %.0189.i = phi i32 [ %i.bqr, %.lr.ph.i286 ], [ %.1.i, %.loopexit.i289 ] ; 3 uses
  %.0126188.i = phi i32 [ %i.bom, %.lr.ph.i286 ], [ %.7.i, %.loopexit.i289 ] ; 4 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 1 ; 3 uses
  store ptr %i.bqw, ptr %1, align 8, !tbaa !57
  %i.bqx = load i8, ptr %i.bqv, align 1, !tbaa !48
  %i.bqy = zext i8 %i.bqx to i32                  ; 2 uses
  %i.bqz = and i32 %i.bqy, 1
  %i.bra = lshr i32 %i.bqy, 1                     ; 6 uses
  %.not143.i = icmp eq i32 %i.bqz, 0
  br i1 %.not143.i, label %bb.fj, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqv, i64 2
  store ptr %i.brb, ptr %1, align 8, !tbaa !57
  %i.brc = load i8, ptr %i.bqw, align 1, !tbaa !48 ; 3 uses
  %i.brd = and i8 %i.brc, 15                      ; 2 uses
  %i.bre = icmp ne i8 %i.brd, 0
  %i.brf = add i8 %i.brd, %i.f                    ; 2 uses
  %i.brg = icmp ugt i8 %i.brc, 15
  %i.brh = lshr i8 %i.brc, 4
  %i.bri = add i8 %i.brh, %i.f                    ; 2 uses
  br i1 %.not302, label %.split.i, label %.split.us.i290

.split.us.i290:                                   ; preds = %bb.fc, %bb.ff
  %.1127185.us.i = phi i32 [ %spec.select157.us.i, %bb.ff ], [ %.0126188.i, %bb.fc ] ; 4 uses
  %.0128184.us.i = phi i32 [ %i.brr, %bb.ff ], [ 0, %bb.fc ] ; 2 uses
  %i.brj = icmp ult i32 %.1127185.us.i, %i.bpa
  %or.cond152.us.i = select i1 %i.bre, i1 %i.brj, i1 false
  br i1 %or.cond152.us.i, label %bb.fd, label %.thread.us.i

.thread.us.i:                                     ; preds = %.split.us.i290
  %4 = icmp slt i32 %.1127185.us.i, %i.bpa
  %5 = zext i1 %4 to i32
  br label %.thread.us.i.a

bb.fd:                                            ; preds = %.split.us.i290
  %i.brk = zext nneg i32 %.1127185.us.i to i64
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %i.brk
  store i8 %i.brf, ptr %i.brl, align 1, !tbaa !48
  br label %.thread.us.i.a

.thread.us.i.a:                                   ; preds = %bb.fd, %.thread.us.i
  %.pn194.i = phi i32 [ %5, %.thread.us.i ], [ 1, %bb.fd ]
  %spec.select167.us.i = add nsw i32 %.pn194.i, %.1127185.us.i ; 4 uses
  %i.brm = icmp ult i32 %spec.select167.us.i, %i.bpa
  %or.cond155.us.i = select i1 %i.brg, i1 %i.brm, i1 false
  br i1 %or.cond155.us.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %.thread.us.i.a
  %i.brn = zext nneg i32 %spec.select167.us.i to i64
  %i.bro = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %i.brn
  store i8 %i.bri, ptr %i.bro, align 1, !tbaa !48
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %.thread.us.i.a
  %i.brp = icmp slt i32 %spec.select167.us.i, %i.bpa
  %i.brq = zext i1 %i.brp to i32
  %spec.select157.us.i = add nsw i32 %spec.select167.us.i, %i.brq ; 2 uses
  %i.brr = add nuw nsw i32 %.0128184.us.i, 1
  %exitcond198.not.i = icmp eq i32 %.0128184.us.i, %i.bra
  br i1 %exitcond198.not.i, label %.loopexit.i289, label %.split.us.i290, !llvm.loop !123

.split.i:                                         ; preds = %bb.fc, %bb.fi
  %.1127185.i = phi i32 [ %spec.select157.i, %bb.fi ], [ %.0126188.i, %bb.fc ] ; 4 uses
  %.0128184.i = phi i32 [ %i.bry, %bb.fi ], [ 0, %bb.fc ] ; 2 uses
  %or.cond153.i = icmp ult i32 %.1127185.i, %i.bpa
  br i1 %or.cond153.i, label %bb.fg, label %.thread170.i

.thread170.i:                                     ; preds = %.split.i
  %6 = icmp slt i32 %.1127185.i, %i.bpa
  %7 = zext i1 %6 to i32
  br label %.thread170.i.a

bb.fg:                                            ; preds = %.split.i
  %i.brs = zext nneg i32 %.1127185.i to i64
  %i.brt = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %i.brs
  store i8 %i.brf, ptr %i.brt, align 1, !tbaa !48
  br label %.thread170.i.a

.thread170.i.a:                                   ; preds = %bb.fg, %.thread170.i
  %.pn.i287 = phi i32 [ %7, %.thread170.i ], [ 1, %bb.fg ]
  %spec.select172.i = add nsw i32 %.pn.i287, %.1127185.i ; 4 uses
  %or.cond156.i = icmp ult i32 %spec.select172.i, %i.bpa
  br i1 %or.cond156.i, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.thread170.i.a
  %i.bru = zext nneg i32 %spec.select172.i to i64
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %i.bru
  store i8 %i.bri, ptr %i.brv, align 1, !tbaa !48
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %.thread170.i.a
  %i.brw = icmp slt i32 %spec.select172.i, %i.bpa
  %i.brx = zext i1 %i.brw to i32
  %spec.select157.i = add nsw i32 %spec.select172.i, %i.brx ; 2 uses
  %i.bry = add nuw nsw i32 %.0128184.i, 1
  %exitcond.not.i288 = icmp eq i32 %.0128184.i, %i.bra
  br i1 %exitcond.not.i288, label %.loopexit.i289, label %.split.i, !llvm.loop !123

bb.fj:                                            ; preds = %bb.fb
  %i.brz = ptrtoint ptr %i.bqw to i64
  %i.bsa = sub i64 %i.bqu, %i.brz
  %i.bsb = trunc i64 %i.bsa to i32
  %.not144.i = icmp slt i32 %i.bra, %i.bsb
  br i1 %.not144.i, label %.preheader.i291.preheader, label %old_codec45.exit

.preheader.i291.preheader:                        ; preds = %bb.fj
  br i1 %.not302, label %.preheader.i291.us, label %.preheader.i291

.preheader.i291.us:                               ; preds = %.preheader.i291.preheader, %bb.fm
  %.4187.i.us = phi i32 [ %spec.select165.i.us, %bb.fm ], [ %.0126188.i, %.preheader.i291.preheader ] ; 4 uses
  %.1129186.i.us = phi i32 [ %i.bsq, %bb.fm ], [ 0, %.preheader.i291.preheader ] ; 2 uses
  %i.bsc = load ptr, ptr %1, align 8, !tbaa !57   ; 2 uses
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 1
  store ptr %i.bsd, ptr %1, align 8, !tbaa !57
  %i.bse = load i8, ptr %i.bsc, align 1, !tbaa !48 ; 2 uses
  %or.cond160.i.us = icmp ult i32 %.4187.i.us, %i.bpa
  br i1 %or.cond160.i.us, label %bb.fk, label %.thread178.i.us

bb.fk:                                            ; preds = %.preheader.i291.us
  %.pre208.i.us = and i8 %i.bse, 15
  %i.bsf = add i8 %.pre208.i.us, %i.f
  %i.bsg = zext nneg i32 %.4187.i.us to i64
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %i.bsg
  store i8 %i.bsf, ptr %i.bsh, align 1, !tbaa !48
  br label %.thread178.i.us

.thread178.i.us:                                  ; preds = %bb.fk, %.preheader.i291.us
  %i.bsi = icmp slt i32 %.4187.i.us, %i.bpa
  %i.bsj = zext i1 %i.bsi to i32
  %spec.select161.i.us = add nsw i32 %.4187.i.us, %i.bsj ; 4 uses
  %or.cond164.i292.us = icmp ult i32 %spec.select161.i.us, %i.bpa
  br i1 %or.cond164.i292.us, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %.thread178.i.us
  %i.bsk = lshr i8 %i.bse, 4
  %i.bsl = add i8 %i.bsk, %i.f
  %i.bsm = zext nneg i32 %spec.select161.i.us to i64
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %i.bsm
  store i8 %i.bsl, ptr %i.bsn, align 1, !tbaa !48
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %.thread178.i.us
  %i.bso = icmp slt i32 %spec.select161.i.us, %i.bpa
  %i.bsp = zext i1 %i.bso to i32
  %spec.select165.i.us = add nsw i32 %spec.select161.i.us, %i.bsp ; 2 uses
  %i.bsq = add nuw nsw i32 %.1129186.i.us, 1
  %exitcond199.not.i.us = icmp eq i32 %.1129186.i.us, %i.bra
  br i1 %exitcond199.not.i.us, label %.split.us, label %.preheader.i291.us, !llvm.loop !124

.preheader.i291:                                  ; preds = %.preheader.i291.preheader, %bb.fo
  %.4187.i = phi i32 [ %spec.select165.i, %bb.fo ], [ %.0126188.i, %.preheader.i291.preheader ] ; 4 uses
  %.1129186.i = phi i32 [ %i.bti, %bb.fo ], [ 0, %.preheader.i291.preheader ] ; 2 uses
  %i.bsr = load ptr, ptr %1, align 8, !tbaa !57   ; 2 uses
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsr, i64 1
  store ptr %i.bss, ptr %1, align 8, !tbaa !57
  %i.bst = load i8, ptr %i.bsr, align 1, !tbaa !48 ; 3 uses
  %i.bsu = and i8 %i.bst, 15                      ; 2 uses
  %i.bsv = icmp ne i8 %i.bsu, 0
  %i.bsw = icmp ult i32 %.4187.i, %i.bpa
  %or.cond159.i = select i1 %i.bsv, i1 %i.bsw, i1 false
  br i1 %or.cond159.i, label %.thread.i, label %.thread173.i

.thread.i:                                        ; preds = %.preheader.i291
  %i.bsx = add i8 %i.bsu, %i.f
  %i.bsy = zext nneg i32 %.4187.i to i64
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %i.bsy
  store i8 %i.bsx, ptr %i.bsz, align 1, !tbaa !48
  br label %.thread173.i.a

.thread173.i:                                     ; preds = %.preheader.i291
  %8 = icmp slt i32 %.4187.i, %i.bpa
  %9 = zext i1 %8 to i32
  br label %.thread173.i.a

.thread173.i.a:                                   ; preds = %.thread173.i, %.thread.i
  %.sink.i293 = phi i32 [ 1, %.thread.i ], [ %9, %.thread173.i ]
  %spec.select161221.i = add nsw i32 %.sink.i293, %.4187.i ; 4 uses
  %i.bta = icmp ugt i8 %i.bst, 15
  %i.btb = icmp ult i32 %spec.select161221.i, %i.bpa
  %or.cond163.i = select i1 %i.bta, i1 %i.btb, i1 false
  br i1 %or.cond163.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.thread173.i.a
  %i.btc = lshr i8 %i.bst, 4
  %i.btd = add i8 %i.btc, %i.f
  %i.bte = zext nneg i32 %spec.select161221.i to i64
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bqt, i64 %i.bte
  store i8 %i.btd, ptr %i.btf, align 1, !tbaa !48
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.thread173.i.a
  %i.btg = icmp slt i32 %spec.select161221.i, %i.bpa
  %i.bth = zext i1 %i.btg to i32
  %spec.select165.i = add nsw i32 %spec.select161221.i, %i.bth ; 2 uses
  %i.bti = add nuw nsw i32 %.1129186.i, 1
  %exitcond199.not.i = icmp eq i32 %.1129186.i, %i.bra
  br i1 %exitcond199.not.i, label %.split.us, label %.preheader.i291, !llvm.loop !124

.split.us:                                        ; preds = %bb.fo, %bb.fm
  %.us-phi = phi i32 [ %spec.select165.i.us, %bb.fm ], [ %spec.select165.i, %bb.fo ]
  %reass.sub.i = sub i32 %.0189.i, %i.bra
  br label %.loopexit.i289

.loopexit.i289:                                   ; preds = %bb.ff, %bb.fi, %.split.us
  %.7.i = phi i32 [ %.us-phi, %.split.us ], [ %spec.select157.i, %bb.fi ], [ %spec.select157.us.i, %bb.ff ]
  %.1.in.i = phi i32 [ %reass.sub.i, %.split.us ], [ %.0189.i, %bb.fi ], [ %.0189.i, %bb.ff ]
  %.1.i = add i32 %.1.in.i, -2                    ; 2 uses
  %i.btj = load ptr, ptr %i.r, align 8, !tbaa !55 ; 2 uses
  %i.btk = load ptr, ptr %1, align 8, !tbaa !54   ; 3 uses
  %i.btl = ptrtoint ptr %i.btj to i64             ; 2 uses
  %i.btm = ptrtoint ptr %i.btk to i64
  %i.btn = sub i64 %i.btl, %i.btm
  %i.bto = trunc i64 %i.btn to i32                ; 2 uses
  %i.btp = icmp sgt i32 %i.bto, 1
  %i.btq = icmp ne i32 %.1.i, 0
  %i.btr = select i1 %i.btp, i1 %i.btq, i1 false
  br i1 %i.btr, label %bb.fb, label %._crit_edge.i, !llvm.loop !125

._crit_edge.i:                                    ; preds = %.loopexit.i289, %bb.fa
  %.pre-phi206.i = phi i32 [ %i.bqn, %bb.fa ], [ %i.bto, %.loopexit.i289 ]
  %i.bts = phi ptr [ %i.bqi, %bb.fa ], [ %i.btk, %.loopexit.i289 ]
  %i.btt = phi ptr [ %i.bqg, %bb.fa ], [ %i.btj, %.loopexit.i289 ]
  %i.btu = add nsw i32 %.1133191.i, -1
  %indvars.iv.next.i284 = add nuw nsw i64 %indvars.iv.i283, 1 ; 2 uses
  %i.btv = icmp sgt i32 %.pre-phi206.i, 1
  %i.btw = icmp sgt i32 %.1133191.i, 1
  %or.cond.i285 = select i1 %i.btv, i1 %i.btw, i1 false
  %i.btx = icmp samesign ult i64 %indvars.iv.next.i284, %i.bqf
  %i.bty = select i1 %or.cond.i285, i1 %i.btx, i1 false
  br i1 %i.bty, label %bb.fa, label %old_codec45.exit, !llvm.loop !126

bb.fp:                                            ; preds = %bb.ad
  %i.btz = sext i16 %i.gb to i32
  %i.bua = sext i16 %i.fz to i32
  %i.bub = tail call fastcc i32 @old_codec37(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.btz, i32 noundef %i.bua, i32 noundef %i.n, i32 noundef %i.q)
  br label %old_codec45.exit

bb.fq:                                            ; preds = %bb.ad
  %i.buc = sext i16 %i.gb to i32
  %i.bud = sext i16 %i.fz to i32
  tail call fastcc void @old_codec45(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.buc, i32 noundef %i.bud, i32 noundef 0)
  br label %old_codec45.exit

bb.fr:                                            ; preds = %bb.ad
  %i.bue = sext i16 %i.gb to i32
  %i.buf = sext i16 %i.fz to i32
  %i.bug = tail call fastcc i32 @old_codec47(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bue, i32 noundef %i.buf, i32 noundef %i.n, i32 noundef %i.q)
  br label %old_codec45.exit

bb.fs:                                            ; preds = %bb.ad
  %i.buh = sext i16 %i.gb to i32
  %i.bui = sext i16 %i.fz to i32
  %i.buj = tail call fastcc i32 @old_codec48(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.buh, i32 noundef %i.bui, i32 noundef %i.n, i32 noundef %i.q)
  br label %old_codec45.exit

bb.ft:                                            ; preds = %bb.ad
  %i.buk = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.buk, ptr noundef nonnull @.str.13, i32 noundef %i.d) #14
  %i.bul = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !53
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bum, i64 276 ; 2 uses
  %i.buo = load i32, ptr %i.bun, align 4, !tbaa !69
  %i.bup = or i32 %i.buo, 1
  store i32 %i.bup, ptr %i.bun, align 4, !tbaa !69
  br label %old_codec45.exit

old_codec45.exit:                                 ; preds = %bb.ey, %._crit_edge.i, %bb.fj, %.split152.us.i, %bb.dw, %bb.dt, %bb.dq, %bb.do, %scalar.ph, %bb.ak, %.split.us.i, %.split149.us.i, %bb.f, %bb.e, %bb.t, %bb.r, %bb.o, %bb.n, %bb.i, %.critedge.i281, %bb.eu, %bb.et, %bb.es, %bb.dl, %bb.dk, %.critedge.i, %bb.ag, %bb.af, %bb.ae, %bb.d, %bb.c, %bb.fq, %bb.ft, %bb.x, %bb.w, %bb.fs, %bb.fr, %bb.fp, %bb.er, %bb.eq, %bb.ep, %bb.au, %bb.g
  %.3 = phi i32 [ 0, %bb.fq ], [ 0, %bb.g ], [ -1094995529, %bb.x ], [ -1094995529, %bb.i ], [ 0, %bb.au ], [ -1094995529, %bb.ak ], [ 0, %bb.ep ], [ 0, %bb.eq ], [ %i.bok, %bb.er ], [ 0, %.split152.us.i ], [ %i.bub, %bb.fp ], [ %i.bug, %bb.fr ], [ %i.buj, %bb.fs ], [ 0, %._crit_edge.i ], [ -1094995529, %bb.w ], [ 0, %bb.ft ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %.critedge.i ], [ 0, %bb.ae ], [ -1094995529, %.split149.us.i ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %.split.us.i ], [ -1094995529, %bb.dk ], [ -1094995529, %bb.o ], [ -1094995529, %bb.dl ], [ -1094995529, %scalar.ph ], [ -1094995529, %bb.n ], [ -1094995529, %bb.dq ], [ -1094995529, %bb.dw ], [ 0, %.critedge.i281 ], [ 0, %bb.es ], [ -1094995529, %bb.fj ], [ 0, %bb.eu ], [ 0, %bb.et ], [ 0, %bb.f ], [ -12, %bb.t ], [ %i.ei, %bb.r ], [ -1094995529, %bb.do ], [ -1094995529, %bb.dt ], [ -1094995529, %bb.ey ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @old_codec45(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 -32768, 32768) %2, i32 noundef range(i32 -32768, 32768) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp slt i32 %i.g, 6
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i91 = tail call i64 @llvm.smin.i64(i64 %i.f, i64 2)
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %..i91 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !57
  %i.k = load i16, ptr %i.i, align 1, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !57
  %i.m = load i8, ptr %i.j, align 1, !tbaa !48
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.d, %i.n
  %..i = tail call i64 @llvm.smin.i64(i64 %i.o, i64 1)
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %..i ; 4 uses
  store ptr %i.p, ptr %1, align 8, !tbaa !54
  %.not = icmp eq i8 %i.m, 1
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i16 %i.k, 0
  br i1 %i.q, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.d, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp slt i32 %i.t, 768
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 99270
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(768) %i.v, ptr noundef nonnull align 1 dereferenceable(768) %i.p, i64 768, i1 false)
  %i.w = load ptr, ptr %1, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 768 ; 4 uses
  store ptr %i.x, ptr %1, align 8, !tbaa !54
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 100038
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.af = phi ptr [ %i.x, %.lr.ph ], [ %i.av, %bb.f ] ; 3 uses
  %.08495 = phi i32 [ 0, %.lr.ph ], [ %i.at, %bb.f ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  store ptr %i.ag, ptr %1, align 8, !tbaa !57
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !48  ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store ptr %i.aj, ptr %1, align 8, !tbaa !57
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !48
  %i.al = add nuw nsw i32 %.08495, %i.ai
  %i.am = icmp samesign ugt i32 %i.al, 32768
  %i.an = trunc i32 %.08495 to i8
  %i.ao = sub i8 0, %i.an
  %.087 = select i1 %i.am, i8 %i.ao, i8 %i.ah     ; 2 uses
  %i.ap = zext nneg i32 %.08495 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ap
  %i.ar = zext i8 %.087 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 %i.ak, i64 %i.ar, i1 false)
  %i.as = zext i8 %.087 to i32
  %i.at = add nuw nsw i32 %.08495, %i.as          ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !54    ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp sgt i32 %i.az, 1
  %i.bb = icmp samesign ult i32 %i.at, 32768
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.f, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.c
  %i.bd = phi ptr [ %i.p, %bb.c ], [ %i.x, %bb.e ], [ %i.av, %bb.f ] ; 2 uses
  %i.be = phi ptr [ %i.b, %bb.c ], [ %i.y, %bb.e ], [ %i.au, %bb.f ] ; 2 uses
  %.not89 = icmp eq i32 %4, 0
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = icmp sgt i32 %i.bi, 3
  %or.cond = select i1 %.not89, i1 %i.bj, i1 false
  br i1 %or.cond, label %.lr.ph102, label %.thread

end_hunk_0
