inline.NumInlined: 186
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ZSTD_decompressBlock:bb.a
  %i.bnp = icmp eq i8 %.sroa.4.0.copyload.i74.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.bnp, i32 0, i32 %i.bno ; 2 uses
  %i.bnq = add i32 %i.bnk, %spec.store.select.i.i ; 2 uses
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %.sroa.72.0195.i ; 3 uses
  %.sroa.0.0.copyload.i79.i.i = load i16, ptr %i.bnr, align 2, !tbaa !18
  %.sroa.4.0..sroa_idx.i80.i.i = getelementptr inbounds nuw i8, ptr %i.bnr, i64 2
  %.sroa.4.0.copyload.i81.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i80.i.i, align 2, !tbaa !7 ; 2 uses
  %.sroa.5.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.bnr, i64 3
  %.sroa.5.0.copyload.i83.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i82.i.i, align 1, !tbaa !7
  %i.bns = zext i8 %.sroa.5.0.copyload.i83.i.i to i32 ; 2 uses
  %i.bnt = and i32 %i.bnq, 63
  %i.bnu = zext nneg i32 %i.bnt to i64
  %i.bnv = shl i64 %.sroa.0.6.i, %i.bnu
  %i.bnw = lshr i64 %i.bnv, 1
  %i.bnx = and i32 %i.bns, 63
  %i.bny = xor i32 %i.bnx, 63
  %i.bnz = zext nneg i32 %i.bny to i64
  %i.boa = lshr i64 %i.bnw, %i.bnz
  %i.bob = add i32 %i.bnq, %i.bns                 ; 2 uses
  %i.boc = zext i16 %.sroa.0.0.copyload.i79.i.i to i64
  %i.bod = add nuw i64 %i.boa, %i.boc
  %i.boe = zext i8 %.sroa.4.0.copyload.i81.i.i to i64
  %i.bof = icmp eq i8 %.sroa.4.0.copyload.i81.i.i, 127
  br i1 %i.bof, label %bb.ic, label %ZSTD_decodeSequence.exit.i

bb.ic:                                            ; preds = %bb.ib
  %i.bog = icmp ult ptr %.2.i96.i, %i.avi
  br i1 %i.bog, label %bb.id, label %.thread89.i.i

bb.id:                                            ; preds = %bb.ic
  %i.boh = getelementptr inbounds nuw i8, ptr %.2.i96.i, i64 1 ; 4 uses
  %i.boi = load i8, ptr %.2.i96.i, align 1, !tbaa !7 ; 2 uses
  %i.boj = zext i8 %i.boi to i64
  %.not67.i.i = icmp eq i8 %i.boi, -1
  br i1 %.not67.i.i, label %bb.ie, label %.thread89.i.i

.thread89.i.i:                                    ; preds = %bb.id, %bb.ic
  %i.bok = phi i64 [ %i.boj, %bb.id ], [ 0, %bb.ic ]
  %.392.i.i = phi ptr [ %i.boh, %bb.id ], [ %.2.i96.i, %bb.ic ]
  %narrow69.i.i = add nuw nsw i64 %i.bok, 127
  br label %ZSTD_decodeSequence.exit.i

