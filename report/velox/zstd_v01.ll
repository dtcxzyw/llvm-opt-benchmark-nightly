Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v01?download=true
inline.NumInlined: 186
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ZSTD_decompressBlock:bb.a
  %i.boh = add nuw i64 %i.boe, %i.bog
  %i.boi = zext i8 %.sroa.4.0.copyload.i81.i.i to i64
  %i.boj = icmp eq i8 %.sroa.4.0.copyload.i81.i.i, 127
  br i1 %i.boj, label %bb.ic, label %ZSTD_decodeSequence.exit.i

bb.ic:                                            ; preds = %bb.ib
  %i.bok = icmp ult ptr %.2.i96.i, %i.avm
  br i1 %i.bok, label %bb.id, label %.thread89.i.i

bb.id:                                            ; preds = %bb.ic
  %i.bol = getelementptr inbounds nuw i8, ptr %.2.i96.i, i64 1 ; 4 uses
  %i.bom = load i8, ptr %.2.i96.i, align 1, !tbaa !13 ; 2 uses
  %i.bon = zext i8 %i.bom to i64
  %.not67.i.i = icmp eq i8 %i.bom, -1
  br i1 %.not67.i.i, label %bb.ie, label %.thread89.i.i

.thread89.i.i:                                    ; preds = %bb.id, %bb.ic
  %i.boo = phi i64 [ %i.bon, %bb.id ], [ 0, %bb.ic ]
  %.392.i.i = phi ptr [ %i.bol, %bb.id ], [ %.2.i96.i, %bb.ic ]
  %narrow69.i.i = add nuw nsw i64 %i.boo, 127
  br label %ZSTD_decodeSequence.exit.i

bb.ie:                                            ; preds = %bb.id
  %.not68.i.i = icmp ugt ptr %i.bol, %i.bla
  br i1 %.not68.i.i, label %ZSTD_decodeSequence.exit.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %.3.val.i.i = load i16, ptr %i.bol, align 1
  %i.bop = getelementptr i8, ptr %.2.i96.i, i64 3
  %.3.val70.i.i = load i8, ptr %i.bop, align 1, !tbaa !13
  %i.boq = zext i16 %.3.val.i.i to i64
  %i.bor = zext i8 %.3.val70.i.i to i64
  %i.bos = shl nuw nsw i64 %i.bor, 16
  %i.bot = or disjoint i64 %i.bos, %i.boq
  %i.bou = getelementptr inbounds nuw i8, ptr %.2.i96.i, i64 4
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.if, %bb.ie, %.thread89.i.i, %bb.ib
  %.153.i.i = phi i64 [ %i.boi, %bb.ib ], [ %narrow69.i.i, %.thread89.i.i ], [ %i.bot, %bb.if ], [ 127, %bb.ie ] ; 3 uses
  %.5.i.i = phi ptr [ %.2.i96.i, %bb.ib ], [ %.392.i.i, %.thread89.i.i ], [ %i.bou, %bb.if ], [ %i.bol, %bb.ie ]
  %i.bov = and i32 %spec.store.select.i.i, 63     ; 2 uses
  %i.bow = zext nneg i32 %i.bov to i64
  %i.box = shl nuw i64 1, %i.bow
  %i.boy = and i32 %i.bno, 63
  %i.boz = zext nneg i32 %i.boy to i64
  %i.bpa = shl i64 %.sroa.0.6.i, %i.boz
  %i.bpb = lshr i64 %i.bpa, 1
  %i.bpc = xor i32 %i.bov, 63
  %i.bpd = zext nneg i32 %i.bpc to i64
  %i.bpe = lshr i64 %i.bpb, %i.bpd
  %i.bpf = add nuw i64 %i.bpe, %i.box
  %.054.i.i = select i1 %i.bnt, i64 %.sroa.speculated.i, i64 %i.bpf ; 7 uses
  %i.bpg = add nuw nsw i64 %.153.i.i, 4           ; 3 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %.057200.i, i64 %.156.i.i ; 10 uses
  %i.bpi = getelementptr i8, ptr %i.bph, i64 %i.bpg ; 9 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %.0131189.i, i64 %.156.i.i ; 3 uses
  %i.bpk = add nuw nsw i64 %i.bpg, %.156.i.i      ; 2 uses
  %i.bpl = ptrtoint ptr %.057200.i to i64         ; 5 uses
  %i.bpm = sub i64 %i.blb, %i.bpl
  %i.bpn = icmp ugt i64 %i.bpk, %i.bpm
  br i1 %i.bpn, label %ZSTD_decompressSequences.exit, label %bb.ig

