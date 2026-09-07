Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress?download=true
inline.NumInlined: 848
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ZSTD_buildSeqStore:bb.a

.lr.ph.i.epil.preheader:                          ; preds = %ZSTD_fastSequenceLengthSum.exit.unr-lcssa, %.lr.ph.i.preheader
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.em, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ]
  %.01013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.eh, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ]
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.el, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.014.i.epil = phi i64 [ %i.ew, %.lr.ph.i.epil ], [ %.014.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.01013.i.epil = phi i64 [ %i.er, %.lr.ph.i.epil ], [ %.01013.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.01112.i.epil = phi i64 [ %i.ev, %.lr.ph.i.epil ], [ %.01112.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.014.i.epil ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !198
  %i.eq = zext i32 %i.ep to i64
  %i.er = add i64 %.01013.i.epil, %i.eq           ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !197
  %i.eu = zext i32 %i.et to i64
  %i.ev = add i64 %.01112.i.epil, %i.eu           ; 2 uses
  %i.ew = add nuw i64 %.014.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZSTD_fastSequenceLengthSum.exit, label %.lr.ph.i.epil, !llvm.loop !458

ZSTD_fastSequenceLengthSum.exit:                  ; preds = %.lr.ph.i.epil, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa
  %.lcssa181 = phi i64 [ %i.eh, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ], [ %i.er, %.lr.ph.i.epil ]
  %.lcssa = phi i64 [ %i.el, %ZSTD_fastSequenceLengthSum.exit.unr-lcssa ], [ %i.ev, %.lr.ph.i.epil ]
  %i.ex = add i64 %.lcssa, %.lcssa181
  %i.ey = icmp ugt i64 %i.ex, %2
  br i1 %i.ey, label %bb.w, label %ZSTD_fastSequenceLengthSum.exit.thread

ZSTD_fastSequenceLengthSum.exit.thread:           ; preds = %bb.u, %ZSTD_fastSequenceLengthSum.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !263
  %i.fb = call i64 @ZSTD_transferSequences_wBlockDelim(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.da, i64 noundef %.1.i, ptr noundef %1, i64 noundef %2, i32 noundef %i.fa) ; 2 uses
  %i.fc = icmp ult i64 %i.fb, -119
  br i1 %i.fc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %ZSTD_fastSequenceLengthSum.exit.thread
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %i.fd, align 8, !tbaa !467
  br label %bb.w

bb.w:                                             ; preds = %ZSTD_fastSequenceLengthSum.exit, %ZSTD_fastSequenceLengthSum.exit.thread, %bb.v
  %.3 = phi i64 [ %i.fb, %ZSTD_fastSequenceLengthSum.exit.thread ], [ 0, %bb.v ], [ -107, %ZSTD_fastSequenceLengthSum.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.thread164

ZSTD_postProcessSequenceProducerResult.exit.thread: ; preds = %bb.q, %bb.s, %ZSTD_postProcessSequenceProducerResult.exit
  %.1.i157 = phi i64 [ %.1.i, %ZSTD_postProcessSequenceProducerResult.exit ], [ -106, %bb.s ], [ -106, %bb.q ]
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !468
  %.not142 = icmp eq i32 %i.ff, 0
  br i1 %.not142, label %.thread164, label %bb.x

bb.x:                                             ; preds = %ZSTD_postProcessSequenceProducerResult.exit.thread
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !162 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !160
  %i.fk = add i32 %i.fh, -6
  %i.fl = icmp ult i32 %i.fk, -3
  %i.fm = icmp ne i32 %i.fj, 1
  %.not8.i = or i1 %i.fl, %i.fm
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.ap
  %i.fo = zext nneg i32 %i.fh to i64
  %i.fp = getelementptr [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.fp, i64 -24
  %i.fr = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %i.ap
  %i.fs = sext i32 %i.fh to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  %.0.in.i = select i1 %.not8.i, ptr %i.ft, ptr %i.fq
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !63
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %i.fu, align 8, !tbaa !467
  %i.fv = load ptr, ptr %i.ar, align 8, !tbaa !71
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 5616
  %i.fx = tail call i64 %.0.i(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.fw, ptr noundef %1, i64 noundef %2) #26
  br label %bb.z

bb.y:                                             ; preds = %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !162 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !160
  %i.gc = add i32 %i.fz, -6
  %i.gd = icmp ult i32 %i.gc, -3
  %i.ge = icmp ne i32 %i.gb, 1
  %.not8.i149 = or i1 %i.gd, %i.ge
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr @ZSTD_selectBlockCompressor.rowBasedBlockCompressors, i64 %i.ap
  %i.gg = zext nneg i32 %i.fz to i64
  %i.gh = getelementptr [8 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -24
  %i.gj = getelementptr inbounds nuw [80 x i8], ptr @ZSTD_selectBlockCompressor.blockCompressor, i64 %i.ap
  %i.gk = sext i32 %i.fz to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gk
  %.0.in.i150 = select i1 %.not8.i149, ptr %i.gl, ptr %i.gi
  %.0.i151 = load ptr, ptr %.0.in.i150, align 8, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 3528
  store ptr null, ptr %i.gm, align 8, !tbaa !467
  %i.gn = tail call i64 %.0.i151(ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull %i.at, ptr noundef %1, i64 noundef %2) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.o, %bb.y, %bb.k
  %.2136 = phi i64 [ %i.bk, %bb.k ], [ %i.cc, %bb.o ], [ %i.fx, %bb.x ], [ %i.gn, %bb.y ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.gp = sub i64 0, %.2136
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 %i.gp
  %i.gr = load ptr, ptr %i.n, align 8, !tbaa !185
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr nonnull readonly align 1 %i.gq, i64 %.2136, i1 false)
  %i.gs = load ptr, ptr %i.n, align 8, !tbaa !185
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.2136
  store ptr %i.gt, ptr %i.n, align 8, !tbaa !185
  br label %.thread164

.thread164:                                       ; preds = %ZSTD_postProcessSequenceProducerResult.exit.thread, %bb.w, %bb.j, %.thread, %bb.c, %bb.d, %bb.z
  %.7 = phi i64 [ 1, %bb.c ], [ 0, %bb.z ], [ 1, %bb.d ], [ -41, %bb.j ], [ %.1.ph, %.thread ], [ %.1.i157, %ZSTD_postProcessSequenceProducerResult.exit.thread ], [ %.3, %bb.w ]
  ret i64 %.7
}

declare void @ZSTD_ldm_skipRawSeqStoreBytes(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @ZSTD_ldm_skipSequences(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

declare i64 @ZSTD_ldm_blockCompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @ZSTD_transferSequences_wBlockDelim(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) unnamed_addr #18 {
bb.a:
  %7 = alloca %struct.repcodes_s, align 8         ; 17 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !294    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !227
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !141
  %.not127 = icmp eq ptr %i.h, null
  br i1 %.not127, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %i.j = load i64, ptr %i.i, align 8, !tbaa !142
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0115 = phi i64 [ %i.f, %bb.b ], [ %i.j, %bb.d ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.m, i64 12, i1 false)
  %i.n = zext i32 %i.a to i64                     ; 3 uses
  %i.o = icmp ugt i64 %3, %i.n
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %.promoted = load i32, ptr %7, align 8
  %i.p = icmp eq i32 %6, 2
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.v = and i64 %.0115, 4294967295
  %i.w = getelementptr i8, ptr %0, i64 448
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 6 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 2 uses
  %.promoted177 = load i32, ptr %i.q, align 4
  %.promoted178 = load i32, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.af
  %i.ag = phi i32 [ %.promoted178, %.lr.ph ], [ %i.bm, %bb.af ] ; 4 uses
  %i.ah = phi i32 [ %.promoted177, %.lr.ph ], [ %i.bn, %bb.af ] ; 5 uses
  %i.ai = phi i64 [ %i.n, %.lr.ph ], [ %i.gh, %bb.af ] ; 2 uses
  %.0116168 = phi ptr [ %4, %.lr.ph ], [ %i.gf, %bb.af ] ; 11 uses
  %.0119167 = phi i32 [ %i.a, %.lr.ph ], [ %i.gg, %bb.af ] ; 3 uses
  %i.aj = phi i32 [ %.promoted, %.lr.ph ], [ %i.bo, %bb.af ] ; 7 uses
  %.0116168205 = ptrtoaddr ptr %.0116168 to i64   ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ai ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !197 ; 5 uses
  %.not128 = icmp eq i32 %i.am, 0
  br i1 %.not128, label %bb.g, label %.critedge3

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !196
  %.not129 = icmp eq i32 %i.an, 0
  br i1 %.not129, label %.critedge, label %.critedge3

.critedge3:                                       ; preds = %bb.f, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198 ; 8 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge3
  %i.aq = load i32, ptr %i.ak, align 4, !tbaa !196
  %i.ar = add i32 %i.aq, 3
  br label %ZSTD_updateRep.exit

bb.i:                                             ; preds = %.critedge3
  %i.as = icmp eq i32 %i.ap, 0                    ; 5 uses
  %i.at = zext i1 %i.as to i32
  %i.au = load i32, ptr %i.ak, align 4, !tbaa !196 ; 6 uses
  %i.av = add i32 %i.au, 3                        ; 3 uses
  %i.aw = icmp ne i32 %i.au, %i.aj
  %or.cond154.not = select i1 %i.as, i1 true, i1 %i.aw
  br i1 %or.cond154.not, label %bb.j, label %ZSTD_finalizeOffBase.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp eq i32 %i.au, %i.ah
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = select i1 %i.as, i32 1, i32 2
  br label %ZSTD_finalizeOffBase.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.az = icmp eq i32 %i.au, %i.ag
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = xor i32 %i.at, 3
  br label %ZSTD_finalizeOffBase.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.bb = add i32 %i.aj, -1
  %i.bc = icmp eq i32 %i.au, %i.bb
  %or.cond180 = select i1 %i.as, i1 %i.bc, i1 false
  br i1 %or.cond180, label %ZSTD_finalizeOffBase.exit.thread, label %ZSTD_finalizeOffBase.exit

ZSTD_finalizeOffBase.exit:                        ; preds = %bb.n
  %i.bd = icmp ugt i32 %i.av, 3
  br i1 %i.bd, label %.sink.split.i, label %ZSTD_finalizeOffBase.exit.thread

ZSTD_finalizeOffBase.exit.thread:                 ; preds = %bb.n, %bb.i, %bb.m, %bb.k, %ZSTD_finalizeOffBase.exit
  %.0.i146 = phi i32 [ %i.av, %ZSTD_finalizeOffBase.exit ], [ %i.ay, %bb.k ], [ 1, %bb.i ], [ %i.ba, %bb.m ], [ 3, %bb.n ] ; 3 uses
  %not. = xor i1 %i.as, true
  %i.be = sext i1 %not. to i32
  %i.bf = add nsw i32 %.0.i146, %i.be             ; 3 uses
  switch i32 %i.bf, label %bb.p [
    i32 0, label %ZSTD_updateRep.exit
    i32 3, label %bb.o
  ]

bb.o:                                             ; preds = %ZSTD_finalizeOffBase.exit.thread
  %i.bg = add i32 %i.aj, -1
  br label %bb.q

bb.p:                                             ; preds = %ZSTD_finalizeOffBase.exit.thread
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = phi i32 [ %i.bg, %bb.o ], [ %i.bj, %bb.p ]
  %.not22.i = icmp eq i32 %i.bf, 1
  %i.bl = select i1 %.not22.i, i32 %i.ag, i32 %i.ah
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %ZSTD_finalizeOffBase.exit, %bb.q
  %storemerge = phi i32 [ %i.bl, %bb.q ], [ %i.ah, %ZSTD_finalizeOffBase.exit ] ; 2 uses
  %.0.i144 = phi i32 [ %.0.i146, %bb.q ], [ %i.av, %ZSTD_finalizeOffBase.exit ]
  %.sink.i = phi i32 [ %i.bk, %bb.q ], [ %i.au, %ZSTD_finalizeOffBase.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.r, align 8, !tbaa !64
  store i32 %i.aj, ptr %i.q, align 4, !tbaa !64
  store i32 %.sink.i, ptr %7, align 8, !tbaa !64
  br label %ZSTD_updateRep.exit

ZSTD_updateRep.exit:                              ; preds = %.sink.split.i, %ZSTD_finalizeOffBase.exit.thread, %bb.h
  %i.bm = phi i32 [ %i.ag, %bb.h ], [ %i.ag, %ZSTD_finalizeOffBase.exit.thread ], [ %storemerge, %.sink.split.i ]
  %i.bn = phi i32 [ %i.ah, %bb.h ], [ %i.ah, %ZSTD_finalizeOffBase.exit.thread ], [ %i.aj, %.sink.split.i ]
  %i.bo = phi i32 [ %i.aj, %bb.h ], [ %i.aj, %ZSTD_finalizeOffBase.exit.thread ], [ %.sink.i, %.sink.split.i ]
  %.0114 = phi i32 [ %i.ar, %bb.h ], [ %.0.i146, %ZSTD_finalizeOffBase.exit.thread ], [ %.0.i144, %.sink.split.i ] ; 2 uses
  %i.bp = load i32, ptr %i.s, align 8, !tbaa !268
  %.not134 = icmp eq i32 %i.bp, 0
  br i1 %.not134, label %bb.s, label %bb.r

bb.r:                                             ; preds = %ZSTD_updateRep.exit
  %i.bq = add i32 %i.ap, %i.am
  %i.br = zext i32 %i.bq to i64
  %i.bs = load i64, ptr %i.t, align 8, !tbaa !295
  %i.bt = add i64 %i.bs, %i.br                    ; 3 uses
  store i64 %i.bt, ptr %i.t, align 8, !tbaa !295
  %i.bu = load i32, ptr %i.u, align 4, !tbaa !214
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = icmp ugt i64 %i.bt, %i.bw
  %i.by = add i64 %i.bt, %i.v
  %i.bz = select i1 %i.bx, i64 %i.bw, i64 %i.by
  %i.ca = zext i32 %.0114 to i64
  %i.cb = add i64 %i.bz, 3
  %i.cc = icmp ult i64 %i.cb, %i.ca
  br i1 %i.cc, label %.thread, label %ZSTD_validateSequence.exit

ZSTD_validateSequence.exit:                       ; preds = %bb.r
  %.val = load ptr, ptr %i.w, align 8, !tbaa !146
  %i.cd = icmp ne ptr %.val, null
  %i.ce = load i32, ptr %i.x, align 4, !tbaa !291
  %i.cf = icmp eq i32 %i.ce, 3
  %i.cg = or i1 %i.cd, %i.cf
  %i.ch = select i1 %i.cg, i64 3, i64 4
  %i.ci = zext i32 %i.am to i64
  %.not158 = icmp samesign ugt i64 %i.ch, %i.ci
  br i1 %.not158, label %.thread, label %bb.s

bb.s:                                             ; preds = %ZSTD_updateRep.exit, %ZSTD_validateSequence.exit
  %i.cj = load i32, ptr %1, align 8, !tbaa !294
  %i.ck = sub i32 %.0119167, %i.cj
  %i.cl = zext i32 %i.ck to i64
  %i.cm = load i64, ptr %i.y, align 8, !tbaa !267
  %.not136 = icmp ugt i64 %i.cm, %i.cl
  br i1 %.not136, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cn = zext i32 %i.ap to i64                   ; 6 uses
  %i.co = zext i32 %i.am to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.0116168, i64 %i.cn ; 3 uses
  %.not.i = icmp ugt ptr %i.cp, %i.aa
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !185 ; 5 uses
  br i1 %.not.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.0116.val = load <2 x i64>, ptr %.0116168, align 1, !tbaa !181
  store <2 x i64> %.0116.val, ptr %i.cq, align 1, !tbaa !181
  %i.cr = icmp ugt i32 %i.ap, 16
  br i1 %i.cr, label %bb.v, label %ZSTD_wildcopy.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.ab, align 8, !tbaa !185 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.0116168, i64 16 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cs, i64 %i.cn
  %.val138 = load <2 x i64>, ptr %i.cu, align 1, !tbaa !181
  store <2 x i64> %.val138, ptr %i.ct, align 1, !tbaa !181
  %i.cw = icmp ult i32 %i.ap, 33
  br i1 %i.cw, label %ZSTD_wildcopy.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.pn.i = phi ptr [ %i.cu, %bb.w ], [ %i.cz, %bb.x ] ; 2 uses
  %.1.i = phi ptr [ %i.cx, %bb.w ], [ %i.da, %bb.x ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !181
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !181
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val137 = load <2 x i64>, ptr %i.cz, align 1, !tbaa !181
  store <2 x i64> %.val137, ptr %i.cy, align 1, !tbaa !181
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.db = icmp ult ptr %i.da, %i.cv
  br i1 %i.db, label %bb.x, label %ZSTD_wildcopy.exit, !llvm.loop !13

bb.y:                                             ; preds = %bb.t
  %.not.i141 = icmp ugt ptr %.0116168, %i.aa
  br i1 %.not.i141, label %ZSTD_wildcopy.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = ptrtoint ptr %.0116168 to i64
  %i.dd = sub i64 %i.ac, %i.dc                    ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.cq, i64 %i.dd ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0116168, align 1, !tbaa !181
  store <2 x i64> %.val19.i, ptr %i.cq, align 1, !tbaa !181
  %i.df = icmp ult i64 %i.dd, 17
  br i1 %i.df, label %ZSTD_wildcopy.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i.i = phi ptr [ %.0116168, %bb.aa ], [ %i.di, %bb.ab ] ; 2 uses
  %.1.i.i = phi ptr [ %i.dg, %bb.aa ], [ %i.dj, %bb.ab ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !181
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !181
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.di, align 1, !tbaa !181
  store <2 x i64> %.val.i, ptr %i.dh, align 1, !tbaa !181
  %i.dj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.de
  br i1 %i.dk, label %bb.ab, label %ZSTD_wildcopy.exit.i, !llvm.loop !13

ZSTD_wildcopy.exit.i:                             ; preds = %bb.ab, %bb.z, %bb.y
  %.014.i = phi ptr [ %.0116168, %bb.y ], [ %i.aa, %bb.z ], [ %i.aa, %bb.ab ] ; 7 uses
  %.0.i142 = phi ptr [ %i.cq, %bb.y ], [ %i.de, %bb.z ], [ %i.de, %bb.ab ] ; 6 uses
  %i.dl = icmp ult ptr %.014.i, %i.cp
  br i1 %i.dl, label %iter.check, label %ZSTD_wildcopy.exit

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i204 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i142203 = ptrtoaddr ptr %.0.i142 to i64
  %i.dm = add i64 %.0116168205, %i.cn             ; 2 uses
  %i.dn = sub i64 %i.dm, %.014.i204               ; 7 uses
  %min.iters.check = icmp ult i64 %i.dn, 8
  %i.do = sub i64 %.014.i204, %.0.i142203
  %diff.check = icmp ugt i64 %i.do, -32
  %or.cond219 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond219, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check206 = icmp ult i64 %i.dn, 32
  br i1 %min.iters.check206, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dp = and i64 %i.dn, 24
  %n.vec = and i64 %i.dn, -32                     ; 5 uses
  %i.dq = getelementptr i8, ptr %.0.i142, i64 %n.vec
  %i.dr = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i142, i64 %index ; 2 uses
  %next.gep207 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep207, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep207, align 1, !tbaa !181
  %wide.load208 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !181
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !181
  store <16 x i8> %wide.load208, ptr %i.dt, align 1, !tbaa !181
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !469

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %ZSTD_wildcopy.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !296

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec210 = and i64 %i.dn, -8                   ; 4 uses
  %i.dv = getelementptr i8, ptr %.0.i142, i64 %n.vec210
  %i.dw = getelementptr i8, ptr %.014.i, i64 %n.vec210
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next215, %vec.epilog.vector.body ] ; 3 uses
  %next.gep212 = getelementptr i8, ptr %.0.i142, i64 %index211
  %next.gep213 = getelementptr i8, ptr %.014.i, i64 %index211
  %wide.load214 = load <8 x i8>, ptr %next.gep213, align 1, !tbaa !181
  store <8 x i8> %wide.load214, ptr %next.gep212, align 1, !tbaa !181
  %index.next215 = add nuw i64 %index211, 8       ; 2 uses
  %i.dx = icmp eq i64 %index.next215, %n.vec210
  br i1 %i.dx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !470

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n216 = icmp eq i64 %i.dn, %n.vec210
  br i1 %cmp.n216, label %ZSTD_wildcopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i142, %iter.check ], [ %i.dq, %vec.epilog.iter.check ], [ %i.dv, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.dr, %vec.epilog.iter.check ], [ %i.dw, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i.ph221 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.dy = sub i64 %i.dm, %.11520.i.ph221
  %i.dz = add i64 %.0116168205, -1
  %i.ea = add i64 %i.dz, %i.cn
  %i.eb = sub i64 %i.ea, %.11520.i.ph221
  %xtraiter = and i64 %i.dy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.ee, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ec, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.ed = load i8, ptr %.11520.i.prol, align 1, !tbaa !181
  %i.ee = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.ed, ptr %.121.i.prol, align 1, !tbaa !181
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !471

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i.preheader ], [ %i.ee, %.lr.ph.i.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i.preheader ], [ %i.ec, %.lr.ph.i.prol ]
  %i.ef = icmp ult i64 %i.eb, 7
  br i1 %i.ef, label %ZSTD_wildcopy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.121.i = phi ptr [ %i.fd, %.lr.ph.i ], [ %.121.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.fb, %.lr.ph.i ], [ %.11520.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.eh = load i8, ptr %.11520.i, align 1, !tbaa !181
  %i.ei = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.eh, ptr %.121.i, align 1, !tbaa !181
  %i.ej = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !181
  %i.el = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !181
  %i.em = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !181
  %i.eo = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.en, ptr %i.el, align 1, !tbaa !181
  %i.ep = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !181
  %i.er = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !181
  %i.es = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.et = load i8, ptr %i.ep, align 1, !tbaa !181
  %i.eu = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.et, ptr %i.er, align 1, !tbaa !181
  %i.ev = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.ew = load i8, ptr %i.es, align 1, !tbaa !181
  %i.ex = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !181
  %i.ey = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.ez = load i8, ptr %i.ev, align 1, !tbaa !181
  %i.fa = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !181
  %i.fb = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.fc = load i8, ptr %i.ey, align 1, !tbaa !181
  %i.fd = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !181
  %exitcond.not.i.7 = icmp eq ptr %i.fb, %i.cp
  br i1 %exitcond.not.i.7, label %ZSTD_wildcopy.exit, label %.lr.ph.i, !llvm.loop !472

ZSTD_wildcopy.exit.thread:                        ; preds = %bb.v, %bb.u
  %i.fe = load ptr, ptr %i.ab, align 8, !tbaa !185
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.cn
  store ptr %i.ff, ptr %i.ab, align 8, !tbaa !185
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !175
  br label %bb.ad

ZSTD_wildcopy.exit:                               ; preds = %bb.x, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %ZSTD_wildcopy.exit.i
  %i.fg = load ptr, ptr %i.ab, align 8, !tbaa !185
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.cn
  store ptr %i.fh, ptr %i.ab, align 8, !tbaa !185
  %i.fi = icmp ugt i32 %i.ap, 65535
  %.pre182 = load ptr, ptr %i.ae, align 8, !tbaa !175 ; 3 uses
  br i1 %i.fi, label %bb.ac, label %bb.ad, !prof !297

bb.ac:                                            ; preds = %ZSTD_wildcopy.exit
  store i32 1, ptr %i.ad, align 8, !tbaa !182
  %i.fj = load ptr, ptr %i.z, align 8, !tbaa !171
  %i.fk = ptrtoint ptr %.pre182 to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = lshr exact i64 %i.fm, 3
  %i.fo = trunc i64 %i.fn to i32
  store i32 %i.fo, ptr %i.af, align 4, !tbaa !183
  br label %bb.ad

bb.ad:                                            ; preds = %ZSTD_wildcopy.exit.thread, %bb.ac, %ZSTD_wildcopy.exit
  %i.fp = phi ptr [ %.pre, %ZSTD_wildcopy.exit.thread ], [ %.pre182, %bb.ac ], [ %.pre182, %ZSTD_wildcopy.exit ] ; 5 uses
  %i.fq = trunc i32 %i.ap to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i16 %i.fq, ptr %i.fr, align 4, !tbaa !178
  store i32 %.0114, ptr %i.fp, align 4, !tbaa !179
  %i.fs = add nsw i64 %i.co, -3                   ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, 65535
  br i1 %i.ft, label %bb.ae, label %bb.af, !prof !266

bb.ae:                                            ; preds = %bb.ad
  store i32 2, ptr %i.ad, align 8, !tbaa !182
  %i.fu = load ptr, ptr %i.z, align 8, !tbaa !171
  %i.fv = ptrtoint ptr %i.fp to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = lshr exact i64 %i.fx, 3
  %i.fz = trunc i64 %i.fy to i32
  store i32 %i.fz, ptr %i.af, align 4, !tbaa !183
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ga = trunc i64 %i.fs to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 6
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !180
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.gc, ptr %i.ae, align 8, !tbaa !175
  %i.gd = add i32 %i.ap, %i.am
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %.0116168, i64 %i.ge ; 2 uses
  %i.gg = add i32 %.0119167, 1                    ; 3 uses
  %i.gh = zext i32 %i.gg to i64                   ; 3 uses
  %i.gi = icmp ugt i64 %3, %i.gh
  br i1 %i.gi, label %bb.f, label %.critedge, !llvm.loop !473

.critedge:                                        ; preds = %bb.af, %bb.g, %bb.e
  %.0119.lcssa = phi i32 [ %i.a, %bb.e ], [ %.0119167, %bb.g ], [ %i.gg, %bb.af ] ; 7 uses
  %.0116.lcssa = phi ptr [ %4, %bb.e ], [ %.0116168, %bb.g ], [ %i.gf, %bb.af ] ; 3 uses
  %.lcssa = phi i64 [ %i.n, %bb.e ], [ %i.ai, %bb.g ], [ %i.gh, %bb.af ] ; 2 uses
  %i.gj = icmp eq i64 %3, %.lcssa
  br i1 %i.gj, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.gk = icmp ne i32 %6, 2
  %.not130 = icmp eq i32 %.0119.lcssa, %i.a
  %or.cond = select i1 %i.gk, i1 true, i1 %.not130
  br i1 %or.cond, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gl = add i32 %.0119.lcssa, -1                ; 2 uses
  %i.gm = add i32 %i.a, 2                         ; 2 uses
  %.not131 = icmp ult i32 %i.gl, %i.gm
  br i1 %.not131, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gn = add i32 %.0119.lcssa, -3
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !196
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.gq, ptr %i.gr, align 8, !tbaa !64
  %i.gs = add i32 %.0119.lcssa, -2
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !196
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !64
  br label %.sink.split

bb.aj:                                            ; preds = %bb.ah
  %i.gx = icmp eq i32 %.0119.lcssa, %i.gm
  br i1 %i.gx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gy = load i32, ptr %7, align 8, !tbaa !64
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.gy, ptr %i.gz, align 8, !tbaa !64
  %i.ha = add i32 %.0119.lcssa, -2
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !196
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !64
  br label %.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hg = load <2 x i32>, ptr %7, align 8, !tbaa !64
  store <2 x i32> %i.hg, ptr %i.hf, align 4, !tbaa !64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ak, %bb.al, %bb.ai
  %i.hh = zext i32 %i.gl to i64
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !196
  store i32 %i.hj, ptr %7, align 8, !tbaa !64
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !71
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hm, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false)
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.lcssa
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !198 ; 2 uses
  %.not132 = icmp eq i32 %i.hp, 0
  br i1 %.not132, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@ZSTD_loadDictionaryContent:bb.a
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !102
  %i.cm = add i32 %i.cl, 1
  %. = tail call i32 @llvm.umax.i32(i32 %i.cj, i32 %i.cm)
  %spec.select116 = tail call i32 @llvm.umin.i32(i32 %., i32 31)
  %i.cn = shl nuw i32 1, %spec.select116
  %i.co = zext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp samesign ugt i64 %.094, %i.co
  %i.cq = sub nsw i64 0, %i.co
  %i.cr = getelementptr inbounds i8, ptr %i.a, i64 %i.cq
  %.195 = tail call i64 @llvm.umin.i64(i64 %.094, i64 %i.co)
  %.1 = select i1 %i.cp, ptr %i.cr, ptr %.091     ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !292
  %i.cu = ptrtoint ptr %.1 to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !211
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !109
  %.not103 = icmp eq i32 %i.da, 0
  %i.db = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.dc = sub i64 %i.db, %i.cv
  %i.dd = trunc i64 %i.dc to i32
  %i.de = select i1 %.not103, i32 %i.dd, i32 0
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.de, ptr %i.df, align 8, !tbaa !278
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !128
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !205
  %i.dj = icmp samesign ult i64 %.195, 9
  br i1 %i.dj, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @ZSTD_overflowCorrectIfNeeded(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %.1, ptr noundef nonnull %i.a)
  %i.dk = load i32, ptr %i.g, align 4, !tbaa !106
  switch i32 %i.dk, label %bb.x [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
    i32 4, label %bb.r
    i32 5, label %bb.r
    i32 6, label %bb.w
    i32 7, label %bb.w
    i32 8, label %bb.w
    i32 9, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  tail call void @ZSTD_fillHashTable(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %6, i32 noundef %7) #26
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %6, i32 noundef %7) #26
  br label %bb.x

bb.r:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !276
  %.not104 = icmp eq i32 %i.dm, 0
  br i1 %.not104, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef nonnull %0, ptr noundef nonnull %i.dn) #26
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !92
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dr = load i32, ptr %i.ch, align 4, !tbaa !101
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !283
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dv, i8 0, i64 %i.dt, i1 false)
  %i.dw = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @ZSTD_row_update(ptr noundef nonnull %0, ptr noundef nonnull %i.dw) #26
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.dy = tail call i32 @ZSTD_insertAndFindFirstIndex(ptr noundef nonnull %0, ptr noundef nonnull %i.dx) #26 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.dz = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @ZSTD_updateTree(ptr noundef nonnull %0, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.a) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.o, %bb.s, %bb.v, %bb.u, %bb.w, %bb.q, %bb.p
  %i.ea = load ptr, ptr %i.cs, align 8, !tbaa !292
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.db, %i.eb
  %i.ed = trunc i64 %i.ec to i32
  store i32 %i.ed, ptr %i.cy, align 4, !tbaa !211
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.x
  ret void
}

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @ZSTD_dedicatedDictSearch_lazy_loadDictionary(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @ZSTD_row_update(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @ZSTD_insertAndFindFirstIndex(ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @ZSTD_updateTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare i64 @ZSTDMT_nextInputSizeHint(ptr noundef) local_unnamed_addr #9

declare ptr @ZSTDMT_createCCtx_advanced(i32 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8, ptr noundef) local_unnamed_addr #9

declare i64 @ZSTDMT_initCStream_internal(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 8, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @ZSTD_transferSequences_noDelim(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 %6) unnamed_addr #18 {
bb.a:
  %7 = alloca %struct.repcodes_s, align 4         ; 9 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !494  ; 2 uses
  %i.d = trunc i64 %5 to i32
  %i.e = add i32 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !131  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !227
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141
  %.not159 = icmp eq ptr %i.l, null
  br i1 %.not159, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %i.n = load i64, ptr %i.m, align 8, !tbaa !142
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0141 = phi i64 [ %i.j, %bb.b ], [ %i.n, %bb.d ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %i.q, i64 12, i1 false)
  %.not160232 = icmp eq i32 %i.e, 0
  br i1 %.not160232, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.promoted = load i32, ptr %7, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.x = getelementptr i8, ptr %0, i64 448
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 6 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 2 uses
  %.promoted254 = load i32, ptr %i.s, align 4
  %.promoted255 = load i32, ptr %i.t, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.aj
  %i.ag = phi i32 [ %.promoted255, %.lr.ph ], [ %i.bt, %bb.aj ] ; 3 uses
  %i.ah = phi i32 [ %.promoted254, %.lr.ph ], [ %i.bu, %bb.aj ] ; 4 uses
  %.0116240 = phi i32 [ %i.a, %.lr.ph ], [ %spec.select, %bb.aj ] ; 6 uses
  %.0129239 = phi i32 [ 0, %.lr.ph ], [ %.2131, %bb.aj ]
  %.0133238 = phi i32 [ 0, %.lr.ph ], [ %.3136, %bb.aj ] ; 4 uses
  %.0138235 = phi ptr [ %4, %.lr.ph ], [ %i.gm, %bb.aj ] ; 13 uses
  %.0142234 = phi i32 [ %i.e, %.lr.ph ], [ %.3145, %bb.aj ] ; 8 uses
  %.0148233 = phi i32 [ %i.c, %.lr.ph ], [ %.1149, %bb.aj ] ; 5 uses
  %i.ai = phi i32 [ %.promoted, %.lr.ph ], [ %i.bv, %bb.aj ] ; 6 uses
  %.0138235301 = ptrtoaddr ptr %.0138235 to i64   ; 2 uses
  %i.aj = zext i32 %.0116240 to i64               ; 2 uses
  %i.ak = icmp ugt i64 %3, %i.aj
  %.not161 = icmp eq i32 %.0129239, 0
  %or.cond = and i1 %.not161, %i.ak
  br i1 %or.cond, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.aj ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.al, align 4, !tbaa !64 ; 6 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !64 ; 7 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !64 ; 3 uses
  %i.am = add i32 %.sroa.10.0.copyload, %.sroa.4.0.copyload ; 3 uses
  %.not162.not = icmp uge i32 %.0142234, %i.am    ; 2 uses
  br i1 %.not162.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0127 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.4.0.copyload, i32 %.0148233)
  %i.an = tail call i32 @llvm.usub.sat.i32(i32 %.0148233, i32 %.sroa.4.0.copyload)
  %.0124 = sub i32 %.sroa.10.0.copyload, %i.an
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.ao = icmp ugt i32 %.0142234, %.sroa.4.0.copyload
  br i1 %i.ao, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.4.0.copyload, i32 %.0148233) ; 2 uses
  %i.aq = add i32 %.0148233, %i.ap
  %i.ar = sub i32 %.0142234, %i.aq                ; 2 uses
  %i.as = zext i32 %.sroa.10.0.copyload to i64
  %i.at = icmp ult i64 %5, %i.as
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i32, ptr %i.r, align 4, !tbaa !291 ; 4 uses
  %.not164 = icmp ult i32 %i.ar, %i.au
  br i1 %.not164, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %i.av = sub nuw i32 %i.am, %.0142234            ; 3 uses
  %i.aw = icmp ult i32 %i.av, %i.au
  %i.ax = sub nuw i32 %i.au, %i.av
  %i.ay = tail call i32 @llvm.usub.sat.i32(i32 %i.au, i32 %i.av) ; 2 uses
  %.1134 = select i1 %i.aw, i32 %i.ax, i32 %.0133238
  %.0123 = sub nuw i32 %i.ar, %i.ay
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.az = sub nuw i32 %.0142234, %.sroa.4.0.copyload
  br label %.critedge

bb.m:                                             ; preds = %.thread, %bb.h
  %.1149 = phi i32 [ 0, %bb.h ], [ %.0148233, %.thread ]
  %.pn = phi i32 [ %i.am, %bb.h ], [ %i.ay, %.thread ]
  %.3136 = phi i32 [ %.0133238, %bb.h ], [ %.1134, %.thread ] ; 2 uses
  %.2131 = phi i32 [ 0, %bb.h ], [ 1, %.thread ]
  %.1128 = phi i32 [ %.0127, %bb.h ], [ %i.ap, %.thread ] ; 8 uses
  %.2126 = phi i32 [ %.0124, %bb.h ], [ %.0123, %.thread ] ; 4 uses
  %.3145 = sub i32 %.0142234, %.pn                ; 2 uses
  %i.ba = icmp eq i32 %.1128, 0                   ; 5 uses
  %i.bb = zext i1 %i.ba to i32
  %i.bc = add i32 %.sroa.0.0.copyload, 3          ; 3 uses
  %i.bd = icmp ne i32 %.sroa.0.0.copyload, %i.ai
  %or.cond210.not = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %or.cond210.not, label %bb.n, label %ZSTD_finalizeOffBase.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.be = icmp eq i32 %.sroa.0.0.copyload, %i.ah
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = select i1 %i.ba, i32 1, i32 2
  br label %ZSTD_finalizeOffBase.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bg = icmp eq i32 %.sroa.0.0.copyload, %i.ag
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = xor i32 %i.bb, 3
  br label %ZSTD_finalizeOffBase.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.bi = add i32 %i.ai, -1
  %i.bj = icmp eq i32 %.sroa.0.0.copyload, %i.bi
  %or.cond257 = select i1 %i.ba, i1 %i.bj, i1 false
  br i1 %or.cond257, label %ZSTD_finalizeOffBase.exit.thread, label %ZSTD_finalizeOffBase.exit

ZSTD_finalizeOffBase.exit:                        ; preds = %bb.r
  %i.bk = icmp ugt i32 %i.bc, 3
  br i1 %i.bk, label %.sink.split.i, label %ZSTD_finalizeOffBase.exit.thread

ZSTD_finalizeOffBase.exit.thread:                 ; preds = %bb.r, %bb.m, %bb.q, %bb.o, %ZSTD_finalizeOffBase.exit
  %.0.i186 = phi i32 [ %i.bc, %ZSTD_finalizeOffBase.exit ], [ %i.bf, %bb.o ], [ 1, %bb.m ], [ %i.bh, %bb.q ], [ 3, %bb.r ] ; 3 uses
  %not. = xor i1 %i.ba, true
  %i.bl = sext i1 %not. to i32
  %i.bm = add nsw i32 %.0.i186, %i.bl             ; 3 uses
  switch i32 %i.bm, label %bb.t [
    i32 0, label %ZSTD_updateRep.exit
    i32 3, label %bb.s
  ]

bb.s:                                             ; preds = %ZSTD_finalizeOffBase.exit.thread
  %i.bn = add i32 %i.ai, -1
  br label %bb.u

bb.t:                                             ; preds = %ZSTD_finalizeOffBase.exit.thread
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.br = phi i32 [ %i.bn, %bb.s ], [ %i.bq, %bb.t ]
  %.not22.i = icmp eq i32 %i.bm, 1
  %i.bs = select i1 %.not22.i, i32 %i.ag, i32 %i.ah
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %ZSTD_finalizeOffBase.exit, %bb.u
  %storemerge = phi i32 [ %i.bs, %bb.u ], [ %i.ah, %ZSTD_finalizeOffBase.exit ] ; 2 uses
  %.0.i184 = phi i32 [ %.0.i186, %bb.u ], [ %i.bc, %ZSTD_finalizeOffBase.exit ]
  %.sink.i = phi i32 [ %i.br, %bb.u ], [ %.sroa.0.0.copyload, %ZSTD_finalizeOffBase.exit ] ; 2 uses
  store i32 %storemerge, ptr %i.t, align 4, !tbaa !64
  store i32 %i.ai, ptr %i.s, align 4, !tbaa !64
  store i32 %.sink.i, ptr %7, align 4, !tbaa !64
  br label %ZSTD_updateRep.exit

ZSTD_updateRep.exit:                              ; preds = %ZSTD_finalizeOffBase.exit.thread, %.sink.split.i
  %i.bt = phi i32 [ %i.ag, %ZSTD_finalizeOffBase.exit.thread ], [ %storemerge, %.sink.split.i ]
  %i.bu = phi i32 [ %i.ah, %ZSTD_finalizeOffBase.exit.thread ], [ %i.ai, %.sink.split.i ]
  %i.bv = phi i32 [ %i.ai, %ZSTD_finalizeOffBase.exit.thread ], [ %.sink.i, %.sink.split.i ]
  %.0.i185 = phi i32 [ %.0.i186, %ZSTD_finalizeOffBase.exit.thread ], [ %.0.i184, %.sink.split.i ] ; 2 uses
  %i.bw = load i32, ptr %i.u, align 8, !tbaa !268
  %.not166 = icmp eq i32 %i.bw, 0
  br i1 %.not166, label %bb.w, label %bb.v

bb.v:                                             ; preds = %ZSTD_updateRep.exit
  %i.bx = add i32 %.2126, %.1128
  %i.by = zext i32 %i.bx to i64
  %i.bz = load i64, ptr %i.v, align 8, !tbaa !295
  %i.ca = add i64 %i.bz, %i.by                    ; 3 uses
  store i64 %i.ca, ptr %i.v, align 8, !tbaa !295
  %i.cb = load i32, ptr %i.w, align 4, !tbaa !214
  %i.cc = shl nuw i32 1, %i.cb
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = icmp ugt i64 %i.ca, %i.cd
  %i.cf = add i64 %i.ca, %.0141
  %i.cg = select i1 %i.ce, i64 %i.cd, i64 %i.cf
  %i.ch = zext i32 %.0.i185 to i64
  %i.ci = add i64 %i.cg, 3
  %i.cj = icmp ult i64 %i.ci, %i.ch
  br i1 %i.cj, label %.thread190, label %ZSTD_validateSequence.exit

ZSTD_validateSequence.exit:                       ; preds = %bb.v
  %.val = load ptr, ptr %i.x, align 8, !tbaa !146
  %i.ck = icmp ne ptr %.val, null
  %i.cl = load i32, ptr %i.r, align 4, !tbaa !291
  %i.cm = icmp eq i32 %i.cl, 3
  %i.cn = or i1 %i.ck, %i.cm
  %i.co = select i1 %i.cn, i64 3, i64 4
  %i.cp = zext i32 %.2126 to i64
  %.not214 = icmp samesign ugt i64 %i.co, %i.cp
  br i1 %.not214, label %.thread190, label %bb.w

bb.w:                                             ; preds = %ZSTD_validateSequence.exit, %ZSTD_updateRep.exit
  %i.cq = load i32, ptr %1, align 8, !tbaa !294
  %i.cr = sub i32 %.0116240, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load i64, ptr %i.y, align 8, !tbaa !267
  %.not168 = icmp ugt i64 %i.ct, %i.cs
  br i1 %.not168, label %bb.x, label %.thread190

bb.x:                                             ; preds = %bb.w
  %i.cu = zext i32 %.1128 to i64                  ; 6 uses
  %i.cv = zext i32 %.2126 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0138235, i64 %i.cu ; 3 uses
  %.not.i = icmp ugt ptr %i.cw, %i.aa
  %i.cx = load ptr, ptr %i.ab, align 8, !tbaa !185 ; 5 uses
  br i1 %.not.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.0138.val = load <2 x i64>, ptr %.0138235, align 1, !tbaa !181
  store <2 x i64> %.0138.val, ptr %i.cx, align 1, !tbaa !181
  %i.cy = icmp ugt i32 %.1128, 16
  br i1 %i.cy, label %bb.z, label %ZSTD_wildcopy.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.cz = load ptr, ptr %i.ab, align 8, !tbaa !185 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0138235, i64 16 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.cu
  %.val172 = load <2 x i64>, ptr %i.db, align 1, !tbaa !181
  store <2 x i64> %.val172, ptr %i.da, align 1, !tbaa !181
  %i.dd = icmp ult i32 %.1128, 33
  br i1 %i.dd, label %ZSTD_wildcopy.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i = phi ptr [ %i.db, %bb.aa ], [ %i.dg, %bb.ab ] ; 2 uses
  %.1.i = phi ptr [ %i.de, %bb.aa ], [ %i.dh, %bb.ab ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !181
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !181
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val171 = load <2 x i64>, ptr %i.dg, align 1, !tbaa !181
  store <2 x i64> %.val171, ptr %i.df, align 1, !tbaa !181
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.dc
  br i1 %i.di, label %bb.ab, label %ZSTD_wildcopy.exit, !llvm.loop !13

bb.ac:                                            ; preds = %bb.x
  %.not.i175 = icmp ugt ptr %.0138235, %i.aa
  br i1 %.not.i175, label %ZSTD_wildcopy.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = ptrtoint ptr %.0138235 to i64
  %i.dk = sub i64 %i.ac, %i.dj                    ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.cx, i64 %i.dk ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0138235, align 1, !tbaa !181
  store <2 x i64> %.val19.i, ptr %i.cx, align 1, !tbaa !181
  %i.dm = icmp ult i64 %i.dk, 17
  br i1 %i.dm, label %ZSTD_wildcopy.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i = phi ptr [ %.0138235, %bb.ae ], [ %i.dp, %bb.af ] ; 2 uses
  %.1.i.i = phi ptr [ %i.dn, %bb.ae ], [ %i.dq, %bb.af ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !181
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !181
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.dp, align 1, !tbaa !181
  store <2 x i64> %.val.i, ptr %i.do, align 1, !tbaa !181
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.dl
  br i1 %i.dr, label %bb.af, label %ZSTD_wildcopy.exit.i, !llvm.loop !13

ZSTD_wildcopy.exit.i:                             ; preds = %bb.af, %bb.ad, %bb.ac
  %.014.i = phi ptr [ %.0138235, %bb.ac ], [ %i.aa, %bb.ad ], [ %i.aa, %bb.af ] ; 7 uses
  %.0.i176 = phi ptr [ %i.cx, %bb.ac ], [ %i.dl, %bb.ad ], [ %i.dl, %bb.af ] ; 6 uses
  %i.ds = icmp ult ptr %.014.i, %i.cw
  br i1 %i.ds, label %iter.check, label %ZSTD_wildcopy.exit

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i300 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i176299 = ptrtoaddr ptr %.0.i176 to i64
  %i.dt = add i64 %.0138235301, %i.cu             ; 2 uses
  %i.du = sub i64 %i.dt, %.014.i300               ; 7 uses
  %min.iters.check = icmp ult i64 %i.du, 8
  %i.dv = sub i64 %.014.i300, %.0.i176299
  %diff.check = icmp ugt i64 %i.dv, -32
  %or.cond315 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond315, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check302 = icmp ult i64 %i.du, 32
  br i1 %min.iters.check302, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %i.du, 24
  %n.vec = and i64 %i.du, -32                     ; 5 uses
  %i.dx = getelementptr i8, ptr %.0.i176, i64 %n.vec
  %i.dy = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i176, i64 %index ; 2 uses
  %next.gep303 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep303, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep303, align 1, !tbaa !181
  %wide.load304 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !181
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !181
  store <16 x i8> %wide.load304, ptr %i.ea, align 1, !tbaa !181
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !490

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %ZSTD_wildcopy.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !296

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec306 = and i64 %i.du, -8                   ; 4 uses
  %i.ec = getelementptr i8, ptr %.0.i176, i64 %n.vec306
  %i.ed = getelementptr i8, ptr %.014.i, i64 %n.vec306
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index307 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next311, %vec.epilog.vector.body ] ; 3 uses
  %next.gep308 = getelementptr i8, ptr %.0.i176, i64 %index307
  %next.gep309 = getelementptr i8, ptr %.014.i, i64 %index307
  %wide.load310 = load <8 x i8>, ptr %next.gep309, align 1, !tbaa !181
  store <8 x i8> %wide.load310, ptr %next.gep308, align 1, !tbaa !181
  %index.next311 = add nuw i64 %index307, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next311, %n.vec306
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !491

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n312 = icmp eq i64 %i.du, %n.vec306
  br i1 %cmp.n312, label %ZSTD_wildcopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i176, %iter.check ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i.ph324 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.ef = sub i64 %i.dt, %.11520.i.ph324
  %i.eg = add i64 %.0138235301, -1
  %i.eh = add i64 %i.eg, %i.cu
  %i.ei = sub i64 %i.eh, %.11520.i.ph324
  %xtraiter = and i64 %i.ef, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.el, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ej, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.ek = load i8, ptr %.11520.i.prol, align 1, !tbaa !181
  %i.el = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.ek, ptr %.121.i.prol, align 1, !tbaa !181
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !492

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i.preheader ], [ %i.el, %.lr.ph.i.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i.preheader ], [ %i.ej, %.lr.ph.i.prol ]
  %i.em = icmp ult i64 %i.ei, 7
  br i1 %i.em, label %ZSTD_wildcopy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.121.i = phi ptr [ %i.fk, %.lr.ph.i ], [ %.121.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.fi, %.lr.ph.i ], [ %.11520.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.eo = load i8, ptr %.11520.i, align 1, !tbaa !181
  %i.ep = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.eo, ptr %.121.i, align 1, !tbaa !181
  %i.eq = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.er = load i8, ptr %i.en, align 1, !tbaa !181
  %i.es = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !181
  %i.et = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !181
  %i.ev = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !181
  %i.ew = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.ex = load i8, ptr %i.et, align 1, !tbaa !181
  %i.ey = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !181
  %i.ez = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.fa = load i8, ptr %i.ew, align 1, !tbaa !181
  %i.fb = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !181
  %i.fc = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.fd = load i8, ptr %i.ez, align 1, !tbaa !181
  %i.fe = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !181
  %i.ff = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.fg = load i8, ptr %i.fc, align 1, !tbaa !181
  %i.fh = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !181
  %i.fi = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.fj = load i8, ptr %i.ff, align 1, !tbaa !181
  %i.fk = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !181
  %exitcond.not.i.7 = icmp eq ptr %i.fi, %i.cw
  br i1 %exitcond.not.i.7, label %ZSTD_wildcopy.exit, label %.lr.ph.i, !llvm.loop !493

ZSTD_wildcopy.exit.thread:                        ; preds = %bb.z, %bb.y
  %i.fl = load ptr, ptr %i.ab, align 8, !tbaa !185
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.cu
  store ptr %i.fm, ptr %i.ab, align 8, !tbaa !185
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !175
  br label %bb.ah

ZSTD_wildcopy.exit:                               ; preds = %bb.ab, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %ZSTD_wildcopy.exit.i
  %i.fn = load ptr, ptr %i.ab, align 8, !tbaa !185
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.cu
  store ptr %i.fo, ptr %i.ab, align 8, !tbaa !185
  %i.fp = icmp ugt i32 %.1128, 65535
  %.pre270 = load ptr, ptr %i.ae, align 8, !tbaa !175 ; 3 uses
  br i1 %i.fp, label %bb.ag, label %bb.ah, !prof !297

bb.ag:                                            ; preds = %ZSTD_wildcopy.exit
  store i32 1, ptr %i.ad, align 8, !tbaa !182
  %i.fq = load ptr, ptr %i.z, align 8, !tbaa !171
  %i.fr = ptrtoint ptr %.pre270 to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = lshr exact i64 %i.ft, 3
  %i.fv = trunc i64 %i.fu to i32
  store i32 %i.fv, ptr %i.af, align 4, !tbaa !183
  br label %bb.ah

bb.ah:                                            ; preds = %ZSTD_wildcopy.exit.thread, %bb.ag, %ZSTD_wildcopy.exit
  %i.fw = phi ptr [ %.pre, %ZSTD_wildcopy.exit.thread ], [ %.pre270, %bb.ag ], [ %.pre270, %ZSTD_wildcopy.exit ] ; 5 uses
  %i.fx = trunc i32 %.1128 to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i16 %i.fx, ptr %i.fy, align 4, !tbaa !178
  store i32 %.0.i185, ptr %i.fw, align 4, !tbaa !179
  %i.fz = add nsw i64 %i.cv, -3                   ; 2 uses
  %i.ga = icmp ugt i64 %i.fz, 65535
  br i1 %i.ga, label %bb.ai, label %bb.aj, !prof !266

bb.ai:                                            ; preds = %bb.ah
  store i32 2, ptr %i.ad, align 8, !tbaa !182
  %i.gb = load ptr, ptr %i.z, align 8, !tbaa !171
  %i.gc = ptrtoint ptr %i.fw to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = lshr exact i64 %i.ge, 3
  %i.gg = trunc i64 %i.gf to i32
  store i32 %i.gg, ptr %i.af, align 4, !tbaa !183
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gh = trunc i64 %i.fz to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !180
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.gj, ptr %i.ae, align 8, !tbaa !175
  %i.gk = add i32 %.2126, %.1128
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %.0138235, i64 %i.gl ; 2 uses
  %i.gn = zext i1 %.not162.not to i32
  %spec.select = add i32 %.0116240, %i.gn         ; 2 uses
  %.not160 = icmp eq i32 %.3145, 0
  br i1 %.not160, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.f, %bb.aj, %bb.i, %bb.e, %bb.l
  %.0138224 = phi ptr [ %.0138235, %bb.l ], [ %4, %bb.e ], [ %.0138235, %bb.f ], [ %i.gm, %bb.aj ], [ %.0138235, %bb.i ] ; 3 uses
  %.0116219 = phi i32 [ %.0116240, %bb.l ], [ %i.a, %bb.e ], [ %.0116240, %bb.f ], [ %spec.select, %bb.aj ], [ %.0116240, %bb.i ]
  %.5147 = phi i32 [ %.sroa.4.0.copyload, %bb.l ], [ 0, %bb.e ], [ %.0142234, %bb.f ], [ 0, %bb.aj ], [ %.0142234, %bb.i ]
  %.5 = phi i32 [ %i.az, %bb.l ], [ 0, %bb.e ], [ %.0133238, %bb.f ], [ %.3136, %bb.aj ], [ %.0133238, %bb.i ]
  store i32 %.0116219, ptr %1, align 8, !tbaa !294
  store i32 %.5147, ptr %i.b, align 4, !tbaa !494
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !71
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gq, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %i.gr = zext i32 %.5 to i64                     ; 2 uses
  %i.gs = sub nsw i64 0, %i.gr
  %i.gt = getelementptr inbounds i8, ptr %i.f, i64 %i.gs ; 2 uses
  %.not170 = icmp eq ptr %.0138224, %i.gt
  br i1 %.not170, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.critedge
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %.0138224 to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = and i64 %i.gw, 4294967295               ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gz, ptr readonly align 1 %.0138224, i64 %i.gx, i1 false)
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !185
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gx
  store ptr %i.hb, ptr %i.gy, align 8, !tbaa !185
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !295
  %i.he = add i64 %i.hd, %i.gx
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !295
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge
  %i.hf = sub nsw i64 %5, %i.gr
  br label %.thread190

.thread190:                                       ; preds = %bb.w, %bb.v, %ZSTD_validateSequence.exit, %bb.al
  %.4 = phi i64 [ %i.hf, %bb.al ], [ -107, %ZSTD_validateSequence.exit ], [ -107, %bb.v ], [ -107, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i64 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #22
end_hunk_1