bb.ie:                                            ; preds = %bb.id
  %.not68.i.i = icmp ugt ptr %i.boh, %i.bkw
  br i1 %.not68.i.i, label %ZSTD_decodeSequence.exit.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %.3.val.i.i = load i16, ptr %i.boh, align 1
  %i.bol = getelementptr i8, ptr %.2.i96.i, i64 3
  %.3.val70.i.i = load i8, ptr %i.bol, align 1, !tbaa !7
  %i.bom = zext i16 %.3.val.i.i to i64
  %i.bon = zext i8 %.3.val70.i.i to i64
  %i.boo = shl nuw nsw i64 %i.bon, 16
  %i.bop = or disjoint i64 %i.boo, %i.bom
  %i.boq = getelementptr inbounds nuw i8, ptr %.2.i96.i, i64 4
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.if, %bb.ie, %.thread89.i.i, %bb.ib
  %.5.i.i = phi ptr [ %.2.i96.i, %bb.ib ], [ %.392.i.i, %.thread89.i.i ], [ %i.boq, %bb.if ], [ %i.boh, %bb.ie ]
  %.154.i.i = phi i64 [ %i.boe, %bb.ib ], [ %narrow69.i.i, %.thread89.i.i ], [ %i.bop, %bb.if ], [ 127, %bb.ie ] ; 4 uses
  %i.bor = and i32 %spec.store.select.i.i, 63     ; 2 uses
  %i.bos = zext nneg i32 %i.bor to i64
  %i.bot = shl nuw i64 1, %i.bos
  %i.bou = and i32 %i.bnk, 63
  %i.bov = zext nneg i32 %i.bou to i64
  %i.bow = shl i64 %.sroa.0.6.i, %i.bov
  %i.box = lshr i64 %i.bow, 1
  %i.boy = xor i32 %i.bor, 63
  %i.boz = zext nneg i32 %i.boy to i64
  %i.bpa = lshr i64 %i.box, %i.boz
  %i.bpb = add nuw i64 %i.bpa, %i.bot
  %.052.i.i = select i1 %i.bnp, i64 %.sroa.speculated.i, i64 %i.bpb ; 7 uses
  %i.bpc = add nuw nsw i64 %.154.i.i, 4           ; 3 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %.060203.i, i64 %.1.i.i ; 10 uses
  %i.bpe = getelementptr i8, ptr %i.bpd, i64 %i.bpc ; 9 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %.0132198.i, i64 %.1.i.i ; 3 uses
  %i.bpg = add nuw nsw i64 %i.bpc, %.1.i.i        ; 2 uses
  %i.bph = ptrtoint ptr %.060203.i to i64         ; 12 uses
  %i.bpi = sub i64 %i.bkx, %i.bph
  %i.bpj = icmp ugt i64 %i.bpg, %i.bpi
  br i1 %i.bpj, label %ZSTD_decompressSequences.exit, label %bb.ig

bb.ig:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.bpk = ptrtoint ptr %.0132198.i to i64        ; 2 uses
  %i.bpl = sub i64 %i.bky, %i.bpk
  %i.bpm = icmp ugt i64 %.1.i.i, %i.bpl
  br i1 %i.bpm, label %ZSTD_decompressSequences.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bpn = ptrtoint ptr %i.bpd to i64             ; 2 uses
  %i.bpo = sub i64 %i.bpn, %i.bkz
  %i.bpp = and i64 %i.bpo, 4294967295
  %i.bpq = icmp ugt i64 %.052.i.i, %i.bpp
  br i1 %i.bpq, label %ZSTD_decompressSequences.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bpr = icmp ugt ptr %i.bpe, %i.s
  br i1 %i.bpr, label %ZSTD_decompressSequences.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bps = icmp ugt ptr %i.bpf, %i.aub
  br i1 %i.bps, label %ZSTD_decompressSequences.exit, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bpt = sub i64 %i.bpk, %i.bph
  %i.bpu = icmp ugt i64 %i.bpc, %i.bpt
  br i1 %i.bpu, label %ZSTD_decompressSequences.exit, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.060203.i, ptr align 1 %.0132198.i, i64 %.1.i.i, i1 false)
  %i.bpv = sub i64 %i.bkx, %i.bpn
  %i.bpw = icmp slt i64 %i.bpv, 8
  br i1 %i.bpw, label %ZSTD_decompressSequences.exit, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bpx = ptrtoint ptr %i.bpf to i64
  %i.bpy = ptrtoint ptr %i.bpe to i64             ; 2 uses
  %i.bpz = sub i64 %i.bpx, %i.bpy
  %i.bqa = icmp ult i64 %i.bpz, 12                ; 2 uses
  %i.bqb = sub nsw i64 0, %.052.i.i
  %i.bqc = getelementptr inbounds i8, ptr %i.bpd, i64 %i.bqb ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bqd = icmp ult ptr %i.bqc, %i.auf
  %i.bqe = icmp ugt i64 %.052.i.i, %i.bkz
  %or.cond.i.i18 = or i1 %i.bqe, %i.bqd
  br i1 %or.cond.i.i18, label %ZSTD_execSequence.exit.thread170.i, label %bb.in

ZSTD_execSequence.exit.thread170.i:               ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %ZSTD_decompressSequences.exit