bb.ig:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.bpo = ptrtoint ptr %.0131189.i to i64        ; 2 uses
  %i.bpp = sub i64 %i.blc, %i.bpo
  %i.bpq = icmp ugt i64 %.156.i.i, %i.bpp
  br i1 %i.bpq, label %ZSTD_decompressSequences.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bpr = ptrtoint ptr %i.bph to i64             ; 2 uses
  %i.bps = sub i64 %i.bpr, %i.bld
  %i.bpt = and i64 %i.bps, 4294967295
  %i.bpu = icmp ugt i64 %.054.i.i, %i.bpt
  br i1 %i.bpu, label %ZSTD_decompressSequences.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bpv = icmp ugt ptr %i.bpi, %i.s
  br i1 %i.bpv, label %ZSTD_decompressSequences.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bpw = icmp ugt ptr %i.bpj, %i.auf
  br i1 %i.bpw, label %ZSTD_decompressSequences.exit, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bpx = sub i64 %i.bpo, %i.bpl
  %i.bpy = icmp ugt i64 %i.bpg, %i.bpx
  br i1 %i.bpy, label %ZSTD_decompressSequences.exit, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.057200.i, ptr align 1 %.0131189.i, i64 %.156.i.i, i1 false)
  %i.bpz = sub i64 %i.blb, %i.bpr
  %i.bqa = icmp slt i64 %i.bpz, 8
  br i1 %i.bqa, label %ZSTD_decompressSequences.exit, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bqb = ptrtoint ptr %i.bpj to i64
  %i.bqc = ptrtoint ptr %i.bpi to i64             ; 2 uses
  %i.bqd = sub i64 %i.bqb, %i.bqc
  %i.bqe = icmp ult i64 %i.bqd, 12                ; 2 uses
  %i.bqf = sub nsw i64 0, %.054.i.i
  %i.bqg = getelementptr inbounds i8, ptr %i.bph, i64 %i.bqf ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bqh = icmp ult ptr %i.bqg, %i.auj
  %i.bqi = icmp ugt i64 %.054.i.i, %i.bld
  %or.cond.i.i18 = or i1 %i.bqi, %i.bqh
  br i1 %or.cond.i.i18, label %ZSTD_execSequence.exit.thread167.i, label %bb.in

ZSTD_execSequence.exit.thread167.i:               ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %ZSTD_decompressSequences.exit

bb.in:                                            ; preds = %bb.im
  br i1 %i.bqe, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 12
  %i.bqk = icmp ugt ptr %i.bqj, %i.s
  %i.bql = sub i64 %i.blb, %i.bqc
  %spec.select.i.i19 = select i1 %i.bqk, i64 %i.bql, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.bpi, i64 %spec.select.i.i19, i1 false)
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %.183.i.i = phi i64 [ %spec.select.i.i19, %bb.io ], [ 12, %bb.in ]
  %i.bqm = icmp samesign ult i64 %.054.i.i, 8
  br i1 %i.bqm, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec64table, i64 %.054.i.i
  %i.bqo = load i32, ptr %i.bqn, align 4, !tbaa !14
  %i.bqp = load i8, ptr %i.bqg, align 1, !tbaa !13
  store i8 %i.bqp, ptr %i.bph, align 1, !tbaa !13
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqg, i64 1
  %i.bqr = load i8, ptr %i.bqq, align 1, !tbaa !13
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bph, i64 1
  store i8 %i.bqr, ptr %i.bqs, align 1, !tbaa !13
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqg, i64 2
  %i.bqu = load i8, ptr %i.bqt, align 1, !tbaa !13
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bph, i64 2
  store i8 %i.bqu, ptr %i.bqv, align 1, !tbaa !13
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqg, i64 3
  %i.bqx = load i8, ptr %i.bqw, align 1, !tbaa !13
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bph, i64 3
  store i8 %i.bqx, ptr %i.bqy, align 1, !tbaa !13
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec32table, i64 %.054.i.i
  %i.bra = load i32, ptr %i.bqz, align 4, !tbaa !14
  %i.brb = sext i32 %i.bra to i64
  %i.brc = getelementptr inbounds i8, ptr %i.bqg, i64 %i.brb ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bph, i64 4
  %.val.i98.i = load i32, ptr %i.brc, align 1
  store i32 %.val.i98.i, ptr %i.brd, align 1
  %i.bre = sext i32 %i.bqo to i64
  %i.brf = sub nsw i64 0, %i.bre
  %i.brg = getelementptr inbounds i8, ptr %i.brc, i64 %i.brf
  br label %bb.is

bb.ir:                                            ; preds = %bb.ip
  %.val99.i.i = load i64, ptr %i.bqg, align 1
  store i64 %.val99.i.i, ptr %i.bph, align 1
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.084.i.i = phi ptr [ %i.brg, %bb.iq ], [ %i.bqg, %bb.ir ]
  %i.brh = getelementptr inbounds nuw i8, ptr %i.bph, i64 8 ; 5 uses
  %i.bri = getelementptr inbounds nuw i8, ptr %.084.i.i, i64 8 ; 4 uses
  %i.brj = icmp ugt ptr %i.bpi, %i.ble
  br i1 %i.brj, label %bb.it, label %bb.iw

bb.it:                                            ; preds = %bb.is
  %i.brk = icmp ult ptr %i.brh, %i.blf
  br i1 %i.brk, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.brl = ptrtoint ptr %i.brh to i64
  %i.brm = sub i64 %i.blg, %i.brl                 ; 2 uses
  %i.brn = icmp sgt i64 %i.brm, 0
  br i1 %i.brn, label %.lr.ph.i.i.i, label %ZSTD_wildcopy.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.iu, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bro, %.lr.ph.i.i.i ], [ %i.brh, %bb.iu ] ; 2 uses
  %.0910.i.i.i = phi ptr [ %i.brp, %.lr.ph.i.i.i ], [ %i.bri, %bb.iu ] ; 2 uses
  %.09.val.i.i.i = load i64, ptr %.0910.i.i.i, align 1
  store i64 %.09.val.i.i.i, ptr %.011.i.i.i, align 1
  %i.bro = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 8
  %i.brq = icmp ult ptr %i.bro, %i.blf
  br i1 %i.brq, label %.lr.ph.i.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !49

ZSTD_wildcopy.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %bb.iu
  %i.brr = getelementptr inbounds i8, ptr %i.bri, i64 %i.brm
  br label %bb.iv

bb.iv:                                            ; preds = %ZSTD_wildcopy.exit.i.i, %bb.it
  %.087.i.i = phi ptr [ %i.blf, %ZSTD_wildcopy.exit.i.i ], [ %i.brh, %bb.it ] ; 7 uses
  %.185.i.i = phi ptr [ %i.brr, %ZSTD_wildcopy.exit.i.i ], [ %i.bri, %bb.it ] ; 7 uses
  %.185.i.i562 = ptrtoaddr ptr %.185.i.i to i64
  %i.brs = icmp ult ptr %.087.i.i, %i.bpi
  br i1 %i.brs, label %iter.check579, label %ZSTD_wildcopy.exit104.i.i

iter.check579:                                    ; preds = %bb.iv
  %i.brt = add nsw i64 %.153.i.i, 4
  %i.bru = add nsw i64 %i.brt, %.156.i.i
  %i.brv = add i64 %i.bru, %i.bpl
  %i.brw = add nsw i64 %.156.i.i, 8
  %i.brx = add i64 %i.brw, %i.bpl
  %umax563 = tail call i64 @llvm.umax.i64(i64 %i.bli, i64 %i.brx)
  %i.bry = sub i64 %i.brv, %umax563               ; 7 uses
  %min.iters.check564 = icmp ult i64 %i.bry, 8
  br i1 %min.iters.check564, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check579
  %i.brz = add nsw i64 %.156.i.i, 8
  %i.bsa = add i64 %i.brz, %i.bpl
  %umax561 = tail call i64 @llvm.umax.i64(i64 %i.bli, i64 %i.bsa)
  %i.bsb = sub i64 %.185.i.i562, %umax561
  %diff.check = icmp ugt i64 %i.bsb, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check565