bb.in:                                            ; preds = %bb.im
  br i1 %i.bqa, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 12
  %i.bqg = icmp ugt ptr %i.bqf, %i.s
  %i.bqh = sub i64 %i.bkx, %i.bpy
  %spec.select.i.i19 = select i1 %i.bqg, i64 %i.bqh, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %i.bpe, i64 %spec.select.i.i19, i1 false)
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %.183.i.i = phi i64 [ %spec.select.i.i19, %bb.io ], [ 12, %bb.in ]
  %i.bqi = icmp samesign ult i64 %.052.i.i, 8
  br i1 %i.bqi, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec64table, i64 %.052.i.i
  %i.bqk = load i32, ptr %i.bqj, align 4, !tbaa !3
  %i.bql = load i8, ptr %i.bqc, align 1, !tbaa !7
  store i8 %i.bql, ptr %i.bpd, align 1, !tbaa !7
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqc, i64 1
  %i.bqn = load i8, ptr %i.bqm, align 1, !tbaa !7
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bpd, i64 1
  store i8 %i.bqn, ptr %i.bqo, align 1, !tbaa !7
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqc, i64 2
  %i.bqq = load i8, ptr %i.bqp, align 1, !tbaa !7
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bpd, i64 2
  store i8 %i.bqq, ptr %i.bqr, align 1, !tbaa !7
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqc, i64 3
  %i.bqt = load i8, ptr %i.bqs, align 1, !tbaa !7
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bpd, i64 3
  store i8 %i.bqt, ptr %i.bqu, align 1, !tbaa !7
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec32table, i64 %.052.i.i
  %i.bqw = load i32, ptr %i.bqv, align 4, !tbaa !3
  %i.bqx = sext i32 %i.bqw to i64
  %i.bqy = getelementptr inbounds i8, ptr %i.bqc, i64 %i.bqx ; 2 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bpd, i64 4
  %.val.i99.i = load i32, ptr %i.bqy, align 1
  store i32 %.val.i99.i, ptr %i.bqz, align 1
  %i.bra = sext i32 %i.bqk to i64
  %i.brb = sub nsw i64 0, %i.bra
  %i.brc = getelementptr inbounds i8, ptr %i.bqy, i64 %i.brb
  br label %bb.is

bb.ir:                                            ; preds = %bb.ip
  %.val99.i.i = load i64, ptr %i.bqc, align 1
  store i64 %.val99.i.i, ptr %i.bpd, align 1
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.084.i.i = phi ptr [ %i.brc, %bb.iq ], [ %i.bqc, %bb.ir ] ; 2 uses
  %.084.i.i602 = ptrtoaddr ptr %.084.i.i to i64   ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bpd, i64 8 ; 11 uses
  %i.bre = getelementptr inbounds nuw i8, ptr %.084.i.i, i64 8 ; 10 uses
  %i.brf = icmp ugt ptr %i.bpe, %i.bla
  br i1 %i.brf, label %bb.it, label %bb.iw

bb.it:                                            ; preds = %bb.is
  %i.brg = icmp ult ptr %i.brd, %i.blb
  br i1 %i.brg, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.brh = ptrtoint ptr %i.brd to i64
  %i.bri = sub i64 %i.blc, %i.brh                 ; 2 uses
  %i.brj = icmp sgt i64 %i.bri, 0
  br i1 %i.brj, label %.lr.ph.i.i.i.preheader, label %ZSTD_wildcopy.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.iu
  %i.brk = add nsw i64 %.1.i.i, 16
  %i.brl = add i64 %i.brk, %i.bph
  %umax604 = tail call i64 @llvm.umax.i64(i64 %i.blc, i64 %i.brl)
  %i.brm = add i64 %umax604, -9
  %7 = add i64 %.1.i.i, %i.bph
  %8 = sub i64 %i.brm, %7                         ; 2 uses
  %i.brn = lshr i64 %8, 3
  %i.bro = add nuw nsw i64 %i.brn, 1              ; 2 uses
  %min.iters.check605 = icmp ult i64 %8, 56
  br i1 %min.iters.check605, label %.lr.ph.i.i.i.preheader638, label %vector.memcheck601

vector.memcheck601:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.brp = add i64 %.1.i.i, %i.bph
  %i.brq = sub i64 %.084.i.i602, %i.brp
  %diff.check603 = icmp ugt i64 %i.brq, -32
  br i1 %diff.check603, label %.lr.ph.i.i.i.preheader638, label %vector.ph606

vector.ph606:                                     ; preds = %vector.memcheck601
  %n.vec608 = and i64 %i.bro, 4611686018427387900 ; 3 uses
  %i.brr = shl i64 %n.vec608, 3                   ; 2 uses
  %i.brs = getelementptr i8, ptr %i.bre, i64 %i.brr
  %i.brt = getelementptr i8, ptr %i.brd, i64 %i.brr
  br label %vector.body609