vector.main.loop.iter.check565:                   ; preds = %vector.memcheck
  %min.iters.check566 = icmp ult i64 %i.bry, 32
  br i1 %min.iters.check566, label %vec.epilog.ph583, label %vector.ph567

vector.ph567:                                     ; preds = %vector.main.loop.iter.check565
  %i.bsc = and i64 %i.bry, 24
  %n.vec568 = and i64 %i.bry, -32                 ; 5 uses
  %i.bsd = getelementptr i8, ptr %.185.i.i, i64 %n.vec568
  %i.bse = getelementptr i8, ptr %.087.i.i, i64 %n.vec568
  br label %vector.body569

vector.body569:                                   ; preds = %vector.body569, %vector.ph567
  %index570 = phi i64 [ 0, %vector.ph567 ], [ %index.next574, %vector.body569 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.185.i.i, i64 %index570 ; 2 uses
  %next.gep571 = getelementptr i8, ptr %.087.i.i, i64 %index570 ; 2 uses
  %i.bsf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load572 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load573 = load <16 x i8>, ptr %i.bsf, align 1, !tbaa !13
  %i.bsg = getelementptr i8, ptr %next.gep571, i64 16
  store <16 x i8> %wide.load572, ptr %next.gep571, align 1, !tbaa !13
  store <16 x i8> %wide.load573, ptr %i.bsg, align 1, !tbaa !13
  %index.next574 = add nuw i64 %index570, 32      ; 2 uses
  %i.bsh = icmp eq i64 %index.next574, %n.vec568
  br i1 %i.bsh, label %middle.block575, label %vector.body569, !llvm.loop !50

middle.block575:                                  ; preds = %vector.body569
  %cmp.n576 = icmp eq i64 %i.bry, %n.vec568
  br i1 %cmp.n576, label %ZSTD_wildcopy.exit104.i.i, label %vec.epilog.iter.check581

vec.epilog.iter.check581:                         ; preds = %middle.block575
  %min.epilog.iters.check582 = icmp eq i64 %i.bsc, 0
  br i1 %min.epilog.iters.check582, label %.lr.ph.i.i.preheader, label %vec.epilog.ph583, !prof !59

vec.epilog.ph583:                                 ; preds = %vector.main.loop.iter.check565, %vec.epilog.iter.check581
  %vec.epilog.resume.val577 = phi i64 [ %n.vec568, %vec.epilog.iter.check581 ], [ 0, %vector.main.loop.iter.check565 ]
  %n.vec584 = and i64 %i.bry, -8                  ; 4 uses
  %i.bsi = getelementptr i8, ptr %.185.i.i, i64 %n.vec584
  %i.bsj = getelementptr i8, ptr %.087.i.i, i64 %n.vec584
  br label %vec.epilog.vector.body585

vec.epilog.vector.body585:                        ; preds = %vec.epilog.vector.body585, %vec.epilog.ph583
  %index586 = phi i64 [ %vec.epilog.resume.val577, %vec.epilog.ph583 ], [ %index.next590, %vec.epilog.vector.body585 ] ; 3 uses
  %next.gep587 = getelementptr i8, ptr %.185.i.i, i64 %index586
  %next.gep588 = getelementptr i8, ptr %.087.i.i, i64 %index586
  %wide.load589 = load <8 x i8>, ptr %next.gep587, align 1, !tbaa !13
  store <8 x i8> %wide.load589, ptr %next.gep588, align 1, !tbaa !13
  %index.next590 = add nuw i64 %index586, 8       ; 2 uses
  %i.bsk = icmp eq i64 %index.next590, %n.vec584
  br i1 %i.bsk, label %vec.epilog.middle.block591, label %vec.epilog.vector.body585, !llvm.loop !51

vec.epilog.middle.block591:                       ; preds = %vec.epilog.vector.body585
  %cmp.n592 = icmp eq i64 %i.bry, %n.vec584
  br i1 %cmp.n592, label %ZSTD_wildcopy.exit104.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check579, %vec.epilog.iter.check581, %vec.epilog.middle.block591
  %.2108.i.i.ph = phi ptr [ %.185.i.i, %iter.check579 ], [ %.185.i.i, %vector.memcheck ], [ %i.bsd, %vec.epilog.iter.check581 ], [ %i.bsi, %vec.epilog.middle.block591 ]
  %.188107.i.i.ph = phi ptr [ %.087.i.i, %iter.check579 ], [ %.087.i.i, %vector.memcheck ], [ %i.bse, %vec.epilog.iter.check581 ], [ %i.bsj, %vec.epilog.middle.block591 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.2108.i.i = phi ptr [ %i.bsl, %.lr.ph.i.i ], [ %.2108.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.188107.i.i = phi ptr [ %i.bsn, %.lr.ph.i.i ], [ %.188107.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %.2108.i.i, i64 1
  %i.bsm = load i8, ptr %.2108.i.i, align 1, !tbaa !13
  %i.bsn = getelementptr inbounds nuw i8, ptr %.188107.i.i, i64 1 ; 2 uses
  store i8 %i.bsm, ptr %.188107.i.i, align 1, !tbaa !13
  %i.bso = icmp ult ptr %i.bsn, %i.bpi
  br i1 %i.bso, label %.lr.ph.i.i, label %ZSTD_wildcopy.exit104.i.i, !llvm.loop !52

bb.iw:                                            ; preds = %bb.is
  %i.bsp = icmp samesign ugt i64 %.153.i.i, 4
  br i1 %i.bsp, label %.lr.ph.i100.i.i, label %ZSTD_wildcopy.exit104.i.i

.lr.ph.i100.i.i:                                  ; preds = %bb.iw, %.lr.ph.i100.i.i
  %.011.i101.i.i = phi ptr [ %i.bsq, %.lr.ph.i100.i.i ], [ %i.brh, %bb.iw ] ; 2 uses
  %.0910.i102.i.i = phi ptr [ %i.bsr, %.lr.ph.i100.i.i ], [ %i.bri, %bb.iw ] ; 2 uses
  %.09.val.i103.i.i = load i64, ptr %.0910.i102.i.i, align 1
  store i64 %.09.val.i103.i.i, ptr %.011.i101.i.i, align 1
  %i.bsq = getelementptr inbounds nuw i8, ptr %.011.i101.i.i, i64 8 ; 2 uses
  %i.bsr = getelementptr inbounds nuw i8, ptr %.0910.i102.i.i, i64 8
  %i.bss = icmp ult ptr %i.bsq, %i.bpi
  br i1 %i.bss, label %.lr.ph.i100.i.i, label %ZSTD_wildcopy.exit104.i.i, !llvm.loop !49

ZSTD_wildcopy.exit104.i.i:                        ; preds = %.lr.ph.i100.i.i, %.lr.ph.i.i, %middle.block575, %vec.epilog.middle.block591, %bb.iw, %bb.iv
  br i1 %i.bqe, label %bb.ix, label %ZSTD_execSequence.exit.i

bb.ix:                                            ; preds = %ZSTD_wildcopy.exit104.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bpi, ptr nonnull align 16 %i.c, i64 %.183.i.i, i1 false)
  br label %ZSTD_execSequence.exit.i

ZSTD_execSequence.exit.i:                         ; preds = %bb.ix, %ZSTD_wildcopy.exit104.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bst = getelementptr inbounds nuw i8, ptr %.057200.i, i64 %i.bpk
  %i.bsu = icmp ugt i32 %i.bof, 64
  br i1 %i.bsu, label %ZSTD_decompressSequences.exit, label %bb.hs

FSE_reloadDStream.exit.thread.i:                  ; preds = %FSE_reloadDStream.exit.i
  %i.bsv = icmp ne i32 %.sroa.19.8.i, 64
  %i.bsw = icmp ne ptr %.sroa.41113.8.i, %.7120.i.i
  %brmerge.i = select i1 %i.bsw, i1 true, i1 %i.bsv
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.iy

bb.iy:                                            ; preds = %FSE_reloadDStream.exit.thread.i
  %i.bsx = ptrtoint ptr %.0131189.i to i64
  %i.bsy = sub i64 %i.blc, %i.bsx                 ; 2 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %.057200.i, i64 %i.bsy ; 3 uses
  %.not.i = icmp ugt ptr %i.bsz, %i.s
  br i1 %.not.i, label %ZSTD_decompressSequences.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %.not71.i = icmp eq ptr %i.auf, %.0131189.i
  br i1 %.not71.i, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %.not72.i = icmp eq ptr %.057200.i, %.0131189.i
  br i1 %.not72.i, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.057200.i, ptr align 1 %.0131189.i, i64 %i.bsy, i1 false)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %bb.iz
  %.4.i = phi ptr [ %i.bsz, %bb.ja ], [ %i.bsz, %bb.jb ], [ %.057200.i, %bb.iz ]
  %i.bta = ptrtoint ptr %.4.i to i64
  %i.btb = ptrtoint ptr %1 to i64
  %i.btc = sub i64 %i.bta, %i.btb
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %ZSTD_decodeSequence.exit.i, %FSE_initDState.exit84.i, %FSE_initDState.exit92.i, %bb.a, %.sink.split.i.i, %bb.g, %bb.d, %bb.b, %bb.k, %bb.j, %ZSTD_decompressLiterals.exit.i, %bb.jc, %bb.iy, %FSE_reloadDStream.exit.thread.i, %ZSTD_execSequence.exit.thread167.i, %FSE_initDStream.exit.i, %bb.hg, %bb.gy, %bb.gw, %ZSTDv01_decodeSeqHeaders.exit.i, %ZSTDv01_decodeSeqHeaders.exit.thread.i, %ZSTDv01_decodeLiteralsBlock.exit
  %.0 = phi i64 [ -1, %ZSTD_decompressLiterals.exit.i ], [ %i.aub, %ZSTDv01_decodeLiteralsBlock.exit ], [ %.786.i.ph.i, %ZSTDv01_decodeSeqHeaders.exit.thread.i ], [ %i.btc, %bb.jc ], [ %i.bfp, %ZSTDv01_decodeSeqHeaders.exit.i ], [ -20, %FSE_reloadDStream.exit.thread.i ], [ -20, %bb.gw ], [ -20, %FSE_initDStream.exit.i ], [ -70, %bb.iy ], [ -20, %bb.hg ], [ -20, %ZSTD_execSequence.exit.thread167.i ], [ -20, %bb.gy ], [ -1, %.sink.split.i.i ], [ -70, %bb.g ], [ -72, %bb.d ], [ -1, %bb.b ], [ -70, %bb.k ], [ -20, %bb.j ], [ -20, %FSE_initDState.exit92.i ], [ -20, %FSE_initDState.exit84.i ], [ -72, %bb.a ], [ -20, %ZSTD_execSequence.exit.i ], [ -70, %bb.il ], [ -70, %bb.ik ], [ -20, %bb.ij ], [ -70, %bb.ii ], [ -20, %bb.ih ], [ -20, %bb.ig ], [ -70, %ZSTD_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ZSTDv01_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.ZSTDv01_Dctx_s, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 10264
  store ptr %0, ptr %i.a, align 8, !tbaa !34
  %i.b = call i64 @ZSTDv01_decompressDCtx(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTDv01_findFrameSizeInfoLegacy(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i64 %1, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -72, ptr %2, align 8, !tbaa !60
  br label %.thread51

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %.not = icmp eq i32 %i.b, 515190781
  br i1 %.not, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -10, ptr %2, align 8, !tbaa !60
  br label %.thread51

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = add i64 %1, -4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread89
  %.03474 = phi i64 [ %i.ac, %.thread89 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03573 = phi i64 [ %i.ab, %.thread89 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.03772 = phi ptr [ %i.aa, %.thread89 ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %i.e = load i8, ptr %.03772, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = lshr i32 %i.f, 6
  switch i32 %i.g, label %bb.e [
    i32 3, label %.loopexit
    i32 2, label %.thread
  ]

end_hunk_0