vector.body609:                                   ; preds = %vector.body609, %vector.ph606
  %index610 = phi i64 [ 0, %vector.ph606 ], [ %index.next615, %vector.body609 ] ; 2 uses
  %i.bru = shl i64 %index610, 3                   ; 2 uses
  %next.gep611.a = getelementptr i8, ptr %i.bre, i64 %i.bru ; 2 uses
  %next.gep612 = getelementptr i8, ptr %i.brd, i64 %i.bru ; 2 uses
  %i.brv = getelementptr i8, ptr %next.gep611.a, i64 16
  %wide.load613.a = load <2 x i64>, ptr %next.gep611.a, align 1
  %wide.load614 = load <2 x i64>, ptr %i.brv, align 1
  %i.brw = getelementptr i8, ptr %next.gep612, i64 16
  store <2 x i64> %wide.load613.a, ptr %next.gep612, align 1
  store <2 x i64> %wide.load614, ptr %i.brw, align 1
  %index.next615 = add nuw i64 %index610, 4       ; 2 uses
  %i.brx = icmp eq i64 %index.next615, %n.vec608
  br i1 %i.brx, label %middle.block616, label %vector.body609, !llvm.loop !52

middle.block616:                                  ; preds = %vector.body609
  %cmp.n617 = icmp eq i64 %i.bro, %n.vec608
  br i1 %cmp.n617, label %ZSTD_wildcopy.exit.i.i, label %.lr.ph.i.i.i.preheader638

.lr.ph.i.i.i.preheader638:                        ; preds = %vector.memcheck601, %.lr.ph.i.i.i.preheader, %middle.block616
  %.011.i.i.i.ph = phi ptr [ %i.bre, %vector.memcheck601 ], [ %i.bre, %.lr.ph.i.i.i.preheader ], [ %i.brs, %middle.block616 ]
  %.0910.i.i.i.ph = phi ptr [ %i.brd, %vector.memcheck601 ], [ %i.brd, %.lr.ph.i.i.i.preheader ], [ %i.brt, %middle.block616 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader638, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.brz, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader638 ] ; 2 uses
  %.0910.i.i.i = phi ptr [ %i.bry, %.lr.ph.i.i.i ], [ %.0910.i.i.i.ph, %.lr.ph.i.i.i.preheader638 ] ; 2 uses
  %.0.val.i.i.i = load i64, ptr %.011.i.i.i, align 1
  store i64 %.0.val.i.i.i, ptr %.0910.i.i.i, align 1
  %i.bry = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 8 ; 2 uses
  %i.brz = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.bsa = icmp ult ptr %i.bry, %i.blb
  br i1 %i.bsa, label %.lr.ph.i.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !53

ZSTD_wildcopy.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %middle.block616, %bb.iu
  %i.bsb = getelementptr inbounds i8, ptr %i.bre, i64 %i.bri
  br label %bb.iv

bb.iv:                                            ; preds = %ZSTD_wildcopy.exit.i.i, %bb.it
  %.086.i.i = phi ptr [ %i.blb, %ZSTD_wildcopy.exit.i.i ], [ %i.brd, %bb.it ] ; 7 uses
  %.185.i.i = phi ptr [ %i.bsb, %ZSTD_wildcopy.exit.i.i ], [ %i.bre, %bb.it ] ; 7 uses
  %.185.i.i566 = ptrtoaddr ptr %.185.i.i to i64
  %i.bsc = icmp ult ptr %.086.i.i, %i.bpe
  br i1 %i.bsc, label %iter.check584, label %ZSTD_wildcopy.exit104.i.i

iter.check584:                                    ; preds = %bb.iv
  %i.bsd = add nsw i64 %.1.i.i, 4
  %i.bse = add nsw i64 %i.bsd, %.154.i.i
  %i.bsf = add i64 %i.bse, %i.bph
  %i.bsg = add nsw i64 %.1.i.i, 8
  %i.bsh = add i64 %i.bsg, %i.bph
  %umax567 = tail call i64 @llvm.umax.i64(i64 %i.blc, i64 %i.bsh)
  %i.bsi = sub i64 %i.bsf, %umax567               ; 7 uses
  %min.iters.check568 = icmp ult i64 %i.bsi, 4
  br i1 %min.iters.check568, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check584
  %i.bsj = add nsw i64 %.1.i.i, 8
  %i.bsk = add i64 %i.bsj, %i.bph
  %umax565 = tail call i64 @llvm.umax.i64(i64 %i.ble, i64 %i.bsk)
  %i.bsl = sub i64 %.185.i.i566, %umax565
  %diff.check = icmp ugt i64 %i.bsl, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check569

vector.main.loop.iter.check569:                   ; preds = %vector.memcheck
  %min.iters.check570 = icmp ult i64 %i.bsi, 32
  br i1 %min.iters.check570, label %vec.epilog.ph588, label %vector.ph571

vector.ph571:                                     ; preds = %vector.main.loop.iter.check569
  %n.mod.vf572 = and i64 %i.bsi, 28
  %n.vec573 = and i64 %i.bsi, -32                 ; 5 uses
  %i.bsm = getelementptr i8, ptr %.185.i.i, i64 %n.vec573
  %i.bsn = getelementptr i8, ptr %.086.i.i, i64 %n.vec573
  br label %vector.body574

vector.body574:                                   ; preds = %vector.body574, %vector.ph571
  %index575 = phi i64 [ 0, %vector.ph571 ], [ %index.next579, %vector.body574 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.185.i.i, i64 %index575 ; 2 uses
  %next.gep576 = getelementptr i8, ptr %.086.i.i, i64 %index575 ; 2 uses
  %i.bso = getelementptr i8, ptr %next.gep, i64 16
  %wide.load577 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !7
  %wide.load578 = load <16 x i8>, ptr %i.bso, align 1, !tbaa !7
  %i.bsp = getelementptr i8, ptr %next.gep576, i64 16
  store <16 x i8> %wide.load577, ptr %next.gep576, align 1, !tbaa !7
  store <16 x i8> %wide.load578, ptr %i.bsp, align 1, !tbaa !7
  %index.next579 = add nuw i64 %index575, 32      ; 2 uses
  %i.bsq = icmp eq i64 %index.next579, %n.vec573
  br i1 %i.bsq, label %middle.block580, label %vector.body574, !llvm.loop !54

middle.block580:                                  ; preds = %vector.body574
  %cmp.n581 = icmp eq i64 %i.bsi, %n.vec573
  br i1 %cmp.n581, label %ZSTD_wildcopy.exit104.i.i, label %vec.epilog.iter.check586

vec.epilog.iter.check586:                         ; preds = %middle.block580
  %min.epilog.iters.check587 = icmp eq i64 %n.mod.vf572, 0
  br i1 %min.epilog.iters.check587, label %.lr.ph.i.i.preheader, label %vec.epilog.ph588, !prof !55

vec.epilog.ph588:                                 ; preds = %vector.main.loop.iter.check569, %vec.epilog.iter.check586
  %vec.epilog.resume.val582 = phi i64 [ %n.vec573, %vec.epilog.iter.check586 ], [ 0, %vector.main.loop.iter.check569 ]
  %n.vec590 = and i64 %i.bsi, -4                  ; 4 uses
  %i.bsr = getelementptr i8, ptr %.185.i.i, i64 %n.vec590
  %i.bss = getelementptr i8, ptr %.086.i.i, i64 %n.vec590
  br label %vec.epilog.vector.body591

vec.epilog.vector.body591:                        ; preds = %vec.epilog.vector.body591, %vec.epilog.ph588
  %index592 = phi i64 [ %vec.epilog.resume.val582, %vec.epilog.ph588 ], [ %index.next596, %vec.epilog.vector.body591 ] ; 3 uses
  %next.gep593 = getelementptr i8, ptr %.185.i.i, i64 %index592
  %next.gep594 = getelementptr i8, ptr %.086.i.i, i64 %index592
  %wide.load595 = load <4 x i8>, ptr %next.gep593, align 1, !tbaa !7
  store <4 x i8> %wide.load595, ptr %next.gep594, align 1, !tbaa !7
  %index.next596 = add nuw i64 %index592, 4       ; 2 uses
  %i.bst = icmp eq i64 %index.next596, %n.vec590
  br i1 %i.bst, label %vec.epilog.middle.block597, label %vec.epilog.vector.body591, !llvm.loop !56

vec.epilog.middle.block597:                       ; preds = %vec.epilog.vector.body591
  %cmp.n598 = icmp eq i64 %i.bsi, %n.vec590
  br i1 %cmp.n598, label %ZSTD_wildcopy.exit104.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check584, %vec.epilog.iter.check586, %vec.epilog.middle.block597
  %.2108.i.i.ph = phi ptr [ %.185.i.i, %iter.check584 ], [ %.185.i.i, %vector.memcheck ], [ %i.bsm, %vec.epilog.iter.check586 ], [ %i.bsr, %vec.epilog.middle.block597 ]
  %.187107.i.i.ph = phi ptr [ %.086.i.i, %iter.check584 ], [ %.086.i.i, %vector.memcheck ], [ %i.bsn, %vec.epilog.iter.check586 ], [ %i.bss, %vec.epilog.middle.block597 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.2108.i.i = phi ptr [ %i.bsu, %.lr.ph.i.i ], [ %.2108.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.187107.i.i = phi ptr [ %i.bsw, %.lr.ph.i.i ], [ %.187107.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %.2108.i.i, i64 1
  %i.bsv = load i8, ptr %.2108.i.i, align 1, !tbaa !7
  %i.bsw = getelementptr inbounds nuw i8, ptr %.187107.i.i, i64 1 ; 2 uses
  store i8 %i.bsv, ptr %.187107.i.i, align 1, !tbaa !7
  %i.bsx = icmp ult ptr %i.bsw, %i.bpe
  br i1 %i.bsx, label %.lr.ph.i.i, label %ZSTD_wildcopy.exit104.i.i, !llvm.loop !57

bb.iw:                                            ; preds = %bb.is
  %i.bsy = icmp samesign ugt i64 %.154.i.i, 4
  br i1 %i.bsy, label %.lr.ph.i100.i.i.preheader, label %ZSTD_wildcopy.exit104.i.i

.lr.ph.i100.i.i.preheader:                        ; preds = %bb.iw
  %i.bsz = add nsw i64 %.1.i.i, 4
  %i.bta = add nsw i64 %i.bsz, %.154.i.i
  %i.btb = add i64 %i.bta, %i.bph
  %i.btc = add nsw i64 %.1.i.i, 16
  %i.btd = add i64 %i.btc, %i.bph
  %umax621 = tail call i64 @llvm.umax.i64(i64 %i.btb, i64 %i.btd)
  %i.bte = add i64 %umax621, -9
  %9 = add i64 %.1.i.i, %i.bph
  %10 = sub i64 %i.bte, %9                        ; 2 uses
  %i.btf = lshr i64 %10, 3
  %i.btg = add nuw nsw i64 %i.btf, 1              ; 2 uses
  %min.iters.check623 = icmp ult i64 %10, 56
  br i1 %min.iters.check623, label %.lr.ph.i100.i.i.preheader639, label %vector.memcheck619

vector.memcheck619:                               ; preds = %.lr.ph.i100.i.i.preheader
  %i.bth = add i64 %.1.i.i, %i.bph
  %i.bti = sub i64 %.084.i.i602, %i.bth
  %diff.check620 = icmp ugt i64 %i.bti, -32
  br i1 %diff.check620, label %.lr.ph.i100.i.i.preheader639, label %vector.ph624

vector.ph624:                                     ; preds = %vector.memcheck619
  %n.vec626 = and i64 %i.btg, 4611686018427387900 ; 3 uses
  %i.btj = shl i64 %n.vec626, 3                   ; 2 uses
  %i.btk = getelementptr i8, ptr %i.bre, i64 %i.btj
  %i.btl = getelementptr i8, ptr %i.brd, i64 %i.btj
  br label %vector.body627

vector.body627:                                   ; preds = %vector.body627, %vector.ph624
  %index628 = phi i64 [ 0, %vector.ph624 ], [ %index.next633, %vector.body627 ] ; 2 uses
  %i.btm = shl i64 %index628, 3                   ; 2 uses
  %next.gep629 = getelementptr i8, ptr %i.bre, i64 %i.btm ; 2 uses
  %next.gep630 = getelementptr i8, ptr %i.brd, i64 %i.btm ; 2 uses
  %i.btn = getelementptr i8, ptr %next.gep629, i64 16
  %wide.load631 = load <2 x i64>, ptr %next.gep629, align 1
  %wide.load632 = load <2 x i64>, ptr %i.btn, align 1
  %i.bto = getelementptr i8, ptr %next.gep630, i64 16
  store <2 x i64> %wide.load631, ptr %next.gep630, align 1
  store <2 x i64> %wide.load632, ptr %i.bto, align 1
  %index.next633 = add nuw i64 %index628, 4       ; 2 uses
  %i.btp = icmp eq i64 %index.next633, %n.vec626
  br i1 %i.btp, label %middle.block634, label %vector.body627, !llvm.loop !58

middle.block634:                                  ; preds = %vector.body627
  %cmp.n635 = icmp eq i64 %i.btg, %n.vec626
  br i1 %cmp.n635, label %ZSTD_wildcopy.exit104.i.i, label %.lr.ph.i100.i.i.preheader639

.lr.ph.i100.i.i.preheader639:                     ; preds = %vector.memcheck619, %.lr.ph.i100.i.i.preheader, %middle.block634
  %.011.i101.i.i.ph = phi ptr [ %i.bre, %vector.memcheck619 ], [ %i.bre, %.lr.ph.i100.i.i.preheader ], [ %i.btk, %middle.block634 ]
  %.0910.i102.i.i.ph = phi ptr [ %i.brd, %vector.memcheck619 ], [ %i.brd, %.lr.ph.i100.i.i.preheader ], [ %i.btl, %middle.block634 ]
  br label %.lr.ph.i100.i.i

.lr.ph.i100.i.i:                                  ; preds = %.lr.ph.i100.i.i.preheader639, %.lr.ph.i100.i.i
  %.011.i101.i.i = phi ptr [ %i.btr, %.lr.ph.i100.i.i ], [ %.011.i101.i.i.ph, %.lr.ph.i100.i.i.preheader639 ] ; 2 uses
  %.0910.i102.i.i = phi ptr [ %i.btq, %.lr.ph.i100.i.i ], [ %.0910.i102.i.i.ph, %.lr.ph.i100.i.i.preheader639 ] ; 2 uses
  %.0.val.i103.i.i = load i64, ptr %.011.i101.i.i, align 1
  store i64 %.0.val.i103.i.i, ptr %.0910.i102.i.i, align 1
  %i.btq = getelementptr inbounds nuw i8, ptr %.0910.i102.i.i, i64 8 ; 2 uses
  %i.btr = getelementptr inbounds nuw i8, ptr %.011.i101.i.i, i64 8
  %i.bts = icmp ult ptr %i.btq, %i.bpe
  br i1 %i.bts, label %.lr.ph.i100.i.i, label %ZSTD_wildcopy.exit104.i.i, !llvm.loop !59

ZSTD_wildcopy.exit104.i.i:                        ; preds = %.lr.ph.i100.i.i, %.lr.ph.i.i, %middle.block634, %middle.block580, %vec.epilog.middle.block597, %bb.iw, %bb.iv
  br i1 %i.bqa, label %bb.ix, label %ZSTD_execSequence.exit.i

bb.ix:                                            ; preds = %ZSTD_wildcopy.exit104.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bpe, ptr nonnull align 16 %i.c, i64 %.183.i.i, i1 false)
  br label %ZSTD_execSequence.exit.i

ZSTD_execSequence.exit.i:                         ; preds = %bb.ix, %ZSTD_wildcopy.exit104.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.btt = getelementptr inbounds nuw i8, ptr %.060203.i, i64 %i.bpg
  %i.btu = icmp ugt i32 %i.bob, 64
  br i1 %i.btu, label %ZSTD_decompressSequences.exit, label %bb.hs

FSE_reloadDStream.exit.thread.i:                  ; preds = %FSE_reloadDStream.exit.i
  %i.btv = icmp ne i32 %.sroa.19.8.i, 64
  %i.btw = icmp ne ptr %.sroa.41114.8.i, %.786120.i.i
  %brmerge.i = select i1 %i.btw, i1 true, i1 %i.btv
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.iy

bb.iy:                                            ; preds = %FSE_reloadDStream.exit.thread.i
  %i.btx = ptrtoint ptr %.0132198.i to i64
  %i.bty = sub i64 %i.bky, %i.btx                 ; 2 uses
  %i.btz = getelementptr inbounds nuw i8, ptr %.060203.i, i64 %i.bty ; 3 uses
  %.not.i = icmp ugt ptr %i.btz, %i.s
  br i1 %.not.i, label %ZSTD_decompressSequences.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %.not71.i = icmp eq ptr %i.aub, %.0132198.i
  br i1 %.not71.i, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %.not72.i = icmp eq ptr %.060203.i, %.0132198.i
  br i1 %.not72.i, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.060203.i, ptr align 1 %.0132198.i, i64 %i.bty, i1 false)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %bb.iz
  %.464.i = phi ptr [ %i.btz, %bb.ja ], [ %i.btz, %bb.jb ], [ %.060203.i, %bb.iz ]
  %i.bua = ptrtoint ptr %.464.i to i64
  %i.bub = ptrtoint ptr %1 to i64
  %i.buc = sub i64 %i.bua, %i.bub
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %ZSTD_decodeSequence.exit.i, %FSE_initDState.exit84.i, %FSE_initDState.exit92.i, %bb.a, %.sink.split.i.i, %bb.g, %bb.d, %bb.b, %bb.k, %bb.j, %ZSTD_decompressLiterals.exit.i, %bb.jc, %bb.iy, %FSE_reloadDStream.exit.thread.i, %ZSTD_execSequence.exit.thread170.i, %FSE_initDStream.exit.i, %bb.hg, %bb.gy, %bb.gw, %ZSTDv01_decodeSeqHeaders.exit.i, %ZSTDv01_decodeSeqHeaders.exit.thread.i, %ZSTDv01_decodeLiteralsBlock.exit
  %.0 = phi i64 [ -1, %ZSTD_decompressLiterals.exit.i ], [ %i.atx, %ZSTDv01_decodeLiteralsBlock.exit ], [ %.7.i.ph.i, %ZSTDv01_decodeSeqHeaders.exit.thread.i ], [ %i.buc, %bb.jc ], [ %i.bfl, %ZSTDv01_decodeSeqHeaders.exit.i ], [ -20, %FSE_reloadDStream.exit.thread.i ], [ -20, %bb.gw ], [ -20, %FSE_initDStream.exit.i ], [ -70, %bb.iy ], [ -20, %bb.hg ], [ -20, %ZSTD_execSequence.exit.thread170.i ], [ -20, %bb.gy ], [ -1, %.sink.split.i.i ], [ -70, %bb.g ], [ -72, %bb.d ], [ -1, %bb.b ], [ -70, %bb.k ], [ -20, %bb.j ], [ -20, %FSE_initDState.exit92.i ], [ -20, %FSE_initDState.exit84.i ], [ -72, %bb.a ], [ -20, %ZSTD_execSequence.exit.i ], [ -70, %bb.il ], [ -70, %bb.ik ], [ -20, %bb.ij ], [ -70, %bb.ii ], [ -20, %bb.ih ], [ -20, %bb.ig ], [ -70, %ZSTD_decodeSequence.exit.i ]
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
  store ptr %0, ptr %i.a, align 8, !tbaa !49
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
  %.074 = phi ptr [ %i.aa, %.thread89 ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %.03573 = phi i64 [ %i.ab, %.thread89 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.03772 = phi i64 [ %i.ac, %.thread89 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.e = load i8, ptr %.074, align 1, !tbaa !7
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = lshr i32 %i.f, 6
  switch i32 %i.g, label %bb.e [
    i32 3, label %.loopexit
    i32 2, label %.thread
  ]

._crit_edge:                                      ; preds = %.thread89
  store i64 -72, ptr %2, align 8, !tbaa !60
  br label %.thread51

bb.e:                                             ; preds = %.lr.ph
  %i.h = shl nuw nsw i32 %i.f, 16
  %i.i = and i32 %i.h, 458752
  %i.j = getelementptr inbounds nuw i8, ptr %.074, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.q, %i.m               ; 2 uses
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = add i64 %.03573, -3                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  br i1 %i.u, label %bb.f, label %bb.g

.thread:                                          ; preds = %.lr.ph
  %i.v = add i64 %.03573, -3                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %.thread89

bb.f:                                             ; preds = %.thread, %bb.e
  store i64 -72, ptr %2, align 8, !tbaa !60
  br label %.thread51

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.r, 0
  br i1 %i.x, label %.loopexit, label %.thread89

.thread89:                                        ; preds = %.thread, %bb.g
  %.0.i.ph8891 = phi i64 [ %i.s, %bb.g ], [ 1, %.thread ] ; 2 uses
  %i.y = phi i64 [ %i.t, %bb.g ], [ %i.v, %.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %.074, i64 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.i.ph8891
  %i.ab = sub i64 %i.y, %.0.i.ph8891              ; 2 uses
  %i.ac = add i64 %.03772, 1
  %i.ad = icmp ult i64 %i.ab, 3
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.g, %.lr.ph
  %.1.ph = getelementptr inbounds nuw i8, ptr %.074, i64 3
  %i.ae = ptrtoint ptr %.1.ph to i64
end_hunk_0
